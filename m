Return-Path: <devicetree+bounces-248997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DCFCD8655
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 08:37:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D5013012BFB
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 07:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51AEC2F12BA;
	Tue, 23 Dec 2025 07:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="DbMxoXZj"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042422877FC
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766475408; cv=none; b=pxnCXoidmwLCGbOARpZbI4Jw6+QymRwWh0Z/N/yJvKeHIfX23IqUWXEyj4CtUbTovYx0KQIy9TH8SBCax3RH21vhvBtPyhpqCMpR3LysaRRZFwqSKVd561HFlz4ROIeFBkT/KvBhc4G7iAm5bRdcDo2P3kJ/cyp1IjW+c+h5apM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766475408; c=relaxed/simple;
	bh=RXFXzlM94y7J9cL6n70mGltPf6pZraGleBfUfnqfVaA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TiDW6UCC4a04J1RGUB1IW0KF4Du98a7DJveN/iGLOPt79pKK7OR91H6UuVEqkGB/S3WDTKRkEXM85NRZx0/fcIR0iiICo55UdXPgsHFFpsK3vZ1U7VsfX3jFQVaie06tONOMc0E6rdw7qbPNZXULc0pg8uTIluHwilpG3lt6+/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=DbMxoXZj; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <d1e75d9b-0c49-4c52-a77c-c6fe3918e4d6@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1766475393;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vU4D8eVlA0WNfHgjVyUPRNgZqusNXdUnzSVKoGOZJXU=;
	b=DbMxoXZjq4Nrp7MllryAKeSeF5guIHdtNVeFc1E/f+EZ3Sk6OOHx78ip8+oziqBlhG0QhH
	9cQ3YYg2lDkb3fG1mZ95lP0AVAtBS6vzQJQXNeVQ/KARz7vifN+BXRNdhEbGlFFBOlhTQJ
	5lRErhPjSeQpla29Qpv5BmTEt6nD7E4=
Date: Tue, 23 Dec 2025 07:36:30 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/2] net: phy: adin: enable configuration of the LP
 Termination Register
To: Osose Itua <osose.itua@savoirfairelinux.com>, netdev@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 michael.hennerich@analog.com, jerome.oufella@savoirfairelinux.com
References: <20251222222210.3651577-1-osose.itua@savoirfairelinux.com>
 <20251222222210.3651577-2-osose.itua@savoirfairelinux.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20251222222210.3651577-2-osose.itua@savoirfairelinux.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 22/12/2025 22:21, Osose Itua wrote:
> The ADIN1200/ADIN1300 provide a control bit that selects between normal
> receive termination and the lowest common mode impedance for 100BASE-TX
> operation. This behavior is controlled through the Low Power Termination
> register (B_100_ZPTM_EN_DIMRX).
> 
> Bit 0 of this register enables normal termination when set (this is the
> default), and selects the lowest common mode impedance when cleared.
> 
> Signed-off-by: Osose Itua <osose.itua@savoirfairelinux.com>
> ---
>   drivers/net/phy/adin.c | 34 ++++++++++++++++++++++++++++++++++
>   1 file changed, 34 insertions(+)
> 
> diff --git a/drivers/net/phy/adin.c b/drivers/net/phy/adin.c
> index 7fa713ca8d45..e8b778cb191d 100644
> --- a/drivers/net/phy/adin.c
> +++ b/drivers/net/phy/adin.c
> @@ -4,6 +4,7 @@
>    *
>    * Copyright 2019 Analog Devices Inc.
>    */
> +#include <cerrno>

This kind of include is not used in kernel.
You don't need to include anything in this file to have EINVAL defined.

>   #include <linux/kernel.h>
>   #include <linux/bitfield.h>
>   #include <linux/delay.h>
> @@ -89,6 +90,9 @@

