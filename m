Return-Path: <devicetree+bounces-52724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 85880887C93
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 12:43:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6BBD1C20A73
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 11:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29BC917730;
	Sun, 24 Mar 2024 11:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thefossguy.com header.i=@thefossguy.com header.b="DV0x0Dd3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4323.proton.ch (mail-4323.proton.ch [185.70.43.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB3C28E7
	for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 11:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711280623; cv=none; b=ak7Og2vvA/VaPtpgGSK/BBWmJK6a2HR7Ijjoz76biYAdV2GcUJAYgLX5gg07rufNXZv96vadlqSbQxfh+mcJvIPEKlLDbjiTWi/xhKXtBzb7tzCkWP6kMJ4vh/9JBi2wJvN3MJrevd16pYIhEYg1ULmPiYGsKj4scZDrEZD1G0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711280623; c=relaxed/simple;
	bh=U56PTdG5kVIRjFB+Qp4FUEnuUZCtrRVmQdRXbMzwT3I=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=P7qt+7/+2PpfBtS1ikrIovn+AcoxRtKTB1ivF2k25G3kcBITujLys/Y9WKvwf9UazcSqd7acF4t8BK5gJx/iu/jdH/8tZlu+SN20y6hmHURpH0Da2zhvF2P0QQjwRmJTBx9RcdEpm5+YkTyT+t9wctl9lq9I4uXGdJ/d7sfx2PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thefossguy.com; spf=pass smtp.mailfrom=thefossguy.com; dkim=pass (2048-bit key) header.d=thefossguy.com header.i=@thefossguy.com header.b=DV0x0Dd3; arc=none smtp.client-ip=185.70.43.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thefossguy.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thefossguy.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thefossguy.com;
	s=protonmail; t=1711280619; x=1711539819;
	bh=U56PTdG5kVIRjFB+Qp4FUEnuUZCtrRVmQdRXbMzwT3I=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=DV0x0Dd3iR7acnHcgt5Q1LTSbNqx8UfKkN/marhrakfZClTR90noGq9Xm9Lka4YKx
	 4r0WDV4P0nYS9Q4WjiOEOpGDyqE2BjUuv+ku9+J1f1iKnQOfZzkTin8Cq8yTUznP80
	 Pq1fuX+8JuQwZE7RrOO9pzNuCrArt/4gYL9e055bvp6SUH51zxW5KoKAl1mOwkza5q
	 BCW3P3gELQ79PrvsRZt7j0E5Kc1XtdtpqQhWNs5ymFCmRqO333190E+eacclP+V//n
	 zsmOWscdECvAgEIHUCMB50UPCreUMUTCHLjzPfpywgNrDQOUmZu0SuraSFQ9ELhrXh
	 eiq+x460ZS6TA==
Date: Sun, 24 Mar 2024 11:43:16 +0000
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
From: Pratham Patel <prathampatel@thefossguy.com>
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: disable analog audio for rock-5b
Message-ID: <XJ_dGL-0X07dJ8GOKvrXbRD2FAHN1A7keAtohcSaU41DEF0FbeWwswLEqkrYiwwulyXDwJ6SZHfWukhHO3t3tOWX7ZGM7ya9lwXfn8Xh1nU=@thefossguy.com>
In-Reply-To: <TbQeSy-AWAKVHo2Alb8hXUvplVNvohDJ2ztRM1x3Fo5PMmGLMsJxtHR-OIms9FlUshfUD9x45EghBCB9gVtcUPlxeMRUJQ_C95DVhu3AJrk=@thefossguy.com>
References: <20240324062816.145858-1-prathampatel@thefossguy.com> <0005257d-8022-4a66-a802-0c920d259ccd@linaro.org> <TbQeSy-AWAKVHo2Alb8hXUvplVNvohDJ2ztRM1x3Fo5PMmGLMsJxtHR-OIms9FlUshfUD9x45EghBCB9gVtcUPlxeMRUJQ_C95DVhu3AJrk=@thefossguy.com>
Feedback-ID: 104309535:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Sunday, March 24th, 2024 at 16:51, Pratham Patel <prathampatel@thefossgu=
y.com> wrote:

> On Sunday, March 24th, 2024 at 16:15, Krzysztof Kozlowski krzysztof.kozlo=
wski@linaro.org wrote:
>=20
> > > + /*
> > > + *analog-sound {
> > > + * compatible =3D "audio-graph-card";
> > > + * label =3D "rk3588-es8316";
> >=20
> > Do not comment out code. Instead disable the nodes and provide
> > appropriate comment describing reason.
>=20
> I tried changing the status from okay to disabled. That didn't work. The =
SBC
> still locked up during boot.

I think setting the status to fail should do the trick, instead of setting =
it to disabled.
Will try that and be back with a v2.

 -- Pratham Patel

