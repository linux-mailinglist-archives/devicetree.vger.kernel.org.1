Return-Path: <devicetree+bounces-4996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3CA7B4AB5
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 04:17:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 950E828174D
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 02:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9063E650;
	Mon,  2 Oct 2023 02:17:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A0664D
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 02:17:21 +0000 (UTC)
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 764E3D9
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 19:17:20 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2773b10bd05so2679134a91.0
        for <devicetree@vger.kernel.org>; Sun, 01 Oct 2023 19:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696213040; x=1696817840; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OqXtc+pvir/IxuRnJD6IqOJ/WGP90gqy5QBVu45Fdzc=;
        b=lZn2pwFb8BqomhzWtAvwLT48pzE9S3E79uVffBJJ32dMYr5zTU3K6J7LgE0p//k8nE
         Tij7XdkHJYtaP1l63gQzHiCe3UL+fs54ED8T9/hwlEiScvNsPuFFkgpvpEuuWZOpywLi
         YCnmseyiK+uegvTLTO9Ak1vhaP2e8ZUE6FETm2LzusNlulcex3gPYoCNBw34R+vbsAYq
         PNfzCM65rOjpUd0ctCGQPWVD/QDSShlMvCEyPeq7nIOE0j54ojIcVBTU8qdqslyOPdj9
         NKZyq7J1fk0EU02bklhhN6nRgzxQanDWK1KP+3J/Bpn/qTGPjknYwsk6hifs2qRvsNPo
         G51w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696213040; x=1696817840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OqXtc+pvir/IxuRnJD6IqOJ/WGP90gqy5QBVu45Fdzc=;
        b=nyfFxW+WH6e2E9HztiHy7m2R7AbxQUA9jT3Cmnl3e8oHcOg3fsOscEHElGuPlTxAcj
         S3UU9XAyLzJPjjsXg8t1FmuMaoYNdEP1Hh0+PDBzO/ysedsm+/8jiOPropVwyFB2bAJp
         3+yZLDQ46u+b1bo/LRyTCRovkPVA+6wvKIWS9FceayzO6svGw1ITffUORT6jAk8M3uqr
         sgzrAYz01PJd6QLuowFPVSRYtxyaCNtgmZIxT4f/JmQWLr9Sd8ob+YRJLzg0iU9QSJFB
         dTzRdfcZ+55UtaNH7QeHi0NR+hx+kTWIdeVEA5Ht8Ih8CrRoTMg8SjpIJHSpmf91eEM5
         oIEA==
X-Gm-Message-State: AOJu0Yy8e44bUKPXYZ1KpnJhjJfgeJlKXuRWOyx4rhqE+0XKa2nGhzap
	I4mFw+cHQc+atWHBTVslMXcDbcI9QCiUxOyG4pwGdQ==
X-Google-Smtp-Source: AGHT+IEusTnW4378lO9AUwQdv9HFrR0OPNAAVojwLcl5rMvEgnFubpbvDWr1u456gCLJfr4DyaWHaA==
X-Received: by 2002:a17:90a:1383:b0:274:60c7:e15a with SMTP id i3-20020a17090a138300b0027460c7e15amr9153621pja.4.1696213039746;
        Sun, 01 Oct 2023 19:17:19 -0700 (PDT)
Received: from octopus.. ([2400:4050:c3e1:100:7ab1:199:d138:f054])
        by smtp.gmail.com with ESMTPSA id mg11-20020a17090b370b00b002609cadc56esm5278319pjb.11.2023.10.01.19.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 19:17:19 -0700 (PDT)
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
Subject: [RFC 1/4] pinctrl: define PIN_CONFIG_INPUT
Date: Mon,  2 Oct 2023 11:15:59 +0900
Message-Id: <20231002021602.260100-2-takahiro.akashi@linaro.org>
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
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This allows for enabling SCMI pinctrl based GPIO driver to obtain
an input gpio pin.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
---
 include/linux/pinctrl/pinconf-generic.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/pinctrl/pinconf-generic.h b/include/linux/pinctrl/pinconf-generic.h
index d74b7a4ea154..842b328ea504 100644
--- a/include/linux/pinctrl/pinconf-generic.h
+++ b/include/linux/pinctrl/pinconf-generic.h
@@ -67,6 +67,8 @@ struct pinctrl_map;
  *	passed as argument. The argument is in mA.
  * @PIN_CONFIG_DRIVE_STRENGTH_UA: the pin will sink or source at most the current
  *	passed as argument. The argument is in uA.
+ * @PIN_CONFIG_INPUT: This will obtain a value on an input pin. The returned
+ *	argument indicates the value.
  * @PIN_CONFIG_INPUT_DEBOUNCE: this will configure the pin to debounce mode,
  *	which means it will wait for signals to settle when reading inputs. The
  *	argument gives the debounce time in usecs. Setting the
@@ -128,6 +130,7 @@ enum pin_config_param {
 	PIN_CONFIG_DRIVE_PUSH_PULL,
 	PIN_CONFIG_DRIVE_STRENGTH,
 	PIN_CONFIG_DRIVE_STRENGTH_UA,
+	PIN_CONFIG_INPUT,
 	PIN_CONFIG_INPUT_DEBOUNCE,
 	PIN_CONFIG_INPUT_ENABLE,
 	PIN_CONFIG_INPUT_SCHMITT,
-- 
2.34.1


