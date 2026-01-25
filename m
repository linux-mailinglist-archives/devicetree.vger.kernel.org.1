Return-Path: <devicetree+bounces-259214-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KL6ABM+bdWnEGgEAu9opvQ
	(envelope-from <devicetree+bounces-259214-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 05:27:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F3C7FC1A
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 05:27:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 45E113001441
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 04:27:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 864752D73BD;
	Sun, 25 Jan 2026 04:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="vThU3d+B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2064C2D7398
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 04:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769315273; cv=pass; b=gnispCTdAFdLi5wx3Qm4oC/tfIZEa49W0BrDBAQftKLdmChtf3mAmkVqxR1+lJfyAJxNTWEkjYBDWc7r8sN9b9xu0+h5R8a/sf9odznHGWTMfYpxX4H4witu7uVtKT2vpSsVyUVTUOG0DLsid3XZ7KYdRTtcDWYfaKfhWhmVsx0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769315273; c=relaxed/simple;
	bh=743u7qbXka857vHX8yI0E82zy/lRytA6VvRqVxxVda8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MnwCTxYrZUY8TGj5Rr46gWUd6/cuKNffF2vWCvALxEIq4Yfz0z12tXatz/GkvxXSAyJcvgCPsGZpE38+is9vkFGqpz4sDWokMvCnbzvOBE2EuI6oiNk7M/D7U8rraPZavX/JQTZU+/Xh1B1Db5A6i1bqeDOI1S/PRl9rOmh25Js=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=vThU3d+B; arc=pass smtp.client-ip=74.125.224.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-649655f14daso1171606d50.0
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 20:27:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769315271; cv=none;
        d=google.com; s=arc-20240605;
        b=bbD3FwcHNSCB/XJoyM9NcAkD7EtEo7XbejdgNvH3aM2+eaWYKKJKHafZb5k5MT62XT
         IGrGzc6MdOm7rsBH75nKWEQFhayJYicD4izxGIAwhKCSIjwAT8TIsZxp7fyOFEIB/+AG
         gzJKo/yAdnWNM1Lb0AwZ5jp5pXtavtkJh9IJk1Ic1FsjIDk3/ma+Ic07w5o+Pid5LEMf
         vNJVkNU3RLwGpiDSA8f/ta5+2oLIppgrGHHLf34VLyDzaxu1CZSinu/nolrSrHAbrPBk
         sNbplVhZj3rdxmNKTffAjxTtHEkpsEaFgPI5XIYuqI4I7HhBxNqffp2KZjkaXVjy17rH
         Lv2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=743u7qbXka857vHX8yI0E82zy/lRytA6VvRqVxxVda8=;
        fh=uiBixYqNzz16cyfgQvNJUmeKbzE/SgZ7PzZw76VCrcY=;
        b=X0PuOrzUVuKaqcD/tAdGRR+G8IWtmMbbaG0X2qGSYXNtMT1IRoyKUPFn84gg26xltX
         Xa9jM4P8b5Y7KJmOHCKFzGYhbdIPPyjV+BEP82IPS0dMUYfBA88bl9bo6frqyiyoDwi/
         Qq+X1D5WUV4D+5BQcOzhfwBQTyFy0fqdb58tNtaZRmoKAa4ibv0sXL1G1Tvp4cz+qwBX
         vcPqxezU/EOFTgVDaP1G1wA4a/Oq7wQf65/ZR7tOjuT0ExGwS+hfPLVUz0srTIRozf4p
         kO9jGztnw/+2FCY+9oElWlrz7uXjUJA6RolT05E4ZSbuYTOBwtXTzWe5TMMyKBbSfNWD
         syRQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769315271; x=1769920071; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=743u7qbXka857vHX8yI0E82zy/lRytA6VvRqVxxVda8=;
        b=vThU3d+BEeP+i8MmpiM2RKCBBb6ksG/tuLA0nMhld28XVISAw11/eP9RST7IRjmDB5
         S6fRFM6A/WxZONKSShXebi621h3/Fz2Z2/T3XkplHAWCKD8y2Jg/mLHrpCPXvQW/pDNR
         WhDSSZH5cejwJN2gzxbp+yX/lr8vhbH35ddig5fVEE2J+QAg72GKwD7vOjgKGSlH3/DJ
         YIiFV1SsG5kLKA5P9YsXnukynKDh+MMypUbhHMLwIdXAv2s2k4Uz2vjAA0m+QDlbdfXh
         mIM2O/z7ZsHmJamNVFFIFZ8Noy16AyqMziCMHoM7xlVA5keqKl9b0nekvgFXxnZhmmOm
         4b0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769315271; x=1769920071;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=743u7qbXka857vHX8yI0E82zy/lRytA6VvRqVxxVda8=;
        b=iXtTqi2uSLKVoNITWNxps65Wz+m2+sT5IBgbJ+CHlmQpBdH+NxPzNKl6rbrXHz99Tb
         CZ+U2D+ZMZxfPqT63VOjE96uZEEOnHo31hBklT+fD1LROluL6slppOhzlpU9mnkRiL34
         aizDmc8Fw7izeRIEqylo22EtYwqTuEiZYQjwaAiE+yZU2QeWavV8LyvLrMy+vG9oCeMX
         yQ+yTStg2oq18UBEf5AFY3svdqzHeek0GGZyE6G6idf39KbIxQ38nAvQKNaVjPFLwTDe
         HPtP7ZuAPv7vsK34ryzrJ1Qio4UwPO5HHc5NpHs7lemhP4RroRdTQcTJEDUQjSezQ+jp
         SxDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVljiZaQW1XYWX/hB56gAsO1agmK7SbVoDgi+Brrl07KyXD2AwUopE0x+z/I8jW/XF0HmqTCFZPEvQB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4seuR+YH9vJIvGcGSPbgLXqDuNg6aHoIMTPcL5++94DXc9BI3
	NoApzkQWhHrDi6y9N72NJMaSOHpwBqS3kA2JvK8lBdJehbMUJy/8XdojXBsmxxa570BisrIblct
	++G8C7Tyu85ZxISvgJBfgPMir/7h8MA5J4ot2k2gBMw==
X-Gm-Gg: AZuq6aKYbMh/Ds7kpbz5nkgJWlrQDwHPEQATITqbdnwGtz0TKhnARZluSexHFg6cbn6
	cIMxuS6UVwj3nFiQ81qSSfsSNBIpBaNNlBmGxDhulFXbelC+xYV4O0r5Q4jGpxMXdpnaWEy8GHH
	FLt5KbjFgjxB1eZ1FhJB5ppxfaijz8ucNChBK4ht+0qCJ7Jlx0wwjmpPI0qPujCErTwPUlAVDCo
	Y2CX/3c8lRvrc0fOIyDie6das8Z6WZpdPBiMTqEYgzCX428zqV/4NQDA1RHOBN4JIXCJJaLEEhN
	YUpB1YmDV1qlJ6MhguhGPONVebOGL7An/4S5TA+6+sG5IeBiBRh8mjY=
X-Received: by 2002:a53:accd:0:10b0:649:4963:7bac with SMTP id
 956f58d0204a3-64970d1bb15mr394172d50.74.1769315271142; Sat, 24 Jan 2026
 20:27:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
 <76bd53dd-0ca9-4358-a0b6-a49283e43c5f@iscas.ac.cn> <CAH1PCMZq++FYr_2WB=HvouXvnxcYGFk6tngqNUk3zTOM6xXLZQ@mail.gmail.com>
In-Reply-To: <CAH1PCMZq++FYr_2WB=HvouXvnxcYGFk6tngqNUk3zTOM6xXLZQ@mail.gmail.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Sun, 25 Jan 2026 12:27:40 +0800
X-Gm-Features: AZwV_QiR-YxKTspwzVtAqnNU1yb2sCmX1Ygq3gSdAIf2_u_Qcvk5gX4z8V4nW9w
Message-ID: <CAH1PCMbEcVa6mAvw9UAG2T2Jy0W-+nEcw79nTHDJr9xgEdm0VA@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] regulator: spacemit-p1: Fix voltage ranges and
 support board power tree
