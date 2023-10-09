Return-Path: <devicetree+bounces-6960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA29F7BE11B
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 15:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB1A51C2084A
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 13:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 304A7341B7;
	Mon,  9 Oct 2023 13:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="CZzsiW7r"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D39341A5
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:47:07 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CC60DE;
	Mon,  9 Oct 2023 06:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1696859220; x=1728395220;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=SlvDLYB0oglmklYG+xENDJiKBJ2G7iU9PK0HzxKFLAw=;
  b=CZzsiW7rgBCMq9saiq9m6SCD0Ens1qfBSk1wlS308pWrk4dJbufNJSP2
   pjvZ76qjC3T5hU11n0fe/KYxNokoaDf6jto2vC6v1O3VcZkAVCa+nHpEf
   bR82+IjRd7nqmpF54C0n0PijpCKEDNV+dvLWzMpThQFi60haHmegwYf98
   u0XATcUC01pqCIL31nZ+CwO4LO49s/cUxWKZv2Pv16Tra531fDfkvAAfT
   NDQU3gpgzKmY2Lsb6f79ERCGYMFgq0+XjmhRqOtdnd8VkOT0SD5r6n2Q+
   NDsY9hkyHypBbx2fS4dZUnYDTFxlsnoxFuKVp/PYJQSfcsPD+DrnXmyRl
   A==;
X-CSE-ConnectionGUID: 8CTYty34Syqm9xqn5/aKfw==
X-CSE-MsgGUID: IysqB0iZTpy7oqmZ6t34yA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; 
   d="asc'?scan'208";a="9487183"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Oct 2023 06:46:59 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 9 Oct 2023 06:46:59 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex03.mchp-main.com (10.10.85.151)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Mon, 9 Oct 2023 06:46:55 -0700
Date: Mon, 9 Oct 2023 14:46:35 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Minda Chen <minda.chen@starfivetech.com>
CC: Daire McNamara <daire.mcnamara@microchip.com>, Conor Dooley
	<conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof
 =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-pci@vger.kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
	"Palmer Dabbelt" <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	"Philipp Zabel" <p.zabel@pengutronix.de>, Mason Huo
	<mason.huo@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>
Subject: Re: [PATCH v7 12/19] PCI: microchip: Add INTx and MSI event num to
 struct plda_event
Message-ID: <20231009-remix-commodore-b034a3b71861@wendy>
References: <20230927100802.46620-1-minda.chen@starfivetech.com>
 <20230927100802.46620-13-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wD+DKiC4dNhhAd6L"
Content-Disposition: inline
In-Reply-To: <20230927100802.46620-13-minda.chen@starfivetech.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

--wD+DKiC4dNhhAd6L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Wed, Sep 27, 2023 at 06:07:55PM +0800, Minda Chen wrote:
> The INTx and MSI interrupt event num is different
> in Microchip and StarFive platform.

BTW, please use the full 72 columns, not just 50, for your commit
messages.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.


>=20
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> ---
>  drivers/pci/controller/plda/pcie-microchip-host.c | 6 ++++--
>  drivers/pci/controller/plda/pcie-plda.h           | 2 ++
>  2 files changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/pci/controller/plda/pcie-microchip-host.c b/drivers/=
pci/controller/plda/pcie-microchip-host.c
> index e3c7d5e66150..fb09b6c34e01 100644
> --- a/drivers/pci/controller/plda/pcie-microchip-host.c
> +++ b/drivers/pci/controller/plda/pcie-microchip-host.c
> @@ -807,6 +807,8 @@ static int mc_request_event_irq(struct plda_pcie_rp *=
plda, int event_irq,
> =20
>  static const struct plda_event mc_event =3D {
>  	.request_event_irq      =3D mc_request_event_irq,
> +	.intx_event             =3D EVENT_LOCAL_PM_MSI_INT_INTX,
> +	.msi_event              =3D EVENT_LOCAL_PM_MSI_INT_MSI,
>  };
> =20
>  static int plda_pcie_init_irq_domains(struct plda_pcie_rp *port)
> @@ -947,7 +949,7 @@ static int plda_init_interrupts(struct platform_devic=
e *pdev,
>  	}
> =20
>  	intx_irq =3D irq_create_mapping(port->event_domain,
> -				      EVENT_LOCAL_PM_MSI_INT_INTX);
> +				      event->intx_event);
>  	if (!intx_irq) {
>  		dev_err(dev, "failed to map INTx interrupt\n");
>  		return -ENXIO;
> @@ -957,7 +959,7 @@ static int plda_init_interrupts(struct platform_devic=
e *pdev,
>  	irq_set_chained_handler_and_data(intx_irq, plda_handle_intx, port);
> =20
>  	msi_irq =3D irq_create_mapping(port->event_domain,
> -				     EVENT_LOCAL_PM_MSI_INT_MSI);
> +				     event->msi_event);
>  	if (!msi_irq)
>  		return -ENXIO;
> =20
> diff --git a/drivers/pci/controller/plda/pcie-plda.h b/drivers/pci/contro=
ller/plda/pcie-plda.h
> index 4e0712c9365e..af5e69718342 100644
> --- a/drivers/pci/controller/plda/pcie-plda.h
> +++ b/drivers/pci/controller/plda/pcie-plda.h
> @@ -156,6 +156,8 @@ struct plda_pcie_rp {
>  struct plda_event {
>  	int (*request_event_irq)(struct plda_pcie_rp *pcie,
>  				 int event_irq, int event);
> +	int intx_event;
> +	int msi_event;
>  };
> =20
>  irqreturn_t plda_event_handler(int irq, void *dev_id);
> --=20
> 2.17.1
>=20

--wD+DKiC4dNhhAd6L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSQEOwAKCRB4tDGHoIJi
0vf7AP0f+KHqn88qjg0XQA9OArkRPsMZ5RNRAOJQ8uJiiVp75wEArXl7IgtlC7l9
Voc6hFgZ+1ST01jjkJ5eKHnkn3g4rgw=
=13zv
-----END PGP SIGNATURE-----

--wD+DKiC4dNhhAd6L--

