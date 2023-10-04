Return-Path: <devicetree+bounces-5965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE65B7B9881
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 01:02:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id AA57A1C20924
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 675CC266B3;
	Wed,  4 Oct 2023 23:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kl4RCUdp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC458266A0
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 23:02:25 +0000 (UTC)
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB45CAD;
	Wed,  4 Oct 2023 16:02:24 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id ca18e2360f4ac-7a2cc9ee64cso17026639f.1;
        Wed, 04 Oct 2023 16:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696460544; x=1697065344; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TLNVk+qvr8aflFPQ/PSFQrVVk8m9AYioDN8iHQp7XvY=;
        b=kl4RCUdpYDYqSW+7WIcqhpov1hkfV44JcSS7RJF9dmwY8RlX7WhHEC0gDDUv4/dyno
         iOUBeWNHG/lU3JSRKERKswwE6F0KkWyvnMSAZoAOs6aYzYQFxVUDXeD03z9H0id/u9KP
         5WIb4khSzYY4u/GLyNrfIKm6VxXmPNdUraTXsWKe3RWes6VQDzNQBDOfeyo3+RnHe1Ea
         HmOLfdN+pVRf4y2EqP0bSQ8hyMZtYlllllvYL7d9Dp8y7b4CFHfeFAk+An/ag9XzeTb8
         h9zcuneAt2JtYNv8a73Rc8UkyL0O3aJ02inoKIBR0/K2ghxpWHhUf2KY1+bpgiO0Am75
         yTnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696460544; x=1697065344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TLNVk+qvr8aflFPQ/PSFQrVVk8m9AYioDN8iHQp7XvY=;
        b=v0zsHvOkRX6rIa3Ixc6JwNba81VKjlhNGEJty6a/li9DKVql0rDaSs1/4XiqZoVlWL
         X523/i2wOr6yJvu157m2+lqV7U8cDIlBGHyNBffJS6pQSN2p3D0vGafhERdDx/+Lwd8m
         CxjRzKXs7GDF0iLdKhsPFMKSI2ON1lGr+JFGgeUQz/ywOC8PAOtehof2ed9MsCRRlXGb
         RYNwUjqeGyCiiV8SRbJv7wNd9w+kKzSp5p6+WeDk97Txt9OqnTSSNGr68s2+Yn9er3+r
         ydrMVYjv19nXYZurMXk71/f0KN4YLt3fZZGoOObK2OQxlyXiSHr7C+0s1vNemqSb7T5j
         oyww==
X-Gm-Message-State: AOJu0Yw5uZWPGASFmg4VsJSNlJe4YVXpbva5ddJF9Eqza1J5AoT3LkiZ
	HevhzTM5PvNR4njAi48N0Q8=
X-Google-Smtp-Source: AGHT+IFJKg+S+wNiDZTF3lLLtAruDx2X4H03Kq/vYLX5Hc/bga8woWphFW86af2SSaZy61JsclM9dw==
X-Received: by 2002:a5d:904b:0:b0:792:70c2:9db1 with SMTP id v11-20020a5d904b000000b0079270c29db1mr4307131ioq.1.1696460544209;
        Wed, 04 Oct 2023 16:02:24 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id u25-20020a02cbd9000000b0042b3bb542aesm82688jaq.168.2023.10.04.16.02.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 16:02:23 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8mn: Add sound-dai-cells to micfil node
Date: Wed,  4 Oct 2023 18:01:59 -0500
Message-Id: <20231004230159.33527-2-aford173@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231004230159.33527-1-aford173@gmail.com>
References: <20231004230159.33527-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Per the DT bindings, the micfil node should have a sound-dai-cells
entry.

Fixes: cca69ef6eba5 ("arm64: dts: imx8mn: Add support for micfil")
Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index aa38dd6dc9ba..1bb1d0c1bae4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -371,6 +371,7 @@ micfil: audio-controller@30080000 {
 						      "pll8k", "pll11k", "clkext3";
 					dmas = <&sdma2 24 25 0x80000000>;
 					dma-names = "rx";
+					#sound-dai-cells = <0>;
 					status = "disabled";
 				};
 
-- 
2.40.1


