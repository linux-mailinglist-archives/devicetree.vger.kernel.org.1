Return-Path: <devicetree+bounces-3727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F127AFF51
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:02:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id E05EE1C208F4
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 793B01F60B;
	Wed, 27 Sep 2023 09:02:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E941C684
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:02:22 +0000 (UTC)
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76A4EA3;
	Wed, 27 Sep 2023 02:02:20 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1dceaa7aeffso3555726fac.0;
        Wed, 27 Sep 2023 02:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695805340; x=1696410140; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c3kjAZv4Q1aFQqlWexZgG0kQvPcOdl7qnOTAp0XEAeM=;
        b=HlUKmPj8pOHAt2QJ6OQDl1Z6Z61ADUTUkDM6wM3usLIXzfvMV2TdEb2EU7cb9bH3Mw
         /sHK+6RcAdn9oaKMYrWAlh+oie2z2gmKX79GytZ40K4SWczTj33cnYPd4WDCeYqgiito
         pZYnoKVb2UZzUu1+7kfAP8lLO32QtIPuYmZAQlJltbheHhWDGu90cqVbJXW+XDPPuw1Q
         5uv0vRjDcnoLEAiMq9SQnYx09bjoCHJ85LRIwc3bF3s9rLswTBtZIdlVJdf9yAmKb65U
         ZbVHShquBvyCyyQj5t9XyUYmPpS2nSde/UEP7EyJGpi6z10dLff9jv9hrjzn+wyF8S7h
         PddA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695805340; x=1696410140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c3kjAZv4Q1aFQqlWexZgG0kQvPcOdl7qnOTAp0XEAeM=;
        b=SlK++2nVucpT13aD+uqs8jvlGDNSlKJOK8b+qJLEFvtTO5yXEJefg2Ls2qo3RF7Jmk
         Zv8ViJcJM1I883orXqGdS3lxQEB74URxOkm41QYLleJnQqsYX8j8HQ1jNYlU9xVTxS7p
         C80112Kjm8NlFQFOais2I3Iv4fOFI1fOwBEsILoD8PoYhriGdD1SAGF2GdAqdfwWUOyu
         sX3kpTERs4S+bApKCcNxDRisDchDB2QMjrZaqPV/AK8Ie1pOesRqqftOCU3JIBKK2CGh
         rwRljj69PoeDlXNr7SPrCziHgh/ns6BSIDiLj1fwibrZCHb50Nc4QYAcmucEI1ZLG3em
         UHzg==
X-Gm-Message-State: AOJu0YzH0dT+6TxdiPxRu+Fe9C1YoF/QonRB/+kj9gYor+BdJb6x2aE+
	E3yKDNnYbAd9CCbLr9Uo6uY=
X-Google-Smtp-Source: AGHT+IFIHuBhbshT91AHG9ueKxUgL4LBQPr6uM2bI0g42q2bzbUMbNX50Tb0CUCbgMfELjQ5f7IaJg==
X-Received: by 2002:a05:6871:154:b0:1c5:1269:9e2c with SMTP id z20-20020a056871015400b001c512699e2cmr3560933oab.9.1695805339718;
        Wed, 27 Sep 2023 02:02:19 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id v3-20020a056870e28300b001dcde628a6fsm1963655oad.42.2023.09.27.02.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 02:02:19 -0700 (PDT)
From: Chen Wang <unicornxw@gmail.com>
To: aou@eecs.berkeley.edu,
	chao.wei@sophgo.com,
	conor@kernel.org,
	devicetree@vger.kernel.org,
	guoren@kernel.org,
	jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com,
	apatel@ventanamicro.com
Cc: Chen Wang <unicornxw@gmail.com>,
	Chen Wang <wangchen20@iscas.ac.cn>
Subject: [PATCH v3 08/11] MAINTAINERS: add two files to sophgo devicetrees entry
Date: Wed, 27 Sep 2023 17:02:13 +0800
Message-Id: <0b86b34672bac27be09c315485aebd33651e1b20.1695804418.git.unicornxw@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1695804418.git.unicornxw@gmail.com>
References: <cover.1695804418.git.unicornxw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add two dt-binding files which will be maintained by SOPHGO DEVICETREES.

Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
Signed-off-by: Chen Wang <unicornxw@gmail.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9114a14ce991..3fed8e3d273f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20067,7 +20067,9 @@ SOPHGO DEVICETREES
 M:	Chao Wei <chao.wei@sophgo.com>
 M:	Chen Wang <unicornxw@gmail.com>
 S:	Maintained
+F:	Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-clint-mswi.yaml
 F:	Documentation/devicetree/bindings/riscv/sophgo.yaml
+F:	Documentation/devicetree/bindings/timer/sophgo,sg2042-clint-mtimer.yaml
 
 SOUND
 M:	Jaroslav Kysela <perex@perex.cz>
-- 
2.25.1


