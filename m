Return-Path: <devicetree+bounces-270335-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGDgHWeUpmnmRQAAu9opvQ
	(envelope-from <devicetree+bounces-270335-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:57:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0772A1EA71A
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:57:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A668C303FDF7
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 878383815C1;
	Tue,  3 Mar 2026 07:55:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E289375F66
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 07:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772524505; cv=none; b=QEObsO8t+D+5zzSHBezHoVa19pQWGVdg2iquuvcDXBscw4roFWKySI3Z3NlLZu+IjpzBI3NEQI9T0DPiC/+woMKqH5xiD8Hjo1BJbfZo9+dvbxNJYwq5uYEa4tGktZoBn1MjYBCNSYO4Gzmod8piCVMOiyiDikIlr1Xk0j20t5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772524505; c=relaxed/simple;
	bh=hfo+0pbVF2ogQF/uJghFZ4wArUAer/UFKhenzcaQYtw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XES724GVxRl4FMI7Ezvsoxvqjmp3VgjdPiVADfrauDAZdGTsC/zKe3Z9rxIAZF0QdTrt+BW2M7dD/5FeJHtR/8rZN3SxUUJ1RX+qm1OXDXMTgg0KTqHUEazGpoCMSM3TSZKXEDoJ8Eqm5BB7a3PDVI2gfHgqI1CutXFLNz8q7jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-56a981f44c9so2323251e0c.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 23:55:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772524503; x=1773129303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZCaC/YnT+4W12pb1i++GoONxSFqUE6Q1n9/0jMoNGRk=;
        b=NHK+rPU2AL/Abh8amURcx/EB/zguB+6ROqAInoHp8Nhb/5tuYVqV70oiFi4WOWSLMT
         6WaxQrzRfqqcJPXuALb8RvaFGwBdyn3rfUZPiY2EqGuyQSw2XtYUUNEP4B7xw9GnJBTb
         FyE8XhExfwEq9KVf0Af2A/BcHm6IHEuNXPwSoAaFh1yZ5yibRcOSqEddbZxS27NlAevp
         jkljtcMP57o7iMeEKY8Gk5fyCK+BPqtJwdBQjpzoUTXdzW1x6w2xrBCluFXv9YjuBT6a
         a0H5IUoqqXCSJ+k4ebayaTS2gbsxHr1zOe7e+WCgbH1QNLEjIS4hO3fhMbinO9UhoByZ
         SNTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdSz0GXU0Mzvz/2jh8/jFZZFzLy2IyqiEFGmzBJohCRPIxTA3If1nEYTPCbefpgfbyduGKaQkpLYoF@vger.kernel.org
X-Gm-Message-State: AOJu0Yzch2CAbdBCrpuawAQECVZ+Wkw9o7olxv8I0p9wv1lbVgWrCHjL
	DARchRpIENTGdrAvbWUlxsZzgjW3crHFxLiAk0VtYIlRmJmUHa34EL7p3ZXAxLoj
X-Gm-Gg: ATEYQzwi2Hz1+cDLkyl4X1TLUXdllbU5sbrN2CF+yyguBOEzV8fr+hd3Xt1+SbGhSi1
	fHabnroZLvenOItdDgZ9mjIJGNcqNAzdyw+exdhw9NwkM528RoaEOYZraz3PpTFpkYn0VNlnTik
	U9FhAwSHZ22PwIuYNoOPcoU7Wk2AMOO72jWzEg4W4UVxDG2IpqXqKDfIjPRU1rCVCF8ZVdh369A
	h3L6Nae5i8wdeYBrQkRys7fhZs0YLv5aHyzHqRrx4uO+Sd2Nz3k/zLsLeJIzWEgq5umXVNIAXv5
	2EPeGQJkSaiCzSn7E8wsLeHonQTP9xUJCBzltABw615kNBV+0YYKrqUMYk9jkTZCX/uhSuvDD3t
	9K2ZJJZNampZYWFQILgOgn/SSS6nhtXzsJPeCTOElyS4lZdz0fszFeHIs45OmQmH8PoQNwDBeD1
	6BSNPKYfcHGJZGzJu712Oq+N7vqUB8IkgdHu8os9LPzuJkbbuR8wdrYjI7T88ACNNe
X-Received: by 2002:a05:6122:428a:b0:56a:7f37:d18f with SMTP id 71dfb90a1353d-56aa0a375afmr1335431e0c.3.1772524502604;
        Mon, 02 Mar 2026 23:55:02 -0800 (PST)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com. [209.85.221.175])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91b8c7a8sm19330667e0c.4.2026.03.02.23.55.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 23:55:01 -0800 (PST)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-56a87098868so1900815e0c.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 23:55:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVoZGavQXJDBct4ypnkDn3paAC6ZG3iPet7tXLf79lJO3llwzdHbnDZZs41uZ7/ATTX9dbGkZP3Of1O@vger.kernel.org
