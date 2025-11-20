Return-Path: <devicetree+bounces-240744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AE355C74FB2
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4401A345B8C
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA7162FE583;
	Thu, 20 Nov 2025 15:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpIVuwq7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930E73590BB;
	Thu, 20 Nov 2025 15:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763651823; cv=none; b=maceA+u7KK8siNFZIvhpxRZdvslH6TheCNdDVUxvz4QOed1a1+2805mMAti0iws76zETgtQfID878eRBmVlwoMYiAG/0TevReTaHVZAexDvLoZUYQnKvk2+hQFQZLeljyK4zd5HEjR3faqsp177OiseQyuba2Hqw57i+9YHVONM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763651823; c=relaxed/simple;
	bh=i+hSDrNuJU0kdbFmRUjm0oeMOqP0McKexPfusvwfW3E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KT1ehln+HdPVekgSGvZrXOxhjsL1GxinkBC4yXRHmDiP/qo5qTi1lL2QUPv+iiIjeq+x9yIR/C64SrgAlZWrvbQGin2r41M2/qvma+wUAAxr1J+xufkiaoHT+2WKf2L5mQtd2/x1Y6/WCgzu1AiOQ54pJnoHARovApCnFbR5hMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpIVuwq7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB840C4CEF1;
	Thu, 20 Nov 2025 15:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763651823;
	bh=i+hSDrNuJU0kdbFmRUjm0oeMOqP0McKexPfusvwfW3E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tpIVuwq7NE+AqAvDsdS3M/VWYPxopqwfOzEmWdXrQFOjKeg33tSE/gJqjSP/W2EC8
	 4Z+HnNGX1PuVXjtD0rsAdcFWJj4Uf6Jd9TwHWDsQK8hRsnf8gghUVEFREM0q++jsqI
	 b9OeNTyqUc/FGTLlQ3oQB2K/BsAM6CGshtufpDLqGLO+L85hVe9X+UAQueWjt1hGyO
	 +kODYRh+RGls5KvA5PkdgNYRHtRsZlQXv971yTGk4mpO04oqQ/ZAO0S3jgH5b881+O
	 LCnKzBff7MetaDgX3Ph++0eX0LQb7Byo3UJ7YuUXTLzER128Gdy0rfzyFePm8knRuB
	 1lVq10TG8KwDw==
Date: Thu, 20 Nov 2025 15:16:58 +0000
From: Lee Jones <lee@kernel.org>
To: "Yakovlev, Georgy" <Georgy.Yakovlev@sony.com>
Cc: Timothy Pearson <tpearson@raptorengineering.com>,
	devicetree <devicetree@vger.kernel.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shawn Anastasio <sanastasio@raptorengineering.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 2/4] mfd: sony-cronos-cpld: Add driver for Sony Cronos
 CPLD
Message-ID: <20251120151658.GG661940@google.com>
References: <966245414.1748564.1758824280649.JavaMail.zimbra@raptorengineeringinc.com>
 <20251009104256.GD8757@google.com>
 <C519436F-296F-4313-87ED-F665CF8EBDAF@sony.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <C519436F-296F-4313-87ED-F665CF8EBDAF@sony.com>

On Wed, 19 Nov 2025, Yakovlev, Georgy wrote:

> 
> 
> > On Oct 9, 2025, at 3:42 AM, Lee Jones <lee@kernel.org> wrote:
> > 
> > This doesn't need to / shouldn't reside in the kernel.
> > 
> > Why not use I2C and handle all of this in userspace?
> We would prefer to keep the sysfs interfaces in-kernel due to I2C bus contention between the MFD sub-drivers and userspace applications.
> Keeping everything in-kernel allows the kernel itself to arbitrate between the various MFD sub-drivers; punting to userspace complicates each userspace application as they each individually would need to handle I2C bus contention and associated EBUSY responses vs. a sysfs read.

After speaking with the sysfs maintainer, the long and the short of it
is that this isn't going to be accepted.  There are a lot of random
sysfs entries being proposed here that are seemingly being dumped into
MFD, which is "not okay".

MFD is often seen as a dumping ground for devices that do not fit
anywhere else.  In reality, it's for child device registration, shared
resource management and occasionally some core functionality for larger
devices.  Here you can expect to be able to check if you're operating on
the correct device, create the Regmap and instantiate the drivers.  For
that we may be able to reasonably suggest that you use simple-mfd-i2c.

The vast majority of this 'device' seems to pertain to letting userspace
control the device via I2C.  The way I see it you have 2 options.
Either use simple-mfd-i2c and get the information you need over I2C from
userspace or find another suitable location to house all of the
non-MFD related handling.

> >> \ No newline at end of file
> > 
> > ???
> > 
> >> diff --git a/MAINTAINERS b/MAINTAINERS
> >> index 0e897f2ba9eb..a1052663fb27 100644
> >> --- a/MAINTAINERS
> >> +++ b/MAINTAINERS
> >> @@ -23458,6 +23458,13 @@ S: Maintained
> >> F: drivers/ssb/
> >> F: include/linux/ssb/
> >> 
> >> +SONY CRONOS CPLD DRIVER
> >> +M: Georgy Yakovlev <Georgy.Yakovlev@sony.com>
> > 
> > This person is going to have to Ack the fact that you're making them the
> > person responsible for maintaining this.
> Yes, I acknowledge.
> Not new to open source in general, but new to kernel submissions.
> Sorry for delayed response, was away.
> > 
> >> +S: Maintained
> >> +F: Documentation/devicetree/bindings/mfd/sony,cronos-cpld.yaml
> >> +F: drivers/mfd/sony-cronos-cpld.c
> >> +F: include/linux/mfd/sony/cronos/
> >> +
> >> SONY IMX208 SENSOR DRIVER
> >> M: Sakari Ailus <sakari.ailus@linux.intel.com>
> >> L: linux-media@vger.kernel.org
> >> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> >> index 425c5fba6cb1..cd0c624022f6 100644
> >> --- a/drivers/mfd/Kconfig
> >> +++ b/drivers/mfd/Kconfig
> >> @@ -2341,6 +2341,17 @@ config MFD_QCOM_PM8008
> >>   under it in the device tree. Additional drivers must be enabled in
> >>   order to use the functionality of the device.
> >> 
> >> +config MFD_SONY_CRONOS_CPLD
> >> + tristate "Sony Cronos CPLD Support"
> > 

-- 
Lee Jones [李琼斯]

