Return-Path: <devicetree+bounces-75295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D69A09065D6
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 09:57:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F2131F2696B
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 07:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7113413CA87;
	Thu, 13 Jun 2024 07:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="lG6+aepy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144FA13CAA4
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 07:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718265385; cv=none; b=QKX6pRstQN1tzEANmEe7IU6T7CdxuCPge6865jnw0bAVOh7+MKl3uIJUSZfnsaOo3KwKBgs0/Siz+rV5Zl8Jt1de21lbYbS9+0EOoCE52COmthzfh5t5vrUjp4gBluxg4q+aG/1s54+Qhzo4cDuyYsNF8nJkDQzEN1CbZuCfXtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718265385; c=relaxed/simple;
	bh=WzBhPYFvEi+nr8MNnAH9jUuNlRLNrF6fIhu1ImZe634=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tmpPaYRfLNZ+nSuFQ2Xkay6DARtaLdve8iAhIq+9TOLOHtQAwQR8/ZYr06ZBaobFUQ02FVQQ6eUe+RXJUjRr002kKoStNNZBv8c0R6ntOXG3pXJTIoBatnZtbEMztIhIWCJnHX0hxUUrMVFQstUgiUvRjkyOQmjEl5Qzx4Q5+9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=lG6+aepy; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4400cc0dad1so350021cf.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 00:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718265382; x=1718870182; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BRArzN2ZMq3+VIgclHKf1fUIJp5ZSxcNsSROOXjcH+c=;
        b=lG6+aepyLNrpOmBVxgItAkyO2T2zzRfNH3giFodjNgLTnY7p8agqc81b7ktZsOEAnz
         83DvJlHGRL3xmMp6HznXrgM0jRRIF4rMvm1wv26E4x/uHpC6jwylGRoXUhdc8aLgoP3a
         tmTB5s6UfDr0ZtL7RRnBMCUan1PC8ZUDC8DzSDNESPZ1GiN0T5qFUoosWvJ9jruXDiCm
         SNzmg0zg3HCUbqftUYrpUBO4Z5p+7TJivGIhNjiDI1rd8rWvBMQ6hXVJiQS+OOeMIh25
         5bekcPyrhpZZiiYCNFSQ9xu7pZ8DZ2W/AF4NW034eYrlpQ7HxoSeht+CCG73e/qYl7dZ
         zBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718265382; x=1718870182;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BRArzN2ZMq3+VIgclHKf1fUIJp5ZSxcNsSROOXjcH+c=;
        b=b4CkrMZhwyqcvhcIDFn2gV8eElXJcoXew34ZD3JQSHtt6B0B0d/xDi3MNKuDb6wOwQ
         bV3TnHNwqwwtFoaDv0vFR/GC43C5+neHRgSi5jENXYvCc9NssEIrvB0QONT41vZ7jaeS
         eu+UIyvHINVmZxhTZa3XH9ZDSd7WRrhpQxbx+4cPaOCYmCCNgiR0z9WZS2BygUVTxSTE
         Zmts55NGZREZ5a0faLRBvb8j1qc7AGmpQwhkuzusM9tWyCV4nX/blFRyIirNhGYBaw3H
         BAfv7m5Nm/HYOdtUPQkb4mKwdD1wK2mIFy6H+Br8risH49N5rI3Nr+ywOimBZxGbl95P
         bwpg==
X-Forwarded-Encrypted: i=1; AJvYcCU1JKjmVPyuvA2wg0JBdVwK3nf7sbYE+99FJlwPkoGNmT8hni5x+M8UUmvLrB/NivqrdecBm1cySA2Szq4Mqv7V5q8hQxHMSM4qpw==
X-Gm-Message-State: AOJu0Yyg3nplB/fl+mR/xOu2doO+lxUQlOvCRsQLTQ4o6HN5s+blg5e9
	pb/DdDdVvIJyDKi3X7bJp7QX03XBDwj16lR0tnSRa68/HUyG8p/PXDVbkavXl9w8Q/eZLfe4jdF
	Q6mJB1EZUXOQbJLLkHHrN87Avds6TyL+n+/uT
