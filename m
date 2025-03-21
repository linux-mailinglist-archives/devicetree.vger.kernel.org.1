Return-Path: <devicetree+bounces-159605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C62A6B8B5
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 11:24:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 900D94813E4
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 10:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E33A2210192;
	Fri, 21 Mar 2025 10:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=prevas.dk header.i=@prevas.dk header.b="G1nD1xA7"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11011066.outbound.protection.outlook.com [52.101.65.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40DA200B0
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742552668; cv=fail; b=fub5bssBZUYyaZbpg9o1TL+biWOV+eivItY9mjvJUCfqxYDXAdWSjXFfgqbJNn4m2ck7e2g2quRZmEwno33sj9HPkZu9RhVPTKme+nV9QUEHugt6NiffUQLi1d/oz5HaRKITIRMrBBLzomNagAHgUxn5YCQWNHiKT1hNSiQCaRI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742552668; c=relaxed/simple;
	bh=2LLcin1jziRYM5+URhivyXj3xQt2726GsdfgmjlbTZA=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=eL5kFWmHIdYNQ2S9rRMpTTSjgMUN1WHw7VXF9rRv8UgZDBvdyOMkISisJ4FFju9V7Zk/sgoTck9rVV8ikbrFgTW56cP/JD9rpqAsMpG3JIDQI/SmlMpUr9cPVZPRskc0QA/kAm/Ks6I7wbuL3tzAuPU7jupxiNdGLwWqO0nsRok=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=prevas.dk; spf=pass smtp.mailfrom=prevas.dk; dkim=pass (1024-bit key) header.d=prevas.dk header.i=@prevas.dk header.b=G1nD1xA7; arc=fail smtp.client-ip=52.101.65.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=prevas.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=prevas.dk
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ms5YCOObiCoGZVVfLOGfHKTmffx8j+1BevaV4GQ8imBU6ivz7hQbB9DJE0Mu2rwH9vU4JT+R/8lfo4dUQ3/hpyvzfVx+nhT8lieDS3QmY8hS5tNiXc+MMoquHUnOf50uOTA1k4hMXD7LwJK+faZzGFDXO/h3DUtIzI3ALcUOKiMqlF3adX3IRCmj/BHzf2EJzEaSAnmsV6IDjZyTLwUu5BR2TknTVGqxm6JDkbdRZTYrtlIaZBKzuHwUKZ3cdegHpXdhSO8Ij+x9uhsVFHf6ttGF2/GMJslGlOzhBjfvdUR3MUS6V+eEEMZ2h43dr7qjN+7T9GYVZWMtbTO8VKXxQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pMRqUpmsj2mp7dGFTv3+GQwZ66qDfvtfWGq0g7DSjM0=;
 b=LoiDW9xiIKOJpzzYG6lVLIckK4WjYURF2wyQiRIUTz7EuFpsEt13750MfFxNjrwnOfFCWzP2QhYqjIke2UFBBinn3OsnSNwFrdl2Wc1q7CuJIpXRVKmwdLwkuuUB//KzXqfa6P7jxJg1J6ahu1V22oMAwoLekKF1v/W3lPWvuO+VmaEGfNqAGVnIZglUoYvvX/QM0HTikKApQxkZoLyErUErjnkE6JYPIqeHaZxg/pfUuVEHvdLNGrUxP9QbSfb3OyUiQa/wQnwoynfbQzOeUgeb5A07y3QBkDJLk+BDD6kB6rha9WkqgLX2mjY7VS2zioTJApWtOP+2PikY5ztcIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pMRqUpmsj2mp7dGFTv3+GQwZ66qDfvtfWGq0g7DSjM0=;
 b=G1nD1xA7tHX2GMWeLgFbJrPiCDWhDvhL9RjaJw6LzOUca+rqnULCIL3khKiQLyP/coXoAO1BIARBi8NT3087SWMGk7Ry2SK7iBN/ikwrC+52fDSt7i+RTwGQf+mLwU/qWRPjNriZADhze8PNrTdLGVAK9f7H2a675mwGc759r0I=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=prevas.dk;
Received: from DB7PR10MB2475.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:41::17)
 by AS1PR10MB5625.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:478::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Fri, 21 Mar
 2025 10:24:18 +0000
