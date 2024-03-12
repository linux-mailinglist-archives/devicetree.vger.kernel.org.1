Return-Path: <devicetree+bounces-50058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D12487955C
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 14:51:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 439A2B21BF9
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 13:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 072C87A154;
	Tue, 12 Mar 2024 13:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swEn7tOm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D08A939
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 13:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710251474; cv=none; b=Ag4NSSBVzBhOHW3zo5mdMrmYEuyhclFfttLcAifHvX33z3JKTGWsPAUC9CYApP2HH1YV0oXXHPLxlQRGMtskWNEubFKEUn1PkCcjOUx0tjYwANoOVGcfOutdv+gDOH6LV5AAtVdZlRKAnkDMx7wH3+ILIT0YXffZu74tmy5uW54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710251474; c=relaxed/simple;
	bh=nCk4hwkuKSvmkkr+UyO6YecifpNDJMsAfJtK0zzujtg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HSQwxYMbxdDpuP/V+Dkg88Ik53aAab7pR8Yp1g27SFTpHWehgstrk0ni4byBfbrRyT2TnjDMkTvhbQdlcTRxDWPzWdtUzWQZBgqo7EAFGyAINJ4F+QYC7sXpTUR4vkKABIXFRvDtljqoQ6fGrpMT/fURd74kLtGBhbGXirvYQBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swEn7tOm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DCC4C433C7;
	Tue, 12 Mar 2024 13:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710251474;
	bh=nCk4hwkuKSvmkkr+UyO6YecifpNDJMsAfJtK0zzujtg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=swEn7tOmBPpmF64PHwcL0OfOdhJGZt9mYtTw6QI3UiouWiPV0BGMNjBZrQoRtBI1k
	 vMGQAJbh1SE7CV4RJhbSgv95GDXYp4ApkmEBpEY71txJzf4gu4DE5rJrDYtiMHWYnx
	 meWa4H14DfadqxHA3TATcp1l4iDuIJDI7eO0ozFix/u4oeXnY+Zo3kYrsbvPv9lb7a
	 fWN7Fba6Sm0gzsImIFPB2K2uZk1iD3zRK1n8+ZN04++qQcVUGGDYMsgA9BDvdhaAGf
	 S5DCruC5Z9VPhnWNZx7/Ma9Fi+X0vDI/Yp/1XmU89FBbITveUJrmyY76H5H/zdLQll
	 IDvmwcaPGg+Aw==
Date: Tue, 12 Mar 2024 13:51:08 +0000
From: Mark Brown <broonie@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/5] ASoC: makes CPU/Codec channel connection map more
 generic
Message-ID: <7248b107-db87-4409-b93c-f65035d0a6b4@sirena.org.uk>
References: <87v8a64f3d.wl-kuninori.morimoto.gx@renesas.com>
 <87ttpq4f2c.wl-kuninori.morimoto.gx@renesas.com>
 <e7121fbc-c814-4153-9f17-82ad5de13e64@sirena.org.uk>
 <87a5n46xjk.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cJditwpOuVhAT9vy"
Content-Disposition: inline
In-Reply-To: <87a5n46xjk.wl-kuninori.morimoto.gx@renesas.com>
X-Cookie: Oh, so there you are!


--cJditwpOuVhAT9vy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 12, 2024 at 01:36:47AM +0000, Kuninori Morimoto wrote:

> Hmm...
> does it have un-cleared "dai_link->ch_maps" ?

> Thank you for your help !!

I can't immediately see where ch_maps would get set for this board (it
looks like Intel is the only user?) but I might be missing something.  I
don't have the board myself so can't run anything directly - Jerome?

--cJditwpOuVhAT9vy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXwXcwACgkQJNaLcl1U
h9BEZQf+OuBgJM2bQLxAKvUeIaP2XA8/r1lKYG9cExXf+F8+q6KRA5ZWImi6C4xF
+WTzFLMqpvmL3167yYCjarp7NTgYkQmD/IL3BavVy1eTIe/RroPTa0kp2y4gHZRn
EvoBXUGZwJmd/mZEECohLFIWHNsHlYSWteohlvC1Mdvst0DsLQPoMigvFE/6KAfW
hINtK43MS+b2KqYlTPVQru334TUAFDwXcLEtVzSuVcOT0bStwLQHp4BBC1EPp5o6
caiITE+AnFa7oWLgUbZOsJbuHu/pntXtq3uKBvv4zDYoUj/KmwD5Eep5E3xTT0ts
lqOBZdZ0XKRXdthD7u8Tsmh58PcbUg==
=oE5x
-----END PGP SIGNATURE-----

--cJditwpOuVhAT9vy--

