Return-Path: <devicetree+bounces-51558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 276FC87FB5D
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:59:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4AE351C21C9A
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 09:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F08097F7C6;
	Tue, 19 Mar 2024 09:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b="JnTWffE/";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b="MsYHnZHT"
X-Original-To: devicetree@vger.kernel.org
Received: from DEU01-FR2-obe.outbound.protection.outlook.com (mail-fr2deu01on2101.outbound.protection.outlook.com [40.107.135.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8CC7F498
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.135.101
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710842192; cv=fail; b=G2KFMqiq2dZ5SRDuTAIKBXnNYz84358N2OKf+r69DObUcjJwtdEHDIFTcgM5dr5y0VUGvDdUSgFs6ERi2cUs1U0in7vBPQdsitKjv1tVLJGWVmsVIp53NxtmMm9o8+U4t0DKC20HJE01gbQc8epK2ciu5hRzZUU4Ygl0yJwZcts=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710842192; c=relaxed/simple;
	bh=RkF+5/KLzVRkAe11O54ZMZYXlSChr+gZTZDP3fwk0Qs=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MyocOBg9N5Iw2IEKbkgf6VHsHW7hJgTXHAt+A9eowPgV6QE2bblhjqQTprv3gHG1EnacDQ5DD2ibi+jPq3alzRnQOf6gFQW00+TKk0G3r1/PGLsPiaZqioR+i+15XZyBh2ftTDhKSumazeOLeNAZY2GAyQDrlQ1hGdD41DTQ/bs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iesy.com; spf=pass smtp.mailfrom=iesy.com; dkim=pass (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b=JnTWffE/; dkim=fail (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b=MsYHnZHT reason="signature verification failed"; arc=fail smtp.client-ip=40.107.135.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iesy.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iesy.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CfqgEgehjhAgi2aZAR1Ft3o57dbv5YtT3UR0ZPpnWVI=;
 b=JnTWffE/1avKVn8WVjtW7Yy9JuCnKFIye/ne25KLWQ/XluuQbKenI3ij/dfx677jXkAh5X1dUgbm20Bub7rFLHr+5u9r6s5fgblbyZ6PI3yrhITjMQMJP2AGpGkhsQ0gRPuFKpcRewdkzROHkuzLBbQYXcPpA8Qi0r7ojK/fdug=
Received: from FR4P281CA0203.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:e5::6) by
 FR5P281MB3841.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:107::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.26; Tue, 19 Mar 2024 09:56:28 +0000
Received: from FR1PEPF00000F10.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e5:cafe::1) by FR4P281CA0203.outlook.office365.com
 (2603:10a6:d10:e5::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11 via Frontend
 Transport; Tue, 19 Mar 2024 09:56:28 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 20.79.220.33)
 smtp.mailfrom=iesy.com; dkim=fail (body hash did not verify)
 header.d=iesy20.onmicrosoft.com;dmarc=none action=none header.from=iesy.com;
Received-SPF: Fail (protection.outlook.com: domain of iesy.com does not
 designate 20.79.220.33 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.79.220.33; helo=de1-emailsignatures-cloud.codetwo.com;
Received: from de1-emailsignatures-cloud.codetwo.com (20.79.220.33) by
 FR1PEPF00000F10.mail.protection.outlook.com (10.167.240.23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Tue, 19 Mar 2024 09:56:28 +0000
Received: from DEU01-FR2-obe.outbound.protection.outlook.com (104.47.11.168) by de1-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 19 Mar 2024 09:56:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aycZa0+okPF7pov6uLVEj8Lfa6qeCqjbdQG8Euyz0fRqYCmrIagSThvy64BH4KavFAAJGGhzsC6vof22al5A4Xv+4P3JWyuSZXzhJYB3rwVwu/7GAoBbbmdRMse16H13DIfDcIdrvUU2p5JOrSN6ADgNgzdSHGhq/+vfUJzetRS/a3p+lzLgu0qRt0tM9DQWJlncKBWoUZcATMNrO0tCEDcbD8UlStSM25wYYmbn1RhXtxKb4oVdDbmWDOWrox9et4HZxPyBie/knNiz93DkzSWUJ61UuJx0/G/1sU3X4Lhqi4aE2M8TCNlba3ITS9W9nwi8+ZamZXAJEcP/sNsdiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k9Q7flSpE0KZCAn04UCUZRESTfWID1OR/7DzyuaLbiE=;
 b=F6JrGQzA5UFllqDSyXD9H90qpD7y3RYNIj091CmkKEa/PbhDYbNYIvAXKfoYkpkOruOycKJ+vmrMuNLbGqN1YOhgWK/1V+cKwpFdYUJ28eE3/ID25HdUbwDUuOgEG5WrHYdWI3+/5cC1lZlEgLW1g7vd7qk+erSz+3WiLe8JfVcXlC3SdNnRWPMiSCSt2m66E4woDSbkmaZDscSi3iuXAhHZpGe33fM8LFpdu0DM3G/MWmWRiNwQgNq/Jep1Nz1mV3Ng8JhveiJst2tHkAhrxlrVSKJcUd1aLFYxwhA0Ck3VIwQPLu59r0Lh5Y33y90go3EyIiKGCJuo2siiVrmE9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iesy.com; dmarc=pass action=none header.from=iesy.com;
 dkim=pass header.d=iesy.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k9Q7flSpE0KZCAn04UCUZRESTfWID1OR/7DzyuaLbiE=;
 b=MsYHnZHTpR4xAF+qz2z4gHDjNATRZ3Q0wxX2Gows9kEXCrFvqrvEaMZu9DAqmxyHq+nr09/dya45PWUiUX4AzCL61mr9PcTaFLQGtAIgHNRAbZPtvLZZia6Rquv3TptIRWkFwn4mwRb6fJmFi+5REBJMHK0b/Hq0ny6GCR5Lt8k=
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:39::12)
 by BEYP281MB3930.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:b4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.29; Tue, 19 Mar
 2024 09:56:21 +0000
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851]) by FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851%3]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 09:56:21 +0000
From: Dominik Poggel <pog@iesy.com>
To: robh+dt@kernel.org
CC: Dominik Poggel <pog@iesy.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sre@kernel.org>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Tianling Shen <cnsztl@gmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Andy Yan <andyshrk@163.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/3] dt-bindings: vendor-prefixes: add iesy
Date: Tue, 19 Mar 2024 10:54:01 +0100
Message-ID: <20240319095411.4112296-3-pog@iesy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20240319095411.4112296-1-pog@iesy.com>
References: <20240319095411.4112296-1-pog@iesy.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: AM0PR04CA0097.eurprd04.prod.outlook.com
 (2603:10a6:208:be::38) To FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:39::12)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-TrafficTypeDiagnostic:
	FR2P281MB2393:EE_|BEYP281MB3930:EE_|FR1PEPF00000F10:EE_|FR5P281MB3841:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:
 AKsvFkwdoakJhnFqq7slOSHHV/qnCeotgOgxKDowgr2cgCp6//qFgNIVXk4W6QQ819ovsfHxJSSHFk76PfrCAEkjvwQ/Tsj8tHC9h9hc6aliJac0+6t4L3JKLfmlatKSYbh8fNk8ZuQktctDgegE70q+IH4oUPim+NoUHtedRANPAZdB7g2M9WA11Yxdz0djCg+gvpZc7vU7vdwS3ojO7xvvYEe74fDAR7J9Use+OHUvdVyKKy4bDI3kv/G7Uyd0+Fm56YwvX/ceDF9h1mxwFTUAQems/Kc6m2Tcs9/HbG9GKAPP2ihdfZTOl2V9EdbTVYeQ9utDzWzm+obA43y0sp/f2r4z3Sl15Ony4JVplV5M+whhuEwDgWAn9RTo1gVlATuF8cNcSazCh9Za5p9Ze0uZ0bZG2adpX2YE1evvLIEQkagnvR0p8gaJTrDQXpw7peB6pnVy5pvuZk7ux5VbplIO7Zvceei5PBaYTxVK75Jn7slSy8yKKTvHERDUABLSC4/lxUmutL9TNNcOawIdx3oQJa4g/dWr2OrXY5kxde/fR8jD2YBebWzyhDj/JVv6rk2DFjNBSyVrri+v/dtNcGxg/0+wA3Ha1hqFjjNA2CqyGwEYbaQ2BuXGEmC9NQDcEnWGxDtjf2WZC1ZJj2hwIpxNjdp09zjXuIZvkxuZY/4Ew0bDOK4fNzQImbAjFU6bIwYyBPUgvo0edbPVP1IRgEOWtKvz4JIvrKvbOgykHNw=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(52116005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BEYP281MB3930
