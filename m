Return-Path: <devicetree+bounces-8505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2187F7C8660
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:06:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F8F21C209F1
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8757714F6A;
	Fri, 13 Oct 2023 13:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="TlUCbKx5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACF1E554
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 13:06:47 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 138A3BE;
	Fri, 13 Oct 2023 06:06:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hSqnQn0LUjWSF2GwyvyRPPEzjDygn5Izkey2RDxNxnmex5AeDS5eX2eV6Oyo23trOXhGXtlftAHAMp5u+QVx1j4ZzR0wjLnh0qf+BUFwYLwQgDg2xb5AIgY1D1wbnZlaS16dlQpHkGvGWwVTvcHZ7tLJwbE6YaSgRyf5I0AF3yvBJ/gyf725eWk/zDtBJPCQ4UzYOjX6OkwD8oEuttyySdcv5uygEKfEapQnoluNgw1f1ohRPxrNmuXGkJxGBKGRDoYPd7HJgXVQjsf6BFdh+Yv2Yxsqx50GPzoqofq4kKBogEuS7ZGef1o2zSJZ9S2LRlxW4hsc3UHnnEmY/WDhCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p5c0ftwj76X1CucrQpdsI1zZXNPGhfs+yjqk6hn9JJE=;
 b=GujuU7bM7de6AUtnnjWhG4v+YIcRnl3re5o6bEuLj9/Q/ggByMigScpnG+VldXwHMsFP6F7pTzM2h0XHTUwLvUv4Qif/ONd/tkvKOJrKF97epqhmz1Oa06DQa75/8E4THuexcjAabj0Ozy1y4NyaeSgi5iYydlt8Kjj9oSOmgCj1IXpMo99Gl3+2xAtnEIq+sNJpUrdoIkOagINphcobgaC/foWvUpC55PpXhHtm45P8rSJZIC2wz+5pdSDSLtwO7SCQ7iulcNqSC4Zm7yRcqNeUlXwkHYFKoK2HdeyQJ+CjzcYmtOQuTUtvQWnBELim/DPtPFGcbjgKXv8ltBCZ1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p5c0ftwj76X1CucrQpdsI1zZXNPGhfs+yjqk6hn9JJE=;
 b=TlUCbKx5Yq6cL1gPQbeNkHm472DOzOGTyiW5TnsACxknV5Sp/FCxTaKW7A0jKrQJStT1JnxYBbQrGmleN8Jrx0fjn2qbXSvc4LKopASMeqedvMYXgJEbJC3jRMqpe+vWmAs8YlHsOlDRB9zBOl0C8rwzPLBxVWl/sAngAHD6TTM=
