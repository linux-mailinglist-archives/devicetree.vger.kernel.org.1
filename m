Return-Path: <devicetree+bounces-259355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cO8ME8cMd2mHbQEAu9opvQ
	(envelope-from <devicetree+bounces-259355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:42:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6599C849A4
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:42:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31FDB3004C67
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 06:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11A5280CD2;
	Mon, 26 Jan 2026 06:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="wLPFcy79"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011031.outbound.protection.outlook.com [40.93.194.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6997D279917;
	Mon, 26 Jan 2026 06:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.31
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769409731; cv=fail; b=AF15o/uetJ8rTTGA0ySJz36ZB2pyV79rpXQ9h3cDrtsvhH+bsgzfjY+CCg686gEAcza2e+4499kEcLqmfoc2SrwEwbHeZmRS2T0ALQyo8APp6ku6N2cE7F6MqKTUVmyZdz8WPD2BGS5XE0gPDGIAynuCGdqF0ySzEmE2fJlEzrE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769409731; c=relaxed/simple;
	bh=nqVuaWTmvN+zB/iTrSZkuFFF0FTXu6HokxL/TVrl6M0=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=RYsbHd+BRli3Ul4peEGILnkWzkY5bfZE6tbcvTSNZKNJk/XUk8ImkRKlmVLrO3iFHfsyJV9VRsj2Yf1B2zYIXVKiWFUm0cY7L/GVkVjFbnhkQphnYIMMo/nvGwwigs1DnbPgDY9PM2LV5XoeJwaB4u20TYJcl25BIM+ugjPQnUo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=wLPFcy79; arc=fail smtp.client-ip=40.93.194.31
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h2g+RNJYAOPdgThZJkCsmJtFiOa+6HCxcfZqra8bZi5QqwI2rl3omy3PHmqFi88akmVMJ+z+KHbyvsie8LuM+D9IAXNT6ZE1JNcNG/YP3c7qZ4FhppCGmkRmPWQpAzGoC8MSPslvZBOZElJn0TmcKeAF4TMxhFc48fL4nWWse3/Q7J5qnpDWHRc4Kul5gbuhWuSyhRi46lnXAczpkbdJw3Ht/0RcK9G+CBN5U8OQeie2uk8yFb+v5MC1+RpksyxLou1++0rhb6AWAMFrwBT4q2SbPAqU3oUnpseVPZl5F+xSAdWzO2nwlPvQ46ZjkaLoA85+9SnThxwKOh2EspxJpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=37V5f5bP4FTIhYmpZ6ZeYWAAlO4krX2KJcFxr2ifI8E=;
 b=am989oObJO33BQ5Lv5mXiRHkrlgTOyt8iZpNtWsV7y3i/LO/sPoSyZ+5a+A3XkP4tZJegcBX/FwKGVqtNlkCE3Kx0D9+SCawCfMl8mFk5XY+2la2AZF1g0VyLHK+zt8J3b7xc97YIYSPBDBNnYRgnYzOvlTf0VQnsEZDdoePvxvgXIMXypTgTNulz04719/bvwSYcsRGInzudljElyPWhteE8ilyRHRhWcmpVfg6pygOHTlUWGjx283GvqPXv6Mn+z91X52W5msjYyErSTk9eH67XRLTVcR6xjpWf2XVEHscBdAxlHRY1QJ3YWB9Zv9fl/F2b7cHcEqZ2jcn6NZ3Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=37V5f5bP4FTIhYmpZ6ZeYWAAlO4krX2KJcFxr2ifI8E=;
 b=wLPFcy79F1lb4tz5Zs+WPOnDoDPi+9reyQ9FempDbw0HMhtpyeuFoty7fkya5YBi79q6HKK9hD2Lb4Z1lAwvCsvS85RczdIP8vHbNIAChWyl7wW0t7KJFCErWU2zBA1nWKci8YUhChfJUmKqv4OdT0FOTL9Ani57Se6HR9I+BJJRv21HgWIOscePJi4bk+TUU2H4mx+MYqBJP0i+cTzrB0Ae13S9x1M9Erz1XtmwCFevOVRaftm97cDN9LHZvYBhX25HAgwHjz4fGT+42aKpRnj/hUGR9yEMgDX4N4zLYb9xybeGZsKTBlT7gW5t2D01upL55v9V+txT75Fc0M77VA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SA2PR03MB5947.namprd03.prod.outlook.com (2603:10b6:806:11f::17)
 by PH0PR03MB5800.namprd03.prod.outlook.com (2603:10b6:510:31::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 06:42:04 +0000
Received: from SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2]) by SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 06:42:03 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] Add Agilex eMMC daughter card support
Date: Sun, 25 Jan 2026 22:42:03 -0800
Message-ID: <cover.1769409037.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR16CA0033.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::46) To SA2PR03MB5947.namprd03.prod.outlook.com
 (2603:10b6:806:11f::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PR03MB5947:EE_|PH0PR03MB5800:EE_
X-MS-Office365-Filtering-Correlation-Id: f15ca53d-5277-4eca-4eaa-08de5ca603e8
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Rhg6QIoXPgEoEfXkh06V6l6lu4jUOU0EBsmIFRR5D+RuOWppXC89tLmnVWT9?=
 =?us-ascii?Q?WhnrFlYC+eosHMLtsDzv9tju7nZdcjbsYReCr1SEpiH8gkf1ZXPS5J3Z8rDF?=
 =?us-ascii?Q?QdRsLswHnnj1kCcPK9IGasy7nw73XrTS6x5Ojn1jhtkrZtL8rWF1ix/kw2V5?=
 =?us-ascii?Q?MGgEBZh4mKcbRfbkg2WnVGm9qqbp/2+1iqXQWbRIOg+zb2qkzCprFFUk18XC?=
 =?us-ascii?Q?l7ES0uh7EjRC4Skokj31cSFn89Sd1amAxbpswmb2OR5fj9nAMgw8mHaZeC8V?=
 =?us-ascii?Q?A+i7pS26jZD0TIhz6rr3VWcCujaKlu8y1NIUiLpV0R2ioRK3AzUCbIlFDFxu?=
 =?us-ascii?Q?nol6erWMrU374kYmm/9UTuE8+hrBFQjA8OQTGDWLhVkOS8bOHJ3MCo1l9Yp7?=
 =?us-ascii?Q?SsZWhV47egMp09mAVoCdC/WPEdaXIxA7lw6JosCH+JrEvTjLmyrdpEQGHogX?=
 =?us-ascii?Q?UNJz2lw4sY2Rwc2Ys2TkcqapmEZTxavKvpKDf5a+2VKc2zPfkDeJJiOExlMw?=
 =?us-ascii?Q?hvBDkntb9kI6/iZuVHOj4WRvhY3OawK49674KLL9e8OlndMBbY9gVlNvVCvM?=
 =?us-ascii?Q?3loFzgx0m6wzUHjzunWBVyZy8U86befx4LPXIgg4xRNcm4Qcn+F0EO71QqQ+?=
 =?us-ascii?Q?f/7W2HEJi4Rp8a1WEaM9tknJVyYuc7f6oLUqlPRovMBY9O97CpmSLxaGFcOs?=
 =?us-ascii?Q?flDWiZLtwxfGVA8GWSnzIWkYhzR8wX9UMTN2cEzvirZVO90Gb1ccJiuGPex0?=
 =?us-ascii?Q?ztqkTyGlVibRReqsvAw9EUjZ2caMka0L0nPaBA9CJSkdlyWE2mlTh9AhSTSu?=
 =?us-ascii?Q?uNSfSk63qBS63FPiu2lALh20L6fKjLwKZJApLMTfqy/mFNrZClBgcOCHGF2W?=
 =?us-ascii?Q?SYZgQn9JjbAha7h+PmrIcFObJRVs0QC9B8zKUtADLPdvQ6PiD5hVlsOfwmCR?=
 =?us-ascii?Q?2hFtUcW0jVT/rfTNtn0E5Q0V2u5Jr4JMS4LF864n33dzl++uL/oqSZX9lGdC?=
 =?us-ascii?Q?bhkvkpGClw4Nsz2Vl8bosNQBNipRWkxTt5dAbXpD7PkMzxVOSC2KARkjKfzw?=
 =?us-ascii?Q?nT5dB7ksqIZn/IUGQaC4L7Fph/Keolt4dMtVXwbK6sFAwn7GgtegHNB0/222?=
 =?us-ascii?Q?k0iGmskrzMrRG6dj/tcR44tuWOtsMHiJDN/K93EfIKWvJKqOgRE0u+SlGcpD?=
 =?us-ascii?Q?a8OHapm0QATUxtibHaqNlp8G23gIgy5S2HbEj+K2CJVrtkvUg5EQ0pz7pZsn?=
 =?us-ascii?Q?QGiq40MM8gANItzas/708ROu2GMW2dfHAfQjSnmg33LNzEji8yCX1a7MbQe5?=
 =?us-ascii?Q?4+C2pgv6tbq8XMvSt2NmFFdmIBj+zysAXFIb/K5Ey72xApAXLIhz0G0FlKq5?=
 =?us-ascii?Q?rhaY7BOW5GsKDmuaT7EDwA41NAqPp2IFzsUNuht5+qkLzZUZcNDE1IxKOMOB?=
 =?us-ascii?Q?T8v9fHOFEqT+fcr/oi/1C2t0QufvOIjpNxBm8/nyVqxiu+4oiHjP8ZtVr+6B?=
 =?us-ascii?Q?rDt9mq8IMZe16DE3ncT77sCPo7I9S4TuPoKdJPwmqac9oYrznIim4j+VDeoZ?=
 =?us-ascii?Q?IydEIZjC3LH4Affhch8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR03MB5947.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?J1IOrlPYXdQ6UEhmU3P+rZD3dJsuyVAyhm4625wmd+63q/02StiDqxYxx9rm?=
 =?us-ascii?Q?BCY8oAQ/xWI9I+WSqVagmEINEegMYYoxtrJS1zlSqA0a5JBYY+c8NBuY37Dj?=
 =?us-ascii?Q?hMn7i0wOFVbuzgFeq/0E3s4n+RD+FEctS98+i/EGHCksqAD5TxbwEeW2DZpc?=
 =?us-ascii?Q?t2mf1YKrLooX8eDMSN5nH1RLKWAM2szgzxF+xHusYdegReyXxpUfLUMecxzi?=
 =?us-ascii?Q?ZPqYRNApVVlJN5q77iri5un06GkcoPiPFdvsavYW4gB69Vuwp3CoQqhY6h3K?=
 =?us-ascii?Q?pEw9sqmD9R2BzELExaNq9DWT0MnjHLHyqXfla4B+yzZBwYHDhIXutmCh/WjF?=
 =?us-ascii?Q?aqpSbxAyVsvSUt53YE+944Gtfzgm0iKtKj5pX9ARfJyWy99JSzGYXcmxf5Eq?=
 =?us-ascii?Q?Iz+QY8dqRFakr/sLaGucUFgOWuhzF8EQwY9SmPe33ec4NkU8MAoH1REtuoCK?=
 =?us-ascii?Q?0ujFYdqdKtNMva4ZoBniHolyWCAc7G5KNbBworK3kgHslsHuNhwpm0vPV4Wn?=
 =?us-ascii?Q?c1zJzqFnf8HEzwAryeel7IZCle/6BQOWCqo+v1XDAt0WckUu3Oj3WudHJgMH?=
 =?us-ascii?Q?nI7c1iVFzEwuswGOgZq6SKgggoZIN7grtFJXIyoV0cvaio6hIEM6fYbtXPzk?=
 =?us-ascii?Q?SsxGpDARVS5oUUW/gEuMOWyuUt+VT9MznZBWStOuEpiNelXMHZNmoWDY6+7z?=
 =?us-ascii?Q?H/qo6lC51ZPze2kYEFUWBGB5idBYZmI37JQetJs4hEgbfIMqcl2fE3Lpwrcv?=
 =?us-ascii?Q?Lh78WUwTANuB7yAKaSSQ0yE9T886/2UKyweTRhuX5xvdq9/UiVPHr/O0bqw/?=
 =?us-ascii?Q?6V1CUhqMN5P8t22qm4okxETdA7VHiWTtMkHeQJK+MD3viZu7fqH2xfpIechk?=
 =?us-ascii?Q?3mLd4Rt3CsKjI/Y9WU8hBqPg+T88M7P+PVobkFH7Tkhcig+BYGsPYNXfghYO?=
 =?us-ascii?Q?Seg+Il6oMZk2746ZXChQ17GIWwpJhCW9Q5pcV+cNOMKEab97Fi5odtkpQxi6?=
 =?us-ascii?Q?t0hiBfrmCOu1+90YAmmgXlN3EDncE061feP8ENqleI4ldO2XhBMMuke+OES7?=
 =?us-ascii?Q?FQMyMweS6pj5k4cOAtrxi9Y5h41yvrwouGbFsESiM45bj/8FGosSgtk4RvgN?=
 =?us-ascii?Q?DOkNxtBX8rA3mN7tn16JGUfYnbUjcz4AdiC3BRg+IRF6Mw5WzPkI6+COBFX7?=
 =?us-ascii?Q?Sg8Ac5QpbFZmRwMCiy8Y5mMyXCgzSAshGnMSdoAdbDvzmT03uqwEF+2IUkEH?=
 =?us-ascii?Q?r2HNtQnN47QroXOgyRrMkBTvP5B5XdSPuWJMveJuab8xKjBpwIm+LvJPEG1A?=
 =?us-ascii?Q?nzfUh/iqwBQIUuGDpq6oi/ZCLFW0QPmMg+hYgBjCdDkAJ8pQTgF30v3qH8+D?=
 =?us-ascii?Q?DQie82FZVTS3PRPUboh/uQ4oJh2amWCu2G/PUqB0p0QJLbVaBcaLtkGIFTzV?=
 =?us-ascii?Q?ps0GIs+OiF2WYKlI7tK33+LluCxvzgaItqTmv1+WnX735wLBvNeTX6fVJTkO?=
 =?us-ascii?Q?yZOyaYnMnlNauBg69XL8tVV3avnF1AuO2qMdaaHdbkTD+ExI9BJPKfXm3PhC?=
 =?us-ascii?Q?whHn2jmB5NGMjsofRkr5DZL8W11WRFapqn3GOYFxy4eH4G1QWhVhBqtZLgd+?=
 =?us-ascii?Q?GlvWuLCX+Uz+slxZdrPy82XGLKOcoBsndJfL8P0suhyxTqq8Lh5iIqyTD7XC?=
 =?us-ascii?Q?e3NuahbdqWTKRXnStKUi/j3jsnqZcYiD0PeHlK3Ml6DEELtWaxs3/T9s3r+B?=
 =?us-ascii?Q?4RDQ1lv8NA=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f15ca53d-5277-4eca-4eaa-08de5ca603e8
X-MS-Exchange-CrossTenant-AuthSource: SA2PR03MB5947.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 06:42:03.9122
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I/c0i7xv0iJSwVii1wzcp1WXIt6XahTIyOu9tOp1YDVK344+o9hoh70FwAQc3at3QKVKetHKrexAIsMIVXix+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR03MB5800
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	URIBL_MULTI_FAIL(0.00)[altera.com:server fail,sea.lore.kernel.org:server fail,0.0.0.4:server fail,0.0.0.0:server fail];
	TAGGED_FROM(0.00)[bounces-259355-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.4:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,altera.com:email,altera.com:dkim,altera.com:mid]
X-Rspamd-Queue-Id: 6599C849A4
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

The Agilex SoCDK supports interchangeable daughter cards for different
storage configurations. This series adds support for the eMMC daughter
card variant.

The eMMC daughter card is mutually exclusive with the default SDMMC
daughter card as it occupies the same physical slot on the SoCDK.
Therefore, a separate device tree is required to properly configure
the system when using the eMMC variant.

This series:
- Documents the new compatible string for the eMMC daughter card
- Adds a new DTS file based on the existing NAND variant with eMMC-
  specific MMC controller configuration

Changes in v3:
- Update copyright from Altera to Intel
- Append "eMMC daughter board" to model string for clarity
- Fix ethernet-phy@0 to ethernet-phy@4 address 
  socfpga_agilex_socdk_emmc.dts

Changes in v2:
- Add new compatible string for the eMMC daughter card in the binding file
- Fix space indentation in socfpga_agilex_socdk_emmc.dts
- Fix compatible string in socfpga_agilex_socdk_emmc.dts
- Rephase commit messages for clarity

Ng Tze Yee (2):
  dt-bindings: intel: Add Agilex eMMC support
  arm64: dts: socfpga: agilex: add emmc support

 .../bindings/arm/intel,socfpga.yaml           |   1 +
 arch/arm64/boot/dts/intel/Makefile            |   1 +
 .../dts/intel/socfpga_agilex_socdk_emmc.dts   | 105 ++++++++++++++++++
 3 files changed, 107 insertions(+)
 create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts

-- 
2.25.1


