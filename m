Return-Path: <devicetree+bounces-264641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EB2/GH0tjGl8iwAAu9opvQ
	(envelope-from <devicetree+bounces-264641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:19:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FE2121D57
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:19:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 047A2300720A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 009C528314E;
	Wed, 11 Feb 2026 07:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="hQ+pr5Sa"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010004.outbound.protection.outlook.com [52.101.193.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F463EBF1D;
	Wed, 11 Feb 2026 07:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.4
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770794360; cv=fail; b=oaU39v0QGN0HdrAp33c1nO2hR1wj3DkJnvEdbwwXP7A9fjd81oXelZ32QLkqBwPPGbpxDGPRfpGYuWiTadGW8Wo8E6eYxZbUOMdbrXYzuRSlQfXYIPkLUL2qJ0w/3b1OtYCK957f3eQ3O5+/pGQU+sgUPSA4vvvPWK20H0NG5E4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770794360; c=relaxed/simple;
	bh=/eihxqfJjMov1RZDHWmzc2LLCb6huf4H+oUTmSp8FDo=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=uHNJqpBHFBofkYVLDVAE+zX543KZcRCVcsM+geD7Ao4moQd65dDGJ8aB92TCevT/IfyQeFhUgXneZ4nKLYMjnjpHG9jhShyj3/xTv8tSOIcShP4SaBbzz8SKwLe7X8Hav6dP9o/Aq4JSzAwaEFEbgcLFw8QhL5dOXPa0WaimvP8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=hQ+pr5Sa; arc=fail smtp.client-ip=52.101.193.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qYKCO/XwS/HHlYORkDSd1+Hdb/ZzwGTxomAscwGdENqlrNAc+xUZ/gqKf159JjtkB9GrC9Phz97zpTL0LOh5rY7MpSXB4HNEVFH4D+Yl26jhMlvEIo3XRidEZ/0MjZxNdU4tzYsD3IRmxYQ5Qczl2SFxGS6mzrDo4VWnTs4OHjOjBi+/tU3SYELpCJCWsHmZjxHpXVWEQ24V5/fgYi2vvzO7YtvleKXqLdn++WIK2nOiz5Wk+37B2flsLnDzP9BdIPE8WcTKzItbs8+mn1jIUFRbt4W0EilZJR1rlcZV5e+0WKbAtkm6UW+xG/umSfhz8eilnO08zEcqtaCYlcW/nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sJ/kqPn/XcZQi0BuamfMFUPJRTY2LIjeCj5rR1+jeJ0=;
 b=yYgjB8FjxJ/RWCw8/KWn7w/lZ+O4HOxlOP3TeVbKlGOoeVSNNSNQl7sYPZuR+abRW85+WmX4r/NcqSFf9omIcMjyvqjPRMMAxLdrGJN1uzJm1NT+s2zcVp2UvIu8nl8/EUPwHCIQBNoSgKEQqz37cBbsOyACT5Z4Au9B/w6lLHszfX4KKbOAnbnuH4GJ5iJnZwBS2fTmK0M1AwmkJJuazokheQYT6vwzVdUQ/oMVX5PBTWopMM/SM2LJaEVTK/yqWcIYAIP5ExqOfUpDflZByzoEXKlyQW6FcwEjP4juscpUmhH4959rdJ/6sY6qWkcKf+eoCZTWUCI1IS1w4UzjOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sJ/kqPn/XcZQi0BuamfMFUPJRTY2LIjeCj5rR1+jeJ0=;
 b=hQ+pr5SaT5Eq+ircYP6nZtthX0qBCNaA+to9rlSc6vy5D04DiMFCn77cBkXdvKG9X9l9TUHgm9JqjJ+db6rTWXLb0OyTgTeBHGABMXX1js31URFnb9sIzrci9vB4c+Rogc1EVYtaxbonsxCaDIw02E3RzDKSZGJScTUkEY+w5QlH5b1Dn0DSf4GQ30YC7nA/jiqSi9FyTiG5DcKyFBPEE7q7AckemXQEzb9bsjF76n1eHf13+Of5fnVHaohhF995fMpH/q0f7JH6TWQo6JXoipUnXxiz9Nr4Q0O2uOpmvSvGHRv6JRk36284yyUeLi7JDeL1/UyYOZwF+qPOkZ/cxQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from DM8PR03MB6230.namprd03.prod.outlook.com (2603:10b6:8:3c::13) by
 BN5PR03MB8109.namprd03.prod.outlook.com (2603:10b6:408:2a9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Wed, 11 Feb
 2026 07:19:16 +0000
Received: from DM8PR03MB6230.namprd03.prod.outlook.com
 ([fe80::abad:9d80:7a13:9542]) by DM8PR03MB6230.namprd03.prod.outlook.com
 ([fe80::abad:9d80:7a13:9542%4]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 07:19:16 +0000
From: adrianhoyin.ng@altera.com
To: dinguyen@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: adrianhoyin.ng@altera.com
Subject: [PATCH 1/2] arm64: dts: socfpga: agilex5: Enable i3c0 and i3c1 on socdk
Date: Wed, 11 Feb 2026 15:15:59 +0800
Message-ID: <432011842499ce80707f43dbe0d30e40a8a896fd.1770793444.git.adrianhoyin.ng@altera.com>
X-Mailer: git-send-email 2.49.GIT
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: KU0P306CA0077.MYSP306.PROD.OUTLOOK.COM
 (2603:1096:d10:2b::6) To DM8PR03MB6230.namprd03.prod.outlook.com
 (2603:10b6:8:3c::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR03MB6230:EE_|BN5PR03MB8109:EE_
X-MS-Office365-Filtering-Correlation-Id: dab035f3-10d4-4844-e709-08de693ddd12
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?PC4u5wWFZ5WpBO9OK/5W5CRH8kp69/r/NFMPC8usaiO6qXYPBWF4wsoY39Mx?=
 =?us-ascii?Q?yYp+cOZCq5Gr7ZgygQy6s5ZDabBJZJdf8xkffj+EsB3nPOqjLhEUbeYCzIVv?=
 =?us-ascii?Q?UOHtjTOFnarNvz4DoQDEid3ygjJbYWNc+sa8c//L3iJn5rVTGASqSixAQIB6?=
 =?us-ascii?Q?aacDIICEzkcV18rCwMNi0c48Lhabt1u2+qYTD7mjqRyv1uRslxAB2cNkjQwf?=
 =?us-ascii?Q?yA4ml7nGylUBwH8gxH+xCSNRAcRkIyjN0UHqF/z3ABs/A10hTsHmv38/diqY?=
 =?us-ascii?Q?GTj79WFkMBytVgjf77qZ+Z8zuIO2yOfC1VgrdtBImeVKg8yeox9sECuOerIN?=
 =?us-ascii?Q?QDW9/3R6zb8sADPcSuzOpAqAUpYJAQnjhY1LANI62n0ofo+w7dOxLvUl9kZY?=
 =?us-ascii?Q?hSA4uHtaHcdeHeEn/V4eYhce4HwpJi1EeRK/+cOp1L4rJ27pBjZ9d26zRde0?=
 =?us-ascii?Q?nFW60Z1BWfZzqtFrXQU8S4jh0WA4FrYnebr0mgsHOtpeoSaFaclvuzpSRpwm?=
 =?us-ascii?Q?7LjTsMFsU3/qL//ScTKuNwPWq4ZVyIWG403yuGjb/P4MAPRiS6HlZeip0jr+?=
 =?us-ascii?Q?bwCa9JbjPl22Zjm1Ym/7ekP1NSa06rMLzM0HmA3T/svMx9ciAD6mOkqwYmoj?=
 =?us-ascii?Q?n3UQqbKUO/RCNGm0N8pCtJcM5nZs8v+VoL9TCngq3BWV+hRlXyo5poQqFZwM?=
 =?us-ascii?Q?mWpgsxDBuCDEuuAsl7ebHtS/Wb8cWh4itlX394yP8Q/gdHdOGvYN6Yyxsb1N?=
 =?us-ascii?Q?29H4nS3v3MVG/4wJ3uGBy+NSHBg0MqLdTICTwUeyWy3AWFyhozVEPv8Ulyhc?=
 =?us-ascii?Q?C5XPrrdmLd8v2wsbOyZXM8Cq5E8bdfjqC07lPLPRI+eNYSpR34XxAbQxcMqx?=
 =?us-ascii?Q?biv4BkGp3efU6RBeUp+G/tsNW7yuvhw0+8XXNaH1U35wD0G4FnBXqZdz283s?=
 =?us-ascii?Q?f3JV0UB/WAWiWX23/3rLQBebpLRg927Jj/IUZOuzcqjqU2GTm0T8KnJJdbh9?=
 =?us-ascii?Q?zPpASpweCAJVNJsNV3bV+6GOhFPOFnDL/fOZZFvmJJwe9Sbc9rVI0Gv+Tpha?=
 =?us-ascii?Q?iMjo24gmPHU/8G6TJLTbjjdUJHFKVYjOH604js2BGDOSItuQHwe+h8A1h4gT?=
 =?us-ascii?Q?G5y9xFwS2FdLBRt6wbjMwRnZgGqvI0S5G19uNWWdrtodFK+oD8i0r47/Sbyf?=
 =?us-ascii?Q?6sicV68iHXh1kY9eUg5Q95H2rBR3a377vAYjPsGZ5zavALtn5sP0ebjvqouz?=
 =?us-ascii?Q?jcHOKgSRDkbE+UkNh0Cf6PfzK57bcWxUiKzAZJJKytYrx/2wXmxoGGRkhRCt?=
 =?us-ascii?Q?mTI2J+EBOhTu45CsrpwCasmBIG5O41RhR9AoOPxT+fGhTI9pxH5isTskay9F?=
 =?us-ascii?Q?x+4Pg1Ee16woAhoM/t5goRKsrNiO22EMMekdNK5WpVYcWnDBao+0gjcsELow?=
 =?us-ascii?Q?bE4j2oVK92a/yulGjHmuhNdoLGt+nvkgBfBO0/Qs447R8B+G38Sxs/QA6+WQ?=
 =?us-ascii?Q?4eBetyts5NsUtxr0JigjYqVaTqoMIZM6uiVgkYnwr/vnGpv07BbF8hyFiAzo?=
 =?us-ascii?Q?N3bfyhUO2K9nbu8NL4g=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR03MB6230.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Esp+tPzLUCGeX9eXNacOYPX3kh9U47fFIHPHxHQKZTKv68mPIpXHJ0YL+g5v?=
 =?us-ascii?Q?WI2HHOWlrBib807hRH/STi8HYqs7uZxi7pIOOF6+wGGOHDaG2xN3YWimG99A?=
 =?us-ascii?Q?znJBosL81OXZIZdrz/o69R1QSf+3Cq3o8r5WTizzddI/pSvPMmtDX6nDKJNr?=
 =?us-ascii?Q?3jcy2SfEMVI6fv92b17tLd1seCqrI1lwc3Hx8jwMyahMrj8jtVwf6Zq1MhVA?=
 =?us-ascii?Q?JDkcvGrKNYbIZOOW8TODvaaoXzNjREixNSrdO+5UtgdaYTZdrVF/IbXEIMhl?=
 =?us-ascii?Q?UHT0FrJ4QlHwSzOUW4N7qO+eLN45sS+pU4uRhDd3rA3Jm+RuTyhZqug42l9y?=
 =?us-ascii?Q?TzywfiaTtJLGdaTBe6WipnyY+qapAItHHRWu7UXuUt/PUvnx0U5vu8tR6gdb?=
 =?us-ascii?Q?jhGJpGTeAC0pgzKsSKizaXEAzqTWqr5ZunMmifYvaZLShBka2AnqHLw6M6MY?=
 =?us-ascii?Q?bYVy0mQbm4PsFRLySVFcxZc60A5a98FUMgEEn9lkauJcHWKw1VvklDfLv2u2?=
 =?us-ascii?Q?Pe0P00JXLKT9jMHdeDHUgweY0jMbBlN9gvjUI7kkNidu/PnKyJq/ON/8608j?=
 =?us-ascii?Q?9N9Vf6ynnhd+mcVw0eUcwuEM3PBVwXHLm+9x8BDSDBLnQIhHrbEwVdWTNkhQ?=
 =?us-ascii?Q?4ckLY5shObjGm9FOpyuLBhElkRWVOK2oLcF3yQohDhR1PlVmnMtmZ+2c94ni?=
 =?us-ascii?Q?Z4KxwzmfYqDKqfask6gT2H8OqJOuRtJgiYCOE+U5/e3fCBsjzHTPfiTo0S8a?=
 =?us-ascii?Q?XERnaW8jdrvk3hgr2UkSynCYA1DL+opkX/OyJZevKPdHaeO0776+TMynEvHC?=
 =?us-ascii?Q?pQZ/3S3Dprl/OwAq1n2ALdcr6x35sMqHjKRWgy5fJj3eISMsonpTdph6ZICv?=
 =?us-ascii?Q?iauh7x8ARFbPjjMQjlhNoYXH3WXKwT6HJwyN5NBPmwHlqLOgM2vFo1mezWpU?=
 =?us-ascii?Q?tSI80MDnDhuhDwHsVopO8nPmCEu9gQYG34BeixDyMqyX1zY9NlrE193Ysv0e?=
 =?us-ascii?Q?qau4hne2EUXVEPj0ChQ5O8QBCeGy0b5T0+QOwqTKxJ8DIRIiTjDFmdmlzaH7?=
 =?us-ascii?Q?KT6GeCRALW5NQ9iJgf//kqZSbkqqKfZptPWdV167kNRzORQEfKWfs9LjkcLT?=
 =?us-ascii?Q?KdMp2h9XcthfGHEqV5LZa9ZS+JvRkXfcf/yVlral1S8s6TJ4XtVJeM6/8qvO?=
 =?us-ascii?Q?FeUPrmWHH4KeceglUGRAOqV5bbzwpGGLy/UGbTFzW8EtZBOLUZAIuYMkAgnR?=
 =?us-ascii?Q?SwSYM9W4d0LiWQm2qaWtBeEdhvdfXZ5Ywfncb8mPwvZZUKF8BfTO5NGhFQdZ?=
 =?us-ascii?Q?zgP3zGOEzoA+vk1Fo/ITMSUmsLW/atVX6OSo1ial+NP6+p7uvm94GQnJz6lc?=
 =?us-ascii?Q?tUVwESseiNxj65WJ3jwurQRdFF8CqnIsjUQf0eOsKt2+f+rKj5yyL2FLY90m?=
 =?us-ascii?Q?0wmphgXh6rTGdwQky6a+wHQkplfh0XsSghvw7LlvaaSNlAir0X+ZCzpJNsgf?=
 =?us-ascii?Q?9anhoEfMsuNKgtMIgZN4aVsG/DAu54BkXUufECCkV+rwqUgvmPYuUtG1H4vz?=
 =?us-ascii?Q?l4hxwn5eHwKmpxax0sPc6MfDwcdq/YTIBDXoy+fj9RBWsTWpu8Fvx4W9mb9j?=
 =?us-ascii?Q?d5URXswbAvqVSqQk9gFkODqW7QK9aTrNUsVY9djLbGdLW5yA6H73KjBjScCX?=
 =?us-ascii?Q?PP+IKqfWn6XaeexJLKmbA8Gns7mjxseQH9yCU60SD4Wd14ksAyUTby3+S70o?=
 =?us-ascii?Q?fqhZIofK73/kqMQEk4jHAfnAYpW7WuY=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dab035f3-10d4-4844-e709-08de693ddd12
X-MS-Exchange-CrossTenant-AuthSource: DM8PR03MB6230.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 07:19:16.0135
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8YO+DiVYiYLhGvKtclBTTnpJ1YTvx1A70HifVVzyiVzQuHFaWw3Hbk8dJ4CYUXXUnCb6ZqbEe302M6JT72twpopmOYR0OQVKGmY2zg1BVug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN5PR03MB8109
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264641-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[altera.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adrianhoyin.ng@altera.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:mid,altera.com:dkim,altera.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 81FE2121D57
X-Rspamd-Action: no action

From: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>

Enable support for i3c0 and i3c1 for Agilex5 socdk.
Add explicit aliases for both I3C controllers to ensure i3c0 and
i3c1 are always assigned to the correct physical controllers
regardless of probe order.

Signed-off-by: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>
---
 arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
index 262bb3e8e5c7..3076696d9fd7 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
@@ -13,6 +13,8 @@ aliases {
 		ethernet0 = &gmac0;
 		ethernet1 = &gmac1;
 		ethernet2 = &gmac2;
+		i3c0 = &i3c0;
+		i3c1 = &i3c1;
 	};
 
 	chosen {
@@ -61,6 +63,14 @@ &gpio1 {
 	status = "okay";
 };
 
+&i3c0 {
+	status = "okay";
+};
+
+&i3c1 {
+	status = "okay";
+};
+
 &osc1 {
 	clock-frequency = <25000000>;
 };
-- 
2.49.GIT


