Return-Path: <devicetree+bounces-254916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E561D1DA9D
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B6EEE30524CB
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 793A638946E;
	Wed, 14 Jan 2026 09:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="h2zfbNrs"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012063.outbound.protection.outlook.com [40.107.200.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A68992D5923;
	Wed, 14 Jan 2026 09:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.63
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768383781; cv=fail; b=GqI1Why6/1ZW74qf3acwk1jPhy4O+ahq4A5EMBVCAIdnwYbcByDzNqWjU7Uzya+dH48Lk/1oNWK38HdlAZKuZ/PZAqcuJnArDDlO+KVJXeVcgHZtyah5QZ508iUeDPkwSFFqfUkGoRQmK2he3dizLvJoqr5nuxfOTHG+qnmdxkA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768383781; c=relaxed/simple;
	bh=PHVbhS+HmIpw8fSD3jPTP6ZNCp8nBwXHoZx+FNZ9yzA=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=hn3shvWqFkAhW6932AXaMT9K+TVSdj4NSBcMi6cBvBbn4srMgJLvB2iOCAg0NVlf/G32sgE8y3ua/areHXBniiQQ6Qr0/QPLRYEq8kVo66pOf4659bIcMlUQGnHBiqwJo9noKxbJwIPKEZh1ViVpfPXKBWDCoiB0CebFlHupDLA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=h2zfbNrs; arc=fail smtp.client-ip=40.107.200.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HxwEoWfPHIcVc+DkeGyyr5sSSszqHPjROVOsIghoZnmEoC++SL6w6xdsxMeSgKSxn0QXBUThL6ckm7t5Ax1rolFkLdoFLMC/F2Q8ITrou1WPkF21vdsSPh7E2GKdzWnHjWBLY+jnzA00FXOUmVbOueOJSWviPq5qmvR7eLcJ8qDHXfC95qA7qGD/P39gGEd2EbG262s2gBB4DEmbQDCW9ddi9kUEUukwpClsCgmT+GCfaROWh8MBcW5m5Zer2jMI7j7dFOooiWSI50LYQ15l+uQh/g0khz4+mQ5ugQOYyr2r/JNNDxzNv4eLaankgl/nMk5Ub4aLLrGuzm4OuYRrxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1S5mDJLJouFqTVzlw7uO7A4J/kAZ8lRgQeLDGMiG4LE=;
 b=QQ7ErGLPPxlt8lRWWoO+kou3hYsbouI/wAlC9apKlWxx4XxV+qD9guihoh4ZO2ro7s8yw8Uv1zwefhVWjxZ81dK462kyqB9moHC/rEJ429+8Q8yacCVOVbTI1kMovSe1QgB3cTLq6ul3PqqT83YD5MRhJCHWqXqC2zPnSFQbsVa/oBDhCVCQAAkePCyQiJwkQ/AfMthvPyyH/uQsda55cMFySn2PsagFa7qfZxnwphZu+EXNSmvbwEWT78uvKi2tw2WM3pZdfpvV+uBj6nODinPvlblR48X/wuIcbthBiH6n+fW5O3u0lIb0s+GNlrBbhwPCR5Goz6I4JbmaYmXU5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1S5mDJLJouFqTVzlw7uO7A4J/kAZ8lRgQeLDGMiG4LE=;
 b=h2zfbNrs1YrorrktItFTXrq4+LQq3YEkrhvJNp0z+mn8kGfHg7PF3Xj39cffbgHZxHDbDao1fcNNgInAZ+v5yNzsU3zYAQ9b0OSYgZt4xpupqqAuEOYd0RQeATuz2gS8cZMLTYDTAAZzR/gvn9pkh8qk4mwPTNdruTGblGcqk0+dW6KMc/pww6cdvBhnSohZIPhcvpUI984o/wneyH8M2Uj7LmVOBzvGzT/7u6wMz31CmcFc55wSgfFfuDWBuSmvcuqaib3XHXpEsSKRd+CKCWW2lXiGpybgK16REh2i4hpIKBj4PjAa0ERfW+ICCHYHVLOdlH3wKQqxgHKW/YcwsQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by BY1PR03MB7214.namprd03.prod.outlook.com (2603:10b6:a03:530::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 14 Jan
 2026 09:42:55 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9499.005; Wed, 14 Jan 2026
 09:42:55 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Add Agilex eMMC daughter card support
Date: Wed, 14 Jan 2026 01:42:51 -0800
Message-ID: <cover.1768378952.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR17CA0059.namprd17.prod.outlook.com
 (2603:10b6:a03:167::36) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|BY1PR03MB7214:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b920919-8dfe-43e1-e132-08de53514afa
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?qUhYG54TuMn2SarKhEsBDNNm2GoISMzE8dz+PtWg66LTW1lVO2chkMqWXKw3?=
 =?us-ascii?Q?DYrNYALOYyHQKSBVUb/3hVhifiHpCefEyH0RsZE/Hpmt1Q3LaSgOPM8uT4d7?=
 =?us-ascii?Q?MbactNmUsnaAOuUVK6A9ZqqxmCbG/BqBkMs1SB/PqVHAPhZPcg5dvdFQQNgt?=
 =?us-ascii?Q?4D/uSAA4nKe2nyOFFv7UA11qX0VgooRBRFfMAs/jM7lOdH9iqb3qD8PuT585?=
 =?us-ascii?Q?0X1bWCk4wePLkb1yebTHZ7ec7+/zxN3L68MDHFgdXPuticHB9F41iWpoptJD?=
 =?us-ascii?Q?3+KI/uPuilhxvmSJr2TZpdVdUOSY1D8snePl6sToZlBxx8S34DXcyCpk4ESy?=
 =?us-ascii?Q?Wj97hlZyKputtjAYAoNqZJQtrfSSoG4zNafKP+SNi/TQmhjcJVYKeWlbT+iY?=
 =?us-ascii?Q?4ueqjFvCWXQhobG4rCjzURpUHoexHT7hRjj2rTVHciGYjhl5lbU8lwxVAfeC?=
 =?us-ascii?Q?GYpYTxoZVPVyhZEDuFYiP0xg0Ysu7LqMOABcATvOQ8kdSbdLrZxNxp1p4AWB?=
 =?us-ascii?Q?13axD9EfYzbzfxU6iO3QHnI8C6fddGLWSzAZEU6VDiEq8/Vh8vCxrV0cZG/2?=
 =?us-ascii?Q?cA/OCkm/8Z/aSx5OB64goIBhsNhlZlLMBzYJIhhLffb4WxJo9D84vYhdo1XU?=
 =?us-ascii?Q?ny0YUXfgwGO7X3+MxqIDYJbVvk121uBg8/deXi+ZAGcV3JWtIf2PnWeAp/s5?=
 =?us-ascii?Q?tC9BsZZtPwDvvbAuSlMfT6a5/OCvdaHsTdeCbLNFFRQD0spZQGTGdI98FJEu?=
 =?us-ascii?Q?hUGgadZVBFY5VpcWlRu+Ri88SnkqITQHKUFPtG7rLjMC2qhOduQHqHo2zaqF?=
 =?us-ascii?Q?/Nr3i0blXhVx9Tgn7FBpSPukv7UC1FZ2yt+VQPEeeOgieYBvdLPU8YXBfywF?=
 =?us-ascii?Q?sYoGXmLqNWEIK6wIOPT9AHDbA4C/8xkyuIO57HWH0G0JZySoiZa1hvqr5j8u?=
 =?us-ascii?Q?idk5tQdB71EjAEca2qJeYYAWsxCsma2WcmI5lxMUI56HrUd4+HZ9vS98G9wl?=
 =?us-ascii?Q?cOjozCvCwWgSCyEGscpBDd9znVZkwNRDyxhKn1sc3m8eH3LFPsUiMGSGQt+F?=
 =?us-ascii?Q?Y0hTwDV4MTm+WJGgCmRRsmILpdgCkBchKuPjrxjm2sMyVaTKuekp+FWG4SIJ?=
 =?us-ascii?Q?JE069u98hdrlmNhssfNiwLD9V7ML7sJGKP9UyuLXaYyTj1bCSDv29JqYLT8x?=
 =?us-ascii?Q?7JzcL4mHAKq7LANsKMki08R1WpOXjpj1O0kdzPEzoik52XVKNpLlcr06PJns?=
 =?us-ascii?Q?z3CtC2OjCD/DinC4E6k1qQGwDnDluJmrlyyKMwnwPLlg6BAbGCyHhnpp1b6N?=
 =?us-ascii?Q?9UEIKG2IVUH+Zl8iVX1MjfA6xxV0dMOn6ttldIXrd5ciUIPPtibidtpRWqNf?=
 =?us-ascii?Q?nRcw4/kMNNE9A/MtnJNdh1tttALlS+8SnuWXG1kP0e7Y4WB+DfzQY4MLDgHn?=
 =?us-ascii?Q?Nxn45hcEgJApjkH4zdB82mu6hacv+X0Z?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?GRSQznHSwkLwErC56FqCnDmlTt0E36HhXtvZq75G2v99XDUqDO2gUXGmq7pO?=
 =?us-ascii?Q?am1kBaEEk6W+MBHCdLeYkaEZ7jaYKQ/Dl5EUBMB208XhGSo2K/apUaVzi9sv?=
 =?us-ascii?Q?og7wVO2f4kwKIRs0HP1dcO1K8GpDTzUYLlJXLv3BrQz/uUNqC+WqYLCSiWmY?=
 =?us-ascii?Q?MKQwBrZdmhrM8thc++PTUSVXZZPO/NRLOHOKTghqZlSyn8cEg/3E8TN7+6/E?=
 =?us-ascii?Q?NpdateogbtDUBtwaepGwKrDl5G9QgBqqPvk5F69hEDsNNfRhQrLvWYSctJ9U?=
 =?us-ascii?Q?7g+4xZjFamI9bzWW9gSxCWYafM4Py9VmJ/J3nJGkT+W3f3v3eSjmyPuf2Zj+?=
 =?us-ascii?Q?MBEX8aJYXoKXvRaSjfB1LLcvKCqQjuxqDM3UaT16Mdr+oz4GgxY11G9gizXO?=
 =?us-ascii?Q?N3BOXwIlyXk1P0OUg0UGeO6Jqo/ylrOnl8xvCmbKGXdihCDt11TMcQEVrhF8?=
 =?us-ascii?Q?pt97dMqcHCUjuY6kYIjZBE4+KyfCB78ZtIIvwIIgIVrhhKHmN+0/DNYZ17Br?=
 =?us-ascii?Q?ViMlk+jY2Wyp5s45wr3qK7o/Ijautt2i13wnj/v4MGC+1YLW5G0yDM5JmkIy?=
 =?us-ascii?Q?nF6QmFS79CPblwUTNIwy7DQLOzJt4xqdoEdxB35dWQpv5nlokSQZUtEGi83Q?=
 =?us-ascii?Q?ZApjpC4yNd4NUl9RlA5Nj4OahO0xYhX3thvIznoKzRuvFSM5Y8nHNHwT7DCV?=
 =?us-ascii?Q?qKJEKNWHK587gcGbqfcn8leD2AJIofog8O52kvJQuY67Er4nFv5fzO3uzRvF?=
 =?us-ascii?Q?Noa8MAzDfTFGZHpoVZV0luaZ329OJop1b5nou+uPKeHYdXylOkPjSxPWCY74?=
 =?us-ascii?Q?BiZuQDosOo9yEFlnkHwNlwv+OsQNvwrNr124iF3/yHCceTPckrzIs5641+f4?=
 =?us-ascii?Q?NLcc5Qi9rIIf0p2sTPBCqct1uap0QwfkwCUcuURoIsWE73DNHUqoN1uhXFzn?=
 =?us-ascii?Q?OuiaY0j1hT9wfBDSy2Cdj7QF5WvEzoOwv+6Rxkcwg9WbKj13SfO3u9hYAD66?=
 =?us-ascii?Q?H1fr56wscu9jot+WmBhnW8LDsyJmiMHQ2ou4WjShD4C7cj3ya+V8gY4rMKOT?=
 =?us-ascii?Q?63KOUqr5B6hOma/NkfCIysfaMRCb8C8sHYWdNjNH4dhq2im8u/AgcrcDoDH6?=
 =?us-ascii?Q?2C9yg/7dkaowxkb4I0bLQp78Bj/CuFbRUnfyDSv1O1gOgzOu+Dp+f90S6Alt?=
 =?us-ascii?Q?Gnbk+oDzt+TskrqF3mJV5JIVVw+RmxioJrjHQ+HplvOc33xM9pqy0zpghQkM?=
 =?us-ascii?Q?0TjLArZ/IIhNx1RwZXs+QeyZIbXh7kTW7UyDfeu/koddtG4XTH8RVyXSETJx?=
 =?us-ascii?Q?fOHakttvSaYdNlmV65TDOeO5OyrJ8pHqMKxfxRsOgBSDF0TF8DHNDTpzG3Gy?=
 =?us-ascii?Q?U6eRnBySRhDkGTobNrGinDzLIcTfVRxUFJth984fSyFAeWS3TwSc5jYE+PFC?=
 =?us-ascii?Q?wS1vRAYAvPenfTiRZXF8yErSTdVmUUedWxwWIZ5iVK8iAOf164aJ0YOWuYha?=
 =?us-ascii?Q?ywdsAsmE6s9tcXCRaa46q1j7RDEABn31HNmehtzwZ2MLhSuG6Nre7MyZd5hj?=
 =?us-ascii?Q?moXakgvQsuouu4Q5NYDsBN2enBSgC5t741eejFS0XL43GenEgIMbTmrGfs/G?=
 =?us-ascii?Q?yCPH2g4QgFkHGf2uTjDsTaRknC9sR1rxylxPJ1BeSqPDIl1QZgnaEc2qHJsR?=
 =?us-ascii?Q?UwP1xoupRcscV0Z46c6VndDVOGYCp0xJZoyigVJzJXcGF+w1kYK+xEXlrjIf?=
 =?us-ascii?Q?L6hmFmAYnA=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b920919-8dfe-43e1-e132-08de53514afa
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 09:42:55.0002
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lfU5QWHoohmgAdyqmX1Kshv3fkcVRRbWwAfu9bJGjRsPdFU6VuEmO0KsmKjppSi1v0TOyVMEMl+888FZ/aFZmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR03MB7214

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


