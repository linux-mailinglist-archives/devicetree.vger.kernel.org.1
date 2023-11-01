Return-Path: <devicetree+bounces-13414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 518937DE0B7
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 13:22:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01A1C1F215AB
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 12:22:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9F9911CB2;
	Wed,  1 Nov 2023 12:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IsuqSlVn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0DB3D74
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 12:22:19 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B22A0DC;
	Wed,  1 Nov 2023 05:22:14 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-32f7c80ab33so2631979f8f.0;
        Wed, 01 Nov 2023 05:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698841333; x=1699446133; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vaiRdQ1c+DDVs4Z20fjdvqfJxBU+ISFg2fzCunWfAwA=;
        b=IsuqSlVnx6vaCfzFH+bBpTjezoe9Zl3nVe5FTa8vYfC3fN+I7Uu5/YAZB6dvzEr9Ba
         sApdB5XDre8wPF5n2TdGE1m2D81o5lU3oRrYwRsZKlGFETWmngjTdjMctuBKZAEtoLOL
         ZbHTI1QAazU6kx8bhVO2iLREPemifiAn9Wp1dBfO6v3WIxQ8kOVXcRf9d07w+VNERKYb
         bQITypqFa+j5yeF8ooauZdSJfpTdH2eWrbtC01BgodtE84ew/eTC1LZJAGCE/LfRuQ+N
         9xXnmkk0dSvJsv8l36CzLsIFzntCRbrmBhq/fpJRrLAAv+j1U15gWhW4J1VONp3SVs4m
         NxfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698841333; x=1699446133;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vaiRdQ1c+DDVs4Z20fjdvqfJxBU+ISFg2fzCunWfAwA=;
        b=usMTF9HOI1U4heH+y9cElVIsLQ5fswXkG6SHRFy7nq/NYlfHmXb/Qz1RVUpBN8ZVZ4
         4DfNZ7bFSirKAEBJagot+xcoC4Db1Sq+YrTP4EWjVuJrKtdTzoqaxvjFH/FRNIuPpsI2
         4nILCextgdhk9fNBBy2D2IpGeIMSZFjWUjScocftl94OkawP02+lgkopRQQEvWiGXhRA
         FNSVbCQYAH5sw3tBFDkkLSnJEdfa1mMXNZYT5uNI0ZGvKctle+RxtMqyKQFl83K3rhNQ
         V6ZT9rpKel+9gLbuktUxxKXDRZcC/AHIM9Rn6zWkfKtCvGwNjz+wxZBRda9R02/T3P9c
         bK8A==
X-Gm-Message-State: AOJu0YzjqztOxaMt2RONOQ9rMeJ1D7ctcyKHZGUf3aCcWI3e99mh9YlI
	vA5MrOt3PhhA4ErQ7WykRWs=
X-Google-Smtp-Source: AGHT+IFL0xaJ2LZC7bKqwYTxc3xJnQeVK+pV2ydwMPpZAhEcYAkwmqQreLHu3/bVl5tfowoyUVJmCA==
X-Received: by 2002:adf:d1ca:0:b0:32f:7e24:418 with SMTP id b10-20020adfd1ca000000b0032f7e240418mr9825698wrd.10.1698841332944;
        Wed, 01 Nov 2023 05:22:12 -0700 (PDT)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation.station (net-188-217-59-109.cust.vodafonedsl.it. [188.217.59.109])
        by smtp.gmail.com with ESMTPSA id i17-20020a5d6311000000b0031ad5fb5a0fsm4024582wru.58.2023.11.01.05.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 05:22:12 -0700 (PDT)
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: 
Cc: laurent.pinchart@ideasonboard.com,
	martin.hecht@avnet.eu,
	michael.roeder@avnet.eu,
	linuxfancy@googlegroups.com,
	mhecht73@gmail.com,
	sakari.ailus@linux.intel.com,
	christophe.jaillet@wanadoo.fr,
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
	Yang Xiwen <forbidden405@foxmail.com>,
	Icenowy Zheng <uwu@icenowy.me>,
	Hans de Goede <hdegoede@redhat.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Gerald Loacker <gerald.loacker@wolfvision.net>,
	Nicholas Roth <nicholas@rothemail.net>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Daniel Scally <dan.scally@ideasonboard.com>,
	Bingbu Cao <bingbu.cao@intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Subject: [PATCH v12 1/3] dt-bindings: vendor-prefixes: Add prefix alliedvision
Date: Wed,  1 Nov 2023 13:21:55 +0100
Message-Id: <20231101122200.1203499-2-tomm.merciai@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231101122200.1203499-1-tomm.merciai@gmail.com>
References: <20231101122200.1203499-1-tomm.merciai@gmail.com>
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


