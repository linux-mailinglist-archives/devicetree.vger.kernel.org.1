Return-Path: <devicetree+bounces-4997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F15C27B4ABE
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 04:17:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id A8815B20957
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 02:17:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5281B64D;
	Mon,  2 Oct 2023 02:17:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1EA39E
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 02:17:26 +0000 (UTC)
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF47BEE
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 19:17:23 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6bf106fb6a0so2154852a34.0
        for <devicetree@vger.kernel.org>; Sun, 01 Oct 2023 19:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696213043; x=1696817843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BpQqEZJbjzE/OtRVWr6AW4/d2IDgozzxIJunGcQEruc=;
        b=FBc3uiB0ZFl5MKFAV3mf1XCLGPD4SjGj561kYgRwd8N0xmKKNKgRdM4R1lIxpkFGhc
         lks/PZTqhXYinMocs+JzcKstMghxAecK5UaeGpaWM9HKWz88lwgOjk1fNlXKDDAYmOWC
         B2Mo5Fe65QZtJNG7it1dYnNn0pnE+ANDpyrZgs4uF+e5JQ78jjv9ewRHpudhkF4n1t8p
         AU1QGuFPQrxZVZ+1ZkCuCv+wGnVoNxcK5rwV1I79EeU4nw9wRtjSaC8WZbbh4tjoUWJ0
         h/zRhpNoWiNO1b6e82+IXYsM9lvjajIg7/95Ha+SnBerx6jFsNkG5+Hz2qQ6uSzDdAeC
         mGdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696213043; x=1696817843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BpQqEZJbjzE/OtRVWr6AW4/d2IDgozzxIJunGcQEruc=;
        b=pvQRJOm8T/j87skGe7oWvijSl5ftv1KO3lcujXwFbG57nUeSMq8zRExvjfAjy4u/mf
         pSjVzLYKwsLJV5m/nVbKBNjcCDVEzUZaH+GsgVdfOhpn972hz4TDbAAn2b9rjd964zuo
         oxajR420YhDfg+3atcefXF5evzKSPQmdtkbc8pJATZIxC+qObPyLmH6mtUeEglPiezen
         OBHCd2fwxkxNsWgPXLeemmXIKJ/9IBbMPLnIZrfs54WtAqWppOHuvP3m9W45zFHqnst/
         NO3gOzkglvhmDsluq4f4aSa3VTajU0eoV6oS1DgMLhTuR6QvstUThGrpirNrRGjFjXiQ
         jV1Q==
X-Gm-Message-State: AOJu0YysqM/EFUjNa1kyca4k5DEfQxpMZ8CiZs13hP+xSLJ9pBB60p9G
	NlwE3fTliG3s6mkMLY/lr+gIZQ==
X-Google-Smtp-Source: AGHT+IF9a5sDpJduGBa9qTDU8td8zTYfrA9e7KFY0KVMdTtzUgrxfXt6AqoHwiWtGvtE6xmSHQMtnQ==
X-Received: by 2002:a05:6808:3613:b0:3ae:108d:acee with SMTP id ct19-20020a056808361300b003ae108daceemr9410319oib.1.1696213042996;
        Sun, 01 Oct 2023 19:17:22 -0700 (PDT)
Received: from octopus.. ([2400:4050:c3e1:100:7ab1:199:d138:f054])
        by smtp.gmail.com with ESMTPSA id mg11-20020a17090b370b00b002609cadc56esm5278319pjb.11.2023.10.01.19.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 19:17:22 -0700 (PDT)
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
Subject: [RFC 2/4] pinctrl: add pinctrl_gpio_get_config()
Date: Mon,  2 Oct 2023 11:16:00 +0900
Message-Id: <20231002021602.260100-3-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231002021602.260100-1-takahiro.akashi@linaro.org>
References: <20231002021602.260100-1-takahiro.akashi@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This is a counterpart of pinctrl_gpio_set_config(), which will initially
be used to implement gpio_get interface in SCMI pinctrl based GPIO driver.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
---
 drivers/pinctrl/core.c           | 19 +++++++++++++++++++
 include/linux/pinctrl/consumer.h |  8 ++++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/pinctrl/core.c b/drivers/pinctrl/core.c
index e9dc9638120a..2f9c2efdfe0e 100644
--- a/drivers/pinctrl/core.c
+++ b/drivers/pinctrl/core.c
@@ -926,6 +926,25 @@ int pinctrl_gpio_set_config(unsigned gpio, unsigned long config)
 }
 EXPORT_SYMBOL_GPL(pinctrl_gpio_set_config);
 
+int pinctrl_gpio_get_config(unsigned int gpio, unsigned long *config)
+{
+	struct pinctrl_gpio_range *range;
+	struct pinctrl_dev *pctldev;
+	int ret, pin;
+
+	ret = pinctrl_get_device_gpio_range(gpio, &pctldev, &range);
+	if (ret)
+		return ret;
+
+	mutex_lock(&pctldev->mutex);
+	pin = gpio_to_pin(range, gpio);
+	ret = pin_config_get_for_pin(pctldev, pin, config);
+	mutex_unlock(&pctldev->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(pinctrl_gpio_get_config);
+
 static struct pinctrl_state *find_state(struct pinctrl *p,
 					const char *name)
 {
diff --git a/include/linux/pinctrl/consumer.h b/include/linux/pinctrl/consumer.h
index 4729d54e8995..852fac97a79b 100644
--- a/include/linux/pinctrl/consumer.h
+++ b/include/linux/pinctrl/consumer.h
@@ -31,6 +31,8 @@ extern void pinctrl_gpio_free(unsigned gpio);
 extern int pinctrl_gpio_direction_input(unsigned gpio);
 extern int pinctrl_gpio_direction_output(unsigned gpio);
 extern int pinctrl_gpio_set_config(unsigned gpio, unsigned long config);
+extern int pinctrl_gpio_get_config(unsigned int gpio,
+				   unsigned long *config);
 
 extern struct pinctrl * __must_check pinctrl_get(struct device *dev);
 extern void pinctrl_put(struct pinctrl *p);
@@ -92,6 +94,12 @@ static inline int pinctrl_gpio_set_config(unsigned gpio, unsigned long config)
 	return 0;
 }
 
+static inline int pinctrl_gpio_get_config(unsigned int gpio,
+					  unsigned long *config)
+{
+	return 0;
+}
+
 static inline struct pinctrl * __must_check pinctrl_get(struct device *dev)
 {
 	return NULL;
-- 
2.34.1


