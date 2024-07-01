Return-Path: <devicetree+bounces-82102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C9091E716
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 20:05:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F7361F24CC8
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 18:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F09D82D93;
	Mon,  1 Jul 2024 18:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwUo8O7I"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B16647A4C
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 18:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719857133; cv=none; b=nGwTJUfRJyHTyeCK/jNmG3zQKSkRR5HS3V2cWRl1DkCLvLc48Q5RW03DF0uZgxGuKbFBXoysxyQG1/8gyTz4FUS9J70Eni0W3DSPNMTuWZr9JKSC8R3Q5Yc/lrknm2gdNvvs5jSmoh0aM7ZKVDFt5w0jfFyDsCLMQ+JU/m8tUJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719857133; c=relaxed/simple;
	bh=iDKcXdBsS0vt/IYVHXKzFucwalNTCdXiNqGYDXCF2EE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PbfJRWqK1dhkUxUHFVMTri2Q7a5U1OxIoJes2/LfGcq1LMmcqiVMAjczKA/U9j4cJZoEPYVfjoFuYASdIA7IK9NRgSZXSdSul2ONNPyocgE5Mmm8Br65V0OOF9WKQ37SNmDTQUtjTFFGRKKncj9+dgEJcTmIMq5rQ/p7TgpxxXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwUo8O7I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84726C116B1;
	Mon,  1 Jul 2024 18:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719857131;
	bh=iDKcXdBsS0vt/IYVHXKzFucwalNTCdXiNqGYDXCF2EE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LwUo8O7I2p+o8H5bGeA2nYxR8MBNh6pCtsk9imynvRE1mdJdqYDZmiPNIsZ70+WBW
	 KZoKPSGaL5Jq34Cx56Fo5A33UZ2YTwGsbF8bj/izaYn2v00xCSbqAbqVsa55tJEgaU
	 Hl53X302C8z+mqXPF4eIW7oNdP7bZI72rjfIbNs69AtyVs2kk/11Go1AZEzcJSlkyx
	 iVvz3wB+3Ieg0kIIqnk0iiFhqKLKCQUPAaOjGdmgAS43PYj1NhJLeb5eG4OyrP5Jh7
	 5IkuoLTxRp96xdJPkNH5/+HuSCLR2C/MfVaEP2aQ01BL8py1NWtH5LOcZTfNrzYObO
	 c3/7GyKz5vltQ==
Date: Mon, 1 Jul 2024 12:05:30 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Zoltan HERPAI <wigyori@uid0.hu>, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: dts: marvell: add support for D-Link DNS-320L
Message-ID: <20240701180530.GA176622-robh@kernel.org>
References: <20240629113450.127561-1-wigyori@uid0.hu>
 <20240629113450.127561-3-wigyori@uid0.hu>
 <b8c1ffed-8d91-48cf-8b8c-bea4021c272b@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b8c1ffed-8d91-48cf-8b8c-bea4021c272b@lunn.ch>

On Sat, Jun 29, 2024 at 04:34:25PM +0200, Andrew Lunn wrote:
> It has been a long time since i reviewed a kirkwood DT
> description. Also, best practices have changed, so the example you
> copied is probably doing things which today would be classed as wrong.
> 
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> 
> It is typical to use a dual license now:
> 
> // SPDX-License-Identifier: (GPL-2.0+ OR MIT)

Yes, but more importantly, they should be consistent...

GPL-2.0+ in favor of GPL-2.0-or-later

> 
> However, if this is mostly Sunke Schluters work, you probably cannot
> change the license without his agreement.
> 
> > +/*
> > + * Device Tree file for D-Link DNS-320L
> > + *
> > + * Copyright (C) 2024, Zoltan HERPAI <wigyori@uid0.hu>
> > + * Copyright (C) 2015, Sunke Schluters <sunke-dev@schlueters.de>
> > + *
> > + * This file is based on the works of:
> > + * - Sunke Schluters <sunke-dev@schlueters.de>
> > + *   - https://github.com/scus1/dns320l/blob/master/kernel/dts/kirkwood-dns320l.dts
> > + * - Andreas Bohler <dev@aboehler.at>:
> > + *   - http://www.aboehler.at/doku/doku.php/projects:dns320l
> > + *   - http://www.aboehler.at/hg/linux-dns320l/file/ba7a60ad7687/linux-3.12/kirkwood-dns320l.dts
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "kirkwood.dtsi"
> > +#include "kirkwood-6281.dtsi"

And these are GPL-2.0-only, so this one should match.

Rob

