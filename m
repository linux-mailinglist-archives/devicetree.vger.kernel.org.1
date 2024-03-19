Return-Path: <devicetree+bounces-51559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A0587FB5F
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:00:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 621851C21CBB
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B737F7F5;
	Tue, 19 Mar 2024 09:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b="0KpalkfO";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b="r1T9OLvp"
X-Original-To: devicetree@vger.kernel.org
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (mail-be0deu01on2128.outbound.protection.outlook.com [40.107.127.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B4C7F7D3
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.127.128
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710842205; cv=fail; b=iQ9TydhgsJGYR46k6Unpy2JvEvqamOwqYk/lORsFa7LSOlCa1uVd+cCNH4HYug5UsfcP+Wd5jPfnkH2TxcAq//4qZe7lKyN7yKuAllzljHBRoYzGSQ0CireftbB95Sd5edwZLN9qPAlzWzA50C+VPuOm/xR0+hWBqHUVuv/hOsQ=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710842205; c=relaxed/simple;
	bh=SftUslaHsqY8HGO3YhrDrJGlF/tU2RlUdzU760/6KF0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PKZ0mk6js4H5kZe8hhDmalc6g53qjFs4B3HXme3qpXJ9SnPvzie8AbOM0ObCGcfRyayH0Ha7m5p3R0igN/VEiJudEfw/Hq0eDtqJfSAnfJ7C1VcMe4K9aYR7X7+aD+nmw3JU+Y6FjrP/LCy5/BfciiVFadD3XTSMnLCw3NVixH0=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iesy.com; spf=pass smtp.mailfrom=iesy.com; dkim=pass (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b=0KpalkfO; dkim=fail (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b=r1T9OLvp reason="signature verification failed"; arc=fail smtp.client-ip=40.107.127.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iesy.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iesy.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=lai4m9tYlPDqp1DexJu02J5vkxu2p4px6StaSnwhxPldHCaGBxNShDclwJPT1J0qyD0sDtFEjjUhmEAXSvJ/aA8ZuusUquF8+Ejha//oTlQ52TNZgk8+byd0mzKOB/oyxIxk8Svhi9BuQZlU2yota/m3j2dssc5bxtk2pTgqJUtkBBqVY1zMrX0TaQfp69ep1Tkc0CV+1PItI5q4TwdONHRBQRWAkNF1vz+hz1Cm3NEPZaqiegKBXA4c8XJd76R4ApnWIuJZVtTwxo3iROjI9c7LgtoVkNZOP11LFWtZNfBCaSJlFRNmZE7vgy4wCPMgwKwvza86TYiLP+aeq0zVLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qcm2tufEHCswe5/0BhmtkpeKGfTtdqAG/VOY759/Jdc=;
 b=n8Abz5CgyzB7Y7Dc62DmYSQDi9BiAOhMxVlen+tQYlXWIeMRwT0ePIFsmuQwPaQg0cchspDm3dY9VsBHSzT8zETxGMzyRUw22Mq3U4kP2fxB0ShkZ8INhcRHeA00R9BzPz394lGim62ZJMSmeQj7smjuWm4TVX9J1b+6aa13KlA0zXqheUumV62MoN8WTbd15PpeOCDzO/qt8AKPZNGDChb6xVAQvlMD1XvKNJIV5KMRsY9VMobO5wK+I+EVmRUTAkPO617Qc5Uh5SwgC0d4hHz9VUUsrZrCUh8DT59ZpYT6gJCUT/+oJY68zcI3EpOmCkivqGq5xVdTqDybTdNeJQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 20.79.220.33) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=iesy.com;
 dmarc=none action=none header.from=iesy.com; dkim=fail (body hash did not
 verify) header.d=iesy20.onmicrosoft.com; arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qcm2tufEHCswe5/0BhmtkpeKGfTtdqAG/VOY759/Jdc=;
 b=0KpalkfOqvnoufamsUT3+tBFJNBJRn4C+kBaxARfQliHdOujMHXCAeaVBkaUPpBkStEyFvBHBC+Cc4OARliBSmk7ORnEWIXe5paocX+XE1yLP0MU/nrs0NrI7hvLqM4G10wmgxYIgYXqWNU45uCGfnVb+Pv7OemEJUnALcujyCQ=
Received: from FR4P281CA0304.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:f6::9) by
 BE1P281MB1425.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:17::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.26; Tue, 19 Mar 2024 09:56:40 +0000
Received: from FR1PEPF00000F0F.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f6:cafe::31) by FR4P281CA0304.outlook.office365.com
 (2603:10a6:d10:f6::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11 via Frontend
 Transport; Tue, 19 Mar 2024 09:56:40 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 20.79.220.33)
 smtp.mailfrom=iesy.com; dkim=fail (body hash did not verify)
 header.d=iesy20.onmicrosoft.com;dmarc=none action=none header.from=iesy.com;
Received-SPF: Fail (protection.outlook.com: domain of iesy.com does not
 designate 20.79.220.33 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.79.220.33; helo=de1-emailsignatures-cloud.codetwo.com;
Received: from de1-emailsignatures-cloud.codetwo.com (20.79.220.33) by
 FR1PEPF00000F0F.mail.protection.outlook.com (10.167.240.22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Tue, 19 Mar 2024 09:56:40 +0000
Received: from DEU01-FR2-obe.outbound.protection.outlook.com (104.47.11.169) by de1-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 19 Mar 2024 09:56:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GDXVkpjoH4U2NrbVSzo5C0/YWg1agtFoukWp0s2L1Uj1SNITONB+VOtuct7DqOPkWyVaC7aIuQhJtUKRLiAHTHS8o9dQ7KgtmbdpvjQ0WNUpvsGW9oMpRed8urWFQiH7GtkLO9ADr1JGpZzTcyVVGT+hNdrZXQ8sOzANAslnNboBc29g3TwOauL1Q87GtsQ5ywHiLFiYzu8MVRHy/blSx7Kte4me3B6UTCDMCgoLKZjAFA/x/ItX9EMJU1GjH0mX9jjYuuG1rwA7b/ihOj1pgm/u6RGksCXKqy7uKb1HIUqJCkmfkYDo8BHCHUAHJSnf55gX1TXCvlAnYrPcZRuC7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=81GBsRSGPUJDqOX3Fq1EM8MeHwVfr+Kid8EzQf8Qk0A=;
 b=TL4E7ljNJvBBSqxoUl3wJ0LRC3/hd+eMFqt4/R6KZIxTrJ5T+dm8lXnUDY6/fm7qKQk5r2Wlnt/aFc/f4mWJ3CLX8tHrIvF1JagJ/SPUr7Ee9rS34A/D814FCxmYltJ7o5flcA+CWZl/nlYHntOapGt+s676vpDnR7ys5w4WcToZDRCYOP1FUy32KcrEt3Iuhn5jsbMnd/m4R+1BcN7aO1uyYAUByq8OUQ7F1Ravl43gmuzE5CfBH+5JvBzM7NizJdofL8drh2YX6RiJJN6h8laau2azaU+Xgy+hKvbnQO3Pm2Wp+A8DfiMg1P7HU+7kCwngoEOXG4+r8qWXbitU/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iesy.com; dmarc=pass action=none header.from=iesy.com;
 dkim=pass header.d=iesy.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=81GBsRSGPUJDqOX3Fq1EM8MeHwVfr+Kid8EzQf8Qk0A=;
 b=r1T9OLvpppXNhkDHp8pSyfiyz0hkJt18r2el5KHWBT15m43/uWvvQwFKFtnr74E646hCqGv1QtOCkWfkDmJSwewd+sGDS8Izwy82xo7FzLNtbMz5O691uc/oe8CaK1hUlV+fB3K7QXj+7e66gqNj6Vvst54n95CgFC/dfGmfVm0=
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:39::12)
 by FRYP281MB3003.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:72::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.27; Tue, 19 Mar
 2024 09:56:32 +0000
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851]) by FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851%3]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 09:56:32 +0000
From: Dominik Poggel <pog@iesy.com>
To: robh+dt@kernel.org
CC: Dominik Poggel <pog@iesy.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: arm: rockchip: add iesy RPX30 evaluation board
Date: Tue, 19 Mar 2024 10:54:02 +0100
Message-ID: <20240319095411.4112296-4-pog@iesy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20240319095411.4112296-1-pog@iesy.com>
References: <20240319095411.4112296-1-pog@iesy.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: AS4PR10CA0009.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5dc::12) To FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:39::12)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-TrafficTypeDiagnostic:
	FR2P281MB2393:EE_|FRYP281MB3003:EE_|FR1PEPF00000F0F:EE_|BE1P281MB1425:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:
 vJ2AG3dmop4Jd2r8FuBlylg4EqLSzPYgyqU4kz6jRNV6Ai3OLksPaTdz3EnN1VJ6tp/hTl08J2YVC7wzt2gWeAyI7FvxytBZmSEjxQUOry5Jv6Zj82Iu9Q+7ISaEYURNeLO0IHsIAMfWXiExC95qZwXMFKzEPVLAGCq7Ds+5zB4yubJQFnA4Gvub6reUqIUF8ft8Rb2tXb8IdfjKfHub2wz+ia6YC1Oa3xylBCmOLznmhum8MvyF3nkAvj8dQnwm4sGZ7JHIrcn3JvDMUT7Qrl2x1oJWOSjPjSz+1FwOtQaaoPzoVh5SbH1VpSrbzt6PpRy/abkXcRWAPi1mm/sD70zdFMYFLpxg+WAGttgK1hbWujd6+uJeyNkP4Vt8GlK1IudbdcW/Ly1xN/rWUfp/XdybnKxDs+IB+vu9bNL1kRElJlvCXtKRcmeqOKy1Pv29h5EmzoGssF8JHlzBFGwdT+ScSDpQNiN+/SA9lnqmfY9I2FaBwBRFo7PTVTtnM6HFNv1GrdpmQvvX+wQ0eaTmegpFSZaONcXbBVsBUfNikB7UDRrpDIjta/8qVasXgB/nIrXan6UKJ3ofgz0KzsGUYxu6P/iYz3/LqftwfzconBXgxesNOKyLNL09JAFpuDuaSvNVrSAPgOE1NoSMOUJQZt3kElAEU/6+vnhrCxjBDu53eqSqMSgfTPnOHeAGkSZTXQ3LoJLWWC4an1dOzHhRGDxJAftcouaebOvGCmAInyE=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(52116005)(1800799015)(376005)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FRYP281MB3003
