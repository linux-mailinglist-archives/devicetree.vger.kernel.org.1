Return-Path: <devicetree+bounces-267379-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGbACeU6nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267379-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:32:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E23E1758E2
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:32:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 28487302F41B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:32:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 092F136167D;
	Mon, 23 Feb 2026 11:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HrPevAkY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD5C353EE3
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771846367; cv=pass; b=rSwIbMyUkaEQCQAi8ybcPKcSd/qLel3L8h4kAz4QnqnPvIR8/t1xmtd/2bUDGlzRW+RDwbqtEOimrj8vOWBOSTJabZspAQsiFsp+sjgUNIc9gsseM+v1gv9/5cehsBzIJVMFeZGGC23ZYSU9ToOdvcfL3/ir9YwRk4pe4vb0jp8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771846367; c=relaxed/simple;
	bh=C36X3Q1+2BRe1vNeAaVKqKpK0KI3yzvWD8O1nPnZ6xM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UMr4ClKfsahd9cL4XnujQWo++ZAwCVhULp80TWgVNJyZihXLciHxBpIcQYTxyRX1YNAZw4h6eyG54OgLdyYCqww+MFABP0rZdR+FB0JkSKJzbqsECnRG3OG9fF16b6gEawa6zG2Dq4XHH4EKpbilAqdj6O2wwGwFbzoLUot7ZZ4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HrPevAkY; arc=pass smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-c6e734ba92bso2048224a12.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:32:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771846364; cv=none;
        d=google.com; s=arc-20240605;
        b=a1wYBpRNuCdjY7iK0p7MuVlP/DG6ML4OWJEnzufHmI7mkNy2RKG0bWlga5piygoXvk
         mrq62p3sLIqbAzASNpVNsPcwlb4mLtpzN9DpB80pzJwHSUP3SNfPGbCxVRfJmV2kIixr
         9QA+0IMdv1NgVgTNNPxj4WkJFa/RU1kVxB7Rf5/pVPcmiVg7zAL1AwvDOiOTETrtTOta
         NHTyPlgxpUy4npBYrfe7zIwmLwb5Z6Xhi7lGb2bzGvXOJJQdH4daG+rfyRkmX74erf3A
         OfZ+9gQvZtB614BEb0sWEOYF8zBjkbWZdlWQsM6gGLlrntbdsgd5XihvX6t51xo0zcjX
         yFTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UxBnGBmedQ54EWA7A2cjDvEbeSIOXFfB5ArOz48xqN8=;
        fh=i1zT7sK6peXJTYViHPsSQMWgtOPFhareCzMLuPc+Avs=;
        b=A5eXkW1h7C6twcl3ZOmk2tbwfBm2IOP2V4L8QAOoW6XZz1Ol3ow4DnklMmZSMPNQEz
         tTz1vxhfCCB+dFptwmQG8kDhrmg3X6nk7IVWlvfq1W8HF/VnDuizP7FxJrju1m4OEqLj
         NyNaCvG6QgS+sOLvhh72CpYmCubS9R+MGmM3a1wm7+AeSlAbcRE3VW2A56fKqxjgHind
         qWIScUq0QTRetM73zpxRPrxTU8SPYQHKlRAeehd8KOSnjXjF8oEk1tXBml6kvivbliXj
         JQw4KWdKn2ZML/UvvSJ5/AZrljlk4fhgrV7rgoVGQF43Zx2PXFn7uKToDJn/kib+u6ha
         s7ew==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771846364; x=1772451164; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UxBnGBmedQ54EWA7A2cjDvEbeSIOXFfB5ArOz48xqN8=;
        b=HrPevAkYs4Bg8bX8JWL+3zJJbGiqLL3OjC64OOcggY7/tX6He8In4kqSGVWdjQBswh
         Qef5lRlfXBfqZQi5uyNowf20ssZdGu4R7LiY1/cJ78Nn+KXKrBQ9FaEIAfux1rDa+De2
         1wCpIfZpDdNicaXnPnpEZQQwJDPJyb3aNjhYumfNg6NMy7id9SrE2aOizgPk8l5nXowD
         gVr0bKlzyh63Hk0hb3nxZfl0k4iErqrTGg3ExuZWEJzNTStgYqfTURXDe1TB1XRPDLaQ
         mXfYgqgH50BlZskhP18RE+5mZik5AAprDh9gFY73W3ebtZRNOS37LQ6Zq0KHTLIrD5Ha
         hP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771846364; x=1772451164;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UxBnGBmedQ54EWA7A2cjDvEbeSIOXFfB5ArOz48xqN8=;
        b=YPrLOg7Yi1v7XynOwr/ZQzWf+LkEDTnpL990x12DqlPYHWI2LkWrSJ7slCL9I+ONhg
         o23KwNT4Oe6kC+sW/RDKRiUVvl7WUg7tSyf9z9A6V5bLRJY8pUczU/OobBE5YtCUsExi
         gy8xaCtfpWjKtnbS+7Jiz6ti2fkLu8uLy2+8ZBi3ngBxROtAA5xbFqRPreCWL36dgEFO
         V/AwGvipwVBzvb22Rxij9AhCKg1m8a/1Ht8LLU/6C/ed3gpsMwkFaqQQylNIfoYVg1NP
         iFq0b+93VMz/HOxiLamTIMQmq2brXCt1+he1YvSCQ8pyQiE77uwH1jw9n0AWuKOY4HIQ
         fXkw==
