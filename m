Return-Path: <devicetree+bounces-260484-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sC4pKrYremnz3gEAu9opvQ
	(envelope-from <devicetree+bounces-260484-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:31:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0E4A3E32
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:31:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3D8930B43F3
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BEF936BCF7;
	Wed, 28 Jan 2026 15:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="k0+6fp7b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529F836C0A9
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769614010; cv=pass; b=LdzGtyCl6u4/MFgCkGd53hXNRUlkJLnvriXwvQT7+wUdpTd63lmzqmEJxFE5SHo4w85pTOl0KqPqdYET9WzQ8pBb4jd3w54oAmk8HqgEqvitN2cE0HuMmfAoB497Xq5AY3bkeF89S/5FgflVz1yD0N9K3OCh1uQBYpb0NDcKsiY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769614010; c=relaxed/simple;
	bh=DlD9Jmb5GaRCSDuPAaTKKOgfm6MSSOaadIIUZJ+RbMA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PKBtgpGzfWWXF+QFeFThgcUgetOxCmFTGT0vQDma6YvraoJDFqr7vYLDttOwvLilg7dK9xUZdh0o/K02fuhwRcIqfF2r2AWCkGTPAqdcSpxW+N2ntitMK3rp3SXpy42RnJLUyYTqQPVdmkvdIAr0uRvazg9obBXYbh8HD543zOs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=k0+6fp7b; arc=pass smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-7947072d0f6so27095967b3.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:26:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769614000; cv=none;
        d=google.com; s=arc-20240605;
        b=Vgd1VTFJ++UlAJHdJcXy7WDED57qu8+39X3K58YL9ekGEx5puCbXOLoGH+G2ajot+a
         221y+OxIyymo5K1je4eZEGvWQH76aYBX6nrn3Ik8/DnrDFWV5S2PDo3ncNBWJsUty7w/
         /FeGAiOPxsdDRk8/kTOdFhhzupXBKJqrWB35cwAOns9aCqUi87w3XOuRpjypAPK3ywZA
         F9iMhnAscuvF1xC5pfqiYTMXp0dmxsgD67u7tf+5FgKSLGKFIgqx1y7c55r4QGFqNCgc
         OEUQhX9sGMqpamDkfv+9z3r+QdBt5d5LEP90IWYVyN5baPmpes9xLeoVzIqqjHWHLf+/
         CB3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0Dsm6BZo17gBRQFENmdqPMvpuqH/DjJGK39Lg1Meemg=;
        fh=wolyhFot8/d8VQ2sLiFtdkuvronbngh99mT+D3Xl2IM=;
        b=TTZK7Cn0rN/4dB9DNTtZ8LXpJI1mkDIPrkTSc/2o7U18SVR1u0gH516uXdrH8cBC3z
         7kasuyYD/J/rkgpr9QEapxUDB/iBPT3t1Cq0EJlfcxBqdDkoJdvYryveqJ5ENsJP2mOg
         5xVnHFslM9Tzd425u6Iv02+5ZvE5RLitSWiJ9l8O7Zneb6XA556KVhk9VC90GMuPdevv
         DMbdM3y2h6a/reIxpApVZuwLdqbxl1mu+g0Z0I2F55rNF8ij9tXLKLN36tTKvl4IoRPG
         1skPxnVSV4+wWu+o+MShzwaoqMIa4VQBNH41D5DSYA7yBXotj6N84xBr2Vs77+f30FJh
         LZJw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769614000; x=1770218800; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Dsm6BZo17gBRQFENmdqPMvpuqH/DjJGK39Lg1Meemg=;
        b=k0+6fp7bXKe93evUTndUSYXCqpbo6PjVJkYM1VnsbGTkbfo6uCZuGGa5/5tD5bEgaV
         bXXatuZVSFY3+Z3z2Lyxe8niF3XufH3bRn+nt0+2HvxWEN+/lN7Wi1bNDpkJFxpafW82
         udZ0a5grx1wmhplMpfjGSJt27sDQYrSyR7FsKFJWLs2DC4nEZOqT4jgpIOFA6I/1mC3n
         MxhnD/NG4sSs/HFDLq0NCsBzqgNAJMRo5ASH8qUdR1gPaGhaoh/IjNtMGt4VOnLIxeiT
         1mneZhOyGvhDt3B6gb4N7aHfBVi7up/AqIRAlkd2qwrGXo7fQuuKNm8cja5IMx2iRw20
         xeCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769614000; x=1770218800;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0Dsm6BZo17gBRQFENmdqPMvpuqH/DjJGK39Lg1Meemg=;
        b=S6EagUmMBlndi/zE2Trl5EvYP//trqSuPwtJWo8YAmKhPuF+ZAzBPRIsdrljuuHxiT
         VkC0dXDwADaDySZpC44ZFwG3vhAZfB/dxnGCMvrH1VziF9uz9/LaoWnEkzGiCFOcaA51
         IVPCQ1XpHJepARnFNjqV468G6ZmIOiGlPyPbAvb7/vwNRWgVzFacdEFq+KBrPXbt09EE
         DUypOr+Jmp6fQi+Zu2C0k6njjGyeva54hGsaqvXviVOSOI4X/fp7g6c+37DaqjfP0EtY
         j6J6gtrmejDU6YbIHV1dmhskvq8oECAKLDYt0IDh9WdfrNwsYX3FiG3eLy2FnaFhNOqV
         pewg==
X-Forwarded-Encrypted: i=1; AJvYcCV3Ke/b/yGF+iPPHi+i3Rs9/27ozwDCmEUGCnsIT/MV2bRAdAmZnaXzOQwinlE4DJ6ggfgcQHArldeV@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo+Ka4dU522MPxl21j3CSxCmsLW/TLoaucB1tv2qfUoz6ilhgc
	ey72fRBZL0953iEdbepMOtqb2GKGIFs+eXUlOHej0YAJKxobtXfY6lGL2ymcyAYGWS2TxFEhGxQ
	eKBnrN88VL6saogpqKg3XC/mQbD9HwKkPC+yfoNtW6g==
X-Gm-Gg: AZuq6aLCOkMx4iUfRkNLc5O8pjfeCXOgadgI2OTblxdM8ec5wH2BSst6fBknQ7+shEd
	Kw1Y9kGl/Q9J1Hl7rvhBhm/r+aDtk5Zj9UKjrM7FbN4L/6TEotm37JY7diBTuCuwRMojG1p8gSX
	k8WHjISBhZ34AJD8XMfao6YjEzpGlO7pAQtozMNTdHbjBkStm4+YoACPwkxfdumSIrNS/Kh8gCQ
	ab6gNLUM4+ushMS8wHAJKI5eOrawla0lCyOnsQzIaPzLPTBNl3sWZfHa20t5r33XvQBXwtesfBe
	Qb1ByqCIhHNYKS43IE+xcJfPTfQ/JlUL0/8DC1TXc6ZU
X-Received: by 2002:a05:690c:102:b0:794:26a9:f9c3 with SMTP id
 00721157ae682-7947acaa3d3mr43960177b3.63.1769613999909; Wed, 28 Jan 2026
 07:26:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
 <20260124-spacemit-p1-v2-1-2c86b06694ba@riscstar.com> <501849d1-2158-471a-af25-da3dbb070422@riscstar.com>
In-Reply-To: <501849d1-2158-471a-af25-da3dbb070422@riscstar.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 28 Jan 2026 23:26:28 +0800
X-Gm-Features: AZwV_QgomjxoBBbY7bdQOSeCA_WHXLS0jMtYpjhysR3Ljanlh3cbjMNBBXCdn70
Message-ID: <CAH1PCMYWFhR-Np0-yq40eWqJbTmFub4qop6Wq2gA2mUqbJrtdA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] regulator: spacemit-p1: Fix n_voltages for BUCK
 and LDO regulators