X-Google-Smtp-Source: AGHT+IGx1Jdu3yXUvvkyC8976hwMGLeeFiP8z84piR1Si5Q8Uegg7bXwkBaRGRywWOqvM1T6328K42kMuwwtFT3gXSk=
X-Received: by 2002:a05:622a:4c19:b0:43d:85ae:bee with SMTP id
 d75a77b69052e-441e2424be3mr2081941cf.7.1718265381757; Thu, 13 Jun 2024
 00:56:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240603223811.3815762-1-sboyd@kernel.org> <20240603223811.3815762-12-sboyd@kernel.org>
In-Reply-To: <20240603223811.3815762-12-sboyd@kernel.org>
From: David Gow <davidgow@google.com>
Date: Thu, 13 Jun 2024 15:56:08 +0800
Message-ID: <CABVgOS=4Qnb7pvc_mmkPGdyVFGNWU9wdyn9p-QBKKG+rbJGtfA@mail.gmail.com>
Subject: Re: [PATCH v5 11/11] clk: Add KUnit tests for clks registered with
 struct clk_parent_data
To: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, patches@lists.linux.dev, 
	kunit-dev@googlegroups.com, linux-kselftest@vger.kernel.org, 
	devicetree@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, 
	Rae Moar <rmoar@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, Daniel Latypov <dlatypov@google.com>, 
	Christian Marangi <ansuelsmth@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <maxime@cerno.tech>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000bcacc8061ac0d514"

--000000000000bcacc8061ac0d514
Content-Type: text/plain; charset="UTF-8"

On Tue, 4 Jun 2024 at 06:38, Stephen Boyd <sboyd@kernel.org> wrote:
>
> Test that clks registered with 'struct clk_parent_data' work as
> intended and can find their parents.
>
> Cc: Christian Marangi <ansuelsmth@gmail.com>
> Cc: Brendan Higgins <brendan.higgins@linux.dev>
> Cc: David Gow <davidgow@google.com>
> Cc: Rae Moar <rmoar@google.com>
> Signed-off-by: Stephen Boyd <sboyd@kernel.org>
> ---

This seems good to me overall, but will break if we can't compile the
dtbo.o file. Maybe these need to live behind a  #if
IS_ENABLED(CONFIG_OF) or equivalent.

Also, there's a cast to kunit_action_t* which needs to use a wrapper.

Otherwise,
Reviewed-by: David Gow <davidgow@google.com>

Cheers,
-- David

>  drivers/clk/Kconfig                         |   1 +
>  drivers/clk/Makefile                        |   3 +-
>  drivers/clk/clk_parent_data_test.h          |  10 +
>  drivers/clk/clk_test.c                      | 451 +++++++++++++++++++-
>  drivers/clk/kunit_clk_parent_data_test.dtso |  28 ++
>  5 files changed, 491 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/clk/clk_parent_data_test.h
>  create mode 100644 drivers/clk/kunit_clk_parent_data_test.dtso
>
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index f649f2a0279c..c33fdf9fdcd6 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -508,6 +508,7 @@ config CLK_KUNIT_TEST
>         tristate "Basic Clock Framework Kunit Tests" if !KUNIT_ALL_TESTS
>         depends on KUNIT
>         default KUNIT_ALL_TESTS
> +       select OF_OVERLAY if OF
>         help
>           Kunit tests for the common clock framework.
>
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index 7b57e3d22cee..ed4e1a0e6943 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -2,7 +2,8 @@
>  # common clock types
>  obj-$(CONFIG_HAVE_CLK)         += clk-devres.o clk-bulk.o clkdev.o
>  obj-$(CONFIG_COMMON_CLK)       += clk.o
> -obj-$(CONFIG_CLK_KUNIT_TEST)   += clk_test.o
> +obj-$(CONFIG_CLK_KUNIT_TEST)   += clk_test.o \
> +                                  kunit_clk_parent_data_test.dtbo.o

This breaks if CONFIG_OF isn't enabled, as there's no rule to compile it:
make[5]: *** No rule to make target
'drivers/clk/kunit_clk_parent_data_test.dtbo.o', needed by
'drivers/clk/modules.order'.  Stop.


