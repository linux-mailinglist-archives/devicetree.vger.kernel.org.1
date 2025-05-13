Return-Path: <devicetree+bounces-176607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BF748AB4CD7
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 09:35:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 138873B8BDB
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 07:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 067931E5B85;
	Tue, 13 May 2025 07:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="f2yxXo1j"
X-Original-To: devicetree@vger.kernel.org
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011067.outbound.protection.outlook.com [52.101.62.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477DB17A31D
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.62.67
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747121729; cv=fail; b=Ptxq7V2jfJI49C62fhKTYOnnjqVKriUGe9rHyWzlimboIAZAOIt+3wbWxUUbwGS7XF0czgfoVAQ+UICIAxrK/dPehw1rmuhIPUNusBoODibkHxHAtyaUYYFMx9H+G4INH49kk91sjquBh8ER589JZBSRuymPnyJu9SEydCYtb5w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747121729; c=relaxed/simple;
	bh=WD6A4t8LV7e5iZF4R3ixg3TCMlO/UE4dWgDDNRZXM8o=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=pTQ/oU7SVdAxTXKwiYc1Yj+R5Np+rSCHwt+hCAGKhAa2rFSnF6GXh8Y0sETgjuKUkK84ebwhvrYXzR1hOVWLh2GWADCSVe3tl8zW1CpzVq9NlcYkMwX7jzqZb53abZeNBBB14wCQdXqt3PaHiKx1nU8L5u2k9V1KBLIJQiLzw9Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=f2yxXo1j; arc=fail smtp.client-ip=52.101.62.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sB/zGeXpBncqKssn6sAHvJhvXS0IOu8XGALVrP68+inQOuNfZAeTjdkQVPoTX4l0GjcIFj9+bipgth1Aavo0UqocAwgYkKfbjrjnOd0RRYdpXOQC+QTLZ30YxBU8hke46x/Q92ZDAPW+mW6rDyt6ZGNnfl+meRYVzUJgM8VMtfpjLV+UrCaBsy7KXbUsNAtdJ+37nvOy29/4gwr+XE/JXeo06+c+AyoByWSNt/KTP5vCAHQloMJW+z8DyS8jyZWAamAWAqBYI44aIpmFL8PANbLf6wa6ddM31fZ6GJ2ZyZPyRQn1bcFbm7HSxE2PQSXOTxbGoocJLUVEA2JM/B/oEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n01H8mkMOM04ONlNL/b8wLKfdjEbx4xdq8Br6yjRel4=;
 b=GuwG38YySiYdMX8A04ell0KtOqTdOK+zS7kzcAFqhdrrtxo8esgt7zL//LR4LLhTL+EMf2SVuTcQ7qGk1p0zNwvxpgM66lvH0EkB7z0AJeRNFwZpbMsUqgZ/J+lRD5VHAooNkVT3fLsOthcEo44jxFgjLdbSsX57Sdq1mGTeayW9PsOS95i41Y1gylVSVuUXv0PjH2wGHayBNvGRX3SGvaOu7QChUsONcSM7Ss4MMa5SePFCqcJq+N2fCYUziRoEWnNdiR5JgOSzGNFx9/CeBN0gWu18E2OAUUpdd2QzACAh2R1CxOE0b4lcxcV3s3XhPGERgFpHjePkj1lJh6s+9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n01H8mkMOM04ONlNL/b8wLKfdjEbx4xdq8Br6yjRel4=;
 b=f2yxXo1j6ARnXY9Nshlk56m24eZXO3wF0hXw24VMUXhL4JUGBG6zm6iy+38dDNxPhd1FzHH+DdC2cWQXLctgNdaqNTTS2CULs8jvV2pmRTeIt0MG08ggRbOf7k6QVHTdKwbIVJqxrK5CkkJViCNwIEKWbqEfkfduX/0GwH2lU9VieRNdKXYwEELv86rQAZ3RKhRuIiVxB74weGknkxlHSZY30Ix5WrR3MNBQBN9uWaiGsk4pFt/WYYD3lbTJFHiipdQ9rqOSANgNjVGnPghxmu2IBK8VoAxY4oRWR241fju/6HFMZoAg1MZ6mRXXvOdXWRWf0kcyKWM11FEgCp0pqQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from DM8PR03MB6230.namprd03.prod.outlook.com (2603:10b6:8:3c::13) by
 IA3PR03MB7595.namprd03.prod.outlook.com (2603:10b6:208:505::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.27; Tue, 13 May
 2025 07:35:25 +0000
Received: from DM8PR03MB6230.namprd03.prod.outlook.com
 ([fe80::c297:4c45:23cb:7f71]) by DM8PR03MB6230.namprd03.prod.outlook.com
 ([fe80::c297:4c45:23cb:7f71%7]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 07:35:25 +0000
From: adrianhoyin.ng@altera.com
To: dinguyen@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Cc: adrianhoyin.ng@altera.com
Subject: [PATCH 0/2] Add SMMU-V3-PMCG and L2/L3 cache nodes in Agilex5 DTSI
Date: Tue, 13 May 2025 00:35:19 -0700
Message-Id: <cover.1747098806.git.adrianhoyin.ng@altera.com>
X-Mailer: git-send-email 2.35.3
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR06CA0044.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::21) To DM8PR03MB6230.namprd03.prod.outlook.com
 (2603:10b6:8:3c::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR03MB6230:EE_|IA3PR03MB7595:EE_
X-MS-Office365-Filtering-Correlation-Id: 91086542-2984-4361-ac5d-08dd91f0b9d1
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Ikn+qX7nsgbXSaBSnbd+cGY3RZ358cx/H63uRTeW9cGIJzT7RuMZUWbdwCzg?=
 =?us-ascii?Q?BQN5A6QwwovgfX4G6goqBLguIUibJVH97N5uB0E5slWcI9YUz/Oa13njvh1f?=
 =?us-ascii?Q?5TupBXkEeFtUd1c5m2V0NY6/PcCo+RmG0OwzDABAh1MIGBsJzjDHJMX9lJtO?=
 =?us-ascii?Q?4Q3V+eqegcKN4xBw3yTXDcLGZ3iee4paTp7KL3s6mWG97aPhq5rrhpX1Lf/G?=
 =?us-ascii?Q?OGNedIfM44NqEVPci96CJz+r2NctktKV956hZvHTruzt4CAeu0lTVxc9ZePN?=
 =?us-ascii?Q?FZ+AmyM3Ng1SCWqSyuLg1ZuOOWGL3/lrIjoGOkpD98pEt4iV26BrSg/6clm/?=
 =?us-ascii?Q?C670EgDiNOSAsPzvDy5OFY+IWT4a6uVzVpE3PNL6Ti3wzr7gWdD1O1wCjYhE?=
 =?us-ascii?Q?es6pzHEs5RpkDcGnozN9cfjL5ailoNvGmXg0+fbVIz171nQJ0yoTTcdWnmvT?=
 =?us-ascii?Q?eeE0uqhSQJTBfshQ9DCyvLvmT6j2GhvjOknnbGECam3mxkuB0BX1mo3txREU?=
 =?us-ascii?Q?UyjBSkv5q6HXviUquOuSO+NlUc3K5q0y09IOHC9PHZCdo/t2ufwh9qdEvu8o?=
 =?us-ascii?Q?7jgCab7cTs51fcARZQE2rhfGCZV9fvDl+h7BdG4VU5LfX3LsFQXMR6KGBNis?=
 =?us-ascii?Q?FVUdZKR1XZMoQTa1s9BjuZWFW0m5m4qBbdqXQCYIVw1Vm8wDpxlQsE3v9JhE?=
 =?us-ascii?Q?itfjSSiT+2rsQtmotPtYPJhsKUItBGxR8Y88BkaevmziZ/YUxg5PIIRxz0ix?=
 =?us-ascii?Q?0u20YxXXS07+s96KG+riHd02cLfPxJ96ymWN/sGJi5dzrH4djd5Cmn4V8JR9?=
 =?us-ascii?Q?uGOrlbekVifGTnTVRnNJ+Sf6KSTOICCqclxBYUfc2u+uB1ltKZRMFiLGLTWp?=
 =?us-ascii?Q?xiOCObr1vg6E6HL/Tw3TQVXDmKEPNBTijFGjj0mLCIDWcTHpwdFOi+fjbOxL?=
 =?us-ascii?Q?k8tTfCA8tcRM5XrYP03ksj+S1a0mnztpDHpU58Mgz47YHWjbsasWT+ZOOqEt?=
 =?us-ascii?Q?e6AI/h1wtzaj1OchbqDxI8A7Q7j/iPKvL+4MArVLfVVKPr/ptXjP9OwPhXPn?=
 =?us-ascii?Q?ZpWhuJzCEyepk64sWUwRxsylyiMkgI649PyFbrWAh1SZu3kiopKVGj0XiCPx?=
 =?us-ascii?Q?AFxgmtJ9FCkKhxbVdwcaAr/EgplEjpUJc0Ez9DS8XoGO5bqULn2F7UQ2MJqe?=
 =?us-ascii?Q?IInhsdYtUl+kYGmsQczVfu8/GKWsaDK2us//m3bt/7R//G2reLtJXGSA94Hj?=
 =?us-ascii?Q?/DeVCzS0Y8z+K5egE12VTYH+VNrdETGcVXoIWIteZNGnBJniKiNHCD2o0Mtc?=
 =?us-ascii?Q?dMdraPC86UrO2RWP2uxoc8Y8moVpvFkAZADCzyI3KmNfH5Cc2/TBXHK1natP?=
 =?us-ascii?Q?/jI79lH2tEsb2sSCvEA51lmvsJ1GVaUaUV15TY9CkrkxoNdtlfN6l8TEt/P1?=
 =?us-ascii?Q?SNOIslrK4MQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR03MB6230.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?MwOwWZ/2qQGfwqUHbT5IYn19tn/87gK9Gpi9AoCata0tSG9XShrFncHiQvda?=
 =?us-ascii?Q?ykPyf+okiMIU5/lrFpEaHScmteQIYZLbhnv+Oer30qbMXNR6UDXZc8ucfwxB?=
 =?us-ascii?Q?0mWawkbTSPe/Dz0sDJK82sEnswOhOBNOc1eA14JJQGgKGhxHhoiTgTN33RfF?=
 =?us-ascii?Q?4w2kJiztnUzFU9lD6sEY1q4xQxyn6JGkiNJiSDKwWT50QvHd/+BakoooEH7s?=
 =?us-ascii?Q?v/JZrP5iqUishGE4zfEyWEXStm700vQTZv7BsS7Qzs7NagNpLhFpvvvQPL/2?=
 =?us-ascii?Q?P8k6g2ywSs9v8upBFzT2dBwJ94K/hgI4yStJeJvD/rprJKzfwN7yhNThJ2D2?=
 =?us-ascii?Q?KdSwwhzhgQKPXrtq8er8Da5uyYKWmrfBbAOfjA5NsIr6Wyta55YixHWP/SVw?=
 =?us-ascii?Q?YM1dMLRSJypmEHwkd/aeXc0xsMjtz1avBmZwPcvYZzmapCflbtXIIqCOib7J?=
 =?us-ascii?Q?+4QFOzlQ0GxcB4FxwDVu5YrJsYYFEfHdCiDse9bm9ThreiMWByWwx+W/O4O9?=
 =?us-ascii?Q?K03ItVWsNDFaxzFTGcnQMqCCFyw+ZxxZm8qTvLuE2KaX0AkV4dgkzDLU3fpx?=
 =?us-ascii?Q?b6pNbXzRua1kgz2DzDxUnfA5ha3kFmKtPpoMAfxXSnrXWC9lJfQN7D2NMV/j?=
 =?us-ascii?Q?y/vAZQ+40JRyY4vuRfFx8wf7Il+a5PCUpXCqAZXC/dsLf5GVL9Uq3qYMRHP/?=
 =?us-ascii?Q?c4ytb1dD4YwetwWehSp01DvB5Xh33kPK8aqHJIK89Z4ut3FLfehWWBINzHAy?=
 =?us-ascii?Q?rN/+LKwk0XYS0FSE2z18mz/fHmvSTJEQp9fk7VR5gkhQeXMLPQyfpiNNM+/I?=
 =?us-ascii?Q?aXLlA/BU94PVGcuomNMN6yGFDnyamwJhhRDouCuaWUJfxRqwqSInLpkD5efb?=
 =?us-ascii?Q?HGFTj5FqP3YLuFZBGduMuMjXpZZRhT/qACud1Rqjd3gcwce5fxerea74wML1?=
 =?us-ascii?Q?idudvQQ/XFAObU/ZFwrp3i+U9Yd7HxHLl8JW3rmyLW/V2H+zICe/kNJDPflI?=
 =?us-ascii?Q?slvsqexJ2BpCNDJGsTosejkPGSmi3QwokfazaUKIgbTBej5nPve+Rd/eqrnT?=
 =?us-ascii?Q?NTlNAfkdhOOvI1lSRZu+7tGQ3cj5Z9LhZbBXkv/r46l/ZeT8T+YxOo0UTKsW?=
 =?us-ascii?Q?n1YWvhHehPhAS9dJToEJnrSdLsmxa5yUYaUkPzdlcFuCN/+MbhyZLj1DqTnS?=
 =?us-ascii?Q?Bco61Vod3C4fCTKYPJHTlcPB9dH+vBQ9dHUzrzR4vkmVzTvxicOeY6zwtpuz?=
 =?us-ascii?Q?k2I+DYCGFquMTQTvpYOWEsdilOWUtDG7tDllVn3BQlCj2Jm2/4bLpA2jGzcx?=
 =?us-ascii?Q?1WAai8UY/NJ2fdlpmA6A9BEHLSxsTSJ/hIbKo2m/6bsmmZ6FdiRIiixdaYeB?=
 =?us-ascii?Q?M/frWM2wECW+7GZNuWnn4z6rT/2W9iOjwXm6jPGYeaAtQT0qy7dA/Yv+kVh7?=
 =?us-ascii?Q?N13uFHzJ0qjAqDodpqmhUiLIxLfJaMup2hh+xruz9r0/UgQypBCic1f1jtWa?=
 =?us-ascii?Q?/V1FGHOf5CDFZkiRbbtii3vvfEseKYImfzIEzc7HY8GGUwpkX8ofDxbVWI5Q?=
 =?us-ascii?Q?5FoMCjkF2MYFWUtJYEA9iUzrZ9whLjcCA9L6pEZy6hpOO+MIxZkdSUf/pvz5?=
 =?us-ascii?Q?cA=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91086542-2984-4361-ac5d-08dd91f0b9d1
X-MS-Exchange-CrossTenant-AuthSource: DM8PR03MB6230.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 07:35:25.3883
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Qx5xxcl0+4WwvdIrfn+OQGtMHFwfbF3eOkicGJVH8nSGe234Fks34Qd8OPYEb7bMaWazcsmGC+nia6DBzFWaERCOAvYX/CsaTF8erXmk9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR03MB7595

From: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>

This patchset include the following changes:
-Add SMMU-V3-PMCG node for Agilex5
-Add L2 and L3 cache node for Agilex5

Adrian Ng Ho Yin (2):
  arm64: dts: socfpga: agilex5: Add SMMU-V3-PMCG nodes
  arm64: dts: socfpga: agilex5: Add L2 and L3 cache

 .../arm64/boot/dts/intel/socfpga_agilex5.dtsi | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)

-- 
2.49.GIT


