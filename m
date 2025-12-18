Return-Path: <devicetree+bounces-247974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 891B8CCD442
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:51:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A0FD307A9CB
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 18:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307943101C7;
	Thu, 18 Dec 2025 18:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b="nvP2zx0D"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010068.outbound.protection.outlook.com [52.101.193.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D15430FC33;
	Thu, 18 Dec 2025 18:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.68
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766083728; cv=fail; b=BUIrAkMHdUISPb61N9IWjrga3WL6dWuzhQQTL595U+TeJt2uUqz+Z1crtwZBnyGr6MmiveEP7TBYQMTItErWFmKAOhzLJdM588yJq1xRKuGrsoAuT3R7QcfPuSmumCr/Fzq4qtJAPdkYLssIvn0Xrpa6/EW1CBN3ccza4COWE1I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766083728; c=relaxed/simple;
	bh=lZJ0WsPdtCW+qQTAdnzx3rs2fcgUDzp2/HlVAP96OGw=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=LnnphjGC+Vh34D+ikAX4iAYm0W0NzcwaOYZJnM1hHo4quuVdHIuuLOdmxpSMJYAT29MCal4wgq1JeeBoSW9MsTn4qO+lOLUk84dOejfUhJ8k553QpH82T7s9OInFmeYpb88MYTW+Bo2hX26m3sXATV5N9bXUUDyhx/S5MxmLR/k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com; spf=fail smtp.mailfrom=nvidia.com; dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b=nvP2zx0D; arc=fail smtp.client-ip=52.101.193.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=brcUsJz7bdv/XGMZBcYkQGqXBudHBXepS+tFW/8OnqociTCTtWW+Kt2E6JSmLPvgsRRljCuhlhcMb5vpRmuQh3woRE4QUsQsAbiUBQxVWG9r7uH0Cr3S/Uo78KGnB1oLCCUetYOOMzHfhnFAK8we1I2KigFG+/J0L8yjUMcj7UM6lnRbinGbBvZuwxtBNMtSV3NnmyaT4b0GGnmPLoKZ9h1JCDMpHtRSxfb68V0PoQQWvDQj72RWWdXaiUk7FGCMUudWL1mBqDa5i+pGIjKInr9g5EchMlmmWYCkhX+4YZr8PdRpmeSiDtGki/tHKgjfmv2RZpILsOO5s9T5JtpX9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x8CFSrGfH+HowaVdN4xsahHUm8wC4rFNs0mZn3T6VqA=;
 b=jT6aO+wzOhfiRtFRTjvJFMRvZlY2UYZKar1JuTOm1Bqw0ucpIqou0mmEWk0FJvrbC3C64K3UIPecR/xeH8ZLa+woT4tZiu//GcFl/+7rOhk2wDpIFXdyp/wswhPzufCUND679FWliymttEgKlccp9UFgdHPQTfqqSlDnU0yNM9Wa/I8/YXfYV4tV193Eo74Ji69XD2wqtLQ0esNMf98b9UuEo3H+8az3BKw7eahNokaUTUdz5j3Zo5PPNbtHP6ed+sYPhhfBkfauLt2BhiBb47hfuB6Zhn90HWI6Sql/hYIYue3I2i0Q5U1ezQhxrW1YoaGJsyXNssiP+lbx/bo2Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x8CFSrGfH+HowaVdN4xsahHUm8wC4rFNs0mZn3T6VqA=;
 b=nvP2zx0DHWXj0APbKes3P1juReLaoS1TSuylbN6GUDyPpRCXCKosS20vpYDuJezG5vE2dNdw1ZN534X3FEFHeqswcKV5kH6kakg4Th0yjUtKfBZOuRgOCR2VDmeKB6SJfsXBNrrBK5VAGNOgHRb0HmS8Eu9TVKAmou4hyzsVZFMR12+6Nf9EhWNaefti9ySzlc5yCzlNjZda+WjQUVWf3tckXbNG3E+4tTxeiwAN9ENLNR9ws9cI0brEj23bnXJ3yRHP+hdmXvdydY929798jdXYGXRL/Cc9LJ6MiiLO+0gfdjuLqJqGbx1kFjGmZRpmbLwCpVeD0cB4QzCqtv8WKw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH1PPFDAD84AB72.namprd12.prod.outlook.com
 (2603:10b6:61f:fc00::627) by CH3PR12MB9217.namprd12.prod.outlook.com
 (2603:10b6:610:195::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Thu, 18 Dec
 2025 18:48:41 +0000
Received: from CH1PPFDAD84AB72.namprd12.prod.outlook.com
 ([fe80::7816:ec9f:a1fe:e5c9]) by CH1PPFDAD84AB72.namprd12.prod.outlook.com
 ([fe80::7816:ec9f:a1fe:e5c9%6]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 18:48:40 +0000
From: Marc Olberding <molberding@nvidia.com>
Date: Thu, 18 Dec 2025 10:48:12 -0800
Subject: [PATCH v2 2/2] arm: dts: aspeed: Add alt partition support to msx4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-alt-128-v2-2-10499a0b7eb9@nvidia.com>
References: <20251218-alt-128-v2-0-10499a0b7eb9@nvidia.com>
In-Reply-To: <20251218-alt-128-v2-0-10499a0b7eb9@nvidia.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Marc Olberding <molberding@nvidia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766083715; l=823;
 i=molberding@nvidia.com; s=20250815; h=from:subject:message-id;
 bh=lZJ0WsPdtCW+qQTAdnzx3rs2fcgUDzp2/HlVAP96OGw=;
 b=4kqaByjdU/VhzQCM3rMi/utnnKYh3v3RQWVc1Xqqu346P+OX/T8gA1T+8iQ3si2Uc9TJ0jFop
 +e/TUUVtQTnB3vwuL2WPzyBjm2Nzu8AbKcXuOeb1DYFj36PaVinRHUC
X-Developer-Key: i=molberding@nvidia.com; a=ed25519;
 pk=qCpZ1WFEf5YiaL88PDdYhG+A/bKk7rHp7KF2K3GmkH0=
X-ClientProxiedBy: MW3PR06CA0028.namprd06.prod.outlook.com
 (2603:10b6:303:2a::33) To CH1PPFDAD84AB72.namprd12.prod.outlook.com
 (2603:10b6:61f:fc00::627)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PPFDAD84AB72:EE_|CH3PR12MB9217:EE_
X-MS-Office365-Filtering-Correlation-Id: aba32e71-9f84-4d89-4fed-08de3e660faf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Y3ZYTHF0KzlsNzFGTmlKNHNtV25aRjVESk5RUjZsa3padmFrdkEyamgyQ0tF?=
 =?utf-8?B?aDh3aVlMK3ZyaExXdHVtbzhtdUtwZWV5YUdqZUdsMGdmMjJDVENVdzVwTW5U?=
 =?utf-8?B?czBUY3Z3ZlZrcWUvdDZGOG95WE1YUjNzS005M0VPcDFmaGVQWkVUL2JGYy95?=
 =?utf-8?B?RTdKbFlxMnlUckd1MVMxZ05pWm93eFd2TGFGN1QrcXZoaUhVY0R5SUpkQm0r?=
 =?utf-8?B?T3NCT0tlMGU1d0dXVXd5N0VvSjlVZ2NySkQ5VFhFY2dZRlFCRVJ4OEJoK0wz?=
 =?utf-8?B?ZHlvMTlSRVYzQVFGSkpZNTRGcW5rVGNGdG82eDFhcEhIRDRZY1A5UWxjTzlw?=
 =?utf-8?B?QURRMWVwZ1Y1ZGpia3g5eHpxVk1nL0wxRUZsVENDS0RJOXJzYVpqbElyVU14?=
 =?utf-8?B?OEpMSHdUTU5HSEFGdGY3eGxZeVBPeVFLUzRhb3lWYVgrNDdISXNuMm1qckVM?=
 =?utf-8?B?Z3Y0c3JLRHdBc25tTUUweUI5dDRsamxUNXBFRWthbUxOZlFjYzRRTFdLRjJC?=
 =?utf-8?B?Y3hrbXgvUFN2cVdHeC9GL2U0K0c0SWI5SnF6dGVwMnk2L2plOEI4blNrazdn?=
 =?utf-8?B?TzNnTkZqWHpEQkNzL1phZmVKN3BkQi9IS01vRmo5MW1OQ3BTTmVMZmI2UHhK?=
 =?utf-8?B?NTBhcVd4dzM1ZG0zeDg5R1dPWWl4azBVYU44SGp3aG14dm5xRm1nWHk3eUYy?=
 =?utf-8?B?dUU0R1haT0g5eWZ1RlM3Q0F1ekdESkxWY0piNHpjd0cxLzhpcnZxd0k0UFR2?=
 =?utf-8?B?eWY4VG9YUVhVeFh4VDI5eWlCcFpGODBnbGxlSVhRN0pKMjYzRGxhQnVWdk9T?=
 =?utf-8?B?OUhjWklkMVJzaHMvUjloamh1aDJERkpiNm9udjhqdUpaendOYVYrZlZDL2dD?=
 =?utf-8?B?T3JGS0x1UXNHVVBsNHlJV0hJZG16RWJtMytSZUx0UW40RVNjZTVLSnU0UWZj?=
 =?utf-8?B?MTZmaXAzVlZwMFE4NWZHTDB1NGdTcG1EUHVnTU1rWjJWcnY1aWFjbGpBREZS?=
 =?utf-8?B?RUcrY3BlYmNIam4wSldYQk0yNENac0RaUWx1eXMxbjUrcDJhV3Z1ZklFaCtK?=
 =?utf-8?B?QVY0cmp4QldWTXpGQlNjZmZEUEUwQkp3aEhqNHhHZDJ4VkY3RDFZcDQyTEFx?=
 =?utf-8?B?bFZ2TTZCRnZueWpiNnJ5cjBGN1BJQXFyeWtmZGlqYlkrQitoSVpUcVJ3WkUy?=
 =?utf-8?B?d3lGWTMxU2JLSjhMVG1TWUtCVFh3b0JKbkh6ZWVxekZ0N0gzM3RBK0NJbUVi?=
 =?utf-8?B?L0ZCNFMvc0lNaVRXMnNUOWxicnZXTTVmVEJ3VFhCQVRZS1VhVGpHSTBtYlVo?=
 =?utf-8?B?OVEvdjM1MmlTVGN2clVycTZieFo2c2syZGE1VXd1NWtQT2ZzVTZQL21UMTV4?=
 =?utf-8?B?NW5MS3lxVm9vVC81MUJrM0d0ZldKL2JpRFE3TUM5Z2R6bXBlbitiajVDN0Qx?=
 =?utf-8?B?ZjVQUTNxUnFXS3dOUkN2SnpsenpMaGNYTXNSSWpzTXNrSmlONTROOGlxWm44?=
 =?utf-8?B?UFlwVGZCak1ob1ZXUWR1eFVzb0dpSmUxK3JIMTViTnRnejFNbzFIMWxLeURF?=
 =?utf-8?B?VGZ4YnlvWGlGZ1NSNXQ4dGhrU0JYQ0tNSXE3YmV3Tko0cUtMR1lDRmdjMWFY?=
 =?utf-8?B?M25KU0t5OXd5SzY1eEorbEdEZWN6YWNZSWhLNU80VHJBMEN3QkVhL3BXRnVw?=
 =?utf-8?B?Nm9RbUVQek9IN0pzTERXNVg3VjJSZjZHSXZvQ1UyMFpLVy95RzVOOTFBcVhk?=
 =?utf-8?B?WjVjREZpdzlldEtNRDVia09qTnpwbFdQVURGRnA1SXFkREY2djNTcSsycDYr?=
 =?utf-8?B?aTJ6OERxVjBMMTJkam90RzdOaGZ1MEYyOVpxZURrSmZKTlh5eTg1WHdGMUlQ?=
 =?utf-8?B?YXZqOWx4MmE0NlR6ZEZFeHVpR01jVkNRUTVuOFF6cDNNMDJIRWIzbTJsZXhn?=
 =?utf-8?Q?hWiMfZIBfp9ifh9qMTwXrp03PI5NzENt?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH1PPFDAD84AB72.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?d3ZMS0xYd0RvNWlQTDBXNWo0aVRIdDZUd0wydkJOaHFoYUtuQkJaZFBPMDJp?=
 =?utf-8?B?eFZEcG8xczlUMThZUnducTBORUVlMnlrVU9oU2JWTy9qWTU4ZnNDMEhXcXF5?=
 =?utf-8?B?UmpoVmthWEhvejA2aUhlUEkrNWFUWkZLbWdnSkswbjYyS3czckxXMDRoWnhH?=
 =?utf-8?B?aTlETTdIL0liTWJLRVV2Slg3cnRSNXJHVE43WStwKzIvZ05HMncxek9kRTE5?=
 =?utf-8?B?UmxrZGJYWTZnZGNDMHVCamVDM1AvekNnL1l6N05BNjRzMEpkaU1GUElGd0Zl?=
 =?utf-8?B?TWRqQnJZQ2ZRczFFMk0rVTdjeWtPQlA3bTAzVUZOYVZSWmdIMG03alBwQWQy?=
 =?utf-8?B?dk5GOWdSNGlneVV5enEzZVFVUHZ2OURoL1ZWbE1JM1VZODFGRkRoK2lBeHN3?=
 =?utf-8?B?TTZqbFY3M3drNjVGV25UbmtzZEZpWWs5MHk1cS85OXFlZHkvZG5oajBnOWhs?=
 =?utf-8?B?Y1REZ3M3VVN3Ty9zb1lqRWVVdHlWYVNXWE1PMWhrWVJvWkthOThNQ1NkSURU?=
 =?utf-8?B?NWt1TmxJWGFQdytXUmxDQTJGZWxLMXF2QzJCSm9XMHNyZHpzaVdHaTNDWFlz?=
 =?utf-8?B?bGxBYXBwb25xNWtFNU5qOE1iT2hHZjM1dk1uZTk5NjlZNDgwOG43QUtia1FY?=
 =?utf-8?B?RGxMSVZhOFdpVGZ2TlFha1B3OHBXWmg5ajQ0SzJIcTFnbEgwS0dpRk1zYW1D?=
 =?utf-8?B?NXFPS0t6VjBjZld5cTZ1d2VsenVRQlJOeDhzS2F5SHFQN2lHVk83dXFLRjY1?=
 =?utf-8?B?VVdDZE5Za1V5QjF1S3BHRm9TTXpZSHhFZUFHUW9MSWNXS1lHMWVRc0g0WXBI?=
 =?utf-8?B?RGl3VUZReEY1WTUwb3EyTmhKb2NueUo0T0JrSFZTbisxVnphZ0lTaU9Ja2dn?=
 =?utf-8?B?YTBPWXNZaUVMUkFaMDRzcWNDRFd3T09jRFJFOTA5dXRlY1M1VldwRjArMU9S?=
 =?utf-8?B?Zmk2SzNtemkxTno2bGY5eWdQTU9OSk9ueXVQR25pNWI4SURoWXpWcTd6Rmh1?=
 =?utf-8?B?eDRHaUl4cFpjdzFCMWpkcjl5R1ZsMVFvaWlWWEJnTUtnMGY1VjFGRVJ0NFNB?=
 =?utf-8?B?QkdFMVBSZ0owaEZ5NUs2S0JaY0lDZ1hqQm4vVkpMT0YyYjFGSE1rSW9KQVJL?=
 =?utf-8?B?c3hEekVPSnU0ay9IQzZqQmE2M0FOTWhTemYxK3lPLy9xelhLVXNhOTBya3J0?=
 =?utf-8?B?Z2UraFNCRVdaL1NuMEdtckNMMzRHd00xc3NEK2t4clVJUW02ZmRPVUl4bkRJ?=
 =?utf-8?B?ejNGdHlCS1h5cDdOYnlDMHZCMGpIMXl1WlVVcXk4cWR1MTRNOEV1L1pOb1hC?=
 =?utf-8?B?UkVsSXU1Ynd4MlVJZ0VVT2FTR2hyemord0FBYmVtaTRHWXRMU0dMM2pJK25y?=
 =?utf-8?B?Uk1iTzVocVRxazY5SVRIUWMrZDVhMHgxN1R3UjM4TkNGMmpZZU9mcjJYcStI?=
 =?utf-8?B?VVlmeHN2SWMzK3Y4RlBTU1N2Y3ltbk5KQzg1NjlFTi93L3BGWlptZVJtd2VM?=
 =?utf-8?B?eVQ1MXppMG4vdldibXdFbjdKb0dtTDRpZC9FdlhQMlM3WndnTW1xbExHV0oz?=
 =?utf-8?B?Mm5oZDZ0QmZrZ1o2eXJjWWlrRzNLL0M4cUxWbkQ1T1dwWDRZUDlITDNsWXlL?=
 =?utf-8?B?V1ZjNkppTytxLzVCcWk5V2pER252NjFWNlUvSFB6eHhIdWhDQUhRTk5GUVhy?=
 =?utf-8?B?QisvR0g0ZEptOTJ0YWJlYkhCN3B4cm1RRWZSTTdlV0tGUHNXbGVuT3E0VGxC?=
 =?utf-8?B?NHhuZitZM0RyWWg0T3pyTWoyQnBORTB6N1VRdDlBWVZ1VlJWZXVJc3Y4enph?=
 =?utf-8?B?b25oUzZLdzFLeUIxTyttRlhad0Z0SEsybzdLZm4xY0VUbXk0NkVha1l4S2lW?=
 =?utf-8?B?M1IwYnZWQkJVeTVvd2ZUNzRDYkQxc3RYYUJkWHZuNVRUTk8rS1BEclNOOFFs?=
 =?utf-8?B?cUFQd0RNMDJDZ1RVcTJucUZzaE5MM2cyWDBYV0FpNkxDbW9WZHBlSGNsdWFW?=
 =?utf-8?B?aUtRY2FoZGdXdXZpb2p6dk1WekI3M0prSGN2T2xiLzgrRWdPaCsrQXppZVJl?=
 =?utf-8?B?T1Y5RkpFbTJYejFmcEUvUTZWd3EyTWJwdElncDRsa3BtcEUwdDB1MDIxcWF3?=
 =?utf-8?Q?tIErdEesEkU15l9HoM6Gq5BYk?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aba32e71-9f84-4d89-4fed-08de3e660faf
X-MS-Exchange-CrossTenant-AuthSource: CH1PPFDAD84AB72.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2025 18:48:40.5714
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zJQwyK3c52lYgrFp+qkwj8tu4S3tM+HftZ/HFLKwOLsuLh8yUgwfUUktbXF2+XbY926e+IXuVWNDY4T1U+PlQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9217

Add support for the alt 128M partition table to the msx4. This allows it
program the flash it didn't boot from by partition.

Signed-off-by: Marc Olberding <molberding@nvidia.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dts
index 44f95a3986cb9e2c6902ba9b3c1ed56e782438b3..a12d4164de4ac82160696b67b69c0e94696c23fd 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dts
@@ -67,6 +67,7 @@ flash@1 {
 		spi-tx-bus-width = <1>;
 		spi-rx-bus-width = <1>;
 		status = "okay";
+		#include "openbmc-flash-layout-128-alt.dtsi"
 	};
 };
 

-- 
2.34.1


