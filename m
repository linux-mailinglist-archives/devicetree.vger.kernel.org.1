Return-Path: <devicetree+bounces-50931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F70487DB6A
	for <lists+devicetree@lfdr.de>; Sat, 16 Mar 2024 21:21:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54B4B1C208A3
	for <lists+devicetree@lfdr.de>; Sat, 16 Mar 2024 20:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86CDD1CA95;
	Sat, 16 Mar 2024 20:17:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw23-7.mail.saunalahti.fi (fgw23-7.mail.saunalahti.fi [62.142.5.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCEC3E49E
	for <devicetree@vger.kernel.org>; Sat, 16 Mar 2024 20:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710620248; cv=none; b=s43X0SUvDjKgX1nEiyrLN4X3VpIzFVWXW0r25x8Zv5Mp9oowR7cdNss5hQzztYB9pGSagBRbKuzpSmstdPJkDQCJYUnItiiNpT6DhAV90HnEEZL7n8uoC3Es07rdeFsd4pkLcaEeOc2uhofN6hc8NULqQlp/n8sJmmt9LKtZnGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710620248; c=relaxed/simple;
	bh=L4Kr3W03WnDRFmtdwt7+DIdItUZViAX7DVeASVj0Nj0=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VqTyHTNJ+yid4PrkajXTsZ8Bdw0cxQBxfui2MvbPDbbids66Ax/0TfUAOWKxUiRY8+03GjBzqRroKdivW4ruGJneUok2P3Sq/5o8qDZSYlpNcmSjHZC9XUOVRJ4dOtNmIHjGlbP13yTKTN9tDqzHdlLZ9TgksxCjgucDcJDxJoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-26-217.elisa-laajakaista.fi [88.113.26.217])
	by fgw23.mail.saunalahti.fi (Halon) with ESMTP
	id 2edfabe6-e3d2-11ee-b972-005056bdfda7;
	Sat, 16 Mar 2024 22:17:17 +0200 (EET)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 16 Mar 2024 22:17:16 +0200
To: David Lechner <dlechner@baylibre.com>
Cc: Dominique Martinet <dominique.martinet@atmark-techno.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Syunya Ohshio <syunya.ohshio@atmark-techno.com>,
	Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iio: industrialio-core: look for aliases to request
 device index
Message-ID: <ZfX-TEJFPpMPfHum@surfacebook.localdomain>
References: <20240228051254.3988329-1-dominique.martinet@atmark-techno.com>
 <7f03bb12-0976-4cb7-9ca9-4e4e28170bdd@linaro.org>
 <Zd7hSOw3_zosyrn3@atmark-techno.com>
 <daed8ada-9e01-41ad-82af-5da5cbbc865c@linaro.org>
 <Zd7qz1Qte8HWieF_@atmark-techno.com>
 <20240228142441.00002a79@Huawei.com>
 <Zd_zB_ymxkx0HB3q@atmark-techno.com>
 <ZfPg-nMANUtBlr6S@atmark-techno.com>
 <CAMknhBG_kJx8JPvTBQo7zpy3mFAkUjZpRY3DLBfXt+39nRJWiA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMknhBG_kJx8JPvTBQo7zpy3mFAkUjZpRY3DLBfXt+39nRJWiA@mail.gmail.com>

Fri, Mar 15, 2024 at 10:53:36AM -0500, David Lechner kirjoitti:
> On Fri, Mar 15, 2024 at 12:58 AM Dominique Martinet
> <dominique.martinet@atmark-techno.com> wrote:

...

> How about using udev rules to create symlinks for each device based on
> the label attribute? No changes to the kernel are needed.

+1 for the suggestion. We have a lot of information in sysfs to distinguish
devices by a physical connection, even if we have the same names/labels they
may not have the same physical connections (if there is a possibility of the
collision, then it means it has to be fixed elsewhere).

-- 
With Best Regards,
Andy Shevchenko



