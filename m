Return-Path: <devicetree+bounces-234095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 42117C28883
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 00:18:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 310624E00F5
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 23:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6AC01F4CBF;
	Sat,  1 Nov 2025 23:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hIl+qTkq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94931FC8
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762039098; cv=none; b=fqTSthRIprtbo2z8rrbRDvrMyh2EiM6ymwDcm2wICMPg/3kEAXZl0wixLLq5PCVeulZH0xjgW1qJMhcpPvAIo8MwoUMCq0epUGgkqDKxK9d1dH0bLOrvvzVxDh4v93BRZqHkCvktTZCR2b82NYQC2HLAzS6ukHRZiNvVyyAxgb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762039098; c=relaxed/simple;
	bh=2+uU7iHMFy0pybm/0R4GiQdVZYJYY9BtaDqKhr0WgOc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=dterVY9MCOm0WybP0cW+0iW91f7jX0YxA+CFukx0yIItqNFFprcIgif6o8YvChmOZcEaL1qZmuYyKEyVPMmPgTpRGndXntOEei9h5LwoXrF1iHbgjkHdN+3ggh0f7q+z8/eodPD0UW0sCRuH2IYANlabjIy5nQdfxuTOIV9Scfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hIl+qTkq; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b70acf7fa58so2182966b.0
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 16:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762039095; x=1762643895; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v2kY5ZNCCQbsUksqRncXUOQKnSfwxn1jvbedFSwvdQE=;
        b=hIl+qTkqutVuxCGY8kcoqyZNuoPplXWr337UQGQJRcquUpXX3fnAy5DX3SmWPjMhSu
         dKge215G0c4hgYX3im+NLiqm+wHzEd6clxauqqW7/1A2Wnmv2IYHKZMVBj5G763lab0q
         s/eEW5wsafgv5s8eHKHdZK7p5QQwUxhZZurZq4jesh+JVM71FYJEDMpV8uA9PyjQ93zA
         gSObBn+uQmbgeLO/8NYrxcA3DmpK/fI7zWChUN7mqdPBCxiEAPLcuT7zmPOPz2S9PD6Q
         EmpdyBDlX88V7CBbWItkcbo0OXUvL+LzYb1ilzKh7dgFuEvxKGxrdqE88pFobwc8oxoL
         hmBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762039095; x=1762643895;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v2kY5ZNCCQbsUksqRncXUOQKnSfwxn1jvbedFSwvdQE=;
        b=Zz4RJznifmzDyYxjkJIo4upUUW/W4cSWIiarCfcMUlPz0NDBw4xZMt2IxISDWm+IbH
         z/9eq/7VVzs5yx+cYg35dY3Lm5AYUgk4tNrW0stBgNHKtg/vc5sN3B14AWcaarB1rl2H
         Aoz1f6d93+XQ84ku/bD/iLAlQ4LZlzDyMey3b9lBeZJ+Ob+7hy6wlgREiAyTulGIHhPt
         56zSVSVfAYxmuq+lEbwWV0orz3yhDujH3Q0oVzDj/bh/qrKmK1umcR3Q1m2aMwTJfF5P
         lhDPZEwyU6c+ddS3df4S60VvVB9ZPSHETLU1TFzh7CCEKSFCrnJrukxNd+NMyeNX6N6E
         yxIw==
X-Forwarded-Encrypted: i=1; AJvYcCUqp9HH5DmFU0zMWilOwZtRJCFrl5td/p9B8DzujKl/Fmv1QWXeq565IbmSpMuYa0m7d8aB/1fFFaj1@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3qTccjmbrOvGOFM6t181Ktc8BSmy1Vy9qjDgkGGm9L7Y6MYO7
	CC1RBF7uKw+c0h+0fN+sylsRtz3WYnl1+DMJ9l6rfhEzgnTq1BXvW6FK
