Return-Path: <devicetree+bounces-72051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED0B8FAAF5
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 08:43:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1996228A435
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 06:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0DFA137C40;
	Tue,  4 Jun 2024 06:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="heJCqsRB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB151CF8F
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 06:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717483406; cv=none; b=LQkUQdjel7gINaFZ7sbpAqTp7r9OVMkYPZHhOzKRvgXSK5jFGGtljqZug7m/ljS8ofL1G4KWuyd9afn7rT3FYbt55ADuCNSOliyz2JumF8vM3u6Dn8vrU2PonICObjeR/b5X1cYXW7A8vGyiDp49GTobliKDnzxYw0cQv77dhho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717483406; c=relaxed/simple;
	bh=sV+IU38PW3YQ/1Pgx6tqiDNwVHzymWA6hky6F62pIGs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OpSGHPyQMfFktARih/Ji3GchCAowSagqpbbvSDaQuNfZGe4jQO8ZBBER/unWNFpwgoUXAEPCxkb+MUKZ5qfYRFX5cX5EvPW4yfiVb/FM4lqHhgUEzthxLLBr5H0LiFexxv6b+ow5wx6ibj37dZcQJ/dmodiALV9WMC61N84wBIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=heJCqsRB; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a68f10171bdso248799066b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 23:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717483403; x=1718088203; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qw6WC+UXhi6yL4LfVmRqUq3NflMpRwcFjuQvOiKMoxw=;
        b=heJCqsRBZotcLCIXmIfU8FaSqE0t59vXy9IuP245SNeN5ZllmKxb5AChUmY5ZU2fsf
         ExkpbW1Gjgg7BGVQ3OfREt17HWKzaMbkjL97z5yEV3pf+XjbXwmwmE6vs/ySaLHMDVx5
         LEuaQGGEXrAwlWSdx0EyaeZOON2rieBomxEBRPcK1WSsblQcOLyoBN31A9PtpEedX9Bp
         ae4ZLPUMACVki0L+co7dWSyp1zuajdbRgh3JnDIO9Y8JUkbz/ui8gqU0yfVH1NvLfpPl
         mYcx8H2aK9qbTqWd08qStTjK4PQOBdia7UvzQ62Z8L2oNwinVw1waNOSZDWBraGlcjlH
         SHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717483403; x=1718088203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qw6WC+UXhi6yL4LfVmRqUq3NflMpRwcFjuQvOiKMoxw=;
        b=tBW0lnsFA2rTyJaIml2Hio8fvZx0CQgb6WspSyl1lGeQxkz+VOWH5Ss+mVgtvZz5G5
         frEGU1Zpe+P1Z/imYIZjV1qfyxAFudi3DLnh9cxpoybH1y/XFIwwtg+Q4L0idcZ4hlb5
         OEWB0AZpaRxm6G9V2FhEyzwk5R2pBIVM36bJpVi+Ar2EsphcZKz6jNvaL3fR37oF1T0i
         rc5fFjzm/g5z+CcgTe0mEmNx4Jcrw1nOGIqcire3csm8KYQsWpvEr/qwc6ndC9L9qZm2
         ylQiDrJPYqGhIQCzUa819Jt9OmVsL3ebkp3VUNSHAATLTXWxCSQeGye3EgcnWZ0lIzOF
         AZEw==
X-Forwarded-Encrypted: i=1; AJvYcCW9jOoiHglVxVB9LirsVt68180/e6Hy/yx7qHKaUdWPEu03+5wRxOPx4u93Xnp4r/EhDE073Saf9r5ACD7oBpOBLEZn+EAIlTshdw==
X-Gm-Message-State: AOJu0Yx5ROtcSZqZpKkU5pxZW3xA8/z6UWi6C7Po5oBoAARzrvzttMmB
	n3Ptx6lQC35jT9vFqNjHOqd9zlNxq/vsr2UAbXN7Ih8r0A36v8700skdcQ==
X-Google-Smtp-Source: AGHT+IFM3r6LYUVRqzzZNZE9WJH6tfwcLl5rjHZzDzgNIDhWshPhkcaNi+w42odT4TUUFKx5/iekBA==
X-Received: by 2002:a17:906:65d3:b0:a66:4b54:9c87 with SMTP id a640c23a62f3a-a682234b89amr931690866b.76.1717483403197;
        Mon, 03 Jun 2024 23:43:23 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a685b935b5csm547744066b.206.2024.06.03.23.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 23:43:22 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 2/2] arm64: dts: mediatek: mt7988: add I2C controllers
Date: Tue,  4 Jun 2024 08:43:02 +0200
Message-Id: <20240604064302.487-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240604064302.487-1-zajec5@gmail.com>
References: <20240604064302.487-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

MT7988 has three on-SoC I2C controllers that are the same hardware
blocks as already noticed on MT7981 chipsets.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Don't put board-specific clock-div & clock-frequency in the SoC dtsi
    Thanks Angelo!

 arch/arm64/boot/dts/mediatek/mt7988a.dtsi | 39 +++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
index 27098f724b7a..aa728331e876 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
@@ -124,6 +124,45 @@ pwm@10048000 {
 			status = "disabled";
 		};
 
+		i2c@11003000 {
+			compatible = "mediatek,mt7981-i2c";
+			reg = <0 0x11003000 0 0x1000>,
+			      <0 0x10217080 0 0x80>;
+			interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&infracfg CLK_INFRA_I2C_BCK>,
+				 <&infracfg CLK_INFRA_66M_AP_DMA_BCK>;
+			clock-names = "main", "dma";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c@11004000 {
+			compatible = "mediatek,mt7981-i2c";
+			reg = <0 0x11004000 0 0x1000>,
+			      <0 0x10217100 0 0x80>;
+			interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&infracfg CLK_INFRA_I2C_BCK>,
+				 <&infracfg CLK_INFRA_66M_AP_DMA_BCK>;
+			clock-names = "main", "dma";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c@11005000 {
+			compatible = "mediatek,mt7981-i2c";
+			reg = <0 0x11005000 0 0x1000>,
+			      <0 0x10217180 0 0x80>;
+			interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&infracfg CLK_INFRA_I2C_BCK>,
+				 <&infracfg CLK_INFRA_66M_AP_DMA_BCK>;
+			clock-names = "main", "dma";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		usb@11190000 {
 			compatible = "mediatek,mt7988-xhci", "mediatek,mtk-xhci";
 			reg = <0 0x11190000 0 0x2e00>,
-- 
2.35.3


