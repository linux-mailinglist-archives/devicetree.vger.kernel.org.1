Return-Path: <devicetree+bounces-2766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E82587AC7C3
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 13:38:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 09D601C20829
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 11:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C0AF1110;
	Sun, 24 Sep 2023 11:38:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE931111C
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:38:39 +0000 (UTC)
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64962139;
	Sun, 24 Sep 2023 04:38:38 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-692b43bd804so1854695b3a.1;
        Sun, 24 Sep 2023 04:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695555517; x=1696160317; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ul33TqpD3VQ4mK3/9LxJs7GhSg/Yt+Ru6Sjot+t3GL0=;
        b=ZOlZAz5T+VrfIMdSIjsP/ZG2ykGru9yD46U+P/Rj1ycMXxBCi40QdyXK03kkMV/SaX
         F7D2rC97Enn3EiIKEXpWU2iJKHkCNsAObPxPtQO0fxheCzxMvTqjgWPO0rq4JkJoOnTT
         A3d5ojtGdZaeWJESSeEwdRV36tj0+iVF8ihjAX/cQodu8oJDBhTFOAvaHOsJ5woxzshp
         BbPcuhb+jKeFk/mftTIz3E4mVtPBRsPm0nF8rrPkaUsCXqPWTOc587BbgQGkPHnoA6TM
         Bly3vxzYew4ZLIhi6QL9s48waWra8Hs6obgH9rx3F1rRpGlBHEg20mJWyTZnXR1ojW1Z
         g5Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695555517; x=1696160317;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ul33TqpD3VQ4mK3/9LxJs7GhSg/Yt+Ru6Sjot+t3GL0=;
        b=uln41+WMhYU/wz9F6QfzSjVjbdfOxYAAbQA5tANOcQSs3aqW8RgVc0QJWJ5OVcrEOl
         OObA7Z1h7SxVgB3JyCxKsd/jAG0u7krMvaC5tK2l1bXvcCT9zyCkoXwNz3NgGNcJMGVG
         O8pu5WZA68nmANktamdn+v263zY2eN1GL5x6U4TOvX9lcYA1Vq5hUwA/CgLAf3zU755q
         UYVIZV77irQI3W1+YKB+NqDu0nil57MmrrrMy5G3C3VXc5/pZC2wJZZxN/L6sm2o0r/Z
         BSWYPSiouKr3uwhOWA7cDeYOf8+KsnNl54vx98xVqKqHRiJNuF1gCIRPSzBbUBVeml6L
         lN8Q==
X-Gm-Message-State: AOJu0YzsUJ3Z7i82TgHSuAXDi6j7Z+eD6w6kXmmkc8CdIimQy0Uh30mG
	Ln48FLJRWHBFrq/F5XgBwEE=
X-Google-Smtp-Source: AGHT+IESOUWBAFs+Ltaz90JcqBTiNhA05cnMgzrSgkq9/0A6aoTHEl2HZln4Na+j8B2rwkcoGAO+lw==
X-Received: by 2002:a05:6a20:8e08:b0:13d:5b8e:db83 with SMTP id y8-20020a056a208e0800b0013d5b8edb83mr3211081pzj.9.1695555517561;
        Sun, 24 Sep 2023 04:38:37 -0700 (PDT)
Received: from toolbox.iitism.net ([103.15.228.93])
        by smtp.gmail.com with ESMTPSA id s2-20020a17090a6e4200b002775281b9easm422376pjm.50.2023.09.24.04.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 04:38:37 -0700 (PDT)
From: Ayush Singh <ayushdevel1325@gmail.com>
To: greybus-dev@lists.linaro.org
Cc: Ayush Singh <ayushdevel1325@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org,
	vaishnav@beagleboard.org,
	jkridner@beagleboard.org,
	nm@ti.com,
	vigneshr@ti.com,
	kristo@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 3/3] dts: ti: k3-am625-beagleplay: Add beaglecc1352
Date: Sun, 24 Sep 2023 17:06:59 +0530
Message-ID: <20230924113725.164948-4-ayushdevel1325@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230924113725.164948-1-ayushdevel1325@gmail.com>
References: <20230924113725.164948-1-ayushdevel1325@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The BeaglePlay board by BeagleBoard.org has a CC1352 co-processor. This
co-processor is connected to the main AM62 (running Linux) over UART. In
the BeagleConnect Technology, CC1352 is responsible for handling 6LoWPAN
communication with beagleconnect freedom nodes as well as their
discovery.

This mcu is used by gb-beagleplay, a Greybus driver for BeaglePlay.

Signed-off-by: Ayush Singh <ayushdevel1325@gmail.com>
---
 arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
index 7cfdf562b53b..5d46f907468f 100644
--- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
@@ -870,6 +870,10 @@ &main_uart6 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&wifi_debug_uart_pins_default>;
 	status = "okay";
+
+	mcu {
+		compatible = "beagle,play-cc1352";
+	};
 };
 
 &dss {
-- 
2.41.0


