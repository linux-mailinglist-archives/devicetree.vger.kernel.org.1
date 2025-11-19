Return-Path: <devicetree+bounces-240055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7155FC6CF9D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 0906923EA4
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 06:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EAB531960D;
	Wed, 19 Nov 2025 06:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="yLXwecfE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D6131064A;
	Wed, 19 Nov 2025 06:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763534854; cv=none; b=CjHovwh125XobUPVz9SM1gvgXB3PeImj6MdSEL812+BZmEk+kBaDpGN/GMwxR5GMX5I1FBUIkYNLkHhSJP84oA9ZqJ6Wx3OPnGmVh44Lcpzw03y6EVW0RwKUybJFYIxi5bHG5LRjjQScCF2FFeXEYuPxAI5IfreGUW5+IAQtf6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763534854; c=relaxed/simple;
	bh=6Of4VRHEaV2qjKF1Znw/tDjESqh1tGLau0QId+6glro=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=U5OzJt++XRcb2mQ6i/z0ZWPS7KnMva3Dg4IFsi1StvrSk/ODU0aCjoivRd/47vxyUK90bIfyVMg4H8LbsCBuBdG0Fc2Xx5e1dE2eFMdRQvO6ms/+48ahEIwRw+vtIX48zNpz5Rz4YBiaMt5cZUqGwC0YCKrUtK94GuR0Jfl1SMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=yLXwecfE; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 85BDF41281;
	Wed, 19 Nov 2025 07:47:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763534842; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=VPnh4647l0Ye1/fWlT5mBsuMOhFdOEN38ARA/l13Q8c=;
	b=yLXwecfEvsrN+fPShQu7pUzx54NBsWvHHEU1/ZnbH64PmSCnxxv2fH/dytG/OADsSPgYMK
	0hoG5iNr1Hb165RJJNzTHl54ImwWEEKSd1MRWrmqwEMkBdgPTRshpDj7Xpq0HduR2NHx5j
	gYro03GRO19FOv5cUlSNC0tBRw5DWeiKckTIenGGhp3v0FXTQniVAzNOK6Fa1kyPYIHV4z
	hosgJERLb/tD0pZNHvE734+iu7aOA2ZjQ8JeFbso/g/6JjjVKEllL7/yO6y60n9uwgOo8C
	IHzWsNLam8jJ9fxFMXhpga9tsROqnJvVELN7Fs/KTDlKWvQTcOiTc6MRrLXzbA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <0c224662-b3c2-4075-8b68-c0ae27421ba8@rootcommit.com>
Content-Type: text/plain; charset="utf-8"
References: <e4cd11d0-463c-e707-5110-6b92899b1ba3@manjaro.org> <0c224662-b3c2-4075-8b68-c0ae27421ba8@rootcommit.com>
Date: Wed, 19 Nov 2025 07:47:20 +0100
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <3c96ee6b-dca7-1a0a-792b-f8c165ec997d@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Michael,

On Tuesday, November 18, 2025 06:27 CET, Michael Opdenacker <michael.op=
denacker@rootcommit.com> wrote:
> On 11/15/25 01:52, Dragan Simic wrote:
> > I'm sorry again for not mentioning it in my earlier responses,
> > but shouldn't this addition be specified like below:
> >
> >       - description: Asus Tinker Board 3/3S
> >         items:
> >           - enum:
> > 	          - asus,rk3566-tinker-board-3
> >             - asus,rk3566-tinker-board-3s
> >           - const: rockchip,rk3566
> >
> > ... because the introduced .dts files define the actual board DTs,
> > by descending from the common .dtsi file, while they're compatible
> > in the sense of the 3S board variant extending the 3 variant.
>=20
> Actually, "make dtbs=5Fcheck" fails if rk3566-tinker-board-3s.dts has=
:
> compatible =3D "asus,rk3566-tinker-board-3s",=20
> "asus,rk3566-tinker-board-3", "rockchip,rk3566";
>=20
> The failure is:
> arch/arm64/boot/dts/rockchip/rk3566-tinker-board-3s.dtb: /=20
> (asus,rk3566-tinker-board-3s): compatible: 'oneOf' conditional failed=
,=20
> one must be fixed:
>  =C2=A0 =C2=A0 ['asus,rk3566-tinker-board-3s', 'asus,rk3566-tinker-bo=
ard-3',=20
> 'rockchip,rk3566'] is too long
>  =C2=A0 =C2=A0 ['asus,rk3566-tinker-board-3s', 'asus,rk3566-tinker-bo=
ard-3',=20
> 'rockchip,rk3566'] is too short

Oh, I missed that completely, thanks for running the checks.

> If I understand correctly, to keep the=C2=A0rk3566-tinker-board-3s.dt=
s file=20
> as it is, you need Asus Tinker Board 3 and 3S to have two different=20
> descriptions as in V2:
>=20
> - description: Asus Tinker Board 3 items: - const:=20
> asus,rk3566-tinker-board-3 - const: rockchip,rk3566 - description: As=
us=20
> Tinker Board 3S items: - const: asus,rk3566-tinker-board-3s - const:=20
> asus,rk3566-tinker-board-3 - const: rockchip,rk3566
>=20
> The other solution is to remove the "asus,rk3566-tinker-board-3"=20
> compatible from=C2=A0rk3566-tinker-board-3s.dts, which is not a big d=
eal in=20
> my opinion. In addition, if some code turns out to work only on 3 but=20
> not on 3S, though that's not expected if 3S is indeed a superset of 3=
,=20
> we won't be stuck.
>=20
> I can submit a V3 along these lines.

This should let us keep the "asus,rk3566-tinker-board-3" compatible
in the new rk3566-tinker-board-3s.dts board dts while satisfying the
validation properly:

  - description: Asus Tinker Board 3/3S
    items:
    - enum:
        - asus,rk3566-tinker-board-3s
    - const: asus,rk3566-tinker-board-3
    - const: rockchip,rk3566

I'm quite busy at the moment, hence my delayed response, and I also
apologize for not running the checks on the above-proposed solution,
but I think it should work as expected.


