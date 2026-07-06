Return-Path: <devicetree+bounces-321492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9M8QJ2gGTGrnewEAu9opvQ
	(envelope-from <devicetree+bounces-321492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:47:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E44DC715211
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:47:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=D2DB+V1p;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321492-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321492-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13A96345B7DD
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 18:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 990043C76A2;
	Mon,  6 Jul 2026 18:51:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E913C3BE6
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 18:51:41 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783363903; cv=pass; b=V6gmId6zF1A5XVN9RQVvgkpp3uovjey3JZEcSgCPNyCQdoKQ8baiERIF0WsISUsSlrScm6iSKpxIQX47e3DL/aX62mDExzrcyWrKsPX7IGroMaqVWe3sBslHrCyU3PqKPZDCq8YHwAnYixuOmtGwvNr6sulc9zqV5dnjYw/fBx8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783363903; c=relaxed/simple;
	bh=fCdq0lYopj7korz3DO/dq32zkKygeRyx2BE0Wg8f5OY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pzwow18R+ZXV9DcOApfyCnpgsFGvC21cXQ0F6p0OHG1IswpCRSlsKurWNtlRehBRzI1cvugw5sBxSD2LQ/tusVqB2y/Kqg5yQqbkuqJR7vZlbYPY/1XgfEID9uBTsBf8cvxrsNLvGnDZgzaALmQNXwUPTA8hV0+t3+VA+RQYCEE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D2DB+V1p; arc=pass smtp.client-ip=209.85.128.41
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-490cf3000f0so33426545e9.1
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 11:51:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783363900; cv=none;
        d=google.com; s=arc-20260327;
        b=rWb7N5GmLYscgYUsrLShptdsZ7qNSNQqFFB6IA5ImZWHsOZtMue3bPVBovSGtFfIfF
         Wtni+d2eTUlDy1nRSRlZLzz7PY9sUdY7USgJJIgbzA62KNxA1XassGpWKfnIDM9IRYe5
         TNdxmhjtexK8YcNWJpZWp+4IB+6kkoO+SI4+dkwqV1woVXEgEl9PLVE2EUS5K/H3cQRk
         nto9iDjMU8OCCaqN3DGFUyAsY0cIfZXNWthluZJHKxEzAyIhE2UXz3WkpV72I3Irh1QC
         dOxbaBzWbg8v5bh6f7UkR4Ji3PonfyRf51nfZ5aWQ4O0GcFigKxUINN8dT3ySCfNXnnB
         BsAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/CSAQ86wMiX5Gp6AT84n1QfYe5hGWs1YjlnFkunec7Q=;
        fh=lVUn1Gg5ucq0WUqyEJ0eKgaoL7k6I8aBF0nQphEX198=;
        b=o4rEI8fST+b+E9HIw3OoNi1jpdpUtApvq0vhsgLLwk1l+A/4LkNsEIHKOP74eQLTqD
         k+IlvHiajVJccqRrPrLXuUlr3Z3x0fGHqGOzMHCMc5mdLBLoiXj5DxXgjEZl+j7a4wkw
         FHE8mP4HLaRB6N7Cp0qwm1jPYotxnVkz+Pyxm0lb3z4IZD5mIANp9BuOKdrftCLhzKz2
         qXoD/T2tS7ZtuBR9ZmFG8OXcdFUpkb9/Co/l2ySkUgTPJf1+ErYo4NvC18XFHj9akPFi
         e70dHiivcRmkpSitOLuGyQYr0NRxsm1IDXQcOAC7IUDCtaK4nB9BzZQZhF2XYiZX5m0U
         qSpg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783363900; x=1783968700; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/CSAQ86wMiX5Gp6AT84n1QfYe5hGWs1YjlnFkunec7Q=;
        b=D2DB+V1pu9VZk76gbHmhZs2FWtDSxbjxD+6jk2xSBrzpA7nzl8bqO0aKfE4303aiaz
         3D9r+dis1GGFTHWYfnRfvnZGWQX3jYP0+iqKGWsYowGxafGoUOqWh2NhTNgUJ8H6vXqP
         qfQTFVBcm2UYE/nTJyTm2/E6kr68K1nIhPsZ3wR6ePFV66jqa+sEWwqvItsKYgr4Zv63
         Ik6JoFB8JxYhhN4mwBlNM9lFOUINzhgYN+Zy7g/HpON63rEZ0hiuzuUaB/sRfM6OkYfT
         bnO8xc+NI6TuiuRQui6d+XcjupSpez2q5AjaYtWi0i8+Khha5e5GhyB3lirnGjubuYto
         Tnuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783363900; x=1783968700;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/CSAQ86wMiX5Gp6AT84n1QfYe5hGWs1YjlnFkunec7Q=;
        b=V+aO56QXI115fBvBfzJSNTn2zAeTHZT1lGKniPZhq1J6VAqYptB4n0KA+Bm5IfdGfJ
         5a8U0rW6+pTwsVsTdjNtBpzWfcOY2nrj73RVmyZiOLdlW2fReYxNkOwyE5XDaR6GYFpE
         blQlmyX+XHQ7kdd6QBsQj5sfeLFgxE8O2oBnLUinjOZHfPgxWPoJec03dcQwe1zJZyZk
         bWjsNRXjboBLsxkTDOCECgrsIUr9sACFeVlpkwLrHfZ3MGpH0ehDIrEDbGN+bCV3H84u
         ZaTtW0MExljEmutwdR8k8WuAIl+lIB+iGedVkYrYwSOm4Bzl1Nqnc2uYMxGrKPPguL9L
         6S8Q==
X-Forwarded-Encrypted: i=1; AHgh+RoFZL2b9xX/9irBu3zYrwwlgcAf7n/RJPlZwWSzFJiLDtDMlLi6U7bDt3dx/Oi07MbGbSImnIUB9w0M@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt1v5ILCcpvNJmZ3DV4WYQ6K6tGoCeL/3/wpsAqudYONM0WxWW
	65JwtS+vdT2RugWdoe62XMmA9skCqQlJXIpVCjY42auQgvuVMHOIQnPC443ONMd/1OmzJxJXciB
	pfSdco5bRlR0oR3pVWVOO3YTvtvmuhX8=
X-Gm-Gg: AfdE7cngIML02ilPRu9IppppHaHNiXKE5GniEnhIwk526fovaAxIO4673F76jfBVley
	n6MxOz1eHZj1SzaIQ7m24PlwqagR1+PIny5J3cGKAKmURwYqpJq289WHqlJoM2Kb3ECKtOk1BLF
	VV4b6o/GmYvk8RgR2eX9bNSxm3f/UFYiuPTV6enVIEB7MYwGTam044dLXqBXW13+9jemto2bsAU
	wyUrsbkeNwKf5r/anArQooeoeMIOpkmHBAHedP8iaYaWM3Gg7zPieFoeyv8MLXORNgXkPr6sA5I
	1rVBb4l42lefHV4LKmnqebNUKCf/NjulMAAVyKIof0rjN3IAon+3bVrwdw==
X-Received: by 2002:a05:600c:4f84:b0:492:5030:5e7b with SMTP id
 5b1f17b1804b1-493df06a26emr18953135e9.10.1783363900368; Mon, 06 Jul 2026
 11:51:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260702123112.161160-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260702123112.161160-3-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdUTDRkq-WaXNxGzBLAEY90cn1i_-UOuDkS3PBs3xKooFg@mail.gmail.com>
In-Reply-To: <CAMuHMdUTDRkq-WaXNxGzBLAEY90cn1i_-UOuDkS3PBs3xKooFg@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 6 Jul 2026 19:51:13 +0100
X-Gm-Features: AVVi8CdhZOFc6S2n05FV9nlTvx9urpSzJPBcWirnqMlmue__2oziyda_FreEG6M
Message-ID: <CA+V-a8vxjms+yqzO_sfFo19nMAuhZ5aFSuBsy1Hm+0PLFio3KA@mail.gmail.com>
Subject: Re: [PATCH RFC v2 2/9] clk: renesas: r9a09g077: Add SYSC regmap support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Magnus Damm <magnus.damm@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, 
	Prabhakar <prabhakar.csengg+renesas@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:geert@linux-m68k.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:magnus.damm@gmail.com,m:p.zabel@pengutronix.de,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-watchdog@vger.kernel.org,m:prabhakar.csengg+renesas@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:prabhakarcsengg@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-321492-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,redhat.com,linux-watchdog.org,roeck-us.net,gmail.com,pengutronix.de,vger.kernel.org,bp.renesas.com,renesas.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E44DC715211

Hi Geert,

Thank you for the review.

On Mon, Jul 6, 2026 at 11:08=E2=80=AFAM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi Prabhakar,
>
> On Thu, 2 Jul 2026 at 14:31, Prabhakar <prabhakar.csengg@gmail.com> wrote=
:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Add System Controller (SYSC) regmap support for the RZ/T2H SoC.
> >
> > The RZ/T2H SoC features two System Controller (SYSC) blocks that handle
> > low-power management and access control. These blocks are defined as ch=
ild
> > nodes within the Clock Pulse Generator (CPG) address space in the devic=
e
> > tree. Implement support for creating regmaps for these SYSC blocks.
> >
> > Register the regmap using of_syscon_register_regmap() against the CPG
> > device node so that consumers can access SYSC registers via the existin=
g
> > syscon phandle.
> >
> > Add a sysc_init() callback to the CPG/MSSR core to allow SoC-specific
> > initialization of the SYSC regmap.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> > v1->v2:
> > - Made use of for_each_child_of_node_scoped
> > - Moved sysc_init() to the end of the probe function
>
> Thanks for the update!
>
> > --- a/drivers/clk/renesas/r9a09g077-cpg.c
> > +++ b/drivers/clk/renesas/r9a09g077-cpg.c
>
> > +static int r9a09g077_sysc_init(struct device *dev)
> > +{
> > +       struct device_node *child, *np =3D dev->of_node;
>
> error: unused variable =E2=80=98child=E2=80=99 [-Werror=3Dunused-variable=
]
>
Oops, I will fix this in the next version.

> No need to resend yet.
>
OK, I will wait for the review of the other patches too.

Cheers,
Prabhakar

