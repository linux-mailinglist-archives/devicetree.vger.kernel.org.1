Return-Path: <devicetree+bounces-61370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F2B8AC6DB
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:24:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41F8B1C20E2B
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 08:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76D2450A87;
	Mon, 22 Apr 2024 08:24:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD1050297
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 08:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713774261; cv=none; b=LuAhxqs3No3XsphjYPxtmviK48hdPwJHSuwfxHfQLogs1SPy3quYyWKtjnwsdDtTRXFoL1xsqAGL//a3Xo42czpoe+VHrLwfDN25Bt6OHOYKRMNo8aN3OjxiQ5u5eY/xjnJiDglSqxuW6gPS3c+8Z3xvc+On7YgS/YH4WwftMeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713774261; c=relaxed/simple;
	bh=D3l3dDOus3EIMiPBhgkjU/0jBpJ1t5/DG9ysQIYcqCA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wiag1qgwXCunttjon3ynPYyOhtON0/JnjVv1UbAldDkTPoguM9L7dAnFKlvyKUjO5RVgkq2RcvGn5hMMVFMbbWjut/3JSC45NYiGvXS8msiaAQfIDuneQpVa1QwUTxtoCHEVOQBkVuEi4TRmGatka7aQsWgO1yQUAdf3gJGhdro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <h.assmann@pengutronix.de>)
	id 1ryoxz-0005tX-UL; Mon, 22 Apr 2024 10:23:59 +0200
Message-ID: <386c031d-ebf1-4ef9-88f8-abde050ebf99@pengutronix.de>
Date: Mon, 22 Apr 2024 10:23:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] regulator: pca9450: enable restart handler for I2C
 operation
To: Krzysztof Kozlowski <krzk@kernel.org>, lgirdwood@gmail.com,
 broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, yibin.gong@nxp.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20240419083104.3329252-1-h.assmann@pengutronix.de>
 <20240419083104.3329252-2-h.assmann@pengutronix.de>
 <af6316ff-78c6-4b0a-894f-6076d36ffb90@kernel.org>
From: Holger Assmann <h.assmann@pengutronix.de>
Content-Language: en-US, de-DE, de-LI
In-Reply-To: <af6316ff-78c6-4b0a-894f-6076d36ffb90@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: h.assmann@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Krzysztof,

Am 19.04.24 um 15:41 schrieb Krzysztof Kozlowski:
> 
> Priority property does not define whether this is or is not restart
> handler. In case of missing priority, you should use just default:
> SYS_OFF_PRIO_DEFAULT. Not skip the registering.
> 

Thank you for your fast response and the feedback. I will work it in and
send a v2 later.

Kind regards,
Holger

-- 
Pengutronix e.K.                         | Holger Assmann              |
Steuerwalder Str. 21                     | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