To: Alex Elder <elder@riscstar.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Troy Mitchell <troy.mitchell@linux.spacemit.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-260484-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,gentoo.org,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,riscstar.com:email]
X-Rspamd-Queue-Id: BF0E4A3E32
X-Rspamd-Action: no action

Hi, Alex

On Wed, Jan 28, 2026 at 9:28=E2=80=AFPM Alex Elder <elder@riscstar.com> wro=
te:
>
> On 1/23/26 6:20 PM, Guodong Xu wrote:
> > Higher voltage settings were unusable due to incorrect n_voltages value=
s
> > causing registration failures. For example, setting aldo4 to 3.3V faile=
d
> > with -EINVAL because the required selector (123) exceeded the allowed
> > range (n_voltages=3D117).
> >
> > Fix by aligning n_voltages with the hardware register widths per the P1
> > datasheet [1]:
> > - BUCK: 255 (was 254), allows selectors 0-254, selector 255 is reserved
> > - LDO: 128 (was 117), allows selectors 0-127, selectors 0-10 are for
> >    suspend mode, valid operational range is 11-127
> >
> > This enables the full voltage range supported by the hardware.
> >
> > Fixes: 8b84d712ad84 ("regulator: spacemit: support SpacemiT P1 regulato=
rs")
> > Link: https://developer.spacemit.com/documentation [1]
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> > v2: No change.
> > ---
> >   drivers/regulator/spacemit-p1.c | 6 +++---
> >   1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacem=
it-p1.c
> > index 2bf9137e12b1..2b585ba01a93 100644
> > --- a/drivers/regulator/spacemit-p1.c
> > +++ b/drivers/regulator/spacemit-p1.c
> > @@ -87,13 +87,13 @@ static const struct linear_range p1_ldo_ranges[] =
=3D {
> >       }
> >
> >   #define P1_BUCK_DESC(_n) \
> > -     P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 254, p1_buck_=
ranges)
> > +     P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 255, p1_buck_=
ranges)
>
> This is correct.  There are 255 possible ranges, 0..254, and
> 255 is an illegal value.
>
> I think this bug is an artifact of a change I made while
> chasing an issue during development, and I neglected to
> change it back.
>
> Technically this is a bug fix but it doesn't matter because
> this voltage value (255 represents 3.450 volts) was not
> required.
>
> >   #define P1_ALDO_DESC(_n) \
> > -     P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 117, p1_ldo_ra=
nges)
> > +     P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 128, p1_ldo_ra=
nges)
>
> I would say this is not correct.
>
> The valid range of values in this register is 0xd-0x1f (11-127),
> which is 117 values; 0xd represents 0.500V and 0x1f represents
> 3.400V.
>
> Technically, all other values represent 0.5v (and could therefore
> be considered valid), but I believe those should never be used
> and intentionally considered them invalid.  If 0.5V is desired,
> 0xd should be used.
>
> Do you disagree with this?

