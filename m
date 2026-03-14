Return-Path: <devicetree+bounces-275611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IPfCPfJtGnRswAAu9opvQ
	(envelope-from <devicetree+bounces-275611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC2228B6CB
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 53CA7301DD58
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A94AC28C2A1;
	Sat, 14 Mar 2026 02:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PGY9BxEp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AAF2BDC16
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773455861; cv=none; b=ZPDAp6InBWOYIpuGntatpVRIbXW0wECdj8cW5RNdotrfFMO7Rtr3rOzY/iA9r44uEUniF4zMfdayXDC0hnB2qa0NwCQAmJPfBUU32PNOA5lnMKsKUZDjrv52BFjKT9zUtzOS6+vyAk6YfhwjYBX1U4A2jzz31ePhHqri78xEP+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773455861; c=relaxed/simple;
	bh=2MnwNNxi3vR2blEnzDjTJ8DgBhkgsMLNvz2ObjHVzxQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MurU2EalGgvHk6sY5e67jgElkgZP0GDsI2OU7iPBuT78cU/5xFijYyTPaxeCiVreGel9Bl4MV72lQkH8ql1HiHwsSA7aNRfph5988bAg6KInFrBCDAr4zTzs3v0e+WCumvO+kwIOIambGQoyG8OeFYd+ga5U/0Tq4OMZEcebC34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PGY9BxEp; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5a132096c08so294115e87.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 19:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773455858; x=1774060658; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rJQsy+un74x71sHYQTOJe8v5BZSrSsUlftntQyMx9oM=;
        b=PGY9BxEpJIxIhRgPkWe2vaB8fr71gUf/sh3BODCmY2ECWOB8JsJDEPINJPT8z0IZta
         Lk3scwWfW7kTxVYVlDqGqkOcuG10gi6gxhR+u0+w3LnYLuxWdC46w59n/qgVaukGndaT
         hfmtwVqJeaze6eRSB+Kdk5qmXPvudrf1FMEXDteYN2D7XA40JM8bD1aGTOjqYvPgwoWV
         ngwY2WVnmvnAhUaH+OXcdxlupVH5KyA/J8R7718U+MJTm3oM8GgdNvo7R1Vhz6gEGp53
         Sakx4GgUilCQUZl/gyoJvaESZvFsTUH2Oj2V14gqa7qbQBFfaXKjwWfdHgX+YysYIWes
         z3TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773455858; x=1774060658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rJQsy+un74x71sHYQTOJe8v5BZSrSsUlftntQyMx9oM=;
        b=bjAJptniDBrKOftA0Cm/PVnqje/j8KDqGw907VdKXxDrZvhdzxlDElaoK0cyQkvHop
         XViDJXS9s/5vU7K/3aCQwlSYCj5TNGE3Fh7f/NHDMEEugg9e2IiB+UUjCm4C21xeq4/d
         I4Yu8TXC/ybPjKu7wCrMwPaszNrGRkqh/AA8ERTcxi/bEec5bPvJdJXiYlc1EzuuwpBz
         UmzrxpD5ZxjTWWtg25HUACdNdCro+kciA2e2XNFUua4TECoRlkznlsZ51/1hhDkwZRqe
         UAkEhQSvaWO5BlqS7lAee/TUTGha2KI1QbJAu7X3cWnJvs+BCXg/GIuH9nbVUq+bCIA+
         JN0A==
X-Forwarded-Encrypted: i=1; AJvYcCV0qWB/x2qfz0kJ1TUhG8U/i7uwlRpfZi8E3MLeDv75CTikvm+6prslzMlNvvcwxgZEN0QnN8JFrl0E@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7jvmmBjLcIdMn/4NrBUkOFfD6lxaWocO1H+ZWJZUzzingaimJ
	u8W3wvxAW3QYIyPjuaSMGJKEZmijy4IzBpH7hE9DfElDN3aZ/ppYMrjYMz8a5KzjBf8=
X-Gm-Gg: ATEYQzwUsf5S9Bb/tWHVWC+7OG/GGjlSUz7SIMixyPXtYNBbsDyTC6byaQJTeUGPrl3
	OOEPYBjZ9HYHppvmGTkKHmy8ZHhcXJZS88ApmLe5CsS0S3NP1oB9yOaShEkBz1EDnRA0qyYk4x6
	sMikJm+OvdA192ECbXVnbdHOi3FVexrn/XeR4W3oX51zPFP3KQdkhRAcuO20bhtRau2686wSa4j
	5z15h7xHmmaL1qNp1SoZmd50+7Qr/RCvP6Y/HQlDCbY4U4UhfTS9vkRumxRDwzpQDQTKwDlPE+a
	CKSRL5c8pzB1gKgHsVOecVZac9TvEIrxANFlYdE555v2m7tX7dW5XE64cIq70GCdptgQtlKYezh
	R3JS21YNHTrTmPqQMRJo2G/980ByvszNlzmotKSSUFUkL5A7U7KBnLGXL91bfg9fmK5iZZkbWea
	IBBBfF4H3UfF040nVBOvP/k1hSTvwLSnzppCl/nTNUjALgydiK9lzH55K0u6HN4gZY5w==
X-Received: by 2002:ac2:5a44:0:b0:5a1:440f:512a with SMTP id 2adb3069b0e04-5a162b0ed40mr728470e87.3.1773455858307;
        Fri, 13 Mar 2026 19:37:38 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e692sm1884296e87.30.2026.03.13.19.37.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 19:37:36 -0700 (PDT)
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
Subject: [PATCH v2 6/6] arm64: dts: qcom: sm8650: Enable UHS-I SDR50 and SDR104 SD card modes
Date: Sat, 14 Mar 2026 04:37:15 +0200
Message-ID: <20260314023715.357512-7-vladimir.zapolskiy@linaro.org>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275611-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: DFC2228B6CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The restriction on UHS-I speed modes was added to all SM8650 platforms
by copying it from SM8450 and SM8550 dtsi files, and it was an actually
reproducible problem due to the overclocking of SD cards. Since the latter
issue has been fixed in the SM8650 GCC driver, UHS-I speed modes are
working fine on SM8650 boards, below is the test performed on SM8650-HDK:

SDR50 speed mode:

    mmc0: new UHS-I speed SDR50 SDHC card at address 0001
    mmcblk0: mmc0:0001 00000 14.6 GiB
     mmcblk0: p1

    % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
    1024+0 records in
    1024+0 records out
    1073741824 bytes (1.1 GB, 1.0 GiB) copied, 24.8086 s, 43.3 MB/s

SDR104 speed mode:

    mmc0: new UHS-I speed SDR104 SDHC card at address 59b4
    mmcblk0: mmc0:59b4 USDU1 28.3 GiB
     mmcblk0: p1

    % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
    1024+0 records in
    1024+0 records out
    1073741824 bytes (1.1 GB, 1.0 GiB) copied, 12.9448 s, 82.9 MB/s

Unset the UHS-I speed mode restrictions from the SM8550 platform dtsi
file, there is no indication that the SDHC controller is broken.

Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index e915e7209750..d0180e871bdf 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -4976,9 +4976,6 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 
 			bus-width = <4>;
 
-			/* Forbid SDR104/SDR50 - broken hw! */
-			sdhci-caps-mask = <0x3 0>;
-
 			qcom,dll-config = <0x0007642c>;
 			qcom,ddr-config = <0x80040868>;
 
-- 
2.49.0


