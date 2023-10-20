Return-Path: <devicetree+bounces-10449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 159E07D12FB
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 17:39:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C513F282565
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 15:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C16B61DDF1;
	Fri, 20 Oct 2023 15:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2F61DDDC
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 15:39:39 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF912D41
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 08:39:38 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtrat-0004Hd-RC; Fri, 20 Oct 2023 17:39:23 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtras-0033gL-9T; Fri, 20 Oct 2023 17:39:22 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtrar-002bLX-Ve; Fri, 20 Oct 2023 17:39:22 +0200
Date: Fri, 20 Oct 2023 17:39:21 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>
Cc: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org, lee@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	thierry.reding@gmail.com, ndesaulniers@google.com, trix@redhat.com,
	baruch@tkos.co.il, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev, linux-pwm@vger.kernel.org, nathan@kernel.org
Subject: Re: [PATCH V15 2/4] dt-bindings: pwm: add IPQ6018 binding
Message-ID: <20231020153921.54m3pg4ocb4wy4jn@pengutronix.de>
References: <20231005160550.2423075-1-quic_devipriy@quicinc.com>
 <20231005160550.2423075-3-quic_devipriy@quicinc.com>
 <20231018204608.qyifcnnzgi2bgzn6@pengutronix.de>
 <CAL_Jsq+df_nmNVuf46-a5Dafe4THxD-5HS-BPsTn_yzTckrOJw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7qb63ejcofu46z6d"
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+df_nmNVuf46-a5Dafe4THxD-5HS-BPsTn_yzTckrOJw@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--7qb63ejcofu46z6d
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Oct 20, 2023 at 10:14:48AM -0500, Rob Herring wrote:
> On Wed, Oct 18, 2023 at 3:46=E2=80=AFPM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Thu, Oct 05, 2023 at 09:35:48PM +0530, Devi Priya wrote:
> > > +  "#pwm-cells":
> > > +    const: 2
> >
> > The driver only supports normal polarity. Is this a shortcoming of the
> > driver, or is the hardware incapable to do that, too?
> >
> > If it's only the former I'd want #pwm-cells =3D <3> here. For ease of u=
se
> > I'd not oppose if you pick #pwm-cells =3D <3> even if the hardware can
> > only do normal polarity.
>=20
> Devi, Can we get an answer here soon.
>=20
> The MFD part has been applied and it references this schema causing
> warnings. So this needs to land or MFD schema reverted.

Or the reference to the pwm stuff deleted from the mfd binding?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig         =
   |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7qb63ejcofu46z6d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmUynykACgkQj4D7WH0S
/k48jQgAmXt8jVXBYTItnGzsR/oCdJ99o6oIa2BvsxBL50ugA62CUaeC83anLO1a
qOrcp+6bNp+XAZpxNOirz3EeQKLrLQ+qpb/1fNBn4+e1YT7zv3MMXQesZWt7fhN1
OZ3pBJktPyO9ozHKXuTTOiTUwuKPPfJemCDMAEksxTCa9Wu3hgdMcjG7CmFN0XDI
Tl8XEyZIbN8h+FZDx6GTeVcr6AVy/m+ntGIY4EhLMPjNzG1HPVfWFCeIo0L9trzk
PxM3UkBQbepxL3faE+2V1J5grhNdsOH0y+avnw2jQvWMauopMpSRRtWj1WffPowd
c8b7t3zQV1HkugMxC8hE//Ph/krjyA==
=kaZT
-----END PGP SIGNATURE-----

--7qb63ejcofu46z6d--

