Return-Path: <devicetree+bounces-258954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MlWDwd6c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:39:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D627662E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:39:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BBBD5304759A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70DA433D6DC;
	Fri, 23 Jan 2026 13:37:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F613358B9
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175460; cv=none; b=WN1KLgcWSU49Ggp2up0HsF3IsF17+9oXOIiI5rwhokXafhEfeFc0eIHHcsHJXfYLnekpSmvtde0sZjzCAsS1nIpgZkrqxNkuEVbTsWKxrznuCLH5akPPS6AZuAmO5qpFrTmNQ+A+El2jcaelURxaY5IX9KGLfBDxnW/YgIGG9sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175460; c=relaxed/simple;
	bh=KpEkSaPxGcZCxS2l4iPet5USqgRy1vOPgX2jrVKUpZE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rvg88hBfvdf92Go1FB9vEbVHyXXjuwKg1EMokrEy5uAOtT78XfRju8JVxhIgbm+xJ6bqc8fSsPIhX4hhjEBlgF2SojnHp4GgWmKQW/iW/VlowejHqj7wN3t5YhijXYfOfQ8jRJiQ9HsPcI146n+vji1C7+LG/CRJDyeW8I5OfIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-5636784884eso541788e0c.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:37:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175458; x=1769780258;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Na04EJHnGuwBWJSiBwz4H9SjxnMaXn6qdMG7GO1T4ho=;
        b=ASKU/zYNrzQNU8hAlfhJ/anHAih60SLs6yBNYdQk1/lXjvBTMLltkyLkIu87cTgWhs
         KH0ZlLfpjY0RcF58RlV43OldmDR8E5Knzw5umkE3yGZAn7wPcmfVkz2MMCqjkTJ5eFwm
         1yYa8c7ar/zoRSw3eIJsJ/1dJWcNBd16fvPhx/JHrIyc5cTduUu/M3EPm7Raknj5ba17
         mXvsqUHpmtB4UBAPQ/43CpWd+nFdcsVEv3AlphgRj3exAvtAPV89M85T8ROmjKjPP/ut
         HSpMoJeXwQNU7h426bBgq2hXT4Dgn3q2H+AVyzUnboO0Gg1sSvM0lqHX6FJti68vzxp2
         eDYw==
X-Forwarded-Encrypted: i=1; AJvYcCX945SLWaemQuDZAK/hBB9PRLsmXVZz9HRYVHzRVKYWr92M7+Y69e1qtnaV89POlT2EnTiuWJ0GOB4K@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7MLB7nYMzBepjts2L9cFgQkiWg4yx1SpqstXm9o8VF3V8tN5k
	lE2z8/5oC3Lr5WMEcc9hKAQv+AxrLQ/YTXJ3YEiJIMs3A+o4yl3y6ewg2KOA6EDQ
X-Gm-Gg: AZuq6aKtTYpGW3N1lD5VWzWPo50neYyHfh3ExLNNw+erOS3ozs2oXIrJIXcr/Vc0R0r
	xtMrzT3QM+OMBcxxjkxCYpyGifuNz8nNHPiT+i37q+4hm7H6nD0c6D9e+fiHmWIEqQuynV+HLkv
	s9GceQJV1CWl6m1ZgWBvaXn/Ilmf6Fj9ZrPcA10IwJR2l5/kBGN8gGXyGPG7TgYwHB/amI94MA6
	4tQbu9BItIaZbIWvf+SJNjFRTiU9fVMr0lrSePE+G1lYoCQ9ybhq0FrEMpsiDjW4R1Y4be2ANwF
	mkupjEGof6y211C29JvViEPmwtQqOrcM2G0Dtqe2JsENPbWByRd8JCa+yjnbSsjq0VZK7MvMPwU
	LbxMMvmmJsUCcC5nG/R8y5nTRNycbCEb7IIFCWWEpChcVUv2rDAj5OwqzF6X/vNIu7Az46b1COf
	BuTzJQxfWfJVJu7IFb0GU+2wK9gW9/4zq8ghLngg9vSvJNz9O2
X-Received: by 2002:a05:6122:8b0b:b0:566:221a:ac30 with SMTP id 71dfb90a1353d-5663eb44c2emr703931e0c.12.1769175457514;
        Fri, 23 Jan 2026 05:37:37 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fb9caecsm474761e0c.22.2026.01.23.05.37.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:37:34 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5f535b24326so595028137.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:37:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVTceWrd3ttSiriXsrkC+FA8ZuWv4xy7Sok9EnQUkbl2QTCF8+vaXW3evdIqn5xlTCudlkAzpXGB5Jv@vger.kernel.org
X-Received: by 2002:a05:6102:3753:b0:5ee:a6f8:f94a with SMTP id
 ada2fe7eead31-5f54b9a5530mr796917137.9.1769175452517; Fri, 23 Jan 2026
 05:37:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-9-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-9-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:37:21 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV7UPWCqj4A6097KKT+Es2Zz_mPeJoyJd5qDMudrNx_5A@mail.gmail.com>
X-Gm-Features: AZwV_Qg4phN--rvftcV-K3FmN-Id0724_eD0xvFoKX3QxXmm0sEuNGOexfRaO-I
Message-ID: <CAMuHMdV7UPWCqj4A6097KKT+Es2Zz_mPeJoyJd5qDMudrNx_5A@mail.gmail.com>
Subject: Re: [PATCH v2 8/9] arm64: dts: renesas: ulcb: ulcb-kf: Describe
 PCIe/USB3.0 clock generator
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,linaro.org,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258954-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.984];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:email,glider.be:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B7D627662E
X-Rspamd-Action: no action

Hi Marek,

Thanks for your patch!

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe the 9FGV0841 PCIe and USB3.0 clock generator present on ULCB
> board. The clock generator supplies 100 MHz differential clock for both
> PCIe ports, the USB 3.0 PHY and SATA.
>
> SATA is not yet described in the ULCB DT, therefore the connection to
> this clock generator is not described here either.
>
> The H3 ULCB schematic does describe connection from output DIF7 to
> USB3S1_CLK_*, but these signals do not exist on the SoC, therefore
> this connection is also not described.

That is the case because the first ULCB came with R-Car H3 ES1.0,
which did have two USB3 channels. R-Car H3 ES2.0, M3-W, M3-W+,
and M3-N have only a single USB3 channel.

> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

> --- a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
> +++ b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
> @@ -352,19 +352,30 @@ &ohci0 {
>
>  &pcie_bus_clk {
>         clock-frequency = <100000000>;

I will drop the clock-frequency while applying, as there is no point
in changing it in a disabled node.

> +       status = "disabled";
>  };
>

> @@ -475,6 +486,16 @@ &usb2_phy0 {
>         status = "okay";
>  };
>
> +&usb3_phy0 {
> +       clocks = <&cpg CPG_MOD 328>, <&pcie_usb_clk 6>, <&usb_extal_clk>;
> +       status = "okay";
> +};
> +
> +&usb3s0_clk {
> +       clock-frequency = <100000000>;

Likewise.

> +       status = "disabled";
> +};
> +
>  &xhci0 {
>         status = "okay";
>  };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

