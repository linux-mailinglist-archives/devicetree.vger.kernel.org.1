Return-Path: <devicetree+bounces-35071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 022C283C3C3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35C481C242D5
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 13:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 624FD5577F;
	Thu, 25 Jan 2024 13:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="AXEWAW6S"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA7056B70
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 13:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706189706; cv=none; b=j02yRmpl/dE/Uv/7uGQAyz39P3Ts7whn4Ihokobhvn2BWTw+o1BPcJIuOwKRcRzwH6+NgIZ//+SgipjZALtqI6X+HxjAjdK2WLkr/eVr0kYCJWlFUaWyv/PfBnPpx57BJ85bJkhfdhB4A/t0nUleSNeBjE/Lr435gKWNwAMHh9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706189706; c=relaxed/simple;
	bh=4LsMWW45vLtQuo3XidYiPfZUbQT8FyYnDkVfk4oplzs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N1wPayqEfn9RJXDx3CjG9ZYfiJv/oMnu7jQhcx7o3I7zLl6YA+Y5/hZfpwAktmM0m4m+KWnoPpIk4HfW9mEgxHP/LvJDkZJ6RB+nDG2+NjnH4C18yoRPdrMSGmpn5Xkmv+DMXRQhBQ9wtWy6X6ZmFJd+2X+x2TOhsIg7vqm+j48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=AXEWAW6S; arc=none smtp.client-ip=91.218.175.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1706189701;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=51k3AHXGohIJoLoxDV00w5xStGGYYOVxEKd0gWSXjl4=;
	b=AXEWAW6S4/kdZsZwyWh+CUsGYuDIYgb4amFUns0o+QYTTakww1DwkpcnsAN3Z5KmRXsr67
	QBPNlEgkrY9lEZd6RsEnNACI2PYcQeDIEoJ7T8Twai7zniYI6pcBQXjBSAg8C3qU067Ttm
	c9NXwyFXxrA7/eEo2islYV6bMurKDf/Y6fVt6KLPTHG1MIrer9PuBpvu3kOuBrDZg8Ua3b
	IhSqVliB1rtwli0/xiSxtvVU1oZXsR9GpOvZgC34/escTgpfVkK9zlV3ml0Sa6/vqCGcv5
	28qB28r5hidmQTxRa8PSVCH/hUKQoie22143UGpoHbwGW9Z6BLxYGW2KMrKGLA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Cc: Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>
Subject:
 Re: [PATCH 2/4] arm64: dts: rockchip: enable built-in thermal monitoring on
 rk3588
Date: Thu, 25 Jan 2024 14:34:47 +0100
Message-ID: <1824717.EqSB1tO5pr@bagend>
Organization: Connecting Knowledge
In-Reply-To: <245f5692-be30-4216-8b13-988092793732@linaro.org>
References:
 <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-2-5879275db36f@gmail.com>
 <245f5692-be30-4216-8b13-988092793732@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4312370.MBFMXe44yd";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart4312370.MBFMXe44yd
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
Date: Thu, 25 Jan 2024 14:34:47 +0100
Message-ID: <1824717.EqSB1tO5pr@bagend>
Organization: Connecting Knowledge
In-Reply-To: <245f5692-be30-4216-8b13-988092793732@linaro.org>
MIME-Version: 1.0

On Wednesday, 24 January 2024 22:56:21 CET Daniel Lezcano wrote:
> > +                       cooling-maps {
> > +                               map1 {
> 
> s/map1/mpa0/

FTR: that should be ``s/map1/map0/``
(verified with Daniel Lezcano)
--nextPart4312370.MBFMXe44yd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZbJjdwAKCRDXblvOeH7b
biA/APwNyu3DMP1k8u1Z1gxe5C8Vi6G43KSWumtPGN2v9paVbAEAtSdbFcND47gA
MsiAV1fUxJbOATVo1LIngCtRbhbSkAs=
=YVZI
-----END PGP SIGNATURE-----

--nextPart4312370.MBFMXe44yd--




