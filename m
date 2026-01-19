Return-Path: <devicetree+bounces-257081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D6FD3B748
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 20:30:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C064E301AE32
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83F01274670;
	Mon, 19 Jan 2026 19:30:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09A12BE7DC
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768851012; cv=none; b=PzRDIsRHC12zdST3JcN7iRownyCs0pQlRMQ6siELwO+jlTXMieXKYrU8UICHfvj9Jf2i0t//npWGzNR8tjBGmqAKW+HIbBecpShjl+5nAAiqwzt86yFoFTi5JeRJ7af4E21zXAsvzUoyuHYiOIQV/BSPchB0KznZyiFcWyTda64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768851012; c=relaxed/simple;
	bh=mMp6iFxraRTP7W2rjXz9S3lRqN19hV6viOdRrtle5z0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ids+eyIr2NH9YXJao+iFVDuHk8U6J3YZU8DhEjO2qTM1WxgNR7WlfSFLKbv5F4z5Utx4DNS/5kfI9lBSiX+jNkIWUwvUdf5UOfhcMe7fEgLhRr6VWkXxRLXDB20mosbLy6IIGIRdKlhibPOp+EL1inQLGzxLtmwYbUSrkyrka+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a137692691so30237685ad.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:30:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768851010; x=1769455810;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DCb1Q/eNGJuZWnaSy0QMCWG02dACV3WSdsoPlEt9HTE=;
        b=tYVE7iLmCPvryWOxc1PKBC7iF7oFZNPnZU47xMqWyPn0bSZV72ZfnlpwuF9Q7gIkdr
         es2Lzmvnmv2ScbqVZuYiESxUsEqR8sY/3mF6702Zo4D53f89lKIGX069cDE4cODfgGc3
         83LaKYS4M0rwu23Ogw+fu740V/p81G9/VMaB0FpDWdVnS/diKihlRe9bChNj3TT7OKaN
         0pNsQMrPQ9GkmzAyfYLFRu+gtDr2nZ8l5HoNNuf+MGiBt6ZCoh6DS/anpaN4qqyxQfUt
         60mRN9pve8/XIrccLdRdNEQqjMW+afvUMjXU4MXEP2r3jfenHf5XBTkIfolWhRfecz5n
         0JsA==
X-Forwarded-Encrypted: i=1; AJvYcCUTcWKNWPaCm+Kw2vS2sLO+A/5TfjpVfFJII66CDAMQiBV1g3Zh+LUY0XGIGgtNW/judKJnLG1pEV/U@vger.kernel.org
X-Gm-Message-State: AOJu0Yyatxr29fUaP6SouYwTiyPTuoUfCEsFS3W7K8wM8dDdl7Np/GuN
	qQB2uCBIbdX3uFvv4tbh3NDWshKiYwOequfpQAsC8oHM22QXHCPu9A8XLPh7wtPU
X-Gm-Gg: AZuq6aJ3+6z7GRivRtkT3fUJrDPxNOq/U/7/7TVhvi8KCKChbY+RQU/AR0Dv3V+OsAq
	Za3zTel1rZOrVc+BeCKpTo1NIxgVFtl0Z4buCTqkL/N9MciSBGhGdQx8b//qIfuDIYNWM95o9MA
	oba4J0caO+l5JWxvuSUhY2HQNCghSmiF9Rxoj4ZC4GQcdpjYzzoMMjxPKkR7xGfwv85bV7uVqio
	ZbiCc7oHLTKATO1q0gYBJhmTg9PPC/QfxxXNkdvn2089Zad8TQQ2FLqq5JZgoLUdOSa7yCYhv/2
	rHft2UvgrRJp8YIkKFpoZUgOx72WWN+qF6U40eh+/Yq5jMDLqDxWnwnFhr2EceVi08VnljTQwS4
	aaCX0aAdR3J+0mmpu3Fm+rr1fXr9MoQiuiMLl4cBSnvF2wBZk3i19iMpUXivCRrBTa8H6bTNdjt
	TzdcsmCerCPDY57CYvqcomvdc3AIH2f2ji/9ZoBieS7ekI9Io=
