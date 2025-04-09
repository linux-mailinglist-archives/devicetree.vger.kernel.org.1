Return-Path: <devicetree+bounces-165017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B08A83229
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:38:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 742ED17D6F9
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C1F121A457;
	Wed,  9 Apr 2025 20:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MhxjR8Z5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC5B2144A0
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231063; cv=none; b=R0Z5wb7HFmin1Ji6Cikcpm6hKex/a0xjPkww5McG4K8R+ZVSs28wMxVJXmWMuRFjumj3Veps0r+UIeeQWUr/UK69DloVMkK5bjv+q5fAk7+836aED3QI5iFEA7xC9pwO+KHgoBb6YNaI4C6ABkA4x7pGyzu+T2el9NasQOm1qYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231063; c=relaxed/simple;
	bh=FRYJdumBvt44h1y8yqRI1giZ9C7zU9ZUTiI8NmVVxD4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SZ8DNGymBOZkvbSGIU0zzYPTjCdA/5ws7LKDQXQ3qiNoiuJDf/h6wMEcZMqLG2jV4ttkkscROXyYL2MSk5iS0QanHT7ONYzTFk4kpdMVVFMhcFg5ePuN44CKDaGdrBJg1wHYRunjtg03lOJx2KYTYkd+UL6W9Pm6aN5xYBDNv+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MhxjR8Z5; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-abf3d64849dso23620866b.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231055; x=1744835855; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GR6tf5HnTdYjHHauL4mMQJSHDwxOZy1mNmBZNfCuxOo=;
        b=MhxjR8Z5/q06//YJ3KB2/hrmLfVQ7FQZQ63meWRU/dkJx1GKccFdGqKQiEZ9C5vw/w
         zxvxvxoh1+jdq91kyAnHGD6d+v4F+lB6qQcQfMTmh9Pk302YCzeT3ecIp/F8xomgx9wc
         qVS4XClxCb5KTaN9PaYECKRoReHlMSuP9//6TfEg/5b5bnUUuyadB6PtJiwARWGOrYGb
         rJu3oEU+2YpZ7fvrY+wyv4TMmFfFQz0/DlXEHpzu/CQOOGqG4sVlkMB+JkNKcuZ1apOL
         CtNrTFkuD1ifVjfIKkKBzzDVLduO6diqxbqn5fPPXeIy6Gz6hUkPUocKfimZwSL4+Psm
         3yqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231055; x=1744835855;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GR6tf5HnTdYjHHauL4mMQJSHDwxOZy1mNmBZNfCuxOo=;
        b=sSE+68KwyoEXXDb1HL/IINY9WY4HvXuuwIeX7Vje6Ap7hc6YnPgeBgyCVp+5YWkzyW
         NdeAUR3I3k2Oq0dCTJqSNOOdnBtMqv4CmNR7jqAGql68umFrX4+uI/JdSspzTRjXS1A1
         mmB9FglZ8DJ8IXYVoliS3kOVUK0NnQ6ejKIigChK7fcghmSSGbca2L/hWQrCREtvfR4g
         agowubut+jto4cTQUrLlvTdujtvNSeDqeHJ7inDCcQ6/xEpUaIpnL5Qa1jBvAhqzeT1k
         OihFmSzZtoYmY+QchNXG7WMb0BG2h9byGx9tSLAGL9W3JUtEQsNqvUdjzEF9Xpzq+xll
         xu1Q==
X-Forwarded-Encrypted: i=1; AJvYcCV0pjJJwkAsykhESfCBYiDVUxUoRhaJrweMi8LQAS6sulW9DkXwfUuwUGBTR/zl9IGgVsMoCyxye45j@vger.kernel.org
X-Gm-Message-State: AOJu0YzkW9q3YYuk9BCBXkYmdTLva6hLL2My6sN+QmDRJnRaAMWns8JR
	wCnmBXDh82BoFVYnMj4DyPzKD/oCgIB/V1mw9nm3wzWXwoHVHvh+zuBtyByHf2o=
X-Gm-Gg: ASbGncvVSROwP0bIyrT0Q52KGmhbtnX/J0lgbsystdxnp5RexcUYqO8rzs0nwHh9Dr0
	R2MGe+yoAdiCE8Grv4Ln7VxW4JzW6E5Gq/wdYb5wv4Ay3U3mW+KWrRjdIZFNLW9yjAF3833uVwZ
	+eJEaPsUdEa2UidfWQyg62dYjclaAtbjfMQD88yxgHivxewvYgUyiE3yYK0b7SXylsdiPdff0HV
	vIZcDlg7e38oSDx8iiRln/BNCnureXxzEIpNfPxtIwwaWfHJRf1Kd6HearYAlM35lRsVs5O7G2N
	3ar9YqAp4ufTTku+MTu3nJoBA8Oi9IfrRLTWgMul4AZzjSK4hOOz4hayBCVHhoOJZJBXnoLBq+A
	C6CkQNpMd5Kt6Qfp2tcKo0RbDeAI=
X-Google-Smtp-Source: AGHT+IEbXN3PVp3UzNwZ49hOGkb6oYJv8K6BHlu1sHCYFqZcbKKwZNoXvZRHV9zk9VQwcQRJgvnNLQ==
X-Received: by 2002:a17:907:d05:b0:ac3:f1de:a49a with SMTP id a640c23a62f3a-acabd4da153mr7965466b.52.1744231055177;
        Wed, 09 Apr 2025 13:37:35 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:34 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:32 +0100
Subject: [PATCH v4 11/32] mfd: sec-common: Fix multiple trivial whitespace
 issues
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-11-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Rectify a couple of alignment problems reported by Checkpatch.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v4:
- update commit message (Lee)

v2:
- make new alignment more readable (Krzysztof)
---
 drivers/mfd/sec-common.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index 782dec1956a5fd7bf0dbb2159f9d222ad3fea942..1a6f14dda825adeaeee1a677459c7399c144d553 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -149,9 +149,9 @@ sec_pmic_parse_dt_pdata(struct device *dev)
 		return ERR_PTR(-ENOMEM);
 
 	pd->manual_poweroff = of_property_read_bool(dev->of_node,
-						"samsung,s2mps11-acokb-ground");
+						    "samsung,s2mps11-acokb-ground");
 	pd->disable_wrstbi = of_property_read_bool(dev->of_node,
-						"samsung,s2mps11-wrstbi-ground");
+						   "samsung,s2mps11-wrstbi-ground");
 	return pd;
 }
 
@@ -264,8 +264,8 @@ void sec_pmic_shutdown(struct device *dev)
 		 * ignore the rest.
 		 */
 		dev_warn(sec_pmic->dev,
-			"Unsupported device %lu for manual power off\n",
-			sec_pmic->device_type);
+			 "Unsupported device %lu for manual power off\n",
+			 sec_pmic->device_type);
 		return;
 	}
 

-- 
2.49.0.604.gff1f9ca942-goog


