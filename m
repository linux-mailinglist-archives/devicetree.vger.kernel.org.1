Return-Path: <devicetree+bounces-99772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9078D96B2B4
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 09:21:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 470CF283982
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 07:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2225F13B290;
	Wed,  4 Sep 2024 07:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="UmLQ69yB"
X-Original-To: devicetree@vger.kernel.org
Received: from TY3P286CU002.outbound.protection.outlook.com (mail-japaneastazon11010007.outbound.protection.outlook.com [52.101.229.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2184A3E
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 07:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.229.7
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725434481; cv=fail; b=Rign6EubEMRNJGj2mSfeOuBrbJNuHJcYv31X4CwgOhINLN74TvS45jtuAkNdVejGmr70IFTlke0XcwBl9WvuUps7s4SJw30uJnr8K27YThBevxgRdEy0wjO4BnLcDyewoZxJ9ofzGDAlBJTECy1mnPYIUOZ8Qvq7hXtFpt2imQc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725434481; c=relaxed/simple;
	bh=UenIRZkBqK0lQy1tkdGT4Y/I+zltEq11ibhrlSZWPLE=;
	h=Message-ID:To:Cc:From:Subject:Content-Type:Date:MIME-Version; b=rhzalZ6Lnb2ynJ3WzU0MHhlIdCw2Hg5B0Q+iCy3OEj83T4Oq1N93/estkghUMPKXkXyTnqUReBimUudT/Ot+vmLUSTaLgC5M4H15zkTnDWcDOsdxebvE6B7i8bEsjATzZ4h1RPy0vkKJsfgJej+GD4xfzBFxQTmq0vgAh82O4pA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=UmLQ69yB; arc=fail smtp.client-ip=52.101.229.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oGxHSJcUDjFB7nTdgiJqkAt2Rbj8/19B+ai8VjhvgQ/YQ/2JavjFmuuqyVhbOVNAJlpp0krK+rxykqCAvFx9jB59jT7Xjm8RdW84lVFM1XLr2RJfZeSc6mdwqokeHn5Mgqiry+OkxX6HsUtArbbeBnc8aTM/GTeOecuij8UURszyexmG/TUYFGEO88tFwC096/Rq8a+SjF5vgoP64pWdwsCadGD90RDfOaUogsVussYoZemlP7UvNAbXCD01610aITNz+W4L3FmwZ6xldNr1uiKGLbJMK/KhVs0rqpuY/z9qrAjBvwMGrgFhz7nleU5k3KKlOvwpKAOKWnDGkn5y3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TQU6DQA1QNuVnE/WMxBnVBFMLP+YZCzuhFYJ7m6IH7o=;
 b=kqW+2xXignBnGkGqmbgDCQhm5S2s3EI1N55dNIbGcF5Osu50wCfLygz/Q0qk9anu6YnaA5X305TszZC5Duc5PAkUxh6Y03bdRvtUEmC/W3Zdl+C3/ULlgAWiu+Ivl2/hFuYhnjyzL655ETX9TCtOWyx4ZWLABfc2w5U/oqt+1sizchTMpgA3GnNTyudpqMVc2cCgLXv4o0VZtU8MCPo2/AwFhsAlgRCIyPZhRtw7q+zj8aAR8LYvUPbD2X2AVVxSjolI/+k8v0+pnNj/hNNdkZKNUVN+ZDA0IptA9uBy0rqn0p7kuycKUOKHaO66MQa5ZtuPvlDYAPBTHHrzwerhjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TQU6DQA1QNuVnE/WMxBnVBFMLP+YZCzuhFYJ7m6IH7o=;
 b=UmLQ69yBjlg++TqXEnkhu9ey7y5kYe5g1sjUXq9Z6D69OUr4EkgUM5lkjkak5Rm8ZZpNuCex5tIznVpOINjdBHfRf34r78KMNmQdH7bEhoNWdHuCgMOAot5OMpOYvYxPpxTPkJrDN/ZURGBszNV9p3n3V6sh9iNGgHtTfLN6EBs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYVPR01MB11130.jpnprd01.prod.outlook.com
 (2603:1096:400:36c::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 07:21:14 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%5]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 07:21:14 +0000
Message-ID: <87cylj7ul2.wl-kuninori.morimoto.gx@renesas.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH] ASoC: dt-bindings: renesas,rsnd: add post-init-providers property
User-Agent: Wanderlust/2.15.9 Emacs/29.3 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Wed, 4 Sep 2024 07:21:14 +0000
X-ClientProxiedBy: TYCP286CA0274.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c9::10) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYVPR01MB11130:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cdb13b4-ed06-4662-e9b1-08dcccb228e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?TiEIpYovF7qEiMme1dFHzOLWleI267Ck7jrP1ejYdUXjThVCuQLRYPEEdyUM?=
 =?us-ascii?Q?++qKtJnKwQOrUV3lMejVwp05Nbwuubhr34WUh08YnG6NJlCBAe5v+XqlRxIr?=
 =?us-ascii?Q?vxze5KIbjn11P7Z7TTOVvmls6akXAdGtfDboOvSoKMTDn+XtBjKPu1sd50ZN?=
 =?us-ascii?Q?boHJRalqOjRZKCeFvlx6zoQeAUa6Kq36EohbaiRFAoPoPct77AnHe6pto9Mh?=
 =?us-ascii?Q?xEnPqDo6+7qcvTpRIaRo8QU6g1Pg4VpNBCN2Eior2b8GTxJFXhTkILNikn0w?=
 =?us-ascii?Q?leQxfXqvf43oINdRDALK6Thjeeeu3LD8eQPyezz7/f1nAb7JXa0UDg9BAQQC?=
 =?us-ascii?Q?c9HLKQPSJr1B6W9LJ+nhxv8hReydXCc/sLNYTYGYrrp0bLfvvYFvh6DhoqsU?=
 =?us-ascii?Q?LulQXqtDt2SyiqOr2BalMpSR50soOaGqIyTy44Bc614aGmc1WzOQBv2RiTPL?=
 =?us-ascii?Q?p1ya1NfdiUHG1TouuL/yH35jJkA0VXW3/fkEmKrCKfI6rIA/DTCWM9XL0LU8?=
 =?us-ascii?Q?IozzZKJCOEmic8citdQe/2UTl+Yh8xjV6xlCLzvXapEJGvEJx+35kBV8VA3H?=
 =?us-ascii?Q?6hx6Z0RG/TujJ6Oul9IlEdVkl6dn+Ctdr1I8WsQL0iej/ad8ZvTcY2Sy7y49?=
 =?us-ascii?Q?Hk34G18X6FKYbD8I2cX3FiX9BmdyrdjowYRCAJQdSnZoKtru8NTD/BSO0FTd?=
 =?us-ascii?Q?ePVmz6s4IwlovtWkPvrhI4blokPLkr97TKicIktpbC7o3zcsL4dzRY+Km2v1?=
 =?us-ascii?Q?vdmph8IhJ47L/2TouZs9ngep8jUtNxAMkbz/npUXpKjvihZajoHRkklYpoYo?=
 =?us-ascii?Q?paQcbn8khAZwjtPrBcqHoAUi1owroF28HDmTWoTHyi5QP9AP9A3krO0L2gKJ?=
 =?us-ascii?Q?l4PE06bBFoySrwFXRWOoX1ARh0jL6tPZa9qDFzG0cNp2xavFK/ahoXm7dxOP?=
 =?us-ascii?Q?foIniapL1cIALhTjomYvtnpJ6HGTbmjvMm8BcJtBDTUWw83bOBTdzihfjYu5?=
 =?us-ascii?Q?JGdK4LdJKjV45cASK4ueZfJZF2TaurOtm17RlOsUty149rc65Xa7deecHPvy?=
 =?us-ascii?Q?papZ8ciwgkH7AwJbuaaqlpH9fwtpURcxA6EwlvKgWt/lUTsfvSNt38Wvkc0c?=
 =?us-ascii?Q?yGCgIadMNYjmQ1BN7nwOcRYR9sIBf9z3/ByL2vDSLwd7lQW8KhuY370t04UL?=
 =?us-ascii?Q?8v3WcOcWxdlWyFswACADuZnGWvRj9pwvA/KgCiZDW3JcVmHu810bHhyUn6SU?=
 =?us-ascii?Q?ZmQEMIvhZwoF7vK+wMHeUZKWjiULWKJw1Iz448OBGyk2PlHMW2qYdoaYX2+N?=
 =?us-ascii?Q?2T+LsJoh3JfpyujP5dhCeg2BTyMsF8U6yTWtW6OKi+tXt1lwKX9iNWivM7IC?=
 =?us-ascii?Q?nc71Ufuvfs0lbxLYQ/FVF9Up8Co9SMnskJO1yLrKS0CmoSyQuQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(52116014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?pkjbG9un29xai1oZRolbaVBaH6d1AsVACqA0fNuvu32XrIBMYwfrs0OqrSJk?=
 =?us-ascii?Q?BfYPr67Br3p21+NCeycUC3IJ+7hkG5SOrGSR1psVU5d9TD4iOdsF8vf+ZgjF?=
 =?us-ascii?Q?CebHNptHksw33rHquO2yBHcfB1KXeO6iLCBIkz7VbT3AqmHiJsVfg1hop60s?=
 =?us-ascii?Q?Q/zHxbLFlheE5uvgcXedaf50ZBIJG+1RFgc8wUMD4xACDhuAz7ic1twDxsCs?=
 =?us-ascii?Q?+hXmuUjbdw6Ssz3XKAy79u80Sl1OCPWct0Whobqcnht2alnguwVrgPbM54J8?=
 =?us-ascii?Q?lz53lol48dLSSeVbdZKohEWjjC/LfmzrrsMlFQkEzBt0CDLHbBDSm7CA7/3a?=
 =?us-ascii?Q?AtNYD+SRPO+tyPAdrzLqRzYFUSoKuNHIUbzc42PvGSNetUJqHkSEFumq2NbA?=
 =?us-ascii?Q?6Wz5wpA0dKzlN9kwz66CaLmyM/tzpyo0OkPXy+Uz+de6uw6mzaI4YEhKIu6X?=
 =?us-ascii?Q?LMCmWt4gcpnD/O87x2eD/M/7VW279z12P0MiUnCx2/76Vi9Hn+Vb8GtmJ9pY?=
 =?us-ascii?Q?ugZm4JvL+UWaGb9B6QAqd5AgfFqBzfYrlWwLMwlcapj9ietlYZAR0j4dc+AK?=
 =?us-ascii?Q?Z8aSAKUH3Uwtk2y5exMypn5ZboHpMqlqYHoZc1edmk7b2xfCRJiPiOG/STbZ?=
 =?us-ascii?Q?KRrWWMklja8gb3TssuPfb93ELY3ogcHKGKkXNDpNbCH6QtE9AstOcxBcsCC7?=
 =?us-ascii?Q?oaICkHn/aMc/5ZTWUkk/wd8k9S4Xapbu2SZNHDSqIaiQdPxOnFnhtEr9q3zz?=
 =?us-ascii?Q?XDEQR5N5nB5qSFemalq/gZp5HGZ1Jx3+/S/AZgYqJURVgFqvvLujoFLxcmJu?=
 =?us-ascii?Q?lRKlhXBonX4076mZhrEkAffeHyFvwdZZathbE+w2Zs7Rf0CN18cfZo592gRa?=
 =?us-ascii?Q?CprES1B8fEKFVWVplj3g/sUlf2K7nWVWoFlfEoIEPacEJUOTnirEsR7VOfvH?=
 =?us-ascii?Q?25CpzOyy9W2CyiHgpQszZEr2zUPSvuq63rXMiufeUNhq7l+eRVgce/9wBzWi?=
 =?us-ascii?Q?5DLHePb6zsbs8WGvf0g2vrkTt2aPoHMZMtpE8+7uTKo8sGpYrccRYOYqnlqw?=
 =?us-ascii?Q?0Uu5E1cCYrAqxkVuNg5/MEty/UawJ6SBHl+q+aQPAhqNOtJpCJgVQbQ+dQS7?=
 =?us-ascii?Q?K3EOQ1+FYRufwq+iaV+RU4uzShSyFO+rtAW81X1d1Lz4uXyAU1gA1LamI6jH?=
 =?us-ascii?Q?4o8bifVAkBGrrcJ6c54bBAIDB6vPb7Z4EggQZroQv8WmS7OL2R3bhVDnUxgX?=
 =?us-ascii?Q?mz1irb07vGSqBr1360/KJ+6Yus4c5s2lTsSzM2dAUaebVhWboqlK2PYPmw9a?=
 =?us-ascii?Q?KkisBn/bbhJ2AEO7ftogk2Gnd1Htd34M1RPeTRMdU/SMlZWeh/zzZS5PAPNs?=
 =?us-ascii?Q?sjqfsPqGk9na72b34bjfNxT10TtwcAqLIpDNCZ/PGc2xgYTKjSA4EHpDY2+K?=
 =?us-ascii?Q?nfmuv18ZMbwWOwvWz4dJnSOcdh1NTU7j6Ps+tMx1JAhESAvKn114Tt/tJGrK?=
 =?us-ascii?Q?YMilG/saC0zVUSwDh7UFASSqg19pwMJwu6ityuk0BpTDM9Qr+3NYwgur4CnO?=
 =?us-ascii?Q?2L0vztyVXBE2mor/u5ZQmiC+pbzI7goHMbQtnj7B3bzEJYjvndLeC0pa4yrB?=
 =?us-ascii?Q?ymfVfPkdEQbcIqDSvGaQ6z8=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cdb13b4-ed06-4662-e9b1-08dcccb228e5
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 07:21:14.3256
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LI4MdgplcYUu4kYc9KGJ1mgV7lT1uVdHjQUbkip1eW+0kNAZzxue1x0YFVii6OMW2wWy8U3+U8DxUT0VwdWHKpp7hpZXqKhTzfh2Kvh0YnI5qGlyHk66eIlELGPNcu4B
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYVPR01MB11130

sometimes, fwnode dependency cycles can be broken, and in such case,
rsnd driver will never be probed. To avoid such case, we would like to
use post-init-providers to avoid it.
Enable post-init-providers property on rsnd.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
index 07ec6247d9def..cb44478d9e420 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
@@ -112,6 +112,10 @@ properties:
     description: List of necessary clock names.
     # details are defined below
 
+  post-init-providers:
+    description: ignore fw_devlink dependency cycles and avoid driver probe dead-lock
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+
   # ports is below
   port:
     $ref: audio-graph-port.yaml#/definitions/port-base
-- 
2.43.0


