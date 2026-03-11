Return-Path: <devicetree+bounces-274145-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCwvAnx9sWmACAAAu9opvQ
	(envelope-from <devicetree+bounces-274145-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:34:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9C2265776
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:34:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 323DF30154A7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67DB5374752;
	Wed, 11 Mar 2026 14:23:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345AB37CD40
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773239028; cv=none; b=GbI1JyhrGtn5/1dIn5183awiOHQhujhFO+aUDpBrzZC/g+iS8rcCUifGRYPdupTrFGyKAheg9cgDXDGqGaj53fdPx6Z4pVUVn/C/pK2/WBQ+43IAlpIgb5F+U0i0q+euiIJpW9iwJWmeF6F+rIxcIIK5ES4CMoFKvIT2rqgrccA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773239028; c=relaxed/simple;
	bh=go8xpircWavEUATmrJLyNKBvdIyWrelHrEc3NwgI0+o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uRCk0JS+J+2kwFPOR0sZKdkWVFeXcCAmYsD9Fgtk6PKMkyQi6i3YVHTvN/+imalBzi5WMZGTW8xv1zBGliVyNmsiocFeBS3lfXGX6JTVnHFYf+6sgAsQOy0gnAU6hjc/9NyhP35/u0IFbOj+5RzrrVISgk8K9SveL5WVQL/zsBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-94aca174532so3703914241.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:23:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773239025; x=1773843825;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ncWO+6+MzE/QBP1FJeMJxrqlwwccwp83MKM1cztq0jk=;
        b=qWE/7LfFza14Z9LrKxWXYbetpiE2L5yqWkf+mH4RSsSKQpJKAo/pcdhtDTyXRjMidT
         Z/qzrqmy3WSH3LTJVcY8m87k11zFmLwxdnystQg2+sGUKjqTUd/wYwKKDxyy+f5jWsJ+
         h4dD/ZBziAwVzjHNziP2x2JcxYj1OfiMfgl+1/IM1Q+QbXaAN7jzHJqTtotS73XE3vHg
         Ru3CuFj5PfFP05vVm6FdjiRaRHdOf+UNNYBMAu2qQa8cupg+nUhTg2HtshvkenE3N7ag
         1Axj5vMmdKk/UCYefew6VU978CpU4pWIvP5e126kuq+3CWI97xdv2No/caUK+ivN9bel
         FB1w==
X-Forwarded-Encrypted: i=1; AJvYcCXqPSf8tw8CgI6IWdwWOZtf3KbDOHWPccr5awDn2kZCn0q3RWEskDICqbdiwE2zlJXVN7vUFhOG964D@vger.kernel.org
X-Gm-Message-State: AOJu0YwtzYGdZ3o0yf8Kgg7/02gdpAa2imZbNWyIiTHjweKC03dODZNx
	QlANJUaBzP13HIB+vYDEi+XSj9dZCkrnHQXJ31w7Vg1OhL+GOyUBKYp2hfnkSTB4ufM=
X-Gm-Gg: ATEYQzz7D8kpHfqJDAU0X//Hxb6K938SfAgvt3Dn1xj8qHJbJCWc7glMXve7U3GszAP
	WoceZMeNuXbHn9bmY5yBV2GWYRMEsc08CAwIuKkxS/0fmD1X5Qy+yhyPiSDkE2Uf/d/LXhee5SQ
	WUfJZ/v49WPWX5qKk+CrTMYLzh1ERu+OiajYi5Z+39UwepGIYhNYYVyVkOUfOOoY3/9RjgvsbL0
	BQI+W2Sf82uRRHqTX6fIe/iI7DLfAR+8xx7mxZgBNoLWfL4y04cE4X78rIrtmwJCtzl2JPFGLXo
	wp5J0QeFScgIog7BirIoLI7LX4uXey2LP0IdRqwsKCq2rZAG8R0pQB9b53shPfpqiBEYVpaR/hH
	MeiOis2LS+raBpO+y/GmpYArqGNr+c6R2KCKeIjJHvEeGRVkUHbAuyfJJFCXvZuFwBhU+aH7GjS
	uLQSJSXR4n/PmDFB+TGhQrsNoBC8lAuG+4KFMhzrk1e1eEY5KfG0LRadU4i8Fk
X-Received: by 2002:a05:6102:508f:b0:5ff:a16b:93e1 with SMTP id ada2fe7eead31-601ded028a0mr859487137.9.1773239025170;
        Wed, 11 Mar 2026 07:23:45 -0700 (PDT)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-601dea9f6ecsm755228137.10.2026.03.11.07.23.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 07:23:44 -0700 (PDT)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-94aca174532so3703909241.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:23:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVr6jDYYzURCQnoWOzgJqvDpOYzkETjv73ynXd5TKBrmXwEJURtnWtGDCsOIWpJnkpi0tm/HpKmUWN7@vger.kernel.org
X-Received: by 2002:a05:6102:370b:b0:5fd:fc84:4b0 with SMTP id
 ada2fe7eead31-601df054b88mr864838137.35.1773239024427; Wed, 11 Mar 2026
 07:23:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260305220023.28257-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20260305220023.28257-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Mar 2026 15:23:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW7CoF+rgOE6f+XmMa_FdG6Mjctqr+uqc0suowsvOqH3Q@mail.gmail.com>
X-Gm-Features: AaiRm52GN1CKgqB0wsDbUuGRIYTkN2gq8fq9aGDHU_hT_tH6VTYYIfgjHEYxLsI
Message-ID: <CAMuHMdW7CoF+rgOE6f+XmMa_FdG6Mjctqr+uqc0suowsvOqH3Q@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: renesas: r9a06g032-rzn1d400-db: add QSPI
 node including NOR flash
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-274145-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sang-engineering.com:email,glider.be:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:email]
X-Rspamd-Queue-Id: 8A9C2265776
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 5 Mar 2026 at 23:00, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Enable the QSPI controller to access the connected SPI NOR flash. The
> NOR datasheet may suggest faster tuning parameters but those did not
> work on my board.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>
> Depends on "[v5,4/4] ARM: dts: r9a06g032: Describe the QSPI controller":
> https://patchwork.kernel.org/project/linux-renesas-soc/patch/20260205-schneider-6-19-rc1-qspi-v5-4-843632b3c674@bootlin.com/
>
> Changes since RFC v1:
> * dropped RFC status, QSPI driver updates are upstream now
> * use KiB and MiB
> * use reg address in node names
> * dropped "qspi0:" prefix from partition names
> * explicitly describe size in the "remaining" partition
>
> Thanks, Geert, for all the suggestions!
>
> Works on my N1D board and patch passes 'dtbs_check'.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

> --- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
> +++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
> @@ -300,6 +300,84 @@ pins_mdio1: pins_mdio1 {
>                 pinmux = <RZN1_PINMUX(152, RZN1_FUNC_MDIO1_SWITCH)>,
>                          <RZN1_PINMUX(153, RZN1_FUNC_MDIO1_SWITCH)>;
>         };
> +
> +       pins_qspi0: pins_qspi0 {

I will replace the underscore in the node name by a hyphen while applying.

> +               pinmux = <RZN1_PINMUX(74, RZN1_FUNC_QSPI)>,
> +                        <RZN1_PINMUX(75, RZN1_FUNC_QSPI)>,
> +                        <RZN1_PINMUX(76, RZN1_FUNC_QSPI)>,
> +                        <RZN1_PINMUX(77, RZN1_FUNC_QSPI)>,
> +                        <RZN1_PINMUX(78, RZN1_FUNC_QSPI)>,
> +                        <RZN1_PINMUX(79, RZN1_FUNC_QSPI)>;
> +               bias-disable;
> +       };
> +};

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

