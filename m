Return-Path: <devicetree+bounces-258915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPyeGmdfc2l3vAAAu9opvQ
	(envelope-from <devicetree+bounces-258915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:45:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D7075501
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25E3630B0314
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 11:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E253036AB55;
	Fri, 23 Jan 2026 11:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="awxm0fyh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1894534CFD4
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 11:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769168384; cv=pass; b=CIbwNFwU8jDgBfrbN7Uque8Z/D2Suw+fjY1lpFHavE8K/bRpgKT5eH3C7A1aAYYGzVk30oyD4iRvIWWHHb8lZHLwrCiLXJ+wYpSv/rRhy4ESdu61BJC1k/Ttn3AXObg6T+p02NXQV/SI2iv4KzaW4GURLg1jiUgI6ZH3Ya63a+A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769168384; c=relaxed/simple;
	bh=aisLc2ieM5f1wTihT8PCwhs96cakpU8DJktm3rN7jzE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U/NNha4Vuz7m8GwWAWxuT1UZAcnykl4zaM5uUXXN/VOVBP48RNZBvLu5vDPbY6lvr2wsz/oNxLJc8A0wfWMM3jzto2zDXbp5Y90BEJTAjcmMlFpKssUEDYMkPF42HrZh3qmNMgs3tdSJis6dT5FShBErs0alB2jCkT8St9oSlNo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=awxm0fyh; arc=pass smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47d59da3d81so20327115e9.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 03:39:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769168376; cv=none;
        d=google.com; s=arc-20240605;
        b=lCB6sx+BXss+h7rtwN118p4S0tqVl6eimVdNi/AOIcRAu+EL4aLw3M/B41p+23XdAD
         KkXt/vL9xHN+V9mrX4YkUjznwpvsb8ort7yD7ARP1Z8cJOnr6EvLLgLr+Wtas/+Nsq/D
         L87YPg9SF8JpNOMmCB2+Va8rVra+G7/YppJXfL53++uhqRMZK4bTUXCWmvyMoPyg0Fkf
         JZrSgoWd+s8XE3wWj2/iTr528S+9oTLw/TfgiH91F4c67K4KBllnkSkHMlPYdKgfpN5o
         JjNkcUsBpFgPn5v66puY521WUAehLcUGlIAT5lf4JNbZDf/kiuuTzxUplJnIssiXeKbU
         h6iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=aisLc2ieM5f1wTihT8PCwhs96cakpU8DJktm3rN7jzE=;
        fh=FmDHwAuyHBjnKS/Dn91ehnYVfJ45QIuoFZKNl5p8Nlo=;
        b=PFQNctHUFtVhoTLTdh5lflVzv2U5+Ht9EWIKJL7SW7XjBWVoGs8NqcznUXMIXuQbRu
         ayJFmYDG5Nh95nvtR41AO+0dj+MYGPkCPTHhpE0VMG8BLtyAUkv+3+221uogMJ4R/v/O
         B7S3iY2gD8LPAfPU4u3w5s0Pz19NlURrI7V5fzU7EKP/trlInzzcRhTSQZlbQ9WmRFdk
         1uyS0GtpDWMzU6W9W4Gs9LhhtAnIAc3tidH3Fd/MKmUp6saGrnE2mq9pckMuWjioVQa2
         RiT6MjWltWqJ9nacROrWETaDRpP1z0m/DfjD8SkKTjaIVNv7bTKqa5WMVgIJ5Y0e69jR
         I09w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769168376; x=1769773176; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aisLc2ieM5f1wTihT8PCwhs96cakpU8DJktm3rN7jzE=;
        b=awxm0fyh/ZuqSBJYDoyOrvalD2PTMdShhFS5lFlTUkzxdPCgj4vDnskcz+OY8H2NKx
         RF6a/PkK5l8UOMmu4I6gNf8LVzTk58x1Z6ztbSpBWclkK3hu5G48x06ZF7KaKHLjw80q
         0cLEtRETx1w35OlP6pf+Fa8hZn+sbzBlGxp3wa1Z0pSNpXmcsg6Xbulh/dwXfOJ2DR5h
         sRB54auc0BeL+U91KMGU0Y/4leHeewREx9Tz0zhEIrvjfuISZEX/sXqWezZfaxGWjEQc
         YJkLfgxWjzP489vpPygx3Cjvye5KnSD8edaxL4DJpTBqfZoIZ8mxLlAgPI0mRixsB9Hd
         v6vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769168376; x=1769773176;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aisLc2ieM5f1wTihT8PCwhs96cakpU8DJktm3rN7jzE=;
        b=hrteql9orEv6W9F8PAWnghN7vzqyfpuoF35xQH10NCw23UxbOMo4F4BqLYfItqC73S
         clm+NmITko7HO1xvGGHSuwv16phtcvUdPVw/nizAYey+MI+jtFm3QOYZgPucYOSe9VDb
         AwPRnXx4wsit655PiPJH03R6gXAHo7CNKytxmKtvnQoulUL1AAHXwz8+bmHvPVURMoli
         OhR6G0TZiwhJ3mKIHUFYcFnZ+9+kXN7wC9yntkn1HZeaGdSAuRfvvfj7+cnygVuphVzR
         EkqjsKr7vVR3qEIFfLKYFFyePKqBGK0HF85E1FbT57g9VRKwnidEEWQVOUAboguMftPX
         iV8w==
X-Forwarded-Encrypted: i=1; AJvYcCVHK6L+TTas3z5U0Lxq9FSr13U/FF6ZFgi0na1qb1t3YojeMQkQwOtbL6EpaueX5bPhQYjlEvjbDV8+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3mMn5lPMnB6OI/kugSIlzyIZ/ShXYr1fLXovnFFl6vk9ZALFO
	KBGZMTZWC1xzZHgNTjaATT2OD+B5fU0PZ8xaup8coJGn9b/k7L3fANo5WYwBZOL0coPZrD9xi3r
	p08xxwIqwtsA/50YtwnbN6YFy4PaiOAo=
X-Gm-Gg: AZuq6aLy9p9BEiQt/YcpcCVu+ADkdKsNodFBdgiUB9dO+3QB3HLGixw98knxx34ZeAy
	BwTCUz1obqBr9T+xqgqTiIS42m4eQHP4XyWOuK8p5bvv/8Z7m00MBAeCRuSIkvxnmE23y5uwyIq
	yYtJY+tTM8+BmWkCNo78I+IMo+5xjcg6vrEiWVQ/4YxJB3mdnn4E0Gww7525aHnel4z9A0Zrjiu
	Q0UYTB3AtpRxarWe5VwsQ1jgTIsig0U21RqcF/cLWPXpKD2/730oRELFIPBqimC2+EV3iYguHlg
	FazPmsH/QsvUgENmEArlzbzpBo88gRAVgYNY+mtVRwwSgFLukB/83xczwaai9lzXdumi5CnTQxd
	YJk9q2Ycg2/gzPg==
X-Received: by 2002:a05:6000:400a:b0:431:2ff:128f with SMTP id
 ffacd0b85a97d-435b1ab836dmr4926768f8f.6.1769168375446; Fri, 23 Jan 2026
 03:39:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114153337.46765-1-john.madieu.xa@bp.renesas.com>
 <20260114153337.46765-4-john.madieu.xa@bp.renesas.com> <CAMuHMdXAAUe_0kboQ9C0AMPn5re-1kCagecp1fMCGramDpXGRA@mail.gmail.com>
 <TY6PR01MB17377AE5807504FFB6594471AFF89A@TY6PR01MB17377.jpnprd01.prod.outlook.com>
 <TY6PR01MB1737738E302D0BA716AAA2650FF97A@TY6PR01MB17377.jpnprd01.prod.outlook.com>
 <CAMuHMdXk6A2-isnLQCgrjjWRX=pYKbUvVz-nfDwy72i1qo1-rA@mail.gmail.com> <TY6PR01MB173770856BD4044A79150F6E8FF94A@TY6PR01MB17377.jpnprd01.prod.outlook.com>
In-Reply-To: <TY6PR01MB173770856BD4044A79150F6E8FF94A@TY6PR01MB17377.jpnprd01.prod.outlook.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 23 Jan 2026 11:39:09 +0000
X-Gm-Features: AZwV_Qi1ncDRUlLnXwWZ1l-P3_ht124RPLuPAwvq1Re_E8LiTcuyHXUL4gel0CA
Message-ID: <CA+V-a8uNpNPCyePQrRDQxaGfN2gZE3-2VvCMs3FOqFaU3mKjLw@mail.gmail.com>
Subject: Re: [PATCH 03/16] clk: renesas: rzv2h-cpg: Add support for init_off clocks
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: geert <geert@linux-m68k.org>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>, "kwilczynski@kernel.org" <kwilczynski@kernel.org>, 
	"mani@kernel.org" <mani@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"robh@kernel.org" <robh@kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "magnus.damm" <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, "john.madieu@gmail.com" <john.madieu@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258915-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[linux-m68k.org,bp.renesas.com,kernel.org,google.com,gmail.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,glider.be:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: F0D7075501
X-Rspamd-Action: no action

Hi John,

On Fri, Jan 23, 2026 at 11:29=E2=80=AFAM John Madieu
<john.madieu.xa@bp.renesas.com> wrote:
>
> Hi Geert,
>
> > -----Original Message-----
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > Sent: Thursday, January 22, 2026 5:29 PM
> > To: John Madieu <john.madieu.xa@bp.renesas.com>
> > Subject: Re: [PATCH 03/16] clk: renesas: rzv2h-cpg: Add support for
> > init_off clocks
> >
> > Hi John,
> >
> > On Thu, 22 Jan 2026 at 17:21, John Madieu <john.madieu.xa@bp.renesas.co=
m>
> > wrote:
> > > > From: John Madieu
> > > > > From: Geert Uytterhoeven <geert@linux-m68k.org> On Wed, 14 Jan
> > > > > 2026 at 16:36, John Madieu <john.madieu.xa@bp.renesas.com>
> > > > > wrote:
> > > > > > Some peripherals may be left enabled by the bootloader but
> > > > > > should be explicitly disabled by the kernel to ensure a known
> > initial state.
> > > > > > This is particularly important for PCIe which requires proper
> > > > > > initialization sequencing.
> > > > > >
> > > > > > Add new macros DEF_MOD_INIT_OFF() to declare module clocks that
> > > > > > should be turned off during CPG probe if found in the opposite
> > state.
> > > > > >
> > > > > > Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> > > > >
> > > > > Thanks for your patch!
> > > > >
> > > > > LGTM, so
> > > > > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > >
> > > > > However, I am still wondering if there are any possible bad side
> > > > > effects of disabling the PCIe clocks, e.g. when PCIe is in use
> > > > > (network card, SATA card, ...)?
> > > >
> > > > I'll test and let you know.
> > >
> > > I finally did the test, disabling the PCIe clocks while a WiFi module
> > > connected was performing pings. System got stuck, unusable until next
> > > reboot.
> > >
> > > Was that the kind of test you were expecting or did you have a
> > > specific scenario you can share.
> >
> > Not really. I was thinking about a scenario where the bootloader would
> > configure and use the PCIe device, then transfer control to Linux.
> >
>
> I can't answer to this exact scenario right now.
>
> The idea of these init_off was from the PCIe host HW manual,
> Explicitly requiring tuning the clock off and asserting the reset
> as part of its steps, while this is not the case for other IPs.
>
Can the PCIe driver not handle it? ie in the probe explicitly turn off
the clocks + assert reset + continue further (do you see any issue
while doing this from the PCIe driver)?

Cheers,
Prabhakar

