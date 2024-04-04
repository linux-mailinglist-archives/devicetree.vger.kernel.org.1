Return-Path: <devicetree+bounces-56418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3FA89914F
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 00:29:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C98341C21AB9
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 22:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE5AF13C667;
	Thu,  4 Apr 2024 22:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="VT8yPpxE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta243.mxroute.com (mail-108-mta243.mxroute.com [136.175.108.243])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBBF13C3E3
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 22:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.243
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712269765; cv=none; b=mSa8TT0zLK+dm1aX0IgdQjGCrmbp6X0VdZvFxDeLd1WoA8IAYeWjkwd04jG9CqyORdENUB/dEYX13H4I7cZ9LVLNr0TszfdwPy3o8wRaQXXDnwSOFd6Fuzu1tSebv2NisfEHzGmR2NMmEl8e7pRFTmNK3/ghtFnP11NHfIj7JBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712269765; c=relaxed/simple;
	bh=7gOnPN1J8zc+sOjKnhu29RZ/HZGY4Msw0cPdBeM4CQw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZN2YZC3cdSScTftiKXSBM78U8gEn3HYIiPx2XF5iWN1B6IzDRgxlMqNulFnZVQ71wKJspzro0a0SXFNiKiOg0Nx9WtPBglO5u5tGhaUWuV/yPuSiz8qHM9TeUt1l+MoJRrDOt7qMcLZLCAmPVoV4cWVEv8vahmGzIYAXP5/e0hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=VT8yPpxE; arc=none smtp.client-ip=136.175.108.243
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta243.mxroute.com (ZoneMTA) with ESMTPSA id 18eab3b056b0003bea.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Thu, 04 Apr 2024 22:29:15 +0000
X-Zone-Loop: 2651607568485f58849d306c3871bf569b53b6dcbd40
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=b0vJntwX4Lap8ep/ms4s2qljGex8NbqYYt5JzOJnwNk=; b=VT8yPpxETHdqpbnHBBV74VKE38
	LlhHBt61GXAtPGRCgkd4bAC67Inwzf7tnU0sITgWiXRDE8BiQ0wlxsrSqk+DuZcaO4aaBvRva9Jzz
	hNPVirkAFp3MeQP9Xq8U/bABDC+FiQQt5JdX3pmeOkOu8c1m4T0ysTALzEQ7VvAVlrXWk8Kpm1yCU
	pUN6eCaFwnAivyDEs0pYjb4qiXpgazk1D2v6o4RXFVlwJc2CPlay5JN40sCigInJXO5G5Vevslv+i
	nM6iO21uhfOR4dTxVooMzNJg7SqX1BKf/MY+A3WTgO9+HUBdDGC9aTfC2GK2LlRHw1f1b2w5jZ0Vn
	wajJm28Q==;
Message-ID: <6c15e492-411a-40aa-b02e-83b8a6d107da@luigi311.com>
Date: Thu, 4 Apr 2024 16:29:11 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/25] media: i2c: imx258: Allow configuration of clock
 lane behaviour
To: Pavel Machek <pavel@ucw.cz>
Cc: linux-media@vger.kernel.org, dave.stevenson@raspberrypi.com,
 jacopo.mondi@ideasonboard.com, mchehab@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 sakari.ailus@linux.intel.com, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20240403150355.189229-1-git@luigi311.com>
 <20240403150355.189229-13-git@luigi311.com> <Zg2kcI/1Gdgt0ilB@duo.ucw.cz>
Content-Language: en-US
From: Luigi311 <git@luigi311.com>
In-Reply-To: <Zg2kcI/1Gdgt0ilB@duo.ucw.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authenticated-Id: git@luigi311.com

On 4/3/24 12:48, Pavel Machek wrote:
> Hi!
> 
>> The sensor supports the clock lane either remaining in HS mode
>> during frame blanking, or dropping to LP11.
>>
>> Add configuration of the mode via V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK.
> 
>> +	ret = imx258_write_reg(imx258, IMX258_CLK_BLANK_STOP,
>> +			       IMX258_REG_VALUE_08BIT,
>> +			       imx258->csi2_flags & V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK ?
>> +			       1 : 0);
> 
> !! can be used to turn value into 1/0. I find it easier to read than ?
> 1 : 0  combination, but possibly that's fine, too.
> 
> Best regards,
> 								Pavel
> 

I assume you mean by using 

!!(imx258->csi2_flags & V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK)

I can go ahead and use that instead

