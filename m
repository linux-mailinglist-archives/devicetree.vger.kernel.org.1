Return-Path: <devicetree+bounces-94317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 522DC954F86
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 19:05:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1B961F2307B
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 17:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0A401BF33D;
	Fri, 16 Aug 2024 17:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZDxZnYh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709C51BDA87;
	Fri, 16 Aug 2024 17:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723827940; cv=none; b=mXrgfSgzAgDGe7o4nYAQ7letMZMKe/q/9crZlpnlVJ3acvB3+6oB1wN3VRh3fsLOev+nMmcRjOMv33Em2td/0jXTmcOQahukdGJNolhrG6zErM7RnYyJDaCcJ4RFtwuRM04OLgbDwNLilmKG0KwwjoxS2q7xD3pUbi60eXlO/6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723827940; c=relaxed/simple;
	bh=TKvbI1GAEeItb2bEFwK/yASbak4bQTgxXpY2SIvi1DU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CZ8P1KZ/j68ey9OWs4bOcqKwl/VF8mX1hfeIlwAehWOU60jHfU5lHmLbKguiHlYaUxsEfhiTVpt8CBr8xXPV5TSZgw/+pCYMYsY1gzhEU6UHZpp/YuUoWJs5mAkOFoM5Nbz6XjVY5cPB6Ll/Nbk4zogpripmu8lGYPIOf3Oyebw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZDxZnYh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9296C32782;
	Fri, 16 Aug 2024 17:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723827940;
	bh=TKvbI1GAEeItb2bEFwK/yASbak4bQTgxXpY2SIvi1DU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=gZDxZnYhrb78J/hqA57WOJfo1+Dr08NPTYbnvgLhfkA6+9sAjqEcYIkkQ1z9FjdCZ
	 zaLcmaacYWaBF+mzuLUc7HKMQkbJri8pgw8wQCbTcSzz1gT+MghqhUazDTnfHxEeLU
	 UMefPPeouOulIMKPNdJoO57o6H6KIv4yru+q9m3SoEd18E8zL0sWrpRvZTAoEB+tSv
	 a8dwwqOq2CttymwE8VXN7agwheSuiJ/9VzGwJ87QvE/Kcsw06eyihkzMjaUFlXHwPg
	 0xGaLJj87Z01LhN3LPVJZC30oaxqSY6yFAcvD0zyoY4mDcMmYvKPftcTMHRM1oW+c1
	 6gOgigVK8pHcw==
Date: Fri, 16 Aug 2024 10:05:37 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Parthiban Veerasooran <Parthiban.Veerasooran@microchip.com>
Cc: <davem@davemloft.net>, <edumazet@google.com>, <pabeni@redhat.com>,
 <horms@kernel.org>, <saeedm@nvidia.com>, <anthony.l.nguyen@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, <andrew@lunn.ch>,
 <corbet@lwn.net>, <linux-doc@vger.kernel.org>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <horatiu.vultur@microchip.com>,
 <ruanjinjie@huawei.com>, <steen.hegelund@microchip.com>,
 <vladimir.oltean@nxp.com>, <masahiroy@kernel.org>, <alexanderduyck@fb.com>,
 <krzk+dt@kernel.org>, <robh@kernel.org>, <rdunlap@infradead.org>,
 <hkallweit1@gmail.com>, <linux@armlinux.org.uk>,
 <UNGLinuxDriver@microchip.com>, <Thorsten.Kummermehr@microchip.com>,
 <Pier.Beruto@onsemi.com>, <Selvamani.Rajagopal@onsemi.com>,
 <Nicolas.Ferre@microchip.com>, <benjamin.bigler@bernformulastudent.ch>,
 <linux@bigler.io>, <markku.vorne@kempower.com>
Subject: Re: [PATCH net-next v6 13/14] microchip: lan865x: add driver
 support for Microchip's LAN865X MAC-PHY
Message-ID: <20240816100537.7457ba58@kernel.org>
In-Reply-To: <20240812102611.489550-14-Parthiban.Veerasooran@microchip.com>
References: <20240812102611.489550-1-Parthiban.Veerasooran@microchip.com>
	<20240812102611.489550-14-Parthiban.Veerasooran@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 12 Aug 2024 15:56:10 +0530 Parthiban Veerasooran wrote:
> +static void
> +lan865x_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *info)
> +{
> +	strscpy(info->driver, DRV_NAME, sizeof(info->driver));
> +	strscpy(info->bus_info, dev_name(netdev->dev.parent),
> +		sizeof(info->bus_info));
> +}
> +

Could you check if deleting this function has any effect?
Core should fill in the basic info automatically, modern
drivers usually only have to fill in FW version, if at all.

If without the callback ethtool -i doesn't report the right
info, please make sure SET_NETDEV_DEV() gets called.


