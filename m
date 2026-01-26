Return-Path: <devicetree+bounces-259347-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cISjCPcHd2lGawEAu9opvQ
	(envelope-from <devicetree+bounces-259347-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:21:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0808473E
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:21:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D2193032CFC
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 06:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F0E2737F9;
	Mon, 26 Jan 2026 06:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="MCgL2Gxo"
X-Original-To: devicetree@vger.kernel.org
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011020.outbound.protection.outlook.com [40.107.208.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3A42701B8;
	Mon, 26 Jan 2026 06:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.208.20
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769408392; cv=fail; b=NkOxtO+W5EdCQpmeRGCOKl1uiDs22LitQxI7v+O6z/4cEDU18YMrUTEwVKMsgJtaOui7PCYzsLmkDAun8wQeXdNHhhiMqQdKXlumkkG06FGVNJqExqsLDx3u0+iUIqR1RmY2oPL9xUfK0Uk94CVAHi2yPypDtdwI87uMfOwQEWA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769408392; c=relaxed/simple;
	bh=l7BJbM4x+HqaFw8ikNBk9V5yXubPMDY2N3vV5xIzhjQ=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qTLfwExxS9kg9weKQG+Rwd8xlZ15gnBE3iwjKq+ASNqV4+82Yt80NCvce/2wP+wlgNStfjOcJwzx0nxmkhqTmn/000pb6+Q1J5RkVzqhaPvZQyKGiAehcGtOzbXsLw20Xz/bK/Nuj9SfRtms52xbWRPxTxXa4xjCcXXbTy+DLRA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=MCgL2Gxo; arc=fail smtp.client-ip=40.107.208.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bcKLrb3LZXg7e/aVvFtrMrd8bUEEVEVnaO08rGCfL1IU5UAXtpEEbkeSrOyO5kZiXAqCfQYOl0qOWjuttzSUF5zUG7PlDZ6/tkA5NytZku1/xfORoQPljkHbGsArPrzR579Ia6JHSyp1Svx4d0ihI7DEi+xQTXmLkUZZDSrwskWnflOSmBrM0Pi8vZPark2pkR+bCf46oeO2xUYDtF2S1DebuMfVoGcomNFksuSWrCa9C+PFFFKkGGL4/0vRG2G/4d1d+hAKxGrqYQN/fE4+lfWCpY63/orahjYx+bMX0lripyQdBjFWeh0WdVhuu5z16VHauc/ZGdbYv3UEe+I9PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RtivHPwdGnhQrrsH1QVf9uO+aKUXW1wFpzKcmicqEHQ=;
 b=HH70K39ZfQ8buwsLh8xe+aNAb3LTDq2iGryUOhzX+toLBSbN8ZZ45CrB6/WUd9HxB0EbMxr4Vs4zeCtbcr/bq5HciIMb9mGqgq4zvVFG8GsuTvP0LKTai2rB2iQEwevO2wfDJThOWHO1AagRtKp0rzp/wNuiD4/oOAd+vUpAOdhbi1v16leOYYNXy5cNJzUeKJmct9eVtvsjrOH6sMHJV9qOQP50XhYwaqHawvGVfD8s6pk+SsAmIoWDdlL4OKI15VIXXD2wrfXtKQ1MI2CMMhJo0KLN9bfvHfXdeFhtW8BlggwmytyXHFyV4JeayYjTQZeeJsvrb1CZDeNWBrLbaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RtivHPwdGnhQrrsH1QVf9uO+aKUXW1wFpzKcmicqEHQ=;
 b=MCgL2GxoUORYJWFYEpmz4FiRe503nVmtFAbrslJ0hlfin3D7WTMfSOnz+S5UUYFLTEfvW9NCkZ1L0bjlmXYxsw7s9yKlr7Tve3IpGVrTnYcq1/dvKYZFefsojIsYtBtNRv+55aHxHQP5XBTHOBbvxwqDeqRyikfM3XzBr01laXw3knin5o9poHv1RISa0BNtnvEfTDAr2He0agI717lo80hgrFhFjcPcrMxgeldIPbgqrTWedOBxC155Mdy1FsVEtEFErT6JWYCdaX28MtIOhtxEYuOO5QudCXlP3QlKIj+7GMsWH2tgfAUqStWbsu0NkKuGtngpGMqaTssaSYZOpA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SA2PR03MB5947.namprd03.prod.outlook.com (2603:10b6:806:11f::17)
 by SA6PR03MB7685.namprd03.prod.outlook.com (2603:10b6:806:442::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 06:19:44 +0000
Received: from SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2]) by SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 06:19:44 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/2] arm64: dts: socfpga: stratix10: Add emmc support
Date: Sun, 25 Jan 2026 22:19:40 -0800
Message-ID: <b8945b5bd0c62d36b353bdf0587b53e95dfc571b.1769407657.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1769407657.git.tzeyee.ng@altera.com>
References: <cover.1769407657.git.tzeyee.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR07CA0056.namprd07.prod.outlook.com
 (2603:10b6:a03:60::33) To SA2PR03MB5947.namprd03.prod.outlook.com
 (2603:10b6:806:11f::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PR03MB5947:EE_|SA6PR03MB7685:EE_
X-MS-Office365-Filtering-Correlation-Id: f4678e82-b548-4a60-eeae-08de5ca2e5db
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?gmykOy8VYhRc3s/pAT5Btb/XVJ8y0Oyznit/jYvNmg7OWG/guKHouCHC3TZA?=
 =?us-ascii?Q?lhhBq/BkSgCJR1Jlr6u5DNF8nl6i6vM1SKVm2TdgWXuQ4unUaixTKkZCbwwz?=
 =?us-ascii?Q?4srpZOWGsNpES9h73uaGc/0BmyHwDHJWv1DUjEx2YQyRGz/p7Xn6sRZvIAKQ?=
 =?us-ascii?Q?dYBXH+6TorbCJ3ZIMwS+H1APFjuC+R0lG6zwQvIXQBcH1vuGz3Ugp8S0OblC?=
 =?us-ascii?Q?FYLDWcV6WYiYCblkzBoQ0cAZwVhE5KwgwjmYtG8eU6Dkcfm6x7FDseoEnZIv?=
 =?us-ascii?Q?8H3/Vuni9zlBvoOeat9qjLRY2TEiSCRL+GiF2wUnPbJnFUOagLOc63uEel9l?=
 =?us-ascii?Q?3KUnjoSLecFwsMTIOAJbustXvl6s5jqtSUe4vcRq5XpsroE5KqVdQskkamFV?=
 =?us-ascii?Q?fthiiIXOmDczq8TTXWagAfI4T0uxz4Xpjvgd1o9JH5gLenrTFfFOye1LYInC?=
 =?us-ascii?Q?M4hNK2Uw97nkYiqC7rVwu9lseDsth8YKDpL5mxhqRvLLQnDh2GBlzmNZH8CR?=
 =?us-ascii?Q?mMGCihUtUguA/X8FL9GNnpzBQPSSdE25eEVWPdUGgI/LBKdC4u+w0Jgn2Enw?=
 =?us-ascii?Q?7cHP77+0SrskRSCFZE6mAmrltYSg6/vYyxRZXhTtsD8qjc3wmD6rjuO3H9Sg?=
 =?us-ascii?Q?pTgwX1fhNtqa/ojfwcd5DWOoCUVaLllkzNGe4hlMu+hG8Eg9bKkmXRrzGMBM?=
 =?us-ascii?Q?EBl3m9huJST6cW9tOBKWWvFOb0gYe2aOfR4IZfBQ0xCgbZvWx/oxARwAzbQz?=
 =?us-ascii?Q?8adYyHm001fIKPDNX4oIKIK/9R1A2Ut+ll9ZRwCj2mZq6L+kyjkHISA4t3m0?=
 =?us-ascii?Q?RJ6sQPn2pWdiia3RtZ9WCEEBfVOy4ZcabDaVfbVE7750OaYvfag0dX43s4tE?=
 =?us-ascii?Q?Hmg6nGZRMZSjYOzZpMSwazTilsS3UULf4GzaohP6YDaWKAkdLTKWconkR4X9?=
 =?us-ascii?Q?KOGsjCn9Ghn/DUvPip2rZaXCN7JcwCrc/C1HeJGWSlt0k32cF0dtj2BMEKX7?=
 =?us-ascii?Q?YTehtsclJT4Ws8xO7xB7WLHLfwKVOksxHrfZWYDS8IE66qIzuiTZEEljNKOv?=
 =?us-ascii?Q?gibpPLpSW8PJwhC5UHzLhv/MZdZm10ZbeZ3xQhGYY0k2GrwgU2kvI/xX8NtF?=
 =?us-ascii?Q?jHf56bqkvcBDom8J5ojgSoZUTh7aOqWYIweTgrHDo3tJjhC4Ccf71UXBdjKo?=
 =?us-ascii?Q?sAEfhKH6mIsYkBk4gMVivhiljrHBjfPo+M2b1sDfxKToyiAkroSUbyHuDZ8n?=
 =?us-ascii?Q?68ceIM4o7PaP+x4h/UGkpPwVDAhwCDp91v2cMbZw3dDzPO3bPuTKzYDw16+Q?=
 =?us-ascii?Q?1irEIHsdo2/eCpKVmgTRneUWmEfMah+LZiRBOKeuewpflDv/gh7k/ZyYu3YM?=
 =?us-ascii?Q?OaCpwaPkoQfdLCBzmpvL2Lv6NKAyuplIIz8k7c8KeuvliLpHMvHmelNDyHRw?=
 =?us-ascii?Q?wrn73gkV/2UZG+fOe9cdENzXK+AjbKV2jlmCMhCv/odId/P9PRhoLG9XBlES?=
 =?us-ascii?Q?3JF3PcZdQ+znLnaWFFzfTH/DQEBclLwTTG3C+VxNJf3tVndY0NvPLEIY9c6a?=
 =?us-ascii?Q?pQ537SSh8uKecepPWp8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR03MB5947.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?HEnxPyk0xrwnq7zRo+B9wgnYNAEHqx3nkd8ZNj0dbqKzyhSvicbRZ49AQRCj?=
 =?us-ascii?Q?TEax4Q15SWJNUkJhCiZthjkHgklwFEEdJAjmsunPypbOaPQQJfqLaqt4OYJE?=
 =?us-ascii?Q?jgIVuVaHqGxil7gRN3s39A7hVG3n1/AUEMytsr3MjCPDIPAgxhl80rY3dGeT?=
 =?us-ascii?Q?2cmfgqYhaCVDkG1yI0eIaF/exHmSu8D2zf+W+/A+WjEZiM5Ravy7nwPY27DZ?=
 =?us-ascii?Q?aSuW09YfMF15YuDh592fPi+kVNJpwcrMRrk9TkX4grkbcLNqpK3dObkDylKi?=
 =?us-ascii?Q?tA97gx/CjYxImWFCJmimh623CeSLDS2FiS+E1kgHebGm52y8GFyais49Norj?=
 =?us-ascii?Q?3up/TpbEIEXCFeBvMkgGw31N28E1DYGjMuuPOrETsJAD9fuYWy1Sr0NLE/7R?=
 =?us-ascii?Q?NP6RuQ5WcXNgbrhHwFaUkGROPnqzbExsAiyuOGC0MsJaeNiN/3CkwNh01MP3?=
 =?us-ascii?Q?z3i+pCb79yZVDM2Mdmd0v40XRitQvKcFCOCPNXlG+hENa0aemdzlCBXhpSAv?=
 =?us-ascii?Q?y/hr6xVCIz1ip/mc/gz8VGHOw4zjRNBaz1UeBBTW3RH3T5hsBexA6QAB0uew?=
 =?us-ascii?Q?f+bcnbaGPH8P7LZ0N6z/l2IzO07n0hXH3Cq7b0La4HAGuTsD7CJxq3qtDoG/?=
 =?us-ascii?Q?tbKU8/FLAhbFrGosIdhYA1UAcTabhlkkuiWlqnGZqUpiRvPTuwWG2PwnNOWy?=
 =?us-ascii?Q?+P/wxrZUYySKRd56IV/LC2p3vjpPKQIaazBZ6J5UkKh3EhYndB8w7P5MUlsK?=
 =?us-ascii?Q?oKArq835Wxh5IBLbSN3PCXDcWh28HK+boT8YbVTeSaTK80ctTmkU0mDs29q+?=
 =?us-ascii?Q?0TpGdwZhiPdNGrXSgTbtMgfgeE2k56ZkErDn1JYsmUsR8UCH7AqI5ZIFq8p3?=
 =?us-ascii?Q?OpATmrtBPuwtpSEEbIoOoHO0ZQ/0SYIe9a2EDmUhjVRaBe9rzSiuDKPo5Hwp?=
 =?us-ascii?Q?S1ADxc79pz3CLcg90lxknqUwDSzduFBrQHtf9xxUr/+MkjEZOQ9aHeAGt8gI?=
 =?us-ascii?Q?PqYIQrgYxksHe9sP3XVXwI0olskpxYnvY0vk+nOP3qAsOdd8UUwo0yWCf+Bo?=
 =?us-ascii?Q?WF+XwBgweeUKSnbNgHRzkNXde+yB6MH+o6dKfKPCSKhcpnuiwiaEmqTi1UXG?=
 =?us-ascii?Q?Q3Ymk5AxH6vqVUc79wEwtDHbZfDeNP1eoM5u2Tg4CI30hoKlA9Mg+1AHpAvB?=
 =?us-ascii?Q?bgjmqsZJFli7e69jrsnIBQPc952/VtnsPHdfS0fj6mSX/jS1/FbSXQP6shPG?=
 =?us-ascii?Q?ACC6uY8qZumkISUNwIEfDG7AG7RYY2y5A1aVy16g+gDn6d/IxfLB4g0oTy0i?=
 =?us-ascii?Q?YSC6PCJJfNDWrPGJKkPcIXGAXD0rUXgULhllyRCa/MPPJM4/ux2av2/X6O3/?=
 =?us-ascii?Q?tyBvgkCymCy0FOCziqCAsXtbWP+9caHE0rYBiUcZ6YeO2lXOiYrRmfW8rRdc?=
 =?us-ascii?Q?LVp0B1+RrNGTxQ1ePUQADICv7hYZB6Q8MENQDQJYH4u6tJdoafsPlARdGqXM?=
 =?us-ascii?Q?/lPIR0/6rX6ouZyUTeP/SPEa0yGzAaEBqlpQpao6Zu+FvPqTIgnNj4vZ+CHe?=
 =?us-ascii?Q?JDUgFQNFNBumfNTnDBm0BfmeL0m5xsvY/Hxy5CSoLyivsn6ADswcfcW+VLA7?=
 =?us-ascii?Q?9cib1fnEK7Nlp6RXDvqM9dGOipROIEBDHY4xn1Nsr2fCA9d44R3IYACXbD4n?=
 =?us-ascii?Q?XIPEU55uJnocPrmNfGxe6xy8Ch6e92LCKC+vOrX0vTaqJpHny4MRDioZzQ/+?=
 =?us-ascii?Q?NQpMXC3ZVQ=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4678e82-b548-4a60-eeae-08de5ca2e5db
X-MS-Exchange-CrossTenant-AuthSource: SA2PR03MB5947.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 06:19:44.6754
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Up2lhPfZaPJmthwKHCnl5R9FdzCvmk4f6GIQQfBcyYojbyrp8DfkHJd6yZOICLAwgAbEiwIWogzV09MWxzzCHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR03MB7685
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259347-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[altera.com:+];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.4:email,0.0.0.68:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,altera.com:email,altera.com:dkim,altera.com:mid,0.0.0.0:email,0.0.0.51:email,4.196.180.0:email,0.0.0.14:email]
X-Rspamd-Queue-Id: 6C0808473E
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

