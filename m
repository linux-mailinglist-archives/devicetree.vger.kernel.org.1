Return-Path: <devicetree+bounces-51556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 114B087FB58
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:59:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 037E91C21C9F
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 09:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 443B67EEF0;
	Tue, 19 Mar 2024 09:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b="LxfUnZy3";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b="goFJTg40"
X-Original-To: devicetree@vger.kernel.org
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (mail-be0deu01on2090.outbound.protection.outlook.com [40.107.127.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19FD7EEFF
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.127.90
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710842132; cv=fail; b=qa22/SdLbGfd8DWdAaMfwhl5cbVs2T9eFjQv8qgMUsBlwZCjr0bEehg08SZ4hrxJ/P8T3XlLwvawJhuMKZc+YhNkr2kRhcNdt1fsl1QiZjxx5z1YErmhweWC4C29uc/7nIkhfEDSCR091AxYQJCOxwKN0fLDGuXlVPUtcYIFHlU=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710842132; c=relaxed/simple;
	bh=FLmUmyMPQP6e4752th6cNUVoZJ6S05NRQpuMeNY/vx4=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=nuZ1JLsqgME3eLqWTmPKa0ddEGKgG1x2DFhyO4e4jOSveDz9ymDxViBWkDHr7Kzza/3glk1INknBGvpvepYBZMu4DpqRzIDzWd6qUPUEaVQEBnvINpUAC4lN3iAHl9cBFZCTdUvx4zYKP97Jmv4DdyXWlhTfecGAUBfnNT/gr1I=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iesy.com; spf=pass smtp.mailfrom=iesy.com; dkim=pass (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b=LxfUnZy3; dkim=fail (1024-bit key) header.d=iesy20.onmicrosoft.com header.i=@iesy20.onmicrosoft.com header.b=goFJTg40 reason="signature verification failed"; arc=fail smtp.client-ip=40.107.127.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iesy.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iesy.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=SZcgXir09wHDHKmzEJWygSVPu3YQO9fXYibzE2cAddzfDEiJcpULl+63ICiVtPX6RGK9jGTZpJ+LS+7cHwTGY3PY1XN11Ap8/NEeNWy6NYT6WQuuwKpcS+DzY5Nf1bjyltBa2M24vTw5sUxTQGSveT0Q8y5cdqkApNmIwg8ta6HyUQoJ/CUIKEAAnRWJwbrT2a3PeH/Pn9Agz2fogUwbEPXzSmKjNaqXn92mG3h8nEWDAOrG5lPgnLYMacgONXsfjRCHbLw3/Dlecv1TJFKM5O3yJKff/MACqoQnMl86oob2BzQ9u3qfarWZy2fbm9oT1onPytMK68LRJtQKUXlYtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+d5sLvVEdGISAEPHWV+vAAz45eGs9R2X0isKTcifFug=;
 b=gmYvH3s/81rBrLcZFQm0IE8wDkhHl7BSxw6NYC74SZTN7CD9BMNfsLP9bVIaZhWShqoEwUPcXEYZNGXyZ/8qPhF4mKvaZgo7/D2jTvBpvqOC70VGgsj+4uyxhgP4tpGiDVxKIvS2rbpxXI5d7fsHWD3iTQ4FY0Q6R3Ssdhl5YxSdLLqwUQAkZFutuKkY+KkdvFLFVxoOn+TslnGG5bsHlpK5bTe339E5dqRrasrPuAyXMZN5EvEACaFZ8W2ulrTNGbz5hirdNyx1YJ/7J1ZCYU7gcR3byv4JI9RhoRd0LhIDT0FZ5nUBpBNCX51et0EttgF5e/0kbtF304AwNLP1wQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 20.79.220.33) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=iesy.com;
 dmarc=none action=none header.from=iesy.com; dkim=fail (body hash did not
 verify) header.d=iesy20.onmicrosoft.com; arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+d5sLvVEdGISAEPHWV+vAAz45eGs9R2X0isKTcifFug=;
 b=LxfUnZy3na7SlSeNnwV1of/3df1SFSeM/2AB56IiUicX5cccEzQrdqn1Idiz17jwCnq+FGBGOzvMZfuikfoyJc0eBTeX5L+QyASQrP4/oNActoCa4joCfvTn0hr1dm7yt75GeB68ntR2Wx6OjcrK5KKCaZkPhXDAaeCYp9eKwbk=
Received: from FR4P281CA0200.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:e5::9) by
 FRYP281MB3225.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:70::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.28; Tue, 19 Mar 2024 09:55:26 +0000
Received: from FR1PEPF00000F0D.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e5:cafe::a9) by FR4P281CA0200.outlook.office365.com
 (2603:10a6:d10:e5::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.13 via Frontend
 Transport; Tue, 19 Mar 2024 09:55:26 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 20.79.220.33)
 smtp.mailfrom=iesy.com; dkim=fail (body hash did not verify)
 header.d=iesy20.onmicrosoft.com;dmarc=none action=none header.from=iesy.com;
