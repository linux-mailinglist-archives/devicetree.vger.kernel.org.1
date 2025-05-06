Return-Path: <devicetree+bounces-174260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6980DAAC9C6
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 17:45:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D0BD1C07015
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 15:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77052283121;
	Tue,  6 May 2025 15:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifD+jmjK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517F827CCE4
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 15:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746546328; cv=none; b=qqPF8fHUcuNUfL3Kif9eBGeRlrackMbal8NX1eRglJXr9gEfywlggqH0jvePe1ZcOldb8Wv/b3OvQihdtI4ezjQ8wXbflKKQ9eE6l3iJgBxjPJE9zyr1CIlZkNeodx5MSVoWv1Gha4zA7uAeYrp8HFeGczfzOFEr4zI9Y1euJ1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746546328; c=relaxed/simple;
	bh=P3oC9L/V7wY2qcuWyTte91buVEvN7VIAf+IqqHVzafQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KOFEWQ8iJD7uP6YwouucXuYKoWoQwqnNrVLZ8MSUrMVPCj3SxuPEGi1PQrmJgHKTHUFMtUR70KNJYco92cKk+V5L/ToX89HLG9PjRHe2Ke2ZiykWZmL3Znrg7UigqCVCHPYpkHE+zlm66fcWEf9kP7SJtLohXUltWoRKrhbRCTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifD+jmjK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DB54C4CEE4;
	Tue,  6 May 2025 15:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746546327;
	bh=P3oC9L/V7wY2qcuWyTte91buVEvN7VIAf+IqqHVzafQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ifD+jmjKve8EpiVakQZWDkuJGL5Crak0Y63C2Iuz+zYMzZHC8m0hh0MInTre4zlF+
	 0g7VrwD71C8qc9+zZW53eHQBh4eHRrAzXLbq0ij3DXWKIHaA4HrwmZKt9LWHwGZta7
	 h9lfLl/wIvrKPJ3/oYX+ZDMEJE8u7umwkqs+kaDHbaJ9a9LkKhgcw6aMFxuMjwYxYR
	 Vlbb+GHAbvyO9pW72+kEiH46uBipgtTaOdlmwLZMrnJsfeHXL3wt/hY4urhdQTVAhg
	 c/FDg5cnPiqbRg8ikYfRD/a3YIpuct3i+KZMF1SIALXZWYPqZcEAogvB/0JwYPq5rb
	 WII64nfbxoRrQ==
Date: Tue, 6 May 2025 16:45:23 +0100
From: Conor Dooley <conor@kernel.org>
To: John Clark <inindev@gmail.com>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	robh@kernel.org, krzysztof.kozlowski@linaro.org,
	conor+dt@kernel.org, jonas@kwiboo.se, frattaroli.nicolas@gmail.com,
	andrew@lunn.ch
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add luckfox prefix
Message-ID: <20250506-snitch-entitle-25cbf145619a@spud>
References: <20250506114115.613616-1-inindev@gmail.com>
 <20250506114115.613616-2-inindev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TLZaWWfPrZXx6LHI"
Content-Disposition: inline
In-Reply-To: <20250506114115.613616-2-inindev@gmail.com>


--TLZaWWfPrZXx6LHI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 06, 2025 at 07:41:13AM -0400, John Clark wrote:
> Add vendor prefix for Shenzhen Luckfox Technology Co., Ltd., which
> produces development boards like the Luckfox Omni3576.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--TLZaWWfPrZXx6LHI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaBoukwAKCRB4tDGHoIJi
0q/SAQDnCCu02bLPOAnaomZrDXAhPsG2xZdCE7XnKQqYMekDNwD/eG2b6EcefmUL
uThxnlzlq0vIpzbu+DWhSuzwcbJEtQU=
=lucH
-----END PGP SIGNATURE-----

--TLZaWWfPrZXx6LHI--