X-Forwarded-Encrypted: i=1; AJvYcCWkYAELDv/y79Uc1IXgFQLE0cRtoEQElGUIsJTRSeMIq/hAxnDJwJEj8tl5if18OeVY6VsK2sWmym7u@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0WCYNUAv4fT7cfpi+XMHf/rRZtypRhNncubgjkErRLOW0Iw88
	dg9KH3fU75ARRC1OHGpqqxA10el8TYWMGOBtVUpH5/jrwvS6DOjkLNxvago9QCCh0lH+bFW+9tX
	/zbolQBe+i8Bxz86+y3mnFrIFJ47jikU=
X-Gm-Gg: ATEYQzxy2ob+odWtdJeyoD5E+yLBxS/i+PVqcQcqVKFCvR4rgcq3NcmcfMjC2MIFB4b
	rNb9H2MRtFGsKuvd4zMaVaBJxU0yPp9CsLLPiE7MOabUOch1UEGuPOAOmRkNbYeGanDJWDD0dfQ
	UmEnzR3zq0KjwHigHVcPvlyhiWmR34EHHXSd+bbb1IRT3MUjn4E86xiRZbCo7gP75AA6k6y482q
	wwhMwa/Nblrx6KgJHV3Y9k/aIVdW39YJBuH8a3PIXA8Q3hC9o8FQjGYRa6Q9y0ukrzV/DVSnSr7
	/mdyu6Ju
X-Received: by 2002:a17:90b:4a03:b0:354:bfb7:db1a with SMTP id
 98e67ed59e1d1-358ae8eb3c1mr6483020a91.31.1771846364557; Mon, 23 Feb 2026
 03:32:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
 <20260130-yv5_revise_dts-v4-4-4d924455f3a7@gmail.com> <963194a5e7e88ae8ae1fe367d34d2fcdc329d814.camel@codeconstruct.com.au>
In-Reply-To: <963194a5e7e88ae8ae1fe367d34d2fcdc329d814.camel@codeconstruct.com.au>
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 23 Feb 2026 19:32:32 +0800
X-Gm-Features: AaiRm53bpJFrm7XPxTVOdQ54aVpHKM6_Ww6c7tzcvFzJ0UfydujR-z_VZkvGO7s
Message-ID: <CABh9gBep1U6oMLTFG0c=xX_ZceeA9=q=zELJ8CDENLz7a=iM7g@mail.gmail.com>
Subject: Re: [PATCH v4 4/7] ARM: dts: aspeed: yosemite5: Add ipmb node for OCP
 debug card
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267379-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.10:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,codeconstruct.com.au:email]
X-Rspamd-Queue-Id: 5E23E1758E2
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 2:25=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> On Fri, 2026-01-30 at 16:20 +0800, Kevin Tung wrote:
> > Add the device tree node to enable the IPMB interface used by
>
> Here in the patch description you use (capitalised) "IPMB" but in the
> patch subject you've used (uncapitalised) "ipmb". Can you please be
> consistent and use capitalisation for acronyms.
>
> I wouldn't normally mind and would just fix it up, but I've other
> feedback on this series and have fixed the same problem a few patches
> already today, so it's a growing source of irritation :)
>
> Andrew
>

Hi Andrew,

Got it. Updated them for consistency in v5, thanks.

Kevin

> > the OCP debug card.
> >
> > Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
> > ---
> >  arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts=
 b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > index 983aebc394d9159c7e3db2e7c39e963f7b64c855..84d3731b17f7c7c87338672=
bbcc859de2b89b722 100644
> > --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > @@ -365,7 +365,14 @@ i2c6mux0ch3: i2c@3 {
> >
> >  /* SCM CPLD I2C */
> >  &i2c7 {
> > +     multi-master;
> >       status =3D "okay";
> > +
> > +     ipmb@10 {
> > +             compatible =3D "ipmb-dev";
> > +             reg =3D <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
> > +             i2c-protocol;
> > +     };
> >  };
> >
> >  &i2c8 {

