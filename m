Return-Path: <devicetree+bounces-5095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C257B5338
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:29:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 19A28B20D37
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 771FA18B06;
	Mon,  2 Oct 2023 12:29:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC081798D
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:29:19 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85849CE
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 05:29:17 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4054496bde3so146954435e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 05:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696249756; x=1696854556; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XgkgY+Hphqjk3amPtIZgb/fXeevEe3mIn4vayjBuH/Q=;
        b=pWWuDtexRpwgrtrUTk3qRTe16jU+WxHXtAX+DGFDJirVkzGrnbVRVlDEaMmDGza7U+
         /mwmy7T7gYHZtLSlIzqELL5g+ILgCUXyDf00Hz4icc6OrX36a6gU8cJscNc//j/cucHN
         SZ5fBca54cpK/hKDIEiTKUk/u93qfdGMKoydJjcVslLB6BjOWNeZiuqFQnGy+QBxBa3F
         sKWyt3QzW91uymMrgQiLcrjQ67nwZ28YumtuKFEb6rPPnBh+WlTHiv4iGwPTXWNLgUH3
         mdaH++sdU2VGkxj6QUOP8iyZ581sLawOUC7Qhe4amQI4v2XWU5bWIk0WHMmm7SMof6Ix
         LfWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696249756; x=1696854556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XgkgY+Hphqjk3amPtIZgb/fXeevEe3mIn4vayjBuH/Q=;
        b=XvVaiAISfrgCBGmOT83IjMfw6O+gAH8ZQtNEzoKfRMT6Gtd0DJiylv7cpp3JnvpEHm
         e1mJ2mWwCM0e6lBAK2UNcQvyU+lq76X/BO7+iLbFXTLNpyYLKqxxSTlTJYRDc7efiIFR
         lKmUX5RcWhB9dkkT5XljrF7sadT7eQDmrE4aJN7+iCBkYcvXHjArXVBsnF+0CO0La2d8
         Ts51Zk2VhnyDJz2AtTrv2m695GUEBMSfDlT1O2tbDp2zZxKFdDBmZgJJibZqLzIHyEk4
         0VUMcplN6SfzYS1dHz76ov4qRV7wgzDAgV9u2mNla3lYJ2bT7y5hP0Je8BE73nVlhWYG
         V89g==
X-Gm-Message-State: AOJu0YwNR4fudnytFN+puFtk+Jy90k/8RkWZ/NkzmbTYTYbe1Qsv++09
	NltKWBomDMM2sCCkSlZRAu44bQ==
X-Google-Smtp-Source: AGHT+IHaICWozkAOxVKpDGyd190ouKwdneqDNILngD+XeRWNOuBi+o+3Ai7Htyu5JiiL2skBq8+P6w==
X-Received: by 2002:a7b:c44f:0:b0:402:ee71:29 with SMTP id l15-20020a7bc44f000000b00402ee710029mr9655082wmi.10.1696249755731;
        Mon, 02 Oct 2023 05:29:15 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:fcf2:65f1:853c:13be])
        by smtp.googlemail.com with ESMTPSA id s16-20020a05600c045000b0040536dcec17sm7144819wmb.27.2023.10.02.05.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 05:29:15 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: usb: add device for Genesys Logic hub gl3510
Date: Mon,  2 Oct 2023 14:29:08 +0200
Message-Id: <20231002122909.2338049-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231002122909.2338049-1-jbrunet@baylibre.com>
References: <20231002122909.2338049-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add gl3510 USB 3 root hub device id

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 Documentation/devicetree/bindings/usb/genesys,gl850g.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
index d0927f6768a4..ee08b9c3721f 100644
--- a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
+++ b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/genesys,gl850g.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Genesys Logic GL850G USB 2.0 hub controller
+title: Genesys Logic USB hub controller
 
 maintainers:
   - Icenowy Zheng <uwu@icenowy.me>
@@ -18,6 +18,7 @@ properties:
       - usb5e3,608
       - usb5e3,610
       - usb5e3,620
+      - usb5e3,626
 
   reg: true
 
-- 
2.40.1


