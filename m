Return-Path: <devicetree+bounces-9613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B1E7CD96D
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 12:40:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71B12B20FD7
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 10:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AFCA171AE;
	Wed, 18 Oct 2023 10:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/C5LuA/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9FD11C8C
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:40:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CD70C433C7;
	Wed, 18 Oct 2023 10:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697625640;
	bh=6l2WAUtlA/ULfa6NCxDUETqJdzJBr+uJX9Jc00RLa6k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M/C5LuA/3W86f45UzFmRsSluYAyI+NSFtCRiONkE73zYopAHjvTcxWK67TNxMxVq3
	 au1QLL4hxTbPD9lARsdyXNcs4uN0xRqYXK2ykPlRFpPtffcxvBljAJE9XZj7JrqNyz
	 In+MytDdk+07dsr61GI0PyIlcK1rihDofRTlA3Gc4Q0xfYm4K7eidg/E1Ko62tRvfg
	 En9zIAweZyweybmuTdSSKgeiKmwcIGKp+5rSSuVQzG9cxQt413w1xY04lJfwnbbI7Y
	 k7D7lZ4mY2gfFpRRFGxZc4WlfDhO+LXic3sQzeMJW7j3nt2BvcCZnng2AbBlkP0bM4
	 HDVGmh1ZoB+ow==
Date: Wed, 18 Oct 2023 11:40:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Minda Chen <minda.chen@starfivetech.com>
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-pci@vger.kernel.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mason Huo <mason.huo@starfivetech.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>
Subject: Re: [PATCH v8 05/22] PCI: microchip: Rename two PCIe data structures
Message-ID: <20231018-secret-tightrope-818ef4ffd2b7@spud>
References: <20231011110514.107528-1-minda.chen@starfivetech.com>
 <20231011110514.107528-6-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hDtbUqOVfdHu31+w"
Content-Disposition: inline
In-Reply-To: <20231011110514.107528-6-minda.chen@starfivetech.com>


--hDtbUqOVfdHu31+w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--hDtbUqOVfdHu31+w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS+2IgAKCRB4tDGHoIJi
0mowAQDAMLOnsRviLr4bHPlvbZB4oFttuKiB+rGTUeGDfrjp3gD/X/YaDWfTmR6B
zMS6AwCbC9ZxUmq46s34IQx6IlfBng4=
=mxSE
-----END PGP SIGNATURE-----

--hDtbUqOVfdHu31+w--

