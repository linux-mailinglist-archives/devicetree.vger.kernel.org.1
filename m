Return-Path: <devicetree+bounces-55284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BCF894C0A
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 09:01:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E825284179
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 07:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF04022096;
	Tue,  2 Apr 2024 07:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPHzmzqK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9DAA2D047
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 07:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712041254; cv=none; b=QGwqWSvbdiQj0W0NO+U49PqzrmOG+LV0IGABRSTm/ug0aYiRqWPM4Li3LcrIuhYa0xE8iY9txtRy22/3dI3S1wZ0uFUsXDiMj2HBfUi2UhNX4oe4lmU4pZbxhLLBGMQHHqoqzDDwNv1k4JzpX39dF9juBjv9H+QIEaWTIiwxzn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712041254; c=relaxed/simple;
	bh=D2ua/iBnM3IQd4IF7W2c1ROnNcouwmN8SkztWBENdRI=;
	h=Content-Type:Date:Message-Id:Subject:Cc:From:To:References:
	 In-Reply-To; b=iV8/ol5UY53mLmOg4AhYl8ybKyRoxSf37yN+8HDCQpT+BOASBNuYu4rXl+uyzmaLBbEdCznfCIQzQW+tasH8bA9S2t+SLI+4l4tpQIk9bJRbAVV8ziAxKdlsAWfR9GZ13Lsi9hstHquVJ5zeI/ReNjVeUioGo2eahyR9th2QHPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPHzmzqK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4D45C433F1;
	Tue,  2 Apr 2024 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712041254;
	bh=D2ua/iBnM3IQd4IF7W2c1ROnNcouwmN8SkztWBENdRI=;
	h=Date:Subject:Cc:From:To:References:In-Reply-To:From;
	b=KPHzmzqKJ0LB4hWTWRct4x+aMWkYvrMnO5LYIy9LEH6Evx1Ue2Na8KSoxymNvrf3m
	 kdP0j1kCMLcHPLsmh9nafN5y/Iv8PnDw5rVka4taJMfA4sN7zTWlSw1TSm+6pNMwak
	 Urc4K8BMrrKXGlk6h5WZ0RB3hBLWbpHWmmWDbCPUWVATpLsU1uevmvnj4UEWSu8L0q
	 KDKCm8SwRIzIVI95sWAt4/0JBfocwvp3tBnGgQ+qTLKd9WvqD1YgOp+ysH8Tf/l16y
	 era3DN04nBo/blnjf2xXNJ8SPGuUqkKEZiKaIf/Cm8lLHINmaqvowR4sgLNcJQ0r+F
	 4GjpwV0jkY2DA==
Content-Type: multipart/signed;
 boundary=616bc833c83898b99189c6e32c42c091825e75c4e7954f08cf6a558dbb06;
 micalg=pgp-sha384; protocol="application/pgp-signature"
Date: Tue, 02 Apr 2024 09:00:50 +0200
Message-Id: <D09FZ0P0ARBE.1YPEPPM160VJK@kernel.org>
Subject: Re: [PATCH v5 00/10] Improvments for tc358775 with support for
 tc358765
Cc: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>
From: "Michael Walle" <mwalle@kernel.org>
To: "Tony Lindgren" <tony@atomide.com>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "David Airlie"
 <airlied@gmail.com>, "Daniel Vetter" <daniel@ffwll.ch>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Simha BN" <simhavcs@gmail.com>, "Sam Ravnborg" <sam@ravnborg.org>
X-Mailer: aerc 0.16.0
References: <20240225062008.33191-1-tony@atomide.com>
In-Reply-To: <20240225062008.33191-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

--616bc833c83898b99189c6e32c42c091825e75c4e7954f08cf6a558dbb06
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi DRM maintainers,

On Sun Feb 25, 2024 at 7:19 AM CET, Tony Lindgren wrote:
> Here are v5 patches to improve tc358775 driver and add support for
> tc358765.

Any news on this series? Is there anything open or can it be merged?

FWIW, I have another tc358775 improvement series based on this.

-michael

--616bc833c83898b99189c6e32c42c091825e75c4e7954f08cf6a558dbb06
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKgEABMJADAWIQTIVZIcOo5wfU/AngkSJzzuPgIf+AUCZgutIhIcbXdhbGxlQGtl
cm5lbC5vcmcACgkQEic87j4CH/ihkwF9GYXSK6u/OH4qJlmjvaXzwD5DudtfgP3k
BX8aOrgBh376hSaK7NOh8fMQ3UZk8bE/AX0WeSBJ4yN3csM68ADk5rQQ3PApaVeu
orCzP9+elqCgYWiXmcXnXH/s01bWgg8GjEw=
=jOrN
-----END PGP SIGNATURE-----

--616bc833c83898b99189c6e32c42c091825e75c4e7954f08cf6a558dbb06--

