Return-Path: <devicetree+bounces-31884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D29A882CEC7
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 22:30:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 873471F21D68
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 21:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37B65DF54;
	Sat, 13 Jan 2024 21:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="P2LG5Wuu"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B87D1642A
	for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 21:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 3275F8309D;
	Sat, 13 Jan 2024 22:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1705181439;
	bh=p4DdrnviVNww4htbvzuJd4xnTcr7As2ZKhdQ/lian8U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=P2LG5WuuUl3oc6oxRd+zTTif6KFAzcdifqJ4VS+pe59XEp5ufs4LJ4kPsTCqL9GzK
	 C6vl0bhKaOy9zLr32SoaXTJTiGQKiKVRr+yS5t5/cM2pa4Bq7Jjf14Orj1PZ5QuFRj
	 LNFvApJo+3G4Jr0S7ph1UYRHD6w5NfZqORrm+EP1LgcPL8Aj/7yP3jh1fueWwbbRfx
	 3VP6br3JElcAYFAmUyCJR+fKtmb/W+Y5B3weWAiKjBAuiXEjq60LVPoqk3E20TBsdJ
	 tyWYlAONNXDSLjzPzt9M9WW8Zm11YLY5cfy+jOd47/eBAiH76cET3sE/0OyIDsxaOj
	 6BAh6D5zvFiYg==
Message-ID: <623c294a-5c53-4e01-acbf-104acc180e14@denx.de>
Date: Sat, 13 Jan 2024 22:30:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: imx8mp-dhcom-pdk3: Describe the USB-C
 connector
To: Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>
Cc: cw00.choi@samsung.com, myungjoo.ham@samsung.com, robh+dt@kernel.org,
 krzysztof.kozlowski@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, hvilleneuve@dimonoff.com,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
References: <20231212174847.759164-1-festevam@gmail.com>
 <20231212174847.759164-3-festevam@gmail.com> <20231214030732.GH270430@dragon>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20231214030732.GH270430@dragon>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 12/14/23 04:07, Shawn Guo wrote:
> On Tue, Dec 12, 2023 at 02:48:47PM -0300, Fabio Estevam wrote:
>> From: Fabio Estevam <festevam@denx.de>
>>
>> Describe the PTN5150 USB-C connector to improve the devicetree description
>> and fix the following dt-schema warning:
>>
>> imx8mp-dhcom-pdk3.dtb: typec@3d: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
>> 	from schema $id: http://devicetree.org/schemas/extcon/extcon-ptn5150.yaml#
>> 	
>> Signed-off-by: Fabio Estevam <festevam@denx.de>
> 
> Applied, thanks!

This patch breaks USB-C port on this board.

If I plug in USB-C storage device, it is not detected. If I revert this 
patch, it is detected.

Please drop this patch for now.