>  obj-$(CONFIG_COMMON_CLK)       += clk-divider.o
>  obj-$(CONFIG_COMMON_CLK)       += clk-fixed-factor.o
>  obj-$(CONFIG_COMMON_CLK)       += clk-fixed-rate.o
> diff --git a/drivers/clk/clk_parent_data_test.h b/drivers/clk/clk_parent_data_test.h
> new file mode 100644
> index 000000000000..eedd53ae910d
> --- /dev/null
> +++ b/drivers/clk/clk_parent_data_test.h
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _CLK_PARENT_DATA_TEST_H
> +#define _CLK_PARENT_DATA_TEST_H
> +
> +#define CLK_PARENT_DATA_1MHZ_NAME      "1mhz_fixed_legacy"
> +#define CLK_PARENT_DATA_PARENT1                "parent_fwname"
> +#define CLK_PARENT_DATA_PARENT2                "50"
> +#define CLK_PARENT_DATA_50MHZ_NAME     "50_clk"
> +
> +#endif
> diff --git a/drivers/clk/clk_test.c b/drivers/clk/clk_test.c
> index 39e2b5ff4f51..bdf3c4bb2243 100644
> --- a/drivers/clk/clk_test.c
> +++ b/drivers/clk/clk_test.c
> @@ -4,12 +4,19 @@
>   */
>  #include <linux/clk.h>
>  #include <linux/clk-provider.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
>
>  /* Needed for clk_hw_get_clk() */
>  #include "clk.h"
>
> +#include <kunit/clk.h>
> +#include <kunit/of.h>
> +#include <kunit/platform_device.h>
>  #include <kunit/test.h>
>
> +#include "clk_parent_data_test.h"
> +
>  static const struct clk_ops empty_clk_ops = { };
>
>  #define DUMMY_CLOCK_INIT_RATE  (42 * 1000 * 1000)
> @@ -2659,6 +2666,446 @@ static struct kunit_suite clk_mux_no_reparent_test_suite = {
>         .test_cases = clk_mux_no_reparent_test_cases,
>  };
>
> +struct clk_register_clk_parent_data_test_case {
> +       const char *desc;
> +       struct clk_parent_data pdata;
> +};
> +
> +static void
> +clk_register_clk_parent_data_test_case_to_desc(
> +               const struct clk_register_clk_parent_data_test_case *t, char *desc)
> +{
> +       strcpy(desc, t->desc);
> +}
> +
> +static const struct clk_register_clk_parent_data_test_case
> +clk_register_clk_parent_data_of_cases[] = {
> +       {
> +               /*
> +                * Test that a clk registered with a struct device_node can
> +                * find a parent based on struct clk_parent_data::index.
> +                */
> +               .desc = "clk_parent_data_of_index_test",
> +               .pdata.index = 0,
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device_node can
> +                * find a parent based on struct clk_parent_data::fwname.
> +                */
> +               .desc = "clk_parent_data_of_fwname_test",
> +               .pdata.fw_name = CLK_PARENT_DATA_PARENT1,
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device_node can
> +                * find a parent based on struct clk_parent_data::name.
> +                */
> +               .desc = "clk_parent_data_of_name_test",
> +               /* The index must be negative to indicate firmware not used */
> +               .pdata.index = -1,
> +               .pdata.name = CLK_PARENT_DATA_1MHZ_NAME,
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device_node can
> +                * find a parent based on struct
> +                * clk_parent_data::{fw_name,name}.
> +                */
> +               .desc = "clk_parent_data_of_fwname_name_test",
> +               .pdata.fw_name = CLK_PARENT_DATA_PARENT1,
> +               .pdata.name = "not_matching",
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device_node can
> +                * find a parent based on struct clk_parent_data::{index,name}.
> +                * Index takes priority.
> +                */
> +               .desc = "clk_parent_data_of_index_name_priority_test",
> +               .pdata.index = 0,
> +               .pdata.name = "not_matching",
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device_node can
> +                * find a parent based on struct
> +                * clk_parent_data::{index,fwname,name}. The fw_name takes
> +                * priority over index and name.
> +                */
> +               .desc = "clk_parent_data_of_index_fwname_name_priority_test",
> +               .pdata.index = 1,
> +               .pdata.fw_name = CLK_PARENT_DATA_PARENT1,
> +               .pdata.name = "not_matching",
> +       },
> +};
> +
> +KUNIT_ARRAY_PARAM(clk_register_clk_parent_data_of_test, clk_register_clk_parent_data_of_cases,
> +                 clk_register_clk_parent_data_test_case_to_desc)
> +
> +/**
> + * struct clk_register_clk_parent_data_of_ctx - Context for clk_parent_data OF tests
> + * @np: device node of clk under test
> + * @hw: clk_hw for clk under test
> + */
> +struct clk_register_clk_parent_data_of_ctx {
> +       struct device_node *np;
> +       struct clk_hw hw;
> +};
> +
> +static int clk_register_clk_parent_data_of_test_init(struct kunit *test)
> +{
> +       struct clk_register_clk_parent_data_of_ctx *ctx;
> +
> +       KUNIT_ASSERT_EQ(test, 0,
> +                       of_overlay_apply_kunit(test, kunit_clk_parent_data_test));
> +
> +       ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
> +       if (!ctx)
> +               return -ENOMEM;
> +       test->priv = ctx;
> +
> +       ctx->np = of_find_compatible_node(NULL, NULL, "test,clk-parent-data");
> +       if (!ctx->np)
> +               return -ENODEV;
> +
> +       return kunit_add_action_or_reset(test, (kunit_action_t *)&of_node_put, ctx->np);

We should use an action wrapper here (KUNIT_DEFINE_ACTION_WRAPPER()),
as casting function pointers to kunit_action_t* breaks control-flow
integrity.

> +}
> +
> +/*
> + * Test that a clk registered with a struct device_node can find a parent based on
> + * struct clk_parent_data when the hw member isn't set.
> + */
> +static void clk_register_clk_parent_data_of_test(struct kunit *test)
> +{
> +       struct clk_register_clk_parent_data_of_ctx *ctx = test->priv;
> +       struct clk_hw *parent_hw;
> +       const struct clk_register_clk_parent_data_test_case *test_param;
> +       struct clk_init_data init = { };
> +       struct clk *expected_parent, *actual_parent;
> +
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx->np);
> +
> +       expected_parent = of_clk_get_kunit(test, ctx->np, 0);
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, expected_parent);
> +
> +       test_param = test->param_value;
> +       init.parent_data = &test_param->pdata;
> +       init.num_parents = 1;
> +       init.name = "parent_data_of_test_clk";
> +       init.ops = &clk_dummy_single_parent_ops;
> +       ctx->hw.init = &init;
> +       KUNIT_ASSERT_EQ(test, 0, of_clk_hw_register_kunit(test, ctx->np, &ctx->hw));
> +
> +       parent_hw = clk_hw_get_parent(&ctx->hw);
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, parent_hw);
> +
> +       actual_parent = clk_hw_get_clk_kunit(test, parent_hw, __func__);
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, actual_parent);
> +
> +       KUNIT_EXPECT_TRUE(test, clk_is_match(expected_parent, actual_parent));
> +}
> +
> +static struct kunit_case clk_register_clk_parent_data_of_test_cases[] = {
> +       KUNIT_CASE_PARAM(clk_register_clk_parent_data_of_test,
> +                        clk_register_clk_parent_data_of_test_gen_params),
> +       {}
> +};
> +
> +/*
> + * Test suite for registering clks with struct clk_parent_data and a struct
> + * device_node.
> + */
> +static struct kunit_suite clk_register_clk_parent_data_of_suite = {
> +       .name = "clk_register_clk_parent_data_of",
> +       .init = clk_register_clk_parent_data_of_test_init,
> +       .test_cases = clk_register_clk_parent_data_of_test_cases,
> +};
> +
> +/**
> + * struct clk_register_clk_parent_data_device_ctx - Context for clk_parent_data device tests
> + * @dev: device of clk under test
> + * @hw: clk_hw for clk under test
> + * @pdrv: driver to attach to find @dev
> + */
> +struct clk_register_clk_parent_data_device_ctx {
> +       struct device *dev;
> +       struct clk_hw hw;
> +       struct platform_driver pdrv;
> +};
> +
> +static inline struct clk_register_clk_parent_data_device_ctx *
> +clk_register_clk_parent_data_driver_to_test_context(struct platform_device *pdev)
> +{
> +       return container_of(to_platform_driver(pdev->dev.driver),
> +                           struct clk_register_clk_parent_data_device_ctx, pdrv);
> +}
> +
> +static int clk_register_clk_parent_data_device_probe(struct platform_device *pdev)
> +{
> +       struct clk_register_clk_parent_data_device_ctx *ctx;
> +
> +       ctx = clk_register_clk_parent_data_driver_to_test_context(pdev);
> +       ctx->dev = &pdev->dev;
> +
> +       return 0;
> +}
> +
> +static void clk_register_clk_parent_data_device_driver(struct kunit *test)
> +{
> +       struct clk_register_clk_parent_data_device_ctx *ctx = test->priv;
> +       static const struct of_device_id match_table[] = {
> +               { .compatible = "test,clk-parent-data" },
> +               { }
> +       };
> +
> +       ctx->pdrv.probe = clk_register_clk_parent_data_device_probe;
> +       ctx->pdrv.driver.of_match_table = match_table;
> +       ctx->pdrv.driver.name = __func__;
> +       ctx->pdrv.driver.owner = THIS_MODULE;
> +
> +       KUNIT_ASSERT_EQ(test, 0, kunit_platform_driver_register(test, &ctx->pdrv));
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx->dev);
> +}
> +
> +static const struct clk_register_clk_parent_data_test_case
> +clk_register_clk_parent_data_device_cases[] = {
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::index.
> +                */
> +               .desc = "clk_parent_data_device_index_test",
> +               .pdata.index = 1,
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::fwname.
> +                */
> +               .desc = "clk_parent_data_device_fwname_test",
> +               .pdata.fw_name = CLK_PARENT_DATA_PARENT2,
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::name.
> +                */
> +               .desc = "clk_parent_data_device_name_test",
> +               /* The index must be negative to indicate firmware not used */
> +               .pdata.index = -1,
> +               .pdata.name = CLK_PARENT_DATA_50MHZ_NAME,
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::{fw_name,name}.
> +                */
> +               .desc = "clk_parent_data_device_fwname_name_test",
> +               .pdata.fw_name = CLK_PARENT_DATA_PARENT2,
> +               .pdata.name = "not_matching",
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::{index,name}. Index
> +                * takes priority.
> +                */
> +               .desc = "clk_parent_data_device_index_name_priority_test",
> +               .pdata.index = 1,
> +               .pdata.name = "not_matching",
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::{index,fwname,name}.
> +                * The fw_name takes priority over index and name.
> +                */
> +               .desc = "clk_parent_data_device_index_fwname_name_priority_test",
> +               .pdata.index = 0,
> +               .pdata.fw_name = CLK_PARENT_DATA_PARENT2,
> +               .pdata.name = "not_matching",
> +       },
> +};
> +
> +KUNIT_ARRAY_PARAM(clk_register_clk_parent_data_device_test,
> +                 clk_register_clk_parent_data_device_cases,
> +                 clk_register_clk_parent_data_test_case_to_desc)
> +
> +/*
> + * Test that a clk registered with a struct device can find a parent based on
> + * struct clk_parent_data when the hw member isn't set.
> + */
> +static void clk_register_clk_parent_data_device_test(struct kunit *test)
> +{
> +       struct clk_register_clk_parent_data_device_ctx *ctx;
> +       const struct clk_register_clk_parent_data_test_case *test_param;
> +       struct clk_hw *parent_hw;
> +       struct clk_init_data init = { };
> +       struct clk *expected_parent, *actual_parent;
> +
> +       ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
> +       test->priv = ctx;
> +
> +       clk_register_clk_parent_data_device_driver(test);
> +
> +       expected_parent = clk_get_kunit(test, ctx->dev, "50");
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, expected_parent);
> +
> +       test_param = test->param_value;
> +       init.parent_data = &test_param->pdata;
> +       init.num_parents = 1;
> +       init.name = "parent_data_device_test_clk";
> +       init.ops = &clk_dummy_single_parent_ops;
> +       ctx->hw.init = &init;
> +       KUNIT_ASSERT_EQ(test, 0, clk_hw_register_kunit(test, ctx->dev, &ctx->hw));
> +
> +       parent_hw = clk_hw_get_parent(&ctx->hw);
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, parent_hw);
> +
> +       actual_parent = clk_hw_get_clk_kunit(test, parent_hw, __func__);
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, actual_parent);
> +
> +       KUNIT_EXPECT_TRUE(test, clk_is_match(expected_parent, actual_parent));
> +}
> +
> +static const struct clk_register_clk_parent_data_test_case
> +clk_register_clk_parent_data_device_hw_cases[] = {
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::hw.
> +                */
> +               .desc = "clk_parent_data_device_hw_index_test",
> +               /* The index must be negative to indicate firmware not used */
> +               .pdata.index = -1,
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::hw when
> +                * struct clk_parent_data::fw_name is set.
> +                */
> +               .desc = "clk_parent_data_device_hw_fwname_test",
> +               .pdata.fw_name = CLK_PARENT_DATA_PARENT2,
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::hw when struct
> +                * clk_parent_data::name is set.
> +                */
> +               .desc = "clk_parent_data_device_hw_name_test",
> +               /* The index must be negative to indicate firmware not used */
> +               .pdata.index = -1,
> +               .pdata.name = CLK_PARENT_DATA_50MHZ_NAME,
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::hw when struct
> +                * clk_parent_data::{fw_name,name} are set.
> +                */
> +               .desc = "clk_parent_data_device_hw_fwname_name_test",
> +               .pdata.fw_name = CLK_PARENT_DATA_PARENT2,
> +               .pdata.name = "not_matching",
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::hw when struct
> +                * clk_parent_data::index is set. The hw pointer takes
> +                * priority.
> +                */
> +               .desc = "clk_parent_data_device_hw_index_priority_test",
> +               .pdata.index = 0,
> +       },
> +       {
> +               /*
> +                * Test that a clk registered with a struct device can find a
> +                * parent based on struct clk_parent_data::hw when
> +                * struct clk_parent_data::{index,fwname,name} are set.
> +                * The hw pointer takes priority over everything else.
> +                */
> +               .desc = "clk_parent_data_device_hw_index_fwname_name_priority_test",
> +               .pdata.index = 0,
> +               .pdata.fw_name = CLK_PARENT_DATA_PARENT2,
> +               .pdata.name = "not_matching",
> +       },
> +};
> +
> +KUNIT_ARRAY_PARAM(clk_register_clk_parent_data_device_hw_test,
> +                 clk_register_clk_parent_data_device_hw_cases,
> +                 clk_register_clk_parent_data_test_case_to_desc)
> +
> +/*
> + * Test that a clk registered with a struct device can find a
> + * parent based on struct clk_parent_data::hw.
> + */
> +static void clk_register_clk_parent_data_device_hw_test(struct kunit *test)
> +{
> +       struct clk_register_clk_parent_data_device_ctx *ctx;
> +       const struct clk_register_clk_parent_data_test_case *test_param;
> +       struct clk_dummy_context *parent;
> +       struct clk_hw *parent_hw;
> +       struct clk_parent_data pdata = { };
> +       struct clk_init_data init = { };
> +
> +       ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
> +       test->priv = ctx;
> +
> +       clk_register_clk_parent_data_device_driver(test);
> +
> +       parent = kunit_kzalloc(test, sizeof(*parent), GFP_KERNEL);
> +       KUNIT_ASSERT_NOT_ERR_OR_NULL(test, parent);
> +
> +       parent_hw = &parent->hw;
> +       parent_hw->init = CLK_HW_INIT_NO_PARENT("parenlookst-clk",
> +                                               &clk_dummy_rate_ops, 0);
> +
> +       KUNIT_ASSERT_EQ(test, 0, clk_hw_register_kunit(test, ctx->dev, parent_hw));
> +
> +       test_param = test->param_value;
> +       memcpy(&pdata, &test_param->pdata, sizeof(pdata));
> +       pdata.hw = parent_hw;
> +       init.parent_data = &pdata;
> +       init.num_parents = 1;
> +       init.ops = &clk_dummy_single_parent_ops;
> +       init.name = "parent_data_device_hw_test_clk";
> +       ctx->hw.init = &init;
> +       KUNIT_ASSERT_EQ(test, 0, clk_hw_register_kunit(test, ctx->dev, &ctx->hw));
> +
> +       KUNIT_EXPECT_PTR_EQ(test, parent_hw, clk_hw_get_parent(&ctx->hw));
> +}
> +
> +static struct kunit_case clk_register_clk_parent_data_device_test_cases[] = {
> +       KUNIT_CASE_PARAM(clk_register_clk_parent_data_device_test,
> +                        clk_register_clk_parent_data_device_test_gen_params),
> +       KUNIT_CASE_PARAM(clk_register_clk_parent_data_device_hw_test,
> +                        clk_register_clk_parent_data_device_hw_test_gen_params),
> +       {}
> +};
> +
> +static int clk_register_clk_parent_data_device_init(struct kunit *test)
> +{
> +       KUNIT_ASSERT_EQ(test, 0,
> +                       of_overlay_apply_kunit(test, kunit_clk_parent_data_test));
> +
> +       return 0;
> +}
> +
> +/*
> + * Test suite for registering clks with struct clk_parent_data and a struct
> + * device.
> + */
> +static struct kunit_suite clk_register_clk_parent_data_device_suite = {
> +       .name = "clk_register_clk_parent_data_device",
> +       .init = clk_register_clk_parent_data_device_init,
> +       .test_cases = clk_register_clk_parent_data_device_test_cases,
> +};
> +
>  kunit_test_suites(
>         &clk_leaf_mux_set_rate_parent_test_suite,
>         &clk_test_suite,
> @@ -2671,7 +3118,9 @@ kunit_test_suites(
>         &clk_range_test_suite,
>         &clk_range_maximize_test_suite,
>         &clk_range_minimize_test_suite,
> +       &clk_register_clk_parent_data_of_suite,
> +       &clk_register_clk_parent_data_device_suite,
>         &clk_single_parent_mux_test_suite,
> -       &clk_uncached_test_suite
> +       &clk_uncached_test_suite,
>  );
>  MODULE_LICENSE("GPL v2");
> diff --git a/drivers/clk/kunit_clk_parent_data_test.dtso b/drivers/clk/kunit_clk_parent_data_test.dtso
> new file mode 100644
> index 000000000000..7d3ed9a5a2e8
> --- /dev/null
> +++ b/drivers/clk/kunit_clk_parent_data_test.dtso
> @@ -0,0 +1,28 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/dts-v1/;
> +/plugin/;
> +
> +#include "clk_parent_data_test.h"
> +
> +&{/} {
> +       fixed_50: kunit-clock-50MHz {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <50000000>;
> +               clock-output-names = CLK_PARENT_DATA_50MHZ_NAME;
> +       };
> +
> +       fixed_parent: kunit-clock-1MHz {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <1000000>;
> +               clock-output-names = CLK_PARENT_DATA_1MHZ_NAME;
> +       };
> +
> +       kunit-clock-controller {
> +               compatible = "test,clk-parent-data";
> +               clocks = <&fixed_parent>, <&fixed_50>;
> +               clock-names = CLK_PARENT_DATA_PARENT1, CLK_PARENT_DATA_PARENT2;
> +               #clock-cells = <1>;
> +       };
> +};
> --
> https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git/
> https://git.kernel.org/pub/scm/linux/kernel/git/sboyd/spmi.git
>

--000000000000bcacc8061ac0d514
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIPqgYJKoZIhvcNAQcCoIIPmzCCD5cCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg0EMIIEtjCCA56gAwIBAgIQeAMYYHb81ngUVR0WyMTzqzANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA3MjgwMDAwMDBaFw0yOTAzMTgwMDAwMDBaMFQxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSowKAYDVQQDEyFHbG9iYWxTaWduIEF0bGFz
IFIzIFNNSU1FIENBIDIwMjAwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvLe9xPU9W
dpiHLAvX7kFnaFZPuJLey7LYaMO8P/xSngB9IN73mVc7YiLov12Fekdtn5kL8PjmDBEvTYmWsuQS
6VBo3vdlqqXZ0M9eMkjcKqijrmDRleudEoPDzTumwQ18VB/3I+vbN039HIaRQ5x+NHGiPHVfk6Rx
c6KAbYceyeqqfuJEcq23vhTdium/Bf5hHqYUhuJwnBQ+dAUcFndUKMJrth6lHeoifkbw2bv81zxJ
I9cvIy516+oUekqiSFGfzAqByv41OrgLV4fLGCDH3yRh1tj7EtV3l2TngqtrDLUs5R+sWIItPa/4
AJXB1Q3nGNl2tNjVpcSn0uJ7aFPbAgMBAAGjggGKMIIBhjAOBgNVHQ8BAf8EBAMCAYYwHQYDVR0l
BBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFHzM
CmjXouseLHIb0c1dlW+N+/JjMB8GA1UdIwQYMBaAFI/wS3+oLkUkrk1Q+mOai97i3Ru8MHsGCCsG
AQUFBwEBBG8wbTAuBggrBgEFBQcwAYYiaHR0cDovL29jc3AyLmdsb2JhbHNpZ24uY29tL3Jvb3Ry
MzA7BggrBgEFBQcwAoYvaHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvcm9vdC1y
My5jcnQwNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9yb290LXIz
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
JEfDtvHU6wy3MSBE3/TrMFcGA1UdIARQME4wCQYHZ4EMAQUBATBBBgkrBgEEAaAyASgwNDAyBggr
BgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wDAYDVR0TAQH/
BAIwADCBmgYIKwYBBQUHAQEEgY0wgYowPgYIKwYBBQUHMAGGMmh0dHA6Ly9vY3NwLmdsb2JhbHNp
Z24uY29tL2NhL2dzYXRsYXNyM3NtaW1lY2EyMDIwMEgGCCsGAQUFBzAChjxodHRwOi8vc2VjdXJl
Lmdsb2JhbHNpZ24uY29tL2NhY2VydC9nc2F0bGFzcjNzbWltZWNhMjAyMC5jcnQwHwYDVR0jBBgw
FoAUfMwKaNei6x4schvRzV2Vb4378mMwRgYDVR0fBD8wPTA7oDmgN4Y1aHR0cDovL2NybC5nbG9i
YWxzaWduLmNvbS9jYS9nc2F0bGFzcjNzbWltZWNhMjAyMC5jcmwwDQYJKoZIhvcNAQELBQADggEB
AGwXYwvLVjByVooZ+uKzQVW2nnClCIizd0jfARuMRTPNAWI2uOBSKoR0T6XWsGsVvX1vBF0FA+a9
DQOd8GYqzEaKOiHDIjq/o455YXkiKhPpxDSIM+7st/OZnlkRbgAyq4rAhAjbZlceKp+1vj0wIvCa
4evQZvJNnJvTb4Vcnqf4Xg2Pl57hSUAgejWvIGAxfiAKG8Zk09I9DNd84hucIS2UIgoRGGWw3eIg
GQs0EfiilyTgsH8iMOPqUJ1h4oX9z1FpaiJzfxcvcGG46SCieSFP0USs9aMl7GeERue37kBf14Pd
kOYIfx09Pcv/N6lHV6kXlzG0xeUuV3RxtLtszQgxggJqMIICZgIBATBoMFQxCzAJBgNVBAYTAkJF
MRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSowKAYDVQQDEyFHbG9iYWxTaWduIEF0bGFzIFIz
IFNNSU1FIENBIDIwMjACEAFsPHWl8lqMEwx3lAnpufYwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZI
hvcNAQkEMSIEIAtjTWzvWgtLSHpgISf/SkCcxysODHS0z3B2QlDbwwRZMBgGCSqGSIb3DQEJAzEL
BgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDYxMzA3NTYyMlowaQYJKoZIhvcNAQkPMVww
WjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkq
hkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQBfCOsE
JjsqO98sfjNKrE7CnsAbOToiebFCrGraQ6w7sLb01/AYw+BpcNbiwTn0dJWE7rtN48R+U6by00I3
rMVZ9JrCmNqpzIdVv8DgoRVmY+Ih2kslbVmfhv66kaT9iIZX0C/2N9BbjRkWORt8ONFXkP1w1oxR
hoGDvBoGZDI44sNRZ2LiYn0r/e8OTyxHr0NAfzSJt7O38plRFv4i+8ghxEtjLK/4ozDSdQ13CE0L
Hk00AZMfqzJsPWypm9vk2i03nFBxskdWhuPtaxv1U715GmuzoBfYdFFmKLDXC9Wy5O0Y/e+/pfoU
PNYUca4Sf6LY5HzSERGwrXWVb40Ssmln
--000000000000bcacc8061ac0d514--

