Return-Path: <devicetree+bounces-314358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Cf3gOggGOWpBlgcAu9opvQ
	(envelope-from <devicetree+bounces-314358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 11:53:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E417A6AE703
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 11:53:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314358-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-314358-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1F7E230015BC
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEDC23A2E33;
	Mon, 22 Jun 2026 09:53:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024AF36BCC4
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 09:53:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782121986; cv=none; b=Br/vZa9cWNn3vV+b4r+sKZ1fiScAW9vefu6Tt29/CMCcCsH94CrKcO1tKtBxx3i4TlTcOdKawDNBFRAA6EExO2+YLC4gm9Vk9BQoT8O30cUEzuxn6U7ngdsEyRSrm5fcEAwVdxdn6hhm73fJZ32AXU8NAok7iRYD1gPtbNs2Cyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782121986; c=relaxed/simple;
	bh=MnAXpId2QrsxBwStKm73em8Wh8kEZ3EOPZC5i6ugnWE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oVR6ANtPCqRkiy3TeOVJ8aUbqCJhkrzYUuoRXpYz/eQF3SBrFvnEAFWjJJQWHy+yOhHW0grRHpts1JNnOKQvdKpQ4vOiNubPXAQdBPMJkt8/Uj/+8k3tafP+uQdRnsnvSTfn1Ckf4MWwr2eGn5+zkCfUyWSVNPOOM0E07uUw6zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.44
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-728e2e57e27so2439652137.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 02:53:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782121983; x=1782726783;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LTo0C41gBRbYARs5bY4lNZzY8eziG+D7rVsU/ecROJ0=;
        b=lXnuqeDQp7iZEUdeE1G3rg4sxoLmvvqX74+Q9Rz1U+OPgV7yond7AqKfgTHLt73vsw
         1hhF6TlxF+d2Xwj7vRLupxCfdiLhmpEnB9/tz1cOssSE3Wf3OR6KxaTYV98ZlnvfFOYB
         wdUrQKqWGF+Q3h2tFSWr8d/4MCjdghRw8zsezRAp/1FrU2ULCEarguEULXCn3hK7sTPw
         eYvnj3NC3koY9qyri4Eo9q8o6kVurLapWEPMUjf7qtahg5vGFEXM8G54GOJfKQKpgt4o
         kMyeHXt9H0vB7BBiKPk6ZeZN7+iy9SaCRj+3iQrM1NITA9HcOk9BVB2wk5gLM6MTXRuz
         MWkw==
X-Forwarded-Encrypted: i=1; AFNElJ9Vxcb6pZM5TXkcTbKpoYrvmirWi+TFdbppOE9MqQmJgmfE5vCgz47QehJaNM2XmEskZDA7+9jocARE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx4/XzgErHwoGDfMlRsoCVLxYrW5N/9y60CfVSLwjsmH+OlTzC
	7A9SLx9hyEYlENPdWBD2l04JRjxZn67YoWgD250C82RBOWwBOColnlby15rUHrJe
X-Gm-Gg: AfdE7cnO7lP8hE9Y1ScFeGmahYhaHOJ7eY9+J6dQd0K3K73vsZEiC9hRYCDJ4MK3OHq
	+D37BlHVhEhNBsK2etEuMxgPMySALIdJYlpd/nh9qql3/kAT3ogCvu0b1D9B2erId8JiWXgYswX
	gqG5l1Loidd34QgheVqrCYU4vmK+8zFp50SpbeiQGRbTPgmjnLQN1Vtk1js8UrflYpBnyerwxiP
	QPNkUYiwH7zUmKIRYmS1rNBtlh/QbexKzATwA2aDaNM5ypfWRzLEsH6gbt+BYteTzA+4MPZAV6X
	2+31bgE/Zg7d652UBOD4G2/UZTxd0ZkhkWNs82m1+yM1dg5vPP7Bev69T91AvIZpOEcEs/Snm1Z
	HBPNXoj2zbV6DF71qtX45SeRyQZTo5gxplaZz8mRiQxaUpmNBRNJM6s/5Ezmj0y8mV4TOOhnx7u
	94gLd5G2AGI08r1kIioW3uMVfWOehOUTpiBY0h7lhryRZYfbgu2w==
X-Received: by 2002:a05:6102:f06:b0:729:c8f0:76bb with SMTP id ada2fe7eead31-72a1f0afa2emr7193570137.16.1782121982703;
        Mon, 22 Jun 2026 02:53:02 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-72ba26ba1d5sm5692511137.4.2026.06.22.02.53.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2026 02:53:02 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-96387efc30aso3245216241.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 02:53:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+4ViZZXCosNJgBeu+qpS7OAVk+EXznw7vxofO9dnhSmNi3XCly40FjBH3Xf0tJOPAUVEIpE5rT5JJ8@vger.kernel.org
X-Received: by 2002:a05:6102:c03:b0:729:affa:70fd with SMTP id
 ada2fe7eead31-72a1d8282d2mr7518654137.8.1782121981650; Mon, 22 Jun 2026
 02:53:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260618220427.14325-1-marek.vasut+renesas@mailbox.org> <20260618220427.14325-3-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260618220427.14325-3-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Jun 2026 11:52:50 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUxT87M1oQvPP_h4YX4vXFaVbbG+LCG8EdmuLTuHNtybQ@mail.gmail.com>
X-Gm-Features: AVVi8CeD0QzByTLrjVPd1X2DDUj0G8mjwUUWpPVDpYqqWicL4mNi4MB1Xhj4X1I
Message-ID: <CAMuHMdUxT87M1oQvPP_h4YX4vXFaVbbG+LCG8EdmuLTuHNtybQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] irqchip/gic-v3: Refactor GIC600 limited to 32bit
 PA erratum handling
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-pci@vger.kernel.org, Marc Zyngier <maz@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314358-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:marek.vasut+renesas@mailbox.org,m:linux-pci@vger.kernel.org,m:maz@kernel.org,m:kwilczynski@kernel.org,m:bhelgaas@google.com,m:catalin.marinas@arm.com,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:krzk+dt@kernel.org,m:lpieralisi@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:yoshihiro.shimoda.uh@renesas.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:marek.vasut@mailbox.org,m:conor@kernel.org,m:geert@glider.be,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E417A6AE703