The Stratix10 devkit supports a separate eMMC daughter card. The eMMC
daughter card replaces the SDMMC slot that is on the default daughter card
and thus requires a separate board dts file.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
Changes in v3:
- Refactored socfpga_stratix10_socdk.dts to use socfpga_stratix10_socdk.dtsi
  for common board configurations, eliminating code duplication
- Moved gmac2 and i2c2 nodes from socfpga_stratix10_socdk.dtsi back to
  socfpga_stratix10_socdk_emmc.dts as they are specific to the eMMC
  daughter board variant and not common to all Stratix 10 SoCDK boards
- Fixed PHY address in socfpga_stratix10_socdk.dts from @0 to @4

Changes in v2:
- Introduced socfpga_stratix10_socdk.dtsi for common board settings
- Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
- Added fallback compatible string "altr,socfpga-stratix10-socdk" in
  the socfpga_stratix10_socdk_emmc.dts
---
 arch/arm64/boot/dts/altera/Makefile           |  1 +
 .../dts/altera/socfpga_stratix10_socdk.dts    | 67 +--------------
 .../dts/altera/socfpga_stratix10_socdk.dtsi   | 71 ++++++++++++++++
 .../altera/socfpga_stratix10_socdk_emmc.dts   | 81 +++++++++++++++++++
 4 files changed, 155 insertions(+), 65 deletions(-)
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

