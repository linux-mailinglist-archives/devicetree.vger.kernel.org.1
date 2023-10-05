Return-Path: <devicetree+bounces-6159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F7E7BA0BF
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:43:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C86911C2099D
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F9072AB59;
	Thu,  5 Oct 2023 14:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="0fcywv3o"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87FD02AB44;
	Thu,  5 Oct 2023 14:43:37 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EED518C17;
	Thu,  5 Oct 2023 07:41:22 -0700 (PDT)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3959P2ic025839;
	Thu, 5 Oct 2023 13:21:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=oOAMUa8QHt1EayBhxponDpCbVvi1SUCV24Wc/HHeOKY=; b=0f
	cywv3obWAgJQBYEXI4/dgQLqEjH1oy533VfjoI+gYBgTLtAf6qFRJVxNNKjFKepR
	8zzC8g/Y9YI/KFHVM5G6vxtuYZz4V4S1Q8t6GRCzrtvc0nK5XTR4giRrvrsqHR7I
	EI3F+rNwk1bq353Ky6z4CkrgW0h8eWolja6fQm4hQ+ABqyXKw+MJwLj4JihHcGKx
	KrG+2lVhytLQNUjcpZT1Eg4n6FkpEv0tH1OoLvMDEVig9Up2v+fKZejUBs30BABs
	a7/KYwl4PqvPl7fvK4DvTu9mp5TipcT9JuOIPYDZz3YsYl8cYvMwullXtOyEEyrQ
	G9TgL9qXzaRhvIALSGLg==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3thtg7gg7j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Oct 2023 13:21:43 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 21D3510005C;
	Thu,  5 Oct 2023 13:21:41 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CBA6423C695;
	Thu,  5 Oct 2023 13:21:41 +0200 (CEST)
Received: from [10.252.31.76] (10.252.31.76) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 5 Oct
 2023 13:21:38 +0200
Message-ID: <c8bc893c-cb86-6de5-4346-fe48be6ebe86@foss.st.com>
Date: Thu, 5 Oct 2023 13:21:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 08/12] net: ethernet: stmmac: stm32: support the
 phy-supply regulator binding
Content-Language: en-US
To: Andrew Lunn <andrew@lunn.ch>
CC: "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet
	<edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni
	<pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Jose Abreu <joabreu@synopsys.com>, Liam Girdwood <lgirdwood@gmail.com>,
        Mark
 Brown <broonie@kernel.org>, <netdev@vger.kernel.org>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20230928122427.313271-1-christophe.roullier@foss.st.com>
 <20230928122427.313271-9-christophe.roullier@foss.st.com>
 <12332a87-e8c3-4cf3-849a-080e4e3f4521@lunn.ch>
From: Christophe ROULLIER <christophe.roullier@foss.st.com>
In-Reply-To: <12332a87-e8c3-4cf3-849a-080e4e3f4521@lunn.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.252.31.76]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-05_08,2023-10-05_01,2023-05-22_02
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On 9/28/23 19:53, Andrew Lunn wrote:
>> +static int phy_power_on(struct stm32_dwmac *bsp_priv, bool enable)
> I find this function name confusing, since 50% of the time it does not
> actually power the PHY on. You never call it with anything other than
> a static true/false value. So it might was well be two functions,
> phy_power_on() and phy_power_off().

Hi,

I wanted to keep same implementation of all others Ethernet glues 
(dwmac-rk.c ...) to be consistent.

>> +{
>> +	int ret;
>> +	struct device *dev = bsp_priv->dev;
>> +
>> +	if (!bsp_priv->regulator)
>> +		return 0;
>> +
>> +	if (enable) {
>> +		ret = regulator_enable(bsp_priv->regulator);
>> +		if (ret)
>> +			dev_err(dev, "fail to enable phy-supply\n");
> Not all PHYs are usable in 0 picoseconds. You probably want a delay
> here. Otherwise the first few accesses to it might not work.
>
>        Andrew

You're right I will add a delay.

Thanks

Christophe


