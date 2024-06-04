Return-Path: <devicetree+bounces-72047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE248FAAE0
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 08:33:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 447841F2192A
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 06:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 172BD65F;
	Tue,  4 Jun 2024 06:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RLbFih7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682C7801
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717482745; cv=none; b=R5DVbHElbiJ0/opqX0wVPwUpPt25x1GBWajymu3TM6usYBG5B1uXuJ4eb27+QikgYTm+Sz2k5/CbZDfpRj/Ws15qNaKKYnODtRtjtQz5cKOim+5AhTMAm5C+3IKCJIJPyoJpCdP0UTnKtNHYZqpBipPvRbn6ByyqWlMUO/NaD38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717482745; c=relaxed/simple;
	bh=nNkPpqKec296KZ4ugnJZnDmBNd7UrviziHeQSJbxCsU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=fegZj7lssT+VfQSVfdG4XcYPPsvzT72VKo+d6q/YziULktb18FMa8OkefunndjJBks9XsiOFzuS0nTb12kcKTWrOvOZQPnYlg6pFxMpMVq+LRT8i/LlyMvTsW93vDAFTizzuoGiSzpHNHPfvY8ncT/nfJ0POl/NscdYv2xi3WBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RLbFih7P; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-57a6fcb823fso1318878a12.3
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 23:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717482742; x=1718087542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Fz+XDDXq5ys5kE0CMYMOtO36VP/HBwJd0Xynw9uYwg4=;
        b=RLbFih7PhcQxxKQgkzfQ5NxrLNtUMfzDaBNddT4KQDT4ZYp/mtWF37Tyztr3X3StY2
         /28BPY/bmFqeNRjRkDDXGfS6BCoknr9j2YmCR/krgSdY1kYTn3Wt6WySVbcAxw8uCccn
         PrJ3cxBoSycVmk399osmuQx/NgqCruIQQKrSOU8Pk7h2G3MYh+LogY7SHi0T/j1SnA9X
         nozN4aFiUH4rUSZ1QH7dXE6RblcnafU0zTt8QWsmIQ51W3poiJ36dA7DIDDkB3aFcaOa
         yLFCDk3d5wb2t+iSfEnjyEXmtVMGrBJxsDS1qVPsqalGIyR8G46wiJU+OKaV/7QE1T0S
         Byag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717482742; x=1718087542;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fz+XDDXq5ys5kE0CMYMOtO36VP/HBwJd0Xynw9uYwg4=;
        b=f2xdRphf1XhdbTkniihjChW44K164NyIqyIs9J2PzB5C2holSxpIwwmk48DhXyI9Pf
         0aerDS71MYdm7XXAHugpAmczUS6RABkesutnCQvhkeSmVFG0rFU8NUWcgwq82yn8vGlE
         wQ5siXB3cS37GFfjqnlmPM4Kq3LzhCxIPcNhSVBpU4rNkLF04LwIbQgjmjBColjJWq//
         d3hrMGi9NUTxaccrOggnmiDZwuqruOAtVzfh82RUw7FNrHy6Ubf+nrR4W+2u2guWW0rv
         C2qLHFBQE6yUXybLnXZZS3CXvVrGu07OA81BgWhcRTJ5O+vQsmJYoEX7JCLLECYsmkh9
         0U+w==
X-Forwarded-Encrypted: i=1; AJvYcCUZiCffjUyzM6vD/WokPnV5iEyb4YIw8JnRcg68e8YlVG/dR2fDlvvfUJBtCMPXI9Ewd5pDj/Yy4pKuRq3101YDbNy87v7zerEr2Q==
X-Gm-Message-State: AOJu0YzzzC32LrFCORZ/yVXwwIxxhVorzY7WHJ4k7/ugDUuIfW8ehwFz
	F1oNnaIbnmSrMD0tB2XmlNGLhe7AM/TKqfz2d4MwYSfgcyLd9GhU
X-Google-Smtp-Source: AGHT+IENlfqn9D6YRaI1QrG289xSj3O43M8np8Iv/IszPozkc38G4q4lvRCl010LNwGBSt5VyyL8Tg==
X-Received: by 2002:a50:99d5:0:b0:57a:243c:205 with SMTP id 4fb4d7f45d1cf-57a36450152mr7702632a12.31.1717482741525;
        Mon, 03 Jun 2024 23:32:21 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31b991a6sm6679658a12.7.2024.06.03.23.32.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 23:32:20 -0700 (PDT)
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
Subject: [PATCH V2] arm64: dts: mediatek: mt7981: add I2C controller
Date: Tue,  4 Jun 2024 08:31:59 +0200
Message-Id: <20240604063159.29216-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

MT7981 has one on-SoC I2C controller that differs from recent Mediatek
blocks by having a different SLAVE_ADDR register offset (thus a custom
binding compatible string).

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Don't put board-specific clock-div & clock-frequency in the SoC dtsi
    Thanks Angelo!

 arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
index 0fc7c6d33d72..64aeeb24efac 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
@@ -94,6 +94,21 @@ pwm@10048000 {
 			#pwm-cells = <2>;
 		};
 
+		i2c@11007000 {
+			compatible = "mediatek,mt7981-i2c";
+			reg = <0 0x11007000 0 0x1000>,
+			      <0 0x10217080 0 0x80>;
+			interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&infracfg CLK_INFRA_I2C0_CK>,
+				 <&infracfg CLK_INFRA_AP_DMA_CK>,
+				 <&infracfg CLK_INFRA_I2C_MCK_CK>,
+				 <&infracfg CLK_INFRA_I2C_PCK_CK>;
+			clock-names = "main", "dma", "arb", "pmic";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		pio: pinctrl@11d00000 {
 			compatible = "mediatek,mt7981-pinctrl";
 			reg = <0 0x11d00000 0 0x1000>,
-- 
2.35.3