diff --git a/arch/arm64/boot/dts/altera/Makefile b/arch/arm64/boot/dts/altera/Makefile
index 1bf0c472f6b4..540bb5ae746b 100644
--- a/arch/arm64/boot/dts/altera/Makefile
+++ b/arch/arm64/boot/dts/altera/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_stratix10_socdk.dtb \
+				socfpga_stratix10_socdk_emmc.dtb \
 				socfpga_stratix10_socdk_nand.dtb \
 				socfpga_stratix10_swvp.dtb
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 58f776e411fc..fab46d007dbe 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -3,53 +3,11 @@
  * Copyright Altera Corporation (C) 2015. All rights reserved.
  */
 
-#include "socfpga_stratix10.dtsi"
+#include "socfpga_stratix10_socdk.dtsi"
 
 / {
 	model = "SoCFPGA Stratix 10 SoCDK";
 	compatible = "altr,socfpga-stratix10-socdk", "altr,socfpga-stratix10";
-
-	aliases {
-		serial0 = &uart0;
-		ethernet0 = &gmac0;
-		ethernet1 = &gmac1;
-		ethernet2 = &gmac2;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		led-hps0 {
-			label = "hps_led0";
-			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-hps1 {
-			label = "hps_led1";
-			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-hps2 {
-			label = "hps_led2";
-			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
-	memory@80000000 {
-		device_type = "memory";
-		/* We expect the bootloader to fill in the reg */
-		reg = <0 0x80000000 0 0>;
-	};
-
-	ref_033v: regulator-v-ref {
-		compatible = "regulator-fixed";
-		regulator-name = "0.33V";
-		regulator-min-microvolt = <330000>;
-		regulator-max-microvolt = <330000>;
-	};
 };
 
 &pinctrl0 {
@@ -68,10 +26,6 @@ i2c1_pmx_func_gpio: i2c1-pmx-func-gpio-pins {
 	};
 };
 
-&gpio1 {
-	status = "okay";
-};
-
 &gmac0 {
 	status = "okay";
 	phy-mode = "rgmii";
@@ -83,7 +37,7 @@ mdio0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 		compatible = "snps,dwmac-mdio";
-		phy0: ethernet-phy@0 {
+		phy0: ethernet-phy@4 {
 			reg = <4>;
 
 			txd0-skew-ps = <0>; /* -420ps */
@@ -111,23 +65,6 @@ &mmc {
 	clk-phase-sd-hs = <0>, <135>;
 };
 
-&osc1 {
-	clock-frequency = <25000000>;
-};
-
-&uart0 {
-	status = "okay";
-};
-
-&usb0 {
-	status = "okay";
-	disable-over-current;
-};
-
-&watchdog0 {
-	status = "okay";
-};
-
 &i2c1 {
 	status = "okay";
 	clock-frequency = <100000>;
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
new file mode 100644
index 000000000000..1d50f7b21160
--- /dev/null
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright Altera Corporation (C) 2026. All rights reserved.
+ */
+
+#include "socfpga_stratix10.dtsi"
+
+/ {
+	aliases {
+		serial0 = &uart0;
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		ethernet2 = &gmac2;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		led-hps0 {
+			label = "hps_led0";
+			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-hps1 {
+			label = "hps_led1";
+			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-hps2 {
+			label = "hps_led2";
+			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* We expect the bootloader to fill in the reg */
+		reg = <0 0x80000000 0 0>;
+	};
+
+	ref_033v: regulator-0v33-ref {
+		compatible = "regulator-fixed";
+		regulator-name = "0.33V";
+		regulator-min-microvolt = <330000>;
+		regulator-max-microvolt = <330000>;
+	};
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&osc1 {
+	clock-frequency = <25000000>;
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+	disable-over-current;
+};
+
+&watchdog0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
new file mode 100644
index 000000000000..b2a3449638dd
--- /dev/null
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright Altera Corporation (C) 2026. All rights reserved.
+ */
+
+#include "socfpga_stratix10_socdk.dtsi"
+
+/ {
+	model = "SoCFPGA Stratix 10 SoCDK eMMC daughter board";
+	compatible = "altr,socfpga-stratix10-socdk-emmc",
+			"altr,socfpga-stratix10-socdk",
+			"altr,socfpga-stratix10";
+};
+
+&gmac2 {
+	status = "okay";
+	/* PHY delays is configured via skew properties */
+	phy-mode = "rgmii";
+	phy-handle = <&phy0>;
+
+	max-frame-size = <9000>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+		phy0: ethernet-phy@4 {
+			reg = <4>;
+
+			txd0-skew-ps = <0>; /* -420ps */
+			txd1-skew-ps = <0>; /* -420ps */
+			txd2-skew-ps = <0>; /* -420ps */
+			txd3-skew-ps = <0>; /* -420ps */
+			rxd0-skew-ps = <420>; /* 0ps */
+			rxd1-skew-ps = <420>; /* 0ps */
+			rxd2-skew-ps = <420>; /* 0ps */
+			rxd3-skew-ps = <420>; /* 0ps */
+			txen-skew-ps = <0>; /* -420ps */
+			txc-skew-ps = <900>; /* 0ps */
+			rxdv-skew-ps = <420>; /* 0ps */
+			rxc-skew-ps = <1680>; /* 780ps */
+		};
+	};
+};
+
+&mmc {
+	status = "okay";
+	cap-mmc-highspeed;
+	broken-cd;
+	bus-width = <4>;
+	clk-phase-sd-hs = <0>, <135>;
+};
+
+&i2c2 {
+	status = "okay";
+	clock-frequency = <100000>;
+	i2c-sda-falling-time-ns = <890>;  /* hcnt */
+	i2c-scl-falling-time-ns = <890>;  /* lcnt */
+
+	adc@14 {
+		compatible = "lltc,ltc2497";
+		reg = <0x14>;
+		vref-supply = <&ref_033v>;
+	};
+
+	temp@4c {
+		compatible = "maxim,max1619";
+		reg = <0x4c>;
+	};
+
+	eeprom@51 {
+		compatible = "atmel,24c32";
+		reg = <0x51>;
+		pagesize = <32>;
+	};
+
+	rtc@68 {
+		compatible = "dallas,ds1339";
+		reg = <0x68>;
+	};
+};
-- 
2.25.1


