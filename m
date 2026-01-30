Return-Path: <devicetree+bounces-261249-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFIMC3jJfGnaOgIAu9opvQ
	(envelope-from <devicetree+bounces-261249-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:08:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C40DABBE0F
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:08:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A3C1300F5FC
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53CF034C808;
	Fri, 30 Jan 2026 15:08:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com [209.85.221.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44EF30F92D
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 15:08:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769785714; cv=none; b=c0Sbqt7a7B5bOY79y2l6d33PPdMOz40YaJs+hXhrqEbOHgfadJXSFPcbbMaZJrrslsPB/UuN5R//xmv7GPYlDBus42L9T9KfTQQ4VjvZ3/lifC0vIjkSEHjeF48fcxoKViheb6TFC+u8kZRon3XIgSmpOpJx5R1F6wkadHGAD/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769785714; c=relaxed/simple;
	bh=ixVqgiNKWlgJlcIKmTWTDEQrvH4ksjQzpSZ+bGRd1qM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q7saNDtcWx5NazKv/2DdmBTByrmnXquWDjgk7236Dez7wLkUNopH+vzwNwSe4MIi4uq35iJk2clFkhBEkjcwF+DAuB6tguiKdDFQpjEM6beNOR9GpKaEmv3UfECpLvPY/gmriF91N/31pm7HqMq+U1kNqOag8WvFkDJ3ru36zwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f193.google.com with SMTP id 71dfb90a1353d-566360cab07so708437e0c.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:08:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769785712; x=1770390512;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dGkx6eA6mbqfFwtrPFINFpkOa49uJ1Td/6euugAjzpQ=;
        b=vf2dxjgB7FGRMW4w5w/7DlyUfKilxvzXJWPY1Wg16lM7uqi0DVqP/UKofs04Fl9Dc1
         o9tHs9q7nxPlawMkl75ReukGcAGY9ujXgrTs/+M9yyBe4Ku7bmsodU8ZoPdkKRviSXiX
         KE62PT00b3ineyDX10Xash+alCV3UzqjIEgp99F5VWCvDzntfcjBlEaF+hAZjgCgR0jZ
         JCaqz7fBGqUn2v2gIYkWEmhzdORUhjqm4o7DOGd+kzXDCVIzOIKsNb+GAvV2cqIo8g53
         s4+STeX33PTOKmP0yLwjxkBn+q0dXSDO75cIiEK7cJpd0yg8d2P8fqujOOWF90LzpXaH
         Oggw==
X-Forwarded-Encrypted: i=1; AJvYcCU9XApVfUOhheD4Q2uhclrbei1SzKDXcMwolnfDLFSjtn9uQOo3RNkof4r+QKxA6jXsyRCpznM5niFm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzcc0nVmiFIkF7PsMroOer9V6NcDDO1mIPRga6y8h4jJMYleRiJ
	Y7FConHYpFj+GwQe2ZvUGj4BxW/iGxAxuO5sYpkExCAJJ0zgLe2FEWNO0xk4f1XWQAA=
X-Gm-Gg: AZuq6aI0CEitH+cuYbBrdg2HLDDhUYoXLZw+onLI16Tl9STDycfhaHRFVARxwYKiNq8
	L0LbZiDBDobRRp4ayeDSv+VxPJTy3aJSfKqKM6hVmXGF4soeBHXmjw7HX/yXg7W/pVh06RdlCf4
	H8RqxEgR2XRtwijfQRp+Cmyx69dzmW+ylhImVckCCP4iG3eaS8FL4JXmmo6Hf8+rluCTzD/jItB
	zplEfcUR2kGkaMArH1Hg3eRmS5+qSf4utW3hFFyvOw25vLMoMNxBDJQhDklwA/JKSfEHxSQrUCF
	qsUxGUQtQkPCwfPGTnnirSAbG+Z3LoAq408GCGUapgg8yXXqAkKchTYBOzhaQZMWH5f+kfQaGZw
	xHlncP38ovd6DBYcvSFMAUqVyWVnUNzq0eeFa12ahOWkZB7itTFeI7y86iDtNoXVMID/JkNr3sE
	HF4bB+VjGDD4eR2w3mfxCNxBjEwICWT3xFhL/7kDdfgsqfWzqZ
X-Received: by 2002:a05:6122:3a10:b0:563:460b:fe25 with SMTP id 71dfb90a1353d-566a00362edmr776372e0c.8.1769785710289;
        Fri, 30 Jan 2026 07:08:30 -0800 (PST)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56685afc974sm2231749e0c.2.2026.01.30.07.08.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 07:08:28 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5f52b3d98cfso666950137.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:08:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXuAZzlmpUcWlDTPpjmuGNCBkt5IzhDqiajR7JnhkY4uSq+7gCybsxJNhmbPmu9SGhuBKMKcgoF8lnI@vger.kernel.org
X-Received: by 2002:a05:6102:a4b:b0:5f5:7723:28ee with SMTP id
 ada2fe7eead31-5f8e249d107mr1020998137.11.1769785707020; Fri, 30 Jan 2026
 07:08:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260129214130.16067-1-john.madieu.xa@bp.renesas.com>
 <20260129214130.16067-11-john.madieu.xa@bp.renesas.com> <e53b50e2-72dc-47c3-be52-cefa593dd30a@tuxon.dev>
In-Reply-To: <e53b50e2-72dc-47c3-be52-cefa593dd30a@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 30 Jan 2026 16:08:15 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXiQeMgJhs9QvEcBNeGRf85Fi0w-WODyaGBDrOdZeSgPg@mail.gmail.com>
X-Gm-Features: AZwV_Qjr2oO3yVh97tvIdXRZ_5OwPpjHqcx_MNr99RIUg39FgQPjshWvCCZ7iVo
Message-ID: <CAMuHMdXiQeMgJhs9QvEcBNeGRf85Fi0w-WODyaGBDrOdZeSgPg@mail.gmail.com>
Subject: Re: [PATCH v4 10/15] PCI: rzg3s-host: Explicitly set class code for
 RZ/G3E compatibility
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, claudiu.beznea.uj@bp.renesas.com, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	geert+renesas@glider.be, krzk+dt@kernel.org, robh@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, magnus.damm@gmail.com, 
	biju.das.jz@bp.renesas.com, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,glider.be,google.com,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-261249-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Queue-Id: C40DABBE0F
X-Rspamd-Action: no action

On Fri, 30 Jan 2026 at 14:55, Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
> On 1/29/26 23:41, John Madieu wrote:
> > Program the class code register explicitly during PCIe configuration
> > initialization. RZ/G3E requires this register to be set, while RZ/G3S
> > has these values as hardware defaults.
> >
> > This configuration is harmless for RZ/G3S where these match the hardware
> > defaults, and necessary for RZ/G3E to properly identify the device as a
> > PCI bridge.
> >
> > Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

> > --- a/drivers/pci/controller/pcie-rzg3s-host.c
> > +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> > @@ -1054,6 +1054,7 @@ static int rzg3s_pcie_set_max_link_speed(struct rzg3s_pcie_host *host)
> >   static int rzg3s_pcie_config_init(struct rzg3s_pcie_host *host)
> >   {
> >       struct pci_host_bridge *bridge = pci_host_bridge_from_priv(host);
> > +     u32 mask = GENMASK(31, 8);
> >       struct resource_entry *ft;
> >       struct resource *bus;
> >       u8 subordinate_bus;
> > @@ -1077,6 +1078,13 @@ static int rzg3s_pcie_config_init(struct rzg3s_pcie_host *host)
> >       writel_relaxed(0xffffffff, host->pcie + RZG3S_PCI_CFG_BARMSK00L);
> >       writel_relaxed(0xffffffff, host->pcie + RZG3S_PCI_CFG_BARMSK00U);
> >
> > +     /*
> > +      * Explicitly program class code. RZ/G3E requires this configuration.
> > +      * Harmless for RZ/G3S where this matches the hardware default.
> > +      */
> > +     rzg3s_pcie_update_bits(host->pcie, PCI_CLASS_REVISION, mask,
> > +                            FIELD_PREP(mask, PCI_CLASS_BRIDGE_PCI_NORMAL));
>
> According to kernel test robot report on v1 this throws a compilation warning:

Yeah, in case of a non-const mask, you must use field_prep() instead.

> https://lore.kernel.org/all/202601152104.pV9uMS76-lkp@intel.com/

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

