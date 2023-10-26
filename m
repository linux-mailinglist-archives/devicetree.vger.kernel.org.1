Return-Path: <devicetree+bounces-12071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 524E17D7D02
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 08:46:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DEE19B210BB
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 06:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 536463C00;
	Thu, 26 Oct 2023 06:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="veBmziUi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9351F3D68
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 06:46:34 +0000 (UTC)
X-Greylist: delayed 59934 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 25 Oct 2023 23:46:32 PDT
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com [95.215.58.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 555C3189
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 23:46:32 -0700 (PDT)
Date: Thu, 26 Oct 2023 08:46:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1698302790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8C+xtJB+rzkNqqM7GtaAxsetXtnvMscEnnd5dof4DLo=;
	b=veBmziUiO7Z/w7gkmNkCcic8j0ag0eMKAT4L6zsVXup72KG630NC9cxpw7CuL8LH1XdeNV
	nTzd6XEyTaoLTqRiYsjYfUSuV1exvgtmR51TU2i1ej4pSntKGO5CnPnnONPQx6+BfvC8EO
	FNJoArraraD2HTSg8SqzqrPKoeC+zy0=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Richard Leitner <richard.leitner@linux.dev>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] MAINTAINERS: Add entry for ina238 driver
Message-ID: <bu4hgxdak4tdtivqfmusaxqcfs3t4e7lzqj6adetela7446bf7@uilfgew3hrmj>
References: <20231025-ina237-v1-0-a0196119720c@linux.dev>
 <20231025-ina237-v1-1-a0196119720c@linux.dev>
 <f5d92f5b-dc78-4227-b556-2617ef239496@roeck-us.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f5d92f5b-dc78-4227-b556-2617ef239496@roeck-us.net>
X-Migadu-Flow: FLOW_OUT

On Wed, Oct 25, 2023 at 06:03:23PM -0700, Guenter Roeck wrote:
> On Wed, Oct 25, 2023 at 10:34:11AM +0000, Richard Leitner wrote:
> > The ina238 driver is available since 2021 but lacks a MAINTAINERS entry
> > file. Therefore add the missing entry now.
> > 
> > Signed-off-by: Richard Leitner <richard.leitner@linux.dev>
> 
> NACK. I am already the hwmon maintainer, and there is no need
> to list me as maintainer for every hwmon driver.

Thanks for the feedback. Understood. Will remove the entry in v2.

regards;rl

> 
> Guenter
> 
> > ---
> >  MAINTAINERS | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 668d1e24452d..28f91c8a2e1c 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -10267,6 +10267,12 @@ F:	Documentation/hwmon/ina2xx.rst
> >  F:	drivers/hwmon/ina2xx.c
> >  F:	include/linux/platform_data/ina2xx.h
> >  
> > +INA238 HARDWARE MONITOR DRIVER
> > +M:	Guenter Roeck <linux@roeck-us.net>
> > +L:	linux-hwmon@vger.kernel.org
> > +S:	Maintained
> > +F:	drivers/hwmon/ina238.c
> > +
> >  INDEX OF FURTHER KERNEL DOCUMENTATION
> >  M:	Carlos Bilbao <carlos.bilbao@amd.com>
> >  S:	Maintained