X-Received: by 2002:a05:6122:3790:b0:54c:da0:f711 with SMTP id
 71dfb90a1353d-56aa0a50444mr6590193e0c.7.1772524501632; Mon, 02 Mar 2026
 23:55:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115164905.1203453-1-herve.codina@bootlin.com>
 <CAMuHMdUi+FsBveQ9HU+NT7iE7QOX0tKn4Jt_1mfDdq_D0=czJA@mail.gmail.com> <20260302182335.312e0c3a@bootlin.com>
In-Reply-To: <20260302182335.312e0c3a@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Mar 2026 08:54:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWbYw2rrscCd9rc6w3LRAvz8obNt8_ysdFpKDap9HnUUA@mail.gmail.com>
X-Gm-Features: AaiRm53L2Wsi2wlZdUwYCWIWcNicK2zIjnLtyGVZgbFptvGHSV0Nd412z43_ha0
Message-ID: <CAMuHMdWbYw2rrscCd9rc6w3LRAvz8obNt8_ysdFpKDap9HnUUA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: renesas: r9a06g032: Add support for CPU
 frequency scaling
To: Herve Codina <herve.codina@bootlin.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 0772A1EA71A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[sang-engineering.com,gmail.com,kernel.org,vger.kernel.org,se.com,bootlin.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-270335-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.230];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,mail.gmail.com:mid,glider.be:email,linux-m68k.org:email,0.0.0.0:email,bootlin.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Herv=C3=A9,

On Mon, 2 Mar 2026 at 18:23, Herve Codina <herve.codina@bootlin.com> wrote:
> On Mon, 2 Mar 2026 18:04:36 +0100
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> > Hi Herv=C3=A9,
> >
> > On Thu, 15 Jan 2026 at 17:49, Herve Codina (Schneider Electric)
> > <herve.codina@bootlin.com> wrote:
> > > In RZ/N1 SoCs, CPUs are allowed to work at 125, 250 or 500 MHz when t=
he
> > > 'ref' clock frequency value is set to 500 MHz which is the default 'r=
ef'
> > > clock frequency value.
> > >
> > > Add support for CPU frequency scaling defining those 3 frequencies in
> > > the opp-table with the assumption that the 'ref' clock is set to its
> > > default value.
> > >
> > > Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootli=
n.com>
> >
> > Thanks for your patch, which LGTM.
> >
> > > --- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> > > +++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> >
> > > @@ -24,6 +57,7 @@ cpu@0 {
> > >                         compatible =3D "arm,cortex-a7";
> > >                         reg =3D <0>;
> > >                         clocks =3D <&sysctrl R9A06G032_CLK_A7MP>;
> > > +                       operating-points-v2 =3D <&cpu_opp_table>;
> > >                 };
> > >
> > >                 cpu@1 {
> >
> > Unless I am missing something, the RZ/N1 clock driver does not support
> > the A7MP clock yet, so how can cpufreq work for you?
>
> R9A06G032_CLK_A7MP is DIV_CA7

Thank you!

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

