Return-Path: <devicetree+bounces-275609-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDR0MPPJtGnLswAAu9opvQ
	(envelope-from <devicetree+bounces-275609-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5777528B6BC
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58A28301DB86
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 957F728C2A1;
	Sat, 14 Mar 2026 02:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cq9j/bma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B21282F0C
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773455855; cv=none; b=s12UqD6D2AUy+en11iH24yO+yqPGM6bVchZEtxmQF0vW1ircBL98zLpSyqQEjAyYEOoZRn4yU9OXvFhM/Fn9Ge8WeKYrYQgC19eBvl8QO2s/g0l9n1y8mRjpqGA3+XfMvPN1oqGIgV2dN2rO5cj/lmB8ovpFxjwflXGfbnO1WUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773455855; c=relaxed/simple;
	bh=ZFNJJlCgyZa1C7vDI21Y3Rz9XaJkveJ76cso1WBNdXc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jmURQ0y7jSWAbKqF3Clv5GBFrwRMRXer/2wqc0i43lYtUtDVX1Y4EWq0cb+82qg4c+TozYhBK1WT+aafYKjoIx2DxLr4893Jtwq3sGiAWEM/gNAgniIKl2GnOeqghQWtC78C2Sodl6LWuprP98wVDIj/9LkvE/srH10N5GxjrEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cq9j/bma; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5a13bd862e0so486816e87.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 19:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773455852; x=1774060652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/opkgg6okUs71q5M0rpiyolB5kTlQLVts8m7Q3IEa84=;
        b=cq9j/bmaJlw4RnlRrNM4IOYUwUxtcTHhcexKhXWoJE2S1Y0Neo5WAb5XvXC4rKWxII
         YFWOzm4XGwzhkHgoAh3z5+UE3sd75EOGVGrmYR4IaedaoP+j5tn3VT2HnwJIcJ9zaZlw
         l+Ip/oKvsBJBWZodw+dvmHlHSt6lGYVCW7b7DzvijID7s3mcFLZz7uicuwkU2QNd+fyn
         1YojZC/MfYmXAwx+5+LndTO2MopkcGRj2xdqi56SUVeO6z58ZEgp8gsoE1x1Rl7+LAWx
         JYreq//z+xMU4IXPGsMkdSQrXYz1o9WINf+gQUq0kBq9m2edTHrNOuAyXAkiJG0MXV0/
         l8oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773455852; x=1774060652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/opkgg6okUs71q5M0rpiyolB5kTlQLVts8m7Q3IEa84=;
        b=Ezv1KxxIPy8A4hWUyM+8S9gZyTZh7RlAL4q9BIqBphfjYp2/YpxGhRB4fRKjJ0HvVB
         v9MfS3ZjXFPG+34c+RVtRLgE+3SPfHKMI4GELYNlV/8y7cjTx/GSbn7W2bmYxypXxIAq
         m7J7bWyUgJGGyC9Gy7q2Jyx1MkCWX6GXBjEw9Lwcc6ni1X8yP0riMzVGDdytQK8HKoIs
         zn+yNZyKscmYnJIlkrD9TbP6xUBiIxDC50HS9JDWZgT73PoXhQJMiCRFwuVcnwWRG/O7
         w5S7aLizj9IlP5B8SCZb9fVYIN8bz/7FarH9uhvarKKJux5WMiRLpd/hbD3QC3hJ9BZz
         tOCA==
X-Forwarded-Encrypted: i=1; AJvYcCUYnf5bKBZTptWHK8pykxExxlj/R84AbMuanIQwPJm9uu3JpgWSGD/feqV7jNAlvRV4gIAYn+u81iEq@vger.kernel.org
X-Gm-Message-State: AOJu0YyJgEAW3FAB5AYi0bhLGLpS5Y6G1vklqv6RvnCHBrspkbqp1qFV
	6CRJt0D91BUXh6CrW1oPPVt/uVRh5fjrvtRfUezwlhKeUhHguq7NcmIpqk1yDF92brU=
X-Gm-Gg: ATEYQzxff8O4ZpQW+88vdz92Fek7GqgSxg63LLkx3PXNYUKeGTewhHWPSmAChlw68xm
	wZF5YZvOLI/L7McSc/FxozIddWxuKRbr4BG7ue6vzT1fOE3p9st7BsW37K5q6aHFcVYHJVxtO/L
	KPSjth93OhiCIxGGJyoBlbcR8mt1ez80YuUY2GrbegiagO164KaJEua2dFrdPfnLrBtwWLi8aBX
	GYGDF9WHy4OM3xdfRAxqm+gezI2/VTyqhzYp0Ya1sKcnG5GUa8ERqzRx71pNk3M1HEOeJElzgJH
	X/3Hjxtk6ic1EGTrmdnYrRdhBp9OcS6Ka+eNSxDIe2C4JBjwuJP6veEKp05jotYTlQM26NUPD5d
	bSMAB6Tks1tLEGBESIV+Hpodgde2EQIxcWZOarqMNVD564jc/3YwTdif6DJQHsT6FE8zcF3DPC8
	CG1gnsIFYnQywfz7FXdbmzhI6Tlioz9QvLnic8EvISZ+9LH9QHbBm0z31Chzwxgcmh5BQEIsjLO
	he0
X-Received: by 2002:a05:6512:609:20b0:5a1:2ec0:7442 with SMTP id 2adb3069b0e04-5a1626b65f6mr608892e87.0.1773455852353;
        Fri, 13 Mar 2026 19:37:32 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e692sm1884296e87.30.2026.03.13.19.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 19:37:30 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 4/6] arm64: dts: qcom: sm8450: Enable UHS-I SDR50 and SDR104 SD card modes
