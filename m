Return-Path: <devicetree+bounces-9533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B85D67CD567
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 09:15:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F22FF1C20A05
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 07:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACD7310A36;
	Wed, 18 Oct 2023 07:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLeLHmif"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86ED07495
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 07:15:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C40D5C433C8;
	Wed, 18 Oct 2023 07:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697613316;
	bh=GGL7+oBmYKas190DKMBWKcJlXN4VqLRqL1TcneBhXOk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GLeLHmifrc4uNsEncMQPy1C3Cq8LJFWWlTzwSAh0MwNWTFvTUnwLj/HuN9oU4Cq5F
	 yGRtdF6gpPOmMhjNfH6y7sTJ9kcMwB9y3EroDqXFdmT0abE7u6lKGA10L/BRlRzZMG
	 FvZ1d9J3eXQnz6PdTxUkMw4bTa42/ERcZC9a4IcLX3wwTKUR8zTAveNR9cYo5pTvCg
	 Gg6TnjmwH6aXrzG1WQEV+vjE86sypkqAVgZ8ZJztgJ0bEglm/YOhvOg2vlKxD/GjQd
	 7K8n5EgjzUozsCnZFLjnaAIDvmyOGvNqCOR7P6p+MUnuJ6WvC/N2Y4NLIbGHRsBzJN
	 gr4G03alp654A==
Date: Wed, 18 Oct 2023 09:15:09 +0200
From: Benjamin Tissoires <bentiss@kernel.org>
To: Tylor Yang <tylor_yang@himax.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.com, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, poyuan_chang@himax.corp-partner.google.com, 
	jingyliang@chromium.org, hbarnor@chromium.org, wuxy23@lenovo.com, luolm1@lenovo.com, 
	poyu_hung@himax.corp-partner.google.com
Subject: Re: [PATCH v3 2/4] HID: touchscreen: Add initial support for Himax
 HID-over-SPI
Message-ID: <vndliq6ippz5ofzpj7pzhx2i6w5sc4ey2w4qtrw72aop3pgvje@thabbo5aeax3>
References: <20231017091900.801989-1-tylor_yang@himax.corp-partner.google.com>
 <20231017091900.801989-3-tylor_yang@himax.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231017091900.801989-3-tylor_yang@himax.corp-partner.google.com>

Hi Tylor,

[in addition to any other reviews]

On Oct 17 2023, Tylor Yang wrote:
> The hx83102j is a TDDI IC (Touch with Display Driver). The
> IC using SPI to transferring HID packet to host CPU. The IC also
> report HID report descriptor for driver to register HID device.
> The driver is designed as a framework for future expansion and
> hx83102j is the first case. Each hx_spi_hid_hx8xxxxx modules are
> mutual exclusive, it should be initiate one at a time.
> 
> This driver takes a position similar to i2c-hid, it initialize
> and control the touch IC below and register HID to upper hid-core.
> When touch ic report an interrupt, it receive the data from IC
> and report as HID input to hid-core. Let hid-core dispatch input
> to registered hid-protocol and report to related input sub-system.
> 
> This driver also provide advanced functions by hidraw interface:

Generally speaking, when your commit message has an "also" in the
middle, it means that the next feature(s) need to be split in their own
patches.

> - runtime firmware update
> - debug functions, such as reg r/w
> - self test for touch panel

So this means that this patch should at least be split in 4.

> 
> Due to patch size is too big, separate into 3 part. This is part 1.

This is the wrong reason to split a patch series. Well, it's true, it's
too big, but you have to take into account the reviewers/maintainers
point of view:
- we don't know the internals of your device
- we don't (necessarily) have access to the docs
- we don't have a lot of time to spend on a review
- we can not focus on a 9000 lines of code patch and remember every
  single aspect when reviewing, to be able to point bugs

Given that you compared this driver to i2c-hid, please have a look at
the history of it:
- my first initial submission[0] (v1) was a single patch of 1000 loc,
  but it contained only the core functionality to bind a driver. I
  stripped everything else that could make it useful (ACPI or DT
  bindings) but it was a an attempt at being a one-to-one mapping of the
  I2C part of the publicly available specification
- shortly after I sent a separate 14 patches series to do more cleanups
  on the initial patch, as things were moving forward
- then Mika submitted the ACPI handling[1]
- and DT bindings came later [2] (8 months after the initial submission)

My point is, when the code is that big, it's perfectly fine to have it
split and maybe not have all of the functionalities available in the
first submission.

Bonus point for not having everything and in smaller patches: it's less
of a pain to change or drop stuff :)

> 
> Signed-off-by: Tylor Yang <tylor_yang@himax.corp-partner.google.com>
> ---
>  MAINTAINERS                       |    1 +
>  drivers/hid/hx-hid/hx_acpi.c      |   81 ++
>  drivers/hid/hx-hid/hx_core.c      | 1605 +++++++++++++++++++++++++++++
>  drivers/hid/hx-hid/hx_core.h      |  489 +++++++++
>  drivers/hid/hx-hid/hx_hid.c       |  753 ++++++++++++++
>  drivers/hid/hx-hid/hx_hid.h       |   96 ++
>  drivers/hid/hx-hid/hx_ic_83102j.c |  340 ++++++
>  drivers/hid/hx-hid/hx_ic_83102j.h |   42 +

hx-hid is a terrible name. Why not at least "himax-hid"? Or maybe
"himax-spi-hid"?

Also, I can't remember if this was already asked, but is that driver
vaguely related to the HID over SPI specification from Microsoft?

We have seen one submission in the past regarding that even if it didn't
went through, but if your driver implements this protocol following
Microsoft's specification, I'd rather not have a custom vendor code when
we can have a "standardized" one.

[...]

Cheers,
Benjamin


[0] https://lore.kernel.org/linux-input/1347630103-4105-1-git-send-email-benjamin.tissoires@gmail.com/
[1] https://lore.kernel.org/linux-input/1357650332-30031-1-git-send-email-mika.westerberg@linux.intel.com/
[2] https://lore.kernel.org/linux-input/1371109835-30796-1-git-send-email-benjamin.tissoires@redhat.com/

