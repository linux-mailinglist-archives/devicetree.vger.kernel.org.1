Return-Path: <devicetree+bounces-58788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9508A30C5
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 16:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55E0C280DD1
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 14:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21CB513C9B9;
	Fri, 12 Apr 2024 14:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="e6VYXoy3"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazolkn19011002.outbound.protection.outlook.com [52.103.2.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB8913CFA0
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 14:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.2.2
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712932529; cv=fail; b=hWaQTJviSxk4sWNvUFSB+hbZt248Gu3/kZ8kwZKrXNsQ5XWVkuw4ubl1Ov4pV//8GTasQnHaNwmNPTzPjGw+SgqcXhwaSOOJ7f/oOlKX4LL0PRkHMrLEq0qh8mU+8nViSpGIOd0iYBEkuSwE+DGfIqNPD7NHhbwx+zjbpDLu8Ic=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712932529; c=relaxed/simple;
	bh=55rJjA8wSA2IRKhY9ePD4DVFRxvqvRRbSQkgj90fIn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=Me2Vxrm01nh68OvGu/D9RvzSNNT3rRt32RGVxoo8FPAPALlhXN6+yTuBMXs3U8l/OIgCNZU83L1k6jdTxGeH9uquBGWuOYFFUjQVHyjqvZNVJ9eSiyTHeVBP8qeiTIcRTEJonJMxNKkXJEoLX2sCIML27TANxnFgnq3CMzXoWTg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=e6VYXoy3; arc=fail smtp.client-ip=52.103.2.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SolG5RQ7DC7D13dtSpM/8F8Rh0rXNPnjB+aN+dUEpllZrakGBjEcpLeL/YCtwNyBfAw4908AsUV/swvjMDejbMTev7BdfxtJDocb0VpiU3M5hWFL5SAurJRQ5n1EXbyN+SgXyQaag53yqoOr4Bxf3vPmcybhHywe5HWP45jvdR918fpYkZgrdi0yRVyloVB7DxTQi/ffydRJ9w1YeTIF+wYxbaLvWVpttXDbsJPV7+IlSAThmAjOYdOa4KMgqujy5fXTVswZhqwuYyFa+pMTWe+DBFNOVpxGtP2pI3xYCWRiWNYTD7iq5jC4LWlDQSkH52Pba57+UthRFVBOiTSrVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QIpNHAUZnhkQkqF4Alko+qSM5xnjyKbpeekLqWr1asI=;
 b=imGu9yGYBWFLdliMAwQnaPJK003s4fg75ZKwUEHVqaB82gwlEgjTq+kc8VE597IcZPGWrxr1GPEmpeKHM56AHGkjWQGifu6lxo0Z+Hg8f5c6AflUBUrQqIUT9YCe5R2oVuJRynPOIaHtH97/WW5kRHajaDQZs0Nko4YtRcxaN/CCeR5mB1jifoTPpVXeTReOEIS5NbWlZs9WmsiFnj3m2MpMUiKdQ5KS/UztiKXVgzjgP27yy+ICiqR8vurdFRJQN40z/iOabPw/j+WrW1DsnkvRb8cKr8230Yf99QtBSacDkTyAfnVMLnNuJa/F71NB/kgYC/+Io6unHhsvcp/w0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QIpNHAUZnhkQkqF4Alko+qSM5xnjyKbpeekLqWr1asI=;
 b=e6VYXoy3/Vgt2bPJqkHdGFGqtoJRdfHfaMmVSU6TIzkuEOP1uo0hKcYezTVSkj3BG9qZ1xZbUfMGhE3Zj0scSgShYPCvWVWoxA/X+OsTN0p9RLxiZgLM5UHk13d9zRdeVJpHaR5pGkZxdIlB4qbQ/a3DaIuD1TvtR2fgRg68X5bdH0Yq2DkTN1F/rYQzYxuyEg8r05znZONTKDsien6ciSZFNfGuSWP7hP4jWM30CylFUbr5YaI+qWqpC3n7iYafsXxALQLuyHk2tQpiQayzL1n914MWSrTc028uX/D/7sbuTf1fdw2CuPudY5DOtkzY3IwMmzOMEyOyQxKdNlOqXQ==
Received: from DM4PR05MB9229.namprd05.prod.outlook.com (2603:10b6:8:88::20) by
 BLAPR05MB7380.namprd05.prod.outlook.com (2603:10b6:208:29f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Fri, 12 Apr
 2024 14:35:25 +0000
Received: from DM4PR05MB9229.namprd05.prod.outlook.com
 ([fe80::148f:6016:501b:93f4]) by DM4PR05MB9229.namprd05.prod.outlook.com
 ([fe80::148f:6016:501b:93f4%3]) with mapi id 15.20.7409.031; Fri, 12 Apr 2024
 14:35:25 +0000
Date: Fri, 12 Apr 2024 09:35:23 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, robh@kernel.org
Subject: Re: (subset) [PATCH 0/4] User Requested Fixes for Powkiddy RK3566
 Devices
Message-ID:
 <DM4PR05MB9229FE84DE75C4B31CF2B618A5042@DM4PR05MB9229.namprd05.prod.outlook.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
 <171286007456.1886699.6885210862940923599.b4-ty@sntech.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171286007456.1886699.6885210862940923599.b4-ty@sntech.de>
X-TMN: [wx6vDVIocU8pSNjlYbazXgy1uJ6ON1j7]
X-ClientProxiedBy: SA1PR04CA0023.namprd04.prod.outlook.com
 (2603:10b6:806:2ce::27) To DM4PR05MB9229.namprd05.prod.outlook.com
 (2603:10b6:8:88::20)
X-Microsoft-Original-Message-ID: <ZhlGqz/dgeIYNwPg@wintermute.localhost.fail>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR05MB9229:EE_|BLAPR05MB7380:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ae3b6b8-5113-4da1-6b80-08dc5afdca61
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	VHRS2/i5715n0AEv1Su6bc66ZYkz7evn3hq4sJ5nDSF8+b8ndTUUHaeFsfgXEQJQ/jqOmLThSkPNlAZU27u5BGBNEXI1wWrBfsoCqCCCVdLrthQCJeVCE9ywf/iIMAkVrYQEHJ+k4/hpW8gijlF8H/vxjLkERU64KI4LEy+O/O80exSEkLoYhyE8uJEGqwuNZIlG2+OMh83ozvKb2WqWJuX1gm68K6nKvApd+sg7bOJE7t4A6jTlWKYGP5EsJ9zksmLKToxsBzlmznq+lM4PV+fwGQ1UshiQ58tzUnYKa83p5jWUpOXTwtLxLq0ngnoAs4mVw5uKw6hTAsBybG1i5ddkBhfd0HOjt0dpSe4Hx30jMkqk3YJUnvfwafmA0O8l9RlqTKvRDj6ElfgPbP6pv0Quog5fMDXSwOhQ6xb1o4o8n1k5zK7Io7L81aftZgaHVknHPmbWYIt2toaLW3fX/zGUD6s9kSKyMtHMvP57xDO6KCgfP7epOyGn7vFNM7kkZaG1DbwKTNrimFMBmDnNkqS0Qx5ko9SFFjKhLWxVlgS7iXYeZ5DsBxH5qSQuHgCb
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?P53sEjZGx3iiIg9K9HX3XOrXFcP/0GrDW4Bkmv8NP8WodDKJ10ptx0wqKEbS?=
 =?us-ascii?Q?G/3o8I1M5ijjqlVbbXYwjoFT+/YhSzUmSPjBtYoWdXkl9eWgBKA6MnkywKDq?=
 =?us-ascii?Q?mZplfDEElN3WLJCC2CAOMydLFHBSBqdvAnY8mjamj0QHD0sP+brfXdAfbAOK?=
 =?us-ascii?Q?n3ud8rePFBs0cIcFkjTh7ubJjSB/09lH4gccKwUzJIxwK2sALtlbP3eoqjLK?=
 =?us-ascii?Q?rN6s+XzwJ8MDSXY46jxl5mSPqSVhe6B1ocW5gieDwRks0mSiNrlC2PMxqhJv?=
 =?us-ascii?Q?km0y5eWU+9ib6HNH/WMVFsoTskR/wbfjqZowL5V3IoDxSiqgQSdBuMcRcSJS?=
 =?us-ascii?Q?bS8nSpSyY9DpGeoKUVPEpVKQZlpyJkne73zCX7xyjeGXZcHPZUqnBDd1yyFQ?=
 =?us-ascii?Q?GqZVQqNDrNn7Dliq9og6CGpGUcsqU07uLMmFcWXN20p5xgvp9Mg2RxJcg2tl?=
 =?us-ascii?Q?HMipCp6k+4IuGnD1k1zZG/RrakZczaz+Z+rVfl7OrFk9zUTttLiTLE/YPxzG?=
 =?us-ascii?Q?ty5ZRB5hhY34V+cXemViqeo3sIYJbRgu1sVGLmHvqZ2jlLZXBJ9/gppgo4BM?=
 =?us-ascii?Q?kEF/2cQew6609jOHT0gGf0eyzpN+SMKYOyHq5dWf3PzJNHIP9QNXGVdFh2Ux?=
 =?us-ascii?Q?aAvnpWw7uz452U//mqXL2TRhU5uoo8DlUQyLcZhXeT8KVncHVNBQ4w5XzA41?=
 =?us-ascii?Q?H6AiYTpVF41KY5ochnnb3SNnTwBZpGJC8mfhGK9Gk5ajYEIwiJKd8Jwfqn+R?=
 =?us-ascii?Q?Bul0M9EYLhbFyoBZ/lNGM4OkE6lSPyytSVAbaB4v6CIc+Fnn8cytp4D6lgtY?=
 =?us-ascii?Q?NZu37l0j2xpeQzFHWfGaGU1kvhiCYEay/Se8qApsLBjmcK3LETJtUpm23prq?=
 =?us-ascii?Q?YwUtFZoBX2KTGtzQsKyzDZ2/QDAYihz8aWLO1CS+jk57nPuzTC1pPgKXXhqt?=
 =?us-ascii?Q?Fmi/O1UsZ89SrHo4hIHf6lB1SBOqWY04VADRCV0LgTkWRr4bIUqX2je7SNSy?=
 =?us-ascii?Q?Znh3tHL7hy1GE35zr8x+O0zFP8t+EGhf8UtXUJSkHJx8kWUDShQz7SIbmqr0?=
 =?us-ascii?Q?1jTtDGT5QyMpYKPVkKGwrg83YvtP9W1OY9D8xQe+X1oqZLo6iKNhzPguIa9D?=
 =?us-ascii?Q?nJy62VweGhxvBvJuFxuPHHxRXef8Z3t+QdBRAGRQiurqc4FbsOL/gXKaiTWF?=
 =?us-ascii?Q?1niUm2lQm/olo1DaGTlstXfP5GEYdAPHpEasrb4RzRAixeoPHZFNJ8wo4m8?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: sct-15-20-4823-7-msonline-outlook-84f76.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ae3b6b8-5113-4da1-6b80-08dc5afdca61
X-MS-Exchange-CrossTenant-AuthSource: DM4PR05MB9229.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 14:35:25.1859
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR05MB7380

On Thu, Apr 11, 2024 at 08:29:53PM +0200, Heiko Stuebner wrote:
> On Mon, 25 Mar 2024 12:51:29 -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Users have requested fixes for Powkiddy devices to help with some
> > intermittent WiFi issues by adding additional properties to the
> > SDMMC2 node. They have also requested that the model name be
> > represented consistently with both the manufacturer name and model
> > name. Lastly, there exists a second configuration of the RGB30 with
> > a slightly different regulator layout we need to describe.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/4] dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
>       commit: 9d3d2be86c7d4b1bc16b65a06ba06886913de7e8
> [3/4] arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
>       commit: 1b76d86dbc5faf907d74343e1b15daa84ab8322c

Thank you. Like the other devices as long as we can make the wifi
location consistent (mmc3) the rest of the aliases aren't as
important.

I understand about the regulator stuff, I'll try to fix it up with the
bootloader. I just didn't know if there was any proper way/benefit
of flagging it this way versus doing a different board revision (even
though there is absolutely nothing user visible about the change).

> 
> Best regards,
> -- 
> Heiko Stuebner <heiko@sntech.de>

