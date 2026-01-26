Return-Path: <devicetree+bounces-259595-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yF7JAHCfd2kCjQEAu9opvQ
	(envelope-from <devicetree+bounces-259595-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 18:08:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F5B8B494
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 18:07:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2076B3041BE5
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD112EA156;
	Mon, 26 Jan 2026 17:06:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63814347FF8
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 17:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769447176; cv=none; b=Evqdf5MXi8aq0NtLSLwnnF3/VR31dfrl1ZfKt+oWhyJpOTmA+2yXdg/L+47ko5nLebIpUDCHcbCLwUIz9neqepqkuK4c8RpoxGyXwkPRk+FuF97lHp4Pz21QwIixB26GAgQMeYGRBPPeCPwRq9iXQvO/e0i9G9TlsY1UfZK55+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769447176; c=relaxed/simple;
	bh=r226rCK4LUmTjUdkw/d4TzoTnxW8rmQ0SA+5j+h9MbE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cCkI/+HpFF3KGpBixkWjhxQf658OI3yfe8JIbA0i9aejmgO1rON5w4wNqra2qhevbW2ltwKfAh+dkuaQODrfYodOOgFOzoLVF+GEdkQPgIUnTFpA1DvOzsa4AFUyrAmiKCDVwp9mUNrM0TVjCpVeBge6OgGNgV+TbS14p1N3W04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8c5386f1c9fso690144085a.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:06:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769447174; x=1770051974;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DX+hzkzvZlTATTRkV+7hBeNOQ+pb6333spkvwFjnnA4=;
        b=EDJ0B0TZgURQPRLuyFO9YYrY06x0Q4ICJIrwc52uaFhe5AhkGXLxi0bCX+5HhknFli
         Pg+RREU5RFX5PGy9zX2sDe5siqUTdXJNcrVP5NlCGqIdkiTlocjf874P76gdkxaDO7Rz
         ZazNue5A7l/Sl8wogjDNNdVKxbFQ0FEmf9rYiVEGU9MpI32R64qSJz4OJ3JVzpHI95uk
         Rzwxi10c64LwEOfQl/G4hCz8THz7PFMs2pIggmp3IJlJo8zYrNxrmb4PLKpWbNd5jUDg
         NJypxPKxloSES239Ou1tjn4xDqq+xF86XT2q4LIj4wFvhfGEOWowvSNT62S39htXjEGQ
         2ztA==
X-Forwarded-Encrypted: i=1; AJvYcCVt+Vt5cynas5Tadi0pNbkx58puznmKfw0hdTg09edABv0JzU56IT8rciPTqur9v0wN/KUZlVIGrcP6@vger.kernel.org
X-Gm-Message-State: AOJu0YysoX54HEMt4S2Zt/Uma0lxQTJ3Qdpv6vXo0L6T2EjEhta9YbIi
	MiDl8eLIJk336AsdqFogH0zNBz2vMEX+1qOxwe+5vfTM8aGkF+YWuCyy7fTGJjSX
X-Gm-Gg: AZuq6aJrIPXZMkkUUu5cRdRKUJIqnby/MQHh2vAvQjKYy5NeJeXS9uEM7YKwZfsBMeH
	qJcbsQqpXeeyWCmYjsuOSnzHRGANcgB0rEl/nNLGAKLTqlss0zMIxq+4eMmsNghepmQEWha4hXn
	uOA7fYnlcopGZxIBosfiY1WCrG+azkYyK/3LqRN84+hCbalclGao98Pi68yqTYDPPZKYnAJOoP/
	3QMRUU6zfNZqBsY3vRdHCCh0fbl/tnT8CgprD59T+gR8DChBR/zlCTKNXapAG9MPd7d0jaPSnsO
	NvcvyxldhMONgQ4WRs9q/W53NGBJqr8rCHwmpJfL4SOCeLZm8NTyZAwCLaY2u0SIfInytsDDMAv
	XFplifwy/0LxYXS6L/bl5qh5zNBuuzc21PiYV7Dj5pO68jHftoOMASf98LVSQvfg1nEvKb325Nu
	aWwpfGswgq8Y8/zdnfFzmGFhPgEm5pJ6H1sgsdrxaqQ2s6k2wx1150
X-Received: by 2002:a05:620a:468d:b0:8c6:f414:3bbb with SMTP id af79cd13be357-8c6f9624398mr573161185a.54.1769447174210;
        Mon, 26 Jan 2026 09:06:14 -0800 (PST)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com. [209.85.222.169])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6e383b19asm1032362085a.28.2026.01.26.09.06.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 09:06:13 -0800 (PST)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8c531473fdcso643360185a.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:06:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVXT0+FHRZ9w4vkcs7y8AAdkbcLglmwGO16/nYz5G9tLlD16Iby/lAP+TkcFbaGzbC+XNecbTZzebG4@vger.kernel.org
