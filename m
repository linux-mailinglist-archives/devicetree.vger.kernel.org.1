Return-Path: <devicetree+bounces-132441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 576449F724D
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 02:57:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E57B7A3C3F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 01:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F38F19F40B;
	Thu, 19 Dec 2024 01:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="XhyWv9FB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49227.qiye.163.com (mail-m49227.qiye.163.com [45.254.49.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B44A78F5E;
	Thu, 19 Dec 2024 01:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734573036; cv=none; b=F/r3kmldJRd/8YDl9Qr50rsqAHANB/ew+VXNdFqqvo35ehLf1QCVl25enzWoOAyKDE9syYImsY0ZZsnhThj/erbishYH8hL7NI+OPOU1p3+huz6NSyYtt54jKHkQbx/qIEJPVUujHdpxGK6Kz4vMa1exDwTri2fY5E+XfINgaek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734573036; c=relaxed/simple;
	bh=3W00LY/cojpx7QEVm0rh5DTYQe6RHr54CCsrNoYfQDw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cf2ax1c4Wd1iaYS7Rjficrpy9sTnwh+QxG5GaBAZ0IgR6dTuu8v8BFr16LRztH7hR5BYmHzQYO/h2dmX71Cy70O/e7DI4oc24t68U8MiTkwH2UyofCGrHriCXwszziFiksKkIjnMqxaptFK9W5FonytC50nNe/fZs6GIC09Ckbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=XhyWv9FB; arc=none smtp.client-ip=45.254.49.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6277199f;
	Thu, 19 Dec 2024 09:35:12 +0800 (GMT+08:00)
Message-ID: <7fa672bb-7263-468b-ad7d-f1585459dc67@rock-chips.com>
Date: Thu, 19 Dec 2024 09:35:12 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/11] phy: phy-rockchip-samsung-hdptx: Add support for
 eDP mode
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com,
 cristian.ciocaltea@collabora.com, l.stach@pengutronix.de,
 andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com,
 kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-5-damon.ding@rock-chips.com>
 <867267676.0ifERbkFSE@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <867267676.0ifERbkFSE@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkMZH1ZMSUpOGkNMT0gZTENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93dc8dfa8a03a3kunm6277199f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MDI6DAw5PDIJEBc2GhccPS45
	DAkaCxxVSlVKTEhPTkxJSkpPSkpOVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSENINwY+
DKIM-Signature:a=rsa-sha256;
	b=XhyWv9FByJopn3syCU++lxNWmISu60bEdehFbK8P7AGggwYo/a1h0s5S04Av3Zl1vVlfWXvSlNoMA0oNgGTx/sLizcbW9E6W/wCWrhIWOdbdVtnI8XBJaPUxahn0qXYxWxQXK6HnXmwTCVGXVtiEMPOh3/JdZ3vFkdE3C9G0O/k=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=JfU0BRy6UxjKGOBHhFm9jV2l7Tlz/ThMRo8XbQs5bSE=;
	h=date:mime-version:subject:message-id:from;

Hi Heiko,

On 2024/12/18 20:35, Heiko Stübner wrote:
> Hi Damon,
> 
> Am Montag, 16. Dezember 2024, 04:12:18 CET schrieb Damon Ding:
>> Add basic support for RBR/HBR/HBR2 link rates, and the voltage swing and
>> pre-emphasis configurations of each link rate have been verified according
>> to the eDP 1.3 requirements.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v2:
>> - Add the module author
>> ---
> 
>> @@ -255,6 +364,19 @@ struct ropll_config {
>>   	u8 cd_tx_ser_rate_sel;
>>   };
>>   
>> +struct tx_drv_ctrl {
>> +	u8 tx_drv_lvl_ctrl;
>> +	u8 tx_drv_post_lvl_ctrl;
>> +	u8 ana_tx_drv_idrv_idn_ctrl;
>> +	u8 ana_tx_drv_idrv_iup_ctrl;
>> +	u8 ana_tx_drv_accdrv_en;
>> +	u8 ana_tx_drv_accdrv_ctrl;
>> +	u8 tx_drv_pre_lvl_ctrl;
>> +	u8 ana_tx_jeq_en;
>> +	u8 tx_jeq_even_ctrl;
>> +	u8 tx_jeq_odd_ctrl;
>> +};
>> +
>>   enum rk_hdptx_reset {
>>   	RST_PHY = 0,
>>   	RST_APB,
> 
> not a full review (yet), but this part conflicts with
> commit f2dbca169790 ("phy: phy-rockchip-samsung-hdptx: Don't request RST_PHY/RST_ROPLL/RST_LCPLL")
> 
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=f2dbca169790ea1e436ffdd9ef37d7c3a4401c46
> 
> 
> 
> 
I will update to the latest Kernel branch and fix this conflict in the 
next version.

Best regards,
Damon

