Return-Path: <devicetree+bounces-265590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FGlGg/fkGkqdgEAu9opvQ
	(envelope-from <devicetree+bounces-265590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 21:46:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AB513D2D0
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 21:46:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30EB7301CFB6
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 20:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8D043054E4;
	Sat, 14 Feb 2026 20:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZTJ1q29y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB2D1DED42
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 20:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771101960; cv=pass; b=mg1Gm09TUmwZ9pd6YGUCsyXGg0CEUNTYexrekPxuUc6cOIVwVUmyugisZJr+zKuyRGY0veg206SSdYNtBNqJG745uGB8GCuJ6CuOk4Gw5x1GX9gzGKeJTWP/e0VCYB02tdBGgtAdyLkA6NlM4SeEO/N21kT7It4c40cpHt+BeP0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771101960; c=relaxed/simple;
	bh=lBiVTrGMk0ZRN1QGaTkrqE8XbpfvB6ZZVFA/5Yy0G/8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qQsFH4Y/JS/3XTG3SvAoLJWVCzMqCxf+ZaoRBg6h8MQyUr3II6OVvf1ma5LbrrJD409n+0bwPVm12THhiu3y5rgHJojOdXBaKuGhjqfI95W7h+goZ5w93hdCfEfMFhgcI/OT4QmwqVwURLx/Zta1Eedj7y5dfsxTiyTbueLYME4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZTJ1q29y; arc=pass smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-948bf40406bso643645241.1
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 12:45:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771101958; cv=none;
        d=google.com; s=arc-20240605;
        b=J7AgDqp98HlV05lYKmNxzZPRvbbuy4Yjrez/Wyg05zS2Ri2pEye/etH1TAca3/AK2b
         z5bqgsZIJxlF8CSPyDw3wUIv1i49v2dVfstsxB8HjJ7+pALlLUos1Px6WTa87hl2NW5r
         73J5pKRheyj0UrVBoBQLf7MGNODm6AR8pOERm3NE4nlQfv98/5JsJPHtVm1kjAOAt0dJ
         opWPw4919Rl8a7BOw16nqi1RzC/Es5d7kMbEXicU1z1/QF/+FOlOIBiIdWxlUM7S4XHd
         /n7LW+Ilmg5ovV4E5i+wLO+UrbaOQJcr35Sifl8I6PB5v9p0cfdjIdd1hf1BNfpg6tm9
         XdKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yV+zPkSeaVocPQ09zuAThwGqA+dNxR9ezr6Dwi1Sij4=;
        fh=ZSHZtflofwFFnq6Egg45SPQeOhxY3aGOA4l7YEzvjb8=;
        b=cxYi/Xy64r7DGGrSV3Tstq+DG/9LNyUjuUZNtU7ItjSAqpd+kzv58XyMBZ0eIx84eq
         cSucH36GZhgX7F1ys83WcO3BEHXdWbLB7wKNZ0PWusxDSpuNHQhlEctpOt9jGnc7c9qE
         TNjQsbclsddYVa68wMVWErq9Ann+xKWlpgW8rf+g+zX8F56K8Pw6SeTKc6RDtoirUdZp
         d8fuxmUS+tLx5EY/or5IUpvEH3M89MsQEOMcmfMPlyRq3bNi15M/aZ4rF+xvXjEX3HMe
         C+8RqypmXTKbva/Tz+v0aym0JV3OR6jejPu6h4plVhFkS+BYaW0XgdKi/Eby/bvw2vz/
         ooMQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771101958; x=1771706758; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yV+zPkSeaVocPQ09zuAThwGqA+dNxR9ezr6Dwi1Sij4=;
        b=ZTJ1q29yXHfsb0E33GB8wHbNe1Jwf0/gR75+dxl1xPeH9pvsJuO66zgRlbgq3UAN7i
         56Zt6sweDD+tp+3NtyDKFPLcYM6E3fdyiU4GmmFVJ8bXB3FUEf+RX5MVUg8Sn1Sw3L9K
         4w3CYBJ3jUVhDT+u7m9SFfwhcBLDkV4vGvtZmk01CuIYTK8zh69MpvJO+iMvJucxUB8C
         +T3UQykinuSvBoXm+5i+egdUiwNdAR2b7p8hrwPDj63eotKlKXpHPAtHR9wCRTMyifyZ
         4L7hbHbwgNvZ/137NPkkSxE4GFOtIvIpvLTl9SBtFE8CroyMKder46HsNbRC8vZZCMWn
         g5YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771101958; x=1771706758;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yV+zPkSeaVocPQ09zuAThwGqA+dNxR9ezr6Dwi1Sij4=;
        b=aD57Y3RhJ/3T4NjM2oA/wLbtizVrilbLdQqoKgCIUYHaVZRYKmg6inp+64HNjazmAO
         TqbT1y0SvxW5dDYXJyvQo5UPnF19U//SyLbauho6bt/HU0RoSlTpzemdnxuKb9L7JMEM
         NMxqzncs4zdvt8ROH+nbDt7CdVZvNPIVGsiJYVWR6DplXAgzZcmeGd6JvXSvBBvYEKeL
         GEF5ziR4MhC2roaPznGJHOGYZetfoS4lM+MM0eg0QmeAYE+FOFlfbxWGYTtrbM1iUAI8
         z+mN3LtRAbDMZ/SHfTcIxJMFqGG6FjbzZcX3nZeS0VlXhiz3Gwt4DRVD1pBhsiUAg6U3
         m+/g==
X-Forwarded-Encrypted: i=1; AJvYcCUUYO4PlNhk9gqula3uy0NSCn566fAWWBGa6D1iFEFC8EB1+ARb7FpX3JEwFvLni5syZi32a0AHmhfC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4ZMkSvrYBBpR20lPrr1ztzSHNWFb49OL5YPYebuFXZczm8wEh
	Ig6775Cc3J8s04MJs1e2MFTnSdyUU9vk8KyVQ7EZghI0zN7Q9X7qkg7iKbdmTEwXenELs0hOD/E
	c2ODxW8MPLC2sFLLPo5Y9Qm9A0tNHRe8=
X-Gm-Gg: AZuq6aJQNKBx0ew4vkb7Qh4b65GUCBH3ieme0D1txZBpJYiRse3dMylumBPHUfIJmyz
	D4rGCAvZOpwMHHcoF+N2X0bpfu50k7/mwR3dqzw8Y/dYHbnN0BEIOdpxPwkhgd/RyIAc14eFqE5
	HJveatXEUN9hOOjICDBz9lFtA/04K/Q7+i7Jqa5np9QIYnElHFF2Gk8EeAG8ayWjtJF3Dw09cZz
	yZ6zmuGdLTsmnTDMPXHO4qY973LLIxK/+kBrPeMW4o4qB59hfiBKXQnI8w2dXuAxc+gIg2r8P2y
	rA7pFt1dNwRGesZ+p0Ozt1/f+1q/ym1cu+p8+Hr1YSXiOYnMPn7+phRTpMkn45VIvaRUFDND5mM
	4mS0=
X-Received: by 2002:a05:6102:3a0d:b0:5de:8933:9d0f with SMTP id
 ada2fe7eead31-5fe2ad158f4mr1010874137.9.1771101957638; Sat, 14 Feb 2026
 12:45:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260213223204.2415507-1-james.hilliard1@gmail.com>
 <20260213223204.2415507-2-james.hilliard1@gmail.com> <20260214-loose-slug-of-courtesy-bd846f@quoll>
In-Reply-To: <20260214-loose-slug-of-courtesy-bd846f@quoll>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sat, 14 Feb 2026 13:45:46 -0700
X-Gm-Features: AaiRm50UUqg9PWfw6RMtRkweCJKAyzBDfGlTXP7m2YMg6eWpBDv35RTtSfI5pkE
Message-ID: <CADvTj4pRE1LHfPnVbWLpd-AedCgCNWPDjcP=oLHyT=muH4r6=A@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: gpio: document gpio-line usage
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Saravana Kannan <saravanak@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-265590-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 15AB513D2D0
X-Rspamd-Action: no action

On Sat, Feb 14, 2026 at 2:07=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Fri, Feb 13, 2026 at 03:32:02PM -0700, James Hilliard wrote:
> > Document gpio-line child nodes for GPIO controller initialization
> > without line hogging.
> >
> > Describe gpio-line-name semantics for both gpio-line nodes and gpio-hog
> > nodes, and update examples accordingly.
> >
> > Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> > ---
> >  .../devicetree/bindings/gpio/gpio.txt         | 47 ++++++++++++++-----
> >  1 file changed, 34 insertions(+), 13 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/gpio/gpio.txt b/Document=
ation/devicetree/bindings/gpio/gpio.txt
> > index b37dbb1edc62..cf591954eafd 100644
> > --- a/Documentation/devicetree/bindings/gpio/gpio.txt
> > +++ b/Documentation/devicetree/bindings/gpio/gpio.txt
> > @@ -199,28 +199,41 @@ gpio-controller@00000000 {
> >               "poweroff", "reset";
> >  }
> >
> > -The GPIO chip may contain GPIO hog definitions. GPIO hogging is a mech=
anism
> > -providing automatic GPIO request and configuration as part of the
> > -gpio-controller's driver probe function.
> > +The GPIO chip may contain child nodes used for line setup at probe tim=
e:
> > +- gpio-hog: reserves the GPIO line as a hog and configures it.
> > +- gpio-line: configures the GPIO line without reserving it as a hog.
>
> New properties do not go to TXT bindings, so if you want to introduce
> gpio-line, you need to send a patch or pull request to dtschema.

Like this?:
https://github.com/devicetree-org/dt-schema/pull/185

So this would just need a dtschema change and no documentation
changes in the actual kernel tree?

>
> Otherwise how do you validate your DTS? How does it pass validation?
>
> Please don't send a code which fails - either on upstream or downstream
> DTS.
>
> Best regards,
> Krzysztof
>

