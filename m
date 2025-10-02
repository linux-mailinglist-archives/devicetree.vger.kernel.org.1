Return-Path: <devicetree+bounces-223434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 627EEBB4DF2
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 20:30:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1328219C423E
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 18:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00BB0270553;
	Thu,  2 Oct 2025 18:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDlPuov+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0FCC199BC
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 18:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759429823; cv=none; b=g17WM3qfMdIPj4W6g6Zmtc08451VMLvzISaAbf7BFWG/C4VxLH68AFMffdsszaiye2ZDX9SfCqMrrwIlWuUQS/Q81lEHyk6ePVAi8Ucv5MQPZTF0vWpzxQ0eTpsU+kCCR/N2420RPWpvmDWkOd5jDhpaV5Qdugq9o19zVUmXL0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759429823; c=relaxed/simple;
	bh=UmwaTQ9w3UMKmPx7igtoLu/6KZ/KNI/anI2nuK5fsks=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=btrL64XxnuxMHABGNLdMjx8DXdBkozBlIdwNgXu2Pq/WKkm/DsWro4QWLp2thheWNfpyeoYhigaBn8wzc0+oRREfONyTSfUtjzdQBl1BVAMpqe3eJfbvMqainIMZSufwtFvsxR3sDFdUbn3E9XQGyiLaMylyj95FJ1JowuTnzh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDlPuov+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19E92C4CEF4;
	Thu,  2 Oct 2025 18:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759429823;
	bh=UmwaTQ9w3UMKmPx7igtoLu/6KZ/KNI/anI2nuK5fsks=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bDlPuov+ZH60K2M+tPgkCIIu5Tn7T2svAnnp0xBAfvsll9JVwgE6yk2YoRJ0jRVua
	 qt7lrdQV+Au25av/tXqM4k7uG5OYOziz7S/mreVukaQNrcNqS8411W/xXkrEgQgCAn
	 MGDBogFHOLCJaTjx6L5MkEYBtoFyKXswxf8IRsZyZFzSQ4Kyh6p4SRka+KD7Lk3YrY
	 Wf028C32OXMUC3HAi/wxSnV75oTvR8R6xeRp/Ar1fDQegW+kTKP+DmLLdc1oGJlrnX
	 HqlNpEiMf0AzYciFhfoDOSj6tr9hK8KxpKTHARo7kEldHoOqoOm9j6B3rW3W8kR7Oo
	 AI3jvJRUX9+pQ==
Date: Thu, 2 Oct 2025 19:30:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH 2/3] dt-bindings: display: rk3588-dw-hdmi-qp: Document
 enable-gpios property
Message-ID: <20251002-kissing-boxing-c8b567d08e2a@spud>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <20251002034708.19248-3-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7A3hshEiPf8Kpjpw"
Content-Disposition: inline
In-Reply-To: <20251002034708.19248-3-laurent.pinchart@ideasonboard.com>


--7A3hshEiPf8Kpjpw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--7A3hshEiPf8Kpjpw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaN7EtgAKCRB4tDGHoIJi
0m7hAQCDPTelKmX1m36VmufkE/l93pQBPg4VvrPAQUIIInNz/gEA8xs1KgKuKykX
0HWiWE9u5+7Er0wOlLhFeUXbu1nkBgQ=
=IADe
-----END PGP SIGNATURE-----

--7A3hshEiPf8Kpjpw--

