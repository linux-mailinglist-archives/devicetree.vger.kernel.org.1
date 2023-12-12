Return-Path: <devicetree+bounces-24488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FAD80F4E4
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 18:49:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D497281B9E
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 17:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 104ED7D8B3;
	Tue, 12 Dec 2023 17:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kyRNU/NR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A889B2
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 09:49:25 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-28ac70368b9so148105a91.0
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 09:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702403365; x=1703008165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pQmpfl24jbiZt6rB54h6LJ1un8z6RLiJsN5XRgtJKqo=;
        b=kyRNU/NRULvLJ72tDhEJzH4A0fIkv5FT1EfP8eCj8rAtheuNaTrPl+vKQKVo00vWkp
         DrnIWNc1v+IxjjycLydHaP33X/nj5RKE9IQNEDH715AL1NhPcvuhItzOgGraPnDZkJLx
         tFtZsnY068vPTTxEx/qVCAYdedDePLamray27Nu7TsyLSOD27ZKuO4zGmV7G0i3Mk3dC
         TNb11/Eap20DMvJ7/YI+tKgyYp1ueNSt/cmCk9K1sOSBCfKujDEi8XiaAapXynae/Xcj
         mby6i+w4+M7if6JMSrFotejBvkUPjZfzvqCz9GJpQT6dwk7UKZEh9ROhhhUhH2KxJo4a
         TBqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702403365; x=1703008165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pQmpfl24jbiZt6rB54h6LJ1un8z6RLiJsN5XRgtJKqo=;
        b=vN8pZiQocTK8J1O5B2gBu0mwwkMcUuCzZJLL+ZIEKJ6AnuslkNR8OsQZc0PQbAQo9V
         RWbRQjtjnSdwrHuABnr4rYd+5satdpcx505e6wgrXQPNR1UM7xYoWMvG52f00hp4WoNY
         9TsIj1GRRu3gMGDfWpHfKAPNuhOOUMcg32Ih6LMyuYPDL/RwxcseLyEQn9toajByn01B
         cOrRBt8nhJTy85tCjkBG1m56f9frFfqkM/7topzkh4DcitL8JcZ4NEkGLEYwUcTgiQoV
         e9qYmnFX82PJACLXBGvZQo5zSUyTlIdMS+b6T0IIkBagwvrvdEEC1jdWUnNKDPelfkWv
         +BlQ==
X-Gm-Message-State: AOJu0YyRxHwGLSg4eyZy11RGsW/ArAfML0jJnwQQIfyYCpIfiCqIr5d8
	3wZo9lSCEVev2xxvdoTP3Ew=
X-Google-Smtp-Source: AGHT+IG2SSn1o8HA+hFaa2hA+1SRxeubJGVPuyBie7zvn/CPsYY9bHuLwtMmUz4naG7pC7fTvd1j3g==
X-Received: by 2002:a17:90a:d916:b0:28a:d272:f162 with SMTP id c22-20020a17090ad91600b0028ad272f162mr1166207pjv.2.1702403365027;
        Tue, 12 Dec 2023 09:49:25 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:a620:342d:797a:5c59])
        by smtp.gmail.com with ESMTPSA id w23-20020a170902a71700b001d0c418174fsm3115008plq.117.2023.12.12.09.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 09:49:24 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: cw00.choi@samsung.com
Cc: myungjoo.ham@samsung.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	shawnguo@kernel.org,
	marex@denx.de,
	hvilleneuve@dimonoff.com,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/3] arm64: dts: imx8mn-var-som-symphony: Describe the USB-C connector
Date: Tue, 12 Dec 2023 14:48:46 -0300
Message-Id: <20231212174847.759164-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212174847.759164-1-festevam@gmail.com>
References: <20231212174847.759164-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Describe the PTN5150 USB-C connector to improve the devicetree description
and fix the following dt-schema warning:

imx8mn-var-som-symphony.dtb: typec@3d: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/extcon/extcon-ptn5150.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- None

 .../boot/dts/freescale/imx8mn-var-som-symphony.dts    | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
index a6b94d1957c9..f38ee2266b25 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
@@ -128,9 +128,14 @@ extcon_usbotg1: typec@3d {
 		pinctrl-0 = <&pinctrl_ptn5150>;
 		status = "okay";
 
-		port {
-			typec1_dr_sw: endpoint {
-				remote-endpoint = <&usb1_drd_sw>;
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+
+			port {
+				typec1_dr_sw: endpoint {
+					remote-endpoint = <&usb1_drd_sw>;
+				};
 			};
 		};
 	};
-- 
2.34.1


