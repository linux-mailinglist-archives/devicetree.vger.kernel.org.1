Return-Path: <devicetree+bounces-7557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 046307C4A8B
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:28:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F8C91C20D85
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 06:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E65715481;
	Wed, 11 Oct 2023 06:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOjy724L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0134B354F6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:28:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DB5FC433C7;
	Wed, 11 Oct 2023 06:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697005691;
	bh=QgnMl9B4zUXQNgtEeKROdc7SjfMgtaTbXTJLtuTkjJ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OOjy724LOL/g2rMFhztMd/U097sJw5/ITAB9dZdP+71mDWrQPUKwztmxLASmN3Ajs
	 4g5izeRdz3ZIYwn6sfEGHUaTQ23jz8FFLOPdALZ2kUab53JVkXKj4H8ZEI8FM6JRdi
	 rtYEBfbvlDmSzJil+MdEd93bhPzb/f768ti3Gydj9BO1vgueHx3o4VDT5haRFzPu53
	 TRkherYFcFfrSyGKVSteNaarn1jf9+s2IBEzCrfjrEcZ1g3Lhz7gvKnNYV8llpjdYa
	 FCityEoH4kF8qCb37hot67eDTute00tpg29JSbJAoEuXxxs3tyMUHDHfEQ9zFyo5B1
	 0SkIxMFvMcdLg==
Date: Wed, 11 Oct 2023 08:28:05 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	loic.poulain@linaro.org, rfoss@kernel.org, andi.shyti@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: i2c: qcom-cci: Document sc8280xp
 compatible
Message-ID: <ZSZAdfJ8IgFE/cO9@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	loic.poulain@linaro.org, rfoss@kernel.org, andi.shyti@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
References: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
 <20231006120159.3413789-2-bryan.odonoghue@linaro.org>
 <ZSWpm/7xnoFkUn31@shikoro>
 <767bc246-a0a0-4dad-badc-81ed50573832@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+zFGQa6cKiry5TnQ"
Content-Disposition: inline
In-Reply-To: <767bc246-a0a0-4dad-badc-81ed50573832@linaro.org>


--+zFGQa6cKiry5TnQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> https://lore.kernel.org/linux-arm-msm/20231010122539.1768825-1-bryan.odonoghue@linaro.org/

Sure, I'll revert it. Thanks for the heads up!


--+zFGQa6cKiry5TnQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmUmQHIACgkQFA3kzBSg
KbbOHw//fgu3AlcwV0nymLzbLIhx4OwYcBZr4Fj1qVTdU6wwQjJn2ZLJTxQddxbx
xqHN+s+5hCbBi91FYjvJ/PdZmtKHJeXIDvfY1gbFUWY1qaCgn4gQrxi3wrbT2FtM
wYPspQ3CdWIZWzMkknW3yyt5z5ASsCi2gywjsQimIEMUn8Y6N5kWMI4NEbPDDL3Q
TvG2ee+6LNIGesvBXQ53lTXjwF6eSeovSuFYPORovXRDAIgIMHy+Mqh8NXBr/Xhq
m6yFG2rc9NTeyxJm/WFbqUeGh4mjowfeCOJQSsBa+kZ3Az/IXo7c9krfvUGVwOFH
tfVNWt5mk5G3iGZZbaf19mU/XPmKwsrQutz6zRqJwFp+TRSBvlXbFAjeUo65YvyP
cTtNjVoWPiVrz/sWPDLWX1rH5pZWh4hEdXCwXlvVl5YMQPUNf/M+YbgzWmwO4Px+
FxukBxn9occAHRWCAniQmBXA5djUxUMJNHZYy/DJWwmKPO/+jEsfR1R1zEY4R0Wj
KJeZcsXvDGVu9EjLeRU/YfTKVVq3Im/2N1N9NXEAErTopoc8ozzw4T3OZAiu37Eb
vjYKgu1wqEJW6lij6CuETeKp4J7+mDsHuNws+CiDlmFGSFjVhEat2z6bfM1vpqv+
ZIhC7j5jP4BdTOBCpSHjP0TumOjX448KqYL3jxfWFLWM/yb0vTo=
=hqBp
-----END PGP SIGNATURE-----

--+zFGQa6cKiry5TnQ--

