Return-Path: <devicetree+bounces-5678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 947567B77F2
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 08:37:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B67341C20865
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 06:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D53CC569C;
	Wed,  4 Oct 2023 06:37:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD645698
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 06:37:40 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10D1DB0
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 23:37:37 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9ae75ece209so315331766b.3
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 23:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1696401455; x=1697006255; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p7tjP/kNvFdirVdEdO+zKKMbLGQyGDvV/p73al1OJ6o=;
        b=J1h+REUPf/DWpLP0Tx+f7HWOn5cab89djUvdMpb94WvRETFjFD5/BHGVWaKX0+viTe
         jkpU9CHvkUpkwxYJUAiGiz2ORgpMhCkSvY5+bAtcSspZ0MniNP8HBwuWEre9TmKc9lVz
         rT+86CZugEyKl3KiLXlv+5Tlzwnglrf2PNu1O4M5iRsWgyQkLOFMBnps+3ix8XfsTN3W
         xDL14VmvYo1CbZEpgAwNNKKvOiHEoXix4njYSrBvUhwM0cnnKAZNw7I/W4Hq36OwMCD3
         wRvMKnlt5SdzeZOPPSM4ZWjwRYWT/MaEr9OkiZ2KOCAZVhZWY6U2c8HBfXNGQrgU30BE
         EcBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696401455; x=1697006255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p7tjP/kNvFdirVdEdO+zKKMbLGQyGDvV/p73al1OJ6o=;
        b=G07MBrZA4V2jX2v7cLuZ+xdDlqtshSe6Qjd0ugI0v1yHWyI5L4ins6DwM+NZQ9pamA
         Djz9tC5TcUTPjTrcXnsgVWHCIAxnuAQecFuQEs0ZQfB9Ch4PVIpQbq/2yeCKZbQtlzHQ
         W2s9EDAiJna0xzmAJpoRHgWNN6CvwnJKnrSEQHz7Tx2pa3qSzBPPgrA6Dr2Usm0QFLBV
         5rdJxA33masLi0LbNzvD+1Crcc1EUIvg8qazFIP6HPyZ5MQrBazosGWZkVvL08WQ/cta
         BlZ+EfzJZaYB8lprCl1itmlV8jAGMjTG6CXk6GPY7a3GPMorUnyUQywzlGUEgZko7VyC
         iHhA==
X-Gm-Message-State: AOJu0Yw2amBic31zsoxdLZrteIoYp8rBhte5G/a6QfYDBnB50rl0qwFS
	FHrebMj8ZvywVRoVrc0xK85eY7FaZjNOmBe+/OtIRA==
X-Google-Smtp-Source: AGHT+IGLapIb4nj4ZcigiKiclJwBDD7Fs6WqXJRbY2zCs9wk0EgcSlXwJuT4bHJBOsXGkpLAkKWNew==
X-Received: by 2002:a17:907:d047:b0:9ae:6744:4591 with SMTP id vb7-20020a170907d04700b009ae67444591mr1105255ejc.43.1696401455571;
        Tue, 03 Oct 2023 23:37:35 -0700 (PDT)
Received: from capella.localdomain ([193.89.194.60])
        by smtp.gmail.com with ESMTPSA id jx14-20020a170906ca4e00b009ade1a4f795sm2193507ejb.168.2023.10.03.23.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 23:37:35 -0700 (PDT)
From: =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alvin@pqrs.dk>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	=?UTF-8?q?=A0ipraga?= <alsi@bang-olufsen.dk>
Cc: Rob Herring <robh@kernel.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/4] ARM: dts: dove-cubox: fix si5351 node names
Date: Wed,  4 Oct 2023 08:35:28 +0200
Message-ID: <20231004063712.3348978-3-alvin@pqrs.dk>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231004063712.3348978-1-alvin@pqrs.dk>
References: <20231004063712.3348978-1-alvin@pqrs.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Alvin Šipraga <alsi@bang-olufsen.dk>

Correct the device tree to conform with the bindings. The node name and
index should be separated with an @.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 arch/arm/boot/dts/marvell/dove-cubox.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/dove-cubox.dts b/arch/arm/boot/dts/marvell/dove-cubox.dts
index bfde99486a87..bcaaf8320c45 100644
--- a/arch/arm/boot/dts/marvell/dove-cubox.dts
+++ b/arch/arm/boot/dts/marvell/dove-cubox.dts
@@ -101,7 +101,7 @@ si5351: clock-generator@60 {
 		/* connect xtal input as source of pll0 and pll1 */
 		silabs,pll-source = <0 0>, <1 0>;
 
-		clkout0 {
+		clkout@0 {
 			reg = <0>;
 			silabs,drive-strength = <8>;
 			silabs,multisynth-source = <0>;
@@ -109,7 +109,7 @@ clkout0 {
 			silabs,pll-master;
 		};
 
-		clkout2 {
+		clkout@2 {
 			reg = <2>;
 			silabs,drive-strength = <8>;
 			silabs,multisynth-source = <1>;
-- 
2.42.0


