Return-Path: <devicetree+bounces-257862-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKUBKoiscGkgZAAAu9opvQ
	(envelope-from <devicetree+bounces-257862-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:38:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7815055548
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:38:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 84D4B6067B6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:27:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEB33481223;
	Wed, 21 Jan 2026 10:25:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83412FFFA5
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768991157; cv=none; b=S+FcvpIqJXp3iQnJPrqDtZY9zs9Qi6nvDkJseLkWk8onffik8DdNN8UH7mG9KWN3ml/M9JMvsHSe+yVTgsvmRskq5weq08hqQi3079AxtFoN/XU9ZXn/9anHjoLG95/pv4XFbTJsSk4K1GLU9JFK+z1TchThe4UPeCVpoelaBBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768991157; c=relaxed/simple;
	bh=Nvus+CBCqOlTSbWo49/3x1+8dGKD+L2I7BSM+bCrpkI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IRm/As0sds42YWlHBZ0OAVa/YUiyr2tgIQGWNRajZ6x1CtxisU0YFpRomBZh5tzV9GpNfCR7j++ZgNge3qqSZoZhGMP0Cktiay1OIAIarwaA5a2H69aChU1tLfVdN0jS4MENtw5ycih8sU09QUfeRySJDEBOGb6aOCSwXijb664=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-56624fea96fso71040e0c.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 02:25:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768991141; x=1769595941;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AO+jELtAqR5E9j/qLczmHfGIJgU+mWLnq5p5v66Y2yE=;
        b=EFD5Qq47c/IqVqzPwCJjlAQAdEEqsBXws7sKq7tXyeRI9NPzXb9b0HEoBaMBErYCmk
         Ommw60Qz+kSyOPcDV5o4qTX0VPt4pg5YlepqNH1imR5InImEK6gJqKBLyy4isAbuZy7w
         c9o7QXTJpOm6xYz474HCIgMMC3ucGqqqLFQ94bnCYPK2p4ddIcbDq0iIkEkdUMx8bPq/
         pDcHXfLubMPaPhjYfmPFiBxBKB4D0juiwPD59dLjasIgohqRQZuD9OuPSyFQVPmef20y
         TfgPBLbRdsFhL7u4ahPx9ieqM+fS1YsNfSx1iVg1KgA9AdeBzeEOIBDonszgdK+RTdt6
         Gw3g==
X-Forwarded-Encrypted: i=1; AJvYcCXwOKXgWbUFk1kJ3WA8cOAj/1HsyCugZ8nW5w18Kl0zPGSDxhVuVTxn3280b7ffKaABbJPuSvH8O9nz@vger.kernel.org
X-Gm-Message-State: AOJu0YxcAz02+zPFXjAjjT8S4x3VmLzaI0dXXAEzAldmbE+RujKbnZlu
	nwL2HANcvqKwLCfvP0Akpm1iXMcDy2Xanu4glWg1aXFLJyto5GmPi+TU5SSNfQ6d
X-Gm-Gg: AZuq6aIjQdOkNcMVXsAKPL+Y9gzxc54SIvIRIAy/gHq1ZFfsQQH5tZ7izSZFG8ATJZ3
	qskfdjOlIWl80St7cgg5pF2qFjLwBsybLwYO9wfKuLmmhWAh/TdWMRdz2EXjy/keESgM+BUMQKH
	I1yG5xBMDLhudI+5RA3PyYijcBHehMWmG9wuLhWSS5sCxmhtVRVeW8EK4jeHuGq9RKUgYFBItCf
	J/TTPcxHDMTJbYHmUFSyZUQqU3woar/lOLDAdbGvkVRQlWnqHSkEeW3KpcQ7jPoGkXHsyB5wY5R
	zq0yAlcqJOP/uZoXui6AgysuvWzSG2Eo9FbkYrSnuVynbu63d/GqhLWnMjAWc6kyKPt2yKC9beA
	9iDrFvK6QxKjE1DnIL2qGYNlOXrqDYiWubncN4uOuIRaqs6iToYvVnv3AOtNdCpG4JSSnvCWI/f
	nMp2ELMbn+zhdmEImETlugFHhqSEoUXnaIpZs7/0xd9/BPC0/d5juv
X-Received: by 2002:a05:6102:a4c:b0:5ee:a3a4:98b2 with SMTP id ada2fe7eead31-5f1924548cbmr7634710137.8.1768991141150;
        Wed, 21 Jan 2026 02:25:41 -0800 (PST)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com. [209.85.221.172])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-947d03eaf17sm4620265241.8.2026.01.21.02.25.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 02:25:40 -0800 (PST)
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-5636274b338so533645e0c.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 02:25:40 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXBkgernCu0cSbxLyG5hNdS/xKol6DUWtbwO9apepJPyNoOP/KljPhAKopyVB8Q6tS1EZkXHlcdogvY@vger.kernel.org
X-Received: by 2002:a05:6122:8008:b0:563:50ff:69b4 with SMTP id
 71dfb90a1353d-563aa9c7454mr6150186e0c.7.1768991140325; Wed, 21 Jan 2026
 02:25:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114153337.46765-1-john.madieu.xa@bp.renesas.com>
 <20260114153337.46765-17-john.madieu.xa@bp.renesas.com> <TY3PR01MB11346AE1205D35A8D8BC90B9B868FA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY6PR01MB1737773DEF65ABEBEF11D2E96FF8FA@TY6PR01MB17377.jpnprd01.prod.outlook.com>
 <TY3PR01MB11346C084AC2534C52822BC8B868FA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346C084AC2534C52822BC8B868FA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Jan 2026 11:25:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWXrYCULkavZGBE2foOh4A7kesda8Be1PfW-rE0WEsjKQ@mail.gmail.com>
