Return-Path: <devicetree+bounces-7434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 701387C44D6
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 00:50:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91C741C20DFB
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 22:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CD55321BA;
	Tue, 10 Oct 2023 22:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PLxmRHcz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D5D315AB
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:50:26 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6A3019D
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:50:15 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40566f89f6eso63413525e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696978214; x=1697583014; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8meY4ujs++mlEMDCBMyLTigrPdJt2G7ihVPbm8apfRA=;
        b=PLxmRHczcbsNwPjUcY51WwgStUOpijp3hkmgJ9oekzZlnvdEkpKpDKz0rD0tQfifR2
         lt1YyFmq3zFGotTvk/9RiPpESiWSCqY+twuDEbc081Ganm5ofIFePO/AcW26e+CbJkuR
         eStSzuit3IpQYhDRmFgFY3qrfKLKDnCbTr9vfq3WIgVfXmNCLYvleBChMLgxCPYNDXqe
         xXYhSwlsusPzSHp5S7GEPQ0GJJLWEmCx/B7RWgc1RFGOm5tQFcq4cxeTpKiPPch5vIv8
         AZs2V9oV0CB8iViCFs+QzDKQg+/DYrwFPnc1LyVwiMTxe+v8YduMlOdnFbHLWCPYI83p
         ixVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696978214; x=1697583014;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8meY4ujs++mlEMDCBMyLTigrPdJt2G7ihVPbm8apfRA=;
        b=p66n48tSgaa9mXo2EQzNTFKLRWSimjgcWlqfUpswx6aZ9anK2Lyyys2JbldVpLFF6v
         38U9ybs1/4aM6eXVO7k/qggzfgKv+EhCqYmhckMl3Egw0td2C0Gyiy7LOg7ZhWNAK6fU
         olgzIr+Xv8KCTwXXuEJSOi5woVXiFneBkBTu4ndnMxRklt//UikvYSESRNdz9V2WUlf2
         CSv/unSppsYSngtRZeYofXRWeJrKBv2So6dU+5bNycfZfwhqxZf3RHbuKPYCRAhySM73
         +Yx2+HkaPpcbr/EtoFJimJ9n5pIMcD4UQ7gm1SdfgyLspQl7DJJgqfefmVYIk2qrGWJu
         AdGQ==
X-Gm-Message-State: AOJu0YzCRUiQvu/g/OsAUaNu6LMbH8B/mvzOUWJqzr5tQg6jEi/yhPvT
	pWtg9eqNIht7heeqnXTInafTvg==
X-Google-Smtp-Source: AGHT+IHVgNRfg9MJFj2fa8ZrT5Dql+nbZeDpWThiGHWgaXBzyVYZ59F732rF5W+8jo4YKOodKbt5oQ==
X-Received: by 2002:a5d:680d:0:b0:319:83e4:bbbf with SMTP id w13-20020a5d680d000000b0031983e4bbbfmr18331182wru.20.1696978214311;
        Tue, 10 Oct 2023 15:50:14 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id j13-20020adfe50d000000b003196b1bb528sm13689547wrm.64.2023.10.10.15.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 15:50:13 -0700 (PDT)
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
	cw00.choi@samsung.com
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
Subject: [PATCH v2 19/20] arm64: defconfig: Enable Google Tensor SoC
Date: Tue, 10 Oct 2023 23:49:27 +0100
Message-ID: <20231010224928.2296997-20-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.42.0.609.gbb76f46606-goog
In-Reply-To: <20231010224928.2296997-1-peter.griffin@linaro.org>
References: <20231010224928.2296997-1-peter.griffin@linaro.org>
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

Add the Google Tensor SoC to the arm64 defconfig

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5315789f4868..8a34603b1822 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -41,6 +41,7 @@ CONFIG_ARCH_BCMBCA=y
 CONFIG_ARCH_BRCMSTB=y
 CONFIG_ARCH_BERLIN=y
 CONFIG_ARCH_EXYNOS=y
+CONFIG_ARCH_GOOGLE_TENSOR=y
 CONFIG_ARCH_SPARX5=y
 CONFIG_ARCH_K3=y
 CONFIG_ARCH_LG1K=y
-- 
2.42.0.609.gbb76f46606-goog


