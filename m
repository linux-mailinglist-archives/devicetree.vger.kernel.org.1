Return-Path: <devicetree+bounces-238423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E12C5B004
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 03:24:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 655413B46DA
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 02:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12E222B8CB;
	Fri, 14 Nov 2025 02:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="gNZ+N0XW"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD9F22A4FE;
	Fri, 14 Nov 2025 02:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763087085; cv=none; b=hTH+wyV7UDlPIB+NFIwpJXL8jsYUh4F3NXS8r0dmZLyteinKXxM0nZ0J5KyH9xVvTkpydJJtML+NTnf+1BuaMWZjZQvdA+avgsa90ViykZz1oT/Bhpyeto4rSfzh8OW/cp374uiaU3nS3VDs2Dd8aK95w3LThHimnz6rISBb+NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763087085; c=relaxed/simple;
	bh=GPfFQrriaySqC5EKVSgRQzm0mq33r4OBAmbSiQc/3ts=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NbltlJEaRWYuy13TDzALKL0JZSkryOmHusyo6pneR+TzusgPZUrZi2VX0BdcYMQK/zFV+eqvOGkHHE+Zqnl6JnLKbYEe+ubTd4nYlXkHF0c+V6YdmtzXSlXYzJyvBs8VW2Atr1mKiQ4h9rfFFPBZ9vn8W7HT0s9fSQmvg5oH8qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=gNZ+N0XW; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763086476;
	bh=EUQzdVCI9Ss5QrwdmvciMMLlU7W9sG3oUSRRxCeCzFA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=gNZ+N0XWNfy4GRAH3j2k0iWaIimQhH01+1GtLcyY+mWhCAySKtgMOKEclhZtNVpPS
	 +3B3lxVwFHV8hDUCISyuFBVOe/juAEY2CZ1NGb1RqvSuGrR2KyasVPOg73eFOMo0tr
	 wSv0wg6ktaTH1UVG8/6PvZWK2cG03AEHRii37CF4C5LwcuLNNvLAXZItkE8RcEhOY7
	 L+1Q9tW4K+lN0BDG1lCSU6AykWuh0bn6hLPnT1dB/3wnxURSR3FinUV+1eF0zq6HbC
	 deMznNYI8qgdemk4EfZy+Oyd3ueLdz4YeBWqRuTDaW1PJYPbSSrBzd5l2Oh4CSAILN
	 0sDk/nOXbVv+g==
Received: from [127.0.1.1] (unknown [180.150.112.244])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 9B568641F5;
	Fri, 14 Nov 2025 10:14:34 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 joel@jms.id.au, Cosmo Chou <chou.cosmo@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 cosmo.chou@quantatw.com
In-Reply-To: <20251018043310.1056032-1-chou.cosmo@gmail.com>
References: <20251018043310.1056032-1-chou.cosmo@gmail.com>
Subject: Re: [PATCH v2] ARM: dts: aspeed: bletchley: remove WDTRST1
 assertion from wdt1
Message-Id: <176308647425.812008.7414923561320240836.b4-ty@codeconstruct.com.au>
Date: Fri, 14 Nov 2025 12:44:34 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Sat, 18 Oct 2025 12:33:09 +0800, Cosmo Chou wrote:
> Remove the external signal configuration from wdt1 to prevent the
> WDTRST1 pin from being asserted during watchdog resets.
> 
> The WDTRST1 pin was originally configured to reset the TPM during
> watchdog events. However, the pin is incorrectly routed to SRST#
> on the hardware, causing unintended system resets. Since the TPM
> is not currently utilized on this platform, remove the external
> signal configuration to avoid the incorrect reset behavior.
> 
> [...]

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


