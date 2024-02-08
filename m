Return-Path: <devicetree+bounces-39757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E9584E10D
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 13:46:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3313F28B7BE
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 12:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3920D7CF19;
	Thu,  8 Feb 2024 12:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jAY6oI03"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B70763F0
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 12:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707396251; cv=none; b=JjQbJWjnJdPsqIwPH6HwEZX5b9xux4c6PS9MqIdh/HoYiboT2Xt7zLJN7r74iuIUst8LwoCBPr4MyHekzUkoR57kr/04iO/V3grQg87H2f/eH0AlVSjD8wLEpFX9t1Yno+ihct7FmHFoiZfuoz/Pcpsz3LhfUycjbiTfeEp1Pj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707396251; c=relaxed/simple;
	bh=jsEAwZpGbEtnH+dB5wfZ/jH8rZrebmqfyuwUssFknsI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=J0JhWlrND6D/Z9vFBmVghWp5L4rr8BZC26Tt5RmJtC+PbwKIe7cSRD/mJqX5WEzICwjF+/ZCLVJgAkrQ65iJgA5bloC5wg9luGGUFCc8MFo06/KSB2Jfd9aD7IJcCPuEOv1ZwrLgcRaay1Paq1iGUVfTnQGtEgrClNp0eLGqcwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jAY6oI03; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-511234430a4so3612265e87.3
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 04:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707396247; x=1708001047; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J9rrULVdpnnvZm24Vgw0eJNuzWphx5IveQzgYYWNlYM=;
        b=jAY6oI03GtZ3pUrujs7mt/ntJLkv8olUWPMMgDrO99Of7Hjidv5hprH0DMmo4A9jek
         CxsXa4j6qSUHRQYvYAgV8I2FOx1Ai3KTi4xs609JX+UMbBzdfypm0WfHD7zghXmps+Ju
         a1W6w81ExBUKrsFZjkDVE2puhTeBwq9f9pSQfMhDVWZEG1ykxVk5ZSuuoq4TXHc21HFf
         nDVe1k/nvsJyR+IFwA9iNAL5Er922BZsAcrx5dSwHxBcfctfIlq49EfJ4kqyip9hflnQ
         pAL6JY1bTWhrmaXN1DpITId7Ria9L9sY9O9N70tl6NZ3uvRrgZbcmTy7CQflfhZj4CQP
         HFig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707396247; x=1708001047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J9rrULVdpnnvZm24Vgw0eJNuzWphx5IveQzgYYWNlYM=;
        b=pDeblgYrE9Z7HO+rW7eQXPfvg5ySyq4pYPsVmj8B4AL8bg5lMmbVm7Q4LE3to59okO
         hltBQl4L0TFtOEnb1TbFRGLKLRPfas8/RSyDO6G8f3RnbrpTCsHbLu0bda/AqknlBXlN
         ge2oZ/UhFGQPze1/mjf00Y3qs3ApE1XdSDXOnSjijBM+AWHUNij0DAXaMQAIawH0iLId
         eU9tnaHpIEnRn0ivSL3APIa/qnQRSdXniR07DOjj36t4I29S6TwUBcfk97Gvg6XuWhFZ
         lqezW7ZbODKYXoo2Dp5kB5bXoPGAme7JF3g5ZeH1CsjmK9hE7vkSCSZEshBhGWEuELck
         k3HA==
X-Forwarded-Encrypted: i=1; AJvYcCUk6mTS67MUTrEog5Ng4VDTtTfMyB9zLU97Ha9j2HQKI0EgmhK8uB0Hhh1sKgRxifSyGNySM04CegzylClECTzZjWxYLY3xcu4GVg==
X-Gm-Message-State: AOJu0Yxnsc/kZHnIGpyxmrHykTFjkCSr/jCOKeUR5PYELzSP9MeidamZ
	LGOmSwbeHXqyo3Ds/3sDN1ZJEjC6REbwXwB9RrrqMrwWmCHyP198C4XGfjj/jVE=
