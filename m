Return-Path: <devicetree+bounces-9456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 387C57CD28D
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 05:11:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E825328154C
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 03:11:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 088A61FB8;
	Wed, 18 Oct 2023 03:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B664311C
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 03:11:46 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15C3110D;
	Tue, 17 Oct 2023 20:11:44 -0700 (PDT)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 68D3A24E277;
	Wed, 18 Oct 2023 11:11:41 +0800 (CST)
Received: from EXMBX073.cuchost.com (172.16.6.83) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 18 Oct
 2023 11:11:41 +0800
Received: from [192.168.1.218] (180.164.60.184) by EXMBX073.cuchost.com
 (172.16.6.83) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 18 Oct
 2023 11:11:40 +0800
Message-ID: <c255e215-b1ed-7397-0534-8d6ebda86350@starfivetech.com>
Date: Wed, 18 Oct 2023 11:11:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v10 0/8] Add StarFive Camera Subsystem driver
Content-Language: en-US
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
	<mchehab@kernel.org>, Robert Foss <rfoss@kernel.org>, Todor Tomov
	<todor.too@gmail.com>, <bryan.odonoghue@linaro.org>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	"Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>
CC: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-staging@lists.linux.dev>,
	<changhuang.liang@starfivetech.com>
References: <20231008085154.6757-1-jack.zhu@starfivetech.com>
 <98297bfc-ab81-4bb5-acc3-619fdf879276@xs4all.nl>
From: Jack Zhu <jack.zhu@starfivetech.com>
In-Reply-To: <98297bfc-ab81-4bb5-acc3-619fdf879276@xs4all.nl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX073.cuchost.com
 (172.16.6.83)
X-YovoleRuleAgent: yovoleflag
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 2023/10/16 19:40, Hans Verkuil wrote:
> Hi Jack,
> 
> On 08/10/2023 10:51, Jack Zhu wrote:
>> Hi,
>> 
>> This series is the v10 series that attempts to support the Camera Subsystem
>> found on StarFive JH7110 SoC.
>> 
>> This series is based on top of the master branch of media_stage repository,
>> which is tested with a v4l2-compliance compiled from the git repo
>> (git://linuxtv.org/v4l-utils.git).
> 
> I get one smatch warning:
> 
> drivers/staging/media/starfive/camss/stf-isp.c:122 isp_enum_mbus_code() warn: unsigned 'code->index' is never less than zero.
> 

Could you please tell me the code check command? This way I can use it to check
my next commit.

> And I also notice that there is no TODO file: staging drivers should have a
> TODO file explaining what needs to be done to get them out of staging.
> 

OK, I'll add it to my next commit. I previously misunderstood that it was submitted
when moving out of staging.

> I'm curious to know that as well :-)
> 
> It looks like there is a lot of additional development that can be done, since
> most of the ISP parameters appear to be hardcoded.
> 

Part is the module initialization configuration. In the next stage, we will use
incremental development to implement 3A functions.

-- 
Regards,

Jack Zhu

