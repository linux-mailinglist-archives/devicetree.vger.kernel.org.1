Return-Path: <devicetree+bounces-275701-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id nx+tLCpYtWlRzgAAu9opvQ
	(envelope-from <devicetree+bounces-275701-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:44:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 487C528D31F
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 72CB030168A0
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 12:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3D42874E3;
	Sat, 14 Mar 2026 12:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ETk9Sdjv"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012048.outbound.protection.outlook.com [40.107.200.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4742124886A;
	Sat, 14 Mar 2026 12:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773492262; cv=fail; b=G0P00uuCNsmLfZ0U4N5dxhIXAxxr4GsF2sLueH0mmYpq7zuD8Fo8+YFx+h53mT1p8qbd1GzcmZoPq9+HsiARzcuCpDjVSuxmIYgr96lNLkgCaRq3Di2FdR5yJLnLIcvnoaLuv3/B0gkWnq9/lSQfXRLXBZDdltTPBiOWLF4iqn0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773492262; c=relaxed/simple;
	bh=cIzlYOLGnWlpu8Veq5A1VF00XjTUjABxjEy4N5Q5Nlc=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=WH52mpPh5ZAcrhCzq7H2zUwwFOyoLl4BjVaPHcG2ZvYf1AmcZCXHIMmaZY1ECYtjwKGMn/2Yjin1unc3g1F31DnwMvDAy8F3ynwt8GE+WQkVSNNi0fNpySY0oE5ZPbTXcQJoDaX4Kj9ltWLaVn19Oj5bHMoWkjOqdquaCuAg7jE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=ETk9Sdjv; arc=fail smtp.client-ip=40.107.200.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fVDAG4akccElaEZjDrRSu+0UwScFdoKQDEgSieTqJVSW1xUrg/iXs8Im9eTXecA7//QGtewnmkY7wO+RdOaz9i6Jqn6/iIkonx3VOC4YiF0uMzVjRZeb3wgzN7SMzO1Y0iQSsGafSydIaGuJsB1xlSftHb8kHsugH5z3aGkAoAewjYek5eDHMkbtGT78UaAYiO5j5P3WXn4IO7BnkM9fT9piOV+wIvDzi/vErsu/67M+pFcCor7QMaTf8gTDhKwMDgW5El8SqqBAjzPe/1eVvVG7qsr4bjCK93RO8b8d22hd0NXP6B0B/kEmASB2JXKf5FES2E/m+sivD9RPBv1TyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hdj6pYVf3MlWx1KQWQJp+wwAam89Yib/Ytw0wY8whes=;
 b=ADKtdRWyJJzdfGfYnoIoN0N/EHewPX5jZ5mJn+wMkPaF1dJ9697Ke51mIonvheQjcoXb/wDEkpuDD8aGlxkhYGPpw81uG4liXD3y0nQRW0MFLUMEHoI/nW5Syn/ddNFD7zNOI7+VIK1nSONB1tvRTGk3qBPd3+5Fkn8hzsg5egK9pCQ82AXAjImYqdlI7Yb1CdHtMIYS57H/aTPl/CiMO7vddJjfg/uxFlBvLuxszisJHjqnu2MaYfe5HUgO3i9BeEvIIcCIjB53YylB+OKbF0DXmedjGswjvjtXgDthWEvowOtgCJEOjWI30meXyMi1UIc6lSBkBias/uRppj5I7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=lists.phytec.de smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hdj6pYVf3MlWx1KQWQJp+wwAam89Yib/Ytw0wY8whes=;
 b=ETk9SdjvsH4N9nsCS9gsJFDWuzFwppgsm0f1rrycKHciUEztvzvkSbSb9RKGEmjKF6DLq5yV6M4QdYujJi1E7xYii+oJtBaQE27uTKmnucwatPkFdLCqFxVro22l8DR+R4YNZAxp4xSpdJYEDV7ys1r2xqLRugLemKtwf3XecM0=
Received: from BL1PR13CA0442.namprd13.prod.outlook.com (2603:10b6:208:2c3::27)
 by DS0PR10MB6894.namprd10.prod.outlook.com (2603:10b6:8:134::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.17; Sat, 14 Mar
 2026 12:44:18 +0000
Received: from BL02EPF0001A100.namprd03.prod.outlook.com
 (2603:10b6:208:2c3:cafe::6a) by BL1PR13CA0442.outlook.office365.com
 (2603:10b6:208:2c3::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.17 via Frontend Transport; Sat,
 14 Mar 2026 12:44:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 BL02EPF0001A100.mail.protection.outlook.com (10.167.242.107) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.17 via Frontend Transport; Sat, 14 Mar 2026 12:44:16 +0000
Received: from DFLE212.ent.ti.com (10.64.6.70) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sat, 14 Mar
 2026 07:44:16 -0500
Received: from DFLE213.ent.ti.com (10.64.6.71) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sat, 14 Mar
 2026 07:44:16 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Sat, 14 Mar 2026 07:44:16 -0500
Received: from [172.24.233.103] (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62ECiCTg1752456;
	Sat, 14 Mar 2026 07:44:13 -0500
Message-ID: <07e2df6f-beca-454c-a080-b18b37b5daeb@ti.com>
Date: Sat, 14 Mar 2026 18:14:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: ti: k3-am68-phyboard-izar: Add
 LVDS-Display
To: Dominik Haller <d.haller@phytec.de>, Nishanth Menon <nm@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>
References: <20260311234844.56443-1-d.haller@phytec.de>
 <20260311234844.56443-4-d.haller@phytec.de>
From: Vignesh Raghavendra <vigneshr@ti.com>
Content-Language: en-US
In-Reply-To: <20260311234844.56443-4-d.haller@phytec.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A100:EE_|DS0PR10MB6894:EE_
X-MS-Office365-Filtering-Correlation-Id: af35a290-3f12-4f73-a419-08de81c767aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|376014|1800799024|82310400026|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	XjJvKJ629IR14Wc397AGiHl+FLqs3Ldz3xthxM5qAXvVvT4WuPm+IiwWeESrgyekAPqVKlTw44Vp+dSD6WU0oJWr7wnoqwlGNIWL5jEUw4jqP2vd8IuW4peQmBDC0j0d4OzVVGDiTM+TbbA4ZzditEQPHqyUg5BTkfO8DGZt3u3JGknSbS6fGhgjwrsMP2tuUH+6TDmB1dd2MBlMha9nxpgCglpxw2ynVnWF5KKw5QfoDAMZpoTW1bcq5LXyTY6fswjwaGDBkOer+nHE/mS+QCzimkpp50R1ytNCdWi1RTsQyDotcvC95ZfwwSXACIefzo5oJ/G0ag0YeTTxKyIQWYCmiu5TbHqnxewSq6hQvJBoOL7nM5MtbBajr2VYa1hYTVxvmilO2YtIlN2vPLaVgVEz68ngB8pLP51DjvIXEeE8zx4X5XhXZeM3CW/U3AvDarbPA2ptfYNP8wYE4sVn6WKtsb2advQ/mA5zm/t+WElTd4z12Wyo6nnHTIFZkcL5FjuFZjTfNNXsJzm+iAy83tjD1KXOnr8Wyg65WD+2OQhGfROaNiNjaevzxuH/eN0cKKXXhE24P+K5ZGBPwCayjDZbi/yIaGtwt8sm/WuSIO7tY3+JHOwSo/ohxTYIS3eeJxSwyu7r4SZzc3plgCn8Su3syhDAgX+UGVqcTehRsVEV55RutH8mT4mJUjG1YceM8qXFwTU4I03CUqpNhTNSGneTw675SIqSZZfl533BVEOgMk6cN1w5m2FAKKmkk/+FTR6iFCUhU96cGaZ4td6nuw==
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700016)(376014)(1800799024)(82310400026)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	MD16w/M855WNCBWgCRrniw64VxHRT/xuzarEOaHvQt1Esw/AkmC9kvuH1QbJKBxe2oq5tHEybx5onztveauTaHKjcl8Dr31kPvabx4ZlHK/9tVI4dFuW4u9UWCvmFGxH0DKOCzm7L/Ithv6ZxLDdrzabYdclNj5BjT6dwtiBu9bhN/Vp+Mz49EdyWhne/MMBzP6leWHQq3f3JMXvExYCXDHujGpbchvDKsWY+fBxssTSXEUSohiaOSKiE+mNUIPorSButzWWlWk6ExYhRc+teIPTwk59aaA9/ObsT/FkJWZojn+UQnyJ4hPHOChFVIWp9CfyVnxEiuXq2H909XEk1ZEFZf6rhw/RoUXadSjCw3+gipkyq6j//7/WMVoAtl6hi6Su9HS9HI6ep4DWfmDVA8XsVOmFH4TF3IQi1/00EuLD3eJzl1jT6iPe9PWy85iP
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2026 12:44:16.9649
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: af35a290-3f12-4f73-a419-08de81c767aa
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A100.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6894
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275701-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.1:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ti.com:dkim,ti.com:mid,ti.com:url,0.0.0.2:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vigneshr@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 487C528D31F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 12/03/26 05:18, Dominik Haller wrote:

[...]

> +&dsi0_ports {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	port@0 {
> +		reg = <0>;
> +		dsi0_out: endpoint {
> +			remote-endpoint = <&panel_bridge_in>;
> +		};
> +	};
> +
> +	port@1 {
> +		reg = <1>;
> +		dsi0_in: endpoint {
> +			remote-endpoint = <&dpi2_out>;
> +		};
> +	};
> +};


> +
> +&main_ehrpwm0 {
> +        status = "okay";

Use tabs please

> +};
> +

[...]

> +&sn65dsi83 {
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@0 {
> +			reg = <0>;
> +			panel_bridge_in: endpoint {
> +				remote-endpoint = <&dsi0_out>;
> +				data-lanes = <1 2 3 4>;
> +			};
> +		};
> +
> +		port@2 {
> +			reg = <2>;
> +			panel_bridge_out: endpoint {
> +				remote-endpoint = <&panel_in>;
> +			};
> +		};
> +	};
> +};

-- 
Regards
Vignesh
https://ti.com/opensource


