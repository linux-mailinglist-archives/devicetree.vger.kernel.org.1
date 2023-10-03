Return-Path: <devicetree+bounces-5549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 839B37B69C8
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:04:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3DB9B2815DC
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB17B24210;
	Tue,  3 Oct 2023 13:04:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C970724209
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:04:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1F7BC433C8;
	Tue,  3 Oct 2023 13:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696338254;
	bh=bA0Ut3nVDiQXKnStgAyERYPBt7Oi/q19lCr71SL/2BA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tZpjUgAT4HqQx2KhKcPsJVNJAAbAgmJMXuv59sK2WNZeShHFTA75j4a7zF50smxgL
	 Mi65VFGalmBlJz/2EMC2iW1/9VZFds3PD8rrKKmzTTHS0bqrFCk2ry3uqaqULsRk2O
	 s0S94gWTFzSOVbEWQ+GmX9Z8xA67Ax3KrFy7mp2ShKQKfG69h//+IXrnAbvyRaK2my
	 1UqD+WLEi78Uhk4r4gESWxh+vDjk3ps46XtGPYJpbqMmffCGk5S9etOo7sscv3/WKQ
	 yZ3UvkIs2koQPDzaHWo2EbT8jCIvzgWTogkX25zebN1b8D9Kp/nMGsZOWEDT9si/2h
	 Nox7Kwt/zH8jA==
Date: Tue, 3 Oct 2023 15:04:11 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: media: renesas,vin: Fix field-even-active
 spelling
Message-ID: <ZRwRS4lP+ixDxcaa@ninjato>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org
References: <c999eef0a14c8678f56eb698d27b2243e09afed4.1696328563.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ldUZkgBUcVKbMqLP"
Content-Disposition: inline
In-Reply-To: <c999eef0a14c8678f56eb698d27b2243e09afed4.1696328563.git.geert+renesas@glider.be>


--ldUZkgBUcVKbMqLP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 03, 2023 at 12:22:57PM +0200, Geert Uytterhoeven wrote:
> make dt_binding_check:
>=20
>     field-active-even: missing type definition
>=20
> The property is named "field-even-active", not "field-active-even".
>=20
> Fixes: 3ab7801dfab998a2 ("media: dt-bindings: media: rcar-vin: Describe o=
ptional ep properties")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--ldUZkgBUcVKbMqLP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmUcEUcACgkQFA3kzBSg
Kbb71RAAhm5KptvNhLpYsx7o9i9Zrks+1giKtS9RcFU+YeFpDPjIO4P4aKDaeeFn
VkpnnNxxyRTy1DZMTChdzhBl/n7cX6jxRBMj3nz2HR8ZAVJ+vh4nhB5s/Yxt3uXz
q57QAmKVRvWsMojE84BQW3/z38vShL4wFmOknwQFEzdx9X8P2H4wGGm6DkiIZewn
y+vgrOSVR52ElmHsBC+pkqlih+sRYT6WhuX39D2CJJtd8msI7oNH9wl2Rig0j6Iv
n0jGaRUx6/mXknlkUMx/zw3j1MPx5m8gFF6mlASwD3/zuZtPxcH+yHS+BAUzqIY4
vKp+TXU8Z86NLuganfixaSDaKzBs7sNTtFWl7SJIcp0qSvCcUyZClPQJmfSACDh2
tPRtKV+dBAWGwdvCMaxv0YLLRv7/2J1Xg0lyR5NROU9s6iY9fFVsSvuI7Ic1ZmJS
K3lObW7ubrlMkithR3yuFwGcRLbaeu0OnCTYE9OoH02RcRezFQQ3pO0PWb/GrdQJ
AnRXP4O0XOjkmeLAXb3bk/mPh5jKBr8YyxqrA197q/vJdhn/79bx64WUni2UyOvu
dcJIHOAQkDbkjXO58atqB9zJUp7yHXs5Zn3PTG31k8pumWONpmeCAzvUXvmcv+HA
CN8PxSQMGf4bceyU6acBPz/r+H8PQkGD/TW2U7Tn19suMMudX/4=
=9VtW
-----END PGP SIGNATURE-----

--ldUZkgBUcVKbMqLP--

