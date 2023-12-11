Return-Path: <devicetree+bounces-24061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C4580DBD2
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 21:41:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53FAB1C215AA
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 20:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6652F53E3C;
	Mon, 11 Dec 2023 20:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CyI4T5Sy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B007E9F
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 12:41:52 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1d03f90b0cbso8925885ad.1
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 12:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702327312; x=1702932112; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4SLdiRyhExEvPi1cg8KDejtcX5uLXmVUyVp5Vl4jGMo=;
        b=CyI4T5Sy893a5lQR6nhq7a1mVLCMjNMy/qCJfBqv8JFfTyazsNljaTLJ2MqH9rIuqI
         IdaQQKVIH7nCypr6TJPoSiuRKyTXPzfwY/FSDa9Bahq9lqishVBPx9ds7F0+1EanMFb1
         60OO8xImJo3jtGWd1Pj9M3qFjd/Vg1lnSRskputk6MaKyrjxUeV8PJbkRN5CUxfC8Rcg
         GEg0fdotx07IFP36ScsMd93FjWa3x9dW7AOZKkVSkcCuAZvqW0/3TqdHe9sFNy12klYE
         ceh2Pd3wESok55cMB3kT8Vjjg2L1jYKfRteaQVp89eJEQq2UxHN7453jloiCJGGYkRmv
         /PbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702327312; x=1702932112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4SLdiRyhExEvPi1cg8KDejtcX5uLXmVUyVp5Vl4jGMo=;
        b=BZvZRMm+1iPM2asro5cGqJrzO+BrGHYq9tIACpTolfBx9IT1mhLBt6EudZ3Yf4AZZL
         1cAMEiUp1er+JEpBC/dwUwP+IghyTIjDIH2QzjCy8YfZFgLTLZhdnxg0qhFfTaD/uNwb
         5ZUR+HMmgzpbpTxzVUbwIDRsdPB8KfqxKShIxZckQZBieQwyDIZ15BNBsBH+T4YKvCEw
         ehHL/C2iE0PjiOe2ZmJGQa7CnhZfoWCFGgvX/Tc+HHb9uMYBuc2B0RTvMY7JMTMPWfrn
         /wFZDYHVUyMqoTBKBlKhYSQrv8dvW5qGzzj+xwgrj8ODUSVYrr3kOJVsQnOKSrPhnFou
         6uqQ==
X-Gm-Message-State: AOJu0YwoDBRIb2L0fQ6tmx4TwTHNwEzAtbOtEAwBN6OzAuEqmXYzsTiQ
	ujcPHfG5oFLAXJIlOV3VfQs=
X-Google-Smtp-Source: AGHT+IF6I60HrE6MGdchekzFDVSoSd7q2xByXKq950PLJ1Ac62OYbce8O8VpSxDxHwlchyeldQp4PQ==
X-Received: by 2002:a17:902:d4c3:b0:1d0:45b2:d8b0 with SMTP id o3-20020a170902d4c300b001d045b2d8b0mr9145535plg.5.1702327312115;
        Mon, 11 Dec 2023 12:41:52 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:1d51:eaf7:9aaa:d7c])
        by smtp.gmail.com with ESMTPSA id w14-20020a1709027b8e00b001cfc4d8ede5sm7124809pll.301.2023.12.11.12.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 12:41:51 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: marex@denx.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	martink@posteo.de,
	kernel@puri.sm,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/3] arm64: dts: imx8mq: Exclude "fsl,imx6sx-lcdif"
Date: Mon, 11 Dec 2023 17:41:38 -0300
Message-Id: <20231211204138.553141-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211204138.553141-1-festevam@gmail.com>
References: <20231211204138.553141-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

On i.MX6SX, the LCDIF has an associated power domain.

i.MX8MQ does not have an LCDIF power domain, so pass only
"fsl,imx8mq-lcdif" as compatible string to fix the following
dt-schema warning:

imx8mq-evk.dtb: lcd-controller@30320000: 'power-domains' is a required property
	from schema $id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index c6dc3ba0d43b..5d8365e4eb26 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -739,7 +739,7 @@ sdma2: dma-controller@302c0000 {
 			};
 
 			lcdif: lcd-controller@30320000 {
-				compatible = "fsl,imx8mq-lcdif", "fsl,imx6sx-lcdif";
+				compatible = "fsl,imx8mq-lcdif";
 				reg = <0x30320000 0x10000>;
 				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MQ_CLK_LCDIF_PIXEL>,
-- 
2.34.1


