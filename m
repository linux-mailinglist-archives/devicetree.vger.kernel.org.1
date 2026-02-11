Return-Path: <devicetree+bounces-264967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OG3XMj6ijWlh5gAAu9opvQ
	(envelope-from <devicetree+bounces-264967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:49:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1CA12C045
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:49:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23D7A308E480
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63D812C21C2;
	Thu, 12 Feb 2026 09:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="OIDyblmO"
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11013053.outbound.protection.outlook.com [40.107.159.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14D73EBF37;
	Thu, 12 Feb 2026 09:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770889764; cv=fail; b=s+VV0Gymb3LLKANxwJqNqNaqe5eblFmSVvP6jyksUzxWpvNgL4T2JbsIbMegACpxEkz5hiwF4uKzAInufu/KzVZR09vlGjWiseJzeR30Rxu3uYd/rVlD2jzXN/SFZuQb2oIjvRGnAsDsQLr300Weotoh+REWeSXK7Dsq7DQhTV4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770889764; c=relaxed/simple;
	bh=vL3/zzOo2iThcyj0rDBaI92a6i4BjJzvMzvpy+thAYs=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=SlNw5OKQVC0LnLEQAGp9Q5xNxUNiXOg4Zic2C41oSuwP5qZ7XV3vAxfxeDUMcTMiNaf0gh3K/CQfumUiDY0faTuEyuXWLZEjxzbvnAOiXye1ELe4BOeEJb53W0PYx5pFA6g9FI0f1HiG15hiWK5vz1W9LaRfnS+YThGSucNf1Rk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=OIDyblmO; arc=fail smtp.client-ip=40.107.159.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tdbxkFJ7kOvEt42gv2jdNa95az6hsxFWoiKuFQYtlp8abb7L/LBa5jU0acDzIOc15fj7Td0D/qnAciNAsV32GvuaiN+XUV0YcWw1PBB5wIUhDv2yLVBCyyCbtWm3n28Wv1nSj8TRVDqqtR69PIyN3oevAH2OXLgXaX8CVc4Qauv2jVLt8tIB3CsslJbEr68/X/oAKjmi/4lFVE4f4Dj0kghQrIhmQwRKtHGoDwIQoCx4sVjD8A5HDkHrGv7vHKij9fR+nLpn8YY/4nN/zBQ+6PSrP+2ZLUxfbuhdChIv3+plzrXZ7Ny47buEYLlqXkDgF+wUZSYcLbQe3oU2KAxJ2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oKXAQzE+9Jwb3i9TWm74SSyoqrfVgXnENNqr+lbMCeQ=;
 b=ShyGwC5ced8jxfJVLhgZtuKlFAh3UOg8b+W0F3Dt3UxZUN6epr55PajPHxclYUfoO0dOgvAETazsWKi16UAdJtr2VGr6FAv8uS50p1k/3OE/Ji0cM41Ow74Ucptx/dBOXkMaYiKPwkH0t88Ysy37NUVafYj4WJdgZKpXWAihojlXYDQOIincJsI3YedHV4EDl67Jr8n+fs4aUn02QxdM3fYFrmROcTHLyCUA2kPLVKuvx/jl07NVlcoJRInZtHdHHVgCE9ek2N7awpgGnDS1Q79Tp767ExypllrlNMzVVutldbjqegrNaMU5/L061BlN6+rbytmZMslUOqvaDdvnTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oKXAQzE+9Jwb3i9TWm74SSyoqrfVgXnENNqr+lbMCeQ=;
 b=OIDyblmO0VA9rQw9cW26875YxHyr8FmsCsALGiFwHFoOc3wtMuv4irpzWgT1pfu+FfYQamHe/dhv142wFH42af6ENfw0olPvtSZi/to4STVx0yJANpXgbu2dgwOQbi34CaDryld2g1o59Y2Zd1M+cy+621AK2Sk3COWBlFeg8d4fSKoMrn5Galfysc0ku6wa3heYXg1QdFboxcGd+P03XO/Ao28+qxmAVvIn15lslLYbQIelAYUkW327sAvddv9Qa+S2DJR9PrUx8JWZTX+mTra/yvY41k58wDNtwwoZcllrx3W4mxHnYV23UqJ0e3HQJtjibmBIs/HbZ4ZLes5BRA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AS8PR04MB8545.eurprd04.prod.outlook.com (2603:10a6:20b:420::22)
 by AS8PR04MB8545.eurprd04.prod.outlook.com (2603:10a6:20b:420::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Thu, 12 Feb
 2026 09:49:18 +0000
Received: from AS8PR04MB8545.eurprd04.prod.outlook.com
 (fe80::ffce:6039:1279:db0d%6) by AS8PR04MB8545.eurprd04.prod.outlook.com
 (fe80::ffce:6039:1279:db0d%6) with TransportReplication id Version 15.20
 (Build 9587.19); Thu, 12 Feb 2026 09:49:17 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9587.010; Wed, 11 Feb 2026
 23:13:16 +0000
From: Frank Li <Frank.Li@nxp.com>
Date: Wed, 11 Feb 2026 18:12:56 -0500
Subject: [PATCH 2/3] ARM: dts: imx27-eukrea-cpuimx27: rename uart8250 to
 serial
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-imx25_dts_simple_warning-v1-2-7b40e1acca27@nxp.com>
References: <20260211-imx25_dts_simple_warning-v1-0-7b40e1acca27@nxp.com>
In-Reply-To: <20260211-imx25_dts_simple_warning-v1-0-7b40e1acca27@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Alexander Shiyan <shc_work@mail.ru>, 
 Shawn Guo <shawn.guo@freescale.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Frank Li <Frank.Li@nxp.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770851586; l=1644;
 i=Frank.Li@nxp.com; s=20240130; h=from:subject:message-id;
 bh=vL3/zzOo2iThcyj0rDBaI92a6i4BjJzvMzvpy+thAYs=;
 b=m+nNIqJpyjy/daae0J0eFho5VfVLKLS2UnwCdxOyufiBfKds9t+IUIfWWfIJzv1TbMlHbcjly
 5pr4Nx01n3lCqDm5bhjAeRbEK8GP64eczhRua9W0YiEhN/ee69tn4NB
X-Developer-Key: i=Frank.Li@nxp.com; a=ed25519;
 pk=I0L1sDUfPxpAkRvPKy7MdauTuSENRq+DnA+G4qcS94Q=
X-ClientProxiedBy: SJ0PR03CA0006.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::11) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|AS8PR04MB8545:EE_
X-MS-Office365-Filtering-Correlation-Id: 48723af3-418f-41ef-3e79-08de69c32351
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|366016|1800799024|376014|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dFJkQTRyd2NpNEo1VU1vTHowTlJST1l6VFltcFNkZVd5R2hEWnFOWkNRWHpN?=
 =?utf-8?B?N1RkeW1IcHc0bzVsMzBadTllQ21OWExneXIwZUVmaW9LYjNJMFZNS3Q0VnNU?=
 =?utf-8?B?dElrRVhabnlPQlBOMEJJNDVsWXp6b0g2dE1qZ2p4cUoxUzFmU0xmTC95ZmtO?=
 =?utf-8?B?bTdNZzJBakovM09PSUhaajYwRnVoTXk5Mm84Rk5KaElEdnhtdWV4NDVTTlJ4?=
 =?utf-8?B?OTNpM3pnaXU5aEN5ZFJ6bE1DU3NKbTlhaW5NUkxWTjRiaEU1VUlHczVuRC9G?=
 =?utf-8?B?QUJUWFJCd2RjcUxIcGF6VW5qb3BFTnRpaDhIUmppQWQ5aXNGQWZ3SEFLclVW?=
 =?utf-8?B?dlV4N0swU2FnRmVuam1qZHNWRUpCWEptMFI3V3FSckJPa21GR0VSMFUwM2F4?=
 =?utf-8?B?cWtieDlUWGY1WXR1SXE2YmcvMWhtL29wM1lSdnVYdG5LcTV1cHFYZEIwbmxM?=
 =?utf-8?B?clhqSXRtWWNjeTE0TnJLd1lESWIzbmFRd2UzbU1sWTJPREljRHUrOHRSdE9B?=
 =?utf-8?B?VCszYUNRU25Id1hVYlFSaFhTR0l0WUNya3JtM05zcFhNZ2FoeUl1c3YvSm9M?=
 =?utf-8?B?RzIwemFqOFQ4cXppMHZHcjQvSWoxNEUxZkdTaXl4YjJaTk9MMXdBbkdIejBm?=
 =?utf-8?B?c3U1V25EMzg2WTgyOVNNYitEb2lIcTJVSlIwSDVoQ0JKNk9MeTNGeFhINTl6?=
 =?utf-8?B?d21kdXFxb0VEcTdyc2tXMVFVUjRBT1BmdWtOV1ZvMDFEYTc2aDBjRkhUK2ow?=
 =?utf-8?B?TUhlellOTDJ0dHZ5clhIVWpvQ3lhczFIZisvdDdUanUzOWo0UnRoOXBqUzFT?=
 =?utf-8?B?QmhyV1p1Y2R0d1lMa0RTUnowYlg5U256azcxWFllcUlsV3VTUmRoZmhHbWIv?=
 =?utf-8?B?L1ZtS1g0bWFCb3FuRlhSSFpzNm1oSEM2OGh6bWtKc0xJV0N0UjRsK2YvaElp?=
 =?utf-8?B?TmlZbkVPU2JMU29kb2RiN0k0TUo0emc1dkptY0pPSVc1dENGNTFSajkzaXBK?=
 =?utf-8?B?NXNoUDhkSDhhQW1jVW9XS0J0bDM3WER6aG9KTFFaYzE0ZEZDL2h2SUczdnVG?=
 =?utf-8?B?d0svSTFlUy81OFRJeURTSFFHcjZVN3dPN1dpVmZIdzhBejk1MU9pY3JTNEpV?=
 =?utf-8?B?WHJBdGMxcVViMzN6SUJNcysrbGZKMU1ER3IvQVpxQ2dpVnk5Vyt4RC9uZlV4?=
 =?utf-8?B?amluUU9TVUx6Z1FXazZCTUlyMnM3VWhrS0JnNThPcmRCWUp5WnROSVJ4WTBR?=
 =?utf-8?B?NXFMa0U2cmV0Z2FiQ0RGaG1mS2JLR1R1VkR5elpweXBiT0ZERWN6VkZTWVo1?=
 =?utf-8?B?UDk2K1BPcXM5bjNaSGhrVFZwR1N2ZmJBM3d2dlEzRGc2c1NJQ2tSa1RiY0s1?=
 =?utf-8?B?aDNmaklYUlhqVWhXb3ZWa0pZZDBGY0U3L3dSUDBsUmZueDZaWnBkdmpwZ1dy?=
 =?utf-8?B?YTFGZXNmc2MrenB5VnBmVFM2c0dMUWd3MytOaHhmVDR5VXNMOUptQVorUUt1?=
 =?utf-8?B?bnhWOFY2YnltTmpmaEQ4Y3RiTGUydkF4VE9NUytrc0RDTDBLcVNtQmpkdWxD?=
 =?utf-8?B?ck5SanJ4RHhmTzY0VGtKK01mYllyK1Nnb2VIVGFYalJZUVk3TGpLRkMyUkIv?=
 =?utf-8?B?Qk9KcHZidmpmazErSVdWUEtNTGJjKzFSN2VUbGZtZUtIMTdzMjdMQi9odkNJ?=
 =?utf-8?B?SFRtMzBDcXgxSzAyTVEvekVDK3RnWlV6WThRckdVVGxrbmdUV1ZzYmVOVS95?=
 =?utf-8?B?emJKancxd3dCQzVUdWtTOFNwYTIwbUx6OGM3cEJHekdFajl5cWNSRnlFdlZ2?=
 =?utf-8?B?MVJsSEdVUXhBWUptaFpDdmNwQkxUVERBc2kzK1JNay9ObWVSY3pweWErSTM3?=
 =?utf-8?B?Q2RqamkrMmVHc005b0xUVUs3Vys4VWhRQ1ZKUitUSGdYUDY0bFdvZnh2bStW?=
 =?utf-8?B?Qy9seThOL3IzTnIzcnNkYklCdngyU2ZJUThuTTVIa0dNUno0RTY5QnYwQlpy?=
 =?utf-8?B?MWJoZVVQQlBpSkQ3Vk5Wc01uemR0Y2dsd0g5WEY0eHlsNitDOEI1WHpjY3gx?=
 =?utf-8?B?dGgwbnRMUjRDdlFtaXRrR2c5VldyckhBdmU1WDc4TDVQUklOeUVNUUZQRHJI?=
 =?utf-8?B?cno5RHhOaXJGWUp2VXpEem9Rdy85R2Y5NU5mcW9vbTlUM0VVaVdlRTlKMk9x?=
 =?utf-8?Q?+uPQVgkBD2TKfH9p4BjQB7E=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8545.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(1800799024)(376014)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ODdjeWxESVdMZGhHMzg2c3N3Z2JXSW41eStyR3JjRE1JdXJiVE83QUxkUVZF?=
 =?utf-8?B?YjlqV2ZjaEFPT0VXaWhNK0N6KzZXNXVaSVpNc3JidE43QjRNWlVJRkF1eDZH?=
 =?utf-8?B?WXFna1JzQ0QzamdyNnpCd0xuY3VTbkJVL01SWmVNbVRqRE9ySHluZnBUZEF0?=
 =?utf-8?B?dFlLZDBkMzI0S0gyUzZrOEFXSFlrWmdqa29QUjByWUFXbnM0L1VmblhlT24v?=
 =?utf-8?B?aE5ZUzRNQkJiYkcyM0xxZzJXTk5LbFdKZ24rNUtOOGN1Kzc2S1JNbUdLVGQ4?=
 =?utf-8?B?N0szaUY1Sk1RcmFmWW00dFBZd0dGSElqNThNV0dXUFNsVWtlZlhsOTNWcXp3?=
 =?utf-8?B?Ykp3MHY4WVZSTG9oNE03RVplRDFKTEhWTjZaaWcyby9RVDJLeERneW1JR2xK?=
 =?utf-8?B?enVWSGxZN0lpL1luZlcyamRXdWZYWmJ0VzFBRDUwYnJTTjdTNTRXaVhIUmZO?=
 =?utf-8?B?ZCt5amh0Y0J4b1pIaHl1UG1ST2QxQVdQQW9wVVBXekV5MmYwQkVKVUZOa2Rx?=
 =?utf-8?B?UWVMUVpHd011MkNiczhOYU9XbXozdDZXdDRBZlZjT0tuNG42d21GdzFFeldm?=
 =?utf-8?B?NkxLMjIycGpEbThmZlh4blBPVDdVTUdHcS9rby9sSzBnN2ZweTNSS1JmL1lE?=
 =?utf-8?B?UldLSHVKS3FVYkNtdFI2N2J4eGVnOTFHSEpocWZKdlRKb3duTEJoOHZmVlRh?=
 =?utf-8?B?V1ZWMjg1bTJHdVQ4MGZ4OUtKeW0rdVIraVpRdE1OcUx1SG5ETHFIYTBXTVFh?=
 =?utf-8?B?eWlhSC85Yll5RTZURDNQNnB2TjYzdGpzRVZPOGpMRmM4TVlJbjRVRU9RQTZG?=
 =?utf-8?B?SHBWZE0wdGt6OXJkT0F5M1VWa3V5TkhYV1FoWmorV202ZUhXd0RNTDBneXZI?=
 =?utf-8?B?OFFvN0x2WGsvU05aOC9zbGgwZUNiU3JMV01rYUUrY2YrN0lmdmJDa0JtVVhV?=
 =?utf-8?B?eVhHWWVSU2ZBQnlYOXMxYzJHL2VwMmJyTmdJcEZuK0g2RTcwcjY1RG5PNlFs?=
 =?utf-8?B?Zm90S3VHSm1LWEx5bURmRG9jRnZ0RW9KWjE4ZmswbzViRU9QRExnVDNpUUt2?=
 =?utf-8?B?NE5vblVIdEVKWGtIMWlGc01YamRINmZPU29uS1U4eVNISjlIY2FVbzhxVm5S?=
 =?utf-8?B?U00xL2tMR3Q2aEZjUHVnOG1yblBySHVGME02Z3dob2RNQXhDMUlBVHhwcStw?=
 =?utf-8?B?cEI4Nk83VXZYczhlUGhKRnZ5cjVHUU9ZdjhLZmd3bnp3c0E2RDZJclFHVi9R?=
 =?utf-8?B?UURmbTZQSk5CcU04dXdMMDZwNnF3d1REQjZYbkdKMHNkSkxPU3BLNGU0Q1pL?=
 =?utf-8?B?dzVzZm4raktmT1NMOS9FWnMzV2tLWlRVeTVqTXh0UkUraHZvSmxMSExtSkto?=
 =?utf-8?B?UUZIMmZVa0xud3QyWEZCVFVzV3ozWlNkL1RsRGJLcEphQmFGM2xSY2F6bW9V?=
 =?utf-8?B?cGV6bC9NcE51VXdMRkJqQUNTbVpxUFV0Z1p4bUlYOWVtTlpERTZWV25mK29Z?=
 =?utf-8?B?Q2p2cGhaWWdTOVhBbDZVdVYwcHFLNTFLNnNmSGpoWGJEWWp4SGRha1dSRDhw?=
 =?utf-8?B?WDBTbHZVLy9kZy9udGtMZ3lJemk5RHJCRktreWNlV2R4dDd1Z3hHSURnVGIw?=
 =?utf-8?B?SDBodWdnNFl4NDc3OWJZRjVnYlFQeWlibm9ZQkdPZnN4STVxSWFRR293WDdJ?=
 =?utf-8?B?OHFuY3VaaWEwOFJXTmRES0c4NkpTbzlvTjdxMzlXaU5yOFpLUXFKYXdwbXVK?=
 =?utf-8?B?eVpEenRIMFdwYTZ1bkZFc25CMXZMRjJES2NWMWg5R0JIdkFaRlJidEhFZ05Y?=
 =?utf-8?B?blZ4M29IZFVqQVZRaWEyS2xCb3dTa1pLTGJxQWFpT3A2NXZqQUo5UVNhNWNh?=
 =?utf-8?B?bHQzK0lRUGxYYnoxOTJiM1dRRFVkQmxXOHlLRUxPZWkwUTdSam9icmxvM2hw?=
 =?utf-8?B?MmxONHBDVllXNmhPRUljN1BzVU1iT3MxU3BJY2Z3N1pVbnVQWlozUlpoeUFW?=
 =?utf-8?B?VElRbFRzSXNMMDFCWG1iVXZtREl6Ry9GTTJ0dU9ITEs2cEM1MVFmMm53bS82?=
 =?utf-8?B?dGdHSjBrWisvK0lsVWQvZ2pQdDZ0ZzBZT1NnMVJsaDJFRmhVZVkwVUFJR1Bx?=
 =?utf-8?B?V0VRdjJMYnBuRE5XZVZ5bTNWcmIyN3d5blliSEZLVm04eDJqb3FsWkVJa21l?=
 =?utf-8?B?cjNwcHJEWUtNd2wzdEVIV08rL3drU1NjNHJCMjV0SU1lVjNWMERueHpYenRq?=
 =?utf-8?B?QkFVVmR4SGRKYzczUFp4akc0VmFQYURyWmhNZWVFV2FJNzlHNTZjVWhRbFV1?=
 =?utf-8?Q?e3ZJn0mT6C4TqACRap?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48723af3-418f-41ef-3e79-08de69c32351
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 23:13:16.6605
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m6AJnyDaehDK81VxMf3A8Itrm8g8wcGmqrdOxWsX8xGy2VdaFtGMvcHs9R8/YQ8wejyRjrJ2at+16AmLtGu7fQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8545
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264967-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,mail.ru,freescale.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@nxp.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:mid,nxp.com:dkim,nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.3:email]
X-Rspamd-Queue-Id: EB1CA12C045
X-Rspamd-Action: no action

Rename node name uart8250 to serial to fix below CHECK_DTBS warnings:
arch/arm/boot/dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dtb: uart8250@3,200000 (ns8250): $nodename:0: 'uart8250@3,200000' does not match '^serial(@.*)?$'

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
 arch/arm/boot/dts/nxp/imx/imx27-eukrea-cpuimx27.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx27-eukrea-cpuimx27.dtsi b/arch/arm/boot/dts/nxp/imx/imx27-eukrea-cpuimx27.dtsi
index 87dd80fc7061eeef88eeb353edb042b9a631a356..b56652664b5e7fa8e9818020f48ff0c7a7658c03 100644
--- a/arch/arm/boot/dts/nxp/imx/imx27-eukrea-cpuimx27.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx27-eukrea-cpuimx27.dtsi
@@ -104,7 +104,7 @@ nor: flash@0,0 {
 		fsl,weim-cs-timing = <0x00008f03 0xa0330d01 0x002208c0>;
 	};
 
-	uart8250@3,200000 {
+	serial@3,200000 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_uart8250_1>;
 		compatible = "ns8250";
@@ -117,7 +117,7 @@ uart8250@3,200000 {
 		no-loopback-test;
 	};
 
-	uart8250@3,400000 {
+	serial@3,400000 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_uart8250_2>;
 		compatible = "ns8250";
@@ -130,7 +130,7 @@ uart8250@3,400000 {
 		no-loopback-test;
 	};
 
-	uart8250@3,800000 {
+	serial@3,800000 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_uart8250_3>;
 		compatible = "ns8250";
@@ -143,7 +143,7 @@ uart8250@3,800000 {
 		no-loopback-test;
 	};
 
-	uart8250@3,1000000 {
+	serial@3,1000000 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_uart8250_4>;
 		compatible = "ns8250";

-- 
2.43.0


