Return-Path: <devicetree+bounces-118147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3298C9B92A4
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 14:54:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAF42280F2A
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 13:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 724651A08DB;
	Fri,  1 Nov 2024 13:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z2St4eYT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923C4158DD0
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 13:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730469276; cv=none; b=NCJKfmwbpnPMawShqOwk7uTYPTaVsbpzNlr8GllE9wPmKBd4wEPCA6v5Lb7alTgYfBBkhsvQVSxl+y0o61vczmDEP8sJypbau6siXoxr1+qfRYlMA4ORe71pOM84IAV9tiXYeWXs3+Sad3O6P2Ix13FEKp8eLheZW89qBbXWbfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730469276; c=relaxed/simple;
	bh=KCjKq65HkRNpVVajlxDvGX6zd4RVJJDgsLxzsXtMres=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VrgjDQrr+XHeWJ0RbFfMfRSQrT/1GnO2xRNhbWVtzJKOSSy8shZ0TB2PA/MRE2HVf+al7YAhm2hd1Dqhy5A1ixhnAcl0ATft3R0kxlWOKeqm49p7drwaIOuSQ6P/jVtsoxfxQSXs4JQuYoKEREuvWJvBp8o2oF2mqSHHYVEtQ6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z2St4eYT; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-7eda47b7343so1375305a12.0
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 06:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730469274; x=1731074074; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9XxDoLs63Ik2eMNpQfC7mj7nFGiFRzg3AZMRbgqbLD4=;
        b=Z2St4eYTe+yyhWLezRpg6IyqklriFgZiC28zenZuq3yDbBAs9wXQCaT+QrAQ9vo2+j
         ku06/VcvqFF5bH9DJZuWPQD92ZEP5yn5khopWIAWW89hOsJQPAZQpFBBPkN1RNNikC/o
         vuo1JnzE2y9Hj5lWxr1FeOYUHfmvKd7SIOSplci40TxiEPzYBhMG0DE0iyjz+GD/n+xH
         tJFfugBtPoO9sgxn/+jOqzEk3Cl0XuWXzOjsMTRfJvVo+1DT/k2KQDY4kiZmz8fhT3BY
         vKS8whS9DkbUr5Gw26vZW/FWPb1gr+O1EnMOczxWq7SlAeE+ScoQ1phZsM9NpXm7aLjf
         daxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730469274; x=1731074074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9XxDoLs63Ik2eMNpQfC7mj7nFGiFRzg3AZMRbgqbLD4=;
        b=R04OA5MPHQq6b+REZLA4E1bnflZJ44UcQn0AaXdCdKL4LFLFl3X0am3XrsIhS7oAv9
         6plhINxOrSMQLbOah1DMHbomSZ2Mb8So9iQazvJWJkaw4vuvLKd/gAn4yw/VVVtLcni9
         sGNwz9C+SbEsO/vBB7DU/4fvi2rQvOjagdVUgmO7L2dbwp2ZkqucO/pXgrWoGUEgH07Y
         Qlg/Bmjf9VjlxfXkuIq/dyvIMz3+afWKDiF9lVWRJpHhfgGAjm/2Nx/6SmwQReA9tcy7
         lhvBLj2wnTi59jd465jTvPVhEmvXVF9A1y+/j8IXrbrHQjvLEz50Wj0YGd24DSL54Fb7
         E67Q==
X-Forwarded-Encrypted: i=1; AJvYcCUdP4A9U5v6VaBikjKLbJIH0hk96GRzz3vg3GXz++rxrH623lIr09xAk2ZSE2zv2PnFVUbq1AMLIqOv@vger.kernel.org
X-Gm-Message-State: AOJu0YzHaP0cKbGAwuztI57jV5U03l4YnVsGW+t9dZw3TaE+7zmMVNhU
	rPANdFuZ6qehKFHh387OeTLEQ/yS9A7MjoAIxX66fAXfx0/IDCNl
X-Google-Smtp-Source: AGHT+IH8W2eCY65X0S8AQbE9o3p5Q3zI8rq+GaKzoJeNimr8oXqT3hybKf0PinVDefFIyOyprLWsVg==
X-Received: by 2002:a05:6a20:c797:b0:1d4:fcd0:5bea with SMTP id adf61e73a8af0-1d9a83ab7f2mr30193095637.6.1730469273852;
        Fri, 01 Nov 2024 06:54:33 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:f81d:d4e5:9f89:77f2])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-720bc1eb3a7sm2656270b3a.81.2024.11.01.06.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 06:54:33 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: marex@denx.de,
	a.fatoum@pengutronix.de,
	andreas@kemnade.info,
	kernel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v4 3/3] ARM: dts: imx6sl: Provide a more specific lcdif compatible
Date: Fri,  1 Nov 2024 10:54:06 -0300
Message-Id: <20241101135406.47836-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241101135406.47836-1-festevam@gmail.com>
References: <20241101135406.47836-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The LCDIF IP on i.MX6SL and i.MX6SLL is compatible with i.MX6SX.

Provide a more specific "fsl,imx6sx-lcdif" compatible and still keep
"fsl,imx28-lcdif" for DT compatibility.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v3:
- None.

 arch/arm/boot/dts/nxp/imx/imx6sl.dtsi  | 3 ++-
 arch/arm/boot/dts/nxp/imx/imx6sll.dtsi | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
index 6aa61235e39e..840e19b2ca0f 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
@@ -773,7 +773,8 @@ epdc: epdc@20f4000 {
 			};
 
 			lcdif: lcdif@20f8000 {
-				compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif",
+					     "fsl,imx28-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <0 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_LCDIF_PIX>,
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
index 85fe2a4ab97a..eff83f5e5535 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
@@ -648,7 +648,8 @@ pxp: pxp@20f0000 {
 			};
 
 			lcdif: lcd-controller@20f8000 {
-				compatible = "fsl,imx6sll-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sll-lcdif", "fsl,imx6sx-lcdif",
+					     "fsl,imx28-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_LCDIF_PIX>,
-- 
2.34.1