X-Google-Smtp-Source: AGHT+IHTP0EqaKFSdMcyQ2EEn71mY7/GpsEAnwqguVr68auY9buQDr4K1fr0kpgbPg1hLGzSvwScYQ==
X-Received: by 2002:a05:6512:49d:b0:511:5411:1144 with SMTP id v29-20020a056512049d00b0051154111144mr5793843lfq.14.1707396247452;
        Thu, 08 Feb 2024 04:44:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVfsZjnA6YcSltAzZd86m1FK2DKEZr1LDoGM47sY1eiF9wuubUKEdk+1eFzNL/2HHTcTe3JXKdmAHK/3JE34NuRVc6KCS5H/vcbodd6GhVQh1YPONvox85rjqMr4XlpfK7AT9Wfhvid+wdklFjPxlAR2wimD1qM5SBQClv2HFFb/oCwLKxYWivsgfwZ1ixTnw/VaXgiEStvHIW6TqvMoRV3HA1VrcOazXzb/E8sStsDeTP8fSwGCjNK27E4pFqO22mYiQhXb7jt6AsvT727A+t5eXNdSIyH8E2zSjNBWxCpXcM/KZDWqS4rLVirqNO9e1LuwUDqexmbthq6PsRaR8MhZVCYTQS9BPSs3Am7uO/jNL3Ke9U4OlterQU33aW8HWqdKbB9NU+kPjY4khDSJ0hS3noE44+jnza98r+N/WKyQgvSTlZ+zuIjvhujxOspKCzrrYbAhCGO3JlhSESVtN9e+SvzJJ0JTJsMe6r2m8O4LeAo3AoLOAGeh9F9JVnEX69p1NZtB6bbL7qjgAZviOkTvKTVHQL4tac5CuAqyeB83pkxnlS8unT6T48Nf/O05Ec=
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.45])
        by smtp.gmail.com with ESMTPSA id o13-20020a05600c4fcd00b0041047382b76sm790244wmq.37.2024.02.08.04.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 04:44:06 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 11/17] clk: renesas: r9a09g011: Add initial support for power domains
Date: Thu,  8 Feb 2024 14:42:54 +0200
Message-Id: <20240208124300.2740313-12-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240208124300.2740313-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240208124300.2740313-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Instantiate always-on power domain for R9A09G011 SoC. At the moment, all
the IPs are part of this domain.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/r9a09g011-cpg.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/clk/renesas/r9a09g011-cpg.c b/drivers/clk/renesas/r9a09g011-cpg.c
index dda9f29dff33..9d090075f3be 100644
--- a/drivers/clk/renesas/r9a09g011-cpg.c
+++ b/drivers/clk/renesas/r9a09g011-cpg.c
@@ -245,6 +245,11 @@ static const unsigned int r9a09g011_crit_mod_clks[] __initconst = {
 	MOD_CLK_BASE + R9A09G011_URT_PCLK,
 };
 
+static const struct rzg2l_cpg_pm_domain_init_data r9a09g011_pm_domains[] = {
+	DEF_PD("always-on",	R9A09G011_PD_ALWAYS_ON, 0, 0,
+				RZG2L_PD_F_PARENT | RZG2L_PD_F_ALWAYS_ON),
+};
+
 const struct rzg2l_cpg_info r9a09g011_cpg_info = {
 	/* Core Clocks */
 	.core_clks = r9a09g011_core_clks,
@@ -265,5 +270,9 @@ const struct rzg2l_cpg_info r9a09g011_cpg_info = {
 	.resets = r9a09g011_resets,
 	.num_resets = ARRAY_SIZE(r9a09g011_resets),
 
+	/* PM domains */
+	.pm_domains = r9a09g011_pm_domains,
+	.num_pm_domains = ARRAY_SIZE(r9a09g011_pm_domains),
+
 	.has_clk_mon_regs = false,
 };
-- 
2.39.2


