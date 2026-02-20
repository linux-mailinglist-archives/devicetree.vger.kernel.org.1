Return-Path: <devicetree+bounces-266873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOZmK6wnmGlqBwMAu9opvQ
	(envelope-from <devicetree+bounces-266873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:21:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0B116623E
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:21:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 354B23076B4D
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3C7B320A0B;
	Fri, 20 Feb 2026 09:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="iaAcC00L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673B331E0FA
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771579159; cv=none; b=T5d2blFvswwk46gRJQyVk5RT2XCDYhM2H/qhsfJAUQJ9DbaDs8AWr3HOyXfVZmAAQvol+Ulvl9mEHEikyHotMMevdOxuLJ+gvhRp6iRyEgl4dzcaFEorej22gdCS8emLUWwIzBKCJoDqqizl9GMSvSX5rWzGCd1m0hNxTSm8FYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771579159; c=relaxed/simple;
	bh=C+wsarVI55ZZRQ3B5XA+RMI2p40E5xuzn687URb4gIE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LH5t7i94Jpc3Pn9d/HTHx6YzadxVeoJQGYge8nEwVZQNcKE9+dPijXCCP8f4ioPbHleVvhsxJD70+d/HCyiFPCoVe7qmtUXO0A+78jzSN8daGX6vmd8fw8WBXl2iJWadnuJIGWXNf6rINC/VnAYG2Vy33W6gR6c0NAJbXGvfTkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=iaAcC00L; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b884a84e622so291445366b.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 01:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1771579155; x=1772183955; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u6F37dsCD+l3Kjiw05UW38NxOXviWKT0380mYL15ak4=;
        b=iaAcC00LodtDz/r4vB+VTwoeWfpGCyQrFsYFj91kPksn2uYUwl0oLdm1Y3bJuQcmyh
         /t7R96eK34WUvAtIxI42JeW0vhs8RpFvOqN5alRsbzuSTda5dlC28zuuER/aQ8MzpaEI
         ULeGO9eD1iTZQOYoFo5XhemBGdl28Q9jRUZeTJqrfBMzwWFZYoa26eYhF9u8+KHEXHyl
         E0BTC6WpeiCX/f3EE6GgSRB1B8dSROAoyr4rd3gy1DxGXCCcup2LKE0xUFq14OpVsS56
         5NyHf26vXjju4yn0eLFUj4F6uEuCl2jFgi8nBGkVrW/w2c8iw1B8GRPRvNI4Y/fzC3KM
         uKeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771579155; x=1772183955;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u6F37dsCD+l3Kjiw05UW38NxOXviWKT0380mYL15ak4=;
        b=YF96oVzXXNrr6f5woPXjh4Y9ZHsV7dnl3aWsN0WxyNTbshVCdSLr5OuSQOHtVOxh3j
         NDOq9ndil2GaRwgGrPYRY37Gu1UsqQ+uQKhLFA8MAzvOFUEc+h5VDh5RCoV9wzO/Ev6/
         1si1/Ra7ssQlCdZFrBKq7S7XJI0c414Cg7m8Sceak0LRiYz/ALtLodqNISZR1vDrMl/X
         Y+a6TGTaFhLlTdSwhZTLwaZJgRUIAH2yUpJNK/i29bHHFcrVD7Pv/dekassR+MxJSS5J
         LWZEJhDRbQO4LWD9i7S88//UwDBCgMCrfvKv50mmgllheyUkwSx2jtNBSQek6Nay8S4O
         eZ9g==
X-Forwarded-Encrypted: i=1; AJvYcCXKBgHlga4gfLfXJ44WoYSqG3/90vBEvfRddi3Ph5UC8i9Lznh+rkJ54nLvnKCeYMLDNTOuLp7WOY0E@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz1smBtWIXvOQF/m+eBpTLEPF1kEbxwv+cjqa9QXndaURokotT
	RpBtwJEi0Y4GskISLQ/mXH/BiKZrk/NKwY1LMVlQ8mKbG4MGFvwjaos+LKS5t47imRA=
X-Gm-Gg: AZuq6aJccJhQw/T1/m0SVqaekoby8oeIVGOrb7Wnm/YnA+4oooXx8Nj+pRbx5E0asD/
	NNvoV2xKTLTxmnvnVL4W8ukgTPnt5f/lPQIxKcXRuvRCRqA0icBljVQaMxjkggnnGD2JhQTRhlY
	dlZmDfUWt0DgasmmqvPuhFgVMRM/yXzogCBl+8u6dgbUw+3E5Em6a73mL/iNe7IQeXZXXQtns80
	hV9/ORJG/XBavzAkCEZFOjta7vWPd1Fcawi+TLy2dQ37BsFylOm84qdBWh9X+Z94P6ekmbigYnm
	Fri7rTUuvhAy0y6Y0d1bb8SnYstNvr1ZGEoYpDRmiG/54fG9wpsLzSoMPH+DUAuocMEp9cyk/6u
	59DABuonImPpbPK+6dECyw3i5rAlnqM3LqSZytrqsIQrfBigM/EpQMWpCiCuZfAKzDPxVIvXqnX
	g2r8At4wq3IAetYTl3AsAv94Mlf+OgSGDfnQPFJ6C+QFU7TMj2D+L7B6YE9xWpWGIPevmyvGpTE
	WJHMg==
X-Received: by 2002:a17:907:86ac:b0:b87:3c4a:e68a with SMTP id a640c23a62f3a-b9072e7a717mr62188166b.9.1771579154631;
        Fri, 20 Feb 2026 01:19:14 -0800 (PST)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc769111fsm667098666b.57.2026.02.20.01.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 01:19:14 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 20 Feb 2026 10:19:08 +0100
Subject: [PATCH v2 4/5] arm64: dts: qcom: pm7250b: Define battery
 temperature ADC channels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-bat-temp-adc-v2-4-fe34ed4ea851@fairphone.com>
References: <20260220-bat-temp-adc-v2-0-fe34ed4ea851@fairphone.com>
In-Reply-To: <20260220-bat-temp-adc-v2-0-fe34ed4ea851@fairphone.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Laxman Dewangan <ldewangan@nvidia.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Hans de Goede <hansg@kernel.org>, 
 Jens Reidel <adrian@mainlining.org>, 
 Casey Connolly <casey.connolly@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771579150; l=1351;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=C+wsarVI55ZZRQ3B5XA+RMI2p40E5xuzn687URb4gIE=;
 b=T4QbfcfFNBuzPHyJEr/F2U8LVosN8lPbSUjMYubLbaa2KgB748SbdekHcjXI0agmKW1SoNgGy
 vLJ7EthvVKhBSFCWTH42xcBLl0ss7sWNlc20UjjFtalqtW2vF3aSf04
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266873-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.83:email,6a:email,1e:email,fairphone.com:mid,fairphone.com:dkim,fairphone.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,4b:email,2a:email,4a:email]
X-Rspamd-Queue-Id: 2D0B116623E
X-Rspamd-Action: no action

