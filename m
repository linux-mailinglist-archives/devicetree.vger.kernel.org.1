Return-Path: <devicetree+bounces-27227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6634E819B1F
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 10:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 295C3282999
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 09:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 959E51D6BA;
	Wed, 20 Dec 2023 09:09:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bmailout3.hostsharing.net (bmailout3.hostsharing.net [176.9.242.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011431D6B1;
	Wed, 20 Dec 2023 09:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wunner.de
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=h08.hostsharing.net
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
	 client-signature RSA-PSS (4096 bits) client-digest SHA256)
	(Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
	by bmailout3.hostsharing.net (Postfix) with ESMTPS id 2FFDF10029C09;
	Wed, 20 Dec 2023 10:09:11 +0100 (CET)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
	id F3DB527C92; Wed, 20 Dec 2023 10:09:10 +0100 (CET)
Date: Wed, 20 Dec 2023 10:09:10 +0100
From: Lukas Wunner <lukas@wunner.de>
To: SZ Lin <sz.lin@moxa.com>
Cc: Wes Huang <wes.huang@moxa.com>, Fero JD Zhou <FeroJD.Zhou@moxa.com>,
	=?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] ARM: dts: am335x: add common file for UC-2100
 series
Message-ID: <20231220090910.GA32182@wunner.de>
References: <20180928104718.30661-1-sz.lin@moxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180928104718.30661-1-sz.lin@moxa.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Sep 28, 2018 at 06:47:16PM +0800, SZ Lin wrote:
> The UC-2100 series consists many boards with different peripheral
> devices and wireless modules, hence we fetch common items and
> create a common dtsi file to increase reusability. All boards in
> UC-2100 series will include this common dtsi file.
[...]
> --- /dev/null
> +++ b/arch/arm/boot/dts/am335x-moxa-uc-2100-common.dtsi
[...]
> +	tpm_spi_tis@0 {
> +		compatible = "tcg,tpm_tis-spi";

What's the chip used on this board?  Going forward, the DT schema for TPMs
requires the exact chip name in addition to the generic "tcg,tpm_tis-spi".


> +		reg = <0>;
> +		spi-max-frequency = <500000>;
> +	};

