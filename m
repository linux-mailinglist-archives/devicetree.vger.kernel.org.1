Return-Path: <devicetree+bounces-268443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEVTH6YWn2n3YwQAu9opvQ
	(envelope-from <devicetree+bounces-268443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:35:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E898C199B53
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:35:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37355301016D
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C91083D6466;
	Wed, 25 Feb 2026 15:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ULoAFdpi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855BC3D4101
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772033392; cv=pass; b=g4VsdXKJqJtyrdo7nuZNx/bf/UgfhJFeKKOrlNf9zX1HGHgUB94Gjc1vrZvpL+q8ZXbYhUN+I9DB56xXxR/z/PAbrlXHMkIU9U43fUQjOxvw2Z9DjzTIAtNIzIo3IHZ/85v4pU3uPibxQv3GJLwtsYA2DYlt2RI0mTjDtWDz07A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772033392; c=relaxed/simple;
	bh=u/XeSMUqb9IOuw2BbeJMaDTmkfUVpHYV+B4Ama/bocE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cLW1uwZq8ohxSMGyXT85rkL8n6Ijq8HAuc5iSUotC6PNPR7Y5s+hvMGdm/sPA943t8wUGuVtVCoI4elKhXAeYATKCcF8TZlJ+o0XGbDsz7tvNYlsLVC7tQyhDgoe2mOApVasVkJsGIfiihLlUmq7QhoLacQMfttX9AWRxNsN8j0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ULoAFdpi; arc=pass smtp.client-ip=74.125.82.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2bdb17511aaso2609803eec.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:29:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772033391; cv=none;
        d=google.com; s=arc-20240605;
        b=gEvRdrXn45cEL0aWSzr3xxjk7J5uq1+cWPnXXF5rX9EgWnKSQaDFY7g9GOdqHugC0j
         BymqQtMFY75MKXmfidpJt+tgkiUv5wvN3WjGQl/9ibOjOn7jifQk2+YXkUKagWo5GkNr
         8XC3dDrOHPpcel+9ZgLSQCBQUNEevwNQpWkiMiu6UDNIUGwin2acn7EVfB6y3yoLNFPN
         bCkKEBBLs+SBcklD8oi0fYHPDF4euFHzzstQ1Px3vhVcTq1GC3TVrJvymjKBTiq5Ofhg
         JQprJHyWHiTjI5tPlNNqlGOmTeNWTyh+SOma7pNRQdHP8ZfV0ugOL8Kf7RMqRH+Tx2mE
         kzXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bQ5YNTgeCggafYTqJ1Vg5khBu90oyOTzWNTsAXkO2LI=;
        fh=zNxaIMp7mZhMt7yuqNNog0+Dny+ibTIR+aQw47tkci4=;
        b=HrkHCJRkHjO+9/5T48G0Qw5a4nCz3N5LQpzd4TZa01vKQo1ALT3ZYNaFEcr2PIMKDm
         AtEJCvhXVZEg/seSJyNpJK7M/kYfO8OJ3lmeJiyvHoyj81NCkj2Vv8mgkTTZ4L+mH+iX
         QdnuWTUfWRqrNH9Rr5uwmYFiBGfgcucuVcZRBnoAzTOJL+R56WLLK43MLAySP2oXNE6J
         pvQEiw410OfDBN1ykziO8dv9qnNUGIvK9fUk97vZW4E7P/CEyXTvH+vYa5Y58wG6AwaL
         Z5zvM8bkhLoyeE/bnUErPJwECJYtvbE7aIHUzgQ3g6YB6np+qPOce6dhwlw+BWG2dqOY
         Oc+A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772033391; x=1772638191; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bQ5YNTgeCggafYTqJ1Vg5khBu90oyOTzWNTsAXkO2LI=;
        b=ULoAFdpioDFMZ49TqlWLib9jDA62WPaW0A0pCwzTheJfbATd7PZt065H5hPY0OW2tC
         hGyQlcTi8dzso8tGQXPa0//UbM5fGPRm5dtYj1QIMvMTz8+xi4dKw/ShJHEhuwspRZbn
         zhrWgBbWKIL2q1RTa6Jrp6C17uKDwA8WCk/74v1T+aqzc3l27oaxzYwgfHC8oGZaI57s
         9b6begc+QULIubKPupGJ834h0Zuwpn/siAHpHoclxC/Edl2DGbi5sONmEhaNHQjEHc+o
         vAAUdDXvyMyDyBqZ72xP+BWvWHoir57OtOK1WgUuldgBCU8zrIIFqUCryIKmunjmUM5N
         sZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772033391; x=1772638191;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bQ5YNTgeCggafYTqJ1Vg5khBu90oyOTzWNTsAXkO2LI=;
        b=olYPkq3IUL+iMhfb/j3ZG2UkWLYwjljbFf/Mas3vOXiyrzv1LjULDUMrxjZFH0c+Uf
         F7QDEbu5lqYjMZej+hdYQlcLEWvU8+u9psL1/InQ4pNy4fl2fJww+pdlK5hy46ogO+YL
         EA0uYBHSiC7nBkMCZBB2MV9zB/Mp437bLqjshPstRPg4JUu9GO8PQJ7i+VvPhkqA5j3n
         /ruGjI3/ShlGkISj8g2EaOGy8+8zjXN/BIsaUwgjljJWKDkoeDdVdfJSKbDwywf8dHVf
         TJnMd/csfxwQBNyqubDYj2E2xvUBj9QIjvL7R6kWnYqFpo5wci1X/O6EesqA5rfvDi77
         yp1w==
X-Forwarded-Encrypted: i=1; AJvYcCWLyw6wHjXmxNET8menRgoSq9/6AA+IHw9u/o0vVEjvTljeGkWe6+mxiF0tge97ePzk4VzAbzt8Up9/@vger.kernel.org
X-Gm-Message-State: AOJu0YxNkSP5Tu47ILBe9z5HnEH/DTkmnxQWOlu7OGglSL4RUxEf2sxn
	j4tl4RdQ/FxhA3UNubzubA9X61nW24mWjUM50GAXFf54w+6H0ZvUm1O0bMhVhq+iEthZnMDIwo0
	vgHn8XSJxSMcFld85sL3Gh131T+pBQaY=
X-Gm-Gg: ATEYQzyRrt1xWwdJigJLIcd5vdWxMl+dsN3OkCbLWAYqd/GpAyJNGSkwkIoXGuJh+pb
	ojPnaOSmfL4134J2sAZX7iUJC51Kyqf1ZUiP33yKNI3Ua7a+NP9+6dOjmOugBexKJPk+n0n+/4p
	UPSzTrBDBacMqXEBJnSU90Z6bLmngH5ebOOKr3puCV3Mrm7p2SCP86IRiE2MszOXqKR3CFWtGjR
	lnaCcIZclrMkcm8pK03Fx17vLcTxkEh6fMS9bsBX/KD3+ZizVEQd56wgcP68NUI/5OFG6/b1nll
	G/btK0w=
X-Received: by 2002:a05:7301:4090:b0:2b7:112:42af with SMTP id
 5a478bee46e88-2bd7bb4b16emr7182670eec.12.1772033390504; Wed, 25 Feb 2026
 07:29:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
 <20260223-panel-patches-v2-1-1b6ad471d540@gmail.com> <20260224-bulky-rabbit-of-courtesy-83fabc@quoll>
In-Reply-To: <20260224-bulky-rabbit-of-courtesy-83fabc@quoll>
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Wed, 25 Feb 2026 17:29:39 +0200
X-Gm-Features: AaiRm53vrrlGAFjFL5krtfYKIvvyN9BeLRAbF1DkgFNXMhAuE4jNnWbMUA7sWZA
Message-ID: <CAHuF_Zq=Rpg0HoRJv-BSREEhT8tYH4r+BCbZ7obrG36vSmwMQA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: panel: Add Samsung S6E8FCO
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?S2FtaWwgR2/FgmRh?= <kamil.golda@protonmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[bootlin.com:server fail,mail.gmail.com:server fail,devicetree.org:server fail,sea.lore.kernel.org:server fail,protonmail.com:server fail];
	TAGGED_FROM(0.00)[bounces-268443-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,lists.sr.ht,lists.freedesktop.org,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,bootlin.com:url,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,protonmail.com:email]
X-Rspamd-Queue-Id: E898C199B53
X-Rspamd-Action: no action

On Tue, 24 Feb 2026 at 09:27, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, Feb 23, 2026 at 10:26:20PM +0200, Yedaya Katsman wrote:
> > Document Samsung S6E8FCO 6.09" 720x1560 panel
> > found in the Xiaomi Mi A3 smartphone.
>
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/su=
bmitting-patches.rst#L597
Will do in the next version
> >
> > Co-developed-by: Kamil Go=C5=82da <kamil.golda@protonmail.com>
> > Signed-off-by: Kamil Go=C5=82da <kamil.golda@protonmail.com>
> > Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> > ---
> >  .../bindings/display/panel/samsung,s6e8fco.yaml    | 64 ++++++++++++++=
++++++++
> >  MAINTAINERS                                        |  5 ++
> >  2 files changed, 69 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6=
e8fco.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e8fc=
o.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..8c042ce5f65bf317df48e10=
9d88ebdc87ef5d5ed
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e8fco.y=
aml
> > @@ -0,0 +1,64 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/samsung,s6e8fco.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Samsung S6E8FCO AMOLED Panel
> > +
> > +maintainers:
> > +  - Yedaya Katsman <yedaya.ka@gmail.com>
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: samsung,s6e8fco
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  vddio-supply: true
> > +  ldo-supply: true
>
> LDO is the name of the type of regulator. Why is it called as name of
> the supply?
Can you explain more what you mean? Do you mean to change the name of
the property? It seems that all the regulator properties are named
foo-supply.

> Isn't this binding exactly the same as s6e3ha8, s6e8aa5x01, sofef00 or
> any others?
Yeah they follow the same pattern. Is there something missing in this
one? I will add descriptions to foo-supply properties
> > +  iovcc-supply: true
>
>
> Best regards,
> Krzysztof
>

