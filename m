Return-Path: <devicetree+bounces-104481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E73C97E8E0
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 11:38:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 749EBB20BAA
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 09:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06C9194C6E;
	Mon, 23 Sep 2024 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=os.amperecomputing.com header.i=@os.amperecomputing.com header.b="MvyCFuMh"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11020098.outbound.protection.outlook.com [52.101.85.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6EED194A49;
	Mon, 23 Sep 2024 09:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.98
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727084313; cv=fail; b=fHwx0L52oEz1gW0zZin926GtuPs1SRLmel5ubAN4op0YaVTc0kd9+eiZ/SEZEA1qxtiiMrzIugIDCgohTEyUfisPS7K//Q0uDG3XwALP/9108vck5suWMQkxQ3A9VsVinl4twdwOv5KTOxPbTQqfWZ/NyXTHisJOnT5WAcdd+sk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727084313; c=relaxed/simple;
	bh=cnKX/R/giV+Tm5cPrwjQLbG1QScSso8/ir76ttaT32o=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=g8a49u0grLbzSv5kVPnhbpn9fT65jUTfJayAmNHGRXEwIk+iQBUGLvlYbaT0kexmHX3E6rcZTjy0VljeW2/WB6mgRaLSg+TpkaIdKFFRo+inz+e9Jom3HXuPjIg1Ybz6SqmSJmNmP3OBLlcynPsPoFl2+zN/VKcsMZM9VLN79T8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=os.amperecomputing.com; spf=pass smtp.mailfrom=os.amperecomputing.com; dkim=pass (1024-bit key) header.d=os.amperecomputing.com header.i=@os.amperecomputing.com header.b=MvyCFuMh; arc=fail smtp.client-ip=52.101.85.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=os.amperecomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=os.amperecomputing.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VmP5ej29fOfSWjpm4R0XcMVgPaErsKCH0R9+THnsLFVl0JwjgxfB2Og2RABEHKUU87zp2fNGTCmdWrC89XVvS0CO7s1c4jAx2J9aAXDMI1PAc+Z+u4DjkM2mz6fsBV6LdW0utGTx5M0JgnKZI9L19fld1Xl7JOZZRle5vuqHSf3zJczPO9UR9y0f1gR20pHI2GNvpSsFuIGLYAwhg79pzj6fcVyMHWybs7asyUqHlA8S0YQNwL3n1EXt8XC1M1Ufb1kv6Ce88kmJIlp9BEVAF+mNKBV4Nq7Rapbl0WRocFD6RRgpJNSvaBx8XngEzrETU6CXoXAWiZqkzJqBp9ekhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3POTCOh5VA69KAf1cgWGtAFgMUr1N+zowH3OjrEK410=;
 b=QebOplQJbkBHpL2cWHF4BMT4wbIOxiVO45psKuCYC5zibvg+8geeqP2yU2M08roO0QBgpNO5rMlfZaImuSzSbFXjpeTpZbjh+BXu+2Hneqj2OnMmNC6NaEVWVWNtr4wrEWobvjSE6o4YZhIedcDeM5aW2FSEuKISwHtzuJjKF5NN32HwrQt54CiN7/sDFCA5nsHrX4WivtuIjwGTtgWsAsiSCYTnSkdu8K4DBEdIYG+SwIzL6izn6P/C2fLHmyuziSgELix5npFdndivOmUxTGCnTSpynt5jKuU+bIo88x9bpynrplpouNt6h3TjgqrEkIOo6PX16Xrw8D2ygCQwCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3POTCOh5VA69KAf1cgWGtAFgMUr1N+zowH3OjrEK410=;
 b=MvyCFuMhrlgesSNrch69gFhleI69EJrBtXHXt+nrxvRiDTfu5hC/qavKHDFc3XO7dwmV3qFfXDHHi+QninE9c7sf8EmV+xqQJIK5HA53ykNMeS+QG+WC5WI5D+qWs7yJDN9nxO4hi2oUxmub2eF29fKI5JFL5BNmKsYHOa0YBUk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from BL3PR01MB7057.prod.exchangelabs.com (2603:10b6:208:35c::16) by
 PH0PR01MB8120.prod.exchangelabs.com (2603:10b6:510:29f::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.26; Mon, 23 Sep 2024 09:38:27 +0000
Received: from BL3PR01MB7057.prod.exchangelabs.com
 ([fe80::b69e:5684:ed7c:4d09]) by BL3PR01MB7057.prod.exchangelabs.com
 ([fe80::b69e:5684:ed7c:4d09%4]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 09:38:27 +0000
From: Chanh Nguyen <chanh@os.amperecomputing.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Peter Yin <peteryin.openbmc@gmail.com>,
	Noah Wang <noahwang.wang@outlook.com>,
	Marek Vasut <marex@denx.de>,
	Fabio Estevam <festevam@gmail.com>,
	Lukas Wunner <lukas@wunner.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	OpenBMC Maillist <openbmc@lists.ozlabs.org>
Cc: Phong Vo <phong@os.amperecomputing.com>,
	Thang Nguyen <thang@os.amperecomputing.com>,
	Quan Nguyen <quan@os.amperecomputing.com>,
	Khanh Pham <khpham@amperecomputing.com>,
	Open Source Submission <patches@amperecomputing.com>,
	Chanh Nguyen <chanh@os.amperecomputing.com>
Subject: [PATCH v2] dt-bindings: trivial-devices: add onnn,adt7462
Date: Mon, 23 Sep 2024 09:38:00 +0000
Message-ID: <20240923093800.892949-1-chanh@os.amperecomputing.com>
X-Mailer: git-send-email 2.43.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0191.apcprd04.prod.outlook.com
 (2603:1096:4:14::29) To BL3PR01MB7057.prod.exchangelabs.com
 (2603:10b6:208:35c::16)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR01MB7057:EE_|PH0PR01MB8120:EE_
X-MS-Office365-Filtering-Correlation-Id: f3a5afc3-eccd-4b64-f9b8-08dcdbb3798d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|52116014|7416014|376014|366016|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?FDYKQ8k9LEsrFlfVkywWdbBzyk19x0Qukrl02UNIa4G+V3JIEXnq9Ad9xw5z?=
 =?us-ascii?Q?rRg+/fmAOp+6xi6zdFauUeIWq0MV35Y6nag7aTaVR4Tbdgyfz9MfoygCoylR?=
 =?us-ascii?Q?IawJuRHytIl1ZJK3njXMLMp7HQpRH6o4y9ugOIAkAEB4Cddzch0u5v3nNjRE?=
 =?us-ascii?Q?o0UFsMqAEMomOc/fxN8F6aQJDl3vEwjrIAw/mrC8HYMwMHNPkyLIXO8oVYAd?=
 =?us-ascii?Q?dtvo5D4BOhxOdz4HgYl3Ru3NKTZJzX0G7Ro0f5NiVTXUo0/3FCusCMRLsgsh?=
 =?us-ascii?Q?RZPIQsvbUPE5nTsIlXxcs0bsAMB8yvrhw8BsS51JkpadAP/RS/nxuD/MD31O?=
 =?us-ascii?Q?ot6xryKLXL9F1toJ2Y7+kuMNiCsPVWDQlra7dgZI+xxpcwFY9EZgOx3nqc0R?=
 =?us-ascii?Q?Qw8QyCesKP1FWCndGfmw+P44anObM2QWupg0NsyYpM0Q3dAxSoY9VcbzWZye?=
 =?us-ascii?Q?6j2kPCWY/ZAazvMXHHD/PhKYkr73+VORS3syg87dMi4uGrdJZSzRshE+O/58?=
 =?us-ascii?Q?952pDLPV+z6S/A/6dfPNsQpw1hgysCcXqox6GBkSWI9nuzdMCEY5Y5vZmkuN?=
 =?us-ascii?Q?rPpQiuidyq53jsfWRU983iLjGRNHSuHNG8GNai2nTs8RPryWeOAuxNqv91Sk?=
 =?us-ascii?Q?merMjzn8dnku7Ka+iHn3cT92beXoVKcrw9LeCKApr9D2kyDNKN6La+glwgg1?=
 =?us-ascii?Q?UUI7z2lWG4QGqV7AvIW4ycuVdbpEsFgJzH6Rp1AGRIt4ndxv/ggcg4P2eUWH?=
 =?us-ascii?Q?Qg0arfGvsfYj9117Se2j+Nv8jyeNXiOhC+vBvJ74OdMX1bqQiUorYEX2O2WD?=
 =?us-ascii?Q?n59Ll4iF3ZKvEYRXVHpHezqsv0pf3DsGqkQHcIky+euySj4ExJVW7orSXcNp?=
 =?us-ascii?Q?sAQQRol+2HuEF+W0/LpVIRtCrn+8oNFghRWZOG8IrHbare/SWOL2Ho1tsvTh?=
 =?us-ascii?Q?kzcLSpq0XKZwhS0LGgnd5y2S5ZDqIyHAuZTCiOLzMkQZfWmS1B3Bik51p3Uh?=
 =?us-ascii?Q?f1UP/r5E+P4KwSEdgiI/U9hhsDVEnp/PRQ8pbzJgxtHKcvsE1l7S4MWlQZPS?=
 =?us-ascii?Q?t7QIwDAYeNo5/V9hBO/yp2egfmcDtkZq6Lj4NXeuKF3UP10WjuAR9YcoMre4?=
 =?us-ascii?Q?T7NMPF/XKeRx2+b58W8stpLCsKrRGPAlYqPpp6XaGP24ojLQiiRj0/W+v7n8?=
 =?us-ascii?Q?E0TIWY5HrAhtFqxVK57npYhd9mq01bkcaR3xCmAvGCrF22G5U6qDhGcE5Wbg?=
 =?us-ascii?Q?i/zpumdoEC7e9gdZ972SUqLhII5Sn9TJ3vASPy3CVth/uKYyDAeNLJhPyomH?=
 =?us-ascii?Q?k8GY/LmuITjbqeU+3RDCofPvEj1CFm3Uti5j6IROg6UARGlyacIw24JdlCJe?=
 =?us-ascii?Q?Oq9jjpU=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR01MB7057.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(7416014)(376014)(366016)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?fdbWDOsUaAEfT9rRER4WSf+1uHOCDh0VYF5cimcX9qkxsTIScHxNlaKnwpF6?=
 =?us-ascii?Q?/NFkHv+RzCEghjn+2e+SektbNgiyuc55AFINwSh5KLmKDIndK1PpIYpFXvnX?=
 =?us-ascii?Q?mSMG9AHs+h5VzZzf0I6GiMOF9jFo7oG8ZU5tRCTkf+qx6Ic4qPbXYNwkG2ue?=
 =?us-ascii?Q?yOckm5Qby/I9kv/r6uemkseF2eMiWWM71ia7r4DchyCbiJxRghkpGPGxcK2R?=
 =?us-ascii?Q?6xyi1AESgGLY1ep8doDWoUNoKkid48ZhRp5F4hFI2TDFQOsdyRp9+WFctSQy?=
 =?us-ascii?Q?yOM0WMYhpkRgDR5b/JxOkGAiZazOEFyFQ9grtRA3NDhabOYzAzkHY8kXh5La?=
 =?us-ascii?Q?GIvyeS7qna8u522kq7e7JrQidOqhvI2DQQ4IqFYUbfzbGzQpDpqiuuHt2+li?=
 =?us-ascii?Q?6MGATVFciLiP/A36Gq0XX61cKLKDGlgJ4lHe+nNaLTE/9CBlHg4svhjMz9hW?=
 =?us-ascii?Q?ch9vpPtx6cXYDWQMSZaEnobzSJXqUGGmEoVSXt9eHlDSBhaxgR5FCDOvpS5X?=
 =?us-ascii?Q?ITV+4QwSF/Nh+wJh3VqG4xb4g9rBvSrUgwzryewgyZnyk5c7RpV5XcdivoXs?=
 =?us-ascii?Q?nQA+riILW0X5mn/0cx/9aW5h5Jv7ywrwKOQBEy0uO2abxZUq9ZrAlq41xrAp?=
 =?us-ascii?Q?8eAiSD186oMbSxhihOhQb2BQvCTy0xxW27elSHJqhr/iHJcF7G8mr15ZoVpf?=
 =?us-ascii?Q?zTe/dPa/jYeigmFsa5Tixj/fRI0JqYQgkKK63//oz+5TyPsTKslryxdwDICN?=
 =?us-ascii?Q?DVjcp+FFBBGnkW6OK3ye07Cavx+z7EWVp46oM56dj0Nemz9SOSPqjsbreYfJ?=
 =?us-ascii?Q?hSyArBhruEPi3Aig2FnPEOziq6tQO1Dc5OnSgKXfwa0onv0kqKVwL6S/ecPt?=
 =?us-ascii?Q?JLvP80VyV6tOKh+fFHSdsKoQHZ4DUwySEfK8FXin6cBPlDMG+SKOqomikdzf?=
 =?us-ascii?Q?i3pcIJyY9BcUllP9soBVOUPrtq82rbgIi41hfrmfEAjxXN5IbtIHPBk71Gjy?=
 =?us-ascii?Q?5a3AQPruVOtX2qEdjevRqssQhslFsH5ejz+dOS45RRmBtBvTV5ouZjjlGsPV?=
 =?us-ascii?Q?HuakiVHn92SeQJDFmToB+UA1/9jV6ocpc7npsfwj2XkdNiiAZs+tF6iSG9BE?=
 =?us-ascii?Q?FR55m8G46lFTjxrD+95pAASpe+S+KclFhoJ8ygM/qDj4iLCRgz7KWNv4vzsj?=
 =?us-ascii?Q?eMTtZEE1JbrMFNRe84QyjAg/LBwwIBUh7AjLDFbDFf4dORUuNo+1hM96lLLw?=
 =?us-ascii?Q?lzdpp4s0TzKcWwRspm253szyFgbMUrmYLCQMx7xRMVG3RWPx/oMEvzfRBGLE?=
 =?us-ascii?Q?wLX4wKM3jB3G1nQWag1wHNLSEELaiTweh8+SYZ3JVKuJIPi18mAQb39FaWjX?=
 =?us-ascii?Q?tlotHHAhlUsXEcbZj4NYyFojUgxT7doRAflX/dp+h5Z20tfFTL2NDYigFLes?=
 =?us-ascii?Q?Kc+Kg/VNZnNE2So6GKPj+NIICjBDE/YR0hHEhgqZ+T++/+hFzoMFYWJwnlrZ?=
 =?us-ascii?Q?70Rmy+2rL8xnhdUjbJU8hInFkNIRM8B3/zenlhtDhvtSiG9fY9gH0B3Z43PE?=
 =?us-ascii?Q?oCsTeeldIFM+MgjqRn6VSrXcIGrvGXVRvqf3m6bPK0tTAJMvFgIN3/flhJGa?=
 =?us-ascii?Q?avNUMIpI7duIhg++Q9Wfw5o=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3a5afc3-eccd-4b64-f9b8-08dcdbb3798d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR01MB7057.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 09:38:26.9960
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2B79k1cueGXS1LRohDMHN5Nwyhd5Cx7dw0xk5hR1ZVz7lxw+ZnNV2YiVTYFpdUFB3t4th6QF18Tl2qKv/TqNgib/Y5sk3oEhUG1AiwTco2wPjE+QHLImyjKCBJsA/0mE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR01MB8120

The adt7462 supports monitoring and controlling up to
four PWM Fan drive outputs and eight TACH inputs measures.
The adt7462 supports reading a single on chip temperature
sensor and three remote temperature sensors. There are up
to 13 voltage monitoring inputs.

Add device tree bindings for the adt7462 device.

Signed-off-by: Chanh Nguyen <chanh@os.amperecomputing.com>
---
Change in v2:
   - Add onnn,adt7462 to the list of trivial devices       [Guenter]
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 0108d7507215..15f89d7ecf73 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -311,6 +311,8 @@ properties:
           - nuvoton,w83773g
             # OKI ML86V7667 video decoder
           - oki,ml86v7667
+            # ON Semiconductor ADT7462 Temperature, Voltage Monitor and Fan Controller
+          - onnn,adt7462
             # 48-Lane, 12-Port PCI Express Gen 2 (5.0 GT/s) Switch
           - plx,pex8648
             # Pulsedlight LIDAR range-finding sensor
-- 
2.43.0


