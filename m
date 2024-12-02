Return-Path: <devicetree+bounces-126085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D6F9E066A
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:10:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BA17CB289BB
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 13:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9A6F1FDE05;
	Mon,  2 Dec 2024 13:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TBYdnuZ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2997BB667
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 13:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733145284; cv=none; b=IoroXTX+Z/46I3USwXV3UyX27RsqSq/Oi8ZKOwQ2V+rDj8kOMrk5tS8S6q/5xh+Y0DdCJkEb6jvSGxW5rhNu/W5XCDEYeoolNohwhWXkrRAtbqfKqtf4eKpje4B9CYaFTAAMmCkVi5lw0PPU0KKgLKgBmY1Qv1OCV934lpC4n2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733145284; c=relaxed/simple;
	bh=n6OtK1dfIujI4tEQ9KeSB8WK+LPUcdntX10s769oNJo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QdijwaIoXrfA0SIJHuoV5WDHNYYV6nBki+HcBCSWSmmckWk5s+AjEvpNhQUcw8fTSdIdUIxDhlqMg1sFblNsjIUNgyZ+h13RIF4Q6HFKF6sVa1dIfg5w4YvT8JjRvrMPnBjvYe4MkUGipD7BEWW0dT95ZJwyFKeDC7evMhZcLCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TBYdnuZ2; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-215a0390925so7092045ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 05:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733145281; x=1733750081; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/1mPxrL1Y7CTfszE/p7DdZQ6YpQR2r4wgKkulpNFYZ4=;
        b=TBYdnuZ2wYUYowxZYaiVnNFfZI3rVk8McKxKcuogJkZAPKSGwLXarazZbx6vNvn4YZ
         MW59r6DAfc0Xmzu8V3KgmNGMWXdZzQKKe2COvvvaZVUOeC4l1g6Uq7/ZBPpX0H+QiLWO
         QswQg6fgq1npbDCL3BVwFA7M8gsZC0fjaj71sYOMWK9Z3thbwIfes95cYwnH/VCuwfF5
         lM4zdwa6McCschjRS8iho6Jz9gsOJ3UjIIOH6OHuLnYtJoRQVkAJGydG39gIpVg5ajtG
         Xg8CLmJ5meototaAyG0S6vhnol8sx7jM8bucBo6jru7VoX+MxtU9UJcREeGlXsUA6Wc7
         RQ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733145281; x=1733750081;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/1mPxrL1Y7CTfszE/p7DdZQ6YpQR2r4wgKkulpNFYZ4=;
        b=FqPn762w7z1H7bFtGmHUIIPvnKxgEKpylkODORc+BVWDPCxVFPpGVfUKGzueR6+EVJ
         HNH7t4DPFTRXJbKlIxQ4q4LdWX3lPEA8S7JlcrKz6Ehrm/o8U17YPHAip7PzbeHT94ss
         RBUeM86BbqnPJmgT8HdGJetAnK3pyQSQvYWp+metZcnUVq3d8lKMtkCf7C2nC6hNaj9j
         nRj6A2mvDN7wsM60UeenoI1HWZxnsQ/4hukJDdT43gfk1zaFBNacuVpw9dbQEvtq/z7t
         CErWXC4yZsww2YD5XFGfGFOSPkVPXlthpGzUbZ/rjxkipvoFyas8VHzbmZoUrj7Wed/l
         ZcPA==
X-Forwarded-Encrypted: i=1; AJvYcCWEiwfgyedqLReyQgcdGK5PBMkPU3YjwuHu8/z7NfefEsmQBUk9gU8INs/eXDzjIhkvgNjsqpYpdXA5@vger.kernel.org
X-Gm-Message-State: AOJu0YylgWzLDVWfgM6R8arBgZHFg52IYMnLZmNJKFpccIgaZtyBFYWh
	HvYZKrY0U1Jh2Db0nko1HfElvjgSGhtL5V5t+EODNcIeu9X4BXKr
X-Gm-Gg: ASbGncvxbp8NjMdO33GGQy7pXbDeaMbDXzklcMXVLqiZI2fysU8Lxk+0cS1kXaxDdlS
	02g72A98CZUGp3broDIQyCiXPBQqpua8hJIGRvNGXq1Ta9nNUrbTXnDUbfoZ2cBfGk7G3EO7Qmj
	D4xMzkzqKFWmq5IeSggjHMCexVWcqygNGCtB5b2E6SMGSzVWLejUaf2zELpoi3NVPK8TidUkmnb
	gced76vghYc14mVSw30/XNCtr7Pa9o47fRFKhAkuuzBNYa9pg3LpHN2ziXCQQ==
X-Google-Smtp-Source: AGHT+IGHvec3b5O/wMNDj0wv/JrLlnI/n0gm1B17WHelsWMiUm7JPRj7siX5XK3LdinbBLvTJUOaPQ==
X-Received: by 2002:a17:902:d50a:b0:215:9642:4d7a with SMTP id d9443c01a7336-21596424f65mr50683835ad.0.1733145281185;
        Mon, 02 Dec 2024 05:14:41 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9b87:b3a5:736:1fc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2154e5d6965sm50007655ad.71.2024.12.02.05.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 05:14:40 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	francesco.dolcini@toradex.com,
	Fabio Estevam <festevam@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND v2] ARM: dts: imx6qdl-apalis: Change to "adi,force-bt656-4"
Date: Mon,  2 Dec 2024 10:14:23 -0300
Message-Id: <20241202131423.586743-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to adv7180.yaml, the correct property name is
"adi,force-bt656-4".

Update it accordingly to fix several dt-schema warnings:

adv7280@21: 'adv,force-bt656-4' does not match any of the regexes: ...

imx6qdl-apalis.dtsi is the only in-tree kernel user of this property.

BSD does have a adv7180 driver, so should not be impacted.

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
- Resending it as a standalone patch. The dt-bindings and driver
changes have alaready been applied in 6.13-rc1. 
Changes since v1:
- Explained that BSD is not impacted. (Krzysztof)
- Collected Krzysztof' Reviewed-by tag.

 arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi
index 1c72da417011..dffab5aa8b9c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi
@@ -691,7 +691,7 @@ &i2c3 {
 
 	adv_7280: adv7280@21 {
 		compatible = "adi,adv7280";
-		adv,force-bt656-4;
+		adi,force-bt656-4;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_ipu1_csi0>;
 		reg = <0x21>;
-- 
2.34.1


