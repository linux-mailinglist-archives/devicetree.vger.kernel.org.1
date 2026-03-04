Return-Path: <devicetree+bounces-270992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBkuBLAWqGlTnwAAu9opvQ
	(envelope-from <devicetree+bounces-270992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:25:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 758491FEF0A
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:25:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE0B6302331F
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07ED83A874A;
	Wed,  4 Mar 2026 11:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="EJEd2i/D";
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="EJEd2i/D"
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11023132.outbound.protection.outlook.com [40.107.159.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96BB9372ED3;
	Wed,  4 Mar 2026 11:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.132
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772623530; cv=fail; b=GDApzbELu/dhlVqx2QdQ6qXCT3xjXQiJTujm1kTS970KwV1HQgZ/Xd5nWoDVq9pWY6BkK5h25ammBBn+/n7pC0bJ1cdDZ6AaT06j+UXlctmssN0/EJxG35OVGjGkKP8Evqnj9qAaABtOlifZyW/lsJd529w+D+Fqf63U5+l/tU4=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772623530; c=relaxed/simple;
	bh=yKi0asSn06G1Vc0b6Fw7DNhMt8vxotEirgpqvQ3vBhs=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=fNbbtqdujQHIldgenskF+AZHYKaaboOytn9yjXQ16XQh5hMPSgpqZbzNw8IpTFSTGMKKa/qE2YFYpFltuaqXtXsUfDlEf89xgsavG+aKcGMphwTTr4DZbZPMX9jsniGjjQGJrLmhUTjWc5U74GBO46kixT8jsyP/xrfnoHuXAk0=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com; spf=pass smtp.mailfrom=solid-run.com; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=EJEd2i/D; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=EJEd2i/D; arc=fail smtp.client-ip=40.107.159.132
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=solid-run.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ddHB4TMGHXcDW2i6MtaVX5ExrpUOTJKNoY25XMEcsq177hv9TLyu4KGRLl8mNAJAz4LA+oGdRLEN3AnZLYJvCJUYd3XK2Z6ai68J5eT6StvXtfnErWYWsgrV++uNYZr5Ai4oHG1f7PZfsvtoU72UDjPugbP929THtwQxIqN3lTaVd3yFmPQrNers4rFLEcdojwTtq3NFjUBNrvlfNOmFSy1VC5SdZfnx3wFAzaQ2QO6vL8Yb728lG6D/9hrY+gacHBGpcX81Boxf5BeMmWKKIOy4/fzx5uEmYP0OU0sEACmzGKPJRP8uZj1Q9iGNBkXWFThEmfOWJt94tighZWQE5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yKi0asSn06G1Vc0b6Fw7DNhMt8vxotEirgpqvQ3vBhs=;
 b=RXVVPO1XZvWaQ+R6v2x113eK+Tlbz0OenJnjouRD5imd5pJ8IMfT9Jv1Ty0MdqfQrhLy0xhyF1wBcHPlqFLNHM7DEycfJxmWfeQY8twalUH6B7zj1h9ohXv7ns4HiXFl8j3Rv42d+C4JPzwW3AO596lK16CXbXN2qey3UOSfNq+tU1U/yWHuDWi8kIzpro2Se7+fZmXKLGxOaZNoYy1/PRZlpmXjTC4NcAiUfVfxIdSmTXaURxV6A/4Ngdxt16r5Vhu1RBRsvWSKI4ygtoBGpXwHJECxIqdIR6LHeyK/VgP/WohFH7VR0bloOu8Q+72VjYym02nuFdnp06dNLe9u7w==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=kernel.org smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yKi0asSn06G1Vc0b6Fw7DNhMt8vxotEirgpqvQ3vBhs=;
 b=EJEd2i/DOsk2vzcZvZuobsUDeAbgSU2ySiJIEsgOxv5Ebqdls/v1WqLuZKHHOMXRm75BlmU6Jf5Mq3BGj/TmGCf4eP27tsYUq+JPk+gUDtCitLlepKbNZ5G1L3KGDMPorFczQIfU+KkzAdTRffg2rtuJh+mQwgGxPFnDr3H4LsI=
Received: from AS4P191CA0023.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:5d9::19)
 by DBBPR04MB7691.eurprd04.prod.outlook.com (2603:10a6:10:201::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Wed, 4 Mar
 2026 11:25:25 +0000
Received: from AM1PEPF000252DD.eurprd07.prod.outlook.com
 (2603:10a6:20b:5d9:cafe::bf) by AS4P191CA0023.outlook.office365.com
 (2603:10a6:20b:5d9::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.22 via Frontend Transport; Wed,
 4 Mar 2026 11:25:17 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM1PEPF000252DD.mail.protection.outlook.com (10.167.16.55) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.16
 via Frontend Transport; Wed, 4 Mar 2026 11:25:25 +0000
Received: from emails-7355094-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-248.eu-west-1.compute.internal [10.20.6.248])
	by mta-outgoing-dlp-431-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id D5E1580645;
	Wed,  4 Mar 2026 11:25:24 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Wed Mar  4 11:25:19 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zNropsh4ZBfG4Q0CSGsyXAShNwYjr0LSGYKWXhSakHNPJQTuNTnLjhqHCnC+mfhte5aY/TXNWKCEI2/1b1wUI3psUd1g/NhYuUz4bUf9SbwfIM6zyR2iG2UWjCyCDxNut5wlbYG1CY6+jAT9TjDBD3EXzqHAKDbKn4vYnNHyNaIPAiof83DlkAWD3UVFm8VKdpw4UVJXdxmqaBNwpaJ4tRhN/FAbo5A27CJgwcYKAXo1f563tj6MxQLM+AiQ7OHKsrCbIAT8Z56f7E+M+i0fUQhxeeU44iHjjrY8camNsW0rY+mV6l1JS+x+tDRoodPKWxl+OWwfm/82x7AJjBQrww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yKi0asSn06G1Vc0b6Fw7DNhMt8vxotEirgpqvQ3vBhs=;
 b=yRclBOrk2Z8ksw5dQhqAaZJ76oGebY0ShRwEjZAOTlX1iVX4aPoP9HInKF6VIIIm0+ViihKKBqxhc2t/agwnHQq82K8UqP53lYY33GZgy/Gtft14iCus1/qScN/mVALBOfrBA4BMgmK/xFTr9YIgL+/itY2FCAUmnVjkq3y3HsHMG3AbttIIrgZWgRXqKWB8Cxvtf/sZCvT18infbLiU/1eeRvY6dX1MZAp668rLdkB3FJ8N3srMP6RXEhU/boxHaOjFCffAlC6yDn+PFlnh9iopYBUNJjITjc52SbDmwCpGkbECCQ3mLIyppfAPdjbVrAW7+8+AUrLKITdpNnsyYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yKi0asSn06G1Vc0b6Fw7DNhMt8vxotEirgpqvQ3vBhs=;
 b=EJEd2i/DOsk2vzcZvZuobsUDeAbgSU2ySiJIEsgOxv5Ebqdls/v1WqLuZKHHOMXRm75BlmU6Jf5Mq3BGj/TmGCf4eP27tsYUq+JPk+gUDtCitLlepKbNZ5G1L3KGDMPorFczQIfU+KkzAdTRffg2rtuJh+mQwgGxPFnDr3H4LsI=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by GV1PR04MB10251.eurprd04.prod.outlook.com (2603:10a6:150:1aa::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Wed, 4 Mar
 2026 11:25:16 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 11:25:16 +0000
From: Josua Mayer <josua@solid-run.com>
To: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo
	<shawnguo@kernel.org>, Carlos Song <carlos.song@nxp.com>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 5/5] arm64: dts: lx2162a-clearfog: set sfp connector
 leds function and source
Thread-Topic: [PATCH v3 5/5] arm64: dts: lx2162a-clearfog: set sfp connector
 leds function and source
Thread-Index: AQHcq8kHf8jdwUmSz0iTJHMT6RaWzLWeO5QA
Date: Wed, 4 Mar 2026 11:25:16 +0000
Message-ID: <dfbe8615-6c68-415f-9bf9-4a9d60a409b1@solid-run.com>
References: <20260304-lx2160-sd-cd-v3-0-dee4523600ef@solid-run.com>
 <20260304-lx2160-sd-cd-v3-5-dee4523600ef@solid-run.com>
In-Reply-To: <20260304-lx2160-sd-cd-v3-5-dee4523600ef@solid-run.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-traffictypediagnostic:
	PAXPR04MB8749:EE_|GV1PR04MB10251:EE_|AM1PEPF000252DD:EE_|DBBPR04MB7691:EE_
X-MS-Office365-Filtering-Correlation-Id: 797592a3-6f96-4d86-888b-08de79e0bb1a
x-cloud-sec-av-info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700021;
X-Microsoft-Antispam-Message-Info-Original:
 9ETnG3j9x7l6GTvMrEpzwtVXYnymJ0Va6gjmOD54w1l4Q/ViHJNEQ8NMd0Td7pjbAgfCQLDa0VSB/uDmg68+WXoaWnmI0+6AtXIpfacb/iR3rYo2Jru/0PWdhrxvW7HYdvo5x2F3yGn8vPbU38WobozuWQn9L66RYULsevP63LAEF78NqRpOwQilOl/6LBs9ngtTRT5Kq84auEZqhwI7CNQyAa5hFH+CCwZqI9ExLuU2jJqXdXuCzJJUVZWbw0FUeYY/119taqpPoQ4/pKlNi6aDmCVeJIQm+McR12eVGN8LuRbNVTfyVMIR6Gx1Kv50ZY6wP42cR6P7qFuyzeRxc36f1IIXv3WXEpUhYP1/Z3Hx8ngRUfW6wEfmmM2gKABi4qKFseZIiDek2cIzTc9Qpu1gPcgWylEy6fYZWthuxnPKnesujsNGRBgBwPrWiijpq6XLMM/zumXPp3BtRKLmMkHyyn9WatLaHx6Lx3KYIFyoudmaTwStfLLT8Ve3LRxO59y2nrAQNRFMWWLyM2diDzKs5N1G8ujeEaV04VVH8OuiT+hB9OtoyO+ILyOsA7A8jl7m5+3Z8yopPAbef01nO3lOlZaRQXtHghEhXfEiM9BZmo5lbnP8ZQiH1uAGdC0D02qdiTz2Yg8OQZSf8fMn3my8uMrjxNbRp20/77dmo54xAZYCWEKbSDf231VbcOmHVK+kjueMViN+fQ8+msv+T1+eP0wX8W5ocT2vuJsir/1CD4sflKeM4CxlorVHm+yLCqt3W4A5RXJ/A9ERXQRpQC+4bLt2xQ0hy43Ou5/xKUU=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700021);DIR:OUT;SFP:1102;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2AB8287A57F0E247843605FAA1FEDE51@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10251
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 8e85c14faab64fc3af691e4ed5d65043:solidrun,office365_emails,sent,inline:e406a2a40cf0329e85a1817db30ac88a
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 AM1PEPF000252DD.eurprd07.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	e110107f-efa3-4210-5eb0-08de79e0b61b
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|35042699022|36860700016|14060799003|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	80ViLvxqaS9l1zgfc4jiJpuosmyE1F1DGsL6VtoXAFL6clUyjy33I+4v3NCyo2e7BHFx9aGW8/jnJuCFzjT3m38J2qDxRrix9r3w4oN5c0ogKd64sJIYscEUPT1IfDUzHQMPeVB/ULQRi+xD+jHMOqtOAH7d5gNSnFao1OaB+/7VxpAY9R07YtORcd8XJrB2BKxsUM5a5qQPEoSRsC1i6p2vpTVksVG1goQzAkGwQrItxYhbpnOBiP6lNrg5fS3ZX5qo6lhj/YnDtvsmI4eJpMpvQ/XsgEB+5Etnloqk1Kk1K7dropS11CptBTjnumO6Hf+10UIBSMoa8OXKyWtRoJ/5PtTV+JTg5wTsdr75Vwoi67bb6sswCALvILvY49bzwW4jaw7Mi6bgSTDcnuGpD7Gg0q/Zy6eAdCw66KvlxO7EcQ89Et9JIjrW7/XNqWXX41/HuxHwNazw+UNR7iiqMVO5/xR8TW9levj2zXPpg/ug8M2DkNijjIaKyHbJuS6qi2Vqn8tDd90/vSI6N7bU9Dr2gw/S9pwdQtGUm/NoUIRjdjcFTPSHPjr8cbt7k59o8QFUg2y0S/WWZr9t2tyVCWVPZvLELWnCmGVzIUy/U1pZ3BIH5YHmVutq8uhyD1QXDduj1sbXKQ3MEBDz4NzoAfI/ElS8Y6GsrMhAeddoUOe1WlhbCJZa+c8fdjbMHwzHVSlpHh2G+tW3LrUF2o75hU0uZuQ6es/OMePAEdKsGiQ/HluM+/pvh0hNIm/u9UwjF4EM8u3h8VyHBAbcoKLJjg==
X-Forefront-Antispam-Report:
	CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(1800799024)(35042699022)(36860700016)(14060799003)(82310400026)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	Qw17FphqIvwuqH29nN8btREljYO1lfoZ9/Uwp70DYlcyKufNBxV7/bvWh88R9mbH8uKbnIoiUsDFwqgy3lp1pFgut3BFt3dG9Co2QumoPMaK4xUHD2XMqIviABBcF3CjzC0EtzifQz7eirRhVoMQGHwxKfZCVS8V8Pyfi+vJ7jN8egY96RM3B9v83BfET0nRoXmLauP21XRY3H3kJELZj819NjmmQ5EXmHsixo8pxW+6kNsMg2GK5Xop1r+IUX97KXu5G5CUxkI1qBh7Y8h+ErQKVrC3Ol+CdyFZBJjwLUSqUUZoGaFvPwYAKzCT5UZW2E+HjRkokzlaJi5wxuG0CLTWNq2jl/JMEuPRarWxLD92ddBF+RauCcdyQEK8xqd8pm0z8kYeWbSsxG5XqfK5Y6ur4ve7BfMLiMW1KeZX7Bamj1F1QTVUj0MSs1O1hrlW
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 11:25:25.0908
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 797592a3-6f96-4d86-888b-08de79e0bb1a
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM1PEPF000252DD.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7691
X-Rspamd-Queue-Id: 758491FEF0A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=3];
	R_DKIM_ALLOW(-0.20)[solidrn.onmicrosoft.com:s=selector1-solidrn-onmicrosoft-com];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[solid-run.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270992-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[solidrn.onmicrosoft.com:dkim,solid-run.com:mid,solid-run.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[solidrn.onmicrosoft.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josua@solid-run.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

QW0gMDQuMDMuMjYgdW0gMTI6MjEgc2NocmllYiBKb3N1YSBNYXllcjoNCj4gTFgyMTYyQSBDbGVh
cmZvZyBoYXMgZm91ciBMRURzIGF0dGFjaGVkIHBoeXNpY2FsbHkgdG8gdGhlIDQtcG9ydCBTRlAN
Cj4gY29ubmVjdG9yLiBUaGV5IGFyZSBpbnRlbmRlZCB0byBzaG93IGluZm9ybWF0aW9uIHJlbGF0
aW5nIHRvIG5ldHdvcmsNCj4gaW50ZXJmYWNlIHN0YXR1cy4NCj4NCj4gU2VsZWN0ICJuZXRkZXYi
IGFzIGRlZmF1bHQgdHJpZ2dlciBmb3IgZWFjaCBMRUQsIGFuZCBsaW5rIGVhY2ggb25lIHRvDQo+
IHRoZSByZXNwZWN0aXZlIGRwbWFjIGluc3RhbmNlIGFzIHRyaWdnZXItc291cmNlLg0KPg0KPiBT
aWduZWQtb2ZmLWJ5OiBKb3N1YSBNYXllciA8am9zdWFAc29saWQtcnVuLmNvbT4NCj4gLS0tDQo+
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHgyMTYyYS1jbGVhcmZvZy5kdHMg
fCA4ICsrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+DQo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHgyMTYyYS1jbGVh
cmZvZy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHgyMTYyYS1jbGVh
cmZvZy5kdHMNCj4gaW5kZXggODkyMDMyNmEwNjczNS4uOWQ1MGQzZTI3NjFkYSAxMDA2NDQNCj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWx4MjE2MmEtY2xlYXJmb2cu
ZHRzDQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1seDIxNjJhLWNs
ZWFyZm9nLmR0cw0KPiBAQCAtNDEsMjEgKzQxLDI5IEBAIGxlZHMgew0KPiAgCQlsZWRfc2ZwX2F0
OiBsZWQtc2ZwLWF0IHsNCj4gIAkJCWdwaW9zID0gPCZncGlvMiA1IEdQSU9fQUNUSVZFX0hJR0g+
OyAvKiBQUk9DX0lSUTUgKi8NCj4gIAkJCWRlZmF1bHQtc3RhdGUgPSAib2ZmIjsNCj4gKwkJCWxp
bnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJuZXRkZXYiOw0KPiArCQkJdHJpZ2dlci1zb3VyY2VzID0g
PCZkcG1hYzM+Ow0KSSB3YXNuJ3Qgc3VyZSBhYm91dCB0aGlzIG9uZSwgZHVlIHRvIGhvdyB0aGUg
ZHBhYTIgZHJpdmVyIGlzIGRlc2lnbmVkLA0KdGhlIHBhcmVudCB0byB0aGUgbGludXggbmV0ZGV2
IGlzIGEgZHBuaSBvYmplY3QsIG5vdCBhIGRwbWFjIG9iamVjdC4NCg0KU28gSSBzdGlsbCBuZWVk
IHVkZXYgcnVsZXMsIGFuZCB0aGUgdHJpZ2dlci1zb3VyY2UgaXMgbm90IHNldCBhdXRvbWF0aWNh
bGx5Lg0KDQpJZiB0aGlzIGRlc2NyaXB0aW9uIGlzIGNvcnJlY3QsIHRoZW4gSSBzdGlsbCBwcmVm
ZXIgdG8gYWRkIGl0Lg0KDQo+ICAJCX07DQo+ICANCj4gIAkJbGVkX3NmcF9hYjogbGVkLXNmcC1h
YiB7DQo+ICAJCQlncGlvcyA9IDwmZ3BpbzIgMTEgR1BJT19BQ1RJVkVfSElHSD47IC8qIFBST0Nf
SVJRMTEgKi8NCj4gIAkJCWRlZmF1bHQtc3RhdGUgPSAib2ZmIjsNCj4gKwkJCWxpbnV4LGRlZmF1
bHQtdHJpZ2dlciA9ICJuZXRkZXYiOw0KPiArCQkJdHJpZ2dlci1zb3VyY2VzID0gPCZkcG1hYzQ+
Ow0KPiAgCQl9Ow0KPiAgDQo+ICAJCWxlZF9zZnBfYnQ6IGxlZC1zZnAtYnQgew0KPiAgCQkJZ3Bp
b3MgPSA8JmdwaW8yIDEzIEdQSU9fQUNUSVZFX0hJR0g+OyAvKiBFVlQxX0IgKi8NCj4gIAkJCWRl
ZmF1bHQtc3RhdGUgPSAib2ZmIjsNCj4gKwkJCWxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJuZXRk
ZXYiOw0KPiArCQkJdHJpZ2dlci1zb3VyY2VzID0gPCZkcG1hYzU+Ow0KPiAgCQl9Ow0KPiAgDQo+
ICAJCWxlZF9zZnBfYmI6IGxlZC1zZnAtYmIgew0KPiAgCQkJZ3Bpb3MgPSA8JmdwaW8yIDE0IEdQ
SU9fQUNUSVZFX0hJR0g+OyAvKiBFVlQyX0IgKi8NCj4gIAkJCWRlZmF1bHQtc3RhdGUgPSAib2Zm
IjsNCj4gKwkJCWxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJuZXRkZXYiOw0KPiArCQkJdHJpZ2dl
ci1zb3VyY2VzID0gPCZkcG1hYzY+Ow0KPiAgCQl9Ow0KPiAgCX07DQo+ICANCj4=

