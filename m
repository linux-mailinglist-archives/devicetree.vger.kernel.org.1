Return-Path: <devicetree+bounces-259331-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOn8L5HjdmlVYQEAu9opvQ
	(envelope-from <devicetree+bounces-259331-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 04:46:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BB283BAA
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 04:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E8FF030038D3
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 03:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 890D72FFFB7;
	Mon, 26 Jan 2026 03:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="kDl/XM2Y"
X-Original-To: devicetree@vger.kernel.org
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010028.outbound.protection.outlook.com [40.93.198.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED862F6594;
	Mon, 26 Jan 2026 03:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.198.28
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769399179; cv=fail; b=UCIeAs5Ip6eLij8gAm49DRyefAxe/Vt8vl//ItuOoYbjy9zmhrnRAyN06GgoCeNoxWhafct9RfCfW6Y7fp79349lrSYL0j98PvYgfjLO7+vmNYRSBCMQMDo5H0LkEemqZhGAo3xbMI7o4VEZqEoA/xOP9LSMWV5NFF+iWiuwD8I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769399179; c=relaxed/simple;
	bh=+7Y8AvNir1E/WQusWZ85rC+w2zv19WBxxACJ5kSqB9s=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=bjOV0qgfHhkx7O1Vfw7cuO3moT8FAOX2p8vF27tSP8BEkQ4XIBYPsYMj/ogNr7YiI4C+enlezJJZ58lOs9KjZKXQ/Ex4C/mWPCT3zHF4DWnxnUHQNpJ9FlKx93dOI++EogfG92RvHSNxlbeGG1AC1/iW1TrsJuL87+/djCxtcmA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=kDl/XM2Y; arc=fail smtp.client-ip=40.93.198.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TzRQLPheYJ1lZC8zEYRucjluGc6DeQ5ZEtY/BnAtcOFVyfZ1gF4RZfWi/nsKBeYyuh5inavq1S3mn4fEslVkmzT2fLeNaLS/UVhvWqG79eqQDlVIwicz5Xj1+t9C96B/qKT38r9/OKn5nvnaD93PbTVpNKu7DZfn8cSW49qxRVspSG2H5x6o7LunRwQKDHM/Uc9UkF305sgej9zLJWPZsHAMqgEoH/PuhfpMN+5I/nRQqJ7Po8LhypB0gYwc8Qj0g2VARDVgLZdAT3wrP1YvuLUHJyrplz531nt7yXAGHjlqrTH9WEYWanNFsoyvm2/0VSLk3BhHMDzzbNM8PDljlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ue2dIBJpPRSLiohvjNu/Rn4zDIiR+/9SIfrJmOOAZlo=;
 b=M4uw3MCdTCRro9GJHp8BozajpSa7Zn2OrIQk/f+WNqlMDOn2YAXDSc3qGIHgjPOcinaf+IfNkNphzXS/bQp6xrtOVKDT7UKCMjGyZzuSERnbfH/2S4uMWJqigkTeHe/JnuHwvIeJKkUPncroDiMpTkrst3g+3xO534ljolnqFHgN7rVR9E7AszzsttvTCCbdAKIVzTP5u1oA7/JlgyG0DqFQDEOt9+Uovg6BQPG+lNg9P5Vu2bIh903q66c/sDPRKHoVxuNTcPPA2X3qZKIzT4mmdevYZhF0eSgrD/jTF1uhUp9i+4i9hs0Eh+eL3T7uwiXAm0zBrv5Bx1Zop/4k0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ue2dIBJpPRSLiohvjNu/Rn4zDIiR+/9SIfrJmOOAZlo=;
 b=kDl/XM2Y8u9LC2IUZv8yGxwwh409HORIAphNHGeMeEtJ6ZNnQQ0guXp9w86YDPhteaDRzz89wJ3kh7q56/TceYisq7ESLTZfKi1GMeOEqB1mv4mXwRgpWI16yGGSvbdXv5HW5MsEMGeP5qLoNg8V7Qb9YQR971EF8H6yceOoWTD8v9j4uO5hr9ivfHaTUsa0Vb7SzJRTH1raUVIL8/1WaAFI1nFP3jcImHeTtxivYfjnNCfn2Z9BPyvdoXNE8M+6zJM5FckSLXVqozQksGH/pgF3fouHL1meZvn8h+J3JWnaRCL4Azr7kzV2WvmEl6SutxvV48P683/HyjLuoAaMbg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SA2PR03MB5947.namprd03.prod.outlook.com (2603:10b6:806:11f::17)
 by PH7PR03MB7046.namprd03.prod.outlook.com (2603:10b6:510:2b9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.12; Mon, 26 Jan
 2026 03:45:59 +0000
Received: from SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2]) by SA2PR03MB5947.namprd03.prod.outlook.com
 ([fe80::374b:5d3a:d0b0:31f2%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 03:45:58 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] Add eMMC support for Stratix 10 SoCDK
Date: Sun, 25 Jan 2026 19:45:57 -0800
Message-ID: <cover.1769398006.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0151.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::6) To SA2PR03MB5947.namprd03.prod.outlook.com
 (2603:10b6:806:11f::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PR03MB5947:EE_|PH7PR03MB7046:EE_
X-MS-Office365-Filtering-Correlation-Id: 69a70ee6-180c-41f1-14b8-08de5c8d6a73
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?+LtBjKjAGDpLlYAtVE8PdbaSgTjsredmjyQEyZ9fvJr8QebKukbpNswC4O0Q?=
 =?us-ascii?Q?Q9iUVZIbexjm667D+j1Z0btWL9kc+kn6zyInIrghOWelS3smtBe0Osl41Nu9?=
 =?us-ascii?Q?etuUNpNFhC5xUK3hsGRvQdrni3kPl9wk/dx9WPOw3nuw/YOofyFH9oiod+bu?=
 =?us-ascii?Q?DWyrCuLtk6i0tEUVPKB17pUl2wBXlN2BkWSJSQtEciPhbp9PyUFtd9kZx4L2?=
 =?us-ascii?Q?CxBSSs/MJwTiPrxtHWuetfR//M0PrbFSjzc5zI9as2NCi+cPcgbuRK3/IPMX?=
 =?us-ascii?Q?DaeJ8uSkCjiHdgJvvWzNWh1sn90MFt4Vp/P/2C0QOOZslOaglgwdsgW1ru3/?=
 =?us-ascii?Q?PkV0Nm1kVP/FDowGtnXgxwnYDblYQeL/3GePIQnjlQjZIooCmQjXstun81Wu?=
 =?us-ascii?Q?Ai3r+jCGLtvH8AS+nL4rOvB7kA0eMXu5jMMAGzdTuiSP+6VVwGBJxgdiunSb?=
 =?us-ascii?Q?uZSfQLkFuhGb4qo1c0Lfbzr68jgl8oEIqGQ3ikkoffwZR/9bUSR5mhlP7eaN?=
 =?us-ascii?Q?yCJ9YmjLjm/qE1F2SaGMPQTyqX1A+t1OI/UBU+lW1JJdknJCiEoMe/985ktS?=
 =?us-ascii?Q?pLSJfQhaLWU6u2xjY3ZCHwsgKXSVXZ974fs2aqEROgwUBFzjYah8dggtdttq?=
 =?us-ascii?Q?Tx3ZCH1aGxeQQCnMUiixoyP2dqYdowuup7cF4rSfLK/qvkyiDPkyVMJFmJDi?=
 =?us-ascii?Q?zZlQ4ONtMq4K1qIyo/lSqccE1AH4/TSRDsBIL1rQkxoWsMtl9grBSkDcipD3?=
 =?us-ascii?Q?a86EU8W6kkGzNGWnVwdKdx0YxcBqGig72U5QrKkEc65IIPh5yecNKfr0bZBB?=
 =?us-ascii?Q?zd7nh4CirNwEO+uAfsx+L0ayQ088U5Rh0PXAK+5z256pvmS4hUxrxH7suMP6?=
 =?us-ascii?Q?m4C5hTHLYPPFzltqgdNqVTnd0OpzdfF3U85QtAw+T4BVcIxcoPaJaW5kvw3v?=
 =?us-ascii?Q?EgyfH9QGTMX76RuRsHTfxKGHmSfkRlpNdATq6yjll532E7/tVXYvdeyzd1Gq?=
 =?us-ascii?Q?3xddIEHqvlV1dUyVwyp4jYBbquzWNKIs7PQ9qAd8LRXZBlQ0PFzgrHfgo3Qv?=
 =?us-ascii?Q?cy86YAUag7JEc68fcwtXHNQ6FmRzJLkpopJWOAET34768AU7Mp25ZziXo9Im?=
 =?us-ascii?Q?KY3B6oFheThfNhhTo8b8bL4C8/QveD3vIVBM8M/JUSJ3i8xtSWLLKK/qKxk2?=
 =?us-ascii?Q?WUn3Oxpdv6KkyPKjSnPWdfmV7pNjfQsALQQm/pziLZBrlgwO03FR79eU63Tr?=
 =?us-ascii?Q?4vtp2NBZaoMRVv1ym4h4lRx5NbXErVvAH1u4kU7dDTxKdtvUqldxXBs5aRo0?=
 =?us-ascii?Q?ubuK0eQd09+R8ipA4EaTMEmPlNLmP4SqMrqyB8vvtwHsu/SOhruvTO+04hzj?=
 =?us-ascii?Q?8dQKJjxSh3hYqLj+309WlXfGqtB8fuOBD1bIIy96J6dbRDyZCK8FxvRUaN59?=
 =?us-ascii?Q?O7llOFbUTF1Ph/Qlb18ka1yZLH5ZpMrCJOe4wVEPekyUZzeLyjnfLYq6fYB7?=
 =?us-ascii?Q?4Z8qYYsxv3IDWTOlyacQhfqbttBAPMHjcL5quqwjlpRLszTpWwAkAMDhXKko?=
 =?us-ascii?Q?vSYLY16wLKFo004oh68=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR03MB5947.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?xY3nmP/khsJ3/lkmP6OgUCgCYkgjQC9MXPSy89DbqzprBCrf3j4ZQmxLU2dw?=
 =?us-ascii?Q?7m1Dnwly9Q3cbU1Rj8nekhONfz/s8Szbv8MpuJ6TP5Q4W+X6NTl0E8TMewTx?=
 =?us-ascii?Q?5eySrmZ5N1Hu1S4ccRpXU5aY/5vCjiI+VXfZAKxc4oAZbxt+scy2mczotxwl?=
 =?us-ascii?Q?KwoichJgubWdHA07yqM1kfZyt9ECnL8WRA3KLg094O0rXsfCPX00v1vrVCdR?=
 =?us-ascii?Q?hLLicSvvONRQGazdShD9vSbVi4J3CEjWrwUtyP+8QPr2KT0SpudgeUjjGQo2?=
 =?us-ascii?Q?+urhJFQagIF0N55cglifkkj9BGxaOhMbB1sn4oTYk0Rbz4WZRFJI74zmxTEg?=
 =?us-ascii?Q?kf7H1l2ngkU/MAElHc3RjjJ9k+2lpplFev9qEs4UyhXGKxiYlu72L8+R6672?=
 =?us-ascii?Q?P64I0sR/CQkQeSF5rMItDfRHFulVZu9tflehQv2AY83zqLeITsB3vNvWfCtO?=
 =?us-ascii?Q?nyFNUxCKyI6v8bcNZUlZm2+pCE/7b0NJibX6jEDj9MHdi+dyIqEzTpyg8be3?=
 =?us-ascii?Q?3uNJJS88S4eGmpsCzk9NEq4vekrP+K7w6V2XIvgXGLkBSNpCpMR/8RAhn87U?=
 =?us-ascii?Q?dGhdhnQD1rYRV8A8rmjHqR5TX6ybc0x4n4WlSW8K4sW3c5Xc3vpaZpdVWel7?=
 =?us-ascii?Q?Xkjb4AGHp/RdxX4Aj3ErSOfKulFrhM24/tH9VSMbCpuesCWDzStQiZFMj3N/?=
 =?us-ascii?Q?A++qfYnznUAJlRLlYjAKnjlBcvcrGNU9di434oJRZHb5BNpN5bMOHgDWqpLg?=
 =?us-ascii?Q?I+E/t84EwNSJVNEjMG//VuVDi2cdJxfmFNAdoUmhzvljY2dJEY5Gi+ld7Gdf?=
 =?us-ascii?Q?n2s5QkmtZD0QwSHROeinJCDc5bn2k5GkQKP21XilGq0hO0YC0uJ80Sr8sjU7?=
 =?us-ascii?Q?Zu1Nv5ppSzgE9Bcr0p4I0eAwbjCt41Bs4aYJHPs4Pt7lw3TwNhcOr7q8AUeO?=
 =?us-ascii?Q?9so1lpRSob++mIfPP577rkjAK9Pqz8+U7eqEhVnPPmxaGXoQuA6bbu8fBhgc?=
 =?us-ascii?Q?XQLgX/k7GxAseUkFZTo5o01JSgZt3C9k9gO4DkosreApV8qGl3soWaxmpcyn?=
 =?us-ascii?Q?hMhs89K4d2i9n/en4iUpIVyuFcPG6lZpCibTs9FOZRcu2vK9T5yp4cuDHTuw?=
 =?us-ascii?Q?rfi3VMsr6VfG7liylczyGAjpymiBdQQPO5rLto4KesxRKQzXuVNidtzBtJ+M?=
 =?us-ascii?Q?lpa2oCieekmtUalQmlLiFa7tdFtA+vvY19qxJLLyksPIcsKA9JJPNjxpbgip?=
 =?us-ascii?Q?TgBiyCcu0D7km6vs6KDdFol5Bk7exU6wNa1TEOJZF1LbFaAfvxX8MuYsjUQO?=
 =?us-ascii?Q?1XThp45Skcl0C32WH01MXdevFsJcvF+zCLrvoghmbBkg3hPyIWyDNPV3AZ7Y?=
 =?us-ascii?Q?ZtH2tJh9eN35inT9KQqIaMvavj3BchsP94eNhctZdowlqL54u/+y0BUMRYRX?=
 =?us-ascii?Q?cV1BSYHf1xzU2r7fdVab7wNQCYChBgK3eD2C3txF08f6RfE2G+ZTv0gbijvo?=
 =?us-ascii?Q?E/IevGZbXBqaFG7c/z0CfF09r/hZPnV4HH5Wzo4pMv6NzqRnCl5tEcOdhWdH?=
 =?us-ascii?Q?gdO1Q2F8MZBY/kwAABiw3nr4Myx3hHc4bpelHQ0qKYGwYBKcenzS9O8dhgsZ?=
 =?us-ascii?Q?bueDHwf4LH5s7FUuMiAELFwGtY+Na6bhG6PmNF2u4flw++B7zsneaySLeF87?=
 =?us-ascii?Q?Mw+vnks2lA7veUBfHUdxzE7Lh7ozAWipj0iG7nCbL8kryD0kqby83ZNNwALM?=
 =?us-ascii?Q?x4ZWlo7rDg=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69a70ee6-180c-41f1-14b8-08de5c8d6a73
X-MS-Exchange-CrossTenant-AuthSource: SA2PR03MB5947.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 03:45:58.4617
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lpKV7xOZgXc0/8i+/Inv8rGniuaQk+9Omb0N8DaFNnoYOr7603PKEajt8ryZGSWWD8t1QzyQr3+P5jOfK/7Yow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR03MB7046
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-259331-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 03BB283BAA
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

The first patch adds the device tree binding documentation for the new
board compatible string. The second patch introduces a new base device
tree include file (socfpga_stratix10_socdk.dtsi) containing common board
configurations, and the eMMC-specific device tree file
(socfpga_stratix10_socdk_emmc.dts) that includes the base dtsi along
with eMMC controller configuration.

This follows a hierarchical structure:
- socfpga_stratix10.dtsi: SoC-level definitions
- socfpga_stratix10_socdk.dtsi: Board-level common configurations
- socfpga_stratix10_socdk_emmc.dts: eMMC daughter board specifics

Changes in v4:
- Included Acked-by from Rob Herring and Krzysztof Kozlowski in the second
  patch commit message
- No code change

Changes in v3:
- Refactor socfpga_stratix10_socdk.dts to use the new common dtsi file,
  eliminating code duplication
- Move gmac2 and i2c2 nodes from socfpga_stratix10_socdk.dtsi to
  socfpga_stratix10_socdk_emmc.dts as they are specific to the eMMC
  daughter board variant
- Fix PHY address in socfpga_stratix10_socdk.dts from @0 to @4

Changes in v2:
- Introduced socfpga_stratix10_socdk.dtsi for common board settings
- Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
- Added fallback compatible string "altr,socfpga-stratix10-socdk" in
  the binding documentation for broader compatibility

Ng Tze Yee (2):
  dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC
    variant
  arm64: dts: socfpga: stratix10: Add emmc support

 .../devicetree/bindings/arm/altera.yaml       |  6 ++
 arch/arm64/boot/dts/altera/Makefile           |  1 +
 .../dts/altera/socfpga_stratix10_socdk.dts    | 67 +--------------
 .../dts/altera/socfpga_stratix10_socdk.dtsi   | 71 ++++++++++++++++
 .../altera/socfpga_stratix10_socdk_emmc.dts   | 81 +++++++++++++++++++
 5 files changed, 161 insertions(+), 65 deletions(-)
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

-- 
2.25.1


