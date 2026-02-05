Return-Path: <devicetree+bounces-262881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJiPK+ZJhGk/2QMAu9opvQ
	(envelope-from <devicetree+bounces-262881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 08:42:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C639BEF85B
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 08:42:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DA9EF3008454
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 07:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF30035D5F1;
	Thu,  5 Feb 2026 07:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="beTqNtTE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1D235D5E0
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 07:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770277333; cv=pass; b=WPvR+Fhuei2tknRupjTfGcqHucRbffWsQCgWdbLZP039K/Br/+80d5st3UOXekCXYwLCR8kLDdrNHWCrzpPCbbEdnM0rhlVWsRsnCueD29HuDVw6tp9DIqT1GgSdoaJHFMkMgyHHV8XtLSTrJ8N0wFhba0M4UbI2FmG/8Pn3lQw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770277333; c=relaxed/simple;
	bh=S/nsTC1/V0Udh3YCNfcgu7V9ClpdOHlVkJ1LUE3M760=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZcY/pW26O0dyuMGbcCTBCWWT5ZEOh7GPzKdSBj4kkPBw44EisgcfMymM2nc+PqxxXFn2dJC5AcGD+lA/PjiOSxV7GI7vnooFieVaULa1+wvpxndrQyJeSMNA56JryNs+B9nNJWS6k03g3Ru3aS4wkMGL/WgWWAQdP45h7EIckNo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=beTqNtTE; arc=pass smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-79273a294edso5672387b3.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 23:42:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770277332; cv=none;
        d=google.com; s=arc-20240605;
        b=TIn8SPIyOQywPYlxCyT2F7BY3Th5htBh5tLE3XtoA4x9leVm5BFp09aFg6tOPi5eIn
         f1NF3Dxa2vGjpY7CD2X66SBbnJPvbaZ4wySkluixtBO02THrADhOGtHFXyVpq75ZzJkT
         HP+tltX8Nnv7szbNScYGckLcDcjXJ5FsE+2t3D3FNYt3yLyzw2ATtrGdbWgHrP56WRUP
         sZvR6VS8oGnJtRpeNe55TWcl6N+DLxdU3kpRxEpRnFBkplsFdRBm2ME9IgdphpJHDlX5
         sxyog3yIwnC0HLlYyUFyWWaUeSvbncauHYp7noB+GlMs+TVdaIaIWz7fSgkteupkTrtt
         GEIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vCsVndFzrtL2hxIQjBbohAaFr2ETBAeGKs4H5l+MANM=;
        fh=NmWZ+ufS7lLtc8xlH432ngqNhIx7aMyGcKlgtKM4t9Q=;
        b=al2d7//Uhsm+BoojjQGEdgdju2rwlkvwdu0HSuW2z7mW10PPTxNuJdfJfJPSv48NNO
         MCARLMf9TxlwYz/XZIybI5tClU8m9jg1SKNFMYH2suObkFNG1f5NpGZcvbyzn3HC4VEE
         7f6A81jUnRB2Mfz+h4lNwPpEnJ1SzWyxJvjfDW1/rtjGz2oHuWaVVeeLT6Rmv+6rzBBl
         y1DPyiUJHqrNvPEZ/KdwRS7GLstwMX9FM5Ac+RxNlYg7njxLsEztPFtI7XS4oYWvf/N5
         w76wimJ5N4qIhFP7wK2RQUhmx/JxfAfcUgclg/40N+l8zdJrGuS9zSEKy9uXxsr85xIO
         ertQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1770277332; x=1770882132; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vCsVndFzrtL2hxIQjBbohAaFr2ETBAeGKs4H5l+MANM=;
        b=beTqNtTEL4S07cjGX5zXYk2Pv85KJ0b3Bf2RIhBLmCk4vcMZnhxtsTsWNNM6FG+b+x
         iYNGoNHyIwvJwBlOcnijUFlFOCMjR441D+i3LLH6Su29GbcNq3tBquAIAeeoAD19HM19
         mTXBTxc5Q6KjqYlXFRjWZsVcZqKakc/Bvk8MTHGKTCBsBT/1QbX7bnPxSXH8+NA0mo1w
         fv12llj/9qosYhUbqy8Lpea8U4GE/zamNNnODiYNNzZr5C/Ph08cjzHojSlgAZHrTzes
         f0pqPeOnbFJdW9fY2xrYDalSpNv15bShiKhcKXGzfw1GHx5MINkn4G/+0JTqS2HsaerY
         ESkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770277332; x=1770882132;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vCsVndFzrtL2hxIQjBbohAaFr2ETBAeGKs4H5l+MANM=;
        b=Y8iiuQHriayzBNucicoww5c/xfMslsUMt7k5Tuq1Hqtott/b8C3QmQQG9vBQrZfn5z
         DiIhuEvFRRT85Z6uecC7MW7f8geUDksu4XWE/Aiq7l49+Aezy85sXydbueewVEgKUSuq
         78Nbg2m8yGqqIbqoEjI35UR0MgtJZpn45Z+9dteUo+LwbzYr39tH2G/WBhUn1UsenLNe
         bYtumLuKO+i381Qm50pNgvIJLW/2co/99bp/igQyJufwIkDUJBgDCrd+NOurKKBEQ4uD
         FBS9uHs5Pwg68ToHUTksKDdczJ4/j91aryOrXmfpCNp0XC9P/5pdeKXyTdRGl5vCT77q
         ZDAw==
X-Forwarded-Encrypted: i=1; AJvYcCUO9fy3PAdfYOlkQWYnXfH/1S0vMsi+jAm4q5fwud5KZohpJVXF2bosXVhXcBLx+Rs259rVx7YjWCqM@vger.kernel.org
X-Gm-Message-State: AOJu0YxyB6E8BgdL4MzVYpUBbROvBkHwjCTZzSRJWS5Sxe4GzKUF/A+v
	M/bvXhdeQtb5mHUklHKUkxmrElYyHJW5TTAij4kNNH5j8ogVMdEl5hlBImFDgnXxv9pWREwHiqB
	Tk4/SFLUiMx4AoZOVQpWdOULv2X2VHs+NlYkPufDyYQ==
X-Gm-Gg: AZuq6aL+2Ff/1CkC/+U++9mlLc/C/l08qWptLvPXrJ1FgdJ8HoE5KwOFO7fBcRAqzod
	kWjVNHDRB0fRUZ6KvIloxi76XS+qapwcPaolnZDYHJc4XOYkmCGw7nqZTUlALyOHk0D+ruHxxM4
	SiC9pZYqLVUtSmpsQq5xZQv/IJmja7L3o7pEG6w8NTGcXoEIVWcNmj2VkvO5M8lUm3LTJWtu8GV
	c0Q6JTM5vdaT89/wJCGgnA4nKPQVC7zHswyfXfA0G1ATukS8fUCafUzB5X49aqGyFzHKdOcVaa7
	DjdcEmUs2vpj291xCyPu/6k6W30Rjm+3DXOUY0AdSQg0
X-Received: by 2002:a05:690c:39b:b0:794:fe8f:ad8b with SMTP id
 00721157ae682-794fe8fae16mr55216627b3.29.1770277332375; Wed, 04 Feb 2026
 23:42:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260204-spacemit-p1-v3-0-a894b3057026@riscstar.com>
 <20260204-spacemit-p1-v3-1-a894b3057026@riscstar.com> <20260204-unlucky-raven-1ca0ed8f3392@spud>
In-Reply-To: <20260204-unlucky-raven-1ca0ed8f3392@spud>
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 5 Feb 2026 15:42:01 +0800
X-Gm-Features: AZwV_QheG0gYs892iDNFuUkxDWoz1fptgEI2peyofeZxhFHIoYa7PK0YeWnUmlw
Message-ID: <CAH1PCMZ9S95JHzuZc1hG0hwxjVmCg9RezZ6rNjt_xQ25FokQOQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: mfd: spacemit,p1: Add individual
 regulator supply properties
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>, 
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-262881-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,riscstar.com:email,riscstar-com.20230601.gappssmtp.com:dkim,0.0.0.41:email]
X-Rspamd-Queue-Id: C639BEF85B
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 2:07=E2=80=AFAM Conor Dooley <conor@kernel.org> wrot=
e:
>
> On Wed, Feb 04, 2026 at 09:23:01PM +0800, Guodong Xu wrote:
> > Add supply properties that match the P1 PMIC's actual hardware topology
> > where each buck converter has its own VIN pin and LDO groups share
> > common input pins. Supply names are defined according to the pinout
> > names in the P1 datasheet.
> >
> > The existing "vin-supply" is marked as deprecated to avoid warnings
> > as dts and dt-bindings go via different trees.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> > v3: Mark vin-supply as deprecated.
> > v2: Remove providers from the dts example.
> >     Pass the 'make dt_binding_check' test.
> > ---
> >  .../devicetree/bindings/mfd/spacemit,p1.yaml       | 53 ++++++++++++++=
+++++++-
> >  1 file changed, 52 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml b/D=
ocumentation/devicetree/bindings/mfd/spacemit,p1.yaml
> > index c6593ac6ef6a..41f784408e29 100644
> > --- a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
> > @@ -28,7 +28,46 @@ properties:
> >      maxItems: 1
> >
> >    vin-supply:
> > -    description: Input supply phandle.
> > +    deprecated: true
> > +    description:
> > +      Main power input (deprecated). Use individual vin1-6, aldoin,
> > +      dldoin1, and dldoin2 supply properties instead.
>
> What's the point documenting the deprecated version if it doesn't work
> anymore?

Keeping "vin-supply" in the binding with "deprecated: true" avoids a cross-=
tree
warning. Since dts and dt-bindings go via different trees, the new binding =
+
old dts triggers:

pmic@41 (spacemit,p1): Unevaluated properties are not allowed
('vin-supply' was unexpected)

Rob flagged this in [1] as 'intermittent warnings'.

I'm open to dropping the deprecated markup, maybe just accepting the
transient warning is fine?

Link: https://lore.kernel.org/all/20260129181604.GA1398997-robh@kernel.org/=
 [1]

Best regards,
Guodong Xu

