Return-Path: <devicetree+bounces-76780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B4590C01C
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 02:08:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA6241F22204
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 00:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D0E3368;
	Tue, 18 Jun 2024 00:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="lJPE0BHT"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2063.outbound.protection.outlook.com [40.107.114.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E444C84
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 00:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.114.63
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718669319; cv=fail; b=l3TZqFuZ4VW9xsEAdAj3jsZPk69NgChDeRoDD1lacnFy3BwZwqcVjmju1EflBlgH9ifF+OB/bgOgzE2T2rStXXsI0XRZQstdZp2PBIgm1CVUw4D3og3J6P2tfuaE69smdQ/Bz2m0eo6h1AuLIptuZKG/+4Ii84oeSDz+3irJTVk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718669319; c=relaxed/simple;
	bh=xvarnRFejfk3Gyqgl2je1VvQRqe12XoErykgpvWi+Ec=;
	h=Message-ID:From:Subject:To:Cc:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=YAO88iO3lT/QVLe6EtoCmnfCXArBMBUtwUYccAr9OqwlX/lvSpjY45oVZDk2LRizA4GQjSOBMYxJ2Vr3hZGR21bmEmogCagU1qNwbIiE6P2plxkqbIk3ok1snSUq/N+EXWO2y3zbRy/haqdgPG8f4D9tJKzr9f2oldIDrXuwSl8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=lJPE0BHT; arc=fail smtp.client-ip=40.107.114.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CM8FdhCZOvNJjLSSAvaLahUyCqkaTwkGgCKUTEEo2KpTcxisK6dzDI3ThHP7oPBb0MWYzq5/8BdUeO4vGDqqTlx21+vI2qgJ3IZkjImQOMp/zka1mV/bmvzNqgmXRN5HDvBwotmwAjkku4J9xFUm+Bzh1+sqSA3FjkL7vCNu+0cOzRY+WRAMi0rjOK6y78Re4GikoDfexOaeSvO2CWYVnM/4UuvlV/Hp4wU9RTZkYnJCdDfagViX1ECdmrlHOTxzKeSBMj9MP61l/ppX3MFHWOCCv5AtyrAV4RA6r1Yqbo70b3Iw3tgvf4Ww9YXKxiUjoyjMlORAh8WHk/3WC/oiiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3CFC4k7fGPIj/aFEjQXFLDqVf+00YPWkZABN5rQ3j8A=;
 b=XkyPzYJrgWD4QL8mxTTe1UsShIvpJ21dJFEXO2qEUMLh8frK9Q9DzzbWESyfjgNrVOEgvO5IWqnGoTzif83+DQltKAr3MkHHkOJT1l5NkRCDLtBcZ+VBqozBxt87O69D5nbWX0jJGVDnFDESQaXqfn4raW2JtQb0VmWmPwVKPiF7vC19Nw2gkKJxSVfJAQMU3SEmViK0vM3QOiS//QmPow+TZzVoFzvXnxoxLcHW1BzrEINfNUIXrlTnees+jzG6cMbjF48QFHbHxW2rd8y3VY6nS13VsQCQ+JP/MYBrC8ST0Jk4aPjw64fHmcroQdV+IbqPJIymKbVWl3HZY+s37g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3CFC4k7fGPIj/aFEjQXFLDqVf+00YPWkZABN5rQ3j8A=;
 b=lJPE0BHT7XdlpqEWHMvBxRxVztnQKwIn+ivKABpKEqF5Pc/TPhGcnlTiNoIm/714BoEVFgzXNka97vIA9hM97m9RN4oefaGoQ4HmMi9qcRpubeYOPHOipCaZPYv/dwd6e+zaDmtn161/jtP4I8VnmM7W6obOkQ72mwJ0BpXXFvk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYAPR01MB6362.jpnprd01.prod.outlook.com
 (2603:1096:400:a0::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Tue, 18 Jun
 2024 00:08:35 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 00:08:35 +0000
Message-ID: <87plsf3yf1.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH 2/5] ASoC: dt-bindings: rename ak5386.txt to asahi-kasei,ak5386.txt
User-Agent: Wanderlust/2.15.9 Emacs/29.3 Mule/6.0
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org
In-Reply-To: <87sexb3yfo.wl-kuninori.morimoto.gx@renesas.com>
References: <87sexb3yfo.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Tue, 18 Jun 2024 00:08:35 +0000
X-ClientProxiedBy: TYCP286CA0233.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c7::19) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYAPR01MB6362:EE_
X-MS-Office365-Filtering-Correlation-Id: f80490cf-bf45-4b36-039d-08dc8f2acbeb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230037|52116011|376011|366013|1800799021|38350700011;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?/vJsi/FbhiDUl5CLYbNKmdG/ghHbnn+qMh07T4gS1ywGKXKdp1UqRFsyp369?=
 =?us-ascii?Q?0CmwsLxzFqiQ62ArzKvy0cfg5IHWkSu+WhSzMac1bhHDbjNAJ1RxYW30z3hk?=
 =?us-ascii?Q?przBIKWJMlUZeYh+XgM5F/RTcw6HAN3j3EKtmJOFprTILxWw7qWcumwpEDiy?=
 =?us-ascii?Q?I58hHOZvDPaJdq9JVfzsoy27a5SynTWWCrLNAHIxwW0Cd9X8bNA9AiXh8Jpe?=
 =?us-ascii?Q?StAdOqBpwqK/HoOfFLyXb2RXOE2vchAXHey7E//xWz4knUL92el1oLl8gOU3?=
 =?us-ascii?Q?5KJAUIdSkhtRYW6wb6NSOLkcAC5R9C9uHyGNRFkUOEe1+mDmEr+iQ29Vffu6?=
 =?us-ascii?Q?4HvNuwq05w96R4H9TsdkZwSkd96FGFED2R++g1K0hui68ieHvRpt3zEpkQR8?=
 =?us-ascii?Q?G63adBzjXM8Rjwm8D1ufS7KE1GwVE3UGH86by9FTQOX52dluUep/0tHDVX23?=
 =?us-ascii?Q?YVWlIyQIdG8IdE5L4ON0cqYuWib+4edlcKTh9LuhvSywb0i+dvwYB5xmFVNi?=
 =?us-ascii?Q?2jHxCPVKvIp9zoK2JIlcSTR6JPQMN8+8R7JZpg17c26FdJeVobZhElq+6huJ?=
 =?us-ascii?Q?IosEnL8VItj5Uic/G2i8h093zMNJ+3jFQKEqYU/OvLK3q0rfQ5NnuBTYi14Y?=
 =?us-ascii?Q?o+HNoVPpddMnHhJfIpSBE+bfh+EWqzvsxcpgWfc00sEpuZ4r2f+DYOrPNo8z?=
 =?us-ascii?Q?xyEQCphd9DVcOIWyKlzBVcyfBABbRR0Tek8LDBD+3YKk+TtRsqPyYYUPYJEz?=
 =?us-ascii?Q?ZI4lzKz9sttZGkoG//yV80cz6LtH7/OBIkNb1fcORmk8TpR8euICise9+01i?=
 =?us-ascii?Q?us675nlic5fm9R2/AQPgbbDTw5KasD19Q6TdaPzjtIQ8onJoFbQRX+b1Oqwx?=
 =?us-ascii?Q?SKgeHM/jvdKyp2nM7pNNHLO5GXsCaox0xH1lz6qXXYuQKoVCAIdFI3j2HDQG?=
 =?us-ascii?Q?93FC22EIGj37JfbblILmVXcby6tH79JpodQnmVq2EnSDxQwQRiJAc5tsowHL?=
 =?us-ascii?Q?s31iHDz/njBmoDWsX7s3XHdtPX7uR9/cOokdylBo/fioi6XzBV8MWqqLHwi6?=
 =?us-ascii?Q?7RweFtqv4BHp8e45MQcOdOXu/CB0iPXRR+gysmb43IP5+ebaLxP9H6KKzw2C?=
 =?us-ascii?Q?c4WCqsgTVtOUE/p+CFgOnSYjITu6OGEN/hwetr4TKl5nEMsfPeBdMOibPjAm?=
 =?us-ascii?Q?oGpr0QS4GTOgZv3Gjus9o61n7OJjuPwiVTMPCODXPZpfzeIP8gLe+SrQtm26?=
 =?us-ascii?Q?hdfiIzVuEzfbcNpgyX4PVew2vuk9JRQeXFXv3l/+HRbZYqH7R78B2oeCoVzs?=
 =?us-ascii?Q?bbffwo7/9bx0LqHq1OmpByFNsGfmBfHhIrpgDFrUd0ImR9Nmps4hsiztrqeF?=
 =?us-ascii?Q?P2GinFE=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(52116011)(376011)(366013)(1800799021)(38350700011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?3QR6uHr88raAJh5MYytRs7TE0Dfy1gsf+6tv0aly0DyXPWY9OJp2KXljD0pv?=
 =?us-ascii?Q?lKD4uD/7aG7MOeUQDO/Sc8EA/JpPDd4DOdGZMHvKWrpIe+H/Htuz6UkgUGRQ?=
 =?us-ascii?Q?VWEmZ9bOGKO1NyASOGz6X2yClF0VyPGJgauMbZl8T3odVz/2ec2QqAPIN1cG?=
 =?us-ascii?Q?Eoj1/iPqfnVfpbpqHT+Je0TauOdNQJBVw0o/a58f0M6pV9SrBHE8ICFgVnbh?=
 =?us-ascii?Q?cUMaqb7c2EmpKlWs25plGbVPYz9RF+IF7XzKr1IEFbTYWkzKmN2tuXrS0ail?=
 =?us-ascii?Q?w1Le2IKMgSaYD3UzboXI6Pa1igHEcom1Lq0m9u8CoByFxGjCmSxVC4b7jCDS?=
 =?us-ascii?Q?k1gYmaaWzT9VyDwIJgTrFuOLqHkBVryITGpg6yGMm4vC3McRYHfKPm5T3VAz?=
 =?us-ascii?Q?NYHtxbvw9ywL4KEfjEzLQ8+ViqNKPOEjAb3vpTeLB5o8+jqMRzEVDoy/TOg/?=
 =?us-ascii?Q?Ag6s2yvucxe0ig7TpJiq6T4yROhZjdJwzJ+tH7tEUa5buoD4eh/qNfPnfZMA?=
 =?us-ascii?Q?UQQx23iskxsTkpRBhkNqB1LoGLMOVeJf2Hm+Vk+IJ72Co16Nx20TB2Pxy19F?=
 =?us-ascii?Q?RZHGJQt86wQO5rg1Kys08SZv2dymhoL7SzEAtzCGnxje1ujOM9ghoyRfVy5R?=
 =?us-ascii?Q?fEhRLkgjH9uFFr94LercNNMF5e/DBtSr+5y8y/Ou7ijiPO7R42szszS81FXF?=
 =?us-ascii?Q?vUlqLUyPO6GDSR295Q2a+nbRW4XsnBRu2eOVGshILHPIIywLifZfKKxqXsxo?=
 =?us-ascii?Q?51OVaWexllIqukJsB9waXd23ZsSU8YWlcIZa49OvGgi9HJMib8JEHyMeUkWh?=
 =?us-ascii?Q?5Y7w0/6bPnK6owHTi8fRu1IPDJs0U9U/YGoYbisnwGdNLj39F342q9aa1m4S?=
 =?us-ascii?Q?iYZUg4di1k+BXn6c3+nkMusow2A4b5OnCJpLjPc5/M7FPk6ldamXhDQjEQKB?=
 =?us-ascii?Q?NR8vU5TC7clLw9a64E6W48QQ6NRm9auMMEAiALmdL0rWOKuw7WvdHSr13VUP?=
 =?us-ascii?Q?fcLHtNaPoju3hQiRplGfg8SNZZDi4/BmZ7a0TVelkzLLvdfaqL6whbCTRvIY?=
 =?us-ascii?Q?nRyTycTxiuydSHlJZmD6J9/v7KTmUNJtNutSo22XtdkcWmLHx+JbFwIpHO4J?=
 =?us-ascii?Q?oUFI2nbfui/qJ7l52CBHam78sQtATW2szWxOv12RlaYGzSvUYvIginPP6j4q?=
 =?us-ascii?Q?ps5RKGhw2R5rO5sx4wL0LX+JehBNLnw4d9mqUDevCEtgZ9DLGenpdHzvzt2g?=
 =?us-ascii?Q?fR3TKIY61krlSSzi0A856oBMcYXnFY5Vytr2TXoIYqnGQN94NR/vC3yHuxZL?=
 =?us-ascii?Q?T/MRhRkr2p3pEsDCpO5KpRoaa35lp3EQn7n41xdFzLK7PYJzMD9dShLNK6uU?=
 =?us-ascii?Q?2Xw8ziaBXHkW8EbV3KNPK5u8PaNZzqxlmqjflqNQCnjtlN9r6/uRpwG/WCJM?=
 =?us-ascii?Q?dCqBXvr8oxvOQN0/ohTarEWMOksrnStE6Zs8InU8jxSrQIpJilsecumzaHQ5?=
 =?us-ascii?Q?MU1ZKhvCUIAe3pwmiCzwHtDhVOn5PjimVUMMP40zy1ik+XRcafOqa3Gp5x9y?=
 =?us-ascii?Q?F/dWQ5DVkIwwE1mc/rtyOOvy0sQKT7wBKxX537i201Y46wnKK83M1/813Nfg?=
 =?us-ascii?Q?ARSp3hygk+bfAWNiydNCUBc=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f80490cf-bf45-4b36-039d-08dc8f2acbeb
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2024 00:08:35.3279
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SzF1uP5Ie+Kx2IYs36X4hlAEPcZDwHyV8ziqyRV4CQ83MO7qHa9XYURVN28o1bTGNt4q/i1DVF4mpGSSkj35cQsIx0EZBgZcLyPNT0Owtl9bICbbxEFEKShfv+O7l2xQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB6362

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../bindings/sound/{ak5386.txt => asahi-kasei,ak5386.txt}         | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename Documentation/devicetree/bindings/sound/{ak5386.txt => asahi-kasei,ak5386.txt} (100%)

diff --git a/Documentation/devicetree/bindings/sound/ak5386.txt b/Documentation/devicetree/bindings/sound/asahi-kasei,ak5386.txt
similarity index 100%
rename from Documentation/devicetree/bindings/sound/ak5386.txt
rename to Documentation/devicetree/bindings/sound/asahi-kasei,ak5386.txt
-- 
2.43.0