X-Gm-Features: AZwV_Qh0oraDBmK-XBjWZ-KYpOXfBLlpVps5djRVJqCRGWxVzazW7dn9SuHVFa4
Message-ID: <CAMuHMdWXrYCULkavZGBE2foOh4A7kesda8Be1PfW-rE0WEsjKQ@mail.gmail.com>
Subject: Re: [PATCH 16/16] arm64: dts: renesas: r9a09g047e57-smarc: Enable PCIe
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>, "kwilczynski@kernel.org" <kwilczynski@kernel.org>, 
	"mani@kernel.org" <mani@kernel.org>, "geert+renesas@glider.be" <geert+renesas@glider.be>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"magnus.damm" <magnus.damm@gmail.com>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, "john.madieu@gmail.com" <john.madieu@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.24 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,glider.be,google.com,gmail.com,vger.kernel.org];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-257862-lists,devicetree=lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	R_SPF_SOFTFAIL(0.00)[~all];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,renesas.com:email,linux-m68k.org:email]
X-Rspamd-Queue-Id: 7815055548
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 14 Jan 2026 at 17:50, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: John Madieu <john.madieu.xa@bp.renesas.com>
> > > From: Biju Das <biju.das.jz@bp.renesas.com>
> > > > From: John Madieu <john.madieu.xa@bp.renesas.com>
> > > >
> > > > The RZ Smarc Crarrier-II board has PCIe slots mounted on it.
> > > > Enable PCIe support.
> > > >
> > > > Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

> > > > --- a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
> > > > +++ b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
> > > > @@ -96,6 +96,13 @@ &i2c0 {
> > > >   clock-frequency = <400000>;
> > > >  };
> > > >
> > > > +&pcie {
> > > > + dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 1 0x00000000>;
> > >
> > > This entry to be only in SoC dtsi like RZ/G3S.
> > >
> > > > + pinctrl-0 = <&pcie_pins>;
> > > > + pinctrl-names = "default";
> > >
> > > The pinctrl entries to be moved to board specific file as it will be
> > > used by RZ/G3S, RZ/G3E and Upcoming SoC in future.
> >
> > To summarize, you suggest me to keep only the dma-ranges update in this file and move pinctrl
> > assignment into r9a09g047e57-smarc.dts right ?
>
> Just "status" should be sufficient. Drop dma-ranges and move the pinctrl entries to board dts.

Agreed. After that, the future RZ/G3L DTB build issues related to PCIe are gone.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

