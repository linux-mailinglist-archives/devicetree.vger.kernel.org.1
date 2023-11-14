Return-Path: <devicetree+bounces-15572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E657EADBC
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 11:15:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 931A3B20AB7
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 10:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666E318C04;
	Tue, 14 Nov 2023 10:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="US393F4U"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6221D1865F
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 10:14:53 +0000 (UTC)
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7CBA1994
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:14:51 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-32d849cc152so3738276f8f.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699956890; x=1700561690; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GRDQG90whNGruPKHBuSb0fwlNjOLqK156tQl7yY601s=;
        b=US393F4UYxK7bCLxY/3lub1L5LkCGPWtNZjESc+RxTLquhIm5M3sAL5JZMxqzgXvvP
         lVrt4UiUErKJNkG+b/33FH8bBIvO+E6veDoI+z3Z9fmRWAndN8W7gGn0xkAt38RBhuDu
         lh7tNBnHmQo9yNNI3oPEimbi9bQMvoTwoJYqkd4QqHsWDJk0vHUNEeNpTxZf68lQNX/+
         ZArnRk5qJPI5lPoUjWueX4zZrQlhRuq0lAMvM8sjIhOu65PM8/6vnH7jt7wDblZ1YY/Y
         6L1bTVLSPGLXwDvOtnvqddOk5jKZugEmMb/A8VAgp7nRl0xqFRzVg4kt/p/6VQWSVmQO
         pOyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699956890; x=1700561690;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GRDQG90whNGruPKHBuSb0fwlNjOLqK156tQl7yY601s=;
        b=dc9csAQxOt61tjuK8CDMaEDBiQM1rvcVeVND9zuPct6RqBqPyXi1Qhs32JpF709y9b
         keynHPB71al93ld/ZY5cvQvh4tEdxoccsW8zphy++B8twrMFKaI0f+XW3OLFRO24XP+N
         o6vJdeqSdJHtP8bOf0+XmTXa024Yfr9BnmW3ZDufnCfGpHLp7MgsE36X/9Tl4Njucz0U
         9eNtioZ4fEDtnEYcVAHWKhWt4iK84MXtQuTRcdxp8MjmwNH6ZAT57Ihhz4+zb9iWSLaj
         qcTKdayHzYNZhYwmeswRCChvHqLAEtp0ltgWMmbt7QTifrad6R4p+/NxdFFcsBEZyotc
         TjqQ==
X-Gm-Message-State: AOJu0YwTXVJdPLMhIJcJMKNCTG72CdHBrEib+fsNS246Tw5bihOAxwpB
	NMgZbXxkhP435T/pBqcmBO04qw==
X-Google-Smtp-Source: AGHT+IHmsBNotjLNrikShfJJvLrq11qapucSps8g7MZLwa+tjWVJJCpV7UxEKCvxDB7DcdqG+/7Vxw==
X-Received: by 2002:a05:6000:146:b0:32d:8ac4:d23f with SMTP id r6-20020a056000014600b0032d8ac4d23fmr5433225wrx.29.1699956890236;
        Tue, 14 Nov 2023 02:14:50 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id n2-20020a5d4202000000b0032d886039easm7335585wrq.14.2023.11.14.02.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 02:14:49 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 14 Nov 2023 11:14:43 +0100
Subject: [PATCH 1/3] dt-bindings: clock: g12a-clkc: add MIPI ISP & CSI PHY
 clock ids
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231114-topic-amlogic-upstream-isp-clocks-v1-1-223958791501@linaro.org>
References: <20231114-topic-amlogic-upstream-isp-clocks-v1-0-223958791501@linaro.org>
In-Reply-To: <20231114-topic-amlogic-upstream-isp-clocks-v1-0-223958791501@linaro.org>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Daniel Scally <dan.scally@ideasonboard.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=831;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=tPtJJ4m8r/duCINFRVQmq1vnhsfEoL+l4IqBBJv4OFw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlU0iWrW3bJixBh86isYE3uIDZg0edHMEQSNsOH/tr
 2wGdcu+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZVNIlgAKCRB33NvayMhJ0anlD/
 wIbIB19tLkjnhKjUpQ6bxJq1f1aWQ1KhjVUIpQ7ASlwxyFig16JMn8WUBIGhvjnLWqfSzl35us30L5
 UHO40qf3vj4ZRTwjEeJ3+3ut4Ifd1l+a/DZa/r7sLT2nO4PYBqjdoGhLCEmjywyah0a4yTosnqOl49
 uFPChwRBc+gB8t4179Ew79CaOQVsDj5V0HJ9e6YGHfprV9Nkbcb2PvTMja93Yd/aaAl6xE0Bq+TYaT
 1ZiKTkPqmERwpBQTCQObCQXk5vnK8RejXUIJ3zkn/hk65BRFDilS056YsYn9N9XePaFdwfZEc6RJEo
 xj2TwDruehIwRanthgjnlc6k1+iDL3PMLe770Ghsr1Zd2A3o28TnSVIMVX3Oy5IOPQ/BYQ61Ykc0jW
 OcgcsST7i+BXnFDHh5VBlAd3wLNq0zxB6Y0kdrUJYDmu///jxUzvauhhu+IR9f8PYqxwZ5QaAA9aSh
 SMbslJdDNd24tNIiV49IVwkkaqmpZrYznVlkPnh6cizZUoQVK9LSF465viJBIEHSHSdDeg0WTDBuEa
 roceDDkzbDqH+9M8DhE+Js0UK0ZytEyXYARScxFh5buD5wrn2reCjg2camoSUyMElS2/0mUIo6DufP
 UwBTTgQ1X/YGXn2w8rdLdKWQ3qvxkd9LKURzAVJTXPmCYaFxEAv+b/snXHGw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add MIPI ISP & CSI PHY clock ids to G12A clock bindings header

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 include/dt-bindings/clock/g12a-clkc.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/dt-bindings/clock/g12a-clkc.h b/include/dt-bindings/clock/g12a-clkc.h
index 636d713f95ff..fd09819da2ec 100644
--- a/include/dt-bindings/clock/g12a-clkc.h
+++ b/include/dt-bindings/clock/g12a-clkc.h
@@ -281,5 +281,11 @@
 #define CLKID_MIPI_DSI_PXCLK			270
 #define CLKID_CTS_ENCL				271
 #define CLKID_CTS_ENCL_SEL			272
+#define CLKID_MIPI_ISP_DIV			273
+#define CLKID_MIPI_ISP_SEL			274
+#define CLKID_MIPI_ISP				275
+#define CLKID_MIPI_ISP_GATE			276
+#define CLKID_MIPI_ISP_CSI_PHY0			277
+#define CLKID_MIPI_ISP_CSI_PHY1			278
 
 #endif /* __G12A_CLKC_H */

-- 
2.34.1


