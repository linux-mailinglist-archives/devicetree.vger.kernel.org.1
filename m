Return-Path: <devicetree+bounces-240076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B38C6D1D5
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 85B082CE42
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D864032548A;
	Wed, 19 Nov 2025 07:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="EcsPZ0hM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94CDB320CCE;
	Wed, 19 Nov 2025 07:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763537328; cv=none; b=EbUjvpsu8n6mda+AVraweoUHobWPUFy+zFY0V+uqoXAuRLG3RUnpLrCBu0eBBqRYRsjVbmBICEamLBVXLlzjLPuKPwWWxvnht3ng86ZYGR3VB1exfWBr9xYsqPDqEPrCUwjFqqSmCroF8Esfs07KLGxeNtoRNlsjUme8o3dzLhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763537328; c=relaxed/simple;
	bh=AaE9Hltz7b5i2393djCofwQlNVHLseidgcqGDZi+OAE=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=MClG58sMqtptkVLvp5xfvYI22qvfjFrxj855Gz4+KvEmLNptOHq7KGsnmzLgWBN7sq+4BrmeWlXjne0k+0V0edlY9e3d1Tq2jaQO978LuTpxLumsCZQtcQoCNvBdLkuYbCktDnWsfwJeGjZURibLu53lyFWw/PdJXtK1Jok92ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=EcsPZ0hM; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C25E54103E;
	Wed, 19 Nov 2025 08:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763537324; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=h4MyhiUrRVJoFNGk2D4bpUeiUKWMgtxnDIhB2j6Wz40=;
	b=EcsPZ0hM4pFqxttaBdH9EvxyMJnbZvzyZyp9mNtz212SHspBhfRhqUIQWSkXCzOLtBjCeM
	ZwacH1LDlOPxxEae8HtZ8AX/gd6V+8mTVQct3ZUm5yTh8fwKe3Ser1lvSZ2PNxzqN9Cwmt
	37CKvcAdhagZtstAzXwyo1MZPaA7v11abSVAfZuJALMPM5Pug5oD5u4Poa9z0fACmGCuLy
	NEvRLHHiODf/s1TrbLWHkl7QRUk/PJ4IDxX35X38pls3SdipUcCh1jW67UWpRkfal4CFWP
	ay0c0tHfscXICGgzHSyuAb/kEvfUbVgAVR6pZCl8icA7bWWsVxkrNd7Zv8Cc3A==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <8fce39e0-62f7-4a79-83b8-e3a63af10e2f@rootcommit.com>
Content-Type: text/plain; charset="utf-8"
References: <e4cd11d0-463c-e707-5110-6b92899b1ba3@manjaro.org>
 <0c224662-b3c2-4075-8b68-c0ae27421ba8@rootcommit.com>
 <3c96ee6b-dca7-1a0a-792b-f8c165ec997d@manjaro.org> <8fce39e0-62f7-4a79-83b8-e3a63af10e2f@rootcommit.com>
Date: Wed, 19 Nov 2025 08:28:43 +0100
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <3d5ed2bc-038c-0808-56f3-411652b5ed6d@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

On Wednesday, November 19, 2025 08:25 CET, Michael Opdenacker <michael.=
opdenacker@rootcommit.com> wrote:
> > This should let us keep the "asus,rk3566-tinker-board-3" compatible
> > in the new rk3566-tinker-board-3s.dts board dts while satisfying th=
e
> > validation properly:
> >
> >    - description: Asus Tinker Board 3/3S
> >      items:
> >      - enum:
> >          - asus,rk3566-tinker-board-3s
> >      - const: asus,rk3566-tinker-board-3
> >      - const: rockchip,rk3566
> >
> > I'm quite busy at the moment, hence my delayed response, and I also
> > apologize for not running the checks on the above-proposed solution=
,
> > but I think it should work as expected.
>=20
> I actually already tried this, but it doesn't pass "make dtbs=5Fcheck=
":
>=20
> arch/arm64/boot/dts/rockchip/rk3566-tinker-board-3.dtb: /=20
> (asus,rk3566-tinker-board-3): compatible: 'oneOf' conditional failed,=20
> one must be fixed:
>  =C2=A0 =C2=A0 ['asus,rk3566-tinker-board-3', 'rockchip,rk3566'] is t=
oo short
>=20
> The "enum" statement seems to mean that there is at least one of the=20
> items, which is not the case for rk3566-tinker-board-3.dts that doesn=
't=20
> have it.
>=20
> So, my V3 seems like the way to go if we don't want to duplicate entr=
ies=20
> in rockchip.yaml.

I see, thanks for the clarification.  Then the v3 is the way to go.