Hi Marek,

On Fri, 19 Jun 2026 at 00:04, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> The GIC600 implementation is now known to be used on multiple 64-bit
> SoCs, where it has address width for AXI or APB interface configured
> to 32 bit, and it can access only the first 4GiB of physical address
> space.
>
> Rework the handling of the quirk to work around this limitation such
> that new entries can be added purely as new compatible strings, with
> no need to add additional functions or new its_quirk array entries.
>
> Suggested-by: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks for your patch!

> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -4890,10 +4890,17 @@ static bool __maybe_unused its_enable_quirk_hip09_162100801(void *data)
>         return true;
>  }
>
> -static bool __maybe_unused its_enable_rk3568002(void *data)
> +static const char * const dma_32bit_impaired_platforms[] = {
> +#ifdef CONFIG_ROCKCHIP_ERRATUM_3568002
> +       "rockchip,rk3566",
> +       "rockchip,rk3568",
> +#endif
> +       NULL,
> +};
> +
> +static bool __maybe_unused its_enable_dma32(void *data)

__maybe_unused can be dropped...

>  {
> -       if (!of_machine_is_compatible("rockchip,rk3566") &&
> -           !of_machine_is_compatible("rockchip,rk3568"))
> +       if (!of_machine_compatible_match(dma_32bit_impaired_platforms))
>                 return false;
>
>         gfp_flags_quirk |= GFP_DMA32;
> @@ -4968,14 +4975,12 @@ static const struct gic_quirk its_quirks[] = {
>                 .property = "dma-noncoherent",
>                 .init   = its_set_non_coherent,
>         },
> -#ifdef CONFIG_ROCKCHIP_ERRATUM_3568002

... as the #ifdef is removed.

>         {
> -               .desc   = "ITS: Rockchip erratum RK3568002",
> +               .desc   = "ITS: Broken GIC600 integration limited to 32bit PA",
>                 .iidr   = 0x0201743b,
>                 .mask   = 0xffffffff,
> -               .init   = its_enable_rk3568002,
> +               .init   = its_enable_dma32,
>         },
> -#endif
>         {
>         }
>  };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

