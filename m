Return-Path: <devicetree+bounces-144956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E41CFA2FC71
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 22:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED2E218864A1
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 21:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED87024BCFD;
	Mon, 10 Feb 2025 21:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b="1SdMG734"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f227.google.com (mail-lj1-f227.google.com [209.85.208.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C082505C5
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 21:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739223458; cv=none; b=Zq3iXdvGkwOlo/70h5Mcu6Nkjygsb9sahhkjX1Bgstp4T4y1SqH9YnCcQMhKvn/8KzKgcx9ZYgvB4iyDg9v6iSGqIwvAbQ9cT0agKTPTHxP5PlxjJAYyutQbLCwZKdh/2WhuhviiTpizlUxp6NonrZMa2zexdbRknn/FL5zQXHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739223458; c=relaxed/simple;
	bh=j/PJucz8U+1MCYxgc8fAzWAeqGtkEKwsghVwuJxnCJU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=CDIdhV7PkoFRgmMHBrxlHChYactYxd9zge7u3hjEKnfLJfkyw3zAHObFVL0aKcegkzvtiFyHJnDG++2C0nMJWwu44/0co3/LVSwDbKMXgagBbX1qTxLvzSxKYYKdxVRs2BqpceN3W0c81qXULTcdg3jKxv9iO4NBqzzueH/xsLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se; spf=pass smtp.mailfrom=blueri.se; dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b=1SdMG734; arc=none smtp.client-ip=209.85.208.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=blueri.se
Received: by mail-lj1-f227.google.com with SMTP id 38308e7fff4ca-308f53aef4fso8143821fa.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 13:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1739223455; x=1739828255; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wcfm2torRnSHmFqV9a+s+XnFIKlfVs7U50YSgpk9mKY=;
        b=1SdMG734hFiXaA6q5hRb4ehHlOujWFfCPaUb6U4KYc8/bpubAcLb9SLs9S2fxmC6M0
         H3ZhGJoKdDcYZkKDfTHQvxHSf70L08i40dCwGCr29t/A2g3pAd1wiHsMimIJpMVSNsf5
         Q5K2rUsYioEa+odM2hiMJTGnIKCSB705PT2nAJa8s9hxraxgQDK5s8bRl4YzJDo111IQ
         KXekqqSxEigL4SPxJuygR2vrJKNItFjJ58WvpqMWyF5FLe8zWlCPZwmJBXyNgAtKsjte
         gsErqdxJcyLTMosIYeOEoGdsxZ8m9p5O1e5nqhAnvlwZ5uphEv78QNSgWAk7obemF92m
         8Fig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739223455; x=1739828255;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wcfm2torRnSHmFqV9a+s+XnFIKlfVs7U50YSgpk9mKY=;
        b=Wmoms2JRbVS9oYEWN/6sfVis0Ito1+6xIOjrEzdc54Qogx1JOngEEsplolZuLBWQ0D
         UijfWsGjtCTW0YRN8CeXcr+13LeWkf5CclA0NJeHkUwCuSt6fpbldubri6XRwH1tAGr6
         347ympwrb8haZGTghm/L5nVLz9vswpIPaMjmMFIZT83A3WXIs6P/iN3v4HTruTXLzVAq
         +E9Xhdl1pLUik9dZ+ClKmTBMXfA4tDEaXRfMzNaFIW+dPx5iyFG3s1RZRT+AEy/mko64
         6AmRWiqJigyFwVbS1vEJfV1iua5Ia53XTVelFKMUcDk4xq6BR1oQTR9XGxuzW8E5m8as
         H2+w==
X-Forwarded-Encrypted: i=1; AJvYcCW5CN+EG9lhSeZ9MmqmU6r6pnf1+Iv2jZEqzVaJJsTyMZJv5Esl7utO1sK7fgSxr9biEy5I2VYiB2Os@vger.kernel.org
X-Gm-Message-State: AOJu0Ywqt/8SDVIRz+7roH5AtLcPaZCDXhoiff/EZMV2mmJ3x71dWKNB
	C6p9GaCNNcq8FgX8K+n0uMQpabyYI49Ha92EolTcEkX5uhJTHku/MSCaZztXMXH65yTrs6iwRCi
	0HozYyuh8mjeqF16pieGl9+bfjcdi1Fx+
X-Gm-Gg: ASbGncvRdTluiat4xlgDY5STZQOQDh5Ro1yI74CjFjVOYi6B03Op5+gmCcwpOQH9n0q
	TLG7NnYzRJZ9bz9XENqAIfDD3O6CVObRrQX8sPKROZ+Hus1uLm0WUgPiIG/7dRzM7+draatvaMu
	9hcMVFv2BoHOjytYInF+NP0CYP0Xc9RbDDQ6NmF0lWqU20+jW1nWjrNLb8vu7HSqCSTLekDFX+6
	LPsRid5OEQ6A5OJOWI0c672UTxncquYb2WbKOFi1/aREhqzP6f+4sHlzp1X2HMwHDjWjSNzUvd1
	fGB+a/YadgFO2r/1y2vWxWt50rZq88yZ
X-Google-Smtp-Source: AGHT+IGn7YjOVgn9JSAaDfX3ZnHdARe93nyXys+vCCF1LaucNZ/41I9JmCGvPgOvWMcZ0mZSnMfQ25GhTucI
X-Received: by 2002:a2e:9e07:0:b0:308:df1e:24c5 with SMTP id 38308e7fff4ca-308df1e2fb0mr32112041fa.9.1739223454517;
        Mon, 10 Feb 2025 13:37:34 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 38308e7fff4ca-307de2bb0adsm2715111fa.49.2025.02.10.13.37.32
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 10 Feb 2025 13:37:34 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Mon, 10 Feb 2025 22:37:29 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: adjust SMMU interrupt type
Message-ID: <Z6pxme2Chmf3d3uK@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The SMMU architecture requires wired interrupts to be edge triggered,
which does not align with the DT description for the RK3588.  This leads
to interrupt storms, as the SMMU continues to hold the pin high and only
pulls it down for a short amount when issuing an IRQ.  Update the DT
description to be in line with the spec and perceived reality.

Signed-off-by: Patrick Wildt <patrick@blueri.se>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 8cfa30837ce7..520d0814a4de 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -549,10 +549,10 @@ usb_host2_xhci: usb@fcd00000 {
 	mmu600_pcie: iommu@fc900000 {
 		compatible = "arm,smmu-v3";
 		reg = <0x0 0xfc900000 0x0 0x200000>;
-		interrupts = <GIC_SPI 369 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 367 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupts = <GIC_SPI 369 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 371 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 374 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 367 IRQ_TYPE_EDGE_RISING 0>;
 		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
 		#iommu-cells = <1>;
 	};
@@ -560,10 +560,10 @@ mmu600_pcie: iommu@fc900000 {
 	mmu600_php: iommu@fcb00000 {
 		compatible = "arm,smmu-v3";
 		reg = <0x0 0xfcb00000 0x0 0x200000>;
-		interrupts = <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupts = <GIC_SPI 381 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 383 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 386 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 379 IRQ_TYPE_EDGE_RISING 0>;
 		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
 		#iommu-cells = <1>;
 		status = "disabled";
-- 
2.48.1


