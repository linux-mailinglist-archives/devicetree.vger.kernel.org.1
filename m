Return-Path: <devicetree+bounces-5994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 901CE7B9A20
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 04:59:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 457BE281C67
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 02:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3E9615CD;
	Thu,  5 Oct 2023 02:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XueE8YDI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118861106
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 02:59:28 +0000 (UTC)
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 939F5194
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 19:59:27 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3ae473c0bd6so76146b6e.0
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 19:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696474767; x=1697079567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TSbRKsYb8q8GitmB/U1RL+XJyPpceXOp7I/10Xz1sb8=;
        b=XueE8YDI+5wUzH/Y/c1ekq0JHsfG0iDJZ0DZKAYcl8g1xl0cXcnsOXRfnBYI5z+5Sp
         uF0woHMq1a2m8jg1QEBPTkidp0l3V1+YLRG2+beaqk85481HjmHmdleil1b1Lv9CB5yk
         YsuvkOClIFGfkf1921MjtShKipa4prN2W2nG+GHHnyDn/7TkB6trSsIL5iq70+GweTJC
         Qvu/yMW1TvG0Oe2qsAXjcPw/T8Yjx/sKhLJuGHrvsRXxDClu2FjNL65wzgb/7jknu+P+
         aXE0i4n55uHxxZ0p4BgDhenLVIowkX0VJphrfNg8z8rLfG0RW6GE9FmtviA1tQ4ttg4X
         UJAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696474767; x=1697079567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TSbRKsYb8q8GitmB/U1RL+XJyPpceXOp7I/10Xz1sb8=;
        b=lbaevan4tIyi/0ahUez5+idHjXToBSUg+6k3Zhr4tfwGpCmUCBU1Deu6ZzfPfWYSpe
         6LMrTzAvvnbv0PF8PZpEuOpPUHCiLt5xljHmtNJS0v5qB55CicER7mxbDj7120rkWtKA
         kxl4TToDza84vMSFROy4maE4T8V8IdbxQk67sjejnJ1BLyjJXLf7VOFfSEgVr19JAE8F
         5NZjb3zoBH8J44EVtZb4ozOVh1ukgjJhuKopjwKcNw1n9O0qfVvmgUECUuapf4nNQMYF
         i18vNi9I6iFYN/M0OEpRv+BSgp7TGwMhl9Qw0cszv6MsWnmJcfVEFlODUllKwUQhsj41
         JzGQ==
X-Gm-Message-State: AOJu0Yww5PWJ/NYbUNujG9Zw/zTlfbOmbsbk9AxqG8gF7DpBy/Ou3t8X
	4D/KW1MxHM3SQDjROQNcUmA5xg==
X-Google-Smtp-Source: AGHT+IEvgr4xZLoO3AM+An1x16yJUdYmGeTqCDtyfPw8q8eOIK+ezaH2/Gf3R2hl6ENX1z8p9dBrGw==
X-Received: by 2002:a05:6808:1a27:b0:3ae:5e6a:5693 with SMTP id bk39-20020a0568081a2700b003ae5e6a5693mr4930128oib.0.1696474766819;
        Wed, 04 Oct 2023 19:59:26 -0700 (PDT)
Received: from octopus.. ([2400:4050:c3e1:100:a16d:fce2:497:afb7])
        by smtp.gmail.com with ESMTPSA id b18-20020a637152000000b005782ad723casm269265pgn.27.2023.10.04.19.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 19:59:26 -0700 (PDT)
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
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	kernel test robot <lkp@intel.com>
Subject: [RFC v2 2/5] pinctrl: always export pin_config_get_for_pin()
Date: Thu,  5 Oct 2023 11:58:40 +0900
Message-Id: <20231005025843.508689-3-takahiro.akashi@linaro.org>
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
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This function will be used to implement a new pinctrl_gpio_get_config()
outside pinconf.c in a succeeding commit.
So make it always visible to avoid a kernel test bot error.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202310021320.gYfm1nLQ-lkp@intel.com/
---
RFC v2 (Oct 5, 2023)
* new
---
 drivers/pinctrl/pinconf.h | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinconf.h b/drivers/pinctrl/pinconf.h
index 694bfc9961fa..068089b199e4 100644
--- a/drivers/pinctrl/pinconf.h
+++ b/drivers/pinctrl/pinconf.h
@@ -31,13 +31,13 @@ int pinconf_apply_setting(const struct pinctrl_setting *setting);
 
 int pinconf_set_config(struct pinctrl_dev *pctldev, unsigned pin,
 		       unsigned long *configs, size_t nconfigs);
+int pin_config_get_for_pin(struct pinctrl_dev *pctldev, unsigned pin,
+			   unsigned long *config);
 
 /*
  * You will only be interested in these if you're using PINCONF
  * so don't supply any stubs for these.
  */
-int pin_config_get_for_pin(struct pinctrl_dev *pctldev, unsigned pin,
-			   unsigned long *config);
 int pin_config_group_get(const char *dev_name, const char *pin_group,
 			 unsigned long *config);
 
@@ -74,6 +74,12 @@ static inline int pinconf_set_config(struct pinctrl_dev *pctldev, unsigned pin,
 	return -ENOTSUPP;
 }
 
+static inline int pin_config_get_for_pin(struct pinctrl_dev *pctldev,
+					 unsigned pin, unsigned long *config)
+{
+	return -ENOTSUPP;
+}
+
 #endif
 
 #if defined(CONFIG_PINCONF) && defined(CONFIG_DEBUG_FS)
-- 
2.34.1


