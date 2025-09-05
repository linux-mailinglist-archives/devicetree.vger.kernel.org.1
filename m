Return-Path: <devicetree+bounces-213647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C190B4624B
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 20:32:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2AD81CC7F63
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 18:32:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD399305976;
	Fri,  5 Sep 2025 18:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUtojZFf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95091305947;
	Fri,  5 Sep 2025 18:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757097151; cv=none; b=R5OKbsq4LEN+uaoo/gvkoil+4++KK21DlX9UVXCLjPIrrubHKYjJ70Dp+SG6n6jOTDmj4igMKOYXNGKlctaX3/BAwMwBOaXFYWoPx+EWzYfJpOxE24Nb70JpsA2NUDy5LPAbrEVQi5iVX9fMPuoFulUDAk/PmQKNxmuJbD/tc8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757097151; c=relaxed/simple;
	bh=e4JMOWDCtaWn4IWv+Qg9bqYdXONUBAHh8WRaRowDs6s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aVrhkspzz9okWob7pvS8QcTc5pwEDLp5NjjDuzQn+qbAJz0T1i4bXvDE7ijuuPsnZP/dOlHsRGnwI2kq6vY8z9NtMw2MIc7iY2KXwcxQk30UM4nlrSug10fvnb08sQ9YHbwfkcg4kAxuEJvbn7ZtiKx2uIO3cyO3CJprHD9TJ2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUtojZFf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE429C4CEF1;
	Fri,  5 Sep 2025 18:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757097151;
	bh=e4JMOWDCtaWn4IWv+Qg9bqYdXONUBAHh8WRaRowDs6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BUtojZFfxPu8z3gD7wiOB66CARaIwLsYkUy3gjCrgMpyZVgcxewDZMKVj8e5UAa2X
	 +HhOGkTGVs+WUqWWIy5ULM0j6/BhVLUL3s5fW81Un9h8AtnqrEXIErhW22zGgyr38u
	 hGh8n9vAx5trCCECvpeVi6q0fjY+5B2CgtMN4uqTRSyJQ6WKlF9pT9OzsYsEFOhaSl
	 QK2wr33IGQdg6hL+6sHohs7jdiqCr+uC3SBEUzC2Imwyx8DCLDGSHfRReIw7CprZr1
	 24bR6LWwOJySdfP8rEueEz+q9REj18vjNRqqkuexNB1CIgt3JwVZBUIpvdSzigOuYs
	 m8E6l6C4TcyKQ==
Date: Fri, 5 Sep 2025 19:32:25 +0100
From: Conor Dooley <conor@kernel.org>
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Jianxin Pan <jianxin.pan@amlogic.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	"hongyu.chen1" <hongyu.chen1@amlogic.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: power: keep alphabetical order
Message-ID: <20250905-stew-removed-db191517cdf5@spud>
References: <20250905-pm-fix-order-v1-1-3596e03d66e6@amlogic.com>
 <20250905-vexingly-crudely-36f9e510e9c5@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ArYkgdtypeXZuzdN"
Content-Disposition: inline
In-Reply-To: <20250905-vexingly-crudely-36f9e510e9c5@spud>


--ArYkgdtypeXZuzdN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 05, 2025 at 07:31:33PM +0100, Conor Dooley wrote:
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Actually no. Ack is dependant on $subject being scoped to the individual
amlogic binding. Perhaps the subsystem maintainer can do it on
application



--ArYkgdtypeXZuzdN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaLssuQAKCRB4tDGHoIJi
0pLHAPsGHxXqiKWNNentQqgjeU+9z7eQFW2LYOQzgEYNCmyDuQEA8yzY+9TrObfw
cZ4RAaTfqlgFAYVSR2jknvD3eFTKJwY=
=To+s
-----END PGP SIGNATURE-----

--ArYkgdtypeXZuzdN--

