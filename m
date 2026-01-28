Return-Path: <devicetree+bounces-260163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id D6C/IgNYeWldwgEAu9opvQ
	(envelope-from <devicetree+bounces-260163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 01:27:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B92979BA53
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 01:27:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 213DA3011BD9
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 00:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46DF51DED4C;
	Wed, 28 Jan 2026 00:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="ueS0cYlX"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013029.outbound.protection.outlook.com [40.93.196.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63F41DE2A5;
	Wed, 28 Jan 2026 00:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.29
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769560064; cv=fail; b=PlYrNqYhw1uPmgGHL/E/AE/FbjhdQuVf29QSjc75M4jYYNfJkWYthoNXXTEWhqsdhO8r2lWe8EF85oVFC7mWl0/kKctn+34EZ6nmOWVRdwuwk99K0IfbYeYaSrDqIH9nt4hQv7X8au1/5LnQ42T++MnuZbGVo+7BxkLRqt6OPC0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769560064; c=relaxed/simple;
	bh=eZGrE5OJ9iQLqeIrslnNboczIfxkRECR2+k0SUKRBTM=;
	h=From:To:Subject:Date:Message-Id:Content-Type:MIME-Version; b=La2al8nlRFJTffezxJ0R2OBBBy7Hmp8MVs1UtIw7QmbV8UUF6URLWJ4/6keL9XHV83lzLssk2q5uMy3nxQ+bYDMvlG1yyAYTT4x0i16LxgD1In8uRy1sxy0LcxgOpXNwS6XHB1zOhjK4/Xvub5QGW7m8XzLpkiAOPlX4IwSdXEs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=ueS0cYlX; arc=fail smtp.client-ip=40.93.196.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CCHQV6cnkOPpV9F/kLeCi5MCgJR9L/iyNluXg9CBGmcRstg+QYQu6RWX9rS2hvlbI02pbntWB/SnmZH3BZLlpoi7Q8Cmby0pJxI8ob2bdQwCkTDZjoalQWgrpEBsJuRQt1mriK7dPw2wuASDK91zKaLyhUCSFGYOaNRCVGWQ13Vj6CSuggmDUd9bt+i3QOF0Vryss6nM6VXsroo1vybppKhpDofk3BJ2NRPPD9aizL87vZszfxjciDLZRplk1rl1GVRDHJoYvMT9e6u0xfXX8HFDKWoTibI2Wt98lbTkPUxRo1dNeL+iye7Xjy47W2P8Drlqh54JduEFnrmblUGqFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pKE7Ue4j+7Uh8sff8M9BEXyHTZ3698birl6N97Laj+I=;
 b=T9VWIn2P2e7E8BnXr5bVutZCJkR/RajDWRCqSBZ5Hi9H7XDCz2QQVJdfPF7Vt291c5usiZyn9Ms9casIIlJ7gXXWSEoZSuhtDr5bZrFcbeZXTjvZID3/9FFQI0LWlT3osP85JJP1O1WKu1rLhej4tjjz0z8NsUVSfxWZYJ4mYk1x7yEsY57/zv8zNjc8z9iVboKb3kL0rHLs4QsIonDWjVKytRdVA4fCZVnPWrcyXLbkRMW9Ki04g/I8WnQgbjOo3Q0VoMO7oYzIdPFyshtgSeMzQspnq6xGpBAU02PhpW+LZzVwKGqNvJjTmbVFSzx1Q8kZn6s6KMV3gmPRyhCCNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pKE7Ue4j+7Uh8sff8M9BEXyHTZ3698birl6N97Laj+I=;
 b=ueS0cYlXti/ACYjN1jmM5wcCKb+v16VR0L4e1DRaeTcwl8O+m7RIyY7XSlF2u2lY4nlMqf+wn8JFw+du2dpuM9Cl6IZw3l17bBpsuQeM98Nu88YMefPYThLIZbOwk5QRtHSnBPK06TqQ95ZOgWVhu+1Q71HLRT9W9FCBCyPd60VzWN4t1mmv+NHOnH1kZIjTNlMeyonCf24uhsbwPeymui8hD1Ph5w926rG9i9FNJQQrXpl3yUCbwaK3sx5YQ135ts+LPx0gxRnCZKvYq01NH3qJqcsmwza29YtfEowRT3SbVadJLtX4wyQ7BUEzS1zTTxeCl0y4jxPVVdGSEfmfHw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB6964.namprd03.prod.outlook.com (2603:10b6:a03:432::18)
 by SA3PR03MB8184.namprd03.prod.outlook.com (2603:10b6:806:464::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Wed, 28 Jan
 2026 00:27:41 +0000
Received: from SJ0PR03MB6964.namprd03.prod.outlook.com
 ([fe80::b965:bfa8:58fb:e775]) by SJ0PR03MB6964.namprd03.prod.outlook.com
 ([fe80::b965:bfa8:58fb:e775%6]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 00:27:40 +0000
From: muhammad.nazim.amirul.nazle.asmade@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
Subject: [PATCH v1] net: stmmac: Disable queues before tx_disable
Date: Tue, 27 Jan 2026 16:27:39 -0800
Message-Id: <20260128002739.3590-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
X-Mailer: git-send-email 2.26.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0135.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::20) To SJ0PR03MB6964.namprd03.prod.outlook.com
 (2603:10b6:a03:432::18)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB6964:EE_|SA3PR03MB8184:EE_
X-MS-Office365-Filtering-Correlation-Id: 7882c765-58ac-4df6-604b-08de5e040bff
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?dVjNNK8xbd2SxMpFEk9oyBBAIEbFGanbcw36uqGxzCspUfhaVj8cB3xpBv8N?=
 =?us-ascii?Q?6AFcQZtqnYPjW3U1AyMxHUQkYF+CQluz1DDOhyWHuvF+MkpB3Ngzsr1f7wLZ?=
 =?us-ascii?Q?HycKBhRzOwFbO5nJ1YfjuSpg/hvI1wKhWfPNqcUToapOaAXQdDDSz+nlg9vL?=
 =?us-ascii?Q?/PGVqCU0c7AU7nk4Q5nlNEK0VgQB7bL67RgQ+SV3ldIsPs/nwxp1jDvZngTQ?=
 =?us-ascii?Q?PEZbxF5PutbrxuC382lDeFiecgNNATkyPFY02KeZYAXQlgRXeE9r+GmD1KW8?=
 =?us-ascii?Q?E7tVymL0VbcCzsRcL4kh7eAcY3xnNWavPRTkKS8raVoQ89msFVshpyWuLwj4?=
 =?us-ascii?Q?M4E7rByeD+9IBqXuolxeIbLbCSivzV6RByyi52HkkhX6ztVZ1AvdF2Xrgbpu?=
 =?us-ascii?Q?7gsC+qsEsntT2heA1gWRJWVmNdLd5t8VER4Cm1ONXUnHMSYNQDL/c056D9tW?=
 =?us-ascii?Q?m2bpM+o/sD9D9WXF38IvyFqYxtJUvv/0E/WZsdWbNBxSHSOKmQzTO8YqCQB6?=
 =?us-ascii?Q?GfxHBUqhVj+EXjMcQWUD9+rzHQhv5g9rrS69xyd5nV6YeU7VwpqkdyVf832+?=
 =?us-ascii?Q?pO61EGdaf5jwFwkIyAwrkw2MgYiT/Z2f8XIgW5YdKQY+aBNIfdvYjKSzemSx?=
 =?us-ascii?Q?m7NDuQgIHfNF50d2k4lg8/DX+QuJIHbWzY07wJumyUlojspvfKWGtx+X15Gt?=
 =?us-ascii?Q?Y5ELjdlbhbWEhv8FPo5OZXDNwUaRLH7UL9WaWLSlqc5KbDMoZ/m1BQIVp26D?=
 =?us-ascii?Q?CguPwaumSowI2MQDstJoT1uazqld2uUDDw5PcqtEByRW4VEBz/nWp9j85bjJ?=
 =?us-ascii?Q?EyLel8iOlT89qRoYBcwxEhkMaB2P4d7WOwdkTmbEnvgiXrY9tx5E+aJaQXBg?=
 =?us-ascii?Q?GeWzcc0iGgoh85cQZGSJz0Jev28CqkNZ5d281V4GqdxnMlKd/rbHOvZpE5I6?=
 =?us-ascii?Q?VY/OV2xyiktPSqSiMck+QSF1gdS5YYGmzMcwgn7ev31f6jGPxozznwOdFH6c?=
 =?us-ascii?Q?M2e4g/2CkBTzrizOjNADM0rGOt+8AAEK+ROdZM8w6lZY7MZxG7Ti3avZ9HRN?=
 =?us-ascii?Q?nZrhvKIaNBB5+EHQRi3OKIkHxSY9gAXz61XyCrw14HyRSHrK9si3Wbi3a4qk?=
 =?us-ascii?Q?Pug6vJ3Jja/glKPc+cH2f+UvzrVUdurnjgJX1/A06QGA58d0UOgHqsxVxCf0?=
 =?us-ascii?Q?vVP1hvqty2AzyV8AnoTlm0H+ss4qc5VIWtSLgulb+RiCPB3a30vrdgJekVcn?=
 =?us-ascii?Q?NNxseVydQXRSvqoWHjaBJ7/Bjs9y5KbOIOLB7xbIGPMj/TirSW1+ganQS8Tu?=
 =?us-ascii?Q?tc2ccTw1X1C+PKQM1eAN+M7emqGg5zoZW/ZTXvP/00uBgiZfWKvFJJ2UeXmX?=
 =?us-ascii?Q?oqz6zv0OgsJKe3mghFXnY7qAjkzRq4H2EhdNgWWa8DSpKZgfWgn+G3dwa2ar?=
 =?us-ascii?Q?2iBbmFd+zgTNBaryisa5kQjqBncwR8oEX1j5tfuFXBnX52iTX6zU9fX1uqVJ?=
 =?us-ascii?Q?b+HyDCidZ+kiARYRX4wDDFu/XpJhvUsvik3J1MjSZNJYcrbGjAwT86zkfu0s?=
 =?us-ascii?Q?drTYY0s2Yp3f7W01WkA=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB6964.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?oWJknuN0lAsUCbkgOBJ/WYvXl/EdR6aBTID3TGlknFq2nfpZmMLYnYk0CPcT?=
 =?us-ascii?Q?Ype12ckK1Ga7uDuS2XtYPetHsiRbRysAeFa5+nscHdgAf0XDJevOy8C46wdf?=
 =?us-ascii?Q?opQ+rpBTNM/6bNWI8DniL98DYvj516xHZWSHeffOdZO2n+MCSxbljvGVyCMS?=
 =?us-ascii?Q?NKVnKexOf4WWTMRRomi7SiT13Gg1JyAov5TNw3f0HnaAdra04plBKdTVEF9q?=
 =?us-ascii?Q?0hsdf+i67Gcwt1y3yjvOXaHK7e4qg+z1hts7UjI+b+Y/Xz/2dAWll4DSaGNi?=
 =?us-ascii?Q?XdTqzv4cFYK7uxQSVgxJg/7GpjjHvyFX2LQiyz2qWJVLXbvD7BRQlxerPBm5?=
 =?us-ascii?Q?DwdGvfGuGZvRHem6q1zUaU4poryRhl3bb1OuAPKtCLGvfzbxKrCKjSEEN1zL?=
 =?us-ascii?Q?FZ+6e/Wv4v8jz9AKPHEBzwXGqZVbI4Dk/ZuF9Eyx5vO1qHs3UG68VhuU5Bpe?=
 =?us-ascii?Q?GZMDHQ60MCFczfiZpRnA5D01Qiw5Ft05OHv4eh2ZxE3wGsvl22ZbYToOvwG6?=
 =?us-ascii?Q?dncfYaJ331NN6x5M6ATCDRU/49UE/q2U95CZeWiqsLIiKixpqEeuOhV7dQR0?=
 =?us-ascii?Q?MJJ6LtQdN4xqGUDk444XMMb+bmREQRyhsaYW3SKzLCuItlEriM4im+0nUNoH?=
 =?us-ascii?Q?l2fjOGoC6KZpmBliD8p2PZaBhREzqKgLMn5WvYS9bnrqh6X4RS54Dmm4wAjb?=
 =?us-ascii?Q?0HQnKCSQ0MYzYfNelaDZfrVMJo486RzvV5xus4Q6AJsF9R2z/fa+GtHofGiS?=
 =?us-ascii?Q?gXNZcu6LRqLvyatfY7sGa9WSax65oCKLxIDfEWHJJbVypnSYN3zNKYzANucm?=
 =?us-ascii?Q?29T5U8yUm496048ut+AsB+XDw8cAe1QiEAWooguTxFV/Ya03Aoola/ZuH3L6?=
 =?us-ascii?Q?DCq6aJKxZeRqZBdjMZFL5lz5++Xkt9V7cY7NLoq3a7KlXHgG9x6vqRSG4FOd?=
 =?us-ascii?Q?Z3YIvhMjHxHQKXfPJaMcECUMQpWN20X2d++dvqveybGytedU6KSw1RKDWFR8?=
 =?us-ascii?Q?KdADcKMhC0ierr7mPZ14YZIj/223DUpNgg1HoRW/qbjYpMbP3HdSpTG/NQ5/?=
 =?us-ascii?Q?Q2z3yRyfhuxtWuAVbeIcYR8g97Us3BsyOtfM+Q94vAljUUkH9mQ4Uya76Lfj?=
 =?us-ascii?Q?0rqZLmDsi+SaQ7GgyqR/FMgak5zerkEOJmuRjGmcf6bDv3fkdKtkais8TTI1?=
 =?us-ascii?Q?YX+uzVNk68Eqsm90SL5GsJ8ruv8qT2Yo62eWW/a9MmZsRnLx/wpWrNTiQ7od?=
 =?us-ascii?Q?HKiQWGXsRRNftXCsFG9jpv7qZiP5JJ8IGK0oO8DhUqzGvCCES+jbudqv5WnL?=
 =?us-ascii?Q?fAtTp6lDgRe5Q1fj52oriluZ3yMIwVPknnhwvb13rZC9hGZEjgY4P3hs97YH?=
 =?us-ascii?Q?hvBkQLWcNur7wUEI0J3lHZEEdUELuGStcRb89gFokDkidDUAvN2hVNei2Ie3?=
 =?us-ascii?Q?kMymO1dmdQoHDEW1C9WVk8LBZuax/Z/9K4nMRB8EFRHILC0nBfcdl19uJIkb?=
 =?us-ascii?Q?PeOxehEXR2V8KT5kR+2m7ATllc4PnlZhshMMaECt61kv0dWuKbOzUsp8ZQJW?=
 =?us-ascii?Q?21RKDUhzGP0ZtMbVGrd+3iDcN07cpnmqgkJwVyzbajQdNnIrUpc9qqnu2T8S?=
 =?us-ascii?Q?yp3AX16rgqTMyJBte3zgh583yvK0mR4aFTkqbVHN0ajdR3S4SRiVHS9b4PbO?=
 =?us-ascii?Q?skBLOxPF/lIFv9v0h4378r2hSoi+u/HDt9kQ0Y6+o6cGfpFp2dlmYw5Fl7Jm?=
 =?us-ascii?Q?u1Gqp/2YepccMOmMucN9jMQLPrK3cn0VLvSkR2D8P/9IRQbjNtK5t98wvNi1?=
X-MS-Exchange-AntiSpam-MessageData-1: aBhcfF8hWjy0Rg==
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7882c765-58ac-4df6-604b-08de5e040bff
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB6964.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 00:27:40.9230
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HMZTtG76KATS8JQE+AZUsDxHjNs91vfUi4mfO0VBTd1nS6Wqy/iTt2YmRSlJCdnhJ7BjmtbnkN199sy1UAU8AVh/hLjAFyrV53Rz6MLuVf+2QvXemF17WJjwHuH7pt3vZMgcVEYfMNZ7A2qOC5oHfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR03MB8184
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260163-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[altera.com:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[muhammad.nazim.amirul.nazle.asmade@altera.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,altera.com:email,altera.com:dkim,altera.com:mid]
X-Rspamd-Queue-Id: B92979BA53
X-Rspamd-Action: no action

From: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>

Disable all queues and disconnect before tx_disable in stmmac_xdp_release
to prevent a corner case where packet may be still queued at the same time
tx_disable is called resulting in kernel panic if some packet still has to
be processed.

Signed-off-by: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index da206b24aaed..7f5a6f30c231 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -6967,15 +6967,15 @@ void stmmac_xdp_release(struct net_device *dev)
 	struct stmmac_priv *priv = netdev_priv(dev);
 	u32 chan;
 
-	/* Ensure tx function is not running */
-	netif_tx_disable(dev);
-
 	/* Disable NAPI process */
 	stmmac_disable_all_queues(priv);
 
 	for (chan = 0; chan < priv->plat->tx_queues_to_use; chan++)
 		hrtimer_cancel(&priv->dma_conf.tx_queue[chan].txtimer);
 
+	/* Ensure tx function is not running */
+	netif_tx_disable(dev);
+
 	/* Free the IRQ lines */
 	stmmac_free_irq(dev, REQ_IRQ_ERR_ALL, 0);
 
-- 
2.43.7


