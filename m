Return-Path: <devicetree+bounces-267380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CWPNrY7nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:36:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3991F17596D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:36:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B10E43007F6A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7025C361DCC;
	Mon, 23 Feb 2026 11:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g5smKJMo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FC436167F
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771846486; cv=pass; b=G6t/TXB9M8r/LVYSbGH4YdKjtCC1I1pSFjwE14p3mYXny4T+Yi8Dz/cKMqDAnw0i5eoCj2xE8OJ0/49tzaW2YT4ugcfIOsewmpb5u9Ixt1AuEb0b9V93RCPIJKpWJQS3wT8/2h4w1JG9/I2XEVg+85yaYpB4GI86YcSPVEMQp5k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771846486; c=relaxed/simple;
	bh=1aK3viC71Xk5/KKHdynHCsB/RGMAWlA9jExz1D1JYG8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SZEB8ymIbH6Bu8dKjU2yZh7sbViqhWIW7aE3SZPsIOKosFRJgnD038NkQzTFOZ0H40vfs142+yrRqqJHzJw3nS402h09Xih15zXI61S9/9Bv2RDMJHIPycykN2X1bj+MSPjb39lEF7GNFgPy+IJCvf44bZYnTEH1GcEuLy5w0UM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g5smKJMo; arc=pass smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-3530e7b3dc2so4377383a91.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:34:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771846483; cv=none;
        d=google.com; s=arc-20240605;
        b=GYlN+ZPlArXjDR2jv9W52eHqHlOOE3He/lDNR/KF9FrnmQa7LG9nSfUNzENVwlvAyP
         0VroJI39xsh4ua3K+FBG6lKs0dTcvaoYkAazH21alO+/E/o4DnhF2AIJeSZYxVhW+ioo
         M8XjzKdJQhK6werJpC0l8teLkU1tO3UbHhNkm5QGKEt8mUVygw+L6ZvlphN0ENILKfMj
         MBkBjMLFanLnb1XEccDFczT26TKoGQn5FBRR1smjmz6ZQ6gi3k2RRrDXioAe5SdoZQGm
         pdVOMNELFLKW96jXLl40fPlLJil1xEZaphSTIAyBdjID3OerETwZVU79yI6zQIeiUI3t
         DYZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mGYStsQlHuKPzU2WNtYOMLZuzbUrY0YdQicljirRGq0=;
        fh=IFtTk96bLGbu+lhWjbNR2esOqXPvkblF7JK3FPf28Do=;
        b=Vw/epw4n8TERxk8OtO07AHWehRmA5miD68tLjkBW3gCycBUCAVAw8ff5xuOFvpy0zP
         /0ddD5kWqFFJtcVG1/BwgQ5WXEiO5QBFiwmO/A5Z43fpSqZ8ZzOHVAj0KLX02p4b/DWj
         nVhQ3cov3te2ECHy+sCHcCmvt5d/6B7wqEx9sEVJUK1TBgfbKF/iFH7M4AFyuomvYpgo
         FvRMV87YbqJtlXLNzo0v4fSJyBh5XICO13ShkKyk5l0B2mRn8V76PlwXgaF95ZGEpliG
         VdjQG5xZAZ9Bpegz47gwfHCaqkYr6RtUdXphqbF6JxrsEYaZ5bRHPzOw0PrY+Ao/aNtr
         dS/Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771846483; x=1772451283; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mGYStsQlHuKPzU2WNtYOMLZuzbUrY0YdQicljirRGq0=;
        b=g5smKJMogQMXaLsuZNKudG+C1kR6aw2iuMKlZt1yPMbSJLSof1N1YPPN1E8qasBebF
         GRIaPm+mzU/LQtExI5OiTkOv/8SUDJByu3NdGgwnxqp/dfWPmmKFz+mLGISwGhsq98Fo
         k6XqX/8ekA0ihLRdo2gESl7CkD4Uaa3MD7bCJXZzF6L+RgUqfVP1Kisl4EpDGRr343Q3
         BktPTVBb5nvhmKyORtCvD8x7PHTqR4KuYRjnZfKlaUoSRWxL0/cs1DXKd9eOzo7F6AOe
         853UI7NUaIOMD2QMxpLi6JTeGtwbNyDxYNx251LdnVxawG9JQ65rXd3QuQ+ZwpiqelXJ
         jptA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771846483; x=1772451283;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mGYStsQlHuKPzU2WNtYOMLZuzbUrY0YdQicljirRGq0=;
        b=QJ4LWjx+qR6QiOhyecRNhJ3lQ89SczZrHheLnuCY5dZAgONYuPZosQcjlfONYlxeg3
         udZqZ+tKZGZSvwqcRriIUsd5eFN7OuYx071iMTrJKsMzm7Gzrw18JNrOjrfrv7Q4cNoZ
         JQ2iIfKFbMq/5S8qDSPFCg0Z37YNt4bvKfMvuz7L704Sp1W2WbapoP/MkMS9XuBZ57cM
         WVZFG7pwveDl+OzA3RlCX53UYKnOoyFUbjvHqgVTStLT5tlbKQG5fVlzXor5CpYpWJHY
         aL0drYlDxjRCvyjrAuU9ZntXcvQ2R92XE8V8Vcq/5Wva+bmeCvLAOen2E/mqHOBqMfcT
         40tA==
