Return-Path: <devicetree+bounces-17298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EF87F1F0B
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 22:21:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 592E11C21522
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 21:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A62A38F99;
	Mon, 20 Nov 2023 21:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ri7ccVum"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCB33137
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:21:37 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40b27b498c3so1245945e9.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700515296; x=1701120096; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8SZvpwVvhHSYn6AVsfP8mg+sxtJjbt/EepCXw4mUJk4=;
        b=ri7ccVumztQ15WbdcOoix30xdhJ1cXwpBNRxl6gOxsDptHbVDWQ03b6gGo9ZMhj7Vd
         eSdynerOs/gvpYE9/0Hi4cDaBhTa3Xxr805huWcsUNqWjewF2+xVjFGpvlLyROL6upWO
         t3YidFYImjuIWvhYpVr0jMuainVQOlFjtcEUWgb1JZOlmmpEpyt01PA7dEpJAjk9NJg4
         HuI3rchuDtaaulhdJ/vznVXGvU37J4kGvvVDfIQXvT+MWRTdaztfQF5XOxtOq8JjRDRs
         qUt00u7hrxtJqI/OM33fiJoHRwTwj48wKb7bO/q80xEzmIMJZzqFg2ZktoGd6vEc3jyo
         5NXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700515296; x=1701120096;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8SZvpwVvhHSYn6AVsfP8mg+sxtJjbt/EepCXw4mUJk4=;
        b=oZ8/U6KUL139d5pQ66f3iHQ+K+BavJ2HYDc+5E07iqGVTwPjEoNMj2kHcn5qwt22dd
         GcrdTvFLA9eh7z4vfjwU6NB5hFvLIMNWAFlPTtrrEWsmyWyu6bQ6Hb/MzwA5PDL/dJul
         qWc/kuJBzg/0nAqxCbpFxzq9ZCW9lzwi2PVnzX5jz5byDRmez39BphV05YOPYl3dXJVv
         P3b7FhYifFMbLy6a1+VJWUkTmE4beXVFrsnHfgIJWBN4VkSFK+3XHq28NDsv+bUNMw+9
         I7xBUz9dixqXdnhYo8Ut+2Ldmxv0P/RiPDvbApfAfpjxrirajSzItgH8NXpinQWtz9wS
         APSg==
X-Gm-Message-State: AOJu0Yyc2HCzEMqH+kMnC/DkL4oTHIdBdvx33J8galcQIEKKRUXdBedr
	Nxi55Wxs2kyf7/IRbRjgv2Dvgw==
X-Google-Smtp-Source: AGHT+IHWybnx0ZdcwvMDBNOdpFDZ42C4c7PfCA39mS3Y8UEKdxKa8P+vhEV2G8kWfZN270RqzE6obg==
X-Received: by 2002:a05:600c:190c:b0:408:4160:150a with SMTP id j12-20020a05600c190c00b004084160150amr6535303wmq.33.1700515296392;
        Mon, 20 Nov 2023 13:21:36 -0800 (PST)
Received: from gpeter-l.lan (host-92-29-24-243.as13285.net. [92.29.24.243])
        by smtp.gmail.com with ESMTPSA id je14-20020a05600c1f8e00b0040596352951sm19518451wmb.5.2023.11.20.13.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 13:21:35 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	cw00.choi@samsung.com,
	alim.akhtar@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel-team@android.com,
	linux-serial@vger.kernel.org
Subject: [PATCH v4 19/19] MAINTAINERS: add entry for Google Tensor SoC
Date: Mon, 20 Nov 2023 21:20:37 +0000
Message-ID: <20231120212037.911774-20-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.rc1.413.gea7ed67945-goog
In-Reply-To: <20231120212037.911774-1-peter.griffin@linaro.org>
References: <20231120212037.911774-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add maintainers entry for the Google tensor SoC based
platforms.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e55173ae5e39..f5c84da7008e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9013,6 +9013,16 @@ S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/chrome-platform/linux.git
 F:	drivers/firmware/google/
 
+GOOGLE TENSOR SoC SUPPORT
+M:	Peter Griffin <peter.griffin@linaro.org>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+L:	linux-samsung-soc@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+F:	arch/arm64/boot/dts/exynos/google/
+F:	drivers/clk/samsung/clk-gs101.c
+F:	include/dt-bindings/clock/google,clk-gs101.h
+
 GPD POCKET FAN DRIVER
 M:	Hans de Goede <hdegoede@redhat.com>
 L:	platform-driver-x86@vger.kernel.org
-- 
2.43.0.rc1.413.gea7ed67945-goog


