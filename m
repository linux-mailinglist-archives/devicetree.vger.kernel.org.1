Return-Path: <devicetree+bounces-229134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF14CBF468A
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 04:56:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7519018C069A
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 02:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBE882749CE;
	Tue, 21 Oct 2025 02:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="YVhg0OV/"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011054.outbound.protection.outlook.com [52.101.70.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A206F262FEC
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761015366; cv=fail; b=G+Oi+nrG5JyZ5Iok9Qm7RcHwAkpR+smpTqiNkKjLY1jqR+ey6tHqyi5ffNSmx73ezwR0nmvTFs9fGJhmyCyZMAr/PVTwS0pJHf2aHDjUE7CuQXFP/GqCb8IljK93jDIEOZ2+4Zy3PDbP5hCNELt0YyxBiGB8mi8UFdW1VQ0c0gU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761015366; c=relaxed/simple;
	bh=dgjw/qEIhozuq/ixGp+Valjn8/2eD0kT67B5Cwngn7Q=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=JyjA+lpOvdQvTPPqxR6jypz/s+HVXevdFAb4D4IB+1HcpAIIzCSOibAGss7F1VIcd4Qpqrrhjaq/UXtM8PH+SF+S/V/nw2ClDOGP5+v+Azrkno2pn2PuJ0DIoG6fNRBMQsaWJSJtno0Sv9nUwQ+/2t2ukD6iVeam919b0SR0ZJ4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=YVhg0OV/; arc=fail smtp.client-ip=52.101.70.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=smvaeu7ucT2U5ZBSeoGrwYNZ+KG48VpUHwUqbfk9alJ6BTopHU99xO7n3xOK54n9H5Vb1AfyuKazoRWzQ6QoVK0TODTf+n05OO5puIz/+I7efk6li8TpTkjTUvW9/WiiTSJIQG4rkJuyYbs03xPqkfh88jIRfeUoCDegasAif4GpVK9l7dUvo97EnMQc8mUcDzFEqtOlKsdXYP867cf69NXdn9paKJtUE6q8KFpVzqnCEDMN+7tNojeYp1gOt6dJrSJRnA3sOLNkZINDX8XNVD3IZ+M8vRmDHjs6S6N386SOWQDxtL14uQwHRca887VrHUjk+k6z8YBd6NP52ASehg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nN54MM5RbEyKvKdSYWvrocuI3sxxQjZ+/RoF/2RiX24=;
 b=WLUoArEvwJ21vcR16Y71TmrpLRvhM7ltMW/oDAGXRRkOOGr1mCp8s9XAoZrzpGEGOAk/J6YCsv7H40rKUBSGUKHeBLd//EfWzM/xlE1ZfnpCMYosCN/WJzJSrklGTB251AukV+MIYq7xL7hOxLb0ZBb9aL25xb+K6VNUaCY1erZ7Xsa1AbkYtqQ8+d+3m88JKJC0YkDgRx9j3ruu44W2linCpmo8ZAH9ql3rRGK5McsXewsbyLcGtVhkgaUQ692kTJZC/XE4Fsi+dE60wH0v27lidRqwGUs9AVwGZkiYNUg7EXo5vR+9LHmSDx6BiIMaQUCejkh486hFx3F1WEBTQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nN54MM5RbEyKvKdSYWvrocuI3sxxQjZ+/RoF/2RiX24=;
 b=YVhg0OV/nheApPOEvpOE2ZBLAa3IJR48UXu75c6sCmglGYpp2OOFJ2SIigOREpBnZnCuC749zHy5tbt2dnpfYRLKDbW0Ba1X3FRPbkbZknCWccbbSKgc8PDt/ylxU3ZuTNMm/nGx0DRMKVLxxcG8GipYaysKeixK1qgYN/bkrUdU3QtSD6jAA2KjdyKd7MxzV3dFm1gfzIkKQgcNJZ6tER5L3fsKSHsnHykfI37PMY+jAY1VEDb6iFRxDjVDjbpXQmXLhGawpM9atuh3YU5GZAasF4B5kAIHBBM5rGz53Q3wt1AFDRVVLdUdxG4Y9GK2UPVFj52f/wGISxqAg9L3ew==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by GV1PR04MB10607.eurprd04.prod.outlook.com (2603:10a6:150:203::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Tue, 21 Oct
 2025 02:51:58 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::4609:64af:8a4b:fd64]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::4609:64af:8a4b:fd64%6]) with mapi id 15.20.9253.011; Tue, 21 Oct 2025
 02:51:57 +0000
