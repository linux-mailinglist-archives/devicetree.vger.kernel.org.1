Return-Path: <devicetree+bounces-265350-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFxqLI8dj2lQJAEAu9opvQ
	(envelope-from <devicetree+bounces-265350-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 13:48:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D79136242
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 13:48:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15384301389A
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 12:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04615354AE2;
	Fri, 13 Feb 2026 12:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="dbak++nT"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012046.outbound.protection.outlook.com [40.93.195.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A348347BD9;
	Fri, 13 Feb 2026 12:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.195.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770986891; cv=fail; b=se7wm1ecAiz32CUlvMCD5myA8oqukqq2pD6qocPK74qShrlVHpkOcRXjcl2Fvj7qE+iurC/iTsCWLB2m0VC7ysRz9FjgkNcby+aisb0R13+w6EtHo7C7PMqgbBHSfXIoYPqiZCC14qmt/bJZbKH4bWf/CsIInJKOuMhT2CABeKU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770986891; c=relaxed/simple;
	bh=b9wHjcFuqV0gF/+3iMJUDIjj3xXEk6Jp0ik2t46HEDs=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=p/4vRm8btZz1y8VVJ+KkkVK5ftBGc/8LYrsbCIcJ3KD8zJYUaUr2aACzq9Cq38SIMFpp1Y3tXToWa5e7gFISrMsNHLMqbEOCuZ0q90kpV3WoxW0gwK1/qyiQB8I3lPsnqGvLdLCmmL1Psco4nsCZiNABtQwEPEjrBlXkvubAyzc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=dbak++nT; arc=fail smtp.client-ip=40.93.195.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NC+4CHG4sPiSrWU+k0L4BmsaJoefran891PjdvqBGZa7ZZhdoUU91T0VyeaCAGZa2XYCUufAOhEM5TxH7BIM34ghT7E0eCAq6GXd0zagY1/782/EIo1VqOfZitZ/14OX2sBCoJZ2F2wRLYilxE8lbBx6XCGmSbMv7Elc5engBTkGu3iz8nNaGpYxQfBWuCOSBCvtAgcyd51QeAeYJx6+KWI+LkdWkMH1flDMNGI/8mVFMUy4tHLjSh6EMU0JSOdfb0bvGYzM4flVw5/SCOf2LoeauoSfjPVQzIYQwWrf3wYKWSiFAHEx6g87xX9BKJJVpC1itZDLq3mEY+4N57Wj+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CQHp0/s2YSIOnKLgtjY0Fm1v1vGQZEtVNj16sW54ItI=;
 b=fDg2PxdeV6M8E4/x9IxyImRvGcWKUjZlZNe2OxSkgbqgAFl8BJYQlMy8/xMtiCHzqxpiznit62gB3TlZO8mx16a2wGtQQRZS8Fxlrc0aAPRhU5DdDLb9CrhOC3+OQ3zLBxzSQtt0Dh/HAdum5dQqAp/N6TqvMvSgZXSV5CGKLCHgeCUSZGCaAotG2tMvwyuxHH/kVEc0Jj8v4q5800yJLq4K72dgElo8B/3ehPnPMJsXSm3+CCTmeLPrhccjgf2lVOMAGd7lHny6dbKM2eAHTj0V90eQbmv8qq0zypvkdVoECa4AdTNfqbLjbx+1pq/iSex4H6jr8RkP81KXdxMEbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQHp0/s2YSIOnKLgtjY0Fm1v1vGQZEtVNj16sW54ItI=;
 b=dbak++nTVz9e+P2v07q/BSGs7ZIe/JS6iEdutA9M8B03vheFTLkLWmwZo/iB8JDRxi2yQCS2S8OgzcCvOvPcPSf/7JoXh6IhIJcdQff0exKiKDe3FEmE8fPpo6pAAjDaRvC9aKPfA1J9l3Z0hXttthlVhhuCLo3EBp21Ol27N28=
Received: from DM6PR06CA0045.namprd06.prod.outlook.com (2603:10b6:5:54::22) by
 PH0PR10MB4582.namprd10.prod.outlook.com (2603:10b6:510:39::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.13; Fri, 13 Feb 2026 12:48:07 +0000
Received: from DM2PEPF00003FC2.namprd04.prod.outlook.com
 (2603:10b6:5:54:cafe::3) by DM6PR06CA0045.outlook.office365.com
 (2603:10b6:5:54::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.13 via Frontend Transport; Fri,
 13 Feb 2026 12:48:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 DM2PEPF00003FC2.mail.protection.outlook.com (10.167.23.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Fri, 13 Feb 2026 12:48:07 +0000
Received: from DLEE209.ent.ti.com (157.170.170.98) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Feb
 2026 06:48:00 -0600
Received: from DLEE205.ent.ti.com (157.170.170.85) by DLEE209.ent.ti.com
 (157.170.170.98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Feb
 2026 06:48:00 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE205.ent.ti.com
 (157.170.170.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 13 Feb 2026 06:48:00 -0600
Received: from [172.24.233.20] (a0512632.dhcp.ti.com [172.24.233.20])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61DCltju1212486;
	Fri, 13 Feb 2026 06:47:56 -0600
Message-ID: <6c0854d3-a02d-4bfe-ac03-d0bc0f536c5f@ti.com>
Date: Fri, 13 Feb 2026 18:17:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: display: ti,am65x-dss: Add am62p dss
 compatible
To: Nishanth Menon <nm@ti.com>, Tomi Valkeinen
	<tomi.valkeinen@ideasonboard.com>
CC: <jyri.sarha@iki.fi>, <airlied@gmail.com>, <simona@ffwll.ch>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <aradhya.bhatia@linux.dev>, <mwalle@kernel.org>,
	<dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <praneeth@ti.com>,
	<u-kumar1@ti.com>
References: <20260116095406.2544565-1-s-jain1@ti.com>
 <20260116095406.2544565-2-s-jain1@ti.com>
 <462b3b7a-c228-456a-84bf-0e6103be61b7@ideasonboard.com>
 <5f0d509b-f1e4-44c8-80f4-74c3f4b61b28@ideasonboard.com>
 <20260130122754.4ywqarmjzgnhih7f@recreate>
Content-Language: en-US
From: Swamil Jain <s-jain1@ti.com>
In-Reply-To: <20260130122754.4ywqarmjzgnhih7f@recreate>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM2PEPF00003FC2:EE_|PH0PR10MB4582:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e3d54df-dbed-43c1-5804-08de6afe2331
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WXNPdHZFTHlqU0Fab1BEZVd5VytpN2UyamVUOW95MWt1VkYvRHpxaDA3YzVS?=
 =?utf-8?B?d21nZlRnb25MaGs0MXM3RFFoRU0veHZSb3lzZlJQNnpCbFJ5YjEzRlFrOVUr?=
 =?utf-8?B?MnQxV1ZxeG5OVGdEWUdKZTM4WWx1OUNJUlFzM09wRTdxRzZrK1NFeHdEK0RO?=
 =?utf-8?B?dmJSaHlFN1BhbVZsRE1yMkVPTTNEVWlaczZvODRHelJDTUp4dG04ZGR5YXhE?=
 =?utf-8?B?ZUh3anNMelVYOElPY0lOQW9sbWVjUGpLTVcrVmR5c0J0TXpiT0R3N29rS1hC?=
 =?utf-8?B?TmdUNHV0VVp2Ymk4VFpZcU8ycTZUak1FOXBDOVhPWUxydnpZVmcxL0FIOTNV?=
 =?utf-8?B?ZmhUcXJ1ODV3MDB5QjdpNWZXRFFMUzNOV1hqNU5oRENQcUQzTGw1dE9ESUM1?=
 =?utf-8?B?ald5YjlJRy82VFA2RWdxZUJsVU9RZ24yd0tzUEk3cmQrQVU5TWFEOVFtTlVT?=
 =?utf-8?B?VlR6aVZFOUVjNHpyVHUzdUhtU0p5UFNOdW5GY0p2ODJYVEF2V0cvUmxDWHBq?=
 =?utf-8?B?dDNPQnpaQ25BL0UrS0F4MTVxQnVjUUFZWklKY0ozVG9uNmk4RGN2Nml0RnBq?=
 =?utf-8?B?eDIwNVNQS2NyaitsODNWWC83NFhpWTlTMm9Held6d1k3K3hZMnFWMXJPZHRi?=
 =?utf-8?B?alAxVW1xdUtyYTBhMGovZitLaTk3VlV4dkJlMVE0ZnVSdTJSUFdTdWhDczMw?=
 =?utf-8?B?bkRRcVprTWtrMU8wczEyLzR3QlRvT3g4M3VERXBOY0dYeGZkZlZzYjlCV1Jv?=
 =?utf-8?B?MTRObGoxY0lWSk45K29lNTAyVUdvbWZtS28rT2VVRm5XN0tFcVBiem53b0FU?=
 =?utf-8?B?bWxFTDBGVXJxdzJNbG10Sk5OcTUrcFpoTk9aMjlXMmoyU2Y4bnJIMitJZkhE?=
 =?utf-8?B?YnRDT2hrcFArODZPYm9keVdvWGZkQlByRFFMd0VFSGZ4eDJ5ZVJxalg5YkNt?=
 =?utf-8?B?VUdRcVB2WjVodlJLeXNrMDdVODVzZ3NIMjkzZDRNTVlPajFQeEJEODBaVUw1?=
 =?utf-8?B?d3EwSmsrdld0UUlvVzlzOFdteEtudUhycVRPd0psRUU4TUVQemZXZjR3Vlpo?=
 =?utf-8?B?N2tYOEdWUzhGVWhwamczMEllRUNvcm5rcjNpTmV3eEwwSVRrS3grSnFpWFZU?=
 =?utf-8?B?K3lPTkpFWUh6bVhkaHNsaVN5YUVBcUhLQlpUMzJjRHpod1Zra2poai94ZHl4?=
 =?utf-8?B?R1Q3VjR0bURjbTgrbk9RNElJLzUydFZ6R3d6T1YyL0pucmQveUdGdFd6eU1n?=
 =?utf-8?B?c0lwaHhIWnYvcmVYV2syTk5mcVkxdWQydWZYcjVSU0hDNms4MVZoV0U2WHlk?=
 =?utf-8?B?cjA5MlQzRDBGeUp1anUwSGhMeXZQVHJWQXBMa0lNN1dFZnJOa0FXcjZ5ODRr?=
 =?utf-8?B?Z1VyelVPdDVJVTJoWDZvd3ltNmVWTGxtSG9QYkNzMlBNOU1XODNYYlFPcVhz?=
 =?utf-8?B?aExZdnNoYXhKbEt1dTF2RkxFakxVVkZtQ1pPQTNTVGNpNjFnN3dUOWljT1ZZ?=
 =?utf-8?B?S05YM2NHcnZpU3JIck1iR1pJV2RKZUVXU29ReDVTdUJ0TFpkS3JRUHE5Y3FO?=
 =?utf-8?B?eld1dVFGbHBqK2tLajVMWWR2eGdNY1l2ckFNaU80UGs2MXBXT3JFdjhUUit3?=
 =?utf-8?B?QW1ocGdQQzltMENrbU5mUTFaSzRFdEtXQUdyU0NCQTdNYzVRdHpFbDVNcEw2?=
 =?utf-8?B?eUhWcmtlSHNOTkdtM08rNHRyVDJlUGRpZ0dzRHZKejlUTTFEZVJjcmVpNFZs?=
 =?utf-8?B?dko3cUZHQTNrNnJNTFdqdWwrTitHbDlxN3MzREdtZStqUHI5dTAzMmw0WXFM?=
 =?utf-8?B?WFRsOU96d3hWbkJiTkRtZkNoZnc2UWdRc3FiSTAyNHRzUFZIOC9MRXhkSVJw?=
 =?utf-8?B?dnJpek9neE8rdXpDdjVUeENjNWRVa2wyMXl2OHZnNWxCL280aFU0S3A5Mi9r?=
 =?utf-8?B?NlhwMkZyaGRCNWZOK2RGcE1LY0lHUE9DSDBRaWVtRnJDQzNYRExDcW1jYld4?=
 =?utf-8?B?dXlmZmorT3hrYmZzdmswbkp6L0NQV2kzYXN2UEJaR3M1ZFRuT3J0YUlkKzNW?=
 =?utf-8?B?WDd1d1BvUE1aeG93bVR3T00vMS9mNWVib0FWVVREWFA2amRWOUd6UW0rUmJt?=
 =?utf-8?B?MGY1UTliSURkY1pGeFFwM2xVR1gwTWRpdjdneDkvbmpGWXJSQzBhQTdJbVdF?=
 =?utf-8?B?V3dVTVg2WGsySGlJUFhXTzVWWWdNTWd5NGpPcmNVL20wZ1BGN0VSSGFCYk9a?=
 =?utf-8?B?TnpGZW1USFN5ZWYxVWpZRElLQ3RRPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(7416014)(376014)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	gieM9Wp10HTG+NbdFSGjk6VPGWJmRiIMWEsw1GCgT7y5JQcCPKpC77vTfQvxbfb5b9RTZX7GTaZuFdcRw0Zw/j4elEvslZjhJ4xV3+1OtFL25SpCTaf0/IoNKiuz5N1TaxxvXaVKiK5JrxS4KdJcI+nus2NA5IqVGsZsOk29K4VdfNXjsI8Tr/jme+FZUVi1LPZ5y46k0Cde2HRA7LZWUisXFJW+ORzYAZ56p9qSL6HBOUsfB1YFhd6FlMqw+RVrALrhKfV4BT2TqzUztEzBfLnjEF8I0lxv5R/CSl1E4LiNOiZ9lBAYLai548zRlUeDXelgEGK5vaCZJVzhVTG923TazH+YNqVea2X1f76GHL/zKSriCvy0KJfrcL9ksKlGQm/wTQ8BO7MpUUP0lwGTIfKl6sE5BhEdn80v4+IHspxDUIrDcizg1Je5YxfyZs+i
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2026 12:48:07.6864
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e3d54df-dbed-43c1-5804-08de6afe2331
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DM2PEPF00003FC2.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4582
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265350-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[iki.fi,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,linux.dev,lists.freedesktop.org,vger.kernel.org,ti.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:mid,ti.com:dkim,ti.com:url,ti.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s-jain1@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 28D79136242
X-Rspamd-Action: no action



On 1/30/26 17:57, Nishanth Menon wrote:
> On 14:00-20260130, Tomi Valkeinen wrote:
>> Hi,
>>
>> On 19/01/2026 12:10, Tomi Valkeinen wrote:
>>> Hi,
>>>
>>> On 16/01/2026 11:54, Swamil Jain wrote:
>>>> TI's AM62P SoC contains two instances of the TI Keystone Display
>>>> SubSystem (DSS), each with two video ports and two video planes. These
>>>> instances support up to three independent video streams through OLDI,
>>>> DPI, and DSI interfaces. The OLDI interfaces utilizes two OLDI
>>>> transmitters OLDI0 and OLDI1.
>>>>
>>>> DSS0 (first instance) supports:
>>>>   - With respect to OLDI Tx interfaces, DSS0 instance can either drive
>>>>     both OLDI0 Tx and OLDI1 Tx together (e.g. dual link mode or clone
>>>>     mode) or can only drive OLDI0 Tx in single link mode with OLDI1 being
>>>>     utilized by DSS1 or left unused.
>>>>   - DPI output from video port 2.
>>>>
>>>> DSS1 (second instance) supports:
>>>>   - With respect to OLDI Tx interfaces, DSS1 instance can only drive
>>>>     OLDI1 Tx given DSS0 is not utilizing that as described above.
>>>>   - DSI controller output from video port 2.
>>>>
>>>> The two OLDI transmitters can be configured in clone mode to drive a
>>>> pair of identical OLDI single-link displays. DPI outputs from
>>>> DSS0 VP2, DSS1 VP1, and DSS1 VP2 are multiplexed, allowing only one
>>>> DPI output at a time.
>>>>
>>>> Add the compatible string "ti,am62p-dss" and update related
>>>> description accordingly.
>>>>
>>>> AM62P has different power domains for DSS and OLDI compared to other
>>>> Keystone SoCs. DSS0 can have up to 3 power-domains for DSS0, OLDI0 and
>>>> OLDI1, and DSS1 can have up to 2 power-domains for DSS1 and OLDI1.
>>>>
>>>> Signed-off-by: Swamil Jain <s-jain1@ti.com>
>>>> ---
>>>>   .../bindings/display/ti/ti,am65x-dss.yaml     | 37 ++++++++++++++++++-
>>>>   1 file changed, 35 insertions(+), 2 deletions(-)
>>> I think we have a bad design issue here, and I don't know how to fix it.
>>>
>>> The OLDIs have been a bit difficult to model, as they are not full
>>> devices: they are not on a control bus, and don't have registers, yet
>>> they need configuration. Part of the config is done via separate IO
>>> controls with syscon, part of the config is done via DSS's registers.
>>> It's not documented, but I assume the OLDI registers in the DSS IP are
>>> wired somewhat directly to the OLDI IP.
>>>
>>> So currently we just consider OLDIs to be part of the DSS. We do model
>>> them as separate custom DSS child nodes in the DT, so that we can model
>>> the pipelines correctly. For example, to support dual-link OLDI, we have
>>> two OLDI TX nodes, which get their pixel stream from a single DSS port.
>>> The power-domains for the OLDIs were just set as DSS power-domains, as
>>> OLDIs were part of DSS in this design.
>>>
>>> This felt perhaps slightly hacky, but it also made sense and allowed us
>>> to model the HW.
>>>
>>> Now, with AM62P, it gets a bit interesting. We have two independent DSS
>>> IPs, each of which have two output ports, and we have two OLDI TX
>>> instances. The OLDI TX instances are shared between the DSS instances,
>>> and the first output port on both DSS can be muxed to an OLDI. The first
>>> DSS can be connected to both OLDI TXes, the second DSS can be connected
>>> only to the second OLDI.
>>>
>>> This DSS application note has a bit more info and some pics:
>>> https://www.ti.com/lit/pdf/sprads3
>>>
>>> Now, both DSS instances have identical registers for configuring both
>>> OLDI instances. This is not documented, but I'm guessing that when
>>> configuring the clock muxes (the clock tree is also "interesting"), it
>>> will also mux the configuration wires coming from the DSS instances. So
>>> when you change the parent clocks for DSS & OLDI to be the right ones to
>>> use, say, OLDI TX1 on DSS1, you also change where the OLDI configuration
>>> is coming from.
>>>
>>> So the OLDIs are now shared, and the configuration registers are
>>> duplicated and routed based on clock setup (afaiu). Clearly the OLDIs
>>> can not be considered being part of DSS0 or DSS1 anymore, nor can we set
>>> the OLDI power-domains in the DSS node.
>>>
>>> What this series does is that it adds three OLDI nodes, two for DSS0 (as
>>> DSS0 can use either one or two OLDIs) and one for DSS1. And then,
>>> depending on which OLDIs you happen to use, you're supposed to set the
>>> DSS power-domains accordingly, so that the DSS being used for OLDI has
>>> the necessary OLDI power-domains. And connect the media graph so that if
>>> your panel uses OLDI TX1 with the DSS0, you connect to that OLDI DT
>>> node, but if you use the same OLDI TX1 with the DSS1, you connect to
>>> another OLDI DT node. I don't think that's right at all...
>>>
>>> I don't right away have a good idea (well, not even a bad idea) how this
>>> should be designed.
>> I still don't have a binding-idea that I would be satisfied with, but I
>> guess there's just no sensible way to represent this hardware. How to
>> model an IP that has its control bus changing based on a clock mux...
>>
>> I think one thing we can do is move the OLDI power-domains into the OLDI
>> nodes. That feels like a more correct place for them. Earlier the OLDI
>> PDs were in the DSS node, as the OLDI was considered an internal part of
>> the DSS. But now that the OLDIs can move from one DSS to another, this
>> "OLDI is part of a DSS" model doesn't work.
>>
>> However, even if it looks fine on DT side, I wonder if this will cause
>> problems on the Linux side: OLDI is not a device, so I guess we still
>> need to associate those PDs somehow with the DSS device.
>>
>> For the issue with the control bus, I don't see a solution, so I propose
>> doing what the patch here does: The two OLDIs are represented by three
>> OLDI nodes in the DT: OLDI TX0 and TX1 under DSS0, OLDI TX1 under DSS1.
>> Only one of the TX1s should be enabled at a time, of course.
>>
>> So the DT structure would be something like this:
>>
>> dss0 {
>>    power-domains = <dss0 pd>;
>>
>>    ports {
>>      ports for DSS videoports
>>    };
>>
>>    oldi-transmitters {
>>      oldi0: oldi@0 {
>>        power-domains = <oldi0 pd>;
>>          ports {
>>            ports for OLDI TX0
>>          }
>>      };
>>      oldi1: oldi@1 {
>>        power-domains = <oldi1 pd>;
>>          ports {
>>            ports for OLDI TX1
>>          }
>>      };
>> };
>>
>> dss1 {
>>    power-domains = <dss1 pd>;
>>
>>    ports {
>>      ports for DSS videoports
>>    };
>>
>>    oldi-transmitters {
>>      oldi1: oldi@1 {
>>        power-domains = <oldi1 pd>;
>>        ports {
>>          ports for OLDI TX1
>>        }
>>      };
>> };
> 
> I was discussing something similar on #devicetree yesterday:
> 
> diff --git a/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml b/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
> index 8203ec5e5bb3..7902637587b4 100644
> --- a/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
> +++ b/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
> @@ -29,6 +29,11 @@ properties:
>     clock-names:
>       const: serial
>   
> +  power-domains:
> +    description: phandle to the associated OLDI power domain
> +    items:
> +      - description: OLDI power domain
> +
>     ti,companion-oldi:
>       $ref: /schemas/types.yaml#/definitions/phandle
>       description:
> 

Thanks Nishanth, will re-spin the series using the approach suggested by 
you and Tomi.

Regards,
Swamil.

