Return-Path: <devicetree+bounces-272672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNNWN0tErmnVBQIAu9opvQ
	(envelope-from <devicetree+bounces-272672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:53:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E00123396B
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:53:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A56B2300DA5D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 03:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7903627816C;
	Mon,  9 Mar 2026 03:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="j4/uCGgD"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011003.outbound.protection.outlook.com [52.101.52.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692E326E709;
	Mon,  9 Mar 2026 03:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.52.3
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773028424; cv=fail; b=nPNiGpUnSfoylSvX0uJxhN6/iYGP8XGhmgCxYsEXDEAp8iDNoYpBa4MRiJlBLUuaPsqnckad8748Zv25oDjIstclvvgCI4cDV+VxZVNT3GJV2sJz2okcmD7GkHTzYvIANuio/fSXH7I0QX4VMklf2EWRcNAoi+miC8Ls9L5UOLU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773028424; c=relaxed/simple;
	bh=ZtNaPZs8cGGJiJg/ayQRXb5PeSuvPK+bAFj4n7OZLco=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=tziYXvlweGJtfSCzg2KpZkSqXx6SYNhxgaaZ1i1ovS5ngTFcM8PB++rHGJiRCeXFBvrgP+YlgL/jjV1tj1N834ZJzZce3DY5YRum0oup4rPlIRAuEsnhnfiV9Af5WxRZ4Jv2VUaUGt1WP62Tornyt8+wo/L/h2g++3BwXvut7ZE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=j4/uCGgD; arc=fail smtp.client-ip=52.101.52.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ibKvaytzob2RkURcBNRByBGGzfTg8oo6ToFImaG8TUQkXxYdd+GFRCQg2N9lUyQS43ScReRLx8IeB4Hn8Afj7X3HfMJg9FdFra3JFBUhj7EhiSCavZArf1YswsY6s1FgKUJwHUqmWtEa6ueU/+WED1iKgwc9w0ZepzF0ECM30axpOYCdVN18yR0UD6oVbLnRLFVrBFah1fD8CmYg53AXidRQd52/D9vDsSTq+VoBEy7j2wcTzqZr/rZlrhHWLfo9SC+FrQS9BmWhNjILHkyXKxd/exOyarp0w/oU51w2Lx9nBLDDQsngUbdgQqlgYvmDKE7/YAn907K1SHnRX/B04A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JjmBP0MdqxK9eW9iFSpapkIs9ZQe8gs3/i8xYseK+BE=;
 b=Et+yUULawMGyv17Dl07hKoNIh0vGnf94Ju+wVYS0G2CRetWx17mwzMkpTwSxhIKyjwJAEY53wt4DLogIw/ki3VGf3qdc96Q6vNPXjGN+03YCShqWLRFSzsZwTciknkWUCePmiT/Dx7Ja7YoQE/PE5jNH1q6dtkFj59tok6WNizOYxY6KAOG/cIsBk3rnwJL7Vmww5lfNyGGTwIgtnfH88ARK0h4T720CJcm8ethR10N17sU25rqPgJnltdoo0tMM1HmlxxIw4NsF7MGRkqZjRFBN826zBBJPNUg6RcFSNv4hs6NyUENtx0Wxr7ks9ZvhKBGcwq1BydPTyNbNhgTeeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JjmBP0MdqxK9eW9iFSpapkIs9ZQe8gs3/i8xYseK+BE=;
 b=j4/uCGgD7QW1pZzAUhS3l+D7zVYrnJpTq1iB/mSzIJFrHrXjcrSOxPDXZXiBf8RiqnzGmUbwXGNH36isDeba9CB6ZtPOPThZMW+3CW8wioMGsjFpgKHH8oyoL4UIXLFJ/okDYRevLXXGLX3pit8gvI6Wsbk5dLMhqBMvS+XB4Og=
Received: from SJ0PR05CA0056.namprd05.prod.outlook.com (2603:10b6:a03:33f::31)
 by DS0PR10MB6271.namprd10.prod.outlook.com (2603:10b6:8:d1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.23; Mon, 9 Mar
 2026 03:53:39 +0000
Received: from SJ5PEPF000001F4.namprd05.prod.outlook.com
 (2603:10b6:a03:33f:cafe::8c) by SJ0PR05CA0056.outlook.office365.com
 (2603:10b6:a03:33f::31) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.19 via Frontend Transport; Mon,
 9 Mar 2026 03:53:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SJ5PEPF000001F4.mail.protection.outlook.com (10.167.242.72) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Mon, 9 Mar 2026 03:53:37 +0000
Received: from DFLE205.ent.ti.com (10.64.6.63) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sun, 8 Mar
 2026 22:53:36 -0500
Received: from DFLE207.ent.ti.com (10.64.6.65) by DFLE205.ent.ti.com
 (10.64.6.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sun, 8 Mar
 2026 22:53:36 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE207.ent.ti.com
 (10.64.6.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Sun, 8 Mar 2026 22:53:36 -0500
Received: from [172.24.233.103] (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6293rWhK4020500;
	Sun, 8 Mar 2026 22:53:33 -0500
Message-ID: <b2143a96-cbc0-41f9-935c-ddbd9357c7aa@ti.com>
Date: Mon, 9 Mar 2026 09:23:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: ti: k3-j7*-ti-ipc-firmware: Switch MCU R5F
 cluster to Split-mode
To: Beleswar Padhi <b-padhi@ti.com>, <nm@ti.com>, <kristo@kernel.org>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <afd@ti.com>, <u-kumar1@ti.com>, <hnagalla@ti.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
References: <20260209093015.3454340-1-b-padhi@ti.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Content-Language: en-US
In-Reply-To: <20260209093015.3454340-1-b-padhi@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001F4:EE_|DS0PR10MB6271:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c8a8e73-cef3-4a26-f4fd-08de7d8f71c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|82310400026|36860700016;
X-Microsoft-Antispam-Message-Info:
	yo5VriqSPtcYfOg2Loh6a7DKOOQe2pcrOG/RTEOzAFOIcPAQvu5ehDeA9P63w/NYElhcy6Rjjw1aih8pBhisBeCGwbBqqPbZa1RHHgjcILV3b0ATEw2C0T3bb4jF+C92B5D7PJpMqld1v1obMfL9i5+uOAjpFS8bcLkYPEubuXtZGnV5QFElDabRRiyWC1qJoAzF1tTrLXsm2xG9OVcg+14yLk8d1LXABfGtWvdndNA8t7HrRoEGRLzIKtvEQaed7T453cbUz7GVF1ZjStYUkl5Ny4NLN70j/y1BCYME9fHnKGfOwR2GP7rL5eFaxK9X8UKXsuRqxbgTu0j93eZdwxAc82Z9YMzAa7sob2mCEV0M0JwVOJUDTepQhPcWyzFRfoaGVssNYn2C5tel2ELex2FeVU5hc0Xs8bbgJ4uiZl2ypy5CyVkzJLrzyVDk75WlSsFA5cbp95O6S6YCf0/jnQDpPxPnpWDByX/QaRRZLDfbq/fsdWzOyyPi5WGKKMU59ARaroafs/7PerGeh3dCmywDITfWh9covTdjeHdf389NeKMu6oAJ9KPYTew+ONyLw99hw9YMJBS5bk32tu83yg5TUuUC+yOBtP/mm8iaAoV7BrWzwCvPGwTFUloZCd+hRXFlAb6H1hVogkWzYILWoWX8kMqCyC3IcRAFaE9ZXmOPz+uvY7vxuZr4F6g7qq5+XHiQ7r5YRCWdI+/7FV7YtWwmv+4bCvt/lS1afyjjtiE=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(1800799024)(82310400026)(36860700016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	RNZCLDsGSuOzBI55JEuBZBKiFERbxjWJTQt5ELsUy7soZ+cvJQMDOJ47riwDfNUjieHuzHw94tu8fDlMufZvl/GsPvoESYjla6lDKrlHLNDtb+a/BbMZmvQAXXorDs5XyZazurSv664GB9fLHVcT5spwvDHJ3cdrtESEjm/WCty9gCE1FlWVODEJd32+RrtLcRNr4h/errwHP6qJaYcRelMA0jBsEm2+8yH/9Nktbtv9itRptwBzxAu3ABLUkiTG8jzjurzAjKdAC0LpZq8Ptw7cln5/EF/ifZv2X1yfTjAgqxpdLxfns/5dUl+dIQpvasr/Xn301j1WYVshHLwVkHF4X8KcNoMAxPnMgQNKgNWQwkxoxEjaXxkZQSRGaBtE+KQSII02ZSraZQU3yf6w0SpyCWxxQWqSj0i58ZFnU4L5c22UNaNVOy+5RHCPmzsc
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 03:53:37.4791
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c8a8e73-cef3-4a26-f4fd-08de7d8f71c9
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF000001F4.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6271
X-Rspamd-Queue-Id: 0E00123396B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272672-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ti.com:dkim,ti.com:url,ti.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vigneshr@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.967];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

[...]

On 09/02/26 15:00, Beleswar Padhi wrote:
>  arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi             | 1 +
>  arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi             | 1 +
>  arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi            | 1 +
>  .../boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi     | 1 +
>  4 files changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi
> index 9477f1efbbc61..b66faa2543f71 100644
> --- a/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi
> @@ -94,6 +94,7 @@ &main_timer2 {
>  
>  &mcu_r5fss0 {
>  	status = "okay";
> +	ti,cluster-mode = <0>;

As per DT coding convention, this property needs to be before status
like below.

>  };
>  
>  &mcu_r5fss0_core0 {
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi
> index 40c6cc99c4056..abd0d137d860d 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi
> @@ -211,6 +211,7 @@ &main_timer15 {
>  };
>  
>  &mcu_r5fss0 {
> +	ti,cluster-mode = <0>;
>  	status = "okay";
>  };
>  

-- 
Regards
Vignesh
https://ti.com/opensource


