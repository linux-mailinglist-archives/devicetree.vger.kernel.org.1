Return-Path: <devicetree+bounces-9617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FF97CD9BD
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 12:54:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1D591F23808
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 10:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 994BD19440;
	Wed, 18 Oct 2023 10:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptB7eWte"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0DB11717
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:54:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CAC0C433C7;
	Wed, 18 Oct 2023 10:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697626441;
	bh=kPo92beMbcDHObVUx/Dna9HOyefjTTwxCVHbGGY3vZs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ptB7eWteOf6TVqYaaMwzLtLXauLOuacgxglnupzHEC+KmzweMmY6GMsfOnmSFjSW+
	 pL/7Sng2CGb5BO4ZQ+eo0gXDs+7z/m9QsfRaW+NGsD2Ia3CTrSkHZm8Z6HkUOHF1Uc
	 HOIyDtYHXTbdDdIwXnTSk6xDkaM9+Ep20MRBlFC2meF3vcFc6TYrRUt7th5pDQIsnv
	 5Kl9N3fYR2f1EHoZ6caIbREGO0A7LsjU/3b7qUVu+yu+DIOVdIQHD040uabfT6Clsr
	 QA8iSPYVLWqYVM9MUqOLKVMYH1H/DW9NWFW5S6pZuvJkf8GgAzp7oX7oGXebIzYB2U
	 cRq9UFxkEIeMw==
Date: Wed, 18 Oct 2023 11:53:55 +0100
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
Subject: Re: [PATCH v8 13/22] PCI: microchip: Add request_event_irq()
 callback function
Message-ID: <20231018-retainer-unclip-074b81a76767@spud>
References: <20231011110514.107528-1-minda.chen@starfivetech.com>
 <20231011110514.107528-14-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RkOo+3SMiOK1PVg2"
Content-Disposition: inline
In-Reply-To: <20231011110514.107528-14-minda.chen@starfivetech.com>


--RkOo+3SMiOK1PVg2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 11, 2023 at 07:05:05PM +0800, Minda Chen wrote:
> PolarFire implements specific interrupts besides PLDA local
> interrupt and register their interrupt symbol name.

> (Total 28
> interrupts while PLDA contain 13 local interrupts). and
> interrupt to event mapping is different.

Nit: drop the ()s & the first .

Daire would have to speak to why this is the case, but these commit
message appears to better explain why the patch is needed.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

> So add a callback function to support different IRQ register
> function.
>=20
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> ---
>  .../pci/controller/plda/pcie-microchip-host.c | 25 ++++++++++++++++---
>  drivers/pci/controller/plda/pcie-plda.h       |  5 ++++
>  2 files changed, 26 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/pci/controller/plda/pcie-microchip-host.c b/drivers/=
pci/controller/plda/pcie-microchip-host.c
> index 1799455989ac..104332603e25 100644
> --- a/drivers/pci/controller/plda/pcie-microchip-host.c
> +++ b/drivers/pci/controller/plda/pcie-microchip-host.c
> @@ -799,6 +799,17 @@ static int mc_pcie_init_clks(struct device *dev)
>  	return 0;
>  }
> =20
> +static int mc_request_event_irq(struct plda_pcie_rp *plda, int event_irq,
> +				int event)
> +{
> +	return devm_request_irq(plda->dev, event_irq, mc_event_handler,
> +				0, event_cause[event].sym, plda);
> +}
> +
> +static const struct plda_event mc_event =3D {
> +	.request_event_irq      =3D mc_request_event_irq,

nit: these spaces for alignment look pointless when there's just one
element.

Cheers,
Conor.

> +};
> +
>  static int plda_pcie_init_irq_domains(struct plda_pcie_rp *port)
>  {
>  	struct device *dev =3D port->dev;
> @@ -898,7 +909,9 @@ static void mc_disable_interrupts(struct mc_pcie *por=
t)
>  	writel_relaxed(GENMASK(31, 0), bridge_base_addr + ISTATUS_HOST);
>  }
> =20
> -static int plda_init_interrupts(struct platform_device *pdev, struct pld=
a_pcie_rp *port)
> +static int plda_init_interrupts(struct platform_device *pdev,
> +				struct plda_pcie_rp *port,
> +				const struct plda_event *event)
>  {
>  	struct device *dev =3D &pdev->dev;
>  	int irq;
> @@ -922,8 +935,12 @@ static int plda_init_interrupts(struct platform_devi=
ce *pdev, struct plda_pcie_r
>  			return -ENXIO;
>  		}
> =20
> -		ret =3D devm_request_irq(dev, event_irq, mc_event_handler,
> -				       0, event_cause[i].sym, port);
> +		if (event->request_event_irq)
> +			ret =3D event->request_event_irq(port, event_irq, i);
> +		else
> +			ret =3D devm_request_irq(dev, event_irq, plda_event_handler,
> +					       0, NULL, port);
> +
>  		if (ret) {
>  			dev_err(dev, "failed to request IRQ %d\n", event_irq);
>  			return ret;
> @@ -977,7 +994,7 @@ static int mc_platform_init(struct pci_config_window =
*cfg)
>  		return ret;
> =20
>  	/* Address translation is up; safe to enable interrupts */
> -	ret =3D plda_init_interrupts(pdev, &port->plda);
> +	ret =3D plda_init_interrupts(pdev, &port->plda, &mc_event);
>  	if (ret)
>  		return ret;
> =20
> diff --git a/drivers/pci/controller/plda/pcie-plda.h b/drivers/pci/contro=
ller/plda/pcie-plda.h
> index b439160448b1..907ad40f3188 100644
> --- a/drivers/pci/controller/plda/pcie-plda.h
> +++ b/drivers/pci/controller/plda/pcie-plda.h
> @@ -121,6 +121,11 @@ struct plda_pcie_rp {
>  	int num_events;
>  };
> =20
> +struct plda_event {
> +	int (*request_event_irq)(struct plda_pcie_rp *pcie,
> +				 int event_irq, int event);
> +};
> +
>  irqreturn_t plda_event_handler(int irq, void *dev_id);
>  void plda_pcie_setup_window(void __iomem *bridge_base_addr, u32 index,
>  			    phys_addr_t axi_addr, phys_addr_t pci_addr,
> --=20
> 2.17.1
>=20

--RkOo+3SMiOK1PVg2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS+5QgAKCRB4tDGHoIJi
0o/zAQCSuM8uqzd0VAzZZCthQE4n12TT0kuF0sYDMlv9Uer9XgD/SE5oGnnsSm82
Knu+CSUhdikuXNgt+Z0Co3f7k3Cenw4=
=X4oS
-----END PGP SIGNATURE-----

--RkOo+3SMiOK1PVg2--

