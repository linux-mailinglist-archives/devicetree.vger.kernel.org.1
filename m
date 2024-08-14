Return-Path: <devicetree+bounces-93610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 898AC9519E0
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 13:30:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19775281FAD
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 11:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07FCC1AED33;
	Wed, 14 Aug 2024 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="G4twbP6J"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70CD91AED27
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 11:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723635032; cv=none; b=SBbTKloB8neiGY9+snZzfWR9o2vQDHgUcuK+iVc6s9GOql2A6/CT/B/wIXsTKJ45hUeRHOJJZ4IFP1T/Up6ZlsBcL5G8ChClm3O2DmnrXCqABh3X2JJWXSg+08Roqc2mLbo6fEZ0dbrsUna4FlHd/C+2sTKDdt8xYBsoRyH4cws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723635032; c=relaxed/simple;
	bh=dP4bfrn5l3bdzoF3Sl1T7LFZ0IksHKCZ14p6q3YI7oA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=usb/J5HxBq1LtH0iZabPMt5MBV6whOYuA4FP24di6wP30M0Th5y5WfmaVUVmgVkNyhcRJtI190PPpEmBVudcx2OqX2PfLx26Jk72T0AbPMvCqXbPCLflR4uPJ6Yti2xFtJ1luah6M7ZKB+DyYTLIqGwgLAeKwEKXLjxV1fmcb3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=G4twbP6J; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1723635028;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dP4bfrn5l3bdzoF3Sl1T7LFZ0IksHKCZ14p6q3YI7oA=;
	b=G4twbP6JuI139v/kXGn4SCpcTW5bzEAEIvpdt6NSeUFEozxioUePvIdOKqsxUAvQMUqO2F
	FrrrM3cjQgFBE5lJ8JddLkQz202Wr18Ph4TWhhlyOA3Fj4WM6R28xQd+KCI2G6Ux1zl8D7
	dNkzLaWs0PF7fliMKCfj9guX4bOMnhuPZ3X1o1Gb4PMZSO+J5eBm24ZZUlcSnnQo4vd2oM
	RskMe8NWhVwYM/1n972pRWuPFF4DlJQFmswnBcW+hjtGykCeZrxXA5wMw419GLMxA46A8y
	GSfDZYGcAuhsoTGVEd71ajU7a/SaSSsfVfo2d8XfxkKowj0xC4VHJs/LBaWXVg==
Content-Type: multipart/signed;
 boundary=2230cd77cb85420e4ea04e69faf9ec868c0da4eaf62f7bd0825d5c64cdcd;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Wed, 14 Aug 2024 13:30:17 +0200
Message-Id: <D3FLMBPACMF8.249JV2GI2QGHA@cknow.org>
Cc: "Daniel Golle" <daniel@makrotopia.org>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH V2 1/2 RESEND] arm64: dts: rockchip: Add DTS for
 FriendlyARM NanoPi R2S Plus
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Sergey 'Jin' Bostandzhyan" <jin@mediatomb.cc>,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <Zq7LBqKVvVVVLg7a@makrotopia.org> <2309282.ZQ0cqP7t2B@diego>
 <20240814112138.GA21761@ветеран.su>
In-Reply-To: <>
X-Migadu-Flow: FLOW_OUT

--2230cd77cb85420e4ea04e69faf9ec868c0da4eaf62f7bd0825d5c64cdcd
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Aug 14, 2024 at 1:21 PM CEST, Sergey 'Jin' Bostandzhyan wrote:
> In case you tell me to go ahead with a v3 set, should it be in this
> thread or not? I understood RESEND's should be new, but updates should
> stay in the thread, right?

No, a new series should be its own thread too.

--2230cd77cb85420e4ea04e69faf9ec868c0da4eaf62f7bd0825d5c64cdcd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZryVSwAKCRDXblvOeH7b
bmGSAP9pY3YpoP4U50pQV1Shkwvh21J5/bpdqejppJ2armAa0QD9HzOqM8smiCRG
akUL19LbeMD4BmdZJzATIpD5hxaJfA4=
=lOzW
-----END PGP SIGNATURE-----

--2230cd77cb85420e4ea04e69faf9ec868c0da4eaf62f7bd0825d5c64cdcd--