Received: from DB7PR10MB2475.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7e2c:5309:f792:ded4]) by DB7PR10MB2475.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7e2c:5309:f792:ded4%5]) with mapi id 15.20.8534.036; Fri, 21 Mar 2025
 10:24:18 +0000
From: Rasmus Villemoes <ravi@prevas.dk>
To: devicetree@vger.kernel.org
Subject: question on format of unit addresses
Date: Fri, 21 Mar 2025 11:24:11 +0100
Message-ID: <87v7s2el6c.fsf@prevas.dk>
User-Agent: Gnus/5.13 (Gnus v5.13)
Content-Type: text/plain
X-ClientProxiedBy: MM0P280CA0092.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:190:9::22) To DB7PR10MB2475.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:41::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR10MB2475:EE_|AS1PR10MB5625:EE_
X-MS-Office365-Filtering-Correlation-Id: 4579ac77-2a21-4339-840a-08dd686289b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|52116014|1800799024|366016|376014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?CcBPGHztLEdiQ1AdfAppPNFmyIxB+Exi4G0c6SDIF8laOgs5wzYpfhY7ODiH?=
 =?us-ascii?Q?X/TgUIr+7bGH7cq77nHRnIad2C846QgGkY5jZkWrxJVHTK9psyOYMIJLMv34?=
 =?us-ascii?Q?CNBwo9LjR8BR/bJTvWOi0KgFNV5kRj6VL/mJZhuJ4u+/X2XqWWkx5OUjzR7a?=
 =?us-ascii?Q?6PqaXpJfPNjBIULpmTLu4XQxYBXop57cXcfDOrhQm2XFd2d0o1qQUfXK2slf?=
 =?us-ascii?Q?rraGRVrNdFVzLSltabuLJr9kdxAyEFuyWJA83tWSSfgkmiVJVOeHxBYLf6Tp?=
 =?us-ascii?Q?Ny0dGONfby92gnYvU+Vs0sEgpumxNK4DtXciUgZLpKCE6aiixg03B346zoC0?=
 =?us-ascii?Q?riipiuU8UkjNMq8VvZyoFrv+0Bb1ylM9VTu4vezZYiYMyr4odYTmgO9sUQ0l?=
 =?us-ascii?Q?bH+RhNbY/cM9otUrk2wh3CIFeIn8oLQGQ5YqAT1jVZgWjdcuX+F2+huKwvJr?=
 =?us-ascii?Q?mVmfY2B5X1AjIJQmsb4YGXROp6lf9359srbYUtKUx2KiA4bYGdCgKu51iUod?=
 =?us-ascii?Q?ohW/G1V0RaqB9Jsp5Z9XsznXwQ3sWqUli7GAO/rdGpRdgmYyr8+jOCFSYAHU?=
 =?us-ascii?Q?Va4aBTy36Yec/u6Iubs7JFywP+EN2dhOd/XEvo7RqCej5IR3sNX0ml9aIc3Q?=
 =?us-ascii?Q?EM7Ue+X/TJgkDXwJkoZzI/gcMkWs+Io5r1xZ/42o0wygb83cjy0fm2E0uqni?=
 =?us-ascii?Q?zUJgF5LzDVzVIW8oE41VTrqI7Q9kuQzioyQxSRmyvk8URosip6dDjUDznaAC?=
 =?us-ascii?Q?8PKj1ZA3qPpO1k9x5rQbJMZ2e+WVi94up8ti9WhrVKukt0pgf5H1Jgf+Ta0C?=
 =?us-ascii?Q?z75E5H2YN1jxLZxYhG2ApsXz3DIG33XsBTKqlqX7X2N71jppPcylQ6UkHM1U?=
 =?us-ascii?Q?F7kHu0DkWv581V8VoJ1CKae/1Jd88+Nxt/Lf3PT+BqI5pc/BIc0IyhEaWVu6?=
 =?us-ascii?Q?ip+CYOUyA0BxifguycX/Nw4W44x8iPITVasLXxNCL+S42GxsIZoV3fYae5yA?=
 =?us-ascii?Q?NrVjZS4+rIN9BzCSCFWwiareyd8sda26CxYRNTG/86Oy4kZn62VQRMXaVzSD?=
 =?us-ascii?Q?wMCe6hmeyCGAlhTzvo5l1/njpExtd5GaGATmx7mKamyZGbEU2qzqOyKi7zaw?=
 =?us-ascii?Q?B1zbJij5cMTbsjPoUEKRYGoxFnd8GHzjTv6E4RHZH7B/oDlgFxv1tVV4fZqj?=
 =?us-ascii?Q?oc7nzW9U0eOUBQlYStp+6nlCkZH4Du4W8F41kibO1rLGl3qXcFyHqjBxWLJf?=
 =?us-ascii?Q?Tnmx7TDzOtuJKKux2Rxc/E3Q5UX14Xh5G+y6k79k1KSPyiTuQNPGrCn8rNej?=
 =?us-ascii?Q?jTye677BlUXy4AhTmWPe2QEk5AQLnycXfPRaJgvzxA3tArJzhNL14D8lL9PP?=
 =?us-ascii?Q?4wQksBFHDe6ptsDLpLtSVmXYze27bmlKa1ZVWHlmbAudk3UBEg=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR10MB2475.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(52116014)(1800799024)(366016)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?rEEu3Kak5gewPT74BNYLgBr5xDZdqi05ZYwQemioBTO4FxDi38kJ2gR8zdS/?=
 =?us-ascii?Q?O3BcsrSm7bkfYny4XRxS0ZFuB6x4+cVCDlZCPCfe/8CzrvLNj56GMw0rycrM?=
 =?us-ascii?Q?+RfAgBmDB1qk3QsN7GEeiB9fP22oO7iwW17ckFsffkyT7ZB30L1EIXL8ctyI?=
 =?us-ascii?Q?UwH00O/WWdrvXRJEiZWUUfYLhDF74SUOemlEIrjVeRH738YetBFCUf3NwVnR?=
 =?us-ascii?Q?OTt+UcPWBLI82iysYGammF3/K0WUj2KnnHWGeEFdxr262xsBwH2gLq1/+QE9?=
 =?us-ascii?Q?kSePazYxlEzNEyvl/NxeEtOglt+6BwFcyMO9DxQdwB1nAKZEknPlcJraRWXE?=
 =?us-ascii?Q?UXdNLJy1B6nAOEawDbtDLEoSKXbxlSj8fYDuSU1Li8an1KRzOFlHjJIY8bru?=
 =?us-ascii?Q?j0O0UIhKeWdSLwFNsRSwh86RJWqHLAdkz60tfXdCA1zHe8NRcCDUVAKwlf9G?=
 =?us-ascii?Q?MXMHCc7yW8OQHRoJ+a9r0UDcj8RNv3pDTABfq7ILuvA/tCAbZdBXRO4tEOL9?=
 =?us-ascii?Q?rVkznmHzPjdQrtQLtwHvqXuqBmifTEtRKRZRAPgYf1eExuyvNghKNWGlq/3X?=
 =?us-ascii?Q?ae8w2GNuH2lzo2vKvM3fVJM3SvCwk4/fkbc9A0PQzRULIXYSIkdt2M8Ld/43?=
 =?us-ascii?Q?Cqd6I1OyFOO8NVLvKl3fCxWn+SQcZJqsXGDbk10sm3WxgaPN8jnLTl5KPBwR?=
 =?us-ascii?Q?qh/AZBpWhKhRggq3vd/XWM8LUimz7NgJjuFz189u901JASGdNyJ6pHskoZiI?=
 =?us-ascii?Q?ryNZJJwXL8/2YVzI+1kDYwFV+YKpOnmu+cVXFsfvIdKvOb51YVAdgkBHBIvt?=
 =?us-ascii?Q?1SpZu/fcGv7GsRWt+Flx7RrgR1ZrS+4Yj7TIpjXdihSDI+yPzZ8zNEHWTLk0?=
 =?us-ascii?Q?ubFVERZgGAKeBRaIYhbTX9PmWgLrr8b9oQLa4QX3YtIX90VfTFglA1PkRaWz?=
 =?us-ascii?Q?2Lc7XNdQtJ8G0jUmoTPEAhFHpdBa+5OfX2d4FX1qIgNIRuTBgi3DRHnAEKtO?=
 =?us-ascii?Q?Rpcb2H1rH3SG98AukytXGxGkQYL5SZhPbx5wv2OG1/g+eGxlg64CqJ5Y3BmF?=
 =?us-ascii?Q?5zi4947TabEjdPbN2l4r0yui2An7K1bMJnViTwaQOUd/Li3Zs4LhCD9MtDV1?=
 =?us-ascii?Q?swGT+44RYNxv5UyyiMRktmfaQgj3QY9S6f2eA2tnkkflZwZWh+LdJDV85R3e?=
 =?us-ascii?Q?3UJYELY3xQoJnwzdHoIiZJCjcDnY0UjmnFbCtWTMFXbYGAyN09HYg5m3NTSs?=
 =?us-ascii?Q?66HMRrmRe/73stBrz69R1nvbdC0tGMpANTLMzv8uSb7BtoY9n9S2E+SKXWAk?=
 =?us-ascii?Q?3jGRRTT8o9ajrzPriXZswYV/xlw9xVjFn7tTS14c40S4SDNMyS3zmCnRj5qd?=
 =?us-ascii?Q?vBaylda+4Mhgq8GjwPgHaiTtJsevsnLT46+kTZajdb679ooZgJOSBhnqker7?=
 =?us-ascii?Q?whZKMO1F0FXleBv+ENvE1K7WtkaJ7chfCqSV/Q0W+lWEPYS63vlHsGR4Ko7L?=
 =?us-ascii?Q?b6a26++Hk/8jLntOt0tyFNIKxPkSFh4tD7sHTqHNsf8jCcMXZUYiWdiQ/05j?=
 =?us-ascii?Q?8s5AZ7ZcYK06TWPwzo7K9qYFnw65oPwYjgDBaCQ1a6kfm73v/WFqf9qQIevR?=
 =?us-ascii?Q?JA=3D=3D?=
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 4579ac77-2a21-4339-840a-08dd686289b0
X-MS-Exchange-CrossTenant-AuthSource: DB7PR10MB2475.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2025 10:24:18.4021
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kLP9oLVvalPxK9pZW6ysuV/rghf0A5mgV6rsJ0xMQxm4MSjYbETiYNWFHGJsyzBTpftFqk8e4aMwcX4WjoBG8ivncUJcMlQqNe+9h9q2zAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR10MB5625

