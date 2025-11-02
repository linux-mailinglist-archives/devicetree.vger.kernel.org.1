Return-Path: <devicetree+bounces-234121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA61C29123
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 16:35:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 170483ACBFA
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 15:35:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD41E19C54F;
	Sun,  2 Nov 2025 15:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="ETacHRA1"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D938533EC
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 15:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762097737; cv=none; b=liDGeY40IhK4TPfU0Z/QHc87dx3JRSJfdWD5rVMeDPfDF1BL8xCrqXtXBzM7PW6LXRLSlZKQRltW0aGczWKWRw2qfsDi+b19fvvVyRiyuGg2DUOaEu2cLytX6hvGCef6WRybUvlYqOdzay2rvUXG/hZR3FGtEM46uCfN0iIZQ6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762097737; c=relaxed/simple;
	bh=IxsQhTNzA5/2f65V5AULNVebYtHpiwIEs9YYgOPxibc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l7rGMyUZPDiI+gqN7b0eRxolQFnlLWDreYSqCXUczGxWVLQujgvOjEEae8F3hZsQqZTiAMMB6bznyUAM6ShGzZuRgh0Nzpshd0lZCEcnlwQoKtrRyh0IlDSUI6dpIh0EsUgXNAbtdQaNSqzDAT04s5ASXMwi0l0YntCs4UvUGVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=ETacHRA1; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=9pSnP8fpSzVWuWoFCSGSU9LO0PQ5eyM02AqYgshXLFs=; b=ETacHRA1e+K6fOysKiLFrWsf3O
	vvyaEG5x5a6K1hC5XSk6X86E/syJcFYUKYWew4ohfkrDgpiL6138hLX+MqUCeab11DX/Vbii0uP7q
	sak/mNajorWjmQjV2r/7DKh1ATnVEgjL/scfraVd36PyGp20wzq+KvjAm8D6gF8fMAQg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vFa78-00Chun-23; Sun, 02 Nov 2025 16:35:30 +0100
Date: Sun, 2 Nov 2025 16:35:30 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	"Ivan T. Ivanov" <iivanov@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Phil Elwell <phil@raspberrypi.com>, Rob Herring <robh@kernel.org>,
	Stanimir Varbanov <svarbanov@suse.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0
 alias
Message-ID: <bfc2be91-dcf9-4b38-a3f3-a1cad6c6aef2@lunn.ch>
References: <20251102111443.18206-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251102111443.18206-1-laurent.pinchart@ideasonboard.com>

On Sun, Nov 02, 2025 at 01:14:42PM +0200, Laurent Pinchart wrote:
> The RP1 ethernet controller DT node contains a local-mac-address
> property to pass the MAC address from the boot loader to the kernel. The
> boot loader does not fill the MAC address as the ethernet0 alias is
> missing. Add it.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---

Should this have a Fixes: tag?

What MAC address does it currently get?  Random?

	Andrew

