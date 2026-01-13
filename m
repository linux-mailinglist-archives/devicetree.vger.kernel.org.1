Return-Path: <devicetree+bounces-254539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 241ACD19234
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:43:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A08123021E41
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB44E38FF13;
	Tue, 13 Jan 2026 13:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="fNBMci8C"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDDC38B7B5;
	Tue, 13 Jan 2026 13:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768311788; cv=pass; b=Gho/1DjZfB12S0gFMBFdLz7QnNmwjE3AMt3lphf829/5iDwTY3oSUbkv/CCZkc7f1B/s//UFrBGAQJyhjRd45cTFj+iWX3FQcXGg8eOP6ur5n316R5PzLPSkzh38lhA8Eg/l3x2orp8E5zaCPhEJgaKF2a6NJyuYEpxIHLLoqXs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768311788; c=relaxed/simple;
	bh=Ja6rzcL5U+W48IVxZgkBg4dYiV270NXq5gOCylNcInY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=StfppTdHvqb/5qjtwPRyuRW/9FzKdRC9vUjNC1xIL6LGgM6kJvqh2Uomrrq71iwHFiBCBvFVbPNomUE8DNolGkEfmnumiyAnFsHatON5zrrm4tfyvZaxpJqG3j5fZUIA/vd+aXKh9qCHIQnOeU4VfVRebF9Xl9S90krO8liYdpU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=fNBMci8C; arc=pass smtp.client-ip=136.143.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1768311742; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=g2PjH7R8qmNDP49tCuXVrZN+SkVmuHZZs6r1O4BU1uPv0JOS+Td500xvDzzUdwccmmzgb+YjcpLS5jCYUjqxevFHnbpMH9LgDCNQCUOer2b7osBTn12ubC6XpFzccz3O/MQ79yzqfmdnqsihS/AFwmVZ7Q1J2n1qXvuQa567JyY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768311742; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Ja6rzcL5U+W48IVxZgkBg4dYiV270NXq5gOCylNcInY=; 
	b=HNFlQVHvg0OTUHPDV2/8wbGxoLx8qcjV5dYJ+Mu5YowreGPkJuuIKYB8bHZQdfBskiHsJGqpRNWZZyu1PW0ZLD+8hrar5AxqjOKblr1FQAsFhZJF9XAMfjt5zaJHBGsCCbULhAND8DZkzaqnVvmV/onVVbzZ+ueyQJEPIZOtD28=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768311742;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=Ja6rzcL5U+W48IVxZgkBg4dYiV270NXq5gOCylNcInY=;
	b=fNBMci8C2AOnEYzhfrW9nYTKlSeuDWWCs/ZLm5M4MmQ8uw9D9SSTe9NwRHZiPXC/
	uqr/y4oGpn42ku4jfGyylfAcC9e+Z34IcqU6L2nUSJ4HWk6QjQZ/rdzBteCbfvH8yv4
	hQcT35s+ECKdKHPonNsbgPM3WVTjoD+eY8zYJRMtTkH6mgfD+5ikoKRcPQ7Qf8lRInY
	N3ZOugHFtIJQPfSO9udKLBwTJMpYA2zGH3Hpq1gmWuxxeu+q1X2JdY99CfrszbaQvlz
	dtTOMtpVzvajWWMMsELjmWvMuIJak86byibZkUffWJj5+CGl1MnWL2vvL96WjqepoQP
	mBDTIA8bog==
Received: by mx.zohomail.com with SMTPS id 1768311704204117.21744879657183;
	Tue, 13 Jan 2026 05:41:44 -0800 (PST)
Message-ID: <ba505a137370377e55316605827b51a2454b023e.camel@icenowy.me>
Subject: Re: [PATCH v4 2/9] dt-bindings: display: add verisilicon,dc
From: Icenowy Zheng <uwu@icenowy.me>
To: Rob Herring <robh@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Drew Fustini
 <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei
 <wefu@redhat.com>,  Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner
 <heiko@sntech.de>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>,  Robert Foss <rfoss@kernel.org>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Michal
 Wilczynski <m.wilczynski@samsung.com>, Han Gao <rabenda.cn@gmail.com>, Yao
 Zi <ziyao@disroot.org>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org
Date: Tue, 13 Jan 2026 21:41:30 +0800
In-Reply-To: <CAL_JsqKC6FaJZubvxQaX-uQBhWFNs2EHuTG8JK1FJaD1tPOaSw@mail.gmail.com>
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
	 <20251224161205.1132149-3-zhengxingda@iscas.ac.cn>
	 <20260105154656.GA2585570-robh@kernel.org>
	 <a838dc0f8bd39c6d9da95f5fd137eba8c131c58a.camel@icenowy.me>
	 <CAL_JsqKC6FaJZubvxQaX-uQBhWFNs2EHuTG8JK1FJaD1tPOaSw@mail.gmail.com>
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

=E5=9C=A8 2026-01-05=E6=98=9F=E6=9C=9F=E4=B8=80=E7=9A=84 10:20 -0600=EF=BC=
=8CRob Herring=E5=86=99=E9=81=93=EF=BC=9A
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D 8< =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ports:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 required:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 - port@0
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 - port@1
> > >=20
> > > It is valid to omit these if the output is present, but unused.
> >=20
> > Well this sounds reasonable, although my driver does not play well
> > if
> > only a port@1 is defined w/o port@0 .
>=20
> Sounds like your driver should be fixed.

After this requirement is dropped, should the unconnected port@0 also
be removed from the DT example?

>=20
> > Considering the previous two snippets, should I just remove this if
> > part?
>=20
> I would, yes.
>=20
> Rob