To: Vivian Wang <wangruikang@iscas.ac.cn>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-259214-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email,mail.gmail.com:mid,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 82F3C7FC1A
X-Rspamd-Action: no action

On Sun, Jan 25, 2026 at 12:18=E2=80=AFPM Guodong Xu <guodong@riscstar.com> =
wrote:
>
> On Sat, Jan 24, 2026 at 2:25=E2=80=AFPM Vivian Wang <wangruikang@iscas.ac=
.cn> wrote:
> >
> >
> > On 1/24/26 08:20, Guodong Xu wrote:
> > > [...]
> > >
> > > Note: Patch 3 introduces a bisect breakage by transitioning to
> > > pin-specific supply names. Probe failures will occur on existing boar=
ds
> > > until Patch 4 updates the corresponding DTS file.
> >
> > Ouch, that's not a bisect breakage, that's an *ABI breakage*. And AFAIC=
T
> > this is still not okay in 2026,
> > see Documentation/devicetree/bindings/ABI.rst
> >
> > So the bindings would need to be changed to accept both the new and old=
 way.
>
> Ideally yes. However, considering this ABI change's actual effect, the tw=
o
> K1 boards (BPI-F3 and Jupiter) in the kernel get their power settings
> from boot firmware as well, and the types of peripherals enabled in the .=
dts
> files are very limited, the probe failure of the pmic regulator doesn't
> affect much. So, I think this breakage is acceptable.
>
> >
> > Driver-wise, at a cursory look from someone not familiar with the
> > regulator stuff, maybe we can make it compatible with old DTS by adding
> > the new names as aliases ({devm_,}regulator_register_supply_alias?) as
> > "vin" or "buck5", if we see the old vin-supply definitions?
> >
>
> We can do that of course. My hesitation is, however, it makes the driver =
take
> extra code which may not be needed once all .dts files have been updated.=
 The
> driver code will be left there forever.
>

Mark gave his opinion in v1 review [1], please allow me to partially quote
here: "(it's an ABI change so shouldn't really happen, but perhaps there ar=
e
few enough users for everyone to coordinate and it's what you all prefer)."

I do expect to collect more ideas before I decide whether and what to do in
v3, or maybe v3 is not required.

Link: https://lore.kernel.org/all/2e2c2754-fd3e-4fd3-aae4-d7af63e3b528@sire=
na.org.uk/
[1]

> BR,
> Guodong Xu

