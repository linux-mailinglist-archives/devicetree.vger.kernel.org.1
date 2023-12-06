Return-Path: <devicetree+bounces-22319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2018071DF
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:11:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B6BF0B20E25
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 14:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B183DB84;
	Wed,  6 Dec 2023 14:11:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D38B2D4D;
	Wed,  6 Dec 2023 06:11:42 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 2B5FD8118;
	Wed,  6 Dec 2023 22:11:34 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 6 Dec
 2023 22:11:34 +0800
Received: from [192.168.1.115] (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 6 Dec
 2023 22:11:33 +0800
Message-ID: <40cdd3c7-174e-4611-9ea6-22cb56d1f62b@starfivetech.com>
Date: Wed, 6 Dec 2023 22:11:33 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v3 5/6] drm/vs: Add hdmi driver
Content-Language: en-US
To: Maxime Ripard <mripard@kernel.org>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "airlied@gmail.com"
	<airlied@gmail.com>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, William Qiu
	<william.qiu@starfivetech.com>, Xingyu Wu <xingyu.wu@starfivetech.com>,
	"paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, "palmer@dabbelt.com"
	<palmer@dabbelt.com>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	Shengyang Chen <shengyang.chen@starfivetech.com>, Jack Zhu
	<jack.zhu@starfivetech.com>, Changhuang Liang
	<changhuang.liang@starfivetech.com>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "suijingfeng@loongson.cn"
	<suijingfeng@loongson.cn>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
 <20231204123315.28456-6-keith.zhao@starfivetech.com>
 <esetsiqgqpk35zue4c6aq7l6zn4kezhxkqqa7ompaz2vhdy3lr@4d5awfqgs2ss>
 <94a1f9fc-82fb-4a04-a44b-f9b20c2bdfdd@starfivetech.com>
 <abdl6kmighvpwojvafq443q7grn6w3abwpvw7zwbna4jvtsvjf@fa42rv46n2wh>
From: Keith Zhao <keith.zhao@starfivetech.com>
In-Reply-To: <abdl6kmighvpwojvafq443q7grn6w3abwpvw7zwbna4jvtsvjf@fa42rv46n2wh>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag



On 2023/12/6 20:56, Maxime Ripard wrote:
> On Wed, Dec 06, 2023 at 08:02:55PM +0800, Keith Zhao wrote:
>> >> +static const struct of_device_id starfive_hdmi_dt_ids[] = {
>> >> +	{ .compatible = "starfive,jh7110-inno-hdmi",},
>> > 
>> > So it's inno hdmi, just like Rockchip then?
>> > 
>> > This should be a common driver.
>>
>> Rockchip has a inno hdmi IP. and Starfive has a inno hdmi IP.
>> but the harewawre difference of them is big , it is not easy to use the common driver
>> maybe i need the inno hdmi version here to make a distinction
> 
> I just had a look at the rockchip header file: all the registers but the
> STARFIVE_* ones are identical.
> 
> There's no need to have two identical drivers then, please use the
> rockchip driver instead.
> 
> Maxime

ok, have a simple test , edid can get . i will continue 


