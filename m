Return-Path: <devicetree+bounces-159889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0185A6CCCC
	for <lists+devicetree@lfdr.de>; Sat, 22 Mar 2025 22:42:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 689CF3B6A25
	for <lists+devicetree@lfdr.de>; Sat, 22 Mar 2025 21:42:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E76D82356AE;
	Sat, 22 Mar 2025 21:42:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw21-7.mail.saunalahti.fi (fgw21-7.mail.saunalahti.fi [62.142.5.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2641823534A
	for <devicetree@vger.kernel.org>; Sat, 22 Mar 2025 21:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742679753; cv=none; b=BKxXQHLNzStQHZGPL/09jw7OW/GJxu2RMmDkQ0D/yfxOkg8Zx9nIfKMPYc9JlZmZ04kwIcpMOEZeQ7rotuoP9ZLOKNTaK2HPUxpQKPSGjeJK/Tl6k67Fl5jjTwFY5rSZmIfMa5RMsgLdQswz2c8Vh67drURsl9C8RRZe2kOBXBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742679753; c=relaxed/simple;
	bh=4mlURLbxYr++QPQiQtZCSsv6IeqehFcFfHzr30595W8=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hnSJyHLOg+B6LNUaa2sO+RgCN2dK7oHVQIykKBL3RWv9H/W1XQVSh1CmRug6Zn1HrJnfrv6MubCj1ALwNXJtIzxOnkpuKvQkx6UMgkYkIIX8oyoivMxh5fbgLSSruJ8VJgJrw9WZajdtRpVnA2isdyLtflR1v0sTZfjLj88Z1ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-26-232.elisa-laajakaista.fi [88.113.26.232])
	by fgw23.mail.saunalahti.fi (Halon) with ESMTP
	id 87275768-0766-11f0-8ddf-005056bdfda7;
	Sat, 22 Mar 2025 23:42:18 +0200 (EET)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 22 Mar 2025 23:42:18 +0200
To: Benjamin Larsson <benjamin.larsson@genexis.eu>
Cc: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
	ansuelsmth@gmail.com, lorenzo@kernel.org,
	gregkh@linuxfoundation.org
Subject: Re: [PATCH 2/2] serial: Airoha SoC UART and HSUART support
Message-ID: <Z98uumXXqj_opuTT@surfacebook.localdomain>
References: <20250209210241.2622309-1-benjamin.larsson@genexis.eu>
 <20250209210241.2622309-3-benjamin.larsson@genexis.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250209210241.2622309-3-benjamin.larsson@genexis.eu>

Sun, Feb 09, 2025 at 10:02:41PM +0100, Benjamin Larsson kirjoitti:
> Support for Airoha AN7581 SoC UART and HSUART baud rate
> calculation routine.

...

>  drivers/tty/serial/8250/8250_port.c   | 26 +++++++++

> +	/*
> +	 * Airoha SoCs have custom registers for baud rate settings
> +	 */
> +	if (port->type == PORT_AIROHA)
> +		airoha8250_set_baud_rate(port, baud, 0);
> +	if (port->type == PORT_AIROHA_HS)
> +		airoha8250_set_baud_rate(port, baud, 1);

Why is this here? Please, make it stay in your module.

...

> +config SERIAL_8250_AIROHA
> +	bool "Airoha UART support"

Why bool?

> +	depends on ARCH_AIROHA && OF && SERIAL_8250

What is the purpose of the OF dependency?

-- 
With Best Regards,
Andy Shevchenko



