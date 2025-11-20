Return-Path: <devicetree+bounces-240759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FF9C752E8
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:57:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0A62A36211E
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E48D25A2CF;
	Thu, 20 Nov 2025 15:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVdlcp20"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A2E331A75;
	Thu, 20 Nov 2025 15:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763653883; cv=none; b=rsSJlQVaWIw6G6ibKOY2thrTgLlusyPvR9/z6jKEJwJHdI0xmW3/333blTifjOPex56eSQCjXcagse1DcAwUiZ4/YPeKDbirgidFUvVXPBS8lbYNck9fi7lZ3E0M2odsM2t+LFVPpEe0SP/Nd1PkzsTnsoQn++I/pbYJX0pEwqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763653883; c=relaxed/simple;
	bh=fIBZ6q3XFCpvVgyydIBarvlMB2V8B4BI0n8ooIoqs7c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gWl/MqgKnU/yg1LCC1wU96PusUq9X0jnrllMtqEp1va/0nKpNpx7/dOLlzp5zJTuwSntvH6Bag2yVkiSSJ8nm+kak5OJdHSemjoYv61iijq7pFYg2LDRfN5ReaXQZKPcC6q+/iwIUfhX+a/PMKkcIc8Fp77zXn7zA+kf0TMruTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVdlcp20; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBF0DC4CEF1;
	Thu, 20 Nov 2025 15:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763653882;
	bh=fIBZ6q3XFCpvVgyydIBarvlMB2V8B4BI0n8ooIoqs7c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pVdlcp20M/Y/6fnfRkHoyCfCacPwy0V5wiwAuqHvg+RKigbE3xok1/qFUSTVaG00E
	 Jgv2JULNlypEahNuX2hh4+cxwfbKDdKGDwRWt4QFJn/Te4Fbv4CyyTFy/PjgnFrHxc
	 Dn/rLw4VOZYkyf4FdV+yHPM2GfBer/10P1U43xbam3kJQB52QW3LZAwXnegT3wIB6P
	 TpENTKYNvC0UeN65YaIKTXG6RfDmxRBofCTI9/9CeEF9TNdCnKDR4tzXi0MkVDSmJd
	 ytD8AQr6wHWKXWqvxSA9z9t/kBO2ZpsVM+F4elirZ32+9EkXz9uzXb558dv4HaGBTz
	 qMTnhETD6o23A==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vM6wM-000000005wH-1bvk;
	Thu, 20 Nov 2025 16:51:23 +0100
Date: Thu, 20 Nov 2025 16:51:22 +0100
From: Johan Hovold <johan@kernel.org>
To: alejandroe1@geotab.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 2/2] gnss: ubx: add support for the safeboot gpio
Message-ID: <aR84-rVwQYFmhfOW@hovoldconsulting.com>
References: <20250911-ubx-safeboot-v3-0-32fe6b882a3c@geotab.com>
 <20250911-ubx-safeboot-v3-2-32fe6b882a3c@geotab.com>
 <aRdDyyIA9Z4e8mBz@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aRdDyyIA9Z4e8mBz@hovoldconsulting.com>

On Fri, Nov 14, 2025 at 03:59:24PM +0100, Johan Hovold wrote:
> On Thu, Sep 11, 2025 at 02:58:29PM +0200, Alejandro Enrique via B4 Relay wrote:
> > From: Alejandro Enrique <alejandroe1@geotab.com>
> > 
> > U-Blox 8/M8/M9 chip have a pin to start it in safeboot mode, to be
> > used to recover from situations where the flash content has become
> > corrupted and needs to be restored. If this pin is asserted at power
> > up/reset, the receiver starts in safeboot mode and GNSS operation is
> > disabled.
> > 
> > Deassert the safeboot pin when probing this driver.

> Note however that both the RESET_N and SAFEBOOT_N pins should be
> declared as open-drain to avoid driving them while the main supply is
> off.
> 
> I added a comment about this to the commit message about this when
> applying and will send a follow-on patch to update the binding example.

I was playing with the idea of adding a warning about this to the driver
when realised that there would typically be a level shifter for these
signals that makes sure they are not driven while the supply is off so I
dropped the comment instead.

Johan

