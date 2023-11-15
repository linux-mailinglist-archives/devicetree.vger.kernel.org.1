Return-Path: <devicetree+bounces-15988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 108F47EC669
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:54:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3FF5C1C20B52
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49FC2FC25;
	Wed, 15 Nov 2023 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZBjEbY7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCF72EB08;
	Wed, 15 Nov 2023 14:54:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E51AC433C8;
	Wed, 15 Nov 2023 14:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700060063;
	bh=qJzZTmMjUOCQgaFSR0cAlyelD4CebJxSHi50IvMMUXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sZBjEbY7ekjmsPtfiYZ7Qes3zmOewOIk3dgwa4I4mBP3Ew/Zkl+nv6jT5TcTA0sso
	 tnXS6s2x92qXATCgr4gauZDg6Cm4OD+QvZMmzaVB8tL7YP3MR/e7tqVcjnPc3RADGe
	 46rxBZJNMU8z7pMFI5fxDNOVs8my4USq3fMe8GUZZRTVh0+XeJpJ3XhO/mzMLMqfe1
	 6k2kyzwwGr4bo8dWA7f7q4Rx2YrR0FbKCe3jsqkR/6PVZPBRX2EeLqpKS2/+e9jxUA
	 Hy2KGZCZ/A2ftHDhNVd/AE5uNEsHGcScCrCuvyBcyx8EGFM/+R4vpA0FGGb9aVTxwH
	 A70dtOc8HgFfA==
Date: Wed, 15 Nov 2023 14:54:19 +0000
From: Conor Dooley <conor@kernel.org>
To: Binbin Zhou <zhoubb.aaron@gmail.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>,
	Huacai Chen <chenhuacai@loongson.cn>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Huacai Chen <chenhuacai@kernel.org>,
	loongson-kernel@lists.loongnix.cn, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, Yinbo Zhu <zhuyinbo@loongson.cn>,
	WANG Xuerui <git@xen0n.name>, loongarch@lists.linux.dev
Subject: Re: [PATCH 1/2] dt-bindings: thermal: loongson,ls2k-thermal: Fix
 binding check issues
Message-ID: <20231115-frantic-charter-ccd33e3478de@squawk>
References: <cover.1698743706.git.zhoubinbin@loongson.cn>
 <944559ea3bf7ba0a1540f831ccd7d33591622b22.1698743706.git.zhoubinbin@loongson.cn>
 <20231031-negative-giveaway-6191a2da0cd5@spud>
 <CAMpQs4+3T9RATpJ5VycnEzkOTx_M2vdt6WPJv_B1Efy81RzCjA@mail.gmail.com>
 <20231101-clone-facsimile-fd4c37333842@spud>
 <CAMpQs4L_85yPQXR4t=kaCEuwXK-Jr=L6G=omhAtrOn7CWUMCKw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="onz20QwnE0RQyYcQ"
Content-Disposition: inline
In-Reply-To: <CAMpQs4L_85yPQXR4t=kaCEuwXK-Jr=L6G=omhAtrOn7CWUMCKw@mail.gmail.com>


--onz20QwnE0RQyYcQ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 12:50:41PM +0600, Binbin Zhou wrote:
> On Wed, Nov 1, 2023 at 1:59=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
> >
> > On Wed, Nov 01, 2023 at 07:38:39AM +0600, Binbin Zhou wrote:
> > > On Tue, Oct 31, 2023 at 10:58=E2=80=AFPM Conor Dooley <conor@kernel.o=
rg> wrote:
> > > >
> > > > On Tue, Oct 31, 2023 at 07:05:49PM +0800, Binbin Zhou wrote:
> > > > > Add the missing 'thermal-sensor-cells' property which is required=
 for
> > > > > every thermal sensor as it's used when using phandles.
> > > > > And add the thermal-sensor.yaml reference.
> > > > >
> > > > > Fixes: 72684d99a854 ("thermal: dt-bindings: add loongson-2 therma=
l")
> > > > > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > > > > ---
> > > > >  .../bindings/thermal/loongson,ls2k-thermal.yaml        | 10 ++++=
+++++-
> > > > >  1 file changed, 9 insertions(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/thermal/loongson,l=
s2k-thermal.yaml b/Documentation/devicetree/bindings/thermal/loongson,ls2k-=
thermal.yaml
> > > > > index 7538469997f9..b634f57cd011 100644
> > > > > --- a/Documentation/devicetree/bindings/thermal/loongson,ls2k-the=
rmal.yaml
> > > > > +++ b/Documentation/devicetree/bindings/thermal/loongson,ls2k-the=
rmal.yaml
> > > > > @@ -10,6 +10,9 @@ maintainers:
> > > > >    - zhanghongchen <zhanghongchen@loongson.cn>
> > > > >    - Yinbo Zhu <zhuyinbo@loongson.cn>
> > > > >
> > > > > +allOf:
> > > > > +  - $ref: /schemas/thermal/thermal-sensor.yaml#
> > > > > +
> > > > >  properties:
> > > > >    compatible:
> > > > >      oneOf:
> > > > > @@ -26,12 +29,16 @@ properties:
> > > > >    interrupts:
> > > > >      maxItems: 1
> > > > >
> > > > > +  '#thermal-sensor-cells':
> > > > > +    const: 1
> > > > > +
> > > > >  required:
> > > > >    - compatible
> > > > >    - reg
> > > > >    - interrupts
> > > > > +  - '#thermal-sensor-cells'
> > > >
> > > > Why does it need to be a required property now though?
> > > > Adding new required properties is technically an ABI break.
> > >
> > > Hi Conor:
> > >
> > > I don't think it makes sense to have a separate thermal sensor
> > > definition, it needs thermal-zones to describe specific behaviors,
> > > e.g. cpu-thermal, so we need '#thermal-sensor-cells' to specify the
> > > reference.
> > > And the Loongson-2K1000 has 4 sets of control registers, we need to
> > > specify the id when referencing it.
> >
> > Unfortunately, none of this is an answer to my question.
>=20
> Hi Conor:
>=20
> Sorry for my late reply.
>=20
> Over the past few days, I've been communicating offline with Yinbo
> (the driver author) about the use of the '#thermal-sensor-cells'
> attribute. He retested the attribute and determined that it is
> 'required'.
>=20
> We can see that the '#thermal-sensor-cells' attribute in the
> dt-binding was dropped between the V12 patchset[1] and the V13
> patchset[2]. Yinbo may have misunderstood Daniel's comment and removed
> the '#thermal-sensor-cells' attribute from the dt-binding. But the
> attribute was carelessly still left in the dts file, resulting in the
> issue not being found during functional validation.
>=20
> Indeed, re-adding the '#thermal-sensor-cells' attribute as "required"
> is technically an ABI breakage, but the driver does not work properly
> under the current dt-binding rules.

I was going to say that you should add some comment about this in the
commit message, but at the end of the day - you're not much of a thermal
sensor without having thermal-sensor-cells, so I think your commit
message is actually fine.
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

and I probably should have recognised that earlier.

Thanks,
Conor

--onz20QwnE0RQyYcQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVTbkAAKCRB4tDGHoIJi
0kPGAP4vCF3zOgWBTIduTnedLvxu7tAfmldsc4YY9a/LZhSwHgEAx41v6AmfunzY
vAEB1T1BmgPRc8b0RFtCKVscJocGXwg=
=GzLQ
-----END PGP SIGNATURE-----

--onz20QwnE0RQyYcQ--