I understand your concern about selectors 0-10. However, maybe you missed
this part:

Code snippet from the c file, Line 53:
(The p1_buck_ranges and p1_ldo_ranges are defined correctly.)

/* Selector value 255 can be used to disable the buck converter on sleep */
static const struct linear_range p1_buck_ranges[] =3D {
REGULATOR_LINEAR_RANGE(500000, 0, 170, 5000),
REGULATOR_LINEAR_RANGE(1375000, 171, 254, 25000),
};

/* Selector value 0 can be used for suspend */
static const struct linear_range p1_ldo_ranges[] =3D {
REGULATOR_LINEAR_RANGE(500000, 11, 127, 25000),
};

.linear_range, the number of valid voltage steps (selectors 11-127)
.n_voltages field, which defines the selector namespace (0 to 170, then to =
254)

With n_voltages =3D 117, the maximum accessible selector is 116. This makes
selectors 117-127 unreachable, even though they're defined in the linear_ra=
nge.

n_voltages =3D 128 doesn't enable those for operational use, it just allows
the full valid range (11-127) to be accessible.

This is why in my test for the K3 pico board, setting ALDO to 3.3V
(selector 123) or 3.4V (selector 127) fails with the current code.
I mean that leads me to this bug fix.

Best regards,
Guodong Xu


> >   #define P1_DLDO_DESC(_n) \
> > -     P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 117, p1_ldo_=
ranges)
> > +     P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 128, p1_ldo_=
ranges)
> >
> >   static const struct regulator_desc p1_regulator_desc[] =3D {
> >       P1_BUCK_DESC(1),
> >
>
> I have exactly the same comment about this change to the
> number of supported values.
>
>                                         -Alex

