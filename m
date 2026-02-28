Return-Path: <devicetree+bounces-269484-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEF0BeyOomk04AQAu9opvQ
	(envelope-from <devicetree+bounces-269484-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:45:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 865F21C09F8
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:44:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 84C923023E2F
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 06:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F54338906;
	Sat, 28 Feb 2026 06:38:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023120.outbound.protection.outlook.com [52.101.127.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063DD15C14F;
	Sat, 28 Feb 2026 06:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.120
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772260707; cv=fail; b=JAvy/Um7k1GQNchxPpZKEU5WqeWBwdrAxE/XVcSgND/SGeqqpyRdrz2/De6n5/kC9drPuQVlOdTTt0quehxgeY9zSFPv8xfAboDGJX9pOGYAkqEhejEb73y4X+XJk6uxqPZlBSq644LCamqvKq70V41xX7ktvwUfgqOYJyzyr7E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772260707; c=relaxed/simple;
	bh=lPkxezTQN11pUZN8HUfQ9vrC3KWz+U99bewba/jcWrE=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=cpq+LbURy4IgNbPzbg5BRecfXX0Zp2KXgQ8/H2D1nlBBu0IC9BtJ1SJFKYPgGw8FT1a/JfYnSY2bVo/7UduT0wm4UnIi3FMXgHrLasBXWfuwYVUp4KGAzp4/oKd3q7E03d+OxFyC/o9g+cFH8Qq3w+0Z2N0SV0+40x0Rkv2Hi6M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com; spf=pass smtp.mailfrom=khadas.com; arc=fail smtp.client-ip=52.101.127.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=khadas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yMwQLeIsN5W/ZC6LQBKW5QVKVB637vbhvaEmkKyGqXDKWX3NsN2weBivJ2UsvZA7IYjsyRgfrCb0Sz0v+kFU+r7UnaXblKUpbhuaZzMRjG5ELIVN+CAzHn9A5uJDzbRwOcm/+oz3MyTcAzIq63AwQVgdvcHlvOfo0EMIaG5I5Qjf8Fp2kNMNTZziMot+9n9NbwdFH/mJs/gBI3xBvqFxXTNBVAlonyMA5GA2Rb6NR7qUc4rk6tVh6yfg3iMGcymp2ek0zNlO4uuAk7NsZIHvDYFvU/sVWrxVvE8ugEz5euXNHrsTP5QqzPMREed24S7MBs1lKD6/fK3ebKNWCLmUAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+3m+KEqDf1bZe1ik6+L5xQS95nGu9rMfyBpB26OszPY=;
 b=ssTunLg2H4+/SJl123ZFckc+jnaXG0w3xrGBJvgFB5YkWoZxwFW5CJwCy09w7AhePwQKzIr0yb2bjMzoS7gywzSGq3Ts/K9S56syQxdlAfUZ+vvIm09t0Q30t5TdBBLLJci2tWCDF03YccQ5acVeozGwX4QhI289jsyy7Z4ib+X3ifRgA2kuNltW8Bq8MWbJcSc2BPMw/iYlskA1nAIeUYi46Uvm/vhnSzo/8OZsPJJrrCjg3GIc1/duBPxqs3yKqQwfOTKQzMHT6TV1/D2TtL3b4Fu5S5FskRuJmaQ7IYU7Rk8CaEJj5EYID+b2nw7I6Bzy1kje0Zm4duSDTf/LmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=khadas.com; dmarc=pass action=none header.from=khadas.com;
 dkim=pass header.d=khadas.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=khadas.com;
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com (2603:1096:308::2da)
 by SEZPR03MB8441.apcprd03.prod.outlook.com (2603:1096:101:21e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.18; Sat, 28 Feb
 2026 06:38:22 +0000
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::20a2:a696:ac88:2549]) by PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::20a2:a696:ac88:2549%4]) with mapi id 15.20.9654.014; Sat, 28 Feb 2026
 06:38:21 +0000
From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	martin.blumenstingl@googlemail.com,
	jbrunet@baylibre.com,
	krzk+dt@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nick Xie <nick@khadas.com>
