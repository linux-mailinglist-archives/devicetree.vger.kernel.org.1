Return-Path: <devicetree+bounces-239740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CD9C68EF4
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2C255368086
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:53:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB3034EEF0;
	Tue, 18 Nov 2025 10:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ai9efVhJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC603093A8
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763463220; cv=none; b=WU17gkRQHq61pBhvCTiy2Jlm1MZ1oQfUJWytUFhQnpllzWKjDvNefatn8ucbstwkaqzR2gJ8XSjAam+TtYHrCuS3AZEKKXvNpjL/ZJi5KGPDs2M9UV3jHSt6K+0i/R3UggELZPQuNLDTefg4bzcWSUuBm6eqcKIofTnWEi/MyL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763463220; c=relaxed/simple;
	bh=040YJWLGr4Ks08VhoS2kkw/5EcGAtC35AnEYoaywOPs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TJYJh1QixtVunP3QdOdjPJ5h2kSSK8sSOcTbNnEVEu3mrK/g1t2l/G9OmH+aIaCmtzWM3J27yReg5wwiBbSyZCigI+H+zNzj5Udv9BPsWYOzVNAJLjcG74ZP/AddDcg28nB4JsrraR9bMbO4ib4I7L+KPMBMy7IHFnAci065CAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ai9efVhJ; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-3437c093ef5so5399197a91.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763463217; x=1764068017; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GU/h/mkFSU1P3uYOGjiw2k7fKpuyOTI5NTYh7ZnlqF4=;
        b=Ai9efVhJURBl0xAvo+2ssJ+/pvmcq0QzdU/THHKVzeUaNZ0SfOPKMVuW4i6TkBzAzF
         VSUURrEQs3JK2Pwj01ZLT5b+rJUT/2cXnB8TPNMjXEg8M7nfs2MXH2vzd8Ps32MEbdnu
         cA4YeEKMBIOCcWNCWMI6UEIYyScOHIVIsC5z1nbBO1mVANpE3vJFhSYZt9RtlpgEHw2U
         5KpYS07lwu3reEfSD2DTWjS8G8Mfb2iRo5Yg1zbmy+TTlHa07gc1NMoQPj4zQXit946b
         9Gav0W2mrW8ECumMRhWqGy2cDDUCpSZWF2U+ny6w48muao61DGk4Fbt+zijpN4FElY1J
         JTtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763463217; x=1764068017;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GU/h/mkFSU1P3uYOGjiw2k7fKpuyOTI5NTYh7ZnlqF4=;
        b=nVU0uQrKofG5DTrqR6gNHkX6KHH/HVst6qUENtrV9sVHCSJ5os1LW019/fR1TQhohi
         nS3p+6iht/IaLplp1lg1MwMtzrc8VEk9C9skuHD6atpCT17kj6ywjcS+4w5l8bo2912E
         FpwuVqd8nttDAAt6uzzo3EC5mY7sy//iRbcHW6n71fZ5txkc3n6zg6xPcEgSvX2aKIc3
         Benhl8XCD4/ZlcYKAulABRLjT65bmHZ2qNX69mBkZ8DOl4Ay9SiIhUn2eyk7DdEk+fPG
         CHp48oLu3XNTGWT+FNUFZnIvrnYHOlBZ+Ao0ibyVQYDCIj8gedrwYsUrava/2PRLaF4K
         eCWA==
X-Gm-Message-State: AOJu0YxN7Rp2dkk4mg1060sc5DuUsNctbZ1ln8VNvj/FwTUmwcrPrLta
	VWOIXTibd+2q93qgYl78U5qA6D9Ct+9iAq2s0768E/u5BTFbDWN8F+X/
X-Gm-Gg: ASbGncsh35yrWuAbzTI5xwCQZoYPArvAIN9nL2Ick7QTN4vYKxV+KQmpVB0KNNyxo9x
	45ta/hgoJ2DhlN9vBODYgA8QOpPDJwTKrcRCEGZNsja8CC3Wyaz0FqI1bKTayMwApgRRZs8DyS+
	pFrtsHTa6JzuHltZpZlWxOqXpIgNBhgL9pJ5vAQanQJp11k6b+J7YuYbbRH0gWo3OK0obzKFvt8
	MVtURBwNg/n0xexyseBkMBQU6xREsY7DzeCfnxeV2By/MT3+VlrzhceNa3tF3PwSAgWPYcosBRy
	PGDysJz0hB2e1lxWA7AXd2I8jdfZu09HUOwXj4cFjatqraFeoyCWq4+lF2PMvFTCPJeJaUn155q
	VjFRJfVboF1vvtfBak6ZsDkEP4Gj1nNr4j7YVDc/nyCK1q6GzyDUjkboB0S0Uavk2kOWyPwwlRt
	BmkAbnoP+FZAtxDOTHWfvoopr9FVFvZyG9jLhXUVMR2J9l4v4uuUXbS4JvGyRq2pOEiO+bQN0kI
	9Vlb6lDNfoYdPdv2Lcf2UjYnCY+ZJiPa5/Kb5efjyavMmClUxTBTdVziPZqOyY/KuiQbE5GgVFi
	RIPIQWCAPw==
X-Google-Smtp-Source: AGHT+IHuGDcUgS+xNRSjnnfr4/SvXnLaYN9uGNGhSMxNfafX2wXXKUijlkc4li6uBDPyOXHS+DPZvg==
X-Received: by 2002:a17:90b:2552:b0:340:ecad:414 with SMTP id 98e67ed59e1d1-343fa73f27amr17614192a91.27.1763463216960;
        Tue, 18 Nov 2025 02:53:36 -0800 (PST)
Received: from 2001-b400-e30c-5507-a914-c4dd-0879-41e4.emome-ip6.hinet.net (2001-b400-e30c-5507-a914-c4dd-0879-41e4.emome-ip6.hinet.net. [2001:b400:e30c:5507:a914:c4dd:879:41e4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b924be368bsm16274111b3a.9.2025.11.18.02.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 02:53:36 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Tue, 18 Nov 2025 18:53:19 +0800
Subject: [PATCH 2/3] ARM: dts: aspeed: yosemite5: Update sensor
 configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-yv5_revise_dts-v1-2-fcd6b44b4497@gmail.com>
References: <20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com>
In-Reply-To: <20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763463207; l=1118;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=040YJWLGr4Ks08VhoS2kkw/5EcGAtC35AnEYoaywOPs=;
 b=ZNVKdrYg8F1QHXctgjlhA5bowvaFi1pWjMphGYUUySVwXhU/hQGoMbXxdZul+eIPiGhwbjxHe
 rOO3t5VNW+ODMrRVOjDodFSijyxj3YUldax0HDJXAXqc6NEtmwrdbjL
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Remove sensors 10-0040 and 10-0045 to align with the latest
hardware design changes.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 7991e9360847532cff9aad4ad4ed57d4c30668a0..45b8ac2e8c65a4f672e64571631b7f6944f26213 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -674,20 +674,6 @@ gpio-expander@22 {
 			"PWRGD_P3V3_AUX","ALERT_TEMP";
 	};
 
-	power-sensor@40 {
-		compatible = "ti,ina233";
-		reg = <0x40>;
-		shunt-resistor = <2000>;
-		ti,maximum-expected-current-microamp = <32768000>;
-	};
-
-	power-sensor@45 {
-		compatible = "ti,ina233";
-		reg = <0x45>;
-		shunt-resistor = <2000>;
-		ti,maximum-expected-current-microamp = <32768000>;
-	};
-
 	adc@48 {
 		compatible = "ti,ads7830";
 		reg = <0x48>;

-- 
2.51.2


