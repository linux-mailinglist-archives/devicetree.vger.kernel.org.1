Return-Path: <devicetree+bounces-6994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E35E77BE639
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 18:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A3971C20960
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 16:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3CCE38BB7;
	Mon,  9 Oct 2023 16:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+OtNIrz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A75374D3
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 16:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45968C433C7;
	Mon,  9 Oct 2023 16:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696868469;
	bh=O+CpNqRt0P0QSThDKZt7Zfl0padZ2Q61mgM0eDkq4Co=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X+OtNIrz44vZQfoTvmyAgUBWBWSm0UuHywY9ovT7YI2ug0RCOQoid6NlbRdiHXZ7s
	 asyPW2+REAEVUiYDZR8zAQDAHdlYcjw3wMAFaT/mlYGZNGghV9aK1T2BqoNer8A3oy
	 JldlnXuwihW/ED52gYsxT35b12dQquHo1J41t1CcmvrqkOTU9qI1x5RbFpIVKy3Jie
	 BxNrbPnx+INvAVSYSUato/u7+OmCy/wqoJqYoXCANChL3E/8R5qXuYpZzQI/06Xtdj
	 o9nhWUyseGY2qyfP4ADqzkGMmCIIAsmpmqQklI8NwrDcwVUnlKpotjsCUx+Lu24svK
	 93N/kkXd/bNCw==
Date: Mon, 9 Oct 2023 17:21:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Anshul Dalal <anshulusr@gmail.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH v3 1/2] dt-bindings: input: bindings for Adafruit Seesaw
 Gamepad
Message-ID: <20231009-clatter-latrine-f6f9cd6f43c1@spud>
References: <20231008185709.2448423-1-anshulusr@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RH3Li9Lh/V1Q4IoS"
Content-Disposition: inline
In-Reply-To: <20231008185709.2448423-1-anshulusr@gmail.com>


--RH3Li9Lh/V1Q4IoS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 09, 2023 at 12:27:06AM +0530, Anshul Dalal wrote:
> A simple driver for a mini gamepad that communicates over i2c, the gamepad
> has bidirectional thumb stick input and six buttons.
>=20
> The gamepad chip utilizes the open framework from Adafruit called 'Seesaw'
> to transmit the ADC data for the joystick and digital pin state for the
> buttons. I have only implemented the functionality required to receive the
> thumb stick and button state.
>=20
> Product page:
>   https://www.adafruit.com/product/5743
> Arduino driver:
>   https://github.com/adafruit/Adafruit_Seesaw
>=20
> For testing on a RPi Zero 2W, I utilized the following devicetree overlay:
>=20
> /dts-v1/;
> /plugin/;
> / {
> 	compatible =3D "brcm,bcm2835";
> 	fragment@0 {
> 		target =3D <&i2c1>;
> 		__overlay__ {
> 			#address-cells =3D <1>;
> 			#size-cells =3D <0>;
> 			joystick@50 {
> 				compatible =3D "adafruit,seesaw-gamepad";
> 				reg =3D <0x50>;
> 			};
> 		};
> 	};
> };
>=20
> I used the above overlay as reference for writing this binding. Though the
> gamepad also has an interrupt pin that needs to be enabled explicitly (not
> currently implemented in driver). The pin triggers a rising edge when a
> button is pressed or joystick is moved which can be detected on a GPIO
> of the Microcontroller.
>=20
> I wasn't sure how to represent that functionality in the binding so I have
> left it out for now.
>=20
> Signed-off-by: Anshul Dalal <anshulusr@gmail.com>
> ---
>=20
> Changes for v3:
> - Updated id field to reflect updated file name from previous version
> - Added `reg` property
>=20
> Changes for v2:
> - Renamed file to `adafruit,seesaw-gamepad.yaml`
> - Removed quotes for `$id` and `$schema`
> - Removed "Bindings for" from the description
> - Changed node name to the generic name "joystick"
> - Changed compatible to 'adafruit,seesaw-gamepad' instead of 'adafruit,se=
esaw_gamepad'
>=20
>  .../input/adafruit,seesaw-gamepad.yaml        | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/adafruit,sees=
aw-gamepad.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/input/adafruit,seesaw-game=
pad.yaml b/Documentation/devicetree/bindings/input/adafruit,seesaw-gamepad.=
yaml
> new file mode 100644
> index 000000000000..610c99594439
> --- /dev/null

> +++ b/Documentation/devicetree/bindings/input/adafruit,seesaw-gamepad.yaml

> +$id: http://devicetree.org/schemas/input/adafruit-seesaw.yaml#

You're at version 3 now, but do not seem to have figured out how to test
the bindings?
https://docs.kernel.org/devicetree/bindings/writing-schema.html#running-che=
cks

Thanks,
Conor.

--RH3Li9Lh/V1Q4IoS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSQocAAKCRB4tDGHoIJi
0i43AQCqkiPeSEJES0fFo407YP08/wBBsy0ymO0tWtBAoy27oAD+J091/NTFD2BM
sxEFSte4EAQlQQDufLxbP1XreMb3HgM=
=ODF5
-----END PGP SIGNATURE-----

--RH3Li9Lh/V1Q4IoS--

