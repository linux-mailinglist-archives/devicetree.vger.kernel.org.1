Return-Path: <devicetree+bounces-147543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 066F6A388D8
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 17:09:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D87FC18832B9
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D656D223700;
	Mon, 17 Feb 2025 16:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="UzVhoRfo"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA6943E499
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 16:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739808246; cv=none; b=kMV0H+LUApOkwQqi+AGjsTD52L36EsIQTKGoMuC2sXlrKFphkTGf0tISU5WZgR8OevkNtIWCbx2uQfsQRUdmjcojoAlNv7REZ4KtsBKNVsS80DUYkXUcMx5CX1ZQive46VbEXbucbj+cQgHPRky/brBtrai8kULrIhkLShu/XxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739808246; c=relaxed/simple;
	bh=DNjjxq68KrYoqBNv5YADFYItqITL21WFyFOer99ynvM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qfXbO5ZJ508FqhF95IfUubVgPFpEKJW9ikbTy13XCl6Tz/lgjg8NVglWyMczYo0IddMnsJE7/yHpWtcqcUgahyEDl3YEwkOyPdV8TC8B/Fuk987HMptptw4KXi7zdQXnb/n+hmPlFBbOG5IvuiMsElV4An3b2ebFDqQfmTNwz/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=UzVhoRfo; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Date: Mon, 17 Feb 2025 21:32:52 +0530
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1739808230;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LJk8/SrPdoFLdWOcpo+5G6r5AMsEus7osPwto4bzZjk=;
	b=UzVhoRfoddKHqqP66smA3oqpO0D17suASPDPjZxQBauD8Qq6oF7lpHmxlwEv8MeBP2rZOT
	COw9uGcvmvRNy3RHLH8S/oGEl6hQtiyGOvizQeYm8u/Q6JO9IneD9gGPtzeNxcvohRB7dY
	yIjn9XNSXQnagi0COlfR+ne4d8dnwSo=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jai Luthra <jai.luthra@linux.dev>
To: Stefan Eichenberger <eichest@gmail.com>
Cc: nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, francesco.dolcini@toradex.com, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: Re: [PATCH v1] arm64: dts: ti: k3-am62-verdin-dahlia: add Microphone
 Jack to sound card
Message-ID: <vax3z776aw6aujpyvwc6zkfqgxn34oawxgc3wn6bjkkj7kjhpz@svmc3nasmjei>
X-PGP-Key: http://jailuthra.in/files/public-key.asc
References: <20250217144643.178222-1-eichest@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3vpxn6jmqqd3gcsw"
Content-Disposition: inline
In-Reply-To: <20250217144643.178222-1-eichest@gmail.com>
X-Migadu-Flow: FLOW_OUT


--3vpxn6jmqqd3gcsw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1] arm64: dts: ti: k3-am62-verdin-dahlia: add Microphone
 Jack to sound card
MIME-Version: 1.0

Hi Stefan,

Thanks for the patch.

On Mon, Feb 17, 2025 at 03:46:04PM +0100, Stefan Eichenberger wrote:
> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
>=20
> The simple-audio-card's microphone widget currently connects to the
> headphone jack. Routing the microphone input to the microphone jack
> allows for independent operation of the microphone and headphones.
>=20
> This resolves the following boot-time kernel log message, which
> indicated a conflict when the microphone and headphone functions were
> not separated:
>   debugfs: File 'Headphone Jack' in directory 'dapm' already present!
>=20
> Fixes: f5bf894c865b ("arm64: dts: ti: verdin-am62: dahlia: add sound card=
")
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>

Reviewed-by: Jai Luthra <jai.luthra@linux.dev>

> ---
>  arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi b/arch/arm=
64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi
> index 9202181fbd652..fcc4cb2e9389b 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi
> @@ -28,10 +28,10 @@ sound {
>  			"Headphone Jack", "HPOUTR",
>  			"IN2L", "Line In Jack",
>  			"IN2R", "Line In Jack",
> -			"Headphone Jack", "MICBIAS",
> -			"IN1L", "Headphone Jack";
> +			"Microphone Jack", "MICBIAS",
> +			"IN1L", "Microphone Jack";
>  		simple-audio-card,widgets =3D
> -			"Microphone", "Headphone Jack",
> +			"Microphone", "Microphone Jack",
>  			"Headphone", "Headphone Jack",
>  			"Line", "Line In Jack";
> =20
> --=20
> 2.45.2
>=20

--3vpxn6jmqqd3gcsw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEETeDYGOXVdejUWq/FQ96R+SSacUUFAmezXasACgkQQ96R+SSa
cUWD5A//ajdJiy6GNGANtya5phW2W6ZCuzpPK+v9N7yhiy1N3Y/5lMhvjaBeP5S0
CbH41SIXF5HrvDdUwOFnjlUzdHaqTsTmgrEBUFVYduv3B0F7msWjVzA8kgmxFX9T
lofiKy/vJ6a2gaQZi5KzalmnCkrgP/qHSzPVm7homHtB5injypFSrBWBAMsHgVO7
F63TS7q7Ct6LugWqQMUMwTByRFNm7lfL41UWsMBVLOQPsaY/F2NMhPudZbvCGLev
Mn/29ChwcjCe475YfX/zZ+SQ8Lo5BdthIRGZYJerQ5XAhTnulnICJJtkNnRaEGZi
BuDV6gKvMR1Ia6g2KPGaL5Zg73TLCLVucIg3coBDocbhIWAKw3jIZhel7j+cM0nS
rZVbYy35HT4qcnW4cmNdNc/v2/jL6y5EtqIsQZ9gup+/banHPitnKYjg0bsD2Iq7
iy1VLOzgRT3AXAGH5YmfXqe5zfg7WTFBCvwh6slAZXabHgw6UPphR4e14teU2zxi
6qYoTHmE6F4djj/5IbqLgWraNXp829QM8n+rK6SBCr8yMtnnYfXJblUXrw1kbCXr
N2roMgEIvGvSTEVd8+W0BDOuS1ExmJJ/vYUhLrGCIZ6bl3Qi4dYIl42WdVefRDT4
qtzIf5QAiMcqVitGzYmlGf/m+24KaGgPqsTLoGdumkagEgMVKz4=
=Qg3k
-----END PGP SIGNATURE-----

--3vpxn6jmqqd3gcsw--

