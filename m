Return-Path: <devicetree+bounces-141597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA64A218B5
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 09:13:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 885583A683A
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 08:13:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03CAE19DF4D;
	Wed, 29 Jan 2025 08:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgBEeOzS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05BA19D070;
	Wed, 29 Jan 2025 08:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738138409; cv=none; b=Pme5V4nMMYYrCDkfduQLc+9sFEsloR4NTvXvlP2/Y18uu/Q/mvBmJQ0AUmieLyqkQ7gIqvOOgPxMh+MhL53m2nyLeJrBVeEW9finUwNDrUB9ckvfARbnYki1kSJ2EQg9wp9+BCn6iqiX5S+Mp6AZNyda+LtoIohP9gF4NxIJp04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738138409; c=relaxed/simple;
	bh=8kHLU8vSdujAnBb2iwEz8l17q8H48pYFvZK+ja1jkU0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A4p49hrYcZBm6LWR85yL0BQw+D1t+K/+pwQNjUjdOYf8nM7XlU30d5Ou55y1WdZZ3yw+RSOaiQIlg3ZJDVBIO0TnwJi8ES1fxm03EnZau+Cm4AfTmUbs2XqjNr3YfSvdow6m4EQp9H/2e3xBu2/PlgO7tiBYcf5niWuOpDOw3sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgBEeOzS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C43CDC4CED3;
	Wed, 29 Jan 2025 08:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738138409;
	bh=8kHLU8vSdujAnBb2iwEz8l17q8H48pYFvZK+ja1jkU0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FgBEeOzSPMqIWdN96Kyu5185y0Aa7hpIzgcZFKL5+qCi5boTycpVCwCprldXDxeCe
	 KiSVgMPZVkFAUrX7aoZhx4R5u8/wd4Pf8aQXy4kUeZ1P5rBW5XqZ0gkCIhSUCWFYhA
	 /2Q1Lbo8SXhyTR0M8ljCLnA24LaQK3Jzb5Ti/QKG7yp0rcthgQR3KVQyE/Y5iDhzYR
	 KguEX+I+nTGb+CmZmEAM32j7nwj06dwZHamndDgMlk6eDRqenGi2F6Kzcy+rRKAmA6
	 Nin/V3F3DBoc03C5MfbFm9C3ZI7V4f47euLozJd1N35wxFn7v3ck5udLvVKjL4Db/3
	 Gxqbmg+Hv+UlA==
Date: Wed, 29 Jan 2025 09:13:26 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andrei Simion <andrei.simion@microchip.com>
Cc: claudiu.beznea@tuxon.dev, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, broonie@kernel.org, nicolas.ferre@microchip.com, 
	alexandre.belloni@bootlin.com, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] MAINTAINERS: Update the documentation file supported
 for MICROCHIP SSC DRIVER
Message-ID: <20250129-benevolent-granite-catfish-c7d818@krzk-bin>
References: <20250128161842.44541-1-andrei.simion@microchip.com>
 <20250128161842.44541-3-andrei.simion@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250128161842.44541-3-andrei.simion@microchip.com>

On Tue, Jan 28, 2025 at 06:18:45PM +0200, Andrei Simion wrote:
> Replace the documentation file supported after the conversion of
> atmel-ssc.txt to YAML schema named atmel,at91-ssc.yaml.
> 
> Signed-off-by: Andrei Simion <andrei.simion@microchip.com>
>

NAK

That's NEVER a separate patch. Your patchset is not bisectable.

Best regards,
Krzysztof