Add the definition for these ADC channels to the PM7250B definition.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/pm7250b.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
index 0761e6b5fd8d..c96089520548 100644
--- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
@@ -156,6 +156,22 @@ channel@1e {
 				label = "chg_mid";
 			};
 
+			channel@2a {
+				reg = <ADC5_BAT_THERM_30K_PU>;
+				qcom,hw-settle-time = <200>;
+				qcom,pre-scaling = <1 1>;
+				qcom,ratiometric;
+				label = "bat_therm_30k";
+			};
+
+			channel@4a {
+				reg = <ADC5_BAT_THERM_100K_PU>;
+				qcom,hw-settle-time = <200>;
+				qcom,pre-scaling = <1 1>;
+				qcom,ratiometric;
+				label = "bat_therm_100k";
+			};
+
 			channel@4b {
 				reg = <ADC5_BAT_ID_100K_PU>;
 				qcom,hw-settle-time = <200>;
@@ -164,6 +180,14 @@ channel@4b {
 				label = "bat_id";
 			};
 
+			channel@6a {
+				reg = <ADC5_BAT_THERM_400K_PU>;
+				qcom,hw-settle-time = <200>;
+				qcom,pre-scaling = <1 1>;
+				qcom,ratiometric;
+				label = "bat_therm_400k";
+			};
+
 			channel@83 {
 				reg = <ADC5_VPH_PWR>;
 				qcom,pre-scaling = <1 3>;

-- 
2.53.0


