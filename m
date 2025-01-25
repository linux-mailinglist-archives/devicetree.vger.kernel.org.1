Return-Path: <devicetree+bounces-140875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD01AA1C09E
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 04:14:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5F99188CEF8
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 03:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E22202046AD;
	Sat, 25 Jan 2025 03:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="NAllTc4I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32105.qiye.163.com (mail-m32105.qiye.163.com [220.197.32.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1505314A62B;
	Sat, 25 Jan 2025 03:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.105
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737774878; cv=none; b=D2uOKHoM5BrUp5CGxfGt1N3eRJDCA+mASuYIiiT92CveWAI6b2mPU+vEQ1Jk/Plt6Un0zg8OwBBaxNmsIoXhsIJjNJLKPbSgpjP/Y+uvSk5p3q6anwT5BCrGJ9Vc2eYnHDPz8xJkI2wQsZ+eh7nUb7Tnl8WFX21akifnnndKvdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737774878; c=relaxed/simple;
	bh=GCDQA8GrzxSO3cSh6PnYbDlULs9H+sIuRUaPcyFDhfE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jMqqnlwb0Wonx1mHohN29nphgjl7CMHMSPiSY+bOHnQlJZVQBjzi666FIHxDGKjIcZtUMolCcn1IG6hw6RcNbYLONe52aNwUse+5xO77qjl4OLXedINGbrLBoU16XlhUTNM+H/uHzSxIoAl15GJF6yttDw6WqP/vzwlLDzxh3pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=NAllTc4I; arc=none smtp.client-ip=220.197.32.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9a3da8cf;
	Sat, 25 Jan 2025 10:59:09 +0800 (GMT+08:00)
Message-ID: <860384d5-cc7d-485b-be1b-1bbfe27535f8@rock-chips.com>
Date: Sat, 25 Jan 2025 10:59:08 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 12/14] drm/edp-panel: Add LG Display panel model
 LP079QX1-SP0V
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Douglas Anderson <dianders@chromium.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-13-damon.ding@rock-chips.com>
 <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRgZQ1ZJTBpDQ0IdTB4dGE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a949b6620f703a3kunm9a3da8cf
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ojo6Fhw5NTIVDhkPAxQ2DSkc
	VkowCjdVSlVKTEhMTExIQk5LTENPVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSU5ONwY+
DKIM-Signature:a=rsa-sha256;
	b=NAllTc4IrhdZemINSJnIARwR6+qpPHvdRgMGW5ODEWzhYxQ20JdxOfBlhUUCuQglebhICW5Rj3EWmhHZUkQMqLJGvaVqgoQfSC/y5/dTF7hgEC1IVPDf8jPLXQc9g98Zo1W7BdjBtqnFn+pKHK9J88P4xkEbjuNHaPFAk5w/HnE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PJ4vEGRebVfmD62DO8JbYjz0HrXPBA+KlX27omCmNMw=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2025/1/23 19:31, Dmitry Baryshkov wrote:
> On Thu, Jan 23, 2025 at 06:07:45PM +0800, Damon Ding wrote:
>> The raw edid for LP079QX1-SP0V panel model is:
>>
>> 00 ff ff ff ff ff ff 00 16 83 00 00 00 00 00 00
>> 04 17 01 00 a5 10 0c 78 06 ef 05 a3 54 4c 99 26
>> 0f 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
>> 01 01 01 01 01 01 ea 4e 00 4c 60 00 14 80 0c 10
>> 84 00 78 a0 00 00 00 18 00 00 00 10 00 00 00 00
>> 00 00 00 00 00 00 00 00 00 00 00 00 00 fe 00 4c
>> 50 30 37 39 51 58 31 2d 53 50 30 56 00 00 00 fc
>> 00 43 6f 6c 6f 72 20 4c 43 44 0a 20 20 20 00 3f
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   drivers/gpu/drm/panel/panel-edp.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
> 
> Please use get_maintainers.pl when compiling To/Cc lists. Added Douglas
> to CC manually.
> 
> Or, better, split irrelevant patches to separate series.
> 

I will split the panel related patch into a separate series in the next 
version.

>>
>> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
>> index f8511fe5fb0d..77e3fd3ed160 100644
>> --- a/drivers/gpu/drm/panel/panel-edp.c
>> +++ b/drivers/gpu/drm/panel/panel-edp.c
>> @@ -1808,6 +1808,12 @@ static const struct panel_delay delay_200_150_e50 = {
>>   	.enable = 50,
>>   };
>>   
>> +static const struct panel_delay delay_50_500_e200 = {
>> +	.hpd_absent = 50,
>> +	.unprepare = 500,
>> +	.enable = 200,
>> +};
>> +
>>   #define EDP_PANEL_ENTRY(vend_chr_0, vend_chr_1, vend_chr_2, product_id, _delay, _name) \
>>   { \
>>   	.ident = { \
>> @@ -1955,6 +1961,8 @@ static const struct edp_panel_entry edp_panels[] = {
>>   	EDP_PANEL_ENTRY('C', 'S', 'W', 0x1100, &delay_200_500_e80_d50, "MNB601LS1-1"),
>>   	EDP_PANEL_ENTRY('C', 'S', 'W', 0x1104, &delay_200_500_e50, "MNB601LS1-4"),
>>   
>> +	EDP_PANEL_ENTRY('E', 'T', 'C', 0x0000, &delay_50_500_e200, "LP079QX1-SP0V"),
>> +
>>   	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d51, &delay_200_500_e200, "Unknown"),
>>   	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d5b, &delay_200_500_e200, "MB116AN01"),
>>   	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d5c, &delay_200_500_e200, "MB116AN01-2"),
>> -- 
>> 2.34.1
>>
> 

Best regards,
Damon


