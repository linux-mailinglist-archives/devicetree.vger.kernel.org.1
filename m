Return-Path: <devicetree+bounces-238569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4C7C5C7D6
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9813F4FC066
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 750FB3081D2;
	Fri, 14 Nov 2025 09:46:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041893081D3
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763113577; cv=none; b=eWJEt6jqVw5BMRs7FctZ68y6LkTTw7Fg7cDKgQ4Are9/TD7sJOS/0tNStm39T+tH/zCQR9YeAhqarrse7UpeU1d30LxXjCowx/APxqzGZDgdbB1MEz2RyME27Pc7aj3kvhKcvna9OQlFNuHm9rCpyifmmtAtojTpbjEgsVyModo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763113577; c=relaxed/simple;
	bh=jkwEalFk1ykaBVfLvuMDkX2l/SWvGRFKLBGSJDYhBuk=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OW5kMfcR96CBjuzP+dYMYsA65w1T8wwkHji8VtNv4sS6z9fI/i0KgafAnNIH99QxLQbbgmk3yztpzFVv0XV6TibWXepHA8a+vRR53zIxlElpMss+0QEBaYiNBmUYOD2aSPYLm11DIUZ9tJi/H3/DCe4hofB0fJu4p/GWjh5qLDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 5AE9k0jS029023
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 14 Nov 2025 17:46:00 +0800 (+08)
	(envelope-from cl634@andestech.com)
Received: from swlinux02 (10.0.15.183) by ATCPCS31.andestech.com (10.0.1.89)
 with Microsoft SMTP Server id 14.3.498.0; Fri, 14 Nov 2025 17:46:00 +0800
Date: Fri, 14 Nov 2025 17:46:00 +0800
From: CL Wang <cl634@andestech.com>
To: Conor Dooley <conor@kernel.org>
CC: <broonie@kernel.org>, <linux-spi@vger.kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: spi: Add support for ATCSPI200 SPI
 controller
Message-ID: <aRb6WDSAbfre28eT@swlinux02>
References: <20251112034724.1977630-1-cl634@andestech.com>
 <20251112034724.1977630-2-cl634@andestech.com>
 <20251112-reoccur-quill-2144810ce062@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251112-reoccur-quill-2144810ce062@spud>
User-Agent: Mutt/2.2.12 (2023-09-09)
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 5AE9k0jS029023

Hi Conor,

Thanks for your suggestions. Please see my responses below.

> > +title: Andes ATCSPI200 SPI controller
> 
> Is this a spi controller or a qspi controller?
This controller is a standard SPI controller that supports single/dual/quad
modes.

> > +  dma-names:
> > +    items:
> > +      - const: spi_tx
> > +      - const: spi_rx
> 
> Drop the "spi_", since it's obvious that it belongs to this controller.
As you suggested, the spi_ prefix will be removed, since it is clear that
these channels belong to this controller. In the next version, the DMA
channel names will follow common conventions used by other SPI controllers:
dma-names = "tx", "rx";

> > +ANDES ATCSPI200 SPI DRIVER
> > +M:	CL Wang <cl634@andestech.com>
> > +S:	Supported
> > +F:	Documentation/devicetree/bindings/spi/andestech,qilai-spi.yaml
> 
> > +F:	drivers/spi/spi-atcspi200.c
The MAINTAINERS entry will be updated in the next revision so that only the
Devicetree binding file is listed. The driver entry will be added once the
driver patch is introduced.

Thanks again for your review and suggestions.

Best regards,
CL


