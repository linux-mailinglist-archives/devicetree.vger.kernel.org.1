Return-Path: <devicetree+bounces-38439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AA684920E
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 01:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A421281FCF
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 00:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFCC17F;
	Mon,  5 Feb 2024 00:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="byPX66Sw"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2134.outbound.protection.outlook.com [40.107.113.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D300197
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 00:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.134
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707093389; cv=fail; b=H38k0yxpQ4QBcibTEvgrEPu0OXCq0qebL8C+3yMfV8DDhq6jJXL3Yxauu8KpxBKjlAdMIU97fQfvbllo7plAt4Ia9fUI9uaRfl1MeZ6bLg7oNU/SCusnBtqAAo2aR3ai5EXMAJWeqa0HhSmSbwyZ1jkYmgDy3sKQnetPFuZWI8g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707093389; c=relaxed/simple;
	bh=H8jK/T8LVAzbKpNSiMihk6gO7Xz7hKHhZ/2Mca3/4Ww=;
	h=Message-ID:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=VpGUp2XdZ4fm84FNhgGr1TropICjRJ2e8tKf5LUpicJ3Z2DqTL3QjR3AoBl67awRgBPAoE547qaUpvVYDDKcA0gkfcpZFLY7oyzzEnCNY4E8MBYkAly3fwlv1ABUAboyqKRtufxwTuc4KZwyUIfk+uN39lBlZ0/gP5M8KARqtOs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=byPX66Sw; arc=fail smtp.client-ip=40.107.113.134
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XESGQxGM/Pw2BLMw8CH4ZbFzvJaYVqMwOxypLhxG4Rd7Y2RVgPcUCSd9DKErM3SmjUCgSVbEvHQloZxBhn88igqWNFSCbq3t4gM4l0rp5pqWPC6GKAwWoRohHLauo2iAFuaNdfb9Hdrv5G2U0+AKtEh1F/pKapMdGqIi3WMME6Ttz2Lki0pq0w8Ejl9PmJUQYfDG4c3ZxUsZp2wXVfoYP7VwKdaZmXNnOVuCd1lfYBSSB292ucsgyoRQu1BHzL9fOso+6z0UIOjfHU2LFo6+JB7T4Wv2rnWugfJUX7kCQgygAqTqGlP1+XRinLrea0ankmlenwAeMVjvAA76A+ikaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lvBZa9wmrCFyeGu/K7xG48XK/vE0rdtE4lx/Ao3jrro=;
 b=ew97GykLFdCvDtofrGo23FU2Go1Dl4nS1VLrsUwI5q6Xbbz5iHnErIpUpRYEI6vhOD/JE5m2FxXNLWNtAvRTROoUv9DHPtpu4viAJA0CUSGTZmye5bZGB6XpXj9S2RdPmWqRXohAXRxb6y6SBj4UlkJ+4rCkW7HKo0rgZ/LpO/710msLRo33ckjmZTvhdNvhwGC+Llex4mFxj8SeCzFawlj2fZvbbdI4gXVT0rIGicLeHna+eIKnpdi+5483w2GfYBmKqzFG0FIcSw4c5PMLV78A0br+j0R2Smv3QPlHyqvR0WLOFjXXEBnm2zvDL5EpjC4aKYTEaQo+hnF/1h9NhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lvBZa9wmrCFyeGu/K7xG48XK/vE0rdtE4lx/Ao3jrro=;
 b=byPX66Sw5Kq1svEXvjAVEoStn7Q9tqNrUqGwzIOpjvM+Pt8f+5ZmngAgAmijDt/RRYf7GHQXORidtewUzI4akY2Blruvv2/Z2VzrPHbBlAt9dvlOnBocgAHNNn4ksqAwgPM2AVIWHiCzZsMAqw7BzjHxZwnnQKZ91aS+qiHVZ6Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYCPR01MB11621.jpnprd01.prod.outlook.com
 (2603:1096:400:3b8::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 00:36:23 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8%6]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 00:36:23 +0000
Message-ID: <871q9reohk.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Frank Rowand <frowand.list@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH 1/2] of: property: add missing kerneldoc for of_graph_get_endpoint_count()
In-Reply-To: <20240204091616.GH3094@pendragon.ideasonboard.com>
References: <87il37s8fz.wl-kuninori.morimoto.gx@renesas.com>
	<20240204091616.GH3094@pendragon.ideasonboard.com>
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 5 Feb 2024 00:36:23 +0000
X-ClientProxiedBy: TYCP286CA0142.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:31b::18) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYCPR01MB11621:EE_
X-MS-Office365-Filtering-Correlation-Id: cdbf0e8d-9a8a-4932-6012-08dc25e27ae8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	bDcZG7LlCJhuf5ubWnhHbUx6Z1KwW0OfklcKMdfl3QhbqMmHcX5gZMg80OhMm9+qxQSoqu+HfhzADog7w8BIRiyJVcO1e6COREa6GYdamb36TS0wDuu7PG9h/G7spAxM3G1GA/OOiGn5g8FB8SK51lELMqpMuGPxGVA0WgZvIYevzxM3ayZKl8eKc8Xv/Angeyd4BvCXYMrf0Q2XlvqfE7OFNdKhKp31I99cReHkOm/s3EMUVDQI+QAh+rommO4Z8eQ5y83RM/BCopKGK+NfZkTxAUelbjjwzzZSzm5pgMLai+rqeMoe2vou3S8k2/aIHkwo5eRg/5za7pL3xx1QpqlLPFvZNxU0nzrzzDsUyc11c2UqUgZqbKB6tRSUXvCEZVfEpo+4zZeJqUecShhcqmMA7W8kf+mqRJI+fgCl2ixXfOu5UvKLnxV+72MqymJFAhCRULTkjoxEGWZiWuig7ncpFXkXHbVU5r+l62eOUTEqLJ/jjsIoPTxtf8CzPYiFCDCw09p17vhMKYpRVclTuKfy8oulWIfDtvloKY6JveoCruxbcFIJE7Xnrxy4ObqaLtIyA6MeFP617jvoyFMMuJHNDsMtzoUQoGIWeY4JnT/4MZGUvTAZ8cR23HaMsFRw
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(136003)(396003)(39860400002)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(36756003)(6512007)(52116002)(6486002)(478600001)(86362001)(38350700005)(2616005)(83380400001)(41300700001)(4326008)(26005)(6916009)(66556008)(66946007)(66476007)(5660300002)(6506007)(54906003)(4744005)(2906002)(38100700002)(8936002)(8676002)(316002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?G/4g46Em495VxjbIqt3Z/ZcgVrJZEzQXBupyLmy4BZmJhfvvZR/fz9XSYbOr?=
 =?us-ascii?Q?SA4kCFxO1FqrZ5kvr+ni7jQxtnAuOrfHzBJZnomZrEe3TEtiGZmfKrNjiwVI?=
 =?us-ascii?Q?8IIQsph4mUSQDuY3WC4JtRPmjbusRr8FJEsxLSeCIJnve1s2LTzpQzSge2bn?=
 =?us-ascii?Q?11MtopA9xREg1v/lgjGLWXKjgenMGdM5DNeoGvrk/A5Ncc1RQixQ6X44D5Rw?=
 =?us-ascii?Q?+6EzuDOL9rTN32eeg+qlk6vSUKoq9TRnIsLp/UOR6zGVKFvnnR0bO36GRYms?=
 =?us-ascii?Q?xeqRy9lcpOUJY9dZnPkB21AHUz8IB1mkxTQ4QLJUkRqWM9zyL7JG9kQnlVPe?=
 =?us-ascii?Q?JETyGs5r97xiwe0vdHN6+IgYYNxqSxFgPP/MOinItdeJFEnQHHLC2E05rHL0?=
 =?us-ascii?Q?dUO/roVi1rOC9GJahKoku5mfd3RDDWNfGptcJvWVSG7g+iYm7Yts/+hHYQQx?=
 =?us-ascii?Q?0RFIquBUvhoWM5iobi9vBFLftdADyf9wIs4TNpjgDQAb3m+PCmoZ7Aonjfak?=
 =?us-ascii?Q?7bTUr3bwgLLONDF307ejcty3Ua5AhE3cLElcWTSaOrximOa1b330GdZ5TU9t?=
 =?us-ascii?Q?DxBSSnTnp8LdHTvI0922cnvvvf3U2xNNgnyCfo15k7tManeaWwUiCVGQFzjo?=
 =?us-ascii?Q?Wz0qsbkvz8byISE0MCB28Lu/35DvsOSTOgMXzga+RLmmu2KZnGIDFeLTYCyW?=
 =?us-ascii?Q?kzUlEi13EuN9QH50UJLp43GVYzoyphtAOutAFEqCjBnzxqjIIdETbZBjG7LY?=
 =?us-ascii?Q?cvmBaE8vkUEZMI3gOzRZO1+rH/0PWjeb+gwHDP0HQ/Ok/+UIxIZN97WY9Re+?=
 =?us-ascii?Q?B4o/sK8yhobPWlbYB/rpmH8UFMxDEH5oKSiID6cjyQVFOlCkcHKZ20beqmg8?=
 =?us-ascii?Q?0TVCV4P701w2qyrXOnuvliGdSJZps9m1oBH0xRzOQelcMXbcp6QhLiyEGsfn?=
 =?us-ascii?Q?axhsC+QQdCnRZJJwvxCIr0o8doqIUuvIcgQZcJYuCGK9HaYCwFlp9sTFk0sG?=
 =?us-ascii?Q?G0hmA7ytNlpNH0jZk7EJrH5jIM5Yg1dQd/FytfK5Wvc3OYEAnwwqtnkCi5p3?=
 =?us-ascii?Q?uMNdLuKoq47RF/4rX8KAZJADFkPI32PZYU5PRmcyZh02JdGPpGRc033cjw/r?=
 =?us-ascii?Q?ijvKbQK1VFjx2en0gq0Lxa3mk21XXjVo4P631f3lrtVS+XJZsMzR9mW3xFRn?=
 =?us-ascii?Q?VvTaGL28OLjD+8BpUJcdY4O2xhiMNi/EaW+vtJULo/hNeAgSD8xFKwfDkbnv?=
 =?us-ascii?Q?Sd7QcfjB8htbTNe44MDyYriQ8WeVfIqdFw0s1yoHQy7aZPZQXrFvPWzHf3Wn?=
 =?us-ascii?Q?Wp4pdi0fEieCvY24+K89v5gsg4DEBCAenuinYPlX51wzL9LQZiIL8u4vWRGh?=
 =?us-ascii?Q?boGaPvYY7tI8cJ3qabM8op9AV/j/FzoQNOiWgFeCkSs9aEylpwF8deyGlSZn?=
 =?us-ascii?Q?JmMvq4ImFLKc6EQOOnswSYCIO6bApw3uRq61joUiMq8fUCcNWLD58fb/wtj6?=
 =?us-ascii?Q?Y/8muCpmCKbtJhSpPlepWrp19vu7dtedUrIKdubZu/LnyanjxOmV30N6uZZE?=
 =?us-ascii?Q?Ux23N1N7IEgSE/K1JyZWs843pHdtNUpLPH+RVCLjvREYKSNeBvPw4/IU+mg3?=
 =?us-ascii?Q?sJb2rS9ha1p/Ejb55bzRjX0=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdbf0e8d-9a8a-4932-6012-08dc25e27ae8
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2024 00:36:23.6545
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zGe66pyWylC2VZvvT/owBP7cW1f6FNkEaT+1dIx1R4qLSGKXa6BAYS1u2bnjW1+zzOH9nlcZPOC06pfbjKyo30z8efhaGoWu+GqYgU03z8xo74NlnSWBVMxazvJHy4F3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11621


Hi Laurent

Thank you for your review

> s/endpoint/endpoints/
> 
> or, possibly better,
> 
>  * of_graph_get_endpoint_count() - get the number of endpoints in a device node
> 
> > + * @np: pointer to the parent device node
> 
> Let's use the same parameter description as for the
> for_each_endpoint_of_node() macro, for consistency:
> 
>  * @parent: parent device node containing ports and endpoints

Thanks.
Will update on v2 and it will have your Reviewed-by


Thank you for your help !!

Best regards
---
Renesas Electronics
Ph.D. Kuninori Morimoto

