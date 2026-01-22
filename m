Return-Path: <devicetree+bounces-258550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPWsALdZcmkpiwAAu9opvQ
	(envelope-from <devicetree+bounces-258550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:09:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD546AD4B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:09:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F0A0E3002B78
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8BB839F8D6;
	Thu, 22 Jan 2026 16:35:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FA439F8D1
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 16:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769099702; cv=none; b=KMbsi8VLFd2W9zq1XrugwONYINk1rSKc9XVP4EIRZtcC6x4u4aURdr6CtynL39DsN5dPsMTEi/uokLz+qqvCniIksGT1A3DvUMk7WMuUGpJR/z14WVZzgVIIe4n3CU70nKmP0crgc854vEihSP181y6tr+e0VmaRh6yhv9+GOfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769099702; c=relaxed/simple;
	bh=KsGWBtdWAcOuouRcNgHYXyDSxWrjlkEILO0o03DoYzE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bHGmn7EOXmnmfuDPUnC3MToNqf+Yip3wgyEyZl1qKCV5rbZFqYrvsD8dA2LqzfQtBhLgeemaaiyg+v01/mWof4TjAItouBaTUqj93EBGO2t7Xv1UxUz3Cxgh09MZVCFhT/B7xSov74FVs9c+wo3wIOLbfwZnrSyCxUMwVmVAXwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-8947e6ffd20so11245796d6.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 08:34:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769099692; x=1769704492;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C1WfrbwhdDFpnMP8QjUxFisYdCm9ShlmwjTsosQ6yyM=;
        b=hcNS9lmAQiTaUjanPqVs0A9hdCf6YRvAabfEaZrf2oCHyzsu5uypTg6GN06g6jikUH
         f9c3z/uw8e/mSeee2dSFTRI6GkYfJbE2vwM4uGAlzBltxedn4ZR2AI3tTV/h2EN0CZ2H
         dlV7tKLbOSfSssgyubzsBIt++9J5bmohBFOMMhGK0iRzKJr/1lXAWlbcU0AO4wvzbwyA
         bA3dnPt+Ba2LMLyBXw86QrnWPQsG2tGOUEfeEY/rCFHPpTB7n1yBGXgkrX0Tafdl0FKY
         AVDYn0LngZyN3VIUxXxLXAErNiVNdyj1CIQyivFk8sx0nOsq43JsPpgXs5oUm80MIAEI
         lpug==
X-Forwarded-Encrypted: i=1; AJvYcCXBLrjswkudAJPmRq+AMqRLZxcDHnvDVCutYSCqDoWn4N+eylhlf9FjYx4cmkqNHcCJf4cmwCvvUSbA@vger.kernel.org
X-Gm-Message-State: AOJu0YzXMBsE7ExtQamsc0qHFMC4buqHVxMytQ1Vd6XEbtGAsl0pnpSQ
	Oszn0kJlkR/5fh2fXrTgkaR+0gO25OEg42TDUJ48dgRXb1Q8S8D3p/d1GAmZ9Hoj
X-Gm-Gg: AZuq6aK5VCQLzCs4pL8itYWHoCNNxAFYI0YiolvGxeU53wC/uyWGpCis7L1SkdI2GC+
	INZqrktttilCgBG2sds0jqOiF6mEln8+Xd2Uph6A4u4siCwjj0dCJssuQ6Dt8FHjhDNnKZ3Qtjh
	VWHPz/oMfSV/cgtbO0Ep/HjNUnZcBK/zxqlPlC1dYJpmFUhrNfEYHkQ7yv5+bzm+jOnfLMvzumj
	Y0tuvtqwL05nXOKFVjUWSDjbtEZ7lX8DU7uNbGF3UuXImjn/IoUdUdisbw992bAN+hvu6Sod9pb
	sRq/ZYR5LWMI8JR4M6l7a8d329y/ENCM4S87qsVYSiXy7BvK2aPQc4XejrPziD8ckeCZhINISCM
	Q5IJrdmtVuAAEjERzW+T3jOVeYBl5apYMyQ/LkKFf3vmi6TV3HeAyQVULZSUiuKQVJaqXJsf+JH
	tESwiVEB+Mz6g+/UKXdRGlqZFg8YNQ20zJd8KaigZJ8kOBoYGb77F5
X-Received: by 2002:a05:6214:260e:b0:894:81db:af6d with SMTP id 6a1803df08f44-8949021b484mr154656d6.56.1769099692189;
        Thu, 22 Jan 2026 08:34:52 -0800 (PST)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com. [209.85.222.172])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e6c6605sm146976216d6.44.2026.01.22.08.34.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 08:34:51 -0800 (PST)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8c5389c3d4cso125333685a.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 08:34:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV5Pr9Qs56Q2pj+nNyW++QRw58Azbpz17p+y6whycrO4LuH2OByKA2Jw+HgYWna5P7qdVRWggHJLcBJ@vger.kernel.org
X-Received: by 2002:a05:6102:c88:b0:5db:25b5:9b5e with SMTP id
 ada2fe7eead31-5f54bc6f96bmr75281137.22.1769099373234; Thu, 22 Jan 2026
 08:29:33 -0800 (PST)
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
In-Reply-To: <TY6PR01MB1737738E302D0BA716AAA2650FF97A@TY6PR01MB17377.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 22 Jan 2026 17:29:21 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXk6A2-isnLQCgrjjWRX=pYKbUvVz-nfDwy72i1qo1-rA@mail.gmail.com>
X-Gm-Features: AZwV_QhbFTwa7jTSNEghn2CR26nFA8B0X7gABEL6FIix2T_XBXqsyJgYshZo110
Message-ID: <CAMuHMdXk6A2-isnLQCgrjjWRX=pYKbUvVz-nfDwy72i1qo1-rA@mail.gmail.com>
Subject: Re: [PATCH 03/16] clk: renesas: rzv2h-cpg: Add support for init_off clocks
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,google.com,gmail.com,vger.kernel.org];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258550-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[glider.be:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,renesas.com:email]
X-Rspamd-Queue-Id: 0BD546AD4B
X-Rspamd-Action: no action

Hi John,

On Thu, 22 Jan 2026 at 17:21, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> > From: John Madieu
> > > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > > On Wed, 14 Jan 2026 at 16:36, John Madieu
> > > <john.madieu.xa@bp.renesas.com>
> > > wrote:
> > > > Some peripherals may be left enabled by the bootloader but should be
> > > > explicitly disabled by the kernel to ensure a known initial state.
> > > > This is particularly important for PCIe which requires proper
> > > > initialization sequencing.
> > > >
> > > > Add new macros DEF_MOD_INIT_OFF() to declare module clocks that
> > > > should be turned off during CPG probe if found in the opposite state.
> > > >
> > > > Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> > >
> > > Thanks for your patch!
> > >
> > > LGTM, so
> > > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > >
> > > However, I am still wondering if there are any possible bad side
> > > effects of disabling the PCIe clocks, e.g. when PCIe is in use
> > > (network card, SATA card, ...)?
> >
> > I'll test and let you know.
>
> I finally did the test, disabling the PCIe clocks while a WiFi module
> connected was performing pings. System got stuck, unusable until next
> reboot.
>
> Was that the kind of test you were expecting or did you have a specific
> scenario you can share.

Not really. I was thinking about a scenario where the bootloader would
configure and use the PCIe device, then transfer control to Linux.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

