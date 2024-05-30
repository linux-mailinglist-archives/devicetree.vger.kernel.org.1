Return-Path: <devicetree+bounces-70916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A19C18D4F8C
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 18:03:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F3E91F22256
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 16:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8C211CABA;
	Thu, 30 May 2024 16:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFEzzJSn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F481CFB5
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 16:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717085019; cv=none; b=pgPUFUgjpRgkdva4eT1AERV0B63rQ5x6Qq2Q7kaObM3rl28k+mN80TeKENPxpqBgQSphInjbB6/7w7qjdIsRablGMgcwHzlpI5xoiok0jmGNfsfb2y8TEBSC6a5GXZlyR9RngPmy/5GnnOJRVfiScxy/iqIAOuojojTAUAuzxfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717085019; c=relaxed/simple;
	bh=QedpZOUtub6b2uP1dAyZa8uMB11yxZb4Topvy1A3AG4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eyVBgj8XgbpenQgS06SB9RXz8CttqAqBHYb5IOfurQxbpg0DOl4UQsY5f24FhneurnIe6jbfFmMTifDfCP39lVPysMs6I+KpMIKLNCCvm1qLldOeumNv14z9/uyP4K5srE1adq8luIzHVLwxPUtSGMZ+KZTYyNSXiUM7Dy6zbMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFEzzJSn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBFFCC2BBFC;
	Thu, 30 May 2024 16:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717085018;
	bh=QedpZOUtub6b2uP1dAyZa8uMB11yxZb4Topvy1A3AG4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BFEzzJSnC+e8gLcDobEpQdKZ7COOI2E6MtYwiDOmxa0DtvyWCHsqh8++WO4/ZL8Hs
	 Re7tlTPBI9AnFwUd8an9asWn+JsLHO23VzxA6ikMBuPdGRzja0meeoEJgRXQp2MUEf
	 MTbH2fF34sBk8RWCxP8b3qFMiLgk4yWEjsHlBbDT/NhE85UueG14p7GAZDWxl0b/QS
	 BOiVIekKsKdO60dWasVCrxc9zXjaMSVMY37UNCP5/wLEt5/BZV+2DDHb4wqEU2riUi
	 xVBuzz/J4A8EPRy2G1qzIRPijo5Lp8WGSSqIPbso8Bl4oQJLYC4WYwZHG94Nbv2Rsp
	 GdM4JjEPHXCLQ==
Date: Thu, 30 May 2024 17:03:32 +0100
From: Conor Dooley <conor@kernel.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	John Watts <contact@jookia.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Add WL-355608-A8
 panel
Message-ID: <20240530-kinship-lucid-71610ff9cd93@spud>
References: <20240530082318.40516-1-ryan@testtoast.com>
 <20240530082318.40516-3-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xDGbntgEI+ewx1OI"
Content-Disposition: inline
In-Reply-To: <20240530082318.40516-3-ryan@testtoast.com>


--xDGbntgEI+ewx1OI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 30, 2024 at 08:22:22PM +1200, Ryan Walklin wrote:

> +            port {
> +            	endpoint {
               ^
You accidentally added a tab here:
/stuff/linux/.git/worktrees/linux-dt/rebase-apply/patch:71: space before tab in indent.
            	endpoint {
warning: 1 line adds whitespace errors.



--xDGbntgEI+ewx1OI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZlijVAAKCRB4tDGHoIJi
0hB3AP0QOFPwMF0B78COvjak+gYYwyU54j/GgCbmc0iIUt3PIwEA9yE+E//XfLzE
luCPROuxrnU85ncZmVfF+e+6bQdLng0=
=bQn5
-----END PGP SIGNATURE-----

--xDGbntgEI+ewx1OI--

