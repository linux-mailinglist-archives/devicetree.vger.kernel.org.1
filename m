Return-Path: <devicetree+bounces-5993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4CC7B9A1F
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 04:59:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2067A281C5F
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 02:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B21D915BB;
	Thu,  5 Oct 2023 02:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P8CD0Huk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1D67E
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 02:59:26 +0000 (UTC)
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20718192
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 19:59:24 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6c61dd1c229so94830a34.0
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 19:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696474763; x=1697079563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C71OcQAzBT261vJLaVS0ZLT3a6uuXRpHLmHkJwsnefw=;
        b=P8CD0HukQ+P5Uo9B8X121NvvGG8A+1PT8xI9Ob5+8tDdJ1mW69fs375RdP0e3MlFzu
         p8H2kuzDbPhyhcIgBO6wsL8SCE/1Bu9HFZexj6nv9jIxBqALBcSu+57SnSVPNBo4z6AR
         QnxJwhsQwl8zIV0dn6aZ/aYtU5lU/73VhWm2+RIFEgsKqWKtFbaeOzamvCHUNyytPamo
         MqWZCAqOC/NtP6wSTm81Eiakp73JcqO2F7br4dCJlZk7t/XO2fpBj5S55ZzDWo7BZlRE
         PwQK1TXWlArdbfCAmQa5AR07wwNq5UeQ4sV2etlQQ3UNpOeQpF15B0Uyg7QPbNhagzn1
         r3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696474763; x=1697079563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C71OcQAzBT261vJLaVS0ZLT3a6uuXRpHLmHkJwsnefw=;
        b=RWhizCuYkFfTDcN8YfxjkvDFgvVRuPwnUpQ5Vj5QhV7s8R0iMCSwrPI0XHyHhFR31B
         moEMJb0LSFyUCoKPkeJNjn1neuiQ93zxt1BtJXI31pxV+8gnEzyAFVUMquykHPfP1XTF
         WRfnH+0gIay/eQBvMwthag+z1kVmNeDFiQJuZaGbSxCqjBDt12WzETn44D33sIKDGwbe
         ZoFoivuPP9wGVkeE9PFJNY+odl1V1q4y3syQW8YW6HAbm90M4LhMxgFriMbVmPrQW+H3
         m4bRSTdYb4lEU/pOHQPzZ2pyenqulonzvjGzsQ+HD61YxeEzeFGEHTGvFAJaH2E6YGS9
         g83A==
X-Gm-Message-State: AOJu0Yx6CUWhSbnlnj/G7+JU0dlFztdNJ4VKC5JgWUqjMwobLy/iULYk
	TIIZfDTUnpmrqIzBtdoUKplk9g==
X-Google-Smtp-Source: AGHT+IFLE3a+7Vp/OvWCFi9446MZ5SR2US5WlY9g/kRa6BRPFqm4JfQA8hECuQL2KLgO1V/YM25PiQ==
X-Received: by 2002:a05:6830:4867:b0:6bf:500f:b570 with SMTP id dx7-20020a056830486700b006bf500fb570mr3559438otb.3.1696474763244;
        Wed, 04 Oct 2023 19:59:23 -0700 (PDT)
Received: from octopus.. ([2400:4050:c3e1:100:a16d:fce2:497:afb7])
        by smtp.gmail.com with ESMTPSA id b18-20020a637152000000b005782ad723casm269265pgn.27.2023.10.04.19.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 19:59:22 -0700 (PDT)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: sudeep.holla@arm.com,
	cristian.marussi@arm.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org
Cc: Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	AKASHI Takahiro <takahiro.akashi@linaro.org>
Subject: [RFC v2 1/5] pinctrl: define PIN_CONFIG_INPUT
Date: Thu,  5 Oct 2023 11:58:39 +0900
Message-Id: <20231005025843.508689-2-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005025843.508689-1-takahiro.akashi@linaro.org>
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This configuration is intended to be used to allow a pin controller based
GPIO driver to obtain a value at a gpio input pin.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
---
RFC v2 (Oct 5, 2023)
* improve a comment against @PIN_CONFIG_INPUT as per Linus
RFC(Oct 2, 2023)
---
 include/linux/pinctrl/pinconf-generic.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/pinctrl/pinconf-generic.h b/include/linux/pinctrl/pinconf-generic.h
index d74b7a4ea154..da0d80aa532d 100644
--- a/include/linux/pinctrl/pinconf-generic.h
+++ b/include/linux/pinctrl/pinconf-generic.h
@@ -67,6 +67,10 @@ struct pinctrl_map;
  *	passed as argument. The argument is in mA.
  * @PIN_CONFIG_DRIVE_STRENGTH_UA: the pin will sink or source at most the current
  *	passed as argument. The argument is in uA.
+ * @PIN_CONFIG_INPUT: This will obtain a value on an input pin. To put a line
+ *	into input mode, @PIN_CONFIG_INPUT_ENABLE must be used. Otherwise,
+ *	an error will be returned. The returned argument is 1 for logic high
+ *	and 0 for logic low.
  * @PIN_CONFIG_INPUT_DEBOUNCE: this will configure the pin to debounce mode,
  *	which means it will wait for signals to settle when reading inputs. The
  *	argument gives the debounce time in usecs. Setting the
@@ -128,6 +132,7 @@ enum pin_config_param {
 	PIN_CONFIG_DRIVE_PUSH_PULL,
 	PIN_CONFIG_DRIVE_STRENGTH,
 	PIN_CONFIG_DRIVE_STRENGTH_UA,
+	PIN_CONFIG_INPUT,
 	PIN_CONFIG_INPUT_DEBOUNCE,
 	PIN_CONFIG_INPUT_ENABLE,
 	PIN_CONFIG_INPUT_SCHMITT,
-- 
2.34.1