Subject: [PATCH v2 0/4] arm64: dts: amlogic: meson-s4-khadas-vim1s: enable LEDs, Keys and Bluetooth
Date: Sat, 28 Feb 2026 14:37:46 +0800
Message-Id: <20260228063750.701887-1-nick@khadas.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYCP286CA0001.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:26c::7) To PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 (2603:1096:308::2da)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PS1PPF62EEA9B1D:EE_|SEZPR03MB8441:EE_
X-MS-Office365-Filtering-Correlation-Id: da1face1-dfa9-464a-7650-08de7693f755
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|52116014|376014|7416014|38350700014;
X-Microsoft-Antispam-Message-Info:
	a1ndZVTi3hdvMmtK1o21dOJJJbzfwYFdmoCFT0qAwcDzrPMpoLvpmAyZjrEkkYO8eSG1gxijrLgr6U5RmAh1uKrYFsvzsZF3mWhZWzfIpKcOVBjDbi/VuUnzj7Bf/kI1lWaED0xo543KdSNYqqlD4R8GiLf4VAdo0rab6ukbm3nIfigOSh40bEBnzV5JuKlzE2JJTzJyYnIvaw1APthhlZK761V4XYdVasjzru5fi5eg9oaqCuCTj6CNgYTdCZkgzWOLYeVikUaMDCqyY63A29v0CKnH1qw+ubKlGHVT54DMb6p+1PtWx1fISFURh9iGgmD3PNZ9vBKxoh6AGYjQ+RFWOxCkif+kwcJZ4GiBkA4BBOifIi1dNjqPJnqNyEt67suz91ZghGY+oQk01vJen1xfhbabXAEfucpxbJySrFm3xPMPkCERxx1TfsvaLObmN0Qv2xF++NVr/EQBaJlB/v6CVYX1dtxtpAXPFhR1nA+oiAFvn+KG6NFCZjRxiJ+pdu9TZKenvolHAjOrSiDPbwYjQWsCaC5TW4geNEzvL14L387yCRm6E0Q9AM5YnAmRG+OFFNc+TVOALsMSQXKYc/vQa2ALy0TtiRk8RQSnwW9NcGuCCKoS23tE+C5XOkf+oYsx9jMGNaSAVeBqg75t7JnBLEwHlI48C0r9vo+8TfliagmLA97YTG+otqVU4S/cWYBZf/AT65acA8ZPTpWf/hZDDhP9Q64kFw/1l7FyCjelOzpZChp0Vk0rTRFlm9g/
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PS1PPF62EEA9B1D.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(52116014)(376014)(7416014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?UZAsao2DN5DLj0neUYjMpa1NYgrT3rai2bCO7vzAF3GnnWIaDUBtYWI9x867?=
 =?us-ascii?Q?C6EWmgsF+Z1d6u1s9hgpslagHoAJdhFOwSHm7XN36LQ9IYnc9TRcoCaRTN7n?=
 =?us-ascii?Q?v/xc+IOychAdKf30KcvDRwmr9mUEPSYgIkJbsCabxlKWazST/TPvAzh8L5Hy?=
 =?us-ascii?Q?7hzoeDFIMp2FEKmPtCmYshL1Fq6maW8Z4xo+rF39UikvOXQZErv87aIjPV5r?=
 =?us-ascii?Q?iahjWLXQxxDr6n+dDXcSqAEVWs1dnWjfFdQAcRTpFTAGSUoVavMsHKhALUEP?=
 =?us-ascii?Q?igjBC3pynay27GzopKe6JmKI5v6qjMbNWgIoNbAuoFz39gkSW/6SUn4yE1QO?=
 =?us-ascii?Q?wiEnwIRUN5pim9ACGTHBwmWvqClErTa4M1gFiCH9ZLwiMMR6chTvr6ihNhAp?=
 =?us-ascii?Q?OOhhmydExG4sVtNFB4QsIrcfn2Dyn3kx+PMHV7PqmiAChTa+OZnewpec2CPB?=
 =?us-ascii?Q?qXWcAwKWfGzKAYeuuq1FaWAOQcvMbFbe2Y3aMnaGW6Bksq8/bilhpTVD+ycA?=
 =?us-ascii?Q?QAEWs6rJ8g9fe+2Cy3XUauFw+DOpNcag84xS4/39fSy3Pixd41RPAq2qjqZl?=
 =?us-ascii?Q?FhPCxv74lwJQK5yAw9mE54BvttMloZ2ZXDke1oQHtpenqf0w5e7s7oRQXTA+?=
 =?us-ascii?Q?87qQnxdnkVAh/YqppP3dn0j1thShotlKGBhK8KobW5cU+siBw+j9swHD+SVf?=
 =?us-ascii?Q?ir2L0/Ii4QrE0lxzC7QdSeyyO3qLo+m4hTfu0WTdpIvWKVUZCz69GCaHJULW?=
 =?us-ascii?Q?FAlQt8GUgatRJ8auAK7ukBYgoDuLjpDdNq92FdOo3oPh5ZKrLWtW/91QM9w5?=
 =?us-ascii?Q?vc7Dq3+unTk1I54cJeA8AT3veo0+kf4wH6Sh62sYEKO5FVyJPjVUvYK4gEtg?=
 =?us-ascii?Q?764UcDW5YIgoYMMuwqcO/+Gwn7uyfMyI8SqFltAFx2wrkKuUFLfQyLDF3tjY?=
 =?us-ascii?Q?KoZu84qbmNMgYlkouYaGc+mhw0GI+CShbQGZWIE+JtyjLVs17edYtgZfU01z?=
 =?us-ascii?Q?D0NXSn4j8yGd8dXpAQT/KnMKIJi49l6t2g+K2vdktYek2mQkYu9C9KZgq8M7?=
 =?us-ascii?Q?8grC8LUo55PtGCDM0pHQPs56nSSdKvwsgeOpbGn86LznkeUHhsVWKeqLI65m?=
 =?us-ascii?Q?21mpWPoCIjHFRaX5oMkkoWN56o8Z16mm3QtAFWzrcnV0eqwJP0KFk1l2LoCx?=
 =?us-ascii?Q?NfRBG/fQwmovpqusP0iL3YJ8WEPrie6my253wz5s95IC8+bbm6eGOTJD+0DR?=
 =?us-ascii?Q?fkg6a67sAZa1T8/5UgQTmhE4I+MFIG3gMAQCFsRi0PuwwRYOY6E53E9+/AWk?=
 =?us-ascii?Q?we9g5oMrYl77WpY+85U1ZqIqlSwUZYITnrWfmKECZUn8FXFlzb9Z9Je3a/uC?=
 =?us-ascii?Q?rHJY+Ifd0zgteilMYV0Lsk2AuGq0VuvBtNZjN5U7xDGjSXZhMHCpuLcsFrhi?=
 =?us-ascii?Q?WFrrqTag8ysaC0PYR57hHeUNiEzAm3TMiEweqakJy+8Dq85HsEmOq9IHk2iS?=
 =?us-ascii?Q?ze9NCU7TvTzSZLdNMFWvWyKJWog9lpwG/khmGn2i5fi382A6++8r0OdtwH6z?=
 =?us-ascii?Q?QlmkYuPz7Xsw2s74bNJg8tixfswvvVt4iXCX8K7j9hKf3aginx9Sjljuy+vX?=
 =?us-ascii?Q?Io4CTdn6zh/5XFPUhvSiCC8+gPIyLBfbTJppPofUgZ2OpOS9vDCnGt6orMhC?=
 =?us-ascii?Q?jjJTfHVNUptVJmxFV75ELnDMUppDTFlDGrLFl8TyA7zaQaD0?=
X-OriginatorOrg: khadas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da1face1-dfa9-464a-7650-08de7693f755
X-MS-Exchange-CrossTenant-AuthSource: PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2026 06:38:21.8574
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uuORfSWpjM8h5gtsNvS+s1Pz6LvyljPSHaFAs21C00pjv3lc3jVZYw1T8d0+QQqU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8441
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[khadas.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-269484-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.946];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick@khadas.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[khadas.com:mid]
X-Rspamd-Queue-Id: 865F21C09F8
X-Rspamd-Action: no action

This series enables various user interfaces and the Bluetooth module
for the Khadas VIM1S board (Amlogic S905Y4).

This builds upon the existing board support to fully enable the
user-facing peripherals.

Changes in v2:
- Dropped the SARADC and Function Key patches from this series. As
  suggested by Martin Blumenstingl, a dedicated compatible string and
  driver update for the S4 SARADC will be submitted in a separate series
  to ensure forward compatibility.
- Patch 1: Split the UART_A pinctrl definitions in meson-s4.dtsi into
  separate rx/tx and rts/cts groups to keep the SoC dtsi generic
  (Martin Blumenstingl).
- Patch 2: Assigned the UART_A pinctrl groups directly in the board dts.
- Added Martin's 'Reviewed-by' tags to Patches 2, 3, and 4.
- Link to v1: https://lore.kernel.org/linux-amlogic/20260123022258.136448-1-nick@khadas.com/

Nick Xie (4):
  arm64: dts: amlogic: meson-s4: add UART_A node
  arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s: enable bluetooth
  arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s: add PWM LED support
  arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s: add POWER key
    support

 .../amlogic/meson-s4-s905y4-khadas-vim1s.dts  | 46 +++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi     | 26 +++++++++++
 2 files changed, 72 insertions(+)

-- 
2.34.1