X-CodeTwo-MessageID: ce8fc15c-3894-4803-85a1-d4aa665c9c4d.20240319095639@de1-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 FR1PEPF00000F0F.DEUP281.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f0d0509-58a5-4825-256d-08dc47fae004
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	qJzFBebjNThexVOkhcpyyS2/OzESgwqDO3V+c1IVufpuqsEAl+sx+hp1Qr09/2JYSNZD0GAmJYMkI9LFlYjk4I3cFnbeFUNNBY2Zq+M2N7jyR+8YuE0yEeFTRz7HKQ3pc2yUF0NJwPM5Py05GCaBUeEFYwSNW4bPx6mDUkXCjowxxOGbbcg4rdE3nsxADvQscoA6I32vJ2FaLC/tArV5RjsWSrWeu7sNXb+nzK74Wv8iBM8Uw0B8QNb4eOK5XQn3WwktAnbqBJ/MYMiykxZVoQEwny52AeqK1Acq3N89lXT7oxjuU8NtdgUgasoM2iXi+PH2pVDbimR7Mvc/HWAd99LqZzGJFuqermkVxjGB/YZM+13VeUdxcY5s0QEgPMTavlnqEeFmPv/Y5Vf31FrX/Lx5r30fbcDCIR+SWLJy3zjF9rz0/oJuzu5f28gdam8qP1J25Ry403RvB8sOaqMZZbe3SP8pkmt3PnbPPAjcWYa7pPMILZlNXH6JmnGSc2Suk2TQ33VJN/kJLVKwsWoId7fHPuHtarfDwJznDVLhLAgbqX+fTEt58aUMH5A2Fy+/EXXinw98Qhz78eOkmFf7eKHDdFDEerldEzvlOEzMYbGo5MqAjWOua6qm490d6LWzP0LJNtgBwBNOUspmLbhhkCBUYhaBwmX3xczzJSOGDdUnvqSZdoj/0rYISSRhNx4x4LXBbmj+2kYOYSO91UDigpnhVuBK68OIYOR+BMSJZam65w5gs1+CyzMTmxhpTVZS
X-Forefront-Antispam-Report:
	CIP:20.79.220.33;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:de1-emailsignatures-cloud.codetwo.com;PTR:de1-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230031)(376005)(36860700004)(82310400014)(1800799015);DIR:OUT;SFP:1102;
X-OriginatorOrg: iesy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 09:56:40.5063
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f0d0509-58a5-4825-256d-08dc47fae004
X-MS-Exchange-CrossTenant-Id: ace663fd-5672-464f-8169-8d373312f6bc
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ace663fd-5672-464f-8169-8d373312f6bc;Ip=[20.79.220.33];Helo=[de1-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: FR1PEPF00000F0F.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE1P281MB1425

add entry for iesy rpx30 evaluation board with iesy rpx30 OSM SF SoM

Signed-off-by: Dominik Poggel <pog@iesy.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Document=
ation/devicetree/bindings/arm/rockchip.yaml
index fcf7316ecd74..601aa1510856 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -565,6 +565,11 @@ properties:
           - const: hugsun,x99
           - const: rockchip,rk3399
=20
+      - description: iesy RPX30 Evaluation board with RPX30 OSM SF SoM
+        items:
+          - const: iesy,rpx30-eva-mi-v2
+          - const: rockchip,px30
+
       - description: Indiedroid Nova SBC
         items:
           - const: indiedroid,nova
--=20
2.44.0


