Return-Path: <devicetree+bounces-132909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B7A9F89BA
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 02:51:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86132188B312
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 01:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9DB44430;
	Fri, 20 Dec 2024 01:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="SCDtr1iP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m11875.qiye.163.com (mail-m11875.qiye.163.com [115.236.118.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9802800;
	Fri, 20 Dec 2024 01:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.118.75
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734659499; cv=none; b=oIO4aHffh6gQkiRKEiUqW7vmRbFyj/+1X46PZoCD1OwXStfTjdSTm0RttF5HM2GFZ/6eyPzJUpGIMHQLsJU0yQzX7+trVvizyCLW9ng0eCXlRmwUNILCyK5baeefsAvNeOcGNZLkFmw+jNj7EuqF7pDCGlwqaM0wQ0kittlJ5go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734659499; c=relaxed/simple;
	bh=4Pz6KwCgE40qxblPifL5cZBX3S+52HKCdAyYif5iytU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zzh60Kp48d08gwQ4/l3Olri5FF5/dVW/BYcpjUtJgwQLw0jtOiWgX1c5nV+PjFsSeZdlagOjPoUHeletF5jJxOrsI4EtllA/xHUS4Uhi+SS0B95BFH6Wig4kF+mS1WaBCQIY0ULvD7VxwI7kmXJxgNuUBWKjA9Hj/lrt/v7oCW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=SCDtr1iP; arc=none smtp.client-ip=115.236.118.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 64555da6;
	Fri, 20 Dec 2024 09:46:23 +0800 (GMT+08:00)
Message-ID: <20d95d18-ddbc-423e-ab15-d246dc605527@rock-chips.com>
Date: Fri, 20 Dec 2024 09:46:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/15] phy: phy-rockchip-samsung-hdptx: Rename some
 register names related to DP
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-5-damon.ding@rock-chips.com>
 <rkdp44csph6stq2e7emhgjziiwypcas7uqsvcdo7i6ypvg64uz@gnqikl5fzxqd>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <rkdp44csph6stq2e7emhgjziiwypcas7uqsvcdo7i6ypvg64uz@gnqikl5fzxqd>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGksYT1ZMGUwZGR0eQh8ZSR1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e1be94b303a3kunm64555da6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PCI6DQw4MTIWFAoIAyIXCE1K
	ITUwFFFVSlVKTEhPTU5CSkNOT0hMVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOTU1LNwY+
DKIM-Signature:a=rsa-sha256;
	b=SCDtr1iP7grdk/3VZASTnC1OltzueJrozkvIBdbI6n3fYffWx+FGmBMgiEl80YxxkSjYV8BzO2REeBvGazfwDG6sWKuIN/KV6ijXaVGasDNZEvEBxcY4TNgwfEwyYrg5PQPVozKD3kbz006xt8/EIxsceC9IyuznsggjKUCnkE4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=CReTqJKUWrNj+lfZ2doUitw3k9N3xnNBLkgV9sHlt+c=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2024/12/20 8:22, Dmitry Baryshkov wrote:
> On Thu, Dec 19, 2024 at 04:05:53PM +0800, Damon Ding wrote:
>> The modifications of DP register names are as follows:
>> - Add the '_MASK' suffix to some registers to ensure consistency.
>> - Complete the names of some register to their full names.
>> - Swap the definitions of LCPLL_REF and ROPLL_REF.
> 
> Three unrelated changes, ideally means three commits (I won't insist on
> that though). Also please mention that LCPLL_REF and ROPLL_REF were not
> used by the existing driver, so it's not a bug and there is no need to
> backport it.
> 

Indeed, it would be better to split this patch into three different 
commits. However, I still want to keep the fixes for LCPLL_REF and 
ROPLL_REF because, according to the datasheet, they are indeed 
incorrect. And I will describe the suggestions you mentioned in the 
commit message.

