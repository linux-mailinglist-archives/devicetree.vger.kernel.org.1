Return-Path: <devicetree+bounces-22458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D177980774C
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 19:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00CDE1C20A9A
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 18:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F9A6E2DA;
	Wed,  6 Dec 2023 18:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="k8w6YC0J"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1nam02on2066.outbound.protection.outlook.com [40.107.96.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 379CFD42;
	Wed,  6 Dec 2023 10:06:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B0O2gNRZ6mRlpMEBNfgg9HaUJ9FKFifTrf+aUZQKE2nXn4UvQ1wCl4rO4XVZXkrNsm7SUbDwipWhGGMpRri/pUKZlWAPPsAL8Hxlk23k97hyp74HFK79O3pRMdThy45V3mxeJG6dkPEd5DqIqEvVFVtZyVLr8f/RFXdJ+vBArVQDvaITpSbxje3LxacYOWAEeEq598xCFyMf1f7kFg/yg6PNiQRIgzluu31Mkikr9BBAztZlhgliucAPaE9Kgpc/B3He/SS/v59lHfv9uMk4OO5cY4HY4/zGvrTMbMYagl/MZv8XobNYk9ZSxSPn843DN86EL7YjAkX4pjhNDcGDGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G2NhjbzdDQSYRmh+l0jW3eNL3NUpqq+GSrHvZZJaP+U=;
 b=BgO/lMzlpKtOLZEBz3oUw7mvW6ZpxwmAJ7v3pP7o/ELizTVWHH3BV3N75swDKpTEy7SIU7h0GfgdQNkanSTkbzvgdi0P3u8oTARWY6C48VkG9sj4bsrAR7J0/9dz2kpDAZWDPz6j9Jr+UVcsu2LJY7SLCfaYEgVDd1cjj5+phlKYMQnLce1bWoxYSqLg9GWGgSvtRv6xTKgXThpBEl2gbu6oYFkrmXt/4TzxadG3pbHJj1PVOtvpZ1+HeFKqdebVvDZhn71UgCb4yYwlNWwJXGoyRElKG66uWGkgsOL6gRcvffHYjSh/q0Xp0DdMs4TMGPtdvn+jIWQJanTPYdll1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G2NhjbzdDQSYRmh+l0jW3eNL3NUpqq+GSrHvZZJaP+U=;
 b=k8w6YC0JrF4r0C8MkUoG7TB/ZpndRneDG1Oaf6CblE0wKtXpXN/5aBdAUJDcWq9463eXoNQoXsdmpLWFVxbYpJ3BQMogYt59IdcSRzAO3LG6IjM1VY9MXKUx+CXFy1xWtyZxFHrRShVJMLeegW0gqMTmHw/Itv6xMWfFMcjhAzc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BY5PR12MB3683.namprd12.prod.outlook.com (2603:10b6:a03:1a5::16)
 by SJ2PR12MB8943.namprd12.prod.outlook.com (2603:10b6:a03:547::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Wed, 6 Dec
 2023 18:06:48 +0000
Received: from BY5PR12MB3683.namprd12.prod.outlook.com
 ([fe80::dacc:66a0:6923:a5e]) by BY5PR12MB3683.namprd12.prod.outlook.com
 ([fe80::dacc:66a0:6923:a5e%4]) with mapi id 15.20.7068.025; Wed, 6 Dec 2023
 18:06:48 +0000
Message-ID: <2e24d9be-be10-4f80-b3af-c3e0ed003e7b@amd.com>
Date: Wed, 6 Dec 2023 12:06:45 -0600
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v7 3/4] remoteproc: zynqmp: add pm domains support
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: andersson@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 michal.simek@amd.com, ben.levinsky@amd.com,
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231117174238.1876655-1-tanmay.shah@amd.com>
 <20231117174238.1876655-4-tanmay.shah@amd.com> <ZV02P3bHEhPLQHBo@p14s>
 <93487d3c-c324-4b9b-8b25-0b4ea52237b4@amd.com> <ZV+V6V2sEWgsqngk@p14s>
 <a75b22c1-66e3-4fce-ae64-de79e73f3cfa@amd.com> <ZWdwl/8LC2Nn+vCq@p14s>
 <ea2edc6e-6655-47f8-8b6d-242f5a0ef804@amd.com>
 <CANLsYkzJgZRSz5=nzW+ATmBKemoSd3ybhKuz1CJy33hftAGiqw@mail.gmail.com>
Content-Language: en-US
From: Tanmay Shah <tanmay.shah@amd.com>
In-Reply-To: <CANLsYkzJgZRSz5=nzW+ATmBKemoSd3ybhKuz1CJy33hftAGiqw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0081.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::26) To BY5PR12MB3683.namprd12.prod.outlook.com
 (2603:10b6:a03:1a5::16)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR12MB3683:EE_|SJ2PR12MB8943:EE_
