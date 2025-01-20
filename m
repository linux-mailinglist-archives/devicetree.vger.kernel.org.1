Return-Path: <devicetree+bounces-139642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8A6A16748
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:23:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 327911888FBF
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 07:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9595D18F2DD;
	Mon, 20 Jan 2025 07:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="YlMVqCem"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15586.qiye.163.com (mail-m15586.qiye.163.com [101.71.155.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7717918FC65;
	Mon, 20 Jan 2025 07:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737357811; cv=none; b=qM0e7ApPebUeCNrT89uwRV/RUUxojkI/Lc+kycLefh9yeSx3t2AkJJwQG2l9N0HmcsELTC+Y90S8nnu4CNUqtdk9VPiwgXEVBj3HTIN1dRCmQDbiq67n6MeajVlHiKTmX8mCwsRrh70fcWry4xc3fHaY21V8YHrsysLzG0o7qiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737357811; c=relaxed/simple;
	bh=OvVM5YN2JckGl2VUHFTILVusLOgtsr0RTULV4L+JAWM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i6/GKsEZ4mwCQVodvGoBAq0NOfmSspu6nKOLiOz2NXF08MlX3iTC5rcrlaSFVrmTklUK+vZHGMhEWy2J9BQuFFAoqLZPVpr20CLOcfrbLnqf9PQ1L/rX7+i3hm+AjT6QaKjSjaqLWRZ2z4l32xTn0Oqz2L9RrcClN0oJRmyzvp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=YlMVqCem; arc=none smtp.client-ip=101.71.155.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 92b0fd19;
	Mon, 20 Jan 2025 15:18:15 +0800 (GMT+08:00)
Message-ID: <938a27aa-74dd-4fe2-8cdb-35e70aeba7f9@rock-chips.com>
Date: Mon, 20 Jan 2025 15:18:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/6] Add eDP mode support for Rockchip Samsung HDPTX
 PHY
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250112090714.1564158-1-damon.ding@rock-chips.com>
 <ezoduel3qz5ihlhekry26cb7ace3bm4xmzsfrsqvbodtcl3gjq@xxo75h7uozei>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <ezoduel3qz5ihlhekry26cb7ace3bm4xmzsfrsqvbodtcl3gjq@xxo75h7uozei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhofSVZIQ0tIHx1IQkpMGBhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9482938cc103a3kunm92b0fd19
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRQ6CTo*QjILGjc0Ei1KIQtW
	T0pPCzlVSlVKTEhMSE5MT0JMSE5OVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSEhLNwY+
DKIM-Signature:a=rsa-sha256;
	b=YlMVqCemoJ5IuGFcjnoZpmTM+woLwFi2wcAc4vBGThor+N1qtfA0YzV3z3iB62D4/0lEir2z/RSlG6qZu78nUvKHmCE7MY1tLK3ql+K4BzVU5YzuM9SKIlIYPOimiJMYFRsZ8FfrfjRSPfKNVynCqgXMukhM4D8CSqMl+w3Snhg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=LGzVX7k2FmqUfYRLqS7vwiYQh14m9/YvFN4qiCwdhQg=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2025/1/13 17:10, Dmitry Baryshkov wrote:
> On Sun, Jan 12, 2025 at 05:07:08PM +0800, Damon Ding wrote:
>> Picked from:
>> https://patchwork.kernel.org/project/linux-rockchip/list/?series=923593
> 
> Then it should have been v6, not v1.
> 

I will update a patch series to fix it.

>>
>> These patchs have been tested with a 1536x2048p60 eDP panel on
>> RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
>> on RK3588 EVB1 board.
>>
>> Damon Ding (6):
>>    phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and
>>      ROPLL_REF
>>    phy: phy-rockchip-samsung-hdptx: Supplement some register names with
>>      their full version
>>    phy: phy-rockchip-samsung-hdptx: Add the '_MASK' suffix to all
>>      registers
>>    phy: phy-rockchip-samsung-hdptx: Add eDP mode support for RK3588
>>    dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588
>>      HDMI TX Controller
>>    arm64: dts: rockchip: Fix label name of hdptxphy for RK3588
>>
>>   .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   2 +-
>>   arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   4 +-
>>   .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    |   2 +-
>>   .../rockchip/rk3588-coolpi-cm5-genbook.dts    |   2 +-
>>   .../boot/dts/rockchip/rk3588-evb1-v10.dts     |   2 +-
>>   .../rk3588-friendlyelec-cm3588-nas.dts        |   2 +-
>>   .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |   2 +-
>>   .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   |   2 +-
>>   .../dts/rockchip/rk3588-orangepi-5-plus.dts   |   2 +-
>>   .../boot/dts/rockchip/rk3588-rock-5b.dts      |   2 +-
>>   .../boot/dts/rockchip/rk3588-tiger-haikou.dts |   2 +-
>>   .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   2 +-
>>   .../dts/rockchip/rk3588s-indiedroid-nova.dts  |   2 +-
>>   .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  |   2 +-
>>   .../boot/dts/rockchip/rk3588s-odroid-m2.dts   |   2 +-
>>   .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi |   2 +-
>>   .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   2 +-
>>   .../boot/dts/rockchip/rk3588s-rock-5c.dts     |   2 +-
>>   .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 971 +++++++++++++++++-
>>   19 files changed, 934 insertions(+), 75 deletions(-)
>>
>> -- 
>> 2.34.1
>>
> 

Best regards
Damon


