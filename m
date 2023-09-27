Return-Path: <devicetree+bounces-3923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 364C17B082F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:27:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id AF47EB20992
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:27:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7852450C3;
	Wed, 27 Sep 2023 15:27:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9767D6FA2
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:27:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2991CC433C8;
	Wed, 27 Sep 2023 15:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695828435;
	bh=aw0/9cgQsDBVjjrJdDVGrqkQ0FgYmL9yWqvaxanLjY0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Yp2KYFnf4VWnAK/lJysjzMKIFpbq+du6gQLBicsR+070pWL2pSKTmaAMM/Yk5TJLE
	 Tl5WvzYaMBYJ5ZgyzmJFa2wQyH7MXjToZ4cexLLrsP9e3lyUvOIWDfEp1AhZYBGZuu
	 vfy49iaR/HIsyBM2Nfezqn90Bm9DYGJhiAnmEigrDWSCc49yWjauA9xA3zOXO2o1CQ
	 8A5o3GqoGZDhHpXxEQtGayajJo3egrXAG1Rs2XWyU0Z6rmdJOoVqXNHBivMGpg+yRf
	 5SWe47QVd+0OvrIIDKVBU9DYM0fhm5kPqxn7kP1w3a8+w4Ew2UdNh3VvMcxd0m8mF8
	 vQyZPflYJ0x4w==
Date: Wed, 27 Sep 2023 16:27:09 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <ray.jui@broadcom.com>,
	Scott Branden <scott.branden@broadcom.com>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: PCI: brcm,iproc-pcie: Fix example
 indentation
Message-ID: <20230927-overspend-that-c5f8e7b9eac7@spud>
References: <20230926155351.31117-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GSZxDkacQH77W/rI"
Content-Disposition: inline
In-Reply-To: <20230926155351.31117-1-robh@kernel.org>


--GSZxDkacQH77W/rI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 26, 2023 at 10:53:40AM -0500, Rob Herring wrote:
> The example's indentation is off. While fixing this, the 'bus' node
> is unnecessary and can be dropped. It is also preferred to split up
> unrelated examples to their own entries.

Damn, it really was all over the shop..

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--GSZxDkacQH77W/rI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRJzQAKCRB4tDGHoIJi
0qrpAQCAWVNdifbs6d9PzfN2w0yFtF1Mwu3kcAeK1uBd8DruPwEAuwbhxNAGfQKR
QACYiLmwo+89BCxaqwXBtMDqQj9lkQQ=
=kNLS
-----END PGP SIGNATURE-----

--GSZxDkacQH77W/rI--

