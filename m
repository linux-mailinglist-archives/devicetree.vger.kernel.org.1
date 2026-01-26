Return-Path: <devicetree+bounces-259576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIhNG5qVd2n0iwEAu9opvQ
	(envelope-from <devicetree+bounces-259576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:26:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AD58AA48
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:26:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 436AE30055BE
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D783B33D6EA;
	Mon, 26 Jan 2026 16:25:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8A12264A3
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 16:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769444759; cv=none; b=XLf1s6i56O57Cuv1Dc5kgxfKz1kZ6uJUoAtpibkrOaR+/vC7m+zGVG86TCZ/MhyWeYJLWmqZaX4aG6zQOoX6BSpFA7EkTa7OeIQgG4K1F532uGFR19XOmveYigagy55MwTZirXQYKewOmRwM+23jXdZi8dbsCFAVyNPgRVE5VOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769444759; c=relaxed/simple;
	bh=jeHSu/0rLnErxu+4kacTQN7/ETAke1VzTLPnHuzsYbM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gBVhSoJm0SFTullJ50Pdg/97x/f2ZrV0srCMRGIH522L4laCc/Kh/uoZARqzl/KRxMvKcXYK5cOpjdqfeeW/U0lI2BnOOBdIDq1YqjvfpvrAyglu0qMYNl9kBN438m22Jpp6ycLLDveciBHZhKE5Hc9w+hhQSo7hr7GiwMNsR5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5f52fa0d48dso1157642137.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:25:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769444757; x=1770049557;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U3+3G5DpRreCC8uJSTxge0l/WrGM3k8EjLKp52pyAPM=;
        b=vDorstl1h4Wbk2xlRx2t+/UBnLRIeXaOMETITY9z96p1918A8XFXU5IgGeFBgJplod
         ARy1PjOZAqTmXlDOEH5dVpQSaqPBCCN+cfs3HfsjLFlD1qglHQ1yALHoB15/tf/2VRvm
         iKTsTdMfPQ5d25DoFBgaJKi+ydfmu4uqbXYYrmf48ylMfEEs8u/kurz9GtxSd1KhAUNE
         18b5ZVUA+oBVW/1MCYKVgyNHTK80BU9P2fFHGewk52A/92+i07qif8ALdnOk8ub4J8bS
         Ern96QdsLpW91yIiVuPwdtz99ZWs6F/eCkQxf4G+VCb4F9oP3qTvn3nS64B8Kc3DoTHr
         D0pQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnRnFOCsaNwbNFK2cUvImI40Jt4PYicKS++IEpmi/5+UnKw/nLCOyo3GjkLYgOuYwqktynpX4LFd6O@vger.kernel.org
X-Gm-Message-State: AOJu0YzzXUhEq+ZUn781+B1fW2PaJLEihkYyWHKXHqDsPJM5apZpqcEz
	kGeTMb/8GUpvYF/makD4vNlnS1eNjZ+XCYIkyAv7eluSH0ptQKmwxKSUKGWdS5L+
X-Gm-Gg: AZuq6aIqw4ceiJd4vv/7IeWujHtwJl8F4ZQa7owROTqVBuu6lddfO3FZUV3xDdOQ62L
	BRJ++aUPNiXcUddZav9u3fX02S8HfhJntn8GRGQBIN1quK6HeIiMg6j/XQONl5hj5tDLa5vk8gM
	ANtKvWK3HosRz7+1PLEc6CewPgn8JRdNy8nEZS9FtNOaH7hTeA8fr26PbOlOXBlptPN21gDCD59
	uJPReV3Z0amWS9Mxe1zwZhqLqSAMjnwRrmTQo8+ye1ZufiCms+bekKqLsmgN4b1u48toIpe4vVA
	g7VobQZaHmPLZM0C18rMaf5QSWh4JNHbCAFJfqvvH8otKxZFokzZZx5xBZG+s4bl7Z2zK6OH3vg
	krUg1f2uDl+08r4DteTTSpo0883zRZ58T+lg9mxsNGb3M4B4U+AwWfCowZfJyN17GqeFzPh8XXB
	L4EqBkkyZ8RijVpJO8RAITQEMXdD+9lGNyxvR/hCbVZay9FFuoWMJv
X-Received: by 2002:a05:6102:418c:b0:5f5:27c4:94b8 with SMTP id ada2fe7eead31-5f5764b45f8mr1430604137.28.1769444756980;
        Mon, 26 Jan 2026 08:25:56 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f54d66fa23sm1933956137.13.2026.01.26.08.25.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 08:25:56 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5635f3eff8aso1014251e0c.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:25:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWA9zfJeuNll4Dv7Bhz/urp7buLs9utMxVjyV68yYC+VGeKCOZglnX0Ofu+8t+chOxD2pD3N6YuVGmP@vger.kernel.org
X-Received: by 2002:a05:6102:e0d:b0:5f5:487c:83cd with SMTP id
 ada2fe7eead31-5f576578dacmr1239125137.40.1769444756176; Mon, 26 Jan 2026
 08:25:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120150606.7356-1-ovidiu.panait.rb@renesas.com> <20260120150606.7356-5-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20260120150606.7356-5-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jan 2026 17:25:44 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVOCFS-31HA2Uxiu7CSmiOf_XwPk1kijYf_WkD0aJJJMw@mail.gmail.com>
X-Gm-Features: AZwV_Qj7C5QJV_NVmMjfo_DCwWSlKdND6uVkPz6tMvHd1cTcE5aKBSokWc6r0H8
Message-ID: <CAMuHMdVOCFS-31HA2Uxiu7CSmiOf_XwPk1kijYf_WkD0aJJJMw@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Add
 versa3 clock generator node
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	biju.das.jz@bp.renesas.com, fabrizio.castro.jz@renesas.com, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,baylibre.com,bp.renesas.com,renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259576-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.69:email,0.0.0.12:email];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,mail.gmail.com:mid,linux-m68k.org:email]
X-Rspamd-Queue-Id: F2AD58AA48
X-Rspamd-Action: no action

Hi Ovidiu,

On Tue, 20 Jan 2026 at 16:06, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> Add versa3 clock generator node. It provides clocks for the RTC, PCIe
> and audio devices.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
> @@ -108,6 +108,12 @@ vqmmc_sdhi1: regulator-vccq-sdhi1 {
>                 states = <3300000 0>, <1800000 1>;
>         };
>
> +       x1: x1-clock {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <24000000>;
> +       };
> +
>         /* 32.768kHz crystal */
>         x6: x6-clock {
>                 compatible = "fixed-clock";
> @@ -277,6 +283,25 @@ raa215300: pmic@12 {
>                 clocks = <&x6>;
>                 clock-names = "xin";
>         };
> +
> +       versa3: clock-generator@69 {
> +               compatible = "renesas,5l35023";
> +               reg = <0x69>;
> +               clocks = <&x1>;
> +               #clock-cells = <1>;
> +               assigned-clocks = <&versa3 0>,
> +                                 <&versa3 1>,
> +                                 <&versa3 2>,
> +                                 <&versa3 3>,
> +                                 <&versa3 4>,
> +                                 <&versa3 5>;
> +               assigned-clock-rates = <24000000>,

Shouldn't (at least) qextal_clk and

> +                                      <24576000>,
> +                                      <32768>,

rtxin_clk be overridden to point to the corresponding versa3 outputs?
Same comment for [PATCH v2 5/5].

> +                                      <22579200>,
> +                                      <100000000>,
> +                                      <100000000>;
> +       };
>  };
>
>  &mdio0 {

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

