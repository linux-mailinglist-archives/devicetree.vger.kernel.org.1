Return-Path: <devicetree+bounces-82484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B18492486D
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 21:36:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E48D81F23555
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 19:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A8B71CE089;
	Tue,  2 Jul 2024 19:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W4akL+WK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD65512C477
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 19:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719949001; cv=none; b=Y1Um5B+ULA5cEdjLvFwgJbntNbDSrEpgwQblUr+BygYigwzLFmaFu5nRQBkdwmZ0EvjVaxqiMvK8DerBKAS5PsujnVDq6JN9eVf43Dg658vrFxcsYtoSykrYcFYcTlOBwzYUnYGaBEG6CdSmmd7tL89KXjt1vQBS27M9DE2XH5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719949001; c=relaxed/simple;
	bh=63TtL8nRXaRCbUED+7bVm5uoPVZ6BzcC2EVycbQphU4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QJuQ1sTapOEIAiY6xQO1Z3IBDco2xwp7vXh/qcc5WH6c2xf/Sq8WSvlZRxZjbZ2ModS7cKvlDAhgR7Om7EthyH5QzWbz68e1mf02lIj8a5UkQkUR57Iw9Nn9i/jX8w8aYZLHoGDrv8I3JXqXiso65MzAueCs/JeCEPh+74Atmnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W4akL+WK; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3c9cc681ee0so2569863b6e.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 12:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719948999; x=1720553799; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iEkTrmrQHtrxef4UKwZhbXgIZTKdX9XoI2Y3fzoSjz0=;
        b=W4akL+WKMvjX5zRkaY4RvVisQGH9ZO9qJRNmphe19DKjynLJENslF3xAaASV9HssXy
         Rpuk+GnxSUvB642IXfXz+5SYAD2VTQbeGUl4WF6eHe91ggKycHm6UseZowmhZghbVa/p
         AAS1ejRFDg5VMWZrfogQXPIBHJrF83yaGRLjMLgNzDTc8TVFtZYVO7ald5cgDTqOxveG
         07Cn/nBf+RH6UbEKzCQbosNMMif2/0KNOOnT3kxkecSmOHCagnU3YNurh1PtKQO+8nEv
         M60DIj033AaF4WPgt05kPGqM5dqs+MYIGJ7R3LWBYWoh6wpCs1cuEZpfrQybYapTnFOx
         wqiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719948999; x=1720553799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iEkTrmrQHtrxef4UKwZhbXgIZTKdX9XoI2Y3fzoSjz0=;
        b=SFzxPMwnMLlcpq/pRxCuC8vAh5Z+S0YIm3SBTmGF8bp7xJuY1RERhJGBM0eXt5ghWy
         jjtUMMlMix10cjkH5FSn6Q4sYd3gTF3fOuQiQbJBkMY+eSKb/KOEiI5qXeWM9TOFeG6e
         cyr9CyYMOasKq+LmFtT9eRJ9qlUMkMlhdH1PN+b/8DayhpBIjb3wSaiAaq9AJ88Q7nTs
         Mr4cRikYqoR0n3smbbRqsCBMNu7HuU8wMQoEGW5YyMRHaWhbHUMglIscIGpcv1ES2xuf
         Tgyk3nOzDh6zQ/tB4XVtaI2fsSsO2UJB5O7AU2W6g6j4Kk4TrJ/ja1fbKKV9qMdqHgSs
         me1w==
X-Gm-Message-State: AOJu0YxRi+FPgwZh0YlxjLg+/h3cHamvLbe3uNORVTvdPIhKmXPLXEpq
	VI2ptyaqmC7NIIMR5GJMAG8S66UOC3meQ6ElgJTzrZFI1JJrDsPB
X-Google-Smtp-Source: AGHT+IFO629pYbLvXnkPLGjw7RgR+qhtRcxcv5sftgwI+IHKlieJYmLVyI5Lj8bkJDxiCn519Atv+w==
X-Received: by 2002:a05:6808:f07:b0:3d6:36ec:5c3e with SMTP id 5614622812f47-3d6b5689ee3mr13412382b6e.48.1719948998820;
        Tue, 02 Jul 2024 12:36:38 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d62f83c92dsm1831335b6e.0.2024.07.02.12.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 12:36:38 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	ryan@testtoast.com,
	andre.przywara@arm.com,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/4] arm64: dts: allwinner: h616: Add r_i2c pinctrl nodes
Date: Tue,  2 Jul 2024 14:34:12 -0500
Message-Id: <20240702193414.57461-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240702193414.57461-1-macroalpha82@gmail.com>
References: <20240702193414.57461-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add pinctrl nodes for the r_i2c node. Without the pinmux defined the
r_i2c bus may fail to work, possibly if the bootloader uses rsb mode
for the PMIC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index 921d5f61d8d6..e31945c3895e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -837,6 +837,8 @@ r_i2c: i2c@7081400 {
 			dmas = <&dma 48>, <&dma 48>;
 			dma-names = "rx", "tx";
 			resets = <&r_ccu RST_R_APB2_I2C>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&r_i2c_pins>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.34.1


