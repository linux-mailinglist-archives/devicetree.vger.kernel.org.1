Return-Path: <devicetree+bounces-258293-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNcSHU79cWmvZwAAu9opvQ
	(envelope-from <devicetree+bounces-258293-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:34:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BA80B654F7
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 71D6578AA2B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 690FA30BF75;
	Thu, 22 Jan 2026 10:25:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com [209.85.217.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A69329C60
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769077516; cv=none; b=qZDOifSVdtwJay0ozebgPfBgVCQOv3YcNiX/9OeBuv7a7Peq9nP0ysPBd6IE7zCcWzewvgJ3tAP/orf8hfvlrFL47HK5Cda2zmRai7iHYjPvRds0iEPgYqaKhrksYOOC23AIm0lKs0wf55U+C04XjkeBj98+Hah8rRJCIC/iWZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769077516; c=relaxed/simple;
	bh=tzCu6s+P00F9BxBbrZV8bsVUzyJIUMZRriM+ZWggqa0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tvUKDsrIs1aC6nNmgWGv40XiGQa68fME5LCS+dZa9J9K173WmkQJrD1L1h9z1wKaNxXdaubnrz1HuOfHGgAmumI7IcXEmWVmPGMoPfdl+x+/38de5mRhTw3ZwR2uVgqEqQoObqpc971QVIMcrWYGdPq8J09RhUwV9TU8VxA2n2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f66.google.com with SMTP id ada2fe7eead31-5eae7bb8018so247628137.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:25:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769077511; x=1769682311;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DU8rGFe6B3mE/xdQKQTWoBiiNLtj1+ih/vdN/GH7wsM=;
        b=j9+56OJtvgZ4VmNCnVw9b7RypqGHSVzn4QtWuBNkWiQJTEoJSOFMxxj6FXPJzKMwUq
         VQ3p/OkZUl/f7o5ZCwE81xHkAHljQfga/tE4CiMpP3h0jP6TWOJ11dX+laetQKWqv/u0
         /9AFRMX6nuyRgUVR6XvUu09DXiy5MDiUOkcDvQBH73pY+jzh7b7f75u00NADfrPOkeqq
         56AeHGfVVWuGVXamxpVaJ8ZwoRT26+Gpon7z/9vWkG7VgR6OQAxwt9tODDYdiocZ+BXm
         EBDvzuqZV8+JlAxkLsanvQwmx2zgZ5zyWunRvxNublWJ7uinR3Ri1ULUwJuQVYkIoPyb
         Bcag==
X-Forwarded-Encrypted: i=1; AJvYcCWDXPV6BQA0kvGxoYHj+WHJtKgEkpcDFzs4R8rpw7QWdPu+ti24W38k3eOlwe55pMAjqiZkEmdN79CV@vger.kernel.org
X-Gm-Message-State: AOJu0YzVdxgQAKZmJRgJ2tDDTGWASfJbGbDfbi3QdDUOv0YLBTE9qgkH
	4kBLgQKGFaNlyifUy94s/2S7fM/QxoJFhdpjF1ioFC8Rmv3R7vlcvGdy3lY2dFxO
X-Gm-Gg: AZuq6aK3diRLGfrOivExg3M6bRtp7FRfch464hMDWKuvyX4QGyZfkoafeQoAKdLZv98
	nTt0w7TuepM/02NAJFIJ9j89kQnV4nnT4QFux0qgfLYZiXE67WkXIU20ErjlYLlCIDDZGityYgr
	8NlxrdqaHDNlmSIrfU3Zzs7y4eFEtUXmpeeI7ekGIEB5vYR7JbNmst/1MsJy7ZJ1fXPZRtc4f5S
	gZWRJFFXVLl1ciT+vsMA3OpYnAoruv6lnMr8le5AlQXYdSfYxwAOMDhBHa35GzJvXZZtMAvokVc
	d0FjKrfo13+dOXcPlz3wniMfZ2ubxorNOKSwt+BCocRCX+7Z2U8tZbGBYUFmF0qQ8i8UUe/m/f9
	4gJqniyPzoTwlbr+cVG8ZNWcGrhKIciWl1LHRqgBkX5lB2yoKuiPNKWbPA+1fOt8tgRqArhDrkR
	LUPVQ7bzpgUUKjDIni1GjmgxjTs7YCqOs8TkuC7zrvhlM9evDa
X-Received: by 2002:a05:6102:dcc:b0:5db:f031:84c7 with SMTP id ada2fe7eead31-5f1a717ed4emr6815122137.30.1769077510972;
        Thu, 22 Jan 2026 02:25:10 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-947d0458fc0sm5384712241.15.2026.01.22.02.25.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 02:25:10 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5f53ba9c548so147732137.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:25:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVuJO4D1eP0Oe636yNe4chq04blR/zHc0UfO/ynXKPT348g1Cux+SHeId501nqOnMcrzOb57Fgv4oM8@vger.kernel.org
X-Received: by 2002:a05:6102:c8e:b0:5f5:3826:3cfb with SMTP id
 ada2fe7eead31-5f5382646b2mr467462137.27.1769077510009; Thu, 22 Jan 2026
 02:25:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org>
 <20260118135038.8033-10-marek.vasut+renesas@mailbox.org> <CAMuHMdWfkHMQFvUzaHpso-fMFAS5u8ABHpEA9ZXq1fxcR-oN6Q@mail.gmail.com>
 <6f817993-1b4a-4600-a771-d6c25efc668b@mailbox.org>
In-Reply-To: <6f817993-1b4a-4600-a771-d6c25efc668b@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 22 Jan 2026 11:24:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX0iuyUhGRPFf4x==e_ZEMjaB_dP6mrM81F+yxqwam0FA@mail.gmail.com>
X-Gm-Features: AZwV_QjuP8FSEPCU0Lg3L4U6GH5gFTYqAWXZrFYKPuIZu4sDlAHvOrdK6rQ4B2g
Message-ID: <CAMuHMdX0iuyUhGRPFf4x==e_ZEMjaB_dP6mrM81F+yxqwam0FA@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] arm64: dts: renesas: ebisu: Describe PCIe/USB3.0
 clock generator
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.24 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258293-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,gmail.com,linaro.org,renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,linux-m68k.org:email,mail.gmail.com:mid,mailbox.org:email]
X-Rspamd-Queue-Id: BA80B654F7
X-Rspamd-Action: no action