Date: Sat, 14 Mar 2026 04:37:13 +0200
Message-ID: <20260314023715.357512-5-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
References: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_FROM(0.00)[bounces-275609-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.134.86.160:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 5777528B6BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The reported problem of some non-working UHS-I speed modes on SM8450
originates in commit 0a631a36f724 ("arm64: dts: qcom: Add device tree
for Sony Xperia 1 IV"), and then it was spread to all SM8450 powered
platforms by commit 9d561dc4e5cc ("arm64: dts: qcom: sm8450: disable
SDHCI SDR104/SDR50 on all boards").

The tests show that the rootcause of the problem was related to an
overclocking of SD cards, and it's fixed later on by commit a27ac3806b0a
("clk: qcom: gcc-sm8450: Use floor ops for SDCC RCGs").

Since then both SDR50 and SDR104 speed modes are working fine on SM8450,
tested on SM8450-HDK:

SDR50 speed mode:

    mmc0: new UHS-I speed SDR50 SDHC card at address 0001
    mmcblk0: mmc0:0001 00000 14.6 GiB
     mmcblk0: p1

    % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
    1024+0 records in
    1024+0 records out
    1073741824 bytes (1.1 GB, 1.0 GiB) copied, 24.6254 s, 43.6 MB/s

SDR104 speed mode:

    mmc0: new UHS-I speed SDR104 SDHC card at address 59b4
    mmcblk0: mmc0:59b4 USDU1 28.3 GiB
     mmcblk0: p1

    % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
    1024+0 records in
    1024+0 records out
    1073741824 bytes (1.1 GB, 1.0 GiB) copied, 12.3266 s, 87.1 MB/s

Remove the restrictions on SD card speed modes from the SM8450 platform
dtsi file and enable UHS-I speed modes.

Fixes: 9d561dc4e5cc ("arm64: dts: qcom: sm8450: disable SDHCI SDR104/SDR50 on all boards")
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index fd2d5648b92a..d34de55b0d48 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -5429,9 +5429,6 @@ sdhc_2: mmc@8804000 {
 			bus-width = <4>;
 			dma-coherent;
 
-			/* Forbid SDR104/SDR50 - broken hw! */
-			sdhci-caps-mask = <0x3 0x0>;
-
 			status = "disabled";
 
 			sdhc2_opp_table: opp-table {
-- 
2.49.0


