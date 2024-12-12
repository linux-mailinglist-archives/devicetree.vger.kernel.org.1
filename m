Return-Path: <devicetree+bounces-130086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B509EDF5A
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 07:21:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CACFD1642FC
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 06:21:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCB871F4270;
	Thu, 12 Dec 2024 06:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="qihCQYDk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628531E8836
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 06:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733984475; cv=none; b=OeZTa49g6LxV3tJgvPq8EZTMQRaCkQo/S+OQQOXOu2ty+mGFAdA+RStFadL2I6tdhx+JQY2a3snqmlTavM5nStrgvqW5JP+HXcutw1nJDUTxnkIFZqjr+HLUMR7RgHUJR1D4beBsSRE+tBfl+yTIVdGPBFl+kpyVOSPNmvkzC6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733984475; c=relaxed/simple;
	bh=7wpNKaFrd5c/IzJtMd4SFd4xvNmYlDw84oGN8fRDTCc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=YJkjfbcJKVGkDi+Hclc9wto03iFrGC1ZTV3x45eVHxtRotbE+2j2UCXKcPWLkT5nQv+OKNWvFjBS01SbaD634DUD2hNQh79U/9AIeP5bxFa7Rl1C6djSxQcl+wfLZOecbgA1oBktSaHQOhNl5gAGNmdKhYs8ReXBlZklVSH1p0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=qihCQYDk; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-215e2f17dfcso471805ad.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 22:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1733984469; x=1734589269; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LfBkU5xN0WacDydGlClNsMc9BslSTszE5PxuLZUJYg8=;
        b=qihCQYDkam7MfJ9J2Y/b7LwzqNOSCH/Rf7nmaJriW93uTidkes+ZLf7eUPDM04uU8M
         9um3Fn25GOh5WUjl/Y6n59rUUknjMUwKdFPgXZSNy6HOGVHgFpIWPlqI9sSUm7Ul7RO7
         AhRR304uiwiA4pQxkaBE5Haz71zncYpe6xXmIoRrfVMDXw+UUO1vUEy/W1TzAb96dfMY
         zEbPnUgtFRpN1453ywm0LqbZFx25cz8UOOMOo87IoJnZmz+y3gN9wZAfuknzCBBrc8kp
         WTmvzm+XNnXRKZlSifcOBSyvmHC76M/Tm24vOmBvtTk96eZoayI0uLFbuZI4NdWbXZuJ
         LSsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733984469; x=1734589269;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LfBkU5xN0WacDydGlClNsMc9BslSTszE5PxuLZUJYg8=;
        b=TxSn6EKE6yIgHzOALvlyqRiRIZTpI493rQJgy3Ds+cHlKI+88qSkoyQnNIXQgmyguO
         TkKeZfdGq+TzsBUIbs35RzD5BN6TkjB5f9+QdwsJfpVj+ax7c5mzJZw9L/pMWdpdXVKW
         GZ9o+stIQsD6YYSGHWqPO8UiBfXMYHYtSr4zrAIStgmLxlgFTF06e/7JgRtH0kC3zzI6
         dUiU3qtPBqnbZvg5QSuMik5D/jOIkmKYnHpcXBvFjdHDRisiIoK9/jTHZNQecvXFiors
         UkelsK94XaYXyG5vgDwDRYzk0un/WOHGfvX6flrtggLphx+BsbpgUjGmHncLJZOimpFD
         POpA==
X-Gm-Message-State: AOJu0YzjDSn2ljYoub43O3CydlPE65JBAo0Gm9pub1TPCKJtLnBHM0ge
	uSYKu6UYSM7n8Zh9NAoevxAqSXusVId6E/ezOIaem6D72O2Z0uoJuDQ83tkKXSo=
X-Gm-Gg: ASbGncu1BlDOiv+2MLIi513gJlOzPA3gctazrVrWokECLIl/I2Iw9zR6cyB80q4yWiA
	aFoUn5C4jyCqVMT+GVLh7ieUnm7+twmB2asHhK5KYw2j15y/nJ9U9Mo24mn2DddALkvd//heC6Z
	rLwAywiWzcxSRFePSMZ85PzHp7qPJDFG4rV6/y0jxxg7fMFi2XXv+eZ4F22bAjJIT9xT2eWG/Z6
	A1m/YHbHHOj3/XUfEkPi0/utuxxihxTmpkYdlBg2Rx30/1V+UCwN9CFwXDf59snZlctAzXPVqF8
	Xz2UC+u7w1aRWG5HLL/q
X-Google-Smtp-Source: AGHT+IG1aykVIJ7KK1nMnneAqk9zPBfBBGEs0+epeO3ZGiz6cJuzU7kmR5k6vnbujqI2WNuSBpIchQ==
X-Received: by 2002:a17:902:d482:b0:216:42fd:79d8 with SMTP id d9443c01a7336-217785929d6mr36812415ad.12.1733984468684;
        Wed, 11 Dec 2024 22:21:08 -0800 (PST)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2162c278668sm83579165ad.81.2024.12.11.22.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 22:21:08 -0800 (PST)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	sean.wang@mediatek.com,
	dianders@google.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH v5 4/4] arm64: dts: mediatek: Modify audio codec name for pmic
Date: Thu, 12 Dec 2024 14:20:46 +0800
Message-Id: <20241212062046.22509-5-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20241212062046.22509-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20241212062046.22509-1-xiazhengqiao@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

change `codec` in pmic (in mt8186-corsola.dtsi) to `audio-codec`

Signed-off-by: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index e324e3fd347e..cebb134331fb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -1276,7 +1276,7 @@
 		interrupts-extended = <&pio 201 IRQ_TYPE_LEVEL_HIGH>;
 		#interrupt-cells = <2>;
 
-		mt6366codec: codec {
+		mt6366codec: audio-codec {
 			compatible = "mediatek,mt6366-sound", "mediatek,mt6358-sound";
 			Avdd-supply = <&mt6366_vaud28_reg>;
 			mediatek,dmic-mode = <1>; /* one-wire */
-- 
2.17.1


