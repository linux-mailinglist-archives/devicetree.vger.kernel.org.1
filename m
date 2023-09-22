Return-Path: <devicetree+bounces-2268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4427AA673
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 03:24:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AAC3B281779
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 01:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A35C38C;
	Fri, 22 Sep 2023 01:24:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16483377
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 01:23:59 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3897CF;
	Thu, 21 Sep 2023 18:23:57 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id BF08C24DBC0;
	Fri, 22 Sep 2023 09:23:48 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 22 Sep
 2023 09:23:48 +0800
Received: from [192.168.125.57] (113.72.146.252) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 22 Sep
 2023 09:23:47 +0800
Message-ID: <1d29eea8-9053-2250-cff1-68b16436ba36@starfivetech.com>
Date: Fri, 22 Sep 2023 09:23:47 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 08/19] PCI: plda: Add event interrupt codes and IRQ
 domain ops
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>, Conor Dooley <conor@kernel.org>
CC: Daire McNamara <daire.mcnamara@microchip.com>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-pci@vger.kernel.org>, =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
	<palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Philipp Zabel
	<p.zabel@pengutronix.de>, Mason Huo <mason.huo@starfivetech.com>, Leyfoon Tan
	<leyfoon.tan@starfivetech.com>, Kevin Xie <kevin.xie@starfivetech.com>
References: <20230921150814.GA330660@bhelgaas>
From: Minda Chen <minda.chen@starfivetech.com>
In-Reply-To: <20230921150814.GA330660@bhelgaas>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [113.72.146.252]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 2023/9/21 23:08, Bjorn Helgaas wrote:
> On Sat, Sep 16, 2023 at 01:11:29AM +0100, Conor Dooley wrote:
>> On Fri, Sep 15, 2023 at 06:22:32PM +0800, Minda Chen wrote:
>> > For PolarFire implements non-PLDA local interrupt events, most of
>> > event interrupt process codes can not be re-used. PLDA implements
>> > new codes and IRQ domain ops like PolarFire.
>> > 
>> > plda_get_events() adds a new IRQ num to event num mapping codes for
>> > PLDA local event except DMA engine interrupt events. The DMA engine
>> > interrupt events are implemented by vendors.
>> > 
>> > Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
>> 
>> Perhaps not important as they will go away in the next patch, but for
>> this patch the riscv patchwork stuff noticed:
>> drivers/pci/controller/plda/pcie-plda-host.c:114:36: warning: unused variable 'plda_evt_dom_ops' [-Wunused-const-variable]
>> drivers/pci/controller/plda/pcie-plda-host.c:118:36: warning: unused variable 'plda_event_ops' [-Wunused-const-variable]
> 
> Details like this *are* important because fixing them makes the
> individual patches more readable, thanks for noticing!
> 
> Bjorn
OK, I will solve this.

