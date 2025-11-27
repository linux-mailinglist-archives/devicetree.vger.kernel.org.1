Return-Path: <devicetree+bounces-242779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D509EC8E9C2
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:52:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F9FC3AD477
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:48:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB52628CF5E;
	Thu, 27 Nov 2025 13:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="NevznnII"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972FC267B94;
	Thu, 27 Nov 2025 13:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764251302; cv=pass; b=DcSpKNAy7JHcaSd/gcuutVmaZEKgsEyQnGgCJLPEmxUAN1cYq4dw6KMiHggfNZj8TpDsnou8Q17kg9Gd+rtRN9VXqH7AqezJflcp5rwt/nfLf2bgstzHt7eaFtRF2ccBSuqiCWeE2MlcQTS9dga7iYPxzu1N2BGWpDylep1+4TM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764251302; c=relaxed/simple;
	bh=b0oMnunnjuobG7eO1qvntmjm1GhyPkGJUrptzNeT38o=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ThA90JS+g4SEFHdxIPQX5K/B4oCwXFwQAYHbQm91GRJZOZPCjZx6zBmRhwJGWdyg/YqGA8UG+St8BNOTp3n9UXZqEU5B1tTUhkiKJpO9Ao/uHdmZ0ZrL27HZcFcy4ZAjBlIn0uRyhfdBNoZdVQ8bt6lgjn9xfNxw+bhy5KQ6dvg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=NevznnII; arc=pass smtp.client-ip=136.143.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1764251255; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=AMwSHeQ/vxT8K1YbNvYUSgylTjKlArp4r4fiaGvm/cKDv4dbjwctTi2yaqWmZM6jhAjFqYDOF0Dj1UEV2d5SEFmnkkfDhk4tvycGdn5RMxD4BD5tr25eiAZELRy92Lsw6Qbmi7tNl3213hU7tO8NxwGrwVzuI7uYL3vi4bvc6sQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1764251255; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=b0oMnunnjuobG7eO1qvntmjm1GhyPkGJUrptzNeT38o=; 
	b=Mo9WfSq+g0Y1vhrbyK04/qyxAhbaUDVNbty788sHNudiHszZWuGQdWhPs3X1MHlnAEAwH2+effveKIICSGYbIE98uFhaGibmAoekoIbCqNJBOTsEt1lymitxYAuY718/gw1B56aXVl6akGW0TRx6CgVYKlLHeZ8wzqHOh1Yfgto=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1764251255;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=b0oMnunnjuobG7eO1qvntmjm1GhyPkGJUrptzNeT38o=;
	b=NevznnIIn59XEHlVsufetcVaa7qfNmwKdJLGscdLrhvL/rJhsbh+zKjlDzPYGDnn
	V0SwbK4ECYIb3eC849j5CX32dSlOqdPZlD3QjYehC6NvCo9DwnZN0tjza431fXhTKRq
	9fV9FZxWzvrE46QSslYmerkr2/E8fKzMhSVzU+8lqc7oaHhJ9EzUsfnHev4cqWMqI2h
	Dx+dHQt6a2cyuwJQUUXvb9+oj2RRxEsRrhj1uZk4zq350udzqwAVo/NKsSKtJsaPotz
	6KpnXzeV+NmAE5jMUSlGWV/O3sWqKlp+b9Y9wK9OQ0T4ZMzxZfw5uB6oI852mF8ITdC
	l6LveB5DmQ==
Received: by mx.zohomail.com with SMTPS id 1764251253052907.8324349863465;
	Thu, 27 Nov 2025 05:47:33 -0800 (PST)
Message-ID: <b7b9396950cb92c227acef5461941020a282e551.camel@icenowy.me>
Subject: Re: [PATCH v3 2/9] dt-bindings: display: add verisilicon,dc
From: Icenowy Zheng <uwu@icenowy.me>
To: Krzysztof Kozlowski <krzk@kernel.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Drew
 Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei
 <wefu@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner
 <heiko@sntech.de>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>,  Robert Foss <rfoss@kernel.org>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Michal
 Wilczynski <m.wilczynski@samsung.com>
