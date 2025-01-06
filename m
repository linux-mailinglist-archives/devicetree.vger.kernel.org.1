Return-Path: <devicetree+bounces-135766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DDDA0218D
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 10:15:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF9B03A2C39
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 09:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B485F1D618A;
	Mon,  6 Jan 2025 09:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="PiuwPbAq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m21472.qiye.163.com (mail-m21472.qiye.163.com [117.135.214.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E502B9CD;
	Mon,  6 Jan 2025 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.214.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736154897; cv=none; b=NPDP7uQRbJH5YeBNJfYfrF7wUuOakiV+DB2+Ps76vuNNXb6jgEMfj8AeUy0ACB86uQRK3Wq+tikPVDlQB9Gmxt4sDJeX9ULMWu2VtI3jZvFbX/ohLJsW2qR0hCFK1d8tYpNryQCAgnkA5N7OCoaktnDFQf3cDwWn5tlVTWqih58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736154897; c=relaxed/simple;
	bh=VaAkMHTJznuNva4jjH/yfPJvQGsY9/pJgEbxXheg2Us=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DgNzf66SRGKWT5qm6/7yrRXlwVMc9ovQLwlnux8BfwZZ70A0UjtHQq1n04zA5KaSnPRukEOxXxIV2Jw6J3//vnH6Yhq9Zqi1BKpXpGl7cVFvPqS8Uf6qVCnq0zK344KpDwaLcb0quZ41KFm9lBMUmvcJd7VZeDbZSw8JUoKoaxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=PiuwPbAq; arc=none smtp.client-ip=117.135.214.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 7d472a1c;
	Mon, 6 Jan 2025 17:09:36 +0800 (GMT+08:00)
Message-ID: <48e5f547-0f7a-406f-990e-6ec3e5df3e8f@rock-chips.com>
Date: Mon, 6 Jan 2025 17:09:36 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/17] phy: phy-rockchip-samsung-hdptx: Add the '_MASK'
 suffix to all registers
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-7-damon.ding@rock-chips.com>
 <3dgfsscqpvlqzajjeav6oneeyae2tpc46av7hadgon5uwqibg5@ubziqwztp62m>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <3dgfsscqpvlqzajjeav6oneeyae2tpc46av7hadgon5uwqibg5@ubziqwztp62m>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk0ZS1YaHUsfSkxOS0hJTE5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a943ae0763003a3kunm7d472a1c
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PxQ6SAw4CjITEx8wGBxKTEtK
	TA0aCyJVSlVKTEhNSk5PTkxDSkpNVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOQkI3Bg++
DKIM-Signature:a=rsa-sha256;
	b=PiuwPbAqxmEFBwTa2T0HrOX4XUXA3zPt+sglkv0JcB16IrLZpVbngO+jbHH4Mya55DrE/dTmA0yKZYELC6l/GAiO5N0hshCpCngbvtwiGZkY6IDqplB148jYLo69e1HURmXFLi3CgjIeYHJVE34Om3fHBpslXUaCrFqRCYWGLWU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=IOtYJ/4fuEb2AjwCiDYcEOfXLlyiZIOg+Et+T8SsFS0=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2024/12/30 20:34, Dmitry Baryshkov wrote:
> On Thu, Dec 26, 2024 at 02:33:02PM +0800, Damon Ding wrote:
>> Adding the '_MASK' suffix to all registers ensures consistency in the
>> naming convention for register macros throughout the file.
> 
> Nit: usually it would be "Add the '_MASK' suffix [...] in order to
> ensure consistency [...]".
> 

The commit msg will be fixed in next v5 patch series.

>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

Best regards
Damon