Received: from DS7PR03CA0207.namprd03.prod.outlook.com (2603:10b6:5:3b6::32)
 by PH8PR12MB8607.namprd12.prod.outlook.com (2603:10b6:510:1cf::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Fri, 13 Oct
 2023 13:06:41 +0000
Received: from DS2PEPF0000343E.namprd02.prod.outlook.com
 (2603:10b6:5:3b6:cafe::44) by DS7PR03CA0207.outlook.office365.com
 (2603:10b6:5:3b6::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.30 via Frontend
 Transport; Fri, 13 Oct 2023 13:06:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 DS2PEPF0000343E.mail.protection.outlook.com (10.167.18.41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6838.22 via Frontend Transport; Fri, 13 Oct 2023 13:06:39 +0000
Received: from [192.168.137.2] (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 13 Oct
 2023 08:06:36 -0500
Message-ID: <edbd1434-c05b-461f-96e5-f57775dcf915@amd.com>
Date: Fri, 13 Oct 2023 15:06:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: nvmem: Convert xlnx,zynqmp-nvmem.txt to
 yaml
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "Praveen Teja
 Kundanala" <praveen.teja.kundanala@amd.com>,
	<srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <linux-kernel@vger.kernel.org>
References: <20231013101450.573-1-praveen.teja.kundanala@amd.com>
 <20231013101450.573-3-praveen.teja.kundanala@amd.com>
 <02d3fa42-75a3-4f4f-ade6-204c8146d694@linaro.org>
 <91d61e1a-abb0-4b31-aa22-aff72d582ebe@amd.com>
 <b72e6fe0-2ba4-47ac-80a5-94ee4101ad2b@linaro.org>
 <013e44c6-45f5-44c1-94b3-536955fae78f@amd.com>
 <b5a2d37b-168c-4cc9-9dc0-68f131cdf3ad@linaro.org>
 <5a3b6efe-5884-4727-a1e1-e9b8b0658523@amd.com>
 <209334cd-c922-4bd6-b116-83297c7e8b79@linaro.org>
From: Michal Simek <michal.simek@amd.com>
Autocrypt: addr=michal.simek@amd.com; keydata=
 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
 3i3l5DA=
In-Reply-To: <209334cd-c922-4bd6-b116-83297c7e8b79@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF0000343E:EE_|PH8PR12MB8607:EE_
X-MS-Office365-Filtering-Correlation-Id: 54eed57b-9bd9-4b2a-3940-08dbcbed3d18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	ubzB+zsHYMgNfUWRh2BB/8yVtyVdxPg+3JteitV+KIjS3THx9jZpQFqVwPng6D6K8GGueuqPCNW9JwOwOS53IcMifgFPMCRouZpMKU6Iu4U/0qisFHVMEcgL1q63FCuOHxZd+j5sIZQf7B1LkBSoq2LSdqlC1/aduF9SazGN/WwrwSo2ixHPlQkpTt6pgZJj4UPfMdCaaV1lVl/J4LBGPZ0vB5RsgY6bpZztY0ZvW9jwBxpJ7C3B8oVzAnt0KV8tGsg2fQvqouZDsAMrJE9JNSGYQAoQWPFi0HNY6y6j14Aq3dl2VCLcOtBHaO+9HOH6WXK43kHLDe7k/1hTNvXaLqRQ5mU4H+rHpIplS05OTp4MaCEEBS3cyJertUF4fKZgTt2hSKJDWkGHCD+/HjwNCTbDNWKFhYl1EiJ5wmQ9Ttnnisq6n9KdTYY7SyRftlbjPLo8wn5DIsTo3xqnRT3rUuNWT3EWQZMp6h4xfpv8xG2ULT10odaP3dyf4nNyK8/ZqQINw5JsfnbztGDDB3MO+5W9xXglPvmeezqeof7fiPBLTnS3tGfghfRGWi/xIyNHxAM4CoPIerstBZxqpfNv5+NQSWQ0LtWlwYtDn8Iv9Z+Fp2RXfivBHQQYwzm6n6O04/hwuXRCuyRfv65RuE9lks1q0o25tU6zsRPCWzlvoNIpTTvx94dmyIpTeO+XbDU5/WYH1ZeLRndlwaqq4/lBVRr3X5xjEWAo49vW2W1UblImK8KOqTscZZISEn89jP/eZMitqlT1OyknhVFtBP+nA8t+Or84IBpHlUiOjRjYWSY=
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(376002)(396003)(39860400002)(136003)(346002)(230922051799003)(82310400011)(64100799003)(1800799009)(186009)(451199024)(40470700004)(36840700001)(46966006)(26005)(16526019)(336012)(53546011)(83380400001)(2616005)(426003)(31686004)(31696002)(47076005)(966005)(478600001)(40480700001)(36756003)(41300700001)(8676002)(4326008)(5660300002)(81166007)(82740400003)(2906002)(356005)(86362001)(36860700001)(44832011)(16576012)(40460700003)(70586007)(8936002)(110136005)(316002)(70206006)(43740500002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 13:06:39.4962
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 54eed57b-9bd9-4b2a-3940-08dbcbed3d18
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS2PEPF0000343E.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB8607
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/13/23 14:54, Krzysztof Kozlowski wrote:
> On 13/10/2023 14:08, Michal Simek wrote:
>>
>>
>> On 10/13/23 13:58, Krzysztof Kozlowski wrote:
>>> On 13/10/2023 13:51, Michal Simek wrote:
>>>>
>>>>
>>>> On 10/13/23 13:46, Krzysztof Kozlowski wrote:
>>>>> On 13/10/2023 13:22, Michal Simek wrote:
>>>>>>>
>>>>>>>> +
>>>>>>>> +required:
>>>>>>>> +  - compatible
>>>>>>>
>>>>>>> required: block goes after patternProperties: block
>>>>>>>
>>>>>>>> +
>>>>>>>> +patternProperties:
>>>>>>>> +  "^soc_revision@0$":
>>>>>>>
>>>>>>> Why do you define individual memory cells? Is this part of a binding?
>>>>>>> IOW, OS/Linux requires this?
>>>>>>
>>>>>> nvmem has in kernel interface where you can reference to nodes. nvmem_cell_get()
>>>>>> calls. It means you should be able to describe internal layout that's why names
>>>>>> are used. And address in name is there because of reg property is used to
>>>>>> describe base offset and size.
>>>>>
>>>>> That's not really what I am asking. Why internal layout of memory must
>>>>> be part of the bindings?
>>>>
>>>> It doesn't need to be but offsets are hardcoded inside the driver itself and
>>>> they can't be different.
>>>
>>> Hm, where? I opened drivers/nvmem/zynqmp_nvmem.c and I do not see any
>>> hard-coded offsets.
>>
>> Current driver supports only soc revision from offset 0.
>> But if you look at 5/5 you need to define offsets where information is present.
>> +#define SOC_VERSION_OFFSET	0x0
>> +#define EFUSE_START_OFFSET	0xC
>> +#define EFUSE_END_OFFSET	0xFC
>> +#define EFUSE_PUF_START_OFFSET	0x100
>> +#define EFUSE_PUF_MID_OFFSET	0x140
>> +#define EFUSE_PUF_END_OFFSET	0x17F
> 
> There is nothing like this in existing driver, so the argument that "I
> am adding this to the binding during conversion because driver needs it"
> is not true. Conversion is only a conversion.

Conversion in 2/5 is adding only soc revision which is already there. It is 
starting from 0 and world size is 1. And 0 is not listed because that's start 
all the time.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/nvmem/zynqmp_nvmem.c?h=v6.6-rc5#n39

And soc revision was also listed in origin binding example.

> Now, if you want to add something new to the binding because of new
> driver changes, that's separate topic.

Functionality in firmware is there for quite a long time but as I said I am fine 
if map is not going to be inside dt binding spec.

> And since it is new change in the driver I can comment: please don't.
> Your nvmem driver should not depend on it. nvmem is only the provider.

Let's see what Srinivas says about implementation. If driver should be just 
provider then pretty much current driver should be completely rewritten to 
different style. I mean to have just transport via SMCs with offset/size and 
then providing functionality in firmware.

Thanks,
Michal