Message-ID: <37b8d968-a725-404e-8fd4-84c2a0bb464c@nxp.com>
Date: Tue, 21 Oct 2025 10:52:20 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v4 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif
 fallback
To: Fabio Estevam <festevam@gmail.com>
Cc: marex@denx.de, stefan@agner.ch, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 shawnguo@kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20251013205155.1187947-1-festevam@gmail.com>
 <4bd512fd-b3df-484a-8a04-a1ed066c42fa@nxp.com>
 <CAOMZO5AGRejEwNvkH0Di0HVi8QPduTeCSud+_GqOkD4tqEcsdA@mail.gmail.com>
From: Liu Ying <victor.liu@nxp.com>
Content-Language: en-US
In-Reply-To: <CAOMZO5AGRejEwNvkH0Di0HVi8QPduTeCSud+_GqOkD4tqEcsdA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SG2PR06CA0214.apcprd06.prod.outlook.com
 (2603:1096:4:68::22) To DB8PR04MB7051.eurprd04.prod.outlook.com
 (2603:10a6:10:fd::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|GV1PR04MB10607:EE_
X-MS-Office365-Filtering-Correlation-Id: 86e703d3-723d-49c9-457f-08de104cccb3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|19092799006|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bDNSb2pKUHFhL2FMVHlLNVFYelR5cnNrdHdLanZkL0tSRVY5bDhuNEFHNHY0?=
 =?utf-8?B?My9qdEU1NE16VVNlRTg1bFJoVDB3YmpoZTBSQ2pVZCtObHA2eWhjRjg4cTZL?=
 =?utf-8?B?WXhvN0tPczUwdnQ1dTJvc0JqK0lNSC80OHB5RkN5aG1sTVcraDhQSkFWbndJ?=
 =?utf-8?B?S2xCTlg4TkU5d0hZTnh4YlFnMkUzNEhac3pUTVU5ODBCeTEvdGRoOFlmT3la?=
 =?utf-8?B?Z3Jsa1QxK3ZpdlQ1SkNwampsbDZIdEo2TjR4Rzgwd0hKNzl0REhXR2pjOEZ3?=
 =?utf-8?B?ZGZoYTYzeUNnMHZtbGU4MzBscUFmbmJXY2xMb3hlM0VHOFlSR0xQa0tBNHRC?=
 =?utf-8?B?YVVxeS9HVnZhc2ljNitweG9nSWRTZXBSVDBCVE1ZNnRJbTZIRXNIeWxTN1Jr?=
 =?utf-8?B?OFMvRnE5a0F3RThiOTN2WGw4MFYrZ3Y3eWhxTmFqajJzUWZVdGVjZFV4VGQx?=
 =?utf-8?B?YTJrY3V0WGZsRXlTL2l2emt6YllFNHR0dEhRdVovdmZ0aTgwM0ovTWVsUm9U?=
 =?utf-8?B?MEVZcXZ6SmxmQTFHMHg3KzJMQ1hUQVVleVVZaDlFVGxDT3M2MDk2dDlsRFZS?=
 =?utf-8?B?N3lpeWZVUUU5YW1QUlFBbURQWE1JWld1N3NvSE9HdTlMMjN4dXgxRHFIYWhM?=
 =?utf-8?B?QVhJYTh3Wk1ZckZJMW90WG81Z1FmaVd4dmtSOVY5V2FrU04wejNYRkd2U3lR?=
 =?utf-8?B?ajEyeE85V0xFVmFDc3VjZ2RXV1E1Lys1ZkZSY0FDSmtQZW1pQ2dQWUFlUVlm?=
 =?utf-8?B?dzZ2WnNpVERLWjVIZjNTOC93NzR1NE5QVjdQc2xCU3NMTFNCbmNyU1VXeXdy?=
 =?utf-8?B?ZzFWeXplNDU5QWZrcisxUEUwa0hoRC9xaS9xV3ZRUEZuaUcrVG1STEg1MmxX?=
 =?utf-8?B?ZVlBS0V5alg3anhkb3o3TjhDdm9aSHExeEtjRmp0RkRSN3ErN0RaaWR1OEt3?=
 =?utf-8?B?R05hSUo0ZVlYR2ZEcENzWEtnb2E0aVJkMnBidWhPbjRCNU1Nbm5PVG1MMHgw?=
 =?utf-8?B?TlJXd0FOZjE2WTRzaXB4WjFNQWN6Q2l3UFV4L1ZXTGdqVU1ySERmNml0V2pX?=
 =?utf-8?B?bUJBK2RONTZyMTFvcTlmSy82ekVsRWlZeVBTSUMvRmRLUStwaXJTTVF5eFlI?=
 =?utf-8?B?M1J2Tmk3bXV5U28vcmswYWlvampncG9DSTdqVXl6emtrKzFxR1psZnU2UGhS?=
 =?utf-8?B?b1REZWpjallCdytNY0JqemUyS1J6eURyRERNS2dFN3dQUmZqS1JMam1oejFH?=
 =?utf-8?B?Y2tsdmw4V0dxWWI4Zk43YU43Uk1hRWZUamxOWlhXMVZMaURrMGxvMk1wc1RB?=
 =?utf-8?B?MEFNVGsxYXA0c1VQdHRxUmU1bVoraTFqTk9pck4xdnlnR1Z0MjJqN2wrcHd2?=
 =?utf-8?B?TmFESXdkUDNmdThBWXl1Z3BCSHRXajNsZGtrb0ZZc0k3SnRINzl6QmRyYUUz?=
 =?utf-8?B?Vkc3enNqYVlYaDNlem5pY2EzK2o5MTMxUEpZMHdqcXdORUp3OFZ1NWNOdlR2?=
 =?utf-8?B?Z0JtaCs3QnI1ekFEZ1I5b0tDdUIwc0ZjRmFLSXNiV2NkV0NmdStqUVM1TjIr?=
 =?utf-8?B?UFJoemlDYVVxcVd4VVNBU1NLSmp4YVFSTGxxYWZGZ1FoQ0FNMDd4enoxWFJW?=
 =?utf-8?B?MCtYVHAzUTFjOHJPVHdneUN6RFRlS1BjSnlLV2dvTFpqRWs2d0JIVWk2SmVC?=
 =?utf-8?B?MVZhb0hLTi9SSExUYXR6NVVTbG5kSU9JTVZkQkN2VUNabjNPVU1uYUkva21S?=
 =?utf-8?B?eGR3aFUwTkFSaGZvZmowZVhyOG9wQ1l0c240VlRmOEkrczlDQVUwelVHeVFX?=
 =?utf-8?B?N25PdHJoSkkwZkNsVUhlWktVMytxRkx5MW5WbENGWmkra09KQzJ2cEh0TUo1?=
 =?utf-8?B?bFREQ3Y4ZS81WDVqSmg1ZkY5WUJ6aFM5ZWY2bEsvOG9KU1AyaGxEeE5BNkVu?=
 =?utf-8?B?T3RuUkNxZ0ExUlZXL1U3M0cyemVYUmIyanBCNWgrZTlweTR5OUJ3QUdCaHZy?=
 =?utf-8?B?ak9iSjduMUxRPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(19092799006)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?L2RNeUNXSzc3ejNJTU5jMWxiY29JRWEwMGw2Y2dXcTJBcmZFandxRUI3eTNk?=
 =?utf-8?B?d09KejZOTTlya21vcGs4d0NrN3daNWtOd0hvV1gwb1gyVFlVOFBJd3Q1cjFZ?=
 =?utf-8?B?d29KdE5JSG5kM1RWMUxOaTk3RG9FWGFqcnhaQjFldjloVU0wMFcwbzJETHVi?=
 =?utf-8?B?d2JhZW9haXJPQ1UvUHhRYWpCTW9QOUpwVEwxUjA2MitNdEp1RmxGN0lwRnZ3?=
 =?utf-8?B?b01sWlYzV3hBS3RWbFp0V21aeUxKMlp4Um41ZGdvTnE4OGcyMXFVTlUxWjBk?=
 =?utf-8?B?d2d2UllWY09hREtZdEpEeWJGekpkRnlqN3ZHU3ZNSVRocVNTSVBzN2JOelBy?=
 =?utf-8?B?YWhNV1loc01lWElONmpqNU5odEUraHcraWlJY3BmMW9BT2Jud3RhcitIYW1N?=
 =?utf-8?B?c2VxcitQZEtPVWlOUFdJZkF0dHN1aXJIZDMrdVRBRzRBUzAyV0lHVW45ZWpM?=
 =?utf-8?B?R29EZlprZnBoSFdZRzVLa2hNRG1LYnQ5S29INUFWYUh6NkxBd2V6VStWQktI?=
 =?utf-8?B?Nm5JSkV6Wm1QbzBMeDZhak1kK21hNmZNdkU4YXdGSGtycUpySE1QM2tLRWE3?=
 =?utf-8?B?NjJ4RHZiekdjQXJGVUZXK1QrQ3pZVTFOWW40cjdOZlBWZDFuRkpZZDNOTXF2?=
 =?utf-8?B?TlkwczhlTUlEMzFoQlcrcGRyOXZSQklpNnV5K3MwVDhyN2hjNXpjTXE4YmN6?=
 =?utf-8?B?TURvTTkyVFpzaVd0TU9YcE5WSGJLSE1vaTZXOFdWQStidVFETDByWDRVaFVj?=
 =?utf-8?B?V0E5QzNhM1BVTElkNnM2ejhpWlJzMnAwZDN3eVVHT0xJWmJ4RThNSHM0TkMr?=
 =?utf-8?B?c0YrZnlTemJRbkNPb3lia20zRHpYZFJZQ2NVTHhPWjB5VXhxajlqVkk2YmRt?=
 =?utf-8?B?OHdFbnkwZmcrOTJUS3RLaVpKN241VU1KRENlMVAvUEhyR3dsRlVPdDJWU21u?=
 =?utf-8?B?ZDJ1NTlOcW0yQU0rVU9UTjZ4dndEWSt1N3pCWndhK3RQSGxhVFBqeCtpZ2w4?=
 =?utf-8?B?R05QSm96N0Jjemo4dzR4MGtkM3Q5RmVYRHlSWWpNZnRHRE1uckhLSG5Rb3Bo?=
 =?utf-8?B?TWROTUw0MVRHTDJBUnh2dktKQm1CUXFxTHVqakpMdmlscWViaERwUVZWbkNS?=
 =?utf-8?B?eDU2WWp6MVB4TmZVVDV3RGxiMHBNdWtra3d0V0dSeU4vVmpzWVpjQzJsUVcx?=
 =?utf-8?B?ZzJhYWZESDFTcTVaMlU2VTFiYlFMUEM1M0x1c0d3Y1ovWXZBWHRxY3NYZjJ5?=
 =?utf-8?B?UW1yMGZoUDJwTytxdDQ1aHpkb1ZWWjJiMktpK3d2ZFE5ZWp4SXoyVFNVS294?=
 =?utf-8?B?K1kzTEV3ZU5VYmtGWU9odnB0N2FoaFpYaGp4dDZyTTVPaytBZUM2emYzMksz?=
 =?utf-8?B?THZzQ3lKbVpoOUxraEZLTytYYlpQbm9RbTIrZnJjekZzM1lYMFZmVk45VzJC?=
 =?utf-8?B?R0JENUVLUWZsZVN5RmFEc3NpN0lLYzZaQ3BWb2RZWWt2b3ArdnNDNmZITWl0?=
 =?utf-8?B?YmxHZGdnemMzeWh6N0wzcDFCOElWNXNqRVBadUlFNVN4RmFNVEpraHErckhm?=
 =?utf-8?B?c3lhN05SZmREZVhuNS9LOHZjeGxlcjFXWGtKQW5NM1pxcDJOcXBBSGU2cDMz?=
 =?utf-8?B?R2o5MG45eEhVczJUbVdmd2NOVnhkZFQ1V1JLTzFZbEJZZHdHY2gya1pvNzcz?=
 =?utf-8?B?RVJQTytVM3JiMGVjMWtIc0srYVRneW4remZMSS9rZ2JiQzRiRG03bVBYZE9v?=
 =?utf-8?B?azl0YStDdUhyM1k1ODRiRDNPcVloTzJiNXpCaDB2U0RRM0FFTXNGUUErTzVD?=
 =?utf-8?B?TVA3aHE1ZmJiNHgybXNsdldtV2hFR3hmdFlqK2dZSXRSdFVkbzcrV1FJVmpW?=
 =?utf-8?B?cVIrM0tSdHIvZVNFZlhaZWZId0g4VVQ0UW1iUmRjN0Y1WXllbjFvVEFRK29h?=
 =?utf-8?B?MFJJN3YvcEo1ZEIyZ2JVY2dOck9mQ1JtbmRSbnpQOVozSGJsR2NlcTR5K2xF?=
 =?utf-8?B?TVpvMkp5L1E4VXl3TmtDeVQ3NUZwM1FwQlNWMWhpMmNuSFF2QUh1dVVWdHcz?=
 =?utf-8?B?OFpaLzZrMDhSTDQxc2xOdkttQjFuY2x6VUFvTUVNZm5sSTNkQkpDWjFyY2FY?=
 =?utf-8?Q?iLxGgpQMqo6+E643ktKMTFCKl?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86e703d3-723d-49c9-457f-08de104cccb3
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB7051.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2025 02:51:57.7019
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uunYw4KIC6Ay75Msny3pXDRiQufhn9R2hqEUb21OROF3ygdISCF8AnqMqH1Nk5248pgUNhto4oi16y8P4UhSDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10607

On 10/20/2025, Fabio Estevam wrote:
> Hi Liu,

Hi Fabio,

> 
> On Tue, Oct 14, 2025 at 1:12 AM Liu Ying <victor.liu@nxp.com> wrote:
> 
>> Strictly speaking, I don't think i.MX6SX LCDIF is compatible with i.MX28 LCDIF
>> because at least i.MX28 LCDIF has the version and debug{0,1,2} registers(at
>> 0x1c0, 0x1d0, 0x1e0 and 0x1f0) while i.MX6SX LCDIF hasn't.
> 
> There are some DT users, such as Barebox that matches against
> fsl,imx28-lcdif, so we cannot remove it.

Hmmm, it looks like software projects like Barebox don't really follow this DT
binding.  Is it possible to fix Barebox to avoid changing this DT binding by
this patch?  I'm assuming that Uboot has already been fixed.

> 
> In my first attempt,  I tried removing it:
> 
> https://lore.kernel.org/linux-devicetree/20241028180844.154349-2-festevam@gmail.com/
> 
> but this was rejected due to potential dtb compatibility breakage:
> 
> https://lore.kernel.org/linux-devicetree/4addc413-dd13-4867-8c49-45539af7b45b@pengutronix.de/


-- 
Regards,
Liu Ying

