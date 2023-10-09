Return-Path: <devicetree+bounces-7009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7BC7BE8B5
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 19:52:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBE722818DC
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 17:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E04C38DE5;
	Mon,  9 Oct 2023 17:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wc3N/MYO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F19B374F5
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 17:52:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B953C433C7;
	Mon,  9 Oct 2023 17:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696873951;
	bh=yP/scKtcI6OBBotY/FATY0k1OHLk/ySM8TF7CIdRg08=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wc3N/MYOxqwOL9eWWR4ar7f+Nl52Pw+OQRfHKD88OVoSlVWv2eEbE18pawMPvGTNS
	 PIeAMCD8CViMEDT2sMBZUiso2CP19P2E27ltwwc0EOXnXm+f5Tpgevo+uG3PeJtH+o
	 AWjZ1SWpOKLA6J7qJQ3oAtmJq5e1eGsZvh/MazS0iOuZd7F9y9YqNrw0K1ChD0c7J5
	 DudWnoM/+1NmBrj7AvKKk5LZIllba4PkvHiT9/LyF0nEyWhWVAr7Ysr/QBMkdwx5NT
	 C/Zo7h60CBj66xgMQdH0F6fexAbiO1jdDfL9WHYFAWwwc38Gq3wbzFz+BFGjXzV5js
	 5wLL+IqB+8B3g==
Date: Mon, 9 Oct 2023 18:52:26 +0100
From: Conor Dooley <conor@kernel.org>
To: yang tylor <tylor_yang@himax.corp-partner.google.com>
Cc: Conor Dooley <conor.dooley@microchip.com>, dmitry.torokhov@gmail.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jikos@kernel.org,
	benjamin.tissoires@redhat.com, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	poyuan_chang@himax.corp-partner.google.com, hbarnor@chromium.org,
	"jingyliang@chromium.org" <jingyliang@chromium.org>,
	wuxy23@lenovo.com, luolm1@lenovo.com,
	hung poyu <poyu_hung@himax.corp-partner.google.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: input: Introduce Himax HID-over-SPI
 device
Message-ID: <20231009-pentagram-clamshell-b14ff00743fd@spud>
References: <20230922-removable-footwork-f1d4d96d38dd@spud>
 <CAGD2q_Y467jJJnwCVH+3F-hh6a-1-OYRugcy0DdjPnTCC77Z8A@mail.gmail.com>
 <20230925-cod-vacancy-08dc8d88f90e@wendy>
 <CAGD2q_a1nLtFj7H42f+u+J5Bih59MGS0aJLHCFJy5gM2ydys4w@mail.gmail.com>
 <20230926-action-sludge-ec8e51fdd6d4@spud>
 <CAGD2q_YBfDT950tyxEF87ZeiANgea_x8S16Ud5K2bcQ+eL9T=w@mail.gmail.com>
 <20230926-reverence-unlit-d0027225cc43@spud>
 <CAGD2q_ZzNPOL+Mhg7aWFTQd+UJJYVLz1ZE9hbNb0roS2M6y34g@mail.gmail.com>
 <20230928-spectacle-civic-339c0d71d8d7@spud>
 <CAGD2q_b1gn8XAfgfzuNn3Jo6gEguBEacxERyRM5ms-V=+hWS+g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="M6raEjnX9WsFCxfg"
Content-Disposition: inline
In-Reply-To: <CAGD2q_b1gn8XAfgfzuNn3Jo6gEguBEacxERyRM5ms-V=+hWS+g@mail.gmail.com>


--M6raEjnX9WsFCxfg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 02, 2023 at 06:44:41PM +0800, yang tylor wrote:
> On Fri, Sep 29, 2023 at 12:56=E2=80=AFAM Conor Dooley <conor@kernel.org> =
wrote:
> >
> > On Thu, Sep 28, 2023 at 10:12:41AM +0800, yang tylor wrote:
> > > On Tue, Sep 26, 2023 at 8:53=E2=80=AFPM Conor Dooley <conor@kernel.or=
g> wrote:
> > > > On Tue, Sep 26, 2023 at 05:52:39PM +0800, yang tylor wrote:
> > > > > On Tue, Sep 26, 2023 at 5:02=E2=80=AFPM Conor Dooley <conor@kerne=
l.org> wrote:
> > > > > > On Mon, Sep 25, 2023 at 06:16:29PM +0800, yang tylor wrote:
> > > > > > > On Mon, Sep 25, 2023 at 4:41=E2=80=AFPM Conor Dooley <conor.d=
ooley@microchip.com> wrote:
> > > > > > > We have a default prefix firmware name(like himax_xxxx.bin) i=
n the driver code.
> > > > > >
> > > > > > How do you intend generating the name of the firmware file? I a=
ssume the
> > > > > > same firmware doesn't work on every IC, so you'll need to pick a
> > > > > > different one depending on the compatible?
> > > > > >
> > > > > If considering a firmware library line-up for all the incoming pa=
nels
> > > > > of this driver.
> > > > > We would use PID as part of the file name. Because all the suppor=
t panels would
> > > > > have a unique PID associated. Which will make the firmware name l=
ike
> > > > > himax_xxx_{$PID}.bin. The problem is, we need to know PID before =
firmware load
> > > > > at no flash condition. Thus PID information is required in dts wh=
en
> > > > > no-flash-flag
> > > > > is specified.
> > > >
> > > > Firstly, where does the "xxx" come from?
> > > > And you're making it sound more like having firmware-name is suitab=
le
> > > > for this use case, given you need to determine the name of the file=
 to
> > > > use based on something that is hardware specific but is not
> > > > dynamically detectable.
> > > Current driver patch uses a prefix name "himax_i2chid" which comes
> > > from the previous project
> > >  and seems not suitable for this condition, so I use "xxx" and plan to
> > > replace it in the next version.
> > > For finding firmware, I think both solutions are reasonable.
> > > - provide firmware name directly: implies no-flash and use user
> > > specified firmware, no PID info.
> > > - provide no-flash-flag and PID info: loading firmware from organized
> > > names with PID info.
> > > I prefer the 2nd solution, but it needs more properties in dts. 1st
> > > has less properties and more
> > > intuitive.
> > >
> > > I don't know which one is more acceptable by the community, as you
> > > know I'm a newbie here.
> >
> > To be honest, I am not all that sure either! Does the panel id have
> > value in its own right, or is that only used to determine the firmware
> > filename?
> Currently, PID stands for Panel/Project ID and is used for determining
> the firmware filename only. We haven't come up with any new attribute that
> may attach to it. The differences between panels are handled in firmware
> dedicated to its PID.
>=20
> > Also, if it does have value in its own right, rather than a "pid",
> > should the panel be a child node of this hid device with its own
> > compatible?
> It may need a child node if we find it necessary to add attributes to eac=
h PID.
> But currently we have no idea about it.

To be honest, it seems to me like you are using "PID" in place of a
compatible for the panel, since it needs to be provided via DT anyway.

--M6raEjnX9WsFCxfg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSQ92gAKCRB4tDGHoIJi
0sbAAQDvFnawcZKqA8CN5euZeU93hvrmcUykdZUeXZ3RsTGPegEAqXY+uqJz22vN
qIYSeon1HUa/OyfQTuriEEM5vLbg6Q0=
=mZhs
-----END PGP SIGNATURE-----

--M6raEjnX9WsFCxfg--

