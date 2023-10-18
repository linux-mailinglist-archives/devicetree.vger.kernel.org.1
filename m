Return-Path: <devicetree+bounces-9615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D33A47CD980
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 12:44:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85991281B69
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 10:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61AE818655;
	Wed, 18 Oct 2023 10:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWBRyB5n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46724182CE
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:44:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1339AC433C7;
	Wed, 18 Oct 2023 10:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697625882;
	bh=MrTK79/mTtkPsdNqTof1n8hGRWKIcGd5IaaQwpyhY5s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dWBRyB5nEJdsH7WRVACs3XHgN9tZXlpQ8iX/b+M6P6h2ESY0ZGPxue7d/e2Je5JDt
	 JdCnlZ9HZff6l0DiIBuNrG2Tmy+0yvReDwAMNabr7PfJjSDK+pJ0BkuIjRrWisuCqr
	 W930v4P8Km6uCROL3j0kCMk7Uj1+4UmLJM30B88B1NtYdtjbKYra5wZVSyWOLaP2U3
	 ygo9crimkgnhxmDLA0BWU6qJ+ZVD3A4JZCwkUYLT4lke0zY63y/+JMYzw2+jboCK/Z
	 msFBM6wMzDb0veQxnjyhWvNgq6krJG319WKX7+G7+EqQqb6pM00hWpuDSHapoggcgf
	 ktoGKsMSRQicA==
Date: Wed, 18 Oct 2023 11:44:36 +0100
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
Subject: Re: [PATCH v8 10/22] PCI: plda: Add PLDA default event IRQ handler
Message-ID: <20231018-escapable-chef-16572cda2c12@spud>
References: <20231011110514.107528-1-minda.chen@starfivetech.com>
 <20231011110514.107528-11-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gY7CaywkTFmQBGav"
Content-Disposition: inline
In-Reply-To: <20231011110514.107528-11-minda.chen@starfivetech.com>


--gY7CaywkTFmQBGav
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 11, 2023 at 07:05:02PM +0800, Minda Chen wrote:
> Add PLDA default event IRQ handler.
> This is first patch of refactoring IRQ handling codes.
> The handler function will be referenced by later patch.
>=20
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> ---
>  drivers/pci/controller/plda/pcie-plda-host.c | 5 +++++
>  drivers/pci/controller/plda/pcie-plda.h      | 1 +

Dunno what hte PCI maintainers take is on this kind of thing, but this
patch adds dead code, as there is no user for it until the follow-on
patch you mention. Did someone ask you to split this out?

Cheers,
Conor.

>  2 files changed, 6 insertions(+)
>=20
> diff --git a/drivers/pci/controller/plda/pcie-plda-host.c b/drivers/pci/c=
ontroller/plda/pcie-plda-host.c
> index 19131181897f..21ca6b460f5e 100644
> --- a/drivers/pci/controller/plda/pcie-plda-host.c
> +++ b/drivers/pci/controller/plda/pcie-plda-host.c
> @@ -18,6 +18,11 @@
> =20
>  #include "pcie-plda.h"
> =20
> +irqreturn_t plda_event_handler(int irq, void *dev_id)
> +{
> +	return IRQ_HANDLED;
> +}
> +
>  void plda_pcie_setup_window(void __iomem *bridge_base_addr, u32 index,
>  			    phys_addr_t axi_addr, phys_addr_t pci_addr,
>  			    size_t size)
> diff --git a/drivers/pci/controller/plda/pcie-plda.h b/drivers/pci/contro=
ller/plda/pcie-plda.h
> index 3deefd35fa5a..7ff7ff44c980 100644
> --- a/drivers/pci/controller/plda/pcie-plda.h
> +++ b/drivers/pci/controller/plda/pcie-plda.h
> @@ -120,6 +120,7 @@ struct plda_pcie_rp {
>  	void __iomem *bridge_addr;
>  };
> =20
> +irqreturn_t plda_event_handler(int irq, void *dev_id);
>  void plda_pcie_setup_window(void __iomem *bridge_base_addr, u32 index,
>  			    phys_addr_t axi_addr, phys_addr_t pci_addr,
>  			    size_t size);
> --=20
> 2.17.1
>=20

--gY7CaywkTFmQBGav
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS+3FAAKCRB4tDGHoIJi
0vb7AP9nFUDtvAzaFKpMFC/m7TmzmFieDmyGWwa1MjYRXStwdQD/RP4kJVrFslIu
MHfRBfYYHJfQSw1mv58WlZvXxSZw6A8=
=+g7C
-----END PGP SIGNATURE-----

--gY7CaywkTFmQBGav--

