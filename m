Return-Path: <devicetree+bounces-3385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A05A57AEA5B
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:29:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 27A581F255B6
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8BA4208D2;
	Tue, 26 Sep 2023 10:29:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75501567F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 10:29:03 +0000 (UTC)
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86C46E5
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:28:58 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-27755cfa666so848160a91.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695724138; x=1696328938; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=icAwcWEXNZWq+evcmrwDLEBSySeE3CI9+OXTzforKG4=;
        b=lJ9WMN9C+EQja6VP7MhC4J6ysHvzN7XK3neEdJkkBSm3GjOgjOnX1wTk+LLRRN7bMY
         beBeBkwY8XpC9NAstb8FWfViqJUuxjS0d6UkqawtREB1O+qbIW7DWA6Oy/lCqVrVmSmT
         DIhJu4lbE0eA0M7BTN25Gui8K1/HMiHr9hUcVYwPFBhUOg/P5FmeLjnk2YrJDjLtpQ0C
         /CZJYCmFSQK9m08e5Zlr2HFjDSvQlOThSIKyrj4TZJsB4ajcC353esJIHvfOBfUBX1g6
         SSCr87iSPh4ZBPcwHNftdDmnpG8/CNMTYO2gRCgliTP9NGUCbvyfVsxg8V/nbr9Ymk+A
         QVMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695724138; x=1696328938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=icAwcWEXNZWq+evcmrwDLEBSySeE3CI9+OXTzforKG4=;
        b=suFe4Z9XbtISzlK9+qLmjoW7S6AMhZqvdpzJTT3barkDVN07Ni8DKiu2fT/aVjh8Z5
         FH6IRWBcnrZptzGYQj5AAYlQcE43gIuEykrdztQtl0AX79/1Kd329RBitH64dEyC+WpM
         30xd8wbUVD5s6WXG25jWPHIjFTTTr4DHTx47Q0WCv86RQsojegMRLs5l5fVrwmqqY87o
         cKMQ8Phfeu4p5TVj830pLFhUfLVFN6+WI8sTiWtJSOBllsPwfC+2JGixwDfAj8oxTH9u
         GGo28b0OSKXAl317Q8Kgt9eAZyLajqewQVpQzQ/qXGswREdiLy1nZr79id2bg+oIuN3n
         vDnQ==
X-Gm-Message-State: AOJu0Yw3HP7nqWuzt27s3wYPFy7fsIQ5TQ80gwdqwUzpotedtXo/bvq4
	cDcGuO8zYxCzaI7rgml/Ejg=
X-Google-Smtp-Source: AGHT+IETg/Lt/z/tQScXUG0t/2Q7DMpBHYhOWnJwGpUhZmnikdpJEAX+agt0S++I8renRLu45i6vpw==
X-Received: by 2002:a17:90a:710:b0:26d:4312:17ec with SMTP id l16-20020a17090a071000b0026d431217ecmr8021646pjl.1.1695724137936;
        Tue, 26 Sep 2023 03:28:57 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id gf4-20020a17090ac7c400b0026d54b2abe9sm3963829pjb.37.2023.09.26.03.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 03:28:57 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: gregkh@linuxfoundation.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-imx@nxp.com,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/3] arm64: dts: imx8qxp-mek: Fix gpio-sbu-mux compatible
Date: Tue, 26 Sep 2023 07:28:20 -0300
Message-Id: <20230926102821.306860-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230926102821.306860-1-festevam@gmail.com>
References: <20230926102821.306860-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

Per gpio-sbu-mux.yaml, the compatible entry is incomplete.

The imx8qxp-mek board uses a CBDTU02043, so complete the gpio-sbu-mux
compatible accordingly.

This fixes the following schema warning:

imx8qxp-mek.dtb: gpio-sbu-mux: compatible:0: 'gpio-sbu-mux' is not one of ['onnn,fsusb43l10x', 'pericom,pi3usb102']
	from schema $id: http://devicetree.org/schemas/usb/gpio-sbu-mux.yaml#
	
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Added space to separate compatible entries. (Krzysztof)

 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index 7924b0969ad8..a06a6491ef20 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -31,7 +31,7 @@ reg_usdhc2_vmmc: usdhc2-vmmc {
 	};
 
 	gpio-sbu-mux {
-		compatible = "gpio-sbu-mux";
+		compatible = "nxp,cbdtu02043", "gpio-sbu-mux";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec_mux>;
 		select-gpios = <&lsio_gpio5 9 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