>>
>> Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 64 +++++++++----------
>>   1 file changed, 32 insertions(+), 32 deletions(-)
>>
>> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> index ceab9c71d3b5..c1b9c73f5f9f 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> @@ -69,41 +69,41 @@
>>   #define ROPLL_PMS_IQDIV_RSTN		BIT(5)
>>   /* CMN_REG(005e) */
>>   #define ROPLL_SDM_EN_MASK		BIT(6)
>> -#define ROPLL_SDM_FRAC_EN_RBR		BIT(3)
>> -#define ROPLL_SDM_FRAC_EN_HBR		BIT(2)
>> -#define ROPLL_SDM_FRAC_EN_HBR2		BIT(1)
>> -#define ROPLL_SDM_FRAC_EN_HBR3		BIT(0)
>> +#define ROPLL_SDC_FRAC_EN_RBR_MASK	BIT(3)
>> +#define ROPLL_SDC_FRAC_EN_HBR_MASK	BIT(2)
>> +#define ROPLL_SDC_FRAC_EN_HBR2_MASK	BIT(1)
>> +#define ROPLL_SDM_FRAC_EN_HBR3_MASK	BIT(0)
>>   /* CMN_REG(0064) */
>>   #define ROPLL_SDM_NUM_SIGN_RBR_MASK	BIT(3)
>>   /* CMN_REG(0069) */
>>   #define ROPLL_SDC_N_RBR_MASK		GENMASK(2, 0)
>>   /* CMN_REG(0074) */
>> -#define ROPLL_SDC_NDIV_RSTN		BIT(2)
>> -#define ROPLL_SSC_EN			BIT(0)
>> +#define ROPLL_SDC_NDIV_RSTN_MASK	BIT(2)
>> +#define ROPLL_SSC_EN_MASK		BIT(0)
>>   /* CMN_REG(0081) */
>> -#define OVRD_PLL_CD_CLK_EN		BIT(8)
>> -#define PLL_CD_HSCLK_EAST_EN		BIT(0)
>> +#define OVRD_PLL_CD_CLK_EN_MASK		BIT(8)
>> +#define ANA_PLL_CD_HSCLK_EAST_EN_MASK	BIT(0)
>>   /* CMN_REG(0086) */
>>   #define PLL_PCG_POSTDIV_SEL_MASK	GENMASK(7, 4)
>>   #define PLL_PCG_CLK_SEL_MASK		GENMASK(3, 1)
>   >  #define PLL_PCG_CLK_EN			BIT(0)
>>   /* CMN_REG(0087) */
>> -#define PLL_FRL_MODE_EN			BIT(3)
>> -#define PLL_TX_HS_CLK_EN		BIT(2)
>> +#define ANA_PLL_FRL_MODE_EN_MASK	BIT(3)
>> +#define ANA_PLL_TX_HS_CLK_EN_MASK	BIT(2)
>>   /* CMN_REG(0089) */
>>   #define LCPLL_ALONE_MODE		BIT(1)
>>   /* CMN_REG(0097) */
>> -#define DIG_CLK_SEL			BIT(1)
>> -#define ROPLL_REF			BIT(1)
>> -#define LCPLL_REF			0
>> +#define DIG_CLK_SEL_MASK		BIT(1)
>> +#define LCPLL_REF			BIT(1)
>> +#define ROPLL_REF			0
>>   /* CMN_REG(0099) */
>>   #define CMN_ROPLL_ALONE_MODE		BIT(2)
>>   #define ROPLL_ALONE_MODE		BIT(2)
>>   /* CMN_REG(009a) */
>> -#define HS_SPEED_SEL			BIT(0)
>> +#define HS_SPEED_SEL_MASK		BIT(0)
>>   #define DIV_10_CLOCK			BIT(0)
>>   /* CMN_REG(009b) */
>> -#define IS_SPEED_SEL			BIT(4)
>> +#define LS_SPEED_SEL_MASK		BIT(4)
>>   #define LINK_SYMBOL_CLOCK		BIT(4)
>>   #define LINK_SYMBOL_CLOCK1_2		0
>>   
>> @@ -165,32 +165,32 @@
>>   #define HDMI_MODE			BIT(2)
>>   #define HDMI_TMDS_FRL_SEL		BIT(1)
>>   /* LNTOP_REG(0206) */
>> -#define DATA_BUS_SEL			BIT(0)
>> +#define DATA_BUS_WIDTH_SEL_MASK		BIT(0)
>>   #define DATA_BUS_36_40			BIT(0)
>>   /* LNTOP_REG(0207) */
>>   #define LANE_EN				0xf
>>   #define ALL_LANE_EN			0xf
>>   
>>   /* LANE_REG(0312) */
>> -#define LN0_TX_SER_RATE_SEL_RBR		BIT(5)
>> -#define LN0_TX_SER_RATE_SEL_HBR		BIT(4)
>> -#define LN0_TX_SER_RATE_SEL_HBR2	BIT(3)
>> -#define LN0_TX_SER_RATE_SEL_HBR3	BIT(2)
>> +#define LN0_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
>> +#define LN0_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
>> +#define LN0_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
>> +#define LN0_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>>   /* LANE_REG(0412) */
>> -#define LN1_TX_SER_RATE_SEL_RBR		BIT(5)
>> -#define LN1_TX_SER_RATE_SEL_HBR		BIT(4)
>> -#define LN1_TX_SER_RATE_SEL_HBR2	BIT(3)
>> -#define LN1_TX_SER_RATE_SEL_HBR3	BIT(2)
>> +#define LN1_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
>> +#define LN1_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
>> +#define LN1_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
>> +#define LN1_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>>   /* LANE_REG(0512) */
>> -#define LN2_TX_SER_RATE_SEL_RBR		BIT(5)
>> -#define LN2_TX_SER_RATE_SEL_HBR		BIT(4)
>> -#define LN2_TX_SER_RATE_SEL_HBR2	BIT(3)
>> -#define LN2_TX_SER_RATE_SEL_HBR3	BIT(2)
>> +#define LN2_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
>> +#define LN2_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
>> +#define LN2_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
>> +#define LN2_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>>   /* LANE_REG(0612) */
>> -#define LN3_TX_SER_RATE_SEL_RBR		BIT(5)
>> -#define LN3_TX_SER_RATE_SEL_HBR		BIT(4)
>> -#define LN3_TX_SER_RATE_SEL_HBR2	BIT(3)
>> -#define LN3_TX_SER_RATE_SEL_HBR3	BIT(2)
>> +#define LN3_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
>> +#define LN3_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
>> +#define LN3_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
>> +#define LN3_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>>   
>>   #define HDMI20_MAX_RATE			600000000
>>   
>> -- 
>> 2.34.1
>>
> 

Best regards,
Damon

