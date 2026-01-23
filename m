Return-Path: <devicetree+bounces-258962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMwIEAt+c2mQwwAAu9opvQ
	(envelope-from <devicetree+bounces-258962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:56:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C09427684B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:56:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2F5863008C37
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6FDD2E8DE3;
	Fri, 23 Jan 2026 13:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NDoyF67b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C842BF3DB
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769176584; cv=pass; b=laMc7sk444k5g076HsxX6raMl8zsY8Vcns6VAU+vnz4+ARPe5x6imczsc9HuN9qpPQNZcg9PoNIsQ/R90N8QAazCKZtC75MzgiLNeXvXs6pSPSZS36Ecx/Y8DN1q8nDa7qwrFh9KFQDYkAAh3j3+oZ4M6UoU03NUArwEhOJPnmU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769176584; c=relaxed/simple;
	bh=aR8CpMb+s+EUHAjDGHaj1AO5m1hEQkCbg+lElZIdMAA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FFkXOFFyJ5Wpiahlwylxoxf7dUGT07pLYHRrk8Zkx+YJFFJtw2HuFN0TgOi8ecEF67ykgjjCh85yVDYWjjaqFfB6Y+jbcCCoxVhaNVSVbYyKGkbQN86mYFVKC3h6TFJGgBboyMdrVJR000qxbUkvf9e0qpH9so63tG1pI9MNlu8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NDoyF67b; arc=pass smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65807298140so3665485a12.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:56:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769176581; cv=none;
        d=google.com; s=arc-20240605;
        b=ACIFRalxC2ftQeHhcr6Vs3IM1elekrwlT/uyNUKbCZ83zSykP+nR/nw9jwfDr5DFDf
         agsFFBFRlPnKwzpnsAGg1aGFSmXt+uhQdKfdOjU041aQJPY7KrKWuaptxpFBIaDaMFzw
         whKUKQ8446w8w7Xw4ww3ExmUZQWhNEsdPJUQKgBJ/gzUdm1JYyrlVlLP8lyq7+5Gq3U/
         3umAhcjGbhM4YrM3PMkoZiWvpUtP86ommZDPAP3mg0byIYuphNasGBju/ucxR1DF1xWm
         4VVZ6t1eSq4stl0CmC1NvVCpyamM6nLwx+Iwx58DWgJkyf738Y7oXe1cHCDpDHa6MKyN
         kfPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MV9DSpmK7zSE3yOlg4auKxgIt8uc1vwlHVSaE0w/qMY=;
        fh=9ezDYRKk0NlCeXINGD7FSFZfXcUuglAdhLgMA8Dq/uc=;
        b=gSEEMO7LKvSRyX8DnluUi+19Ix1Yhx/t8CAaUXAfsJdbmMjTGXG3voxS6ji2SbNvLP
         6c7goDmWwB0ZbWliTc71pDurAqfVgPeyfA5FELXSE8EJVvl8PqkkJUslQthLaDlcAwHK
         OKh9sYN0WMnVsAcCc+kFU110Pd8Q/RnbkNl94TZ+OyeIAEPMogpk09eJsD8QiI8/qxe3
         xFRtWMSDE0aXOab/d+WmC/lm/1TpbgFKIB76dH+DyzRbp48KjWajNT9D5QVCGNQc3wu8
         8RiouD/ZMHamF99HJnrfWckurUBa1RmIi4mHXsMAY7Jja0QNW9dM3tQMpii7z9HYp0qp
         EggQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769176581; x=1769781381; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MV9DSpmK7zSE3yOlg4auKxgIt8uc1vwlHVSaE0w/qMY=;
        b=NDoyF67by7Agxo+AVkjXz78IlrNMhHcZ1stCF5T5tV/fyo0TIOvNc8XQh76+Aw4BER
         TRAI6rg0WysR+HxDkyR68Lnz9Zpud4jSR5y9fAg0C6OL6BotTeYPMb4jNf8EBh1GQVo+
         68yq0PQOWe+l1ut+QBImDkjP/s0Fse+J4WJ0yfisANHN0qp15qe4hPMbwcmxyVsE06zy
         Lv1V/tEhwW/X9Q2fRMSxOnnIESRiBVWePF4kI/U6qU0X5SK1Qhl9lUuMCzU6FALUHXBd
         Te1WihjXU6HLIslfa+eWnR6+L8pypW34E1MFP1ibnlbUdTZz8LM7pf2N7UQwoDXseRVk
         rwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769176581; x=1769781381;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MV9DSpmK7zSE3yOlg4auKxgIt8uc1vwlHVSaE0w/qMY=;
        b=LxuwVdm5oEQ4JGFs2ahFCktcji9GvpfZoo3OHS5uusUJctPWtEFTR77KcH0E2COpv4
         I3iRf+lv/up9CZiCSk7YbbyBEgQzctQakdBvXLU8Qp23QSq2hglMVI0xPYevs6soWWuD
         uTfN3QOZ4rTmEh1oZKDERumj1bSom7Uw/fnWMANzdUz1QK65YHFugy7Qe6FNVsXn+RWc
         iWCZkNNg6XBaQCpbh/3pm9vDldzh/GiqodhA5VsFNQ5uBgyO0hDnB0VgshXazmGZqRv6
         iv/f/6HdRrDGkGXRy8omSeEcA+GKhUjRUW7BFjJVh/kpqJ+ON+7QbhZRNR8z6I+RWFzI
         5NXg==
X-Forwarded-Encrypted: i=1; AJvYcCWcDzkEVDbe80Cf1yAlVveIOjWjT1mkHFD/mbzs85MnJF7NgPYQgyWqmE66szR354Q2X+DDPzySHLo4@vger.kernel.org
X-Gm-Message-State: AOJu0YyD1OF4U/xyuNWuJ2LiX67XFOUBD5NDmf16SXX7l9MvrFTsrm+L
	J0YICetMAonsWSHOYa6yGSR5PvvHjXmVXRnx91SAnPMOUEazuoMX+VynQSKwFZUcwoECm4iGAnZ
	/1cLhkpdMhQArSc5RzyDt1jlzZFJKg4CnxxPT1i23Tw==
X-Gm-Gg: AZuq6aLsdMsbRMjEhYamRuI/HoUmoZi7YYE3IGWbz2YMOx0wZeFY9qDzrJS6WgcfSsY
	Ndz8gLbQYgfNO2TPPGz4kRLr8rf2ySVPy2JFMa6bZKorocmsaBd8viCP6Lj7mRLszf0MrpSRxzm
	BYecQCE2hZBTWJIAzHdJCKJiyJ0yD2Zb9s4I8bf4hdvlVDKsg1HNoCzjimiJZ4ZhBM2J9lZA2hG
	NXTtdUw6RCzWexUV17zRu3GdjnC7+dkNGNL2EYkcV+VTioGq6jF+m0lfEq2cQZCimJnnRsqbqch
	KLUPi1t+sb/FpOuACflx/3NX
X-Received: by 2002:a05:6402:35cb:b0:64d:e1c:4c0a with SMTP id
 4fb4d7f45d1cf-6584868efb4mr2064138a12.0.1769176581281; Fri, 23 Jan 2026
 05:56:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120115923.3463866-1-khristineandreea.barbulescu@oss.nxp.com> <20260120115923.3463866-9-khristineandreea.barbulescu@oss.nxp.com>
In-Reply-To: <20260120115923.3463866-9-khristineandreea.barbulescu@oss.nxp.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Fri, 23 Jan 2026 14:56:09 +0100
X-Gm-Features: AZwV_QitT_JBj7lN6X8pXiBMkI1LXoq3ivXbG1n_-sBl-TpYf_jVZTRwjJZibTg
Message-ID: <CAKfTPtBCmwL3fpQuWp12HST9Nud583+QUs_BNBA48z9xRbcf9g@mail.gmail.com>
Subject: Re: [PATCH v8 08/10] pinctrl: s32cc: implement GPIO functionality
To: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, Larisa Grigore <larisa.grigore@nxp.com>, 
	Lee Jones <lee@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Alberto Ruiz <aruizrui@redhat.com>, Christophe Lizzi <clizzi@redhat.com>, devicetree@vger.kernel.org, 
	Enric Balletbo <eballetb@redhat.com>, Eric Chanudet <echanude@redhat.com>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, NXP S32 Linux Team <s32@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258962-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FREEMAIL_CC(0.00)[linaro.org,bgdev.pl,kernel.org,gmail.com,suse.com,nxp.com,pengutronix.de,linuxfoundation.org,redhat.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nxp.com:email,linaro.org:dkim]
X-Rspamd-Queue-Id: C09427684B
X-Rspamd-Action: no action

On Tue, 20 Jan 2026 at 12:59, Khristine Andreea Barbulescu
<khristineandreea.barbulescu@oss.nxp.com> wrote:
>
> From: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
>
> Add basic GPIO functionality (request, free, get, set) for the existing
> pinctrl SIUL2 driver since the hardware for pinctrl&GPIO is tightly
> coupled.
>
> Also, remove pinmux_ops which are no longer needed.
>
> Signed-off-by: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>

[..]

> @@ -1068,5 +1318,42 @@ int s32_pinctrl_probe(struct platform_device *pdev,
>
>         dev_info(&pdev->dev, "Initialized S32 pinctrl driver\n");
>
> +
> +       /* Legacy bindings only cover pinctrl functionality. */
> +       if (soc_data->legacy)
> +               return 0;
> +
> +       mfd = dev_get_drvdata(pdev->dev.parent);
> +       if (!mfd)
> +               return dev_err_probe(&pdev->dev, -EINVAL, "Invalid parent!\n");
> +
> +       gc = &ipctl->gc;
> +       gc->parent = &pdev->dev;
> +       gc->label = dev_name(&pdev->dev);
> +       gc->base = -1;
> +       /* In some cases, there is a gap between the SIUL GPIOs. */
> +       gc->ngpio = mfd->siul2[mfd->num_siul2 - 1].gpio_base +
> +                   mfd->siul2[mfd->num_siul2 - 1].gpio_num;
> +       ret = s32_gpio_populate_names(&pdev->dev, ipctl);
> +       if (ret)
> +               return ret;
> +
> +       gc->set = s32_gpio_set;
> +       gc->get = s32_gpio_get;
> +       gc->set_config = gpiochip_generic_config;
> +       gc->request = s32_gpio_request;
> +       gc->free = s32_gpio_free;
> +       gc->direction_output = s32_gpio_dir_out;
> +       gc->direction_input = s32_gpio_dir_in;
> +       gc->get_direction = s32_gpio_get_dir;
> +       gc->init_valid_mask = s32_init_valid_mask;
> +
> +       ret = devm_gpiochip_add_data(&pdev->dev, gc, ipctl);

Your mfd child device doesn't have a DT node, only its parent has one.
How do you point to the gpio controller in DT with a phandle ?

You probably need to create a child DT node


> +       if (ret)
> +               return dev_err_probe(&pdev->dev, ret,
> +                                    "Unable to add gpiochip\n");
> +
> +       dev_info(&pdev->dev, "Initialized s32 GPIO functionality\n");
> +
>         return 0;
>  }
> --
> 2.50.1
>

