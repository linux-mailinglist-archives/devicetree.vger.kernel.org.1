Return-Path: <devicetree+bounces-246116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6601ACB8B98
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 12:36:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 803BD300D43F
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD36B31A568;
	Fri, 12 Dec 2025 11:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="rXdoLj12"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013000.outbound.protection.outlook.com [40.93.196.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17816482EB;
	Fri, 12 Dec 2025 11:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.0
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765539329; cv=fail; b=P/zZMk3DpqdlVI4A8UtWtgJsJKH7uuyVGGjhJtTDg9ndKWFD95Wn8I2ApeNRNFQetbL0SYtzy5UmnNRu0eHPfuLYUZGQ/mGHfZsUfPvcEF3P7/zV2NFb7Pa0j4Cjp/+hyx1QioFZfTLUu3jqwB04aT0x0EpiWCwCvq4htLKVvFw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765539329; c=relaxed/simple;
	bh=8Pfyj7eMeIXQySOHuLAf3VUPEpBNe+QekNQBUt0ROtk=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=HgjwG9+nuCerHwci2Hyu6NOi07r/uFn/UgYSFXfsdGE6umamUofLy7iGq1Uiu/2gLKtBRSU/ZqDah2JkuYpyFNEUxJ/KQydiCJc/vs7jre++fIkHk108WnEOmcqn5GLx/NA5yYRQmV3056Qks/McNBAzkNWOfVPl3+dlyblxyP8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=rXdoLj12; arc=fail smtp.client-ip=40.93.196.0
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q2s3XxK5aLtRC+KlPqpipCyb8WeVjWoGEorporiXAomFLE8SJj3C/iWTw6icDuoA95YyMp7QWpaHMcp5NXHm2Fzd+2ZrfkKRDljqudnpXD5nUMNBcCZ+AeUwzMkujLwv2SrwQMrqw+P1YbKmReN/DaRSFsiHQBf+6G45+bwU3MqodsxTpRnleMH0PBXuzUdf7+065zFFCoFPKxlif+5y2L9Qb8lEmLn9Rj6ezY9Z4nroVB3xKs9Xx03nA57lUxPTrpvT8OMzu6Nh09xtZhAtG8WCDC0Kj/7clWyKA8MN6qX0BCizJ9NKBm3wCG9TRCc9xJpN64CX8uJeQBL4MWY/NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YmU3A3kbKLrcpv1UPnwOq3nHh/vf4EkiZCBXiFWZZyg=;
 b=n4s+2P521AxPZu0G/vgR57w+QCzGEx0ldhjY4sw1MATo8EHT25RxnqEA1RZSQ3Sik0RAVFaWjNYRM8oigR6llNHTQLvim/TM5q1X8iC344xbPaX6Hq/G8g0p+ze94pZDFzTlsyB7cB895Cu29mSQTGzWZmmPLCCCtfloDjZc7xApFQMUtLen6H89qfoMINiMcJTuSQf6z7RV1NW/JCGipBpPnvbFQxUEf6nrW5J4OCdoNRcr9yjeuyhfYRdSLGTdcDFNsKLBDEdChl3Ds8GZ0IrDefCKH3BoNnlLtYcXCiy9gKyXgh4ukHWY9o7UWKEzMPrKhJhQloU74Z7GwJ5BuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YmU3A3kbKLrcpv1UPnwOq3nHh/vf4EkiZCBXiFWZZyg=;
 b=rXdoLj12s4fqH4Bd3og9CIsCWpxhojgjznq3/j78UpXJrQC0wCvSiOhHNSdg1PECm4SIMrBtdVtpeIklB8gb/YKOn55DSwbl8oiJQuWeuCNd7TRjFkS/cL32Qx9QUPBuTdKo5TKNgt9+uIrQiCjX01mIXB/M6s8VjPAZ7f72F5hGLZvbeSt8UKHuRLXQnHdhrD16+PHJ720TiZJ8qyvUugHhu0WIpRyWN/10FdN9tWwTwQUZqXyvk4Qc+wPoPuqn0fn7lZrouA7bxT5knJ8F5hw9ej6mcbEriaEauC4LEDsF1QdU2mue12J1wECyUFi7XN+8U8s69pXlPphz6twoeA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from MW4PR03MB6555.namprd03.prod.outlook.com (2603:10b6:303:126::12)
 by SJ2PR03MB7473.namprd03.prod.outlook.com (2603:10b6:a03:554::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.12; Fri, 12 Dec
 2025 11:35:25 +0000
Received: from MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb]) by MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 11:35:24 +0000
From: hangsuan.wang@altera.com
To: linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Thierry Reding <treding@nvidia.com>,
	Lee Jones <lee@kernel.org>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Andrei Simion <andrei.simion@microchip.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Mahesh Rao <mahesh.rao@altera.com>
