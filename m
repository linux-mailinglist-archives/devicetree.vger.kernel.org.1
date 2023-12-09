Return-Path: <devicetree+bounces-23374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A0580B177
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 02:35:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B98C01F213D0
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 01:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69E327FB;
	Sat,  9 Dec 2023 01:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="BwufFL80"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 496 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 08 Dec 2023 17:35:12 PST
Received: from mail-m102.netease.com (mail-m102.netease.com [154.81.10.2])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5888610F1;
	Fri,  8 Dec 2023 17:35:12 -0800 (PST)
DKIM-Signature: a=rsa-sha256;
	b=BwufFL80XCbds4b0EwhNO3JkhrzAg11DySk5t/d0z26Lz8b/7R1KMxF3bj8BT+vJDKHTsgAgOehypOhLxtqlQheaA/4ZjRICQ+ZPWZBmJN1cp0YMYWqo2aqLDJ6o+rJ661UMdqq951sRFc9+ln+5nuKNRUeVki9SfQZ2x6JNpe4=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=1bTFE0EmmEHjiY9PXtz3uWCZdBxCozfW+7tytPfM1i0=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 817C3780197;
	Sat,  9 Dec 2023 09:26:25 +0800 (CST)
Message-ID: <bbf4d7a5-a6f5-447a-9f3e-1cd6f2acc7c9@rock-chips.com>
Date: Sat, 9 Dec 2023 09:26:25 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 15/17] dt-bindings: iommu: rockchip: Add Rockchip
 RK3588
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
References: <20231207075906.651771-1-andyshrk@163.com>
 <20231207080235.652719-1-andyshrk@163.com> <4012684.R56niFO833@diego>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <4012684.R56niFO833@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxOHlZIHkIdQh0dTk9MSx1VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c4c2ed0f4b24fkuuu817c3780197
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ky46Sww*HDw9S04JFhg2Sygp
	Fg0KChFVSlVKTEtJS0NOSkNNSEtLVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSU9DSDcG

Hi Heiko:

On 12/9/23 00:29, Heiko Stübner wrote:
> Am Donnerstag, 7. Dezember 2023, 09:02:35 CET schrieb Andy Yan:
>> From: Andy Yan <andy.yan@rock-chips.com>
>>
>> Add a Rockchip RK3588 compatible
>>
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> 
> In the next iteration, please split this out into a separate patch and send
> it to the iommu+dt maintainers.
> 
> Supporting the iommus on rk3588 can be realized separately and the
> patch needs to go through a separate tree anyway.

Okay, I will split this patch out of this vop2 series, does this mean that
I also need to split out the iommu dt node as a separate patch from current
PATCH16 ?
> 
> 
> Thanks
> Heiko
> 
> 
> 

