Return-Path: <devicetree+bounces-154434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4202EA5014F
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 15:05:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 469403A4519
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 14:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B42A24A05D;
	Wed,  5 Mar 2025 14:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Z8vTH8nB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155110.qiye.163.com (mail-m155110.qiye.163.com [101.71.155.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6424224397B
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 14:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741183503; cv=none; b=PRC8nE8MFvYCoQriY7dYCx82x1IJkxYbz2PDVrzfbQlj7UrR8STGUSPem72v8wp/TMxMUa1cYwqjmewAEbHmIRROfipLXlK9UFrkRmBLneW4ODoP0ASJO+AKya0lvYuNm58HsIoWrJLrpGbBgknFVDjrajnQsQQn27LvuUFWo68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741183503; c=relaxed/simple;
	bh=WrRMrrA7NWFSOAfn0s+ja57FyW+oyByUaE/gIM6BAJ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XG0I/OLiX+ss1xbpFV9GhrZ1xkuKqRMagdgPTZpHCFpJGK+I6Xg2v8DJV2JWkzc6ls8QL85CBoaNDoTjhHtilbZ/bLVrSd7BnN7WkjVjKsRnZbk8TOERUSd6Sitgy0Hoe3wtiIW0J+AkXdBP9x4qWsPIrd60ZRUnJ/Cnajntdr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Z8vTH8nB; arc=none smtp.client-ip=101.71.155.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [192.168.60.65] (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTP id d09bf36e;
	Wed, 5 Mar 2025 20:49:18 +0800 (GMT+08:00)
Message-ID: <f96f7559-0b07-4c7f-a8e7-64dbfa58bee8@rock-chips.com>
Date: Wed, 5 Mar 2025 20:49:16 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Enable ufshc on RK3576 evb1 board
To: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <1741148307-137177-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <1741148307-137177-1-git-send-email-shawn.lin@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCHUhPVh1DTE5JTU9PHUMeQ1YVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0lCQ0NMVUpLS1
	VLWQY+
X-HM-Tid: 0a95665a734003afkunmd09bf36e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mj46MTo*HTJNDD8ZMylLOCoy
	ETEKCVZVSlVKTE9KSkxDQk5CQ0hIVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUxPSzcG
DKIM-Signature:a=rsa-sha256;
	b=Z8vTH8nB1udbnV/pIWQuDaWLsFnPO3Pqj8rZADQ0MiDIh7uw6YyXOsKVhTjRuSL7rCjDwTDvN0KffHT3/zyLSU1ud3pRlXQQgvC8L/yoni/Ei0xAI/hgLNT7SotofpS/Y2XOW+yYXb71Ot0pmlJ4bNgdh4QGhqNyuMmalAEtbkM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7sazXo0j8u8UYXyOl1oOD05+MKK9ViROFc169W0yHfQ=;
	h=date:mime-version:subject:message-id:from;


On 2025/3/5 12:18, Shawn Lin wrote:
> RK3576 evb1 board supports UFS, so enable it.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
>   arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
> index 782ca00..5412c60 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
> @@ -711,6 +711,10 @@
>   	status = "okay";
>   };
>   
> +&ufshc {
> +	status = "okay";
> +};

This node suppose to after the uart0.


Thanks,
- Kever
> +
>   &uart0 {
>   	status = "okay";
>   };