Hi Marek,

On Wed, 21 Jan 2026 at 23:44, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 1/21/26 2:48 PM, Geert Uytterhoeven wrote:
> >> @@ -871,7 +902,19 @@ &usb2_phy0 {
> >>          status = "okay";
> >>   };
> >>
> >> +&usb3_phy0 {
> >> +       clocks = <&pcie_usb_clk 6>;
> >> +       status = "okay";
> >> +};
> >
> > This does not work, probing fails with:
> >
> >      usb_phy_generic usb-phy: dummy supplies not allowed for exclusive
> > requests (id=vbus)
> >
> > Adding a fixed regulator that serves as vbus-supply like in commit
> > fec2d8fcdedaeeb0 ("arm64: dts: freescale: imx93-phyboard-nash: Add USB
> > vbus regulators") fixes that issue (and my USB3.0 FLASH driver is
> > detected, yeah!), but a more accurate description would be better.
>
> This piece of code in drivers/usb/phy/phy-generic.c [1] shouldn't fail
> the probe if "vbus-supply" property is not present in DT. If
> "vbus-supply" property is not present in DT, then
> PTR_ERR(nop->vbus_draw) == -ENODEV is true, nop->vbus_draw will be set
> to NULL, but won't encode error, so the dev_err_probe() won't trigger.
>
> "
> 259         nop->vbus_draw = devm_regulator_get_exclusive(dev, "vbus");
> 260         if (PTR_ERR(nop->vbus_draw) == -ENODEV)
> 261                 nop->vbus_draw = NULL;
> 262         if (IS_ERR(nop->vbus_draw))
> 263                 return dev_err_probe(dev, PTR_ERR(nop->vbus_draw),
> 264                                      "could not get vbus regulator\n");
> "
>
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/phy/phy-generic.c#n259

Sorry, you are right. I missed the PHY driver ignores the error and
probes successfully, and thus didn't bother doing "echo ee000000.usb >
/sys/bus/platform/drivers/xhci-renesas-hcd/bind" after /lib/firmware
became available.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