X-Forwarded-Encrypted: i=1; AJvYcCVyIpM7BNgNwuRrP7i9g4ekmq3C7LHSlKcFyep3l2yjtZLmQ91oEGVyhtyJanA2lFIfrakM5dn7w+um@vger.kernel.org
X-Gm-Message-State: AOJu0YxmCkVh817Os+J89nOIU21Km+6leID49wzRnH8Kfs3KwNz3yHAg
	cd4duifb/nGpjLP/Gj7SAPtNoSjlpWf8lYP6z1DKPTyvTvDdb1OKCTDBmWuEJM00if+3jK7tD4+
	KC00M5RCVfbPZjyy+Y7l33Fk8ckicBPE=
X-Gm-Gg: ATEYQzxinDR0/i/9hw+jb68jkxDXRozbmJYLb/rgJBH1E6ZSTJ0gaPetRzH+/W7hA5C
	zyfjgVHIRHsvTV9Ti0YyUE7uVqPVnMyNPVJf+r9vCH+9N8chs3B/CvsJDkxlXSUW47RYfeWDLhq
	uROG1IjnroQpw9Zd16iaQsL+fI4JI90RWwI1S5WC8d36vc4hZhd+7oslf3MIgeryZQCQjUGfVAq
	TpNTZNRzK0xl79lNr7od+YDCJDHYgvvbEwaeHxF105+SpzoVYMWssuuM7qpRzKtYaQqxqYZ8qpZ
	GFSqvnSz
X-Received: by 2002:a17:90b:1d82:b0:354:c7f8:6d7b with SMTP id
 98e67ed59e1d1-358ae8d0700mr7036064a91.27.1771846482857; Mon, 23 Feb 2026
 03:34:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
 <20260130-yv5_revise_dts-v4-6-4d924455f3a7@gmail.com> <62b7557d7af89742d142c1c8d317b8fa14f7ba24.camel@codeconstruct.com.au>
In-Reply-To: <62b7557d7af89742d142c1c8d317b8fa14f7ba24.camel@codeconstruct.com.au>
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 23 Feb 2026 19:34:31 +0800
X-Gm-Features: AaiRm506Z318uNW6kWrp7bDcWB7y0VDBV6c7Bjo1a43ppRROQOdO1rn-vpstytM
Message-ID: <CABh9gBduHH5qN7Sv_Baoj=khADxEDv2zJFgXWBQi1K7SS6bRGQ@mail.gmail.com>
Subject: Re: [PATCH v4 6/7] ARM: dts: aspeed: yosemite5: Add PDB IO expander
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Amithash Prasasd <amithash@meta.com>, 
	Kevin Tung <Kevin.Tung@quantatw.com>, Ken Chen <Ken.Chen@quantatw.com>, 
	Leo Yang <Leo-Yang@quantatw.com>, Jackson Liu <Jackson.Liu@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267380-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.24:email,0.0.0.40:email,codeconstruct.com.au:email,mail.gmail.com:mid,1d:email]
X-Rspamd-Queue-Id: 3991F17596D
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 2:27=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> On Fri, 2026-01-30 at 16:20 +0800, Kevin Tung wrote:
> > The new hardware design adds an IO expander on the PDB
> >
>
> What does "PDB" mean? Can you please expand this in the commit message?
>
> >  to support
> > fan presence detection and HSC
> >
>
> What does "HSC" mean? Can you please expand this in the commit message?
>
Hi Andrew,

Sure, I have expanded both abbreviations in the commit message as requested=
.

Kevin

> >  fault monitoring. So Add the PDB
> > IO expander device node to the DTS.
> >
> > The IO expander interrupt is connected to SGPIO92, which was
> > previously named ALERT_PADDLE2_SMB_N and not used by the system.
> > This pin is now repurposed and renamed to FM_IOE_ALT_N to reflect
> > its function as the PDB IO expander interrupt.
> >
> > Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
> > ---
> >  .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts    | 21 +++++++++++++=
+++++++-
> >  1 file changed, 20 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts=
 b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > index 524597a81365ef10cd03b67d35eeb88a965cbe0a..48f864b52d1a22b12f8a39b=
a9703a90349ed930d 100644
> > --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > @@ -389,6 +389,25 @@ adc@1d {
> >               ti,mode =3D /bits/ 8 <1>;
> >       };
> >
> > +     /* PDB IOEXP */
> > +     gpio-expander@24 {
> > +             compatible =3D "nxp,pca9555";
> > +             reg =3D <0x24>;
> > +             interrupt-parent =3D <&sgpiom0>;
> > +             interrupts =3D <92 IRQ_TYPE_LEVEL_LOW>;
> > +             gpio-controller;
> > +             #gpio-cells =3D <2>;
> > +             gpio-line-names =3D
> > +                     "FM_P52V_AUX_FLT_N", "FM_P12V_AUX_PWRGD",
> > +                     "FM_SLOTX_HSC_FAULT_N_FF", "",
> > +                     "","",
> > +                     "","",
> > +                     "PRSNT_FAN0","PRSNT_FAN1",
> > +                     "PRSNT_FAN2","PRSNT_FAN3",
> > +                     "","",
> > +                     "","";
> > +     };
> > +
> >       power-sensor@40 {
> >               compatible =3D "ti,ina238";
> >               reg =3D <0x40>;
> > @@ -937,7 +956,7 @@ &sgpiom0 {
> >       "ALERT_OC_PADDLE2_N","",
> >       "ALERT_OC_PWR2_N","",
> >       "ALERT_OC_PWR11_N","",
> > -     "ALERT_PADDLE2_SMB_N","",
> > +     "FM_IOE_ALT_N","",
> >       "ALERT_PWR14_SB2_LEAK_DETECT_N","",
> >       /*bit48-bit55*/
> >       "ALERT_PWR14_SB3_LEAK_DETECT_N","",

