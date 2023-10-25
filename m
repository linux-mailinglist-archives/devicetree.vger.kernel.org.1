Return-Path: <devicetree+bounces-11725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA9A7D66B9
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:26:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E23F2B20FD4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 422CB208B6;
	Wed, 25 Oct 2023 09:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tULDT4F4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E5A2587
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:26:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D99D1C433C8;
	Wed, 25 Oct 2023 09:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698226005;
	bh=4n0iQGryR3l11ivfAXSZJrCU7Nk2I5Jy+sv+NdwUasQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tULDT4F4BuJuij+PaCntRR4+ii5P140m7lR+dfTCphuE2Q+ux46tUY8wcaQ6uXiMb
	 pLYWpIqLoR9/kKBHvCCvRkzTR3OGVnmxBc9TDnZkHYNEJqB0ZZPB9y5VXOCuDtB561
	 7PB4243yWqd+wmudvFJX/c16YrRlC+opihHGC5/SMlUkJevQCZpDCqePPdRYcGj31p
	 JzIr9+RKEI7INPqB8H1fiChgl5cpBDZ3RL2ct7XoslhxFnwSEJ5jjWbyX676rEQLJA
	 n6jYty+uYu4cQ5gYBLp2h18fOBAZnPgC/CmwiXq2VateWeAW0vdbpIT3/c5AFUbanw
	 6EwJxQVsC8z3Q==
Date: Wed, 25 Oct 2023 10:26:39 +0100
From: Lee Jones <lee@kernel.org>
To: Jeff LaBundy <jeff@labundy.com>
Cc: James Ogletree <james.ogletree@opensource.cirrus.com>,
	James Ogletree <james.ogletree@cirrus.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Fred Treven <fred.treven@cirrus.com>,
	Ben Bright <ben.bright@cirrus.com>,
	"linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 3/4] mfd: cs40l50: Add support for CS40L50 core driver
Message-ID: <20231025092639.GL8909@google.com>
References: <20231018175726.3879955-1-james.ogletree@opensource.cirrus.com>
 <20231018175726.3879955-4-james.ogletree@opensource.cirrus.com>
 <ZTiJYxAvqfBMMJ1S@nixie71>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZTiJYxAvqfBMMJ1S@nixie71>

On Tue, 24 Oct 2023, Jeff LaBundy wrote:

> Hi James,
> 
> Just a few trailing comments on top of Lee's feedback.
> 
> On Wed, Oct 18, 2023 at 05:57:24PM +0000, James Ogletree wrote:
> > From: James Ogletree <james.ogletree@cirrus.com>
> > 
> > Introduce support for Cirrus Logic Device CS40L50: a
> > haptic driver with waveform memory, integrated DSP,
> > and closed-loop algorithms.
> > 
> > The MFD component registers and initializes the device.
> > 
> > Signed-off-by: James Ogletree <james.ogletree@cirrus.com>
> > ---
> >  MAINTAINERS                 |   2 +
> >  drivers/mfd/Kconfig         |  30 +++
> >  drivers/mfd/Makefile        |   4 +
> >  drivers/mfd/cs40l50-core.c  | 443 ++++++++++++++++++++++++++++++++++++
> >  drivers/mfd/cs40l50-i2c.c   |  69 ++++++
> >  drivers/mfd/cs40l50-spi.c   |  68 ++++++
> >  include/linux/mfd/cs40l50.h | 198 ++++++++++++++++
> >  7 files changed, 814 insertions(+)
> >  create mode 100644 drivers/mfd/cs40l50-core.c
> >  create mode 100644 drivers/mfd/cs40l50-i2c.c
> >  create mode 100644 drivers/mfd/cs40l50-spi.c
> >  create mode 100644 include/linux/mfd/cs40l50.h

Just popping along to say; these are excellent comments Jeff.

Thank you for your review.

-- 
Lee Jones [李琼斯]