X-CodeTwo-MessageID: f4a7e09b-d893-47f1-8a22-c5d89da298f4.20240319095622@de1-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 FR1PEPF00000F10.DEUP281.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4c747c98-06e5-4c80-cf2c-08dc47fad8c9
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	29e7EP9wlNkAjvlJNDShTdwmBI7mGT7y9QDYjL+RiE+7XpQasR59TJgq8kzPNyv9HLRgFWzRvwb2XI9ys9LKyuy9zRbqHuhZq1CXGNfMUlF000TmnquhrVQaHFdkf9S/aDhVQkWxfOniNrWYCcsGBK4nBfJLLzc7azDKyqRjP2t6V8zt7Cb0kLk6DyB8E3YLeJfPATNIo/Y1kACCq9ZwkhLzq9IiaEgCH71yRN6yb69ZjRzrh2u648xdjJ6qt66kaZ1C5k5ZfQhUbiqg7smh+JvBSF+qfMuD4RFGKiwoQMHmWTNmxLBGDlvQwC0l2rKYxdkW5sKL/dm2XeSG/xclENhz/fts2ua7gZ3peJfE7+qw6pqUh0Xaq1Gd1+mN7WI787J/b20wGzp0dpBCJ8avzUePI1ThsZSazx59icSrZpyAl15yDj6MbbQBCWvMoyCJc5LdGjJfXba6MkdCnR+Mmt4FZn0E6G+q3SUBWnnMvnHe6r/CyZVGLfmWsGjOYEClAdkEhC1FpnvE8/6MLK/0r/gvPprnXQxVRF9MXqi5WYw6qtAxxKwBXtbm0vWcNFbFcGr89tfqMCo24VvwYIQzoLi5/j3xfFe/SDhD7FwueCnvvPmd9kDvS7+ultI2K2WRsAhjDqV1V/9CI4rA+6FO/1051UC3Z4wl4wvyU2p3C+661owkoeaDz2EYbmt4MBBZd1p6xSJALNQ1rR2zfNWvpAFZHE7N3qHGKAjPZrbRZ2lvI/vPuBu9tQCUzy6e8I1x
X-Forefront-Antispam-Report:
	CIP:20.79.220.33;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:de1-emailsignatures-cloud.codetwo.com;PTR:de1-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230031)(376005)(82310400014)(1800799015)(36860700004);DIR:OUT;SFP:1102;
X-OriginatorOrg: iesy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 09:56:28.3955
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c747c98-06e5-4c80-cf2c-08dc47fad8c9
X-MS-Exchange-CrossTenant-Id: ace663fd-5672-464f-8169-8d373312f6bc
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ace663fd-5672-464f-8169-8d373312f6bc;Ip=[20.79.220.33];Helo=[de1-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: FR1PEPF00000F10.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR5P281MB3841

Add iesy GmbH

Signed-off-by: Dominik Poggel <pog@iesy.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Docum=
entation/devicetree/bindings/vendor-prefixes.yaml
index 04505cb0b640..ffb2abb5edc2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -656,6 +656,8 @@ patternProperties:
     description: International Business Machines (IBM)
   "^icplus,.*":
     description: IC Plus Corp.
+  "^iesy,.*":
+    description: iesy GmbH
   "^idt,.*":
     description: Integrated Device Technologies, Inc.
   "^iei,.*":
--=20
2.44.0


