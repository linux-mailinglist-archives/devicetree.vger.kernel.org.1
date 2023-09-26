Return-Path: <devicetree+bounces-3386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC50A7AEA5C
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:29:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7CEE52818FA
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87F0820B27;
	Tue, 26 Sep 2023 10:29:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398AD1F610
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 10:29:04 +0000 (UTC)
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E60DA101
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:29:02 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-55b5a37acb6so1403190a12.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695724142; x=1696328942; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SmW2dMqf+I2F/F/9UtrHR2gYfgVO360OE2NhcW4O2Ps=;
        b=QTRz1FIy9teausVEm+TlA75oPXLIJeOZ808vcqk3Du8kPXZllhD31cCqOF1vzZUzWN
         yKEbEALi9Bb8SHXuYT6wJqIvtmXou4f/2CFK696S/lP9eR9ejtimz41TUJognF6ojxAe
         NJEfcu6W9Niam0qXUrWfNyv9jGZPTRu4ZITZf6eoupvMnGG2gVadjIAMFQgY6eZhuxDr
         CFAzVbKS4uDrSvDsRToXJpgbgyImz4RnI8+KRc97ACgsylNNYKjP3szx5xfAz98gh/vg
         Wj7iE5p+aQmFSA3VnlCWRHGbvHlrQ07KGtEY+AA7kGCyMw3wTTQ6S/YTCie+rCRAhMhu
         O1SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695724142; x=1696328942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SmW2dMqf+I2F/F/9UtrHR2gYfgVO360OE2NhcW4O2Ps=;
        b=JlKAcLj/rJVQ4Veq6MzzR1HZFfflOhhXlq09TLY5sf2ICdPDNy0DFfES+vUkzcz/Pq
         qxYwga0JImkmgqjfvBUxtVyUs9JjN85u7V++aC/mt8j+MPprv2A+mLT8v64vDCTflAB1
         ZvBJBR3PwIM4ncPM1ml7OrvWKKlGYtzAEWfvbnP7avDh+Sh9LN8lkq22CEpXAIpDoAt/
         6HIhH3bEJc/Y+7SewIuZ0heiuSnVt30yyG4Sw1NojoTk5VuivR84jFCju8Q/0cxUtCt+
         dQxiy52Ya7mj3qczs5fN3IezucgA5Hy9xo5yty0uDBOf+46VkyjXWioKp6fBKKvAO9Y4
         t1ow==
X-Gm-Message-State: AOJu0Yzjuj6iUtgi0QLi9k0HCzDCPtcv6OEnP8m1WZ5ec3B8JAV70NU+
	+8IximYGAdxjYQfvsidGVXo=
X-Google-Smtp-Source: AGHT+IEAIue0sDK8V3qEiW7YKxfz6Q1CRXFQ5gKKG0H5JVntjNp7UY/dPlbwvHxSq6TrEPr3bhZbnQ==
X-Received: by 2002:a17:90a:1056:b0:26d:4ade:fcf0 with SMTP id y22-20020a17090a105600b0026d4adefcf0mr7955379pjd.4.1695724142224;
        Tue, 26 Sep 2023 03:29:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id gf4-20020a17090ac7c400b0026d54b2abe9sm3963829pjb.37.2023.09.26.03.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 03:29:01 -0700 (PDT)
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
Subject: [PATCH v2 3/3]  arm64: dts: imx8qxp-mek: Pass gpio-sbu-mux mode-switch
Date: Tue, 26 Sep 2023 07:28:21 -0300
Message-Id: <20230926102821.306860-3-festevam@gmail.com>
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

Per gpio-sbu-mux.yaml, the 'mode-switch' property is mandatory.

Pass it to fix the following schema warning:

imx8qxp-mek.dtb: gpio-sbu-mux: 'mode-switch' is a required property
	from schema $id: http://devicetree.org/schemas/usb/gpio-sbu-mux.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- None.

 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index a06a6491ef20..f95b58c69c6a 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -36,6 +36,7 @@ gpio-sbu-mux {
 		pinctrl-0 = <&pinctrl_typec_mux>;
 		select-gpios = <&lsio_gpio5 9 GPIO_ACTIVE_HIGH>;
 		enable-gpios = <&pca9557_a 7 GPIO_ACTIVE_LOW>;
+		mode-switch;
 		orientation-switch;
 
 		port {
-- 
2.34.1