X-MS-Office365-Filtering-Correlation-Id: 027e895c-639f-4517-32d9-08dbf6861d38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	GRBvy9hcLEnLqFX/gvS6OmuPQkxHb5Xk3PwxaP7ET+v4wsZJPpfZXt96jz6XvhrkvnbVjMynT03YzyAIughn4wMdw2Qtpv2c9UXfF5+rz0fLlwkfGxqkMCDA4ffZqmwkAs8EhyKCVUb6IWPvuLEqydfiZD2Hy3TWPzR8sHBVDuyncLjdeXpb+SfSNjEohdU78uaLqaFvQSceaeL2/E2GOCnv5YWTvsILSCqRw0IpFRlcnKqGMFSGy9xMK2AW174cF7NTaJ0G80jtRSIoV5CoI6c+z+BRY/dYlIHznMXZe/aQPJr0IDU3pYlY+XWXF/36PPzkXnSqHP893l4Hp5eiOson1W4uHvcQ2rR2e+iuvmAeNnkE+8WTbQYjMQLWSSJ3bx8C3DDMGR7BrEQ/7ROA+yxp3qvaFbUPKoRJ2wOolGDLCqXy2QFs6XZgBTlNOlpsu1/8FDhNTcZK1O3LZC3t9FLS0sHdKJc5BVuM6eQS5qh10ZwahxsF6DUD+FLfkCaX7VlGCyz6MNzbw88jzayCu20Qn89M17M1uSOMMtzJZZuU7a70McKDX06zAFbKWBVM8g77hvV5N2zXRPZs5V8JeZ9iM8bPcupG4MgXmdhDjpmAqHGo+LsuV++tefFeUpk3e9i5848j+7tATWjYM3RMAw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR12MB3683.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(136003)(366004)(396003)(346002)(376002)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(38100700002)(2616005)(44832011)(4326008)(8676002)(8936002)(6512007)(6506007)(31686004)(83380400001)(53546011)(26005)(6666004)(6486002)(478600001)(6916009)(66476007)(316002)(66556008)(66946007)(66899024)(2906002)(30864003)(31696002)(36756003)(41300700001)(86362001)(5660300002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZmhRZkNkTERGbUtIODdPTWZqdTUyMFRoYlF0OGZNeWoxb1NsZG5rNW5IRitm?=
 =?utf-8?B?Zk5FZVhIbU9FQ3laSnp2N3lCWjJ1T0VRcDVvVWhMZEJqRlpOMlljaGgyOHNM?=
 =?utf-8?B?NmxDdkEveWJBWk5JTENtaDZQOGpYT2xpSDJmdWRCWjNETTFTQ20rQXltMURu?=
 =?utf-8?B?THh2MFBWWVR3OGdVNzhKb2FzYUIwZzM4Uy9TTGFXUlFkc09xU3FNemxKWjJQ?=
 =?utf-8?B?cG1iZ2NCYkJaYWtlaytLWU1sVlROMXFqRFFIL3ArZ1cwemNYV0hkbXRRODJE?=
 =?utf-8?B?dzhxSTRIL2dIcjMzWGJaR2hwblVGRmhXMENsMHc3Vi8wQ3lQVHRhK21xS3lC?=
 =?utf-8?B?UlhwcjRiNzhqTWRPQ3hDdnd3cktqaVcxb0RqT2tMczYwYkY5UUtQbFhBdE9H?=
 =?utf-8?B?ZWRCTFV5anFVSmJ4WDk1cHo4aytFVG9XcjNWYUdWTUFZOTRtc3MzOWJKaW9V?=
 =?utf-8?B?ajF5bkh3OS8vZXhSMThVaVZZak1EZWJvYWNnQWRJb1RTQXNRUXhTZGNKb0g3?=
 =?utf-8?B?MjJpbzVBSENtQVJTYkRKWitna2FHWWUwdmx1UkNycHc1VU9lQXFlRkwvRnE1?=
 =?utf-8?B?SUlLL3NLbWE0ZUxUQ1QwRGdyRTdPZEVTbXh0Um5DalZlY1JtNTVuaUI1T0dv?=
 =?utf-8?B?MHNjTSt0UThRd3FHYUM1bEdpczlsN2VHQmlkckdsTUl5Q2h1V2xIVlJRTzBK?=
 =?utf-8?B?d1MydStOVkpOSnU4YjBmNWJ1YTh3dm9oZnA0ZnFuR1lSUFZNWDNRZ0pia20w?=
 =?utf-8?B?TkozcVVqV3lna2NpVllXVmhXbkhlMkcxbTl4VWFJSU9xc1dTVjJ5SHN1amNx?=
 =?utf-8?B?OTRuMmpsWG43TUFYR0ZCMmZwc3dhOW9CbDArVzZwT215QWh6OHNhVFZCSFhK?=
 =?utf-8?B?ODZaNEphbVp5TGdXL0dPNGxJRnkwZnRIRmphM1owNWRWdDZjY252ZUVuRjZo?=
 =?utf-8?B?QVFlZ1VwSEZxdHd0OXN4bzhwRVJrM3hpcC9rL2M1bEkwMUVhNFc1dzV3TExK?=
 =?utf-8?B?T2hMd0FtOWJiWnlHcUNLV3RlK3BzcXNyWGhVV1NpRmJiTmd5Q05UOWgydElB?=
 =?utf-8?B?NVBtMEJzcUN3d1NuSGNuNDBRMDZvZTY3M1pwQTdHaG5IekJEdUtIa3JoOFZV?=
 =?utf-8?B?cmplZS8vako4UmRuNzROalNhOUdXbmI5bTEyOS95WHVwbzZSRUozcGxIU1la?=
 =?utf-8?B?VGFLaFRHOC90VFlaMjZBaGUzZXA2WERRRHhIS2NOVGNKY1NzRUVqNEdkWURn?=
 =?utf-8?B?YVNucHJnUXFJZE52bDl6ejZ6UGJmczFpcVR4K0tDazZiMGsyWmV3OWhMdmlT?=
 =?utf-8?B?Y2F5Z0RUNXhWZmNhUGMvcDUrdzFUeFd5UHNnbjVJS1pOcFd6Z3M0WnhpbFlt?=
 =?utf-8?B?QUFmM2w4a1YxUmVmY0JmWk92NTNnRDFod0J6dDFERDdRanVGSlJuU3dmQW5R?=
 =?utf-8?B?dkFoSGlVUk9McjRYQ3FkaWUydE1yMHJKSENNeU9kVndvRENMZ2FwME1kK1hK?=
 =?utf-8?B?ajRHVmNtV3pkTXlVSTZjQitmcXdodTNYZXQxN2xlMG5XNHd0Sy9WVzhkMlZQ?=
 =?utf-8?B?UEJ5S285WGZCS0x2NGMyVG8vY1VXakNkMXhIOVVGc3RnY2hRNnR6STNUTWd6?=
 =?utf-8?B?WEFkVVZrdENkNHFhcm1vZ0RUc3MwcXdJeng2VGJVbWpsL0NBaHArTUM0SHpE?=
 =?utf-8?B?bmlweklYcm1YNWx0SERVK3hzNzl4UGFkVFg2R0FiYzBCYTZWNXMvT1pMVUhF?=
 =?utf-8?B?ZFRTSUVrS0VIWTJYWTB5UTdEeUROYkxMYnZacndybGlMdUttYkZ0QTloczMx?=
 =?utf-8?B?WUJrKzBqQUZ5bEVacFRnRHl6ZStmcUdKWXlpQjF3UFd5M05tejRLaStldnRH?=
 =?utf-8?B?ZWxjdzduUjl5QVZOdktDakZFdm4vZTFMY1ZYTVZleUtBcDhaNVFTbDZQYkJR?=
 =?utf-8?B?ZVIyWUNhRStxbFJPMllHTnBzaTlvd0xPekhLZmd5eHF2eDZWc0lvSzRrK0FE?=
 =?utf-8?B?a2dVTXhIaW1CamdEMzFYd2dpVnBlSEYrMTlwYTBnVXR0STdVUUdJOWZYYnVL?=
 =?utf-8?B?UElDc0ZDS2pKYzcyWnhKQ0lEa1JqbDB1dmhOSXVMRmdCRE9RSDBvWXZRNmw0?=
 =?utf-8?Q?jUZz30uRITBwX1byT28Aj1nUp?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 027e895c-639f-4517-32d9-08dbf6861d38
X-MS-Exchange-CrossTenant-AuthSource: BY5PR12MB3683.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 18:06:48.1137
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z5XbVMYc1LTJhnMn9VvkWPefr7NVPSG9KKdj+7cE8UVfzgqbYCC8U4UiXLD/w6uE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8943


On 12/6/23 9:43 AM, Mathieu Poirier wrote:
> On Fri, 1 Dec 2023 at 11:10, Tanmay Shah <tanmay.shah@amd.com> wrote:
> >
> >
> > On 11/29/23 11:10 AM, Mathieu Poirier wrote:
> > > On Mon, Nov 27, 2023 at 10:33:05AM -0600, Tanmay Shah wrote:
> > > >
> > > > On 11/23/23 12:11 PM, Mathieu Poirier wrote:
> > > > > On Wed, Nov 22, 2023 at 03:00:36PM -0600, Tanmay Shah wrote:
> > > > > > Hi Mathieu,
> > > > > >
> > > > > > Please find my comments below.
> > > > > >
> > > > > > On 11/21/23 4:59 PM, Mathieu Poirier wrote:
> > > > > > > Hi,
> > > > > > >
> > > > > > > On Fri, Nov 17, 2023 at 09:42:37AM -0800, Tanmay Shah wrote:
> > > > > > > > Use TCM pm domains extracted from device-tree
> > > > > > > > to power on/off TCM using general pm domain framework.
> > > > > > > >
> > > > > > > > Signed-off-by: Tanmay Shah <tanmay.shah@amd.com>
> > > > > > > > ---
> > > > > > > >
> > > > > > > > Changes in v7:
> > > > > > > >   - %s/pm_dev1/pm_dev_core0/r
> > > > > > > >   - %s/pm_dev_link1/pm_dev_core0_link/r
> > > > > > > >   - %s/pm_dev2/pm_dev_core1/r
> > > > > > > >   - %s/pm_dev_link2/pm_dev_core1_link/r
> > > > > > > >   - remove pm_domain_id check to move next patch
> > > > > > > >   - add comment about how 1st entry in pm domain list is used
> > > > > > > >   - fix loop when jump to fail_add_pm_domains loop
> > > > > > > >
> > > > > > > >  drivers/remoteproc/xlnx_r5_remoteproc.c | 215 +++++++++++++++++++++++-
> > > > > > > >  1 file changed, 212 insertions(+), 3 deletions(-)
> > > > > > > >
> > > > > > > > diff --git a/drivers/remoteproc/xlnx_r5_remoteproc.c b/drivers/remoteproc/xlnx_r5_remoteproc.c
> > > > > > > > index 4395edea9a64..22bccc5075a0 100644
> > > > > > > > --- a/drivers/remoteproc/xlnx_r5_remoteproc.c
> > > > > > > > +++ b/drivers/remoteproc/xlnx_r5_remoteproc.c
> > > > > > > > @@ -16,6 +16,7 @@
> > > > > > > >  #include <linux/of_reserved_mem.h>
> > > > > > > >  #include <linux/platform_device.h>
> > > > > > > >  #include <linux/remoteproc.h>
> > > > > > > > +#include <linux/pm_domain.h>
> > > > > > > >
> > > > > > > >  #include "remoteproc_internal.h"
> > > > > > > >
> > > > > > > > @@ -102,6 +103,12 @@ static const struct mem_bank_data zynqmp_tcm_banks_lockstep[] = {
> > > > > > > >   * @rproc: rproc handle
> > > > > > > >   * @pm_domain_id: RPU CPU power domain id
> > > > > > > >   * @ipi: pointer to mailbox information
> > > > > > > > + * @num_pm_dev: number of tcm pm domain devices for this core
> > > > > > > > + * @pm_dev_core0: pm domain virtual devices for power domain framework
> > > > > > > > + * @pm_dev_core0_link: pm domain device links after registration
> > > > > > > > + * @pm_dev_core1: used only in lockstep mode. second core's pm domain virtual devices
> > > > > > > > + * @pm_dev_core1_link: used only in lockstep mode. second core's pm device links after
> > > > > > > > + * registration
> > > > > > > >   */
> > > > > > > >  struct zynqmp_r5_core {
> > > > > > > >     struct device *dev;
> > > > > > > > @@ -111,6 +118,11 @@ struct zynqmp_r5_core {
> > > > > > > >     struct rproc *rproc;
> > > > > > > >     u32 pm_domain_id;
> > > > > > > >     struct mbox_info *ipi;
> > > > > > > > +   int num_pm_dev;
> > > > > > > > +   struct device **pm_dev_core0;
> > > > > > > > +   struct device_link **pm_dev_core0_link;
> > > > > > > > +   struct device **pm_dev_core1;
> > > > > > > > +   struct device_link **pm_dev_core1_link;
> > > > > > > >  };
> > > > > > > >
> > > > > > > >  /**
> > > > > > > > @@ -651,7 +663,8 @@ static int add_tcm_carveout_lockstep_mode(struct rproc *rproc)
> > > > > > > >                                          ZYNQMP_PM_CAPABILITY_ACCESS, 0,
> > > > > > > >                                          ZYNQMP_PM_REQUEST_ACK_BLOCKING);
> > > > > > > >             if (ret < 0) {
> > > > > > > > -                   dev_err(dev, "failed to turn on TCM 0x%x", pm_domain_id);
> > > > > > > > +                   dev_err(dev, "failed to turn on TCM 0x%x",
> > > > > > > > +                           pm_domain_id);
> > > > > > >
> > > > > > > Spurious change, you should have caught that.
> > > > > >
> > > > > > Ack, need to observe changes more closely before sending them.
> > > > > >
> > > > > > >
> > > > > > > >                     goto release_tcm_lockstep;
> > > > > > > >             }
> > > > > > > >
> > > > > > > > @@ -758,6 +771,189 @@ static int zynqmp_r5_parse_fw(struct rproc *rproc, const struct firmware *fw)
> > > > > > > >     return ret;
> > > > > > > >  }
> > > > > > > >
> > > > > > > > +static void zynqmp_r5_remove_pm_domains(struct rproc *rproc)
> > > > > > > > +{
> > > > > > > > +   struct zynqmp_r5_core *r5_core = rproc->priv;
> > > > > > > > +   struct device *dev = r5_core->dev;
> > > > > > > > +   struct zynqmp_r5_cluster *cluster;
> > > > > > > > +   int i;
> > > > > > > > +
> > > > > > > > +   cluster = platform_get_drvdata(to_platform_device(dev->parent));
> > > > > > > > +
> > > > > > > > +   for (i = 1; i < r5_core->num_pm_dev; i++) {
> > > > > > > > +           device_link_del(r5_core->pm_dev_core0_link[i]);
> > > > > > > > +           dev_pm_domain_detach(r5_core->pm_dev_core0[i], false);
> > > > > > > > +   }
> > > > > > > > +
> > > > > > > > +   kfree(r5_core->pm_dev_core0);
> > > > > > > > +   r5_core->pm_dev_core0 = NULL;
> > > > > > > > +   kfree(r5_core->pm_dev_core0_link);
> > > > > > > > +   r5_core->pm_dev_core0_link = NULL;
> > > > > > > > +
> > > > > > > > +   if (cluster->mode == SPLIT_MODE) {
> > > > > > > > +           r5_core->num_pm_dev = 0;
> > > > > > > > +           return;
> > > > > > > > +   }
> > > > > > > > +
> > > > > > > > +   for (i = 1; i < r5_core->num_pm_dev; i++) {
> > > > > > > > +           device_link_del(r5_core->pm_dev_core1_link[i]);
> > > > > > > > +           dev_pm_domain_detach(r5_core->pm_dev_core1[i], false);
> > > > > > > > +   }
> > > > > > > > +
> > > > > > > > +   kfree(r5_core->pm_dev_core1);
> > > > > > > > +   r5_core->pm_dev_core1 = NULL;
> > > > > > > > +   kfree(r5_core->pm_dev_core1_link);
> > > > > > > > +   r5_core->pm_dev_core1_link = NULL;
> > > > > > > > +   r5_core->num_pm_dev = 0;
> > > > > > > > +}
> > > > > > > > +
> > > > > > > > +static int zynqmp_r5_add_pm_domains(struct rproc *rproc)
> > > > > > > > +{
> > > > > > > > +   struct zynqmp_r5_core *r5_core = rproc->priv;
> > > > > > > > +   struct device *dev = r5_core->dev, *dev2;
> > > > > > > > +   struct zynqmp_r5_cluster *cluster;
> > > > > > > > +   struct platform_device *pdev;
> > > > > > > > +   struct device_node *np;
> > > > > > > > +   int i, j, num_pm_dev, ret;
> > > > > > > > +
> > > > > > > > +   cluster = dev_get_drvdata(dev->parent);
> > > > > > > > +
> > > > > > > > +   /* get number of power-domains */
> > > > > > > > +   num_pm_dev = of_count_phandle_with_args(r5_core->np, "power-domains",
> > > > > > > > +                                           "#power-domain-cells");
> > > > > > > > +
> > > > > > > > +   if (num_pm_dev <= 0)
> > > > > > > > +           return -EINVAL;
> > > > > > > > +
> > > > > > > > +   r5_core->pm_dev_core0 = kcalloc(num_pm_dev,
> > > > > > > > +                                   sizeof(struct device *),
> > > > > > > > +                                   GFP_KERNEL);
> > > > > > > > +   if (!r5_core->pm_dev_core0)
> > > > > > > > +           ret = -ENOMEM;
> > > > > > > > +
> > > > > > > > +   r5_core->pm_dev_core0_link = kcalloc(num_pm_dev,
> > > > > > > > +                                        sizeof(struct device_link *),
> > > > > > > > +                                        GFP_KERNEL);
> > > > > > > > +   if (!r5_core->pm_dev_core0_link) {
> > > > > > > > +           kfree(r5_core->pm_dev_core0);
> > > > > > > > +           r5_core->pm_dev_core0 = NULL;
> > > > > > > > +           return -ENOMEM;
> > > > > > > > +   }
> > > > > > > > +
> > > > > > > > +   r5_core->num_pm_dev = num_pm_dev;
> > > > > > > > +
> > > > > > > > +   /*
> > > > > > > > +    * start from 2nd entry in power-domains property list as
> > > > > > > > +    * for zynqmp we only add TCM power domains and not core's power domain.
> > > > > > > > +    * 1st entry is used to configure r5 operation mode.
> > > > > > >
> > > > > > > You are still not saying _where_ ->pm_dev_core0[0] gets added.
> > > > > >
> > > > > > So, pm_dev_core0[0] isn't really need to be added for zynqmp platform, as firmware starts it with call,
> > > > > >
> > > > > > zynqmp_pm_request_wake during rproc_start callback. I will document this in next
> > > > > >
> > > > >
> > > > > That is exactly what I am looking for.  That way people don't have to go through
> > > > > the entire driver trying to figure out what is happening with pm_dev_core[0].
> > > > >
> > > > > I'm also not sure about the power-up order.  Logically the TCMs should be
> > > > > powered up before the R5 in order to put code in them.  The R5s are powered in
> > > > > zynqmp_r5_rproc_start() but I am unclear as to where in the boot sequence the
> > > > > TCMs are powered - can you expand on that?
> > > >
> > > >
> > > > Sure. Following is call sequece
> > > >
> > > > zynqmp_r5_rproc_prepare
> > > >
> > > > zynqmp_r5_add_pm_domains -> Here TCM is powered on when device_link_add is called via zynqmp-pm-domains.c driver.
> > > >
> > > > . . .
> > > >
> > > > zynqmp_r5_rproc_start -> load firmware and Starts RPU
> > > >
> > > > So what you mentioned is correct, TCM is being powerd-on before we load firmware and start RPU.
> > > >
> > > >
> > > > >
> > > > > > revision. For new platforms pm_dev_core0[0] will be added in future.
> > > > >
> > > > > Now I'm really confused - what do you mean by "pm_dev_core0[0] will be added in
> > > > > future"?
> > > >
> > > >
> > > > ZynqMP platform has platform management firmware running on microblaze.
> > > >
> > > > This firmware design does not expect R5 pm domains to be requested explicitly.
> > > >
> > > > This means, during zynqmp_r5_rproc_start when "zynqmp_pm_request_wake" is called,
> > > >
> > > > firmware powers on R5. So, pm_dev_core[0] is not really used for ZynqMP.
> > > >
> > > > However, this design was changed for new platforms i.e. "versal" and onwards.
> > > >
> > > > Firmware of new platform expects pm domains to be requested explicitly for R5 cores before
> > > >
> > > > waking them up.
> > > >
> > > > That means, pm_dev_core[0] for R5 cores on new platform (Versal) needs to be used same as TCM.
> > > >
> > > > Then, we should wake it up on r5_core.
> > > >
> > > > To summarize:
> > > >
> > > > For zynqmp only following call needed to start R5:
> > > >
> > > > zynqmp_pm_request_wake
> > > >
> > > > For "versal" and onwards we need two calls to start R5:
> > > >
> > > > "device_link_add" and zynqmp_pm_request_wake
> > > >
> > > > So, in future pm_core_dev[0] will be used.
> > > >
> > >
> > > Thanks for the clarification on both front.  The problem here is that we are
> > > keeping R5 power domain information in two different places, i.e
> > > zynqmp_r5_core::pm_domain_id and zynqmp_r5_core::pm_dev_core0[0].
> > >
> > > Please see if you can retreive the power domain ID from
> > > zynqmp_r5_core::pm_dev_core0[0].  That way you can get the power domain ID when
> > > calling zynqmp_pm_request_wake() and zynqmp_pm_force_pwrdwn() and get rid of
> > > zynqmp_r5_core::pm_domain_id.
> >
> > Hi Mathieu,
> >
> > I looked into this. Probably I can't retrieve pm_domain_id from pm_dev_core0[0],
> >
> > However, I can retrieve it from device-tree when calling zynqmp_pm_request_wake
> >
> > and zynqmp_pm_force_pwrdwn.
> >
> > zynqmp_r5_core::pm_domain_id is caching that value during probe, and use it during
> > rest of the driver lifecycle.
> >
> > I am okay either way, (keeping it as it is, or get it from device-tree). Let me know your
> >
> > preference.
> >
>
> Humm...  Then I suggest to simply get rid of the device linking to
> deal with the TCMs' power management.  From where I stand it provides
> more confusion than benefits, and that is without considering the
> extra complexity.


Do you mean to get rid of pm_dev_core0[1], and pm_dev_core0[2] as well ?

If yes, its preferred to use pm_domain framework to power-on/off TCM.

If we want to get rid of zynqmp_r5_core::pm_domain_id, I will do what's done in

__genpd_dev_pm_attach API where, pm_domain_id is retrieved using of_node of pm_dev_core0[*] device.

    ret = of_parse_phandle_with_args(dev->of_node, "power-domains",
                            "#power-domain-cells", index, &pd_args);

However, Its preferred to use pm_domain framework when power-domains are available in device-tree.

Let  me know.

Thanks,

Tanmay


> > Thanks,
> >
> > Tanmay
> >
> > > >
> > > > > >
> > > > > > I hope this meets expectations.
> > > > > >
> > > > > >
> > > > > > >
> > > > > > > > +    */
> > > > > > > > +   for (i = 1; i < r5_core->num_pm_dev; i++) {
> > > > > > > > +           r5_core->pm_dev_core0[i] = dev_pm_domain_attach_by_id(dev, i);
> > > > > > > > +           if (IS_ERR_OR_NULL(r5_core->pm_dev_core0[i])) {
> > > > > > >
> > > > > > > Here IS_ERR_OR_NULL() is used while two if conditions for NULL and an error
> > > > > > > code are used in the loop for the lockstep mode.  Please pick one heuristic and
> > > > > > > stick with it.  I have no preference on which one.
> > > > > >
> > > > > > Ok, I think IS_ERR_OR_NULL is more cleaner, I will address it in next revision.
> > > > > >
> > > > > >
> > > > > > >
> > > > > > > > +                   dev_dbg(dev, "failed to attach pm domain %d, ret=%ld\n", i,
> > > > > > > > +                           PTR_ERR(r5_core->pm_dev_core0[i]));
> > > > > > > > +                   ret = -EINVAL;
> > > > > > > > +                   goto fail_add_pm_domains;
> > > > > > > > +           }
> > > > > > > > +           r5_core->pm_dev_core0_link[i] = device_link_add(dev,
> > > > > > > > +                                                           r5_core->pm_dev_core0[i],
> > > > > > > > +                                                           DL_FLAG_STATELESS |
> > > > > > > > +                                                           DL_FLAG_RPM_ACTIVE |
> > > > > > > > +                                                           DL_FLAG_PM_RUNTIME);
> > > > > > > > +           if (!r5_core->pm_dev_core0_link[i]) {
> > > > > > > > +                   dev_pm_domain_detach(r5_core->pm_dev_core0[i], true);
> > > > > > > > +                   r5_core->pm_dev_core0[i] = NULL;
> > > > > > > > +                   ret = -EINVAL;
> > > > > > > > +                   goto fail_add_pm_domains;
> > > > > > > > +           }
> > > > > > > > +   }
> > > > > > > > +
> > > > > > > > +   if (cluster->mode == SPLIT_MODE)
> > > > > > > > +           return 0;
> > > > > > > > +
> > > > > > > > +   r5_core->pm_dev_core1 = kcalloc(num_pm_dev,
> > > > > > > > +                                   sizeof(struct device *),
> > > > > > > > +                                   GFP_KERNEL);
> > > > > > > > +   if (!r5_core->pm_dev_core1) {
> > > > > > > > +           ret = -ENOMEM;
> > > > > > > > +           goto fail_add_pm_domains;
> > > > > > > > +   }
> > > > > > > > +
> > > > > > > > +   r5_core->pm_dev_core1_link = kcalloc(num_pm_dev,
> > > > > > > > +                                        sizeof(struct device_link *),
> > > > > > > > +                                        GFP_KERNEL);
> > > > > > > > +   if (!r5_core->pm_dev_core1_link) {
> > > > > > > > +           kfree(r5_core->pm_dev_core1);
> > > > > > > > +           r5_core->pm_dev_core1 = NULL;
> > > > > > > > +           ret = -ENOMEM;
> > > > > > > > +           goto fail_add_pm_domains;
> > > > > > > > +   }
> > > > > > > > +
> > > > > > > > +   /* get second core's device to detach its power-domains */
> > > > > > > > +   np = of_get_next_child(cluster->dev->of_node, of_node_get(dev->of_node));
> > > > > > > > +
> > > > > > > > +   pdev = of_find_device_by_node(np);
> > > > > > > > +   if (!pdev) {
> > > > > > > > +           dev_err(cluster->dev, "core1 platform device not available\n");
> > > > > > > > +           kfree(r5_core->pm_dev_core1);
> > > > > > > > +           kfree(r5_core->pm_dev_core1_link);
> > > > > > > > +           r5_core->pm_dev_core1 = NULL;
> > > > > > > > +           r5_core->pm_dev_core1_link = NULL;
> > > > > > > > +           ret = -EINVAL;
> > > > > > > > +           goto fail_add_pm_domains;
> > > > > > > > +   }
> > > > > > > > +
> > > > > > > > +   dev2 = &pdev->dev;
> > > > > > > > +
> > > > > > > > +   /* for zynqmp we only add TCM power domains and not core's power domain */
> > > > > > > > +   for (j = 1; j < r5_core->num_pm_dev; j++) {
> > > > > > > > +           r5_core->pm_dev_core1[j] = dev_pm_domain_attach_by_id(dev2, j);
> > > > > > > > +           if (!r5_core->pm_dev_core1[j]) {
> > > > > > > > +                   dev_dbg(dev, "can't attach to pm domain %d\n", j);
> > > > > > > > +                   ret = -EINVAL;
> > > > > > > > +                   goto fail_add_pm_domains_lockstep;
> > > > > > > > +           } else if (IS_ERR(r5_core->pm_dev_core1[j])) {
> > > > > > > > +                   dev_dbg(dev, "can't attach to pm domain %d\n", j);
> > > > > > > > +                   ret = PTR_ERR(r5_core->pm_dev_core1[j]);
> > > > > > > > +                   goto fail_add_pm_domains_lockstep;
> > > > > > > > +           }
> > > > > > > > +
> > > > > > > > +           r5_core->pm_dev_core1_link[j] = device_link_add(dev,
> > > > > > > > +                                                           r5_core->pm_dev_core1[j],
> > > > > > > > +                                                           DL_FLAG_STATELESS |
> > > > > > > > +                                                           DL_FLAG_RPM_ACTIVE |
> > > > > > > > +                                                           DL_FLAG_PM_RUNTIME);
> > > > > > > > +           if (!r5_core->pm_dev_core1_link[j]) {
> > > > > > > > +                   dev_pm_domain_detach(r5_core->pm_dev_core1[j], true);
> > > > > > > > +                   r5_core->pm_dev_core1[j] = NULL;
> > > > > > > > +                   ret = -ENODEV;
> > > > > > > > +                   goto fail_add_pm_domains_lockstep;
> > > > > > > > +           }
> > > > > > > > +   }
> > > > > > > > +
> > > > > > > > +fail_add_pm_domains_lockstep:
> > > > > > > > +   while (--j >= 0) {
> > > > > > > > +           device_link_del(r5_core->pm_dev_core1_link[j]);
> > > > > > > > +           dev_pm_domain_detach(r5_core->pm_dev_core1[j], true);
> > > > > > > > +   }
> > > > > > > > +   kfree(r5_core->pm_dev_core1);
> > > > > > > > +   r5_core->pm_dev_core1 = NULL;
> > > > > > > > +   kfree(r5_core->pm_dev_core1_link);
> > > > > > > > +   r5_core->pm_dev_core1_link = NULL;
> > > > > > > > +
> > > > > > > > +fail_add_pm_domains:
> > > > > > > > +   while (--i >= 0) {
> > > > > > > > +           device_link_del(r5_core->pm_dev_core0_link[i]);
> > > > > > > > +           dev_pm_domain_detach(r5_core->pm_dev_core0[i], true);
> > > > > > > > +   }
> > > > > > > > +   kfree(r5_core->pm_dev_core0);
> > > > > > > > +   r5_core->pm_dev_core0 = NULL;
> > > > > > > > +   kfree(r5_core->pm_dev_core0_link);
> > > > > > > > +   r5_core->pm_dev_core0_link = NULL;
> > > > > > > > +
> > > > > > >
> > > > > > > The error path is much cleaner and readable now.
> > > > > > >
> > > > > > > I will continue tomorrow.
> > > > > > >
> > > > > > > Mathieu
> > > > > > >
> > > > > > > > +   return ret;
> > > > > > > > +}
> > > > > > > > +
> > > > > > > >  /**
> > > > > > > >   * zynqmp_r5_rproc_prepare()
> > > > > > > >   * adds carveouts for TCM bank and reserved memory regions
> > > > > > > > @@ -770,19 +966,30 @@ static int zynqmp_r5_rproc_prepare(struct rproc *rproc)
> > > > > > > >  {
> > > > > > > >     int ret;
> > > > > > > >
> > > > > > > > +   ret = zynqmp_r5_add_pm_domains(rproc);
> > > > > > > > +   if (ret) {
> > > > > > > > +           dev_err(&rproc->dev, "failed to add pm domains\n");
> > > > > > > > +           return ret;
> > > > > > > > +   }
> > > > > > > > +
> > > > > > > >     ret = add_tcm_banks(rproc);
> > > > > > > >     if (ret) {
> > > > > > > >             dev_err(&rproc->dev, "failed to get TCM banks, err %d\n", ret);
> > > > > > > > -           return ret;
> > > > > > > > +           goto fail_prepare;
> > > > > > > >     }
> > > > > > > >
> > > > > > > >     ret = add_mem_regions_carveout(rproc);
> > > > > > > >     if (ret) {
> > > > > > > >             dev_err(&rproc->dev, "failed to get reserve mem regions %d\n", ret);
> > > > > > > > -           return ret;
> > > > > > > > +           goto fail_prepare;
> > > > > > > >     }
> > > > > > > >
> > > > > > > >     return 0;
> > > > > > > > +
> > > > > > > > +fail_prepare:
> > > > > > > > +   zynqmp_r5_remove_pm_domains(rproc);
> > > > > > > > +
> > > > > > > > +   return ret;
> > > > > > > >  }
> > > > > > > >
> > > > > > > >  /**
> > > > > > > > @@ -801,6 +1008,8 @@ static int zynqmp_r5_rproc_unprepare(struct rproc *rproc)
> > > > > > > >
> > > > > > > >     r5_core = rproc->priv;
> > > > > > > >
> > > > > > > > +   zynqmp_r5_remove_pm_domains(rproc);
> > > > > > > > +
> > > > > > > >     for (i = 0; i < r5_core->tcm_bank_count; i++) {
> > > > > > > >             pm_domain_id = r5_core->tcm_banks[i]->pm_domain_id;
> > > > > > > >             if (zynqmp_pm_release_node(pm_domain_id))
> > > > > > > > --
> > > > > > > > 2.25.1
> > > > > > > >

