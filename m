Return-Path: <devicetree+bounces-241663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A6EC809B5
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:56:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 725694E749F
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C112B303C81;
	Mon, 24 Nov 2025 12:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtaMyIGp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997B34414;
	Mon, 24 Nov 2025 12:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763988696; cv=none; b=EegBSZjVstKUdZIP9PvOBnafGklXrb0sJwCHarN9BCe5XM3FhsDe2axHll6PuVqCFfN1gLPJ8QE67X79waH0LDXnfSeZApfj9UkuZaowgqfb8nhznMFC3w0Nx3BPpENESeb1CdfkwRisiKZcoWjJlFLZudRbrQJWSv5vqWgjU9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763988696; c=relaxed/simple;
	bh=EXDo7TfmqMYLXWZ+bEU8LHDRso075CUberKN/3Yl4CU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lWX+ttoeO+0yeaSv7b0mW+l5iFg+tq9WI5HLdK/9WB5Xz23FwOlEYUqbObrfaRv+FakOk8k6x+KuC+u5dg0NjOZyynqtW+j+58H73LF900sruoqlBzq8KzSAeTMGaDB2gzddmW8Knj0GhYBLtisZD8Q7suuOPhRrBSb4Ap4pMUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtaMyIGp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F434C19421;
	Mon, 24 Nov 2025 12:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763988696;
	bh=EXDo7TfmqMYLXWZ+bEU8LHDRso075CUberKN/3Yl4CU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WtaMyIGpd0P0Yxd553IklvraZ7IuKp+jtok9+96rXwpbeE5QrU14D1ufrJVCGBLMd
	 JyY6HBpS1WmBOXh8bbRwjtolFQtQN1p+40KcegUTLDiRnlLprmmEYgKmE9IWik6Gx2
	 UDlfpSKhman3mgloEbSLoPoJsI28QboFahJ3t5Orxat58FDZRG1S1Oqv08E0PGIkK6
	 uj4nJ+uhTVBkyu4dzlUgeO4zPLjl0mEldp81TlOqDNf/BHZHV/t8ti1ccfGYLL3Gub
	 EhDL5TVJ97+/KCFlNlJyRdxlneQQKPAfTzgZVyakupTexIt6SfydIAwh09VJ0e1Ws7
	 x4qjIspfHCfLw==
Date: Mon, 24 Nov 2025 13:51:33 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Daniel Schultz <d.schultz@phytec.de>
Cc: neil.armstrong@linaro.org, jessica.zhang@oss.qualcomm.com, 
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	thierry.reding@gmail.com, sam@ravnborg.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, upstream@lists.phytec.de
Subject: Re: [PATCH 1/2] drm/panel: panel-simple: Add Sharp LQ070Y3LG05
Message-ID: <ehhdijawntxsaguhygczk5vrb2quqg3ep5eer25auh7rrq5f3x@pvcaxa7n5ybm>
References: <20251124123938.936521-1-d.schultz@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="rvokvobwpqpxokhq"
Content-Disposition: inline
In-Reply-To: <20251124123938.936521-1-d.schultz@phytec.de>


--rvokvobwpqpxokhq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/2] drm/panel: panel-simple: Add Sharp LQ070Y3LG05
MIME-Version: 1.0

On Mon, Nov 24, 2025 at 04:39:37AM -0800, Daniel Schultz wrote:
> Add the Sharp LQ070Y3LG05 7" WVGA lanscape LVDS RGB TFT-LCD panel.
>=20
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  drivers/gpu/drm/panel/panel-simple.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)

Any reason to use panel-simple over panel-lvds?

Maxime

--rvokvobwpqpxokhq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaSRU0AAKCRAnX84Zoj2+
dgFRAYC7ZxtCjqS1P8rnbGd1iiuHj8rT08fFhj2+PukMkX1ltGk4t6x4MbLmx3kZ
PS8hLn8BgPtouuM6DSesAlWkTSxBnuMWNum5pyqoc0TBDTiebftlSRgs+qZQMUUb
YYMpn0dumw==
=pIal
-----END PGP SIGNATURE-----

--rvokvobwpqpxokhq--

