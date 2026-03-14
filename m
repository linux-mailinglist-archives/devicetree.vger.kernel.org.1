Return-Path: <devicetree+bounces-275610-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6A52LvbJtGnRswAAu9opvQ
	(envelope-from <devicetree+bounces-275610-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC4728B6C4
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E492301D6B5
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87D1D2BEFF6;
	Sat, 14 Mar 2026 02:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gviUSDgV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A59C2C178D
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773455858; cv=none; b=r71Sh7HnqkQWqRTZqysM1DxzxN9BIqxklCtVJp+v+1APk9bY8Od1fGFgLpvXJPcxvM/Aflaxf3fwQup7/tDtxBLAJe6TPMQllodIoEVD+SMCCPYSX+o9QJD5NW8ARLBbgJHaQbbfba8BgTNyl6KJnF75SHYukyzC7BGoRQmw5Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773455858; c=relaxed/simple;
	bh=X6NhP/TEjKWuJSU8sppXNTI//X8Yy27FBG5SFK+VEsg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=flKowNHHbd/OCMApjdiBu6Ub6rLZmwMW6c0NGPeY32h6WTE3icKC4oXmFNmw7hqqYE5ijYpsi+QAMidVS8Q9oHQUrGsZ1HTNf12+rvcdzSgywk02Y2jm0LqrOHTpwZSUPlyvjzK/f730MmA/u2G+9aeoFfw30vs4z4HJQ4adDLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gviUSDgV; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5a133f999bbso324723e87.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 19:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773455855; x=1774060655; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tw9+jEXp2AiFSk3+X/0cEy73bNDKhZc7BhU8XBZqY2c=;
        b=gviUSDgVLx7QmhVMC6d+UbAIcYW3Jmo6Gde+1l2AX/nLClSVC6Ybz5ar+Eh0cTtElf
         3JtN3uQnb0/zpfTeSLzLrpYSbOKoctLXV3nTaMAvWAkfOa6+jjJxnIYxBpVYyN2dyHcL
         q4AodUqabLdr1S3gXeAa5PxvDkT+SG426tsttOgU/DH9JjOXomuBqg78ejzOBzefyjch
         BblUBQsobpPLHANtSsMcZLBeJKw8JpwFSvtzzC6uBJyqDmwwNVEpFvoMAs65gCSUbC1o
         FwH5/+PDNKUsQ6ZEOyMXQCEbure+II+pSrLMKZwDDsk0OsUyWikkyiA/43WHVIATKNPO
         TxMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773455855; x=1774060655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Tw9+jEXp2AiFSk3+X/0cEy73bNDKhZc7BhU8XBZqY2c=;
        b=gf2RYlBAY5miLB2fRh+EXlss8TrTWoMggz7/0dxiKKdPVaLJz0I6UIgA/AJYB5VYxh
         Mr+fMLIJfNxAWZOC9OOaDpv6WOKX/NzvZXb9RAxtRHBC4uA0pXi184ZJNYeaDE9vX3Ww
         8F0ltaOqs1oq6zS4BzBBJPU2oWQAIq0da4e2a6VrsuYMEQuVS2nUpeZ1eCTHjimyuktL
         8Qd6QKnofsen9pM6MjNOR1Yhii8kBX9NVBSuceGENzW9TiRiEok3v/QEruiGvqC+takC
         FEBFwtutz0SV4+HqwF7P8syukcfrDAvGFUqciEje7ZXPiHv8Ug/bXngdr/k/DlgweiBJ
         Sgaw==
X-Forwarded-Encrypted: i=1; AJvYcCUY3uLemtZKaFEhVyDb/+IbEXhTHBbCItR4mTV7XwASO8N1J1bCHwYebXjjH0Y7/afYqcU9ZNKMl0Vn@vger.kernel.org
X-Gm-Message-State: AOJu0YwW6tcLEOcCBT+noShwL56SM+yzz+pbGWGz/lL9bXUTUmtKDCx2
	igVU53a2RtApjA57cbSuS3DeMbasYb0BD4WZQkxlzoZ+tC4nrtk7KGKshc0knynULHM=
X-Gm-Gg: ATEYQzxu/Fgeczj8Xrbl8+TgaC7JrfoL79CEYEANSGtFICPd7R4l/vRUAIYP3tzkECG
	mA1pcV5eqeCXQPX2CDY8KL9S0wnaL+H3Xh0YxuJb9bku6JhfwRBMUxNUZYXRRpGv4Qn7mBxjc+Y
	QAxUCL0TNOBMhU5Sjw0T6MRNNFbzm7MfrGgnbMPLysDXpTjjoq5TQrSjO3CpAnWpjxIcktdwuk1
	WazayGJCCKCZS1hQsRmwTqreG2cM/KoE1n4RDdvui+ml6tElo1QsG1FVhxE/q+kFlzD2VThU7JO
	gMRN49HOkZaISN5m5W2CJplPhs2tFXJuCmAbOdN8bWtpWFH3peE3A5nWYJO/jVqu/P300R5TWXN
	Q9qHGl1WaKgYpecDjI4wDCMbGzo9L2QeufIjPBLLvTtWG4MZI+TBHZIisffXZzbSooYRtiDPx6q
	7YzqZpuiWjkXIPPqsp+c69d7xog+RlYVG5+7GmBv7G81ziYPjw+1rMm5wuarHdWM53dw==
X-Received: by 2002:a05:6512:603:20b0:5a1:4526:b8bc with SMTP id 2adb3069b0e04-5a162b59ca5mr677149e87.8.1773455855360;
        Fri, 13 Mar 2026 19:37:35 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e692sm1884296e87.30.2026.03.13.19.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 19:37:33 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 5/6] arm64: dts: qcom: sm8550: Enable UHS-I SDR50 and SDR104 SD card modes
Date: Sat, 14 Mar 2026 04:37:14 +0200
Message-ID: <20260314023715.357512-6-vladimir.zapolskiy@linaro.org>
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
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275610-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 5DC4728B6C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The restriction on UHS-I speed modes was added to all SM8550 platforms
by copying it from SM8450 dtsi file, and due to the overclocking of SD
cards it was an actually reproducible problem. Since the latter issue
has been fixed, UHS-I speed modes are working fine on SM8550 boards,
below is the test performed on SM8550-HDK:

SDR50 speed mode:

    mmc0: new UHS-I speed SDR50 SDHC card at address 0001
    mmcblk0: mmc0:0001 00000 14.6 GiB
     mmcblk0: p1

    % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
    1024+0 records in
    1024+0 records out
    1073741824 bytes (1.1 GB, 1.0 GiB) copied, 23.5468 s, 45.6 MB/s

SDR104 speed mode:

    mmc0: new UHS-I speed SDR104 SDHC card at address 59b4
    mmcblk0: mmc0:59b4 USDU1 28.3 GiB
     mmcblk0: p1

    % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
    1024+0 records in
    1024+0 records out
    1073741824 bytes (1.1 GB, 1.0 GiB) copied, 11.9819 s, 89.6 MB/s

Unset the UHS-I speed mode restrictions from the SM8550 platform dtsi
file, there is no indication that the SDHC controller is broken.

Fixes: ffc50b2d3828 ("arm64: dts: qcom: Add base SM8550 dtsi")
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 03672df25eeb..333dbf84b631 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3227,9 +3227,6 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			max-sd-hs-hz = <37500000>;
 			dma-coherent;
 
-			/* Forbid SDR104/SDR50 - broken hw! */
-			sdhci-caps-mask = <0x3 0>;
-
 			status = "disabled";
 
 			sdhc2_opp_table: opp-table {
-- 
2.49.0


