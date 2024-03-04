Return-Path: <devicetree+bounces-48165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2C4870779
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 17:47:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D959628301D
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 16:47:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F3304D9FD;
	Mon,  4 Mar 2024 16:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="atW/JT/g"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C24B4D59E
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 16:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709570849; cv=none; b=WD33ms8cD6/0QeboJr+4+cpuEiqZIl0Uvfh6ms5TxUuLv5et7HyQz9YVYDAC5kJJqpM85GeuZLjOw2hhS/EHLS+abiEcM42b5mg385i0Egxx841c8wtnGWtJ+aEROe0rNAEOFl7kD8AhUcX4SO90w89AWq3U8rczmnc0/AgntPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709570849; c=relaxed/simple;
	bh=5sZDHttew6pr42z2HI4pvFmV4UP5D1BG/iBzmljExz4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gxm5eNotFagrY3RSRo3KirkHrmN5APWJhgChIU/a0cUNUSJmkRzDRGx5+p/IXPmaMHoeanVQAmeqo0aiMMVixSNjb57mBbU7PBW7JMsSYbb/ZnyT62plNDN+lv/JdA9uzWfJn+g8JsXs4kASTj1ut+N3WWNVpeKjvrOpie68KOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=atW/JT/g; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1709570845;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NWRL0TmBimAGywUmDD4N8/Dqf6I496qEYLkjiRZx7X8=;
	b=atW/JT/gCvRhSqD3/+FpucyZvu9afTMBwtsjLMpZ8q6MDLjFXRtR29GJBa+tZhZe22X72g
	udN5bTV2pV6tAz4KYVGGvDQVjT6lwm5D2WFNkh9SR4fz/nieXBiZ2Db5ZARrVnDSGP9kJF
	9hQqj//E/yeBm1zNGZJrP1VQp/pA4b0wUoqpRjqnTYPe1QSWjKeDP/U9UFPzhhxN+huLeA
	2oUmnKmpmc6/JqAJbTplXmT1zzp3rJosDDsbA+9Y0ZdSLQTIj0k97tNFHiC+w0wsW5J6ug
	wcSCDS2zNkWTvpcFUFF5whnxV4lLc4LDrQmDdjgoCI+s7+93qgSHtxnPH9T7OA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Chen-Yu Tsai <wens@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Andrew Lunn <andrew@lunn.ch>
Subject:
 Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 04 Mar 2024 17:47:22 +0100
Message-ID: <1805269.IgJLvJe6uz@bagend>
Organization: Connecting Knowledge
In-Reply-To: <688bf5d2-153f-4be2-814f-245b8eeba911@kwiboo.se>
References:
 <20240304084612.711678-2-ukleinek@debian.org> <27139798.WhXITi6ROJ@bagend>
 <688bf5d2-153f-4be2-814f-245b8eeba911@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart29996295.l5GNDMSQKS";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart29996295.l5GNDMSQKS
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Chen-Yu Tsai <wens@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Date: Mon, 04 Mar 2024 17:47:22 +0100
Message-ID: <1805269.IgJLvJe6uz@bagend>
Organization: Connecting Knowledge
In-Reply-To: <688bf5d2-153f-4be2-814f-245b8eeba911@kwiboo.se>
MIME-Version: 1.0

On Monday, 4 March 2024 16:46:59 CET Jonas Karlman wrote:
> Sorry for not getting back to you sooner, but yes I would check with
> phy-mode = "rgmii-id". There is also a possible issue with rk gmac
> driver in both U-Boot and linux, it always set enable tx/rx delay bit.
> 
> Please, try with following in U-Boot:

No worries :)
Will try your suggestions soon, but it's probably better to take that 
discussion somewhere else to not further clutter up this patch/thread.

Cheers,
  Diederik
--nextPart29996295.l5GNDMSQKS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZeX7GwAKCRDXblvOeH7b
bs8dAQCdVm8q0e/amK7JBaVkuueNST/XXkWGoMhIif08mgcRRwD+PqUQr/6yavo6
hpnpWWOWmI06X1H28ukmSwtKCeVsuwg=
=0TXr
-----END PGP SIGNATURE-----

--nextPart29996295.l5GNDMSQKS--