X-Gm-Gg: ASbGnct8rklebZyTc4+kE/Yr9VUVZYbuMWooqDhZzqLRQZ6CvtEeDvOJmKoj3LTrR9o
	B9nXBE/FVxmdgPKVsyur81HWiOVViqy36CYEAijbNqlQ/E/NVAmV3ZPPa/KEN6kUb/gm61E+Gg+
	k+PKidawmkwVlw2iu+QBAJWqjLs8A1R+RslsuGq+LZ2R18cirNFwMmIZ6frP4jFyTTh8zqiIZcP
	hXI8GCRMSYFJGrK2s2NbiIV2qJrXwubEoAUUzZdiJBOFnPaick7EnvXzfjaIEdUU80Kt4MEDLRO
	F9IWvQX8R0SGUfpeuxnpGTPR2oe9qcsptpV+/kycXaxXbvcAhwAl/rhcYH1fN1mpWY1mcQeARPB
	Rzd3WJo7rbFnLjJ2CyFa0HiD1C6eT1j4cUaZszo8hFMEYKqff476xoS//CK04S+mtesVsFNdCrh
	t24v7z9nO0qi9v/dJWPN7FMsA/FGSYp9JuIH0OxfacM8EKnF7VQw==
X-Google-Smtp-Source: AGHT+IHcmBZR/CYZGz+1H8YjiW4T4LxbNxir8Pj0nOjlwjuLiZBdJmsLBYzTwNDhteMqoR37SkWibw==
X-Received: by 2002:a17:907:7e96:b0:b3f:5eaa:ef19 with SMTP id a640c23a62f3a-b707012ac5emr437203766b.3.1762039095064;
        Sat, 01 Nov 2025 16:18:15 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70779762e9sm571946666b.7.2025.11.01.16.18.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Nov 2025 16:18:14 -0700 (PDT)
Message-ID: <7d6fa223-ab90-4c44-9180-54df78467ea5@gmail.com>
Date: Sun, 2 Nov 2025 00:18:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: rk3288: move edp assigned-clocks to
 edp node
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

The rk3288 power-controller node contains an assigned-clocks property
that conflicts with the bindings. From the git history it shows that they
wanted to assign the rk3288 EDP_24M clock input centrally before an edp
node was available. Move the edp assigned-clocks property to the edp node
to reduce dtbs_check output.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Not tested with hardware.

ARM: dts: rockchip: Assign RK3288 EDP_24M input centrally
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm/boot/dts/rk3288.dtsi?id=df5ea015984633526874619ca1288fc5f2cf47c0

ARM: dts: rockchip: add rk3288 displayport controller node
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm/boot/dts/rk3288.dtsi?id=6df7ec6186644a4ffb4f0c859327ef41a1145a5f

ARM: dts: rockchip: add rk3288 edp-phy node
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm/boot/dts/rk3288.dtsi?id=f5663969d8125a5c5b7835812e1e636ecedf030b

ARM: dts: rockchip: move rk3288 edp phy under the GRF
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm/boot/dts/rk3288.dtsi?id=4b91545072ad7ca1963d2a89c8b42fc2eb561484
---
 arch/arm/boot/dts/rockchip/rk3288.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index 7e284b4fecdc..7477fc5da3ec 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -741,9 +741,6 @@ power: power-controller {
 			#address-cells = <1>;
 			#size-cells = <0>;

-			assigned-clocks = <&cru SCLK_EDP_24M>;
-			assigned-clock-parents = <&xin24m>;
-
 			/*
 			 * Note: Although SCLK_* are the working clocks
 			 * of device without including on the NOC, needed for
@@ -1193,6 +1190,8 @@ edp: dp@ff970000 {
 		compatible = "rockchip,rk3288-dp";
 		reg = <0x0 0xff970000 0x0 0x4000>;
 		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru SCLK_EDP_24M>;
+		assigned-clock-parents = <&xin24m>;
 		clocks = <&cru SCLK_EDP>, <&cru PCLK_EDP_CTRL>;
 		clock-names = "dp", "pclk";
 		phys = <&edp_phy>;
--
2.39.5