Received-SPF: Fail (protection.outlook.com: domain of iesy.com does not
 designate 20.79.220.33 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.79.220.33; helo=de1-emailsignatures-cloud.codetwo.com;
Received: from de1-emailsignatures-cloud.codetwo.com (20.79.220.33) by
 FR1PEPF00000F0D.mail.protection.outlook.com (10.167.240.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Tue, 19 Mar 2024 09:55:26 +0000
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (104.47.7.169) by de1-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 19 Mar 2024 09:55:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ANhFyO7jTNZC3anIVzVnpS9oMUwyxL/uuTsWKoqg6ExXaejBsTJ5ty7IhfqtR92cGj32o/S+2UBj1b1bo7+wtRrFLSLGTdDPSUzxw6vlXkFLrcgdsRDmomRVptJhDXG3b7P8kvDN5HadKPstwkOShvi4Lk1efnYqpq05wIHAVnkgktHlrSFn6UcXC3+RrhzCNJDH1OXq+Lg0rvex1D91dwtctif9GS/UZQhstyxALAiIlFqZJ1bp+Uco0E3dY7bvMbdmlYRaRKXZ8yIPRLwB+xISzuYdN4uThcxx5gxR9xNyvHpOUullcqb32VdXvI5w3Z5HkV+bmmeCnyYtrJtubw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HkHxqr/3Ru2tZlIEAaQM12Yl9f/NwXVwjLXLJ0Ow7TM=;
 b=E+96ZVoSwGTOp/EMrZSLTrAg7mvf7FtAbgz7xmOzdiDNSmCWZUIwqhNZe9Q3IQjRSgIig2MtcisUxJuz9m0l30TLmw5oUkN07yQt+w6jeuAWNUnEovEum8Wlp/Mp+sQUmh4Y4MRX+YnKVV4ZN7QB9URHC0RY+p8sr3jMD3ytLGYXWigowgczvEtxwX247WRyLbMz+FYhNmBL7m7G7vD5Vxuqlecq1ANqJPwXG6QpSS0CtzajSzLR12Oi3bcOJLw/kGtM/t/KC8u+7la0yK6FRxH296Ew+NAE8mlGbIP5qg9DG23/4Q4emERokWocTBUSmyKHVdII+cGEGO8YxLNsDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iesy.com; dmarc=pass action=none header.from=iesy.com;
 dkim=pass header.d=iesy.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HkHxqr/3Ru2tZlIEAaQM12Yl9f/NwXVwjLXLJ0Ow7TM=;
 b=goFJTg40pA4v+bkTx2y40K6c65jOy6Lm5X0xI6xOR7mXMDJgYxUqANS1o55Ep8SpbgVeGeESx00EbXAdu/vTUOAC2e2tVO/HcWcqwYMGYMipTi8OVr6Tz7fbUtX36k0kQcuu5w3bJJ3JOW5Emg3I7OKXPd+rrdT8YZt+jVaz3M8=
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:39::12)
 by FR6P281MB3872.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:110::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26; Tue, 19 Mar
 2024 09:55:24 +0000
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851]) by FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851%3]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 09:55:24 +0000
From: Dominik Poggel <pog@iesy.com>
To: robh+dt@kernel.org
CC: Dominik Poggel <pog@iesy.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Andy Yan <andyshrk@163.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: rockchip: add support for iesy RPX30 SoM OSM-S
Date: Tue, 19 Mar 2024 10:53:59 +0100
Message-ID: <20240319095411.4112296-1-pog@iesy.com>
X-Mailer: git-send-email 2.30.2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: FR2P281CA0091.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::10) To FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:39::12)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-TrafficTypeDiagnostic:
	FR2P281MB2393:EE_|FR6P281MB3872:EE_|FR1PEPF00000F0D:EE_|FRYP281MB3225:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:
 aw0DgJVu4uExVLG+TwFcnEeAfQdKW5aBfxZcb4SIlRm45zTvF81WeAZz6cCTxDDvAYA/OYOz8jbN4WFkDQEMjfLycYxSFTlToYVnnMUpEiCBV5XquHl4B3bqcOZ+i4ArDFIWUyP72SI4fYdHR9BOLC5Wf5sdzY2kxEeyhsJGmaqNVz93cLbdiW957KDYbH0P27Q4VS6H972rUd0IVmlFjkyywj5L8TDZfMpEAI4LBTfcvg9Zm0hb/kWOsykVDNrjoynbit1yBXHmXQLmC81M9Q85FhNrNt0HNzEv5r+QcSuRqY07VS0xOGRy3PxH9fdWtBe2F9wjX4RqYlrKm5MUy8Bet9d7ul568HQYNmUaQ3OVEzSCWBgR7NCSFQ+wuVMMzg799VPk1VOn8seQMMpiv6O+JMYehqHVeXjpTJ9kXV1Nyh6TnRgrLJ4QTW1pEru5Ikh7okEV4q0UmHXfId38sLZ8YljFUiDmoi/Ekb57ybNWbdNvU5Pf6N8jK6LnjUAB0m3ObHjcSzHR0YpNi7GcePJpI0GZGlsqo0+/uZXA+eUXm4K0KF0X0/yw6mWR+bUlWW+WQ9psB+7cMoiPTOkahsdptKFA9RNPh6zLSdeKZTU+CjbFL1eYf7ghIaqDuaEtjaCbJp1rk7luHeFakEseEh7z9KOl8ciwWpq2C21XQ6WIfHWZVEqi+t7es+cjQeT+h/Lz5RNxxejLkH+szFd5jWAwsZIH9BhpyeaE8YLtWY0=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(52116005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR6P281MB3872
X-CodeTwo-MessageID: 7ebe883a-34ee-47f7-97ba-79aec98ec863.20240319095524@de1-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 FR1PEPF00000F0D.DEUP281.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a136c877-b2b2-47ac-8a91-08dc47fab3c5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	VmRbLIkQd67GaY2o8UaB+2viInb8QqBosCJEpk4tuWOQRZ0oWxTmqwYV+Z4JMJuWpkJcTflAkBN0H/eNI9e8CQazwyqJbiRT3Z8afFc6CZtr2wt5tt4BHuvjRXoHOM8fawefvNoEuVwlCD8UC1pb6hHmlq6nwlaYZ4DcU8wR1JocafxQuVH4kblUJdMAfqx9P5gucehJCqucKhvBsOfU5WKsJS15viaZOORpbWRpqFpV5Boitr0ggWe5Y9P+7b1mwmVnHU8oPVfFL8z8bLRJlCcc11x8q4khoAO+K2ATorol7XrONIdhnFVY4fAsd/+yyzBOnMOlbX6QzWMOJPiHgBFLoGak2Rz2TN46rmsRf5TRSoNYeGECmSFckKFv+0zGt9006PX30XHfjOcp7iSRXuG0MbVr1bQ/wwb+oC3KtCMx3xfh3NflZR1Ed1T3Bzfy/k+Kn+fijmpdmoAr6ccLlL0TVqVhp1+SHbU7HySCFPc6QX+1qW4wm9sC8L2IDGbPife67CFRg2KQvNlPqQ83ESgRaAwM+J9jiHVZJE+j1oZvGZBlAlMCxK0iNCqvymCA7L8p5St7vGzolfQzL1Oyav14VDFNa12Sdj8+RIUU3YJTVp71iiBj7Rgbn7ya+FMnjR3byivwm430aGpUr93lFexMl8W7ymoCeRmdaGwX3RI5XQ9h83Nnv5woARyWc53vr+yRymASn7dDdgRchyeneBp9y9rqmXgQK3jaKlxXMEg0+e5mXZlxYvkcatCI/3HX
X-Forefront-Antispam-Report:
	CIP:20.79.220.33;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:de1-emailsignatures-cloud.codetwo.com;PTR:de1-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230031)(1800799015)(36860700004)(376005)(82310400014);DIR:OUT;SFP:1102;
X-OriginatorOrg: iesy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 09:55:26.2294
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a136c877-b2b2-47ac-8a91-08dc47fab3c5
X-MS-Exchange-CrossTenant-Id: ace663fd-5672-464f-8169-8d373312f6bc
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ace663fd-5672-464f-8169-8d373312f6bc;Ip=[20.79.220.33];Helo=[de1-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: FR1PEPF00000F0D.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FRYP281MB3225

Add dts files for SoM and baseboard featuring rockchip PX30 SoC

Add iesy GmbH to dt-bindings: vendor-prefixes

Add baseboard to dt-bindings: arm: rockchip

Dominik Poggel (3):
  arm64: dts: iesy: add support for iesy PX30 SoM OSM-S
  dt-bindings: vendor-prefixes: add iesy
  dt-bindings: arm: rockchip: add iesy RPX30 evaluation board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/px30-iesy-eva-mi-v2.dts | 682 ++++++++++++++++++
 .../boot/dts/rockchip/px30-iesy-osm-sf.dtsi   | 362 ++++++++++
 5 files changed, 1052 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-iesy-eva-mi-v2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-iesy-osm-sf.dtsi

--=20
2.44.0