Cc: Marek <marex@denx.de>,
	Simon <simon.k.r.goldschmidt@gmail.com>,
	linux-drivers-review@altera.com,
	Muhammad Amirul Asyraf Mohamad Jamian <muhammad.amirul.asyraf.mohamad.jamian@altera.com>,
	Khairul Anuar Romli <khairul.anuar.romli@altera.com>
Subject: [PATCH 0/4] Add Device Tree binding and nodes for Agilex5/Agilex SOC FCS configuration.
Date: Fri, 12 Dec 2025 03:35:18 -0800
Message-ID: <cover.1765534135.git.hang.suan.wang@altera.com>
X-Mailer: git-send-email 2.43.7
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0372.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::17) To MW4PR03MB6555.namprd03.prod.outlook.com
 (2603:10b6:303:126::12)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR03MB6555:EE_|SJ2PR03MB7473:EE_
X-MS-Office365-Filtering-Correlation-Id: f7b1cf21-4f44-4e66-b720-08de39728a76
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?pPHgyuUgVX+2SZe4/4+bh5ovDMkwe2dYsOYQD15fPfTNUzbycLdCcwoX9D5F?=
 =?us-ascii?Q?Ausv65CZr2EpH8CYsBO1dbkXsf5JbJ8YTOd//8Y6jCz5dCRIY8psO3wxespR?=
 =?us-ascii?Q?b39SqwlzCf0gSqhw+PcEaJEZgCN4wEOcLc5NRQyJgvxwdbIptr8wEVZNA/qY?=
 =?us-ascii?Q?QlBhMskrfT24+CIStFr4af9b4bH5cac2xCBDfBkVbJJHZm4w3JO/6UZinljV?=
 =?us-ascii?Q?21OcUzdUQ885fqP2qPlxmalSKQGabPA0f7VOEfg3mpk7hLIikpfPYwP9Mbn6?=
 =?us-ascii?Q?8HduPLu66JjslBgaxM39mbNOaCvD4EzUlSAjzj+50KnSTqSLSyQKGd0ssPWf?=
 =?us-ascii?Q?6E6zgEfe1toAprCfhkeymEE81YmSKJimHtu22Qr1qgoNClFNH9aaZ25uZA3K?=
 =?us-ascii?Q?gJO3gDDNVMG0AcnpfYb6BaUusgiImoWVduxuRr1Ifaim18gur3Af6hM9Cj5y?=
 =?us-ascii?Q?7VAcZ9qAbWev+aW9A8mTG86iMPTuCBqT6Ev8PjKPoQoOeNTTMs5rk7qRFf3o?=
 =?us-ascii?Q?gFrQHSTjNi4k2Dg3cf4+uNTcyVFXxib0WRPmF81LIEwWmgfRGM+B37dc2dBJ?=
 =?us-ascii?Q?G46/la2BUz2j7DtNcqzyPfArqCWQfeDDrl6hbYKeGRF4kvslz+5yRkagXnUF?=
 =?us-ascii?Q?oTE0LxUNqmo2InnDBHMsyOediwkUgYjH1naHQkiGACcqdfWdqNVsFto/B6Y0?=
 =?us-ascii?Q?ozSwdMhTMkYNrEUkMNbYKDztooT+ztQWkbiEk1QXyeajG32BStVG6Nbbk+D4?=
 =?us-ascii?Q?BWzLx6UoCdku/k1UCa7J3Ot2oSvm3JVXCdRZ/EwHqYHFMweDdE711RLmeqbr?=
 =?us-ascii?Q?yKs4xfyTCYuVKmziT55kxkYcTx+iHzbbpWYhrPDw3qTliUTI1X25PD0NyTBS?=
 =?us-ascii?Q?hJk7qcbfSrS587hx3vjAJWOKhQbc42gFYU9xplAYNgeeLk+7gtN90ZT6kAnT?=
 =?us-ascii?Q?lOr6bHI5fdokuCMvsAxtQ3dTNF84iwzdwyMxxsHzV+SZp6x1i2G8oJ5lzoDA?=
 =?us-ascii?Q?oZWO9udafhq/jxm5kGf/rwle+sbrPZYpdSE5na1Z7zLmT1EA3UTAvdIaL3Aa?=
 =?us-ascii?Q?zTXWkZdQgvYX8sAe3y7DwqUZlaLLIpqh9+CNSdAFRztjUdQx/MTOF8hyVfQ1?=
 =?us-ascii?Q?pBdMOt1lDvJJQGkbpVtNm6hoVZhtLggb2Oskms+xFJYwt2RJ+KnOvTbhN/ph?=
 =?us-ascii?Q?gyQ4sRzMO8OF4W2XRtiXEI5zShms9ntxzacN7Ke5p2/afMpxNDfiJ1I6F3GU?=
 =?us-ascii?Q?jvyP3l4esS5bOsgaf15u+8z4qoAX9/LNPpsUHnLXukPsINeUqPeab6UilFlv?=
 =?us-ascii?Q?as4z2l44H06tXfOO4cda8hKyb8ajyZ2zgora1KWD8Ctbonv8KWlsJmhdRqid?=
 =?us-ascii?Q?M7+MmcDKomwkBpJ/5sPxcRAJtBPln+j61ZO3KYSUlDBnlfU5lt3x42KFyj5l?=
 =?us-ascii?Q?T9HiF2jnckmFF3jYi84nRTE6jalwUtnVwAWYFYZ4yw6vWeEg4L0jf5itc9o4?=
 =?us-ascii?Q?4uUU96OltSVBF+ZS9T+AkZTuJQ+bkrNCxqPB?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR03MB6555.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?ApZ48PMCmJOgi5B1Mb1FUSl8NGJ0uv0I1U5J55yYONn0rrAWJ/aW+pRXWa4t?=
 =?us-ascii?Q?uv3KtEK50XswPh7uAuG4eWTuyTwea/y5GeCiOamtHMjC96c8EfLxBKJQTplD?=
 =?us-ascii?Q?Awv+eOK0+JSZD6MJmhLNGnOqBvCdCmdPf+dvnHDTnwI14XmRKNUgYWzI3q06?=
 =?us-ascii?Q?y+KF7t/PC6eUMoUics+UUgRl8BgJxHY6Qmg1Rt36jFTX+SSshyhOD78MbEgW?=
 =?us-ascii?Q?8u86s0HYdDpmpDU+NlACNxvAqEdlyw8SM+/0yt+k+PjB4PNDz1TM4IwzoIrZ?=
 =?us-ascii?Q?qQw403pSF0FI0RCHbDy5xdtwzwj84ow5ij/XBkMvq/LQihL1MgjDouVJlLJj?=
 =?us-ascii?Q?KPeCIKpTt7P/97Wt2VHASxbikBXqZGGP1kD9T5oBw6v+j7DHt8bqRXorkQ0/?=
 =?us-ascii?Q?bhp+0Ht+iJeTajJVXKAW8TxOrHYV+obh+Vgg1mdOZNs/SXeVdftoEejiCxPt?=
 =?us-ascii?Q?enL2923bm5ZRcE6kIQHYHmgkwH8uIMJP3H67YRdrgBJIeXDANYOhAmbMXWlv?=
 =?us-ascii?Q?QMSVYAGrlz7qPrhACUqMHYE/PktSEVRESBDglHSO4R4IZ107kg4bdCYqbHoM?=
 =?us-ascii?Q?I72nIB3RbXwS5VYoFbqNrxCvkAGoyrpf45vAmyFC08G5fgSIZunQvdO+4V16?=
 =?us-ascii?Q?GJbBvk5qp9imiMCPOfZhZY1KzVRmn6SXmIKSuR49U9xSpW5R2++tCa+YmE7F?=
 =?us-ascii?Q?QZanYRQYt1d4orqrQlTr8uxGHMAZyptbIYQ+pOeb8hy0vCZrOsY4PhkZ6lvH?=
 =?us-ascii?Q?h4qgK/8QYmQHLS7Dy8moOa8amqIPIb9PN9+NkGJlSXVDGcTuegFXVw6Ee2cr?=
 =?us-ascii?Q?dmV1D7ckyecq06YEOUWRr/5S8jm4bEzal5ZF91FZNwj03JpdrLOa74aGtQGh?=
 =?us-ascii?Q?2b7Bdl5wuja/0T87oSfNVGDc37SxL2k4EZXLgstlWrNyG9jRP3UTPOeu90o1?=
 =?us-ascii?Q?5Rh9cIxrYu1CqVZv/lmYE76CXtynOwbXbYPkI7giEQKD1ehYS8oVE0/5+zHf?=
 =?us-ascii?Q?di5qT2DzYbjJ3x/NmhxpS+I3Hl83xuMgxeRO+mV9HERpLvv40TxLsIitdOCa?=
 =?us-ascii?Q?82ur9Bm4k78SsVRsxHvIOwXNmkvEvCwTHTLgi/L9PYnKCYj5b8q+XmzzsVUW?=
 =?us-ascii?Q?RapP5YOelQFVlcu89kfpasgP8iH2N7yS9WV1GAkAaKGQ/vJERZQYIonmk69f?=
 =?us-ascii?Q?UM7Jby4Oz56y7wA/iCjXd2bHe3JI3BSbg48iZ9IvBfwUTukliwv3h2ElGBwp?=
 =?us-ascii?Q?UxVQalyL5EiykUkyq+JU96Mt/gb4OHGjuGydJYFf5sT5iB5Npf5bIIL0do/w?=
 =?us-ascii?Q?iA+WHKArSwrm0bN3GO8gQH2oKmkYS+2Y2b+NxvdUyL1FcvJ6aBKoDfKUpBI+?=
 =?us-ascii?Q?cgP7hLSHejhey6dZYdl2xJNtpNWKOTlDwzalggSAnCpEfjY6kWwxccW1+yrv?=
 =?us-ascii?Q?kM5Vf+tW0Ystyppg+K7c9/szJP5jmCwUw4nz05rDpC5lQBViEr2VKF/Nv+/B?=
 =?us-ascii?Q?KdZuw5yLZbOeIn1mS9WrZwzVWLKIgZhqAyupPzurQmc5ip4+dJCgvjov24+f?=
 =?us-ascii?Q?Wq1hwteqfqiziQu0zpdnB8gYYX+oW9sM6GF21cVW3AtEFf6dI+ocMGizq683?=
 =?us-ascii?Q?Zg=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7b1cf21-4f44-4e66-b720-08de39728a76
