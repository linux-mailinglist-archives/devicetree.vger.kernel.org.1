Return-Path: <devicetree+bounces-12384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 913117D92FF
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:04:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1C487B212C7
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44EBE156D7;
	Fri, 27 Oct 2023 09:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JdzLuzE/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CF4156C8
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 09:04:34 +0000 (UTC)
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 518D018F
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 02:04:33 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3b2b1af09c5so1116161b6e.0
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 02:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698397472; x=1699002272; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NYwW0s2BOh04TrQgARy+ZAGjgN1hKxj4KAq6p+VCH1M=;
        b=JdzLuzE/kXA+cJFjqjEKUZk1e2ob4pThnDvJ4HauNVne3JkJ2WFORj5XtKfraioCTf
         Equ7rI+gR4uKT+R/01RVvTZV6fynB2sARfQf1aUTeNdrhIel3uViRzOZolUYDfeXv0sQ
         7ufR8ctRdufNmHOE7VhtdUAfj1Pmye9Q4yJ6bAbZUbBY3dB/SgxbkDVdD6P1BvEVFloc
         n9Xj/m954G2nsVXcBbdEMnfkX0FXx5Fjywh4aOuj9b049nOUkZwy02JpXtrqx9Up38NR
         41bPZmuxR2Zs5b/Kif7+VKvupS0ZJylVK2/VaToQLPmzqPfvOUj+Y1thAY89XEdJjAPN
         TN8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698397472; x=1699002272;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NYwW0s2BOh04TrQgARy+ZAGjgN1hKxj4KAq6p+VCH1M=;
        b=Y40aRuvQ+oGRz84wiXbXnpWOdBPcDvGGtWjAa1DU9u7TciPp+UgFf9pU69rE1gfFZj
         +LydAsZIVxgCTdp39+k0ldfBhfT+9qF3IE5NyBgZCTQTT3WMdApC/Q4knStAtpWggKzs
         ZTT18d7Mv8urxi1hbpP733IcuAeyMSzlUouCa145l18X4cXFZwqm2OKe6fQ2HL7Xvqdc
         mM9HPiTxI74haEw/FjM/ui+j1wBCm4Sl4QfD/Y9gEu6oU9DQrpF4fLt0goNoyx7Bdo+a
         NyXqYh5GaAAN6dlUpHmnwjOZ9+CdL/+KSQCNGxsBr6IISr1Qgiqf0z/7vx/NJFFsm0ab
         bqrA==
X-Gm-Message-State: AOJu0YyPFvyRt7TuZigsDRvhDSXiVEoZxZDYRBXi80A0Hj5UDV5WYg+s
	NqDQR79tlg+8wfWhFbvKPlOoEBNFIPp/NrgGYykW3A==
X-Google-Smtp-Source: AGHT+IERiaQhDUuJ+K73/pCAPsO3dmX+uBgBKrfXATpvIXv7hztsC5N3Wu7K3OXqiqxsi1yk3Oi/hglez561ytzAqJ4=
X-Received: by 2002:a05:6808:10d2:b0:3ae:156f:d319 with SMTP id
 s18-20020a05680810d200b003ae156fd319mr2312336ois.45.1698397472641; Fri, 27
 Oct 2023 02:04:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231016080205.41982-1-tomeu@tomeuvizoso.net> <20231016080205.41982-2-tomeu@tomeuvizoso.net>
In-Reply-To: <20231016080205.41982-2-tomeu@tomeuvizoso.net>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 27 Oct 2023 11:03:53 +0200
Message-ID: <CAPDyKFpecaKQSJCTP5ntm243WTiQ-Y0TpU7x7F8f6Xh74+LT0A@mail.gmail.com>
Subject: Re: [PATCH 2/2] pmdomain: amlogic: Fix mask for the second NNA mem PD domain
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: linux-kernel@vger.kernel.org, Da Xue <da@libre.computer>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 16 Oct 2023 at 10:02, Tomeu Vizoso <tomeu@tomeuvizoso.net> wrote:
>
> Without this change, the NPU hangs when the 8th NN core is used.
>
> It matches what the out-of-tree driver does.
>
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>

Applied for fixes and by adding a fixes/stable tag, thanks!

Kind regards
Uffe

> ---
>  drivers/pmdomain/amlogic/meson-ee-pwrc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pmdomain/amlogic/meson-ee-pwrc.c b/drivers/pmdomain/amlogic/meson-ee-pwrc.c
> index cfb796d40d9d..0dd71cd814c5 100644
> --- a/drivers/pmdomain/amlogic/meson-ee-pwrc.c
> +++ b/drivers/pmdomain/amlogic/meson-ee-pwrc.c
> @@ -228,7 +228,7 @@ static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_audio[] = {
>
>  static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_nna[] = {
>         { G12A_HHI_NANOQ_MEM_PD_REG0, GENMASK(31, 0) },
> -       { G12A_HHI_NANOQ_MEM_PD_REG1, GENMASK(23, 0) },
> +       { G12A_HHI_NANOQ_MEM_PD_REG1, GENMASK(31, 0) },
>  };
>
>  #define VPU_PD(__name, __top_pd, __mem, __is_pwr_off, __resets, __clks)        \
> --
> 2.41.0
>

