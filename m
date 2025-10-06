Return-Path: <devicetree+bounces-223859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B53BBE5E9
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 16:37:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 388B54EB72A
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 14:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0ED42D660B;
	Mon,  6 Oct 2025 14:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="dZVVz3OS"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C472D47F4
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 14:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759761448; cv=none; b=grZQaMggIACKuNXIJWrd7X2c8osLkqAVv9bUPadYLAEX4+f7xxUIxCmwQbQiuviYmlnx3B7JYCBzZTXD7hy++7MRsIeovLN1D57EZ8KxtMIlfBzy2TpUttt70ns4IUFd0I3oyRKGQdDLx7cKzW2zw8fLh1dpMgViQua8YDksvkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759761448; c=relaxed/simple;
	bh=965fpdMNqDc9qXsdodgIbDetPm9hiNy6hU7M65rSIJ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YrUMjnsTdtdEtlewShPWRx4j4d4Y8dgCg6dZ8zPxQZaiIQFyjkfLIJY9cpmEag/aobXqq10XuGEdHCx5etwBWFDPWxQZkwVTyILHEbj/DCfZNePdZIohGGuXpsMyVaIVbizxW7pJv1ceneEu25HOMx8a5RMAD4iMXZpfRk7xjEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=dZVVz3OS; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1759761445;
	bh=965fpdMNqDc9qXsdodgIbDetPm9hiNy6hU7M65rSIJ4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dZVVz3OSKmAE5sdoGjfFSiOTeg7BWjiUgxQZBhyf/GNNpdrsD7fyzR8yLkKWtp0zK
	 ghkYY8i7GYULu+kG4MGNuhLQF6C/nXVgbSs94NqK03l/yapUVtBt/rDY1JJ6xyVAeZ
	 eqnVo1JWSY1w7RwaJiP8AMKo+rdGj9YNAclznRUXYAAk3aAF8U80sloao+sI/ZEDGh
	 7kZ0xAXh72punO72ZKcZBF6blWtt57wnFv1W4PVO1xDpBC25u0lXCavxIEkAI1i6eY
	 x2teTu+o9MPCAcQIfAOM3E3F9GOu84ZMPKClQXD6pbPknZgAEkr/tXC4CQyHW2jP4M
	 ojq45MdM4z35Q==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 54EB117E0AC3;
	Mon,  6 Oct 2025 16:37:24 +0200 (CEST)
Message-ID: <8706f168-5598-4f91-9ad0-fdbd04b410b7@collabora.com>
Date: Mon, 6 Oct 2025 17:37:23 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] drm/rockchip: dw_hdmi_qp: Improve error handling
 with dev_err_probe()
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Alexey Charkov <alchark@gmail.com>, Algea Cao <algea.cao@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Cenk Uluisik <cenk.uluisik@googlemail.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Ripard
 <mripard@kernel.org>, Muhammed Efe Cetin <efectn@6tel.net>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <20251005235542.1017-3-laurent.pinchart@ideasonboard.com>
 <gai5hfvu6xbbqpk4mu3i6nejolijeokjy3mkzca5xwzb4xwic7@jmee36svmwnb>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <gai5hfvu6xbbqpk4mu3i6nejolijeokjy3mkzca5xwzb4xwic7@jmee36svmwnb>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Dmitry,

On 10/6/25 3:02 PM, Dmitry Baryshkov wrote:
> On Mon, Oct 06, 2025 at 02:55:38AM +0300, Laurent Pinchart wrote:
>> From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>
>> The error handling in dw_hdmi_qp_rockchip_bind() is quite inconsistent,
>> i.e. in some cases the error code is not included in the message, while
>> in some other cases there is no check for -EPROBE_DEFER.
>>
>> Since this is part of the probe path, address the aforementioned issues
>> by switching to dev_err_probe(), which also reduces the code a bit.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>> ---
>>  .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 62 +++++++------------
>>  1 file changed, 24 insertions(+), 38 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
>> index 7d531b6f4c09..4e7794aa2dde 100644
>> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
>> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
>> @@ -457,10 +457,8 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
>>  		return -ENODEV;
>>  
>>  	if (!cfg->ctrl_ops || !cfg->ctrl_ops->io_init ||
>> -	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->hardirq_callback) {
>> -		dev_err(dev, "Missing platform ctrl ops\n");
>> -		return -ENODEV;
>> -	}
>> +	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->hardirq_callback)
>> +		return dev_err_probe(dev, -ENODEV, "Missing platform ctrl ops\n");
> 
> This only makes sense for the purpose of unification.

Right, as mentioned in the commit description, the intention was to ensure
consistent error handling across the probe path rather than limiting the scope
to -EPROBE_DEFER exclusively.

Thanks,
Cristian