X-Received: by 2002:a67:c48a:0:b0:5f1:9641:4f2a with SMTP id
 ada2fe7eead31-5f57638a4edmr1135520137.18.1769446754221; Mon, 26 Jan 2026
 08:59:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com> <63e8022438eb0d485505c262cac383d76c804403.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <63e8022438eb0d485505c262cac383d76c804403.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jan 2026 17:59:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVfsO1NVv6+N37C8ss3thKz+sANCtO00PRhgnD5M1cs0Q@mail.gmail.com>
X-Gm-Features: AZwV_QjJzffyx5kQPgMaSLBq9RR4EDkJTeL5IelsyAZXDhJ2Ar_AWtIKRIoFYWc
Message-ID: <CAMuHMdVfsO1NVv6+N37C8ss3thKz+sANCtO00PRhgnD5M1cs0Q@mail.gmail.com>
Subject: Re: [PATCH v5 15/22] arm64: dts: renesas: r9a09g057: Add USB2.0
 VBUS_SEL mux-controller support
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Guenter Roeck <linux@roeck-us.net>, Mark Brown <broonie@kernel.org>, 
	Jonathan Cameron <jonathan.cameron@huawei.com>, Georgi Djakov <djakov@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,bp.renesas.com,axentia.se,kernel.org,renesas.com,pengutronix.de,roeck-us.net,huawei.com,linaro.org,arndb.de,linuxfoundation.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259595-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.241.62.152:email];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,linux-m68k.org:email,0.241.23.136:email]
X-Rspamd-Queue-Id: 52F5B8B494
X-Rspamd-Action: no action

Hi Tommaso,

On Thu, 27 Nov 2025 at 12:51, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Enable control of USB2.0 VBUSEN via the VBUS_SEL bit in the VBENCTL
> register. According to the RZ/V2H(P) SoC hardware manual, OTG channels
> require VBUS_SEL set, while HOST-only channels require it cleared.
>
> Add `#mux-state-cell` to the usb20phyrst and usb21phyrst reset
> nodes to expose them as mux controllers.
>
> Set the required mux-states in usb2_phy0 (OTG: state 1) and usb2_phy1
> (HOST: state 0) nodes.
>
> This enables proper VBUSEN management for OTG and HOST-only USB2.0
> channels.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> @@ -1034,6 +1034,7 @@ usb2_phy0: usb-phy@15800200 {
>                         resets = <&usb20phyrst>;
>                         #phy-cells = <1>;
>                         power-domains = <&cpg>;
> +                       mux-states = <&usb20phyrst 1>;

I am no USB expert, and didn't really follow the USB specifics of
this series, but isn't the selection of host (VBUSEN = 1) or function
(VBUSEN = 0) mode decided at runtime?

>                         status = "disabled";
>                 };
>
> @@ -1047,6 +1048,7 @@ usb2_phy1: usb-phy@15810200 {
>                         resets = <&usb21phyrst>;
>                         #phy-cells = <1>;
>                         power-domains = <&cpg>;
> +                       mux-states = <&usb21phyrst 0>;

The second controller is always used in host mode, so 0 is correct.

>                         status = "disabled";
>                 };
>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

