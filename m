Return-Path: <devicetree+bounces-14709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EDC7E64EC
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 09:08:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C55D4B20B80
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 08:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3F2A101E7;
	Thu,  9 Nov 2023 08:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="EX8/MwsR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1456910A01;
	Thu,  9 Nov 2023 08:07:55 +0000 (UTC)
Received: from mail-m12769.qiye.163.com (mail-m12769.qiye.163.com [115.236.127.69])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C13C2737;
	Thu,  9 Nov 2023 00:07:54 -0800 (PST)
DKIM-Signature: a=rsa-sha256;
	b=EX8/MwsRplvL5wtx/0z10jCnhnFrvZ1SfgJWzLg1D9tkfgm26aNnlXtm7Hdqq2vSsHPrLlx4EZRfAVLHDTxL0Cw4IIFoq3SG4VEpN5sRd2pPv/ExJEHWivm+ghuMkRlx1/Oe8g8U+NCPgFRjPk9iJjSYrQ6l2b4O0Frbbwgf4Xk=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=18Gkx2GiMHfpYUb29bSeLsFtQHGrYGeLSfPMEOaVu54=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.49] (unknown [58.22.7.114])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id B40A54003F3;
	Thu,  9 Nov 2023 16:06:44 +0800 (CST)
Message-ID: <a11c847c-4f95-ea7b-3497-6ada0586c486@rock-chips.com>
Date: Thu, 9 Nov 2023 16:06:44 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF clk
 id
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, mturquette@baylibre.com,
 sboyd@kernel.org, kever.yang@rock-chips.com, heiko@sntech.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 andy.yan@rock-chips.com, Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20231108061822.4871-1-zhangqing@rock-chips.com>
 <20231108061822.4871-4-zhangqing@rock-chips.com>
 <20231108-donation-uncertain-c4d0f560c420@spud>
 <2e520a06-0ff1-76ef-2a72-ab6663738b45@rock-chips.com>
 <20231109-send-pushchair-45b37551102a@wendy>
From: zhangqing <zhangqing@rock-chips.com>
In-Reply-To: <20231109-send-pushchair-45b37551102a@wendy>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkpJT1YYSkodHk1DGRkYGBhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5DTUtIVUpLS1VKQl
	kG
X-HM-Tid: 0a8bb31e8af12eb3kusnb40a54003f3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mww6Czo4DDw1Vg8MTj8NKUgv
	MVEKFBxVSlVKTUJCTkpMSUtOQ0NCVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5OT0o3Bg++


在 2023/11/9 15:29, Conor Dooley 写道:
> On Thu, Nov 09, 2023 at 02:27:38PM +0800, zhangqing wrote:
>> Hi:
>>
>> 在 2023/11/8 20:01, Conor Dooley 写道:
>>> On Wed, Nov 08, 2023 at 02:18:21PM +0800, Elaine Zhang wrote:
>>>> export PCLK_VO1GRF for DT.
>>>>
>>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>>>> ---
>>>>    include/dt-bindings/clock/rockchip,rk3588-cru.h | 3 ++-
>>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
>>>> index 5790b1391201..50ba72980190 100644
>>>> --- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
>>>> +++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
>>>> @@ -733,8 +733,9 @@
>>>>    #define ACLK_AV1_PRE			718
>>>>    #define PCLK_AV1_PRE			719
>>>>    #define HCLK_SDIO_PRE			720
>>>> +#define PCLK_VO1GRF			721
>>>> -#define CLK_NR_CLKS			(HCLK_SDIO_PRE + 1)
>>>> +#define CLK_NR_CLKS			(PCLK_VO1GRF + 1)
>>> This definition is part of the ABI, if it is safe to change it, then it
>>> is safe to delete it.
>> The new ID is to solve the niu clock dependency problem(Used in PATCH V5
>> 4/4).This new ID will also be used in DTS in the future.
>>
>> CLK_NR_CLKS represents the number of clocks used by the
>> drivers/clk/rockchip/clk-rkxxx.c. It is safe to modify it, but cannot delete
>> it.
> Then delete it from the header and move it to clk-rkxxx.c
I don't think it's more appropriate to move to clk-rkxxx.c.
Because if there are new requirements later, and add new clk id, it is 
not in the same file, maybe forget to modify CLK_NR_CLKS.

-- 
张晴
瑞芯微电子股份有限公司
Rockchip Electronics Co.,Ltd
地址：福建省福州市铜盘路软件大道89号软件园A区21号楼
Add:No.21 Building, A District, No.89 Software Boulevard Fuzhou, Fujian 350003, P.R.China
Tel:+86-0591-83991906-8601
邮编：350003
E-mail:elaine.zhang@rock-chips.com
****************************************************************************
保密提示：本邮件及其附件含有机密信息，仅发送给本邮件所指特定收件人。若非该特定收件人，请勿复制、使用或披露本邮件的任何内容。若误收本邮件，请从系统中永久性删除本邮件及所有附件，并以回复邮件或其他方式即刻告知发件人。福州瑞芯微电子有限公司拥有本邮件信息的著作权及解释权，禁止任何未经授权许可的侵权行为。

IMPORTANT NOTICE: This email is from Fuzhou Rockchip Electronics Co., Ltd .The contents of this email and any attachments may contain information that is privileged, confidential and/or exempt from disclosure under applicable law and relevant NDA. If you are not the intended recipient, you are hereby notified that any disclosure, copying, distribution, or use of the information is STRICTLY PROHIBITED. Please immediately contact the sender as soon as possible and destroy the material in its entirety in any format. Thank you.

****************************************************************************