Hi

I have a 11-port ethernet switch, with ports numbered 0-10, and the
cpu-facing port being port 10. I was under the impression that unit
addresses were supposed to be in hex (but with no 0x prefix), so I wrote

	port@a {
		reg = <10>;
		label = "cpu";
                ...

But the schema check fails, because dsa.yaml specifies

        patternProperties:
          "^(ethernet-)?port@[0-9]+$":
            description: Ethernet switch ports

So I can fix that by naming the node port@10, but then I thought I'd get
another complaint that 16 != 10. I don't; the only check I can see in
dtc about node address v reg is a check that if there's a node address
there should also be a reg (or ranges) and vice versa, but there doesn't
seem to be anything that compares the numerical values in either dtc or
dt-validate.

I haven't been able to find documentation on how exactly the node
address is interpreted (if at all, other than as a suffix to distinguish
it from other nodes at the same level). The closest is
https://devicetree-specification.readthedocs.io/en/stable/devicetree-basics.html#node-names
which says

   The unit-address component of the name is specific to the bus type on
   which the node sits. It consists of one or more ASCII characters from
   the set of characters in Table 2.1. The unit-address must match the
   first address specified in the reg property of the node.

but "match" is not really defined.

Can someone clarify what the rules actually are? Something like

- stick to all node addresses being either hex or decimal

- when the binding only allows decimal digits, use that

- in cases where the reg property is most naturally specified in decimal
  (such as smallish-but-maybe-larger-than-9 indexes such as for ethernet
  ports or SPI chip selects), use decimal in both the reg and node
  address

?

Rasmus

