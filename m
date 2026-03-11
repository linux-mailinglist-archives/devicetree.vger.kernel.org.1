Return-Path: <devicetree+bounces-274223-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6D1HOKeVsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274223-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:17:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D96267312
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:17:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C74D83151618
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62AC73603C6;
	Wed, 11 Mar 2026 16:12:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B1E3D5234
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245562; cv=none; b=U+omd08n8QK2WDAVVhiNz3V2Sx1DyH1vhLM5ZXOB5Y6NgdKrgTzfh4ckACGeiWxTzn0WitCxhum8xqogt98KV9ErfXhcy9AUUdXP9RRt8N16XHrjnJ9xmv3qc9yrr0188C5RmfosHmVuQCnwyBrVxeVSCZsiVjBV3HmBYwZTIhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245562; c=relaxed/simple;
	bh=kriQ31pznimK4X2P3ovzVVed34liQBkD34H6iVN9D1s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aXioDMxNd4bA+DLVswvK4Br437+I66ND9o2sua7fWlW55+mxZSq+Q3iVrd7jIjbFirzT81Le8iqeMi5o8Prx1wR3ZwzZipuhfjm9Lp2rWyoM9YnafDFSnBVCiv/eyyVicKx/Lzj1YUf86fucnBQIHJPb6cgh/u8AmiZpDxKCsTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-56aff27dfebso76764e0c.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:12:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773245557; x=1773850357;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2TZQnjO7g8xVtwDHS6cEDEA1/Z/EJi3b/CK0eN89lxs=;
        b=eKQ/Fpo2pOn4Sh1MM/uFwm8UHyNxdoozbRypOwjp/w9I/WW2paC0/+QJ8yxrErXeVz
         S4fyUjjUQvhz4xooQ18J63KHClJPXXUVBWLZj33s+Cl4U8GSSGaSQ+nZoUFwFLmT64fM
         XmFaXehjKwC7NTrzXwUOtlVSpwSflhCg5qo5KVUorkkKdg3nwbzWZZzGz15ll3rt/0ZF
         CzKEbdnhneMMOtkZESLqJCArg7hyYYtVkMVsIsmEAc7k8Oc49MSiu++2o9kaD11X0IZP
         OSpq/zwuFQBYOuKtzaVETFgGfdGBnt5mgxLsZQ2m6uBO6sag3fSUtzqUHv0u6HjjSIaG
         iSZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSE1cAmcPICkGTu8CcYxvLinHPIjvU0zT/g85cZkNEb9B0jJuZQnHURklCksAqDH3vFL2klt2Vzb8m@vger.kernel.org
X-Gm-Message-State: AOJu0YxaKENU7hR4f1u1DysIgiXmoN58AsjwtwHKbepZ/uUF0eaJcx6v
	aa6zVYSmJ5W8rwa8mdGJ93imOIKAlJlkbWJyMS3f+V8RzueF1RPwLrb686XiWsA8rSA=
X-Gm-Gg: ATEYQzyb2LO7IgeShyuu6ujU/VP0uSc/YjWqFg3TckTCA4VHBX8dIRDnv0aDZX6cd2B
	We7Eq/a9qCKqy8NuVr7Dhyum+sUoOpx/N0DsXx5/95WXkmpSAOzqae8c1WpwU+J5wanRJgJw4QE
	7v6R9fHKT3tt0ekqEMFyi4tVLpDUOAquTegaR+pZQo4uImGs5FWlDwxGMzEdE4ijbRZOJpLT3Bu
	Ft1xqTpU33g2zFKxCRQ+kIZjofLvHYG/TiMUszG7XeltS8w7xzWyW8sS/4zpwoUt560F5Pm34Is
	k3/U8PN30u+aTEmSHEphpL/8CVhkJb82OFcwYw0WChvQ7YDYXhJ85BC4M+7ltFikbhBBQJsQehU
	3d1ic1qvYDjueAd7NVT50Mn6GZ0lqIQNT7VF1IWP7XvELUroIb4VPwPBuMYjFyBLWlctqACHKDD
	AV5IVBnO2WjFFCaZLK665XJTza+NzaSoRfQ3EHTunxuhbEu4JaLZqn2U+Cwcjk2ldWGh6HYDg=
X-Received: by 2002:a05:6102:94e:b0:5ff:c510:b7e4 with SMTP id ada2fe7eead31-601def30c4fmr1459832137.28.1773245557115;
        Wed, 11 Mar 2026 09:12:37 -0700 (PDT)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-601de6c47a9sm887985137.1.2026.03.11.09.12.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 09:12:35 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-94aaa5d3bfcso7902156241.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:12:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVfbRM3v+KT5xQN3VZOfwD3VtT3kksLseT14hu3YI5QqtX3HPtW7OqnBw8d61bXhB6RJE3Y1kYxLqiC@vger.kernel.org
X-Received: by 2002:a05:6102:290c:b0:5ff:d192:ff22 with SMTP id
 ada2fe7eead31-601deec1db1mr1359334137.19.1773245554633; Wed, 11 Mar 2026
 09:12:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306143423.19562-1-john.madieu.xa@bp.renesas.com> <20260306143423.19562-16-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260306143423.19562-16-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Mar 2026 17:12:23 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWMCqPZC2o8GMaRkJVTE3-FAtbPB3h_aDjpND6s=FWbZA@mail.gmail.com>
X-Gm-Features: AaiRm50HgMmG-2Hd3S3CzPU1H5WBB19C2AdyrH6AqIP1ufq9nQI1hgHf7Jj5-NE
Message-ID: <CAMuHMdWMCqPZC2o8GMaRkJVTE3-FAtbPB3h_aDjpND6s=FWbZA@mail.gmail.com>
Subject: Re: [PATCH v8 15/15] arm64: dts: renesas: r9a09g047e57-smarc: Enable PCIe
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be, 
	krzk+dt@kernel.org, robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org, 
	magnus.damm@gmail.com, biju.das.jz@bp.renesas.com, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,glider.be,google.com,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-274223-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 77D96267312
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi John,

On Fri, 6 Mar 2026 at 15:36, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> The RZ Smarc Crarrier-II board has PCIe slots mounted on it.
> Enable PCIe support.
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
> @@ -122,6 +122,11 @@ key-sleep {
>  #endif
>  };
>
> +&pcie {
> +       pinctrl-0 = <&pcie_pins>;
> +       pinctrl-names = "default";
> +};
> +
>  &pinctrl {
>         canfd_pins: canfd {
>                 can1_pins: can1 {
> @@ -167,6 +172,17 @@ rsci9_pins: rsci9 {
>                 bias-pull-up;
>         };
>
> +       pcie-clkreq-n {

Please preserve sort order (alphabetical, by node name).
No need to resend this series just for this change.

> +               gpio-hog;
> +               gpios = <RZG3E_GPIO(4, 5) GPIO_ACTIVE_HIGH>;
> +               output-low;
> +               line-name = "pcie_clkreq_n";
> +       };
> +
> +       pcie_pins: pcie {
> +               pinmux = <RZG3E_PORT_PINMUX(G, 7, 1)>; /* PCIE_RST_OUT# */
> +       };
> +
>         scif_pins: scif {
>                 pins = "SCIF_TXD", "SCIF_RXD";
>                 renesas,output-impedance = <1>;

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

