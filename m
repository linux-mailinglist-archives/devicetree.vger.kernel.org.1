Return-Path: <devicetree+bounces-7194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1A47BFA6E
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:54:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CF3C281B12
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 094EC19449;
	Tue, 10 Oct 2023 11:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T7yjaNU1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6C7182AC
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 11:54:52 +0000 (UTC)
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 258E694
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:54:51 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5a7bbcc099fso9464847b3.3
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696938890; x=1697543690; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gx4FwWXRr3mIQseYEcpUQwYRu1NYJR8/WvHVh/sU6vE=;
        b=T7yjaNU1zrtURLfRJ2Mn08cXR1Q8l8B5xN1czchH4h4XJnoCqaUEk94jOuJscWV91i
         GxT3l05CEpb52uzzILZdFwsEdN2BwD+x/D3Dz/jESXsnEuiEzfJyzUmsfuGlu+6dqOVy
         AfXGQog2pHgxRUzrtgXb4SOH4m9WeldAtNqzdtVMoG/k4Lzj75D4Ra/HR8GnR/rLIAqC
         QrQ5uxzzVHDd3upCE3Nmwjrk8yavtHo5RJ3sN+r4fuLclsBCu+svgSOhJ/k7LFWklcE0
         QJEgUqJ6mxvAqTXRuVxrc/a5punyTHGoIf7OQh694oEy+vcwCGQEm9ONUrfzH3lOUR5X
         e5DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696938890; x=1697543690;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gx4FwWXRr3mIQseYEcpUQwYRu1NYJR8/WvHVh/sU6vE=;
        b=A/uUCWcKgR0H3mEvrICxr96Eyj3jp5e6YP866omNfT/1bP7IVUOHHx/+7soQV0bjUb
         fqBejRw9/g7LZpIt2DZ+ZhZXksUz7mfe6pSMPCD+SYfUmyFcGCDZKdasjO8r8Q9TtIqW
         r02UV0DA+Ll2P0Z2qzP3hGKJprgYHQzczKWt7aY3wMf7JCPq+V0pG2HAApitTvZC0xYm
         +xWDjGVFjR1n8yO5JIihiNVV3/Xp7b6XF11OSb464XyPI82jEO0u0U5SZfNvtGD2YWW+
         kIZxCmgum/dE1kejiYkuAMSceukrjMd3fH1NXgy2rGI64d5ZXrqiq8LjJKcDcpRDLoxj
         ZFjA==
X-Gm-Message-State: AOJu0YwbO3sFx6PbRF8KcNQBFmVZ/MZ5aUIeUKAmca1uwF2+C5fqZveS
	1Wnri1tiZzI2ox1aJMSo/V7H3+QArE7sdFHSxkHMOQ==
X-Google-Smtp-Source: AGHT+IF+Ui62wT1xAsT+Df1TzBYq9Im/mGBXcOB7wAhOIyv8/EVQH4bebQZ/910IcCaqUUZC5gFA8li9Vc4z6iCnfdg=
X-Received: by 2002:a81:bf48:0:b0:59f:72a6:da0e with SMTP id
 s8-20020a81bf48000000b0059f72a6da0emr18093517ywk.41.1696938890394; Tue, 10
 Oct 2023 04:54:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005025843.508689-1-takahiro.akashi@linaro.org> <20231005025843.508689-3-takahiro.akashi@linaro.org>
In-Reply-To: <20231005025843.508689-3-takahiro.akashi@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Oct 2023 13:54:39 +0200
Message-ID: <CACRpkdbavrEKEVUVvxhmX+CTOhHraPDJv-Q0+OGUEiq_YmA1Jw@mail.gmail.com>
Subject: Re: [RFC v2 2/5] pinctrl: always export pin_config_get_for_pin()
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 5, 2023 at 4:59=E2=80=AFAM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:


> This function will be used to implement a new pinctrl_gpio_get_config()
> outside pinconf.c in a succeeding commit.
> So make it always visible to avoid a kernel test bot error.
>
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202310021320.gYfm1nLQ-lkp@i=
ntel.com/

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