X-Received: by 2002:a17:903:2ed0:b0:2a2:ecb6:545b with SMTP id d9443c01a7336-2a71751c84cmr133326305ad.2.1768851010121;
        Mon, 19 Jan 2026 11:30:10 -0800 (PST)
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com. [74.125.82.41])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190aa5c9sm101362085ad.7.2026.01.19.11.30.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 11:30:09 -0800 (PST)
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-12331482b8fso7686438c88.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:30:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWnVT6o0NYHKxV6I4awFq0Sbm0uTuRBNIBvb5vkYh9ngeMCBZ78vmrzZoPn74VgzN3GtlYhX19xcFBd@vger.kernel.org
X-Received: by 2002:a05:6102:44d2:10b0:5f1:c453:b5ab with SMTP id
 ada2fe7eead31-5f1c453b6acmr1782180137.13.1768850612507; Mon, 19 Jan 2026
 11:23:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-soc-of-root-v1-0-32a0fa9a78b4@oss.qualcomm.com> <20260119-soc-of-root-v1-3-32a0fa9a78b4@oss.qualcomm.com>
In-Reply-To: <20260119-soc-of-root-v1-3-32a0fa9a78b4@oss.qualcomm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 19 Jan 2026 20:23:21 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXt69AywBVsY3DKH+cS52=Cw1xsvvBDBV3MXirZ+LYj+A@mail.gmail.com>
X-Gm-Features: AZwV_Qja2okCrIX9za1x2Adx7NBF3Qx2Xd3iJQm2I4PbFkiFeek_zkUKX3woR2E
Message-ID: <CAMuHMdXt69AywBVsY3DKH+cS52=Cw1xsvvBDBV3MXirZ+LYj+A@mail.gmail.com>
Subject: Re: [PATCH 3/8] base: soc: export soc_device_get_machine()
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
	linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Bartosz,

On Mon, 19 Jan 2026 at 11:40, Bartosz Golaszewski
<bartosz.golaszewski@oss.qualcomm.com> wrote:
> Some SoC drivers reimplement the functionality of
> soc_device_get_machine(). Make this function accessible through the
> sys_soc.h header. Rework it slightly to return a negative error number
> on failure to read the machine string (SoC core can keep on ignoring
> it). While at it: make it use the __free() helper from cleanup.h.
>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

Thanks for your patch!

> --- a/drivers/base/soc.c
> +++ b/drivers/base/soc.c
> @@ -5,6 +5,7 @@
>   * Author: Lee Jones <lee.jones@linaro.org> for ST-Ericsson.
>   */
>
> +#include <linux/cleanup.h>
>  #include <linux/err.h>
>  #include <linux/glob.h>
>  #include <linux/idr.h>
> @@ -111,17 +112,18 @@ static void soc_release(struct device *dev)
>         kfree(soc_dev);
>  }
>
> -static void soc_device_get_machine(struct soc_device_attribute *soc_dev_attr)
> +int soc_device_get_machine(struct soc_device_attribute *soc_dev_attr)
>  {
> -       struct device_node *np;
> -
>         if (soc_dev_attr->machine)
> -               return;
> +               return -EBUSY;
> +
> +       struct device_node *np __free(device_node) = of_find_node_by_path("/");
> +       if (!np)
> +               return -ENOENT;
>
> -       np = of_find_node_by_path("/");
> -       of_property_read_string(np, "model", &soc_dev_attr->machine);
> -       of_node_put(np);
> +       return of_property_read_string(np, "model", &soc_dev_attr->machine);

I am not so fond of these of_find_node_by_path("/") + something replacements.
What about adding an of_machine_get_model() helper?

>  }
> +EXPORT_SYMBOL_GPL(soc_device_get_machine);
>
>  static struct soc_device_attribute *early_soc_dev_attr;
>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

