Return-Path: <devicetree+bounces-73186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B708FE2E8
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 11:34:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E56EF285F2B
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 09:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9542B15358F;
	Thu,  6 Jun 2024 09:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX8oGRT/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C49153517
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 09:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717666339; cv=none; b=n5X2dZ7KhWt89iSWUaVVC9LIcyhsALIn0bR/qtv1y9R3a9Y8Z540/jxv1TK2cHaROEMK2NclXUdIXlyiqZomoPFeFEVmN/i9XAtfCQoxxzHy8VP+OPR6jUFnUDRtMpEPV9JAfxIN5azL9mhApa8d3Ler9d8MAjOZSMr6byHQ160=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717666339; c=relaxed/simple;
	bh=fPwcz9PcQVr+dXSEZDosmZ7ie3Kr+GKp5dXJ0mDW5+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RdMVbuzPupo1OmvZ6qbPIWtGDF47kjPwnuy0mC9wnWC4VIvWDQYjSo+SoDDUykbJ7NDVG6ytD0xHEF/HQh9scbxYfGw+cAhmtdHWinslsaYj42uAwCx4/AU1X90ySz+JNMDugfElWFFNox7qyx6G+VjsXmxi0D36sx29Syx6Rg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX8oGRT/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83EFCC4AF0D;
	Thu,  6 Jun 2024 09:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717666339;
	bh=fPwcz9PcQVr+dXSEZDosmZ7ie3Kr+GKp5dXJ0mDW5+Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qX8oGRT/hk67NF+4pgYIgwNsxPZIMNEXlMYo3+iKniuv2eRhkN5tz7vRvjnccJk40
	 MfH8TPifEzyWipLTLn6AnM0QP+eKi3RizBFwgxZi1cxzQLWzhRzFAE+feiO3DnbpVB
	 ZeISSA1Ms10jOsez6xVRmTgJyjhkg4XcxcX/dMd1NRO32UiQ79nAKOaCGOTkHDosf2
	 MwikExCLf/gnlGjCkqC2XaqWJ3jiP6HnsG/vp5DMcAdVjK1DfTAMzBwOTLzj4qRx3k
	 pR+h6J6Pawjtsei3Ix6btbOKYu6Pvvi7Avk/3zboeTAdPTDbO/HbyScbc1/8+/eq2U
	 MKDy8VeHzzcwQ==
Date: Thu, 6 Jun 2024 11:32:16 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hironori KIKUCHI <kikuchan98@gmail.com>, Chris Morgan <macroalpha82@gmail.com>, 
	Andre Przywara <andre.przywara@arm.com>, John Watts <contact@jookia.org>, 
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add WL-355608-A8
 panel
Message-ID: <20240606-intelligent-aromatic-magpie-80a7a4@houat>
References: <20240530211415.44201-1-ryan@testtoast.com>
 <20240530211415.44201-3-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="xjhxlcmuj2evi5ma"
Content-Disposition: inline
In-Reply-To: <20240530211415.44201-3-ryan@testtoast.com>


--xjhxlcmuj2evi5ma
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 31, 2024 at 09:12:14AM GMT, Ryan Walklin wrote:
> The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display used in a
> number of handheld gaming devices made by Anbernic. By consensus a
> vendor prefix is not provided as the panel OEM is unknown.

Where has this consensus been found?

I had a look at the previous discussions, and I can't find any consensus
being reached there. And for that kind of thing, having the ack or
review of any of the DT maintainers would have been great.

For this kind of cases, we usually use the device it's attached to as
the vendor, so anbernic in this case. Can you send a followup patch?

Maxime

--xjhxlcmuj2evi5ma
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZmGCHwAKCRAnX84Zoj2+
dmxZAX4pKqW/khT/zXUOr+BBW6eu2tIIGzFo7WMiKhbxRIcWdUQH75SjZtS6I59l
80naA1oBfjTsyAuVx0OrYaS+Lpr/CQHR10Bp9eOs48keNgPqy24flMJ4gVReaLnV
tJkRQoQfcg==
=Vm6J
-----END PGP SIGNATURE-----

--xjhxlcmuj2evi5ma--