Cc: Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Date: Thu, 27 Nov 2025 21:47:23 +0800
In-Reply-To: <0b7ba974-d8d5-4417-8182-3e9299315058@kernel.org>
References: <20251124105226.2860845-1-uwu@icenowy.me>
	 <20251124105226.2860845-3-uwu@icenowy.me>
	 <d4cfe8bb-5ca2-40a9-bfe0-96e7ded5586c@kernel.org>
	 <544ae21cc1b5f488d03a5650d9275ff22b237d63.camel@icenowy.me>
	 <0b7ba974-d8d5-4417-8182-3e9299315058@kernel.org>
Organization: Anthon Open-Source Community
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ZohoMailClient: External

=E5=9C=A8 2025-11-26=E6=98=9F=E6=9C=9F=E4=B8=89=E7=9A=84 11:22 +0100=EF=BC=
=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> On 26/11/2025 10:50, Icenowy Zheng wrote:
> > > > +maintainers:
> > > > +=C2=A0 - Icenowy Zheng <uwu@icenowy.me>
> > > > +
> > > > +properties:
> > > > +=C2=A0 $nodename:
> > > > +=C2=A0=C2=A0=C2=A0 pattern: "^display@[0-9a-f]+$"
> > > > +
> > > > +=C2=A0 compatible:
> > > > +=C2=A0=C2=A0=C2=A0 items:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - enum:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - thead,th1=
520-dc8200
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: verisilicon,dc
> > >=20
> > > I do not see any explanation of exception for generic
> > > compatibles,
> > > maybe
> > > except "self-identification" remark. Rob already pointed this
> > > out, so
> > > be
> > > explicit in commit msg why you are using a generic compatible.
> >=20
> > Well I only get the meaning of "a SoC specific compatible is
> > required"
> > in his review message.
> >=20
> > I think my binding now requires both a SoC-specific compatible and
> > a
> > generic compatible, which should be okay to satisfy Rob's original
> > review.
>=20
> You will get then the same questions for me - what justifies generic
> compatible. You should be on this explicit, because otherwise people
> misinterpret some commits and patches, and they think the generic
> compatible is allowed for them as well.

I came across a comment on Mali Valhall bindings that says `Mali
Valhall GPU model/revision is fully discoverable`, just after the
compatible string.

Should I add a comment like this, or should I make things more clear in
the commit message?

>=20
> >=20
> > >=20
> > > > +
> > > > +=C2=A0 reg:
> > > > +=C2=A0=C2=A0=C2=A0 maxItems: 1
> > > > +
> > > > +=C2=A0 interrupts:
> > > > +=C2=A0=C2=A0=C2=A0 maxItems: 1
> > > > +
> > > > +=C2=A0 clocks:
> > > > +=C2=A0=C2=A0=C2=A0 minItems: 4
> > >=20
> > > This is not flexible. Device either has or has not these clocks.
> >=20
> > The existence of all these clocks are verified by diagrams in
> > manuals
>=20
> So not flexible, then:
>=20
> > of two different SoCs with DC8200 (T-Head TH1520 and StarFive
> > JH7110).
> >=20
> > Maybe a explicit `maxItems: 5` is needed here, but as my DT passes
> > dtbs_check, I don't think it's necessary?
>=20
> No, drop minItems only.
>=20
> >=20
> > Or maybe I should drop the flexibility now and use a `minItems: 5`
> > here
> > (and leave DC8000 support as another story)? (The Eswin EIC7700
> > manual
> > does not have a diagram showing external connections of the DC,
> > like
> > the two SoCs I mentioned above).
>=20
> You document here only the devices explicitly mentioned in the
> binding.
> You cannot add here constraints or clocks for some device which is
> not
> in the binding and I see only th1520 in the binding.
>=20
> Best regards,
> Krzysztof


