Return-Path: <devicetree+bounces-147166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9DDA37658
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 18:39:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4D1018845E7
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 17:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C20E919DF64;
	Sun, 16 Feb 2025 17:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="QbeaP9ao"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8C519D89B
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 17:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739727565; cv=none; b=cNnUWrNdNyDXGkmXivcRd05BNCWtwaA9brVMt2kJEYVP+2793+hHnSa390KwkukjhKEAxCk1JEcG1gIZSytJ0OYXXPthZEMl2PrFuPx9CO9kU1JKzuzqDt0GZHP8qJP7rwteEIBW5nJJ0XSmj0Hx1CC+jipMefcbkW6NPGswrBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739727565; c=relaxed/simple;
	bh=9Ya3nZNb9MMk0kVeCzyrPJWutNb/VgKd2miIFEuE9e4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hSqlzZnBikmBung/jSZylm6VP+ptMnirNgziVohvB6uukmRFIcHY5zXPIgrgBqNjDwBjLffmbFy/uxxwl6w9a+jiMPDvurrdIHj8CWkOWpYjFHFwzv+XFM8B9IcxHtfPZHf7Hv9Gd4Uzvsx8PL4bsU9+HxzQ5ezMfe7FV3p8lmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=QbeaP9ao; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id D3D17240103
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 18:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1739727561; bh=9Ya3nZNb9MMk0kVeCzyrPJWutNb/VgKd2miIFEuE9e4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=QbeaP9ao1bB1NVgyLrJfbzjnAXvwnBUNlC2ns/k63M8htbjeEh9Z+K6Se0mO+3ddl
	 20PL3Z2fKtSJYU5TN5jJG7SSnLUKx5IPuLHQ+hyhyceEyNwv9DjeY0JFDQV2fM+Vus
	 2hlhWAF0yoGbGEFgQpN5O14X+FWfw9tlT3EQWG0uwSS+W+RBxNzdaBNxz5JlpSknuR
	 Ue3rFR3FLbLHfURwddVt8tu8smPPYlrLzShw6FpU6/XRnLvtiEoQLZSbRCD9pHUSu0
	 wrtiqhpKTU5/SgH1x7OkvMln5Kd6BQSyrYnksEe+Vocm2cGd5W8PRcMScxAMqgAvuR
	 xuSIWsbMFWRng==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4YwtM83X13z6txn;
	Sun, 16 Feb 2025 18:39:16 +0100 (CET)
Date: Sun, 16 Feb 2025 17:39:16 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Rob Herring <robh@kernel.org>
Cc: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
	devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	Krzysztof Kozlowski <krzk@kernel.org>, imx@lists.linux.dev,
	Scott Wood <oss@buserror.net>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Naveen N Rao <naveen@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>, Lee Jones <lee@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	=?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>, Mark Brown <broonie@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-crypto@vger.kernel.org,
	dmaengine@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-watchdog@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2 11/12] dt-bindings: nand: Add fsl,elbc-fcm-nand
Message-ID: <Z7IixGUskrWxxZIZ@probook>
References: <20250207-ppcyaml-v2-0-8137b0c42526@posteo.net>
 <20250207-ppcyaml-v2-11-8137b0c42526@posteo.net>
 <20250211000157.GA240011-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211000157.GA240011-robh@kernel.org>

On Mon, Feb 10, 2025 at 06:01:57PM -0600, Rob Herring wrote:
> On Fri, Feb 07, 2025 at 10:30:28PM +0100, J. Neuschäfer wrote:
> > Formalize the binding already supported by the fsl_elbc_nand.c driver
> > and used in several device trees in arch/powerpc/boot/dts/.
> > 
> > Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> > ---
> > 
> > V2:
> > - split out from fsl,elbc binding patch
> > - constrain #address-cells and #size-cells
> > - add a general description
> > - use unevaluatedProperties=false instead of additionalProperties=false
> > - fix property order to comply with dts coding style
> > - include raw-nand-chip.yaml instead of nand-chip.yaml
> 
> Why? Doesn't look like you use anything from it. I think the correct 
> thing to use here is just mtd.yaml to pick up partitions.

There is one example of properties from nand-chip.yaml being used
on an fsl,elbc-fcm-nand node: arch/powerpc/boot/dts/turris1x.dts
uses nand-ecc-mode and nand-ecc-algo.


Thanks,
J. Neuschäfer