X-MS-Exchange-CrossTenant-AuthSource: MW4PR03MB6555.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 11:35:24.8252
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R6X6r9/KSBKz3YWnihDc1n/qtq8P81/DAVbxbFJT7AoHp3BhWKOLGScEL/EuLUfYia+H9g82Kyhc4sxBUIA4e4raxfZ6oI99KTwfUhvgwrY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR03MB7473

From: "Wang, Hang Suan" <hang.suan.wang@altera.com>

This patch series introduces necessary Device Tree (DT) support for the
Soc/Hardware FPGA Crypto Service (fcs) functionality across the Altera
Agilex SoC families. This feature allows the kernel to identify, interact
and communicate with the high-speed FPGA hardware without interruption or
software overhead.

The series structured as follows:
Patch 1: Introduces the core YAML schema binding for a generic agilex5,
soc-fcs-config miscellaneous device.
Patch 2: Add fcs property to the existing stratix10-svc firmware binding.
Patch 3&4: Add the fcs nodes to the respective Agilex5 and Agilex DT files.

---
Notes:
This patch series is applied on socfpga maintainer's tree
https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19

---
Wang, Hang Suan (4):
  dt-bindings: misc: agilex5-soc-fcs-config: Add binding
  dt-bindings: firmware: stratix10-svc: add fcs-config property
  arm64: dts: socfpga: agilex5: add fcs node
  arm64: dts: socfpga: agilex: add fcs node

 .../firmware/intel,stratix10-svc.yaml         |  4 +++
 .../misc/intel,agilex5-soc-fcs-config.yaml    | 32 +++++++++++++++++++
 MAINTAINERS                                   |  5 +++
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi |  4 +++
 .../arm64/boot/dts/intel/socfpga_agilex5.dtsi |  5 +++
 5 files changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/intel,agilex5-soc-fcs-config.yaml

-- 
2.43.7


