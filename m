Return-Path: <devicetree+bounces-108053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF5D991674
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2024 13:26:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72787281A38
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2024 11:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A44614A4F7;
	Sat,  5 Oct 2024 11:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGD3+GK+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641F5132103;
	Sat,  5 Oct 2024 11:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728127582; cv=none; b=awpCmxCxMqiyTUh2QMHkfoIoat0Ro8TYIKrUFzb6EEsMOkTSePjrnShNuUZVq+0OgonCd/EdzRfyHHnMw5um33HT97pXxVE8760rfd/5Mzj/xixrrofqucQn2ghBLlYcq+MOo2nyo95+JK6rRmlvCl91TpE13VUnWYU9gZxWzZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728127582; c=relaxed/simple;
	bh=eXiszue6w4EUCch4awiuVmOZ4ZLQR5YVE6jD8YyQacQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LUNHhHEPdyoqhcVHSs5htDukcd3kyHPVPa6/Se4qbCvVQjSZOVzihX4S3WZIv+2ESqwbTKR72yBAJ0Ze2a2t53qQwII9oMBKjv/iiLwuyEl/GI8QBsbGaH24WgcrxnT8X6RKVOfUD2kKpC4qIV1MUrc0ZHGKDBpzXbLNWEuzw4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGD3+GK+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E56DEC4CEC2;
	Sat,  5 Oct 2024 11:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728127581;
	bh=eXiszue6w4EUCch4awiuVmOZ4ZLQR5YVE6jD8YyQacQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jGD3+GK+yc7j1ApjRcbOSOwVktzVYipOhyqpc9l8QXQ4aeTPk7wvMWREv1s2+rW/3
	 aSNLhwrl7nyEz0uqrBXC9W6gHTLhe4dwIdu/wxwOJyx+8+2gSfIi91WKdWK5KFOAWf
	 CAPWH0pg69DFVhgiORFen9sy+Fb/b0176uPff7mnw5/03KdMEFj5v48N2bMF2an2Ms
	 pgSP5rxC7XvLpGD7I+j640H5svHH11VT2wbb/x5V07p1Mcz5sNCwmI0ghW48HkKa+L
	 xJp2afY4QTXBlaskI0iGnYBetRnSoek0lJ9dSMvpnjFrgA49tcgvROHuajAS6dSbb0
	 qaiyMz8Ls8hug==
Date: Sat, 5 Oct 2024 12:26:09 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Guillaume Stols <gstols@baylibre.com>
Cc: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 aardelean@baylibre.com, dlechner@baylibre.com, Jonathan Cameron
 <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v3 05/10] iio: adc: ad7606: Sort includes in
 alphabetical order
Message-ID: <20241005122609.3ec6a7a0@jic23-huawei>
In-Reply-To: <20241004-ad7606_add_iio_backend_support-v3-5-38757012ce82@baylibre.com>
References: <20241004-ad7606_add_iio_backend_support-v3-0-38757012ce82@baylibre.com>
	<20241004-ad7606_add_iio_backend_support-v3-5-38757012ce82@baylibre.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 04 Oct 2024 21:48:39 +0000
Guillaume Stols <gstols@baylibre.com> wrote:

> Some of the includes were not in alphabetical order, this commit fixes
> it.
> 
> Signed-off-by: Guillaume Stols <gstols@baylibre.com>
Applied this patch to the togreg branch of iio.git and pushed out for
now as testing for 0-day to take a look.

Thanks,

Jonathan

