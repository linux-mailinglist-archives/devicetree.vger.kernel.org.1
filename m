Return-Path: <devicetree+bounces-13063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AF77DC75F
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:34:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87CBEB20CCE
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 07:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 810A41095B;
	Tue, 31 Oct 2023 07:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JI+kM589"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD29510A00
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:34:30 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B06A2C1;
	Tue, 31 Oct 2023 00:34:28 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9be3b66f254so785970366b.3;
        Tue, 31 Oct 2023 00:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698737667; x=1699342467; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vaiRdQ1c+DDVs4Z20fjdvqfJxBU+ISFg2fzCunWfAwA=;
        b=JI+kM589L0PPkuhMRUeomEeRDB5sYzG74h+OOF0oPJuI1d6+cju5Gmke3lD04o4pdj
         Ke1d1fGI4Fehiymy/9M/r1OMQ47sNgbgJRbOD2ingZZljJVfwjyh7QV9YNidtIOHtSBs
         xiJCVxczGD6aN0X96tNcg9h9GeG7R2K63skldisf4wl50rwy5dlapHFrb1kQd40mIniT
         U1AfY3rQM5wyAX7Ww1rfir6q0/i3ujsCeuwDWSA52+PMSlGuRi/IzARyswGQjwhCS+Wb
         l+pRt6bobkqrrnTjg1bBz2O2C2PmwgLqVdWgBouAhk1JmHcfrlw5uYjSyaO1P1zV+TSW
         lD/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698737667; x=1699342467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vaiRdQ1c+DDVs4Z20fjdvqfJxBU+ISFg2fzCunWfAwA=;
        b=jtMl5fGgdBymVbLzJq+8dsRmj4LpwVbB63x21UzTjftd7Vw33GZ0umAfB9gn2pGsYi
         JDY/SP4Y/R7cPCn+R7rZL0fF7gGUcGLHcySFdRsNRa+UIk5e0/B60MJ0kP7x2cQtAZvJ
         K+Jyo8ulophAuxzxr0/ajCkAqpOjWFC/CMuPn2ick31LGIYxOq6GePSC28ilfSydmx+M
         8Crpyy2bOA8jTmc1f5/FI3kdNTHIA/9u8anbsN0frglsCDG/9cGm0oLGTeI4/agUyLTw
         VKpFcKCefIg8Bmy7DbKriygD/YzstYEwS4KOhMDdB0RZmCnXjs/HCR8cAOv0W6zjNotB
         YDog==
X-Gm-Message-State: AOJu0Ywllbm3mtRGHCS5muSl6VRha7zoOMAc7FDAhGVJ9yrbAg0NqBVA
	aXki1q/G9Jg+HlNUpJTkzKg=
X-Google-Smtp-Source: AGHT+IFRnJwlt4jfCJeK/JlYyYRhoZ7FYb/4ga7Vff4anXgGHDAddPNvbI9KlDs0XYs+4Z0fQL6qug==
X-Received: by 2002:a17:906:57c4:b0:9d3:6040:cf05 with SMTP id u4-20020a17090657c400b009d36040cf05mr5078257ejr.31.1698737666962;
        Tue, 31 Oct 2023 00:34:26 -0700 (PDT)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation.station (net-188-217-59-109.cust.vodafonedsl.it. [188.217.59.109])
        by smtp.gmail.com with ESMTPSA id jj13-20020a170907984d00b009d51f9d54edsm486845ejc.126.2023.10.31.00.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 00:34:26 -0700 (PDT)
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: 
Cc: laurent.pinchart@ideasonboard.com,
	martin.hecht@avnet.eu,
	michael.roeder@avnet.eu,
	linuxfancy@googlegroups.com,
	mhecht73@gmail.com,
	sakari.ailus@linux.intel.com,
	Tommaso Merciai <tomm.merciai@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sre@kernel.org>,
	Yang Xiwen <forbidden405@foxmail.com>,
	Icenowy Zheng <uwu@icenowy.me>,
	Hans de Goede <hdegoede@redhat.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Gerald Loacker <gerald.loacker@wolfvision.net>,
	Nicholas Roth <nicholas@rothemail.net>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Daniel Scally <dan.scally@ideasonboard.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Subject: [PATCH v11 1/3] dt-bindings: vendor-prefixes: Add prefix alliedvision
Date: Tue, 31 Oct 2023 08:34:12 +0100
Message-Id: <20231031073417.556053-2-tomm.merciai@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231031073417.556053-1-tomm.merciai@gmail.com>
References: <20231031073417.556053-1-tomm.merciai@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a vendor prefix entry for Allied Vision Technologies GmbH
(https://www.alliedvision.com)

Signed-off-by: Tommaso Merciai <tomm.merciai@gmail.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes since v3:
 - Collected tags from LPinchart, CDooley, KKozlowski

Changes since v7:
 - Fix company legal entity from Inc. to GmbH

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..4763fbfcd936 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -77,6 +77,8 @@ patternProperties:
     description: ALFA Network Inc.
   "^allegro,.*":
     description: Allegro DVT
+  "^alliedvision,.*":
+    description: Allied Vision Technologies GmbH
   "^allo,.*":
     description: Allo.com
   "^allwinner,.*":
-- 
2.34.1


