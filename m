Return-Path: <devicetree+bounces-14177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DFE7E28ED
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 16:43:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9C0F1C20B4D
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 15:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2561521342;
	Mon,  6 Nov 2023 15:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE4928E07
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 15:43:45 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78CB0FA
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 07:43:44 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1r01lE-0006yR-Qo; Mon, 06 Nov 2023 16:43:32 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r01lE-0074oJ-7b; Mon, 06 Nov 2023 16:43:32 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r01lD-00DmxG-UN; Mon, 06 Nov 2023 16:43:31 +0100
Date: Mon, 6 Nov 2023 16:43:31 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 0/2] pwm: add driver for T-THEAD TH1520 SoC
Message-ID: <20231106154331.yonhekamzrhl4jct@pengutronix.de>
References: <20231005130519.3864-1-jszhang@kernel.org>
 <ZUj8/fhitNf8fRMf@xhacker>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jsf3f7vbz6to4kdv"
Content-Disposition: inline
In-Reply-To: <ZUj8/fhitNf8fRMf@xhacker>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--jsf3f7vbz6to4kdv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 06, 2023 at 10:49:33PM +0800, Jisheng Zhang wrote:
> Kind ping, is there any chance for this series to be merged for v6.7?

I didn't forget about reviewing your driver, but as such a review takes
quite some time I often fail to do the review in a timely manner. Sorry
about that.

Having said that I guess Thierry's tree won't pick up any new patches
given that we already crossed the middle of the merge window and patches
are supposed to be in next for some time before being sent to Linus.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--jsf3f7vbz6to4kdv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmVJCaIACgkQj4D7WH0S
/k4QCAf/acNnr3Gu4/8Kw26Tso95OH5ZRC6qvEoB9lCUTWMCS92Q96p+w12Y7cpU
FwP+u2j1ZU75B9rU9/ghwcMSpeBkm0EvcVhxFJCcRfQCfqhNb4ZZosZs+xyNnEzC
dCIdbtRKzpejhd/rrzN9h9RrS9XrxO0rqp1Bx0zuQIz1S+SXmeQlBIXBrt8lJTSQ
XGLco64DSob6ydIuTMXMy4hsk7v5bp/2NaXoPKR2TusZ0PRjQ9uqPbtlkDHOKyh6
OvbK3CTWZTxLGQPtrUhuY0FwA5kbyMj/f0CzFLySXVzR8W+Pocnu5W7cSaMFqoBH
25rzVqBG6j12xDq3k0JwXL+jDoepLg==
=G7ji
-----END PGP SIGNATURE-----

--jsf3f7vbz6to4kdv--

