Return-Path: <devicetree+bounces-269027-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKQCBBfmoGnDnwQAu9opvQ
	(envelope-from <devicetree+bounces-269027-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:32:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6871A1B13C0
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:32:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2DA0305AD42
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 00:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF79257448;
	Fri, 27 Feb 2026 00:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="Xso6VF94"
X-Original-To: devicetree@vger.kernel.org
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11023086.outbound.protection.outlook.com [40.107.201.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D45B1BC46;
	Fri, 27 Feb 2026 00:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.201.86
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772152297; cv=fail; b=Q1z6ITDmUqytAkYzyTOJI0OmdXxP5Idk4FEUgIfiKF4oIm1iUZMsV4rn5O7jjW+OunBrjt0BAFNOE4AHGhDhrSbHMCpD9nACD5a+Mv2W7BAkCqLIZ7Uejfz/uIDSX2KQWX8vtjVRCzJveVz6MbzUEdtMC2mFVLPvjPu0GSS6QeI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772152297; c=relaxed/simple;
	bh=dl7URhZfQoj8I76rnREeEPqJMGg8Nos2W9N9Auhx0CA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=f6cEorXy8AEwN6pof3lOAhSmVD0QlabuRFsJPN+us7ZIm/KgQd4cwkpVKjDZopGfUMU65kHNObIxADGukdO/cJ+tcORi5V7xuOHai9CDmmDMXqsSx2ydW/Fwheflg6i0/R7kO/bPWMXXspxmIcWs1s5ly5nLOBLtT6ePl95fDm8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=Xso6VF94; arc=fail smtp.client-ip=40.107.201.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kOvpr9WLoC4N2UFwj2WJR3ZKlsQe/bLeYzpbV5jeoGN5WqnO29+SkZt4jc3MSJ68dr++RAoHsU5wH2qOB+6kE0mOt3+1+E1/NNfWPKjmb0YQNeBu+WnMLdG7i1X3CEfRYOuJvj1sVX/dEw01zUbGJS9gAB4W7+TJ2ABkwEY+hhn0OeKNZ7NWwcvb/5T5uIBlCAppKv/Emz4bDlsrNomzXch0bEyJkgcczNm0l+np1c9KgOrGd4wiPGxz9l/z2jcnnfnw6eeObtoFuJWK5NyX01i62ytZU+PqANHAM5WYBc6yHKvV9Lrl52V7nM31P3ERBEM9DVZsx3bODD28l0gIng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H6vKWKLpfsyxBMubQgRFPWbSfZlv16d5pU856BJRsKQ=;
 b=Yboe6QMgCb4td11GDT+riZKGD4sm2pwcDz38DODemImaSuwNFYwTuPnSWqC94ObbC/GPTE81uHYjpcACt89uGG5mt0DFzvaiSP2nvI6bxSgBKaxgPQ6V7DesQhpFX7WzgORh5iaKkw3tXLaNrcO6Ma22d+5KWwkq3/+8IDq3nB0XSYyt06ZnYy3c2ENIHHMrcECCXI6TZ2rmZLnLPmiQQbut4K44eQyqKz5HODxizPuqgYk0RH3DLV/77X+CEmcKaszlEvQA3fnjpf2jVu1WzdlSsPbsUSaze5UKKT0dLs6FEmJ85kl48UkzdB6TiKsfRt11RIPFRSSHp8+iQ8LexA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 50.233.182.194) smtp.rcpttodomain=axiado.com smtp.mailfrom=axiado.com;
 dmarc=none action=none header.from=axiado.com; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H6vKWKLpfsyxBMubQgRFPWbSfZlv16d5pU856BJRsKQ=;
 b=Xso6VF94z/eH1RAoK+da5LiNnxlOOYuis+O85todTRghOxWjCPdJ3ot+Y02KKCfka62HVm0wDKdUGwuj2mUV3frR2lV58IYMKXCoxidpIVAxrSnOBBqmEvPZmrBtYpx2P8N0lmJVMhafaXUpygI474kjLwFx2zj91o/Z30a3UqHpJo/PfzC1m5G1P0YLOnxMV5zg47JYH8wFz+4MNmSAc6ozOY9nVGvrxvS7RCUxe2EtMOeyDR6D259aiLmtCkJgMQbZTjcaOa4tvaKaZV7we6OyPIGYHY18++MyKNTARsTCXewwWMII9rBaqmUKKtGNbc5ScdFkkjPXbHxRTsyVeA==
Received: from SN7PR04CA0040.namprd04.prod.outlook.com (2603:10b6:806:120::15)
 by PH8PR18MB5384.namprd18.prod.outlook.com (2603:10b6:510:257::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Fri, 27 Feb
 2026 00:31:32 +0000
Received: from SA2PEPF00001504.namprd04.prod.outlook.com
 (2603:10b6:806:120:cafe::37) by SN7PR04CA0040.outlook.office365.com
 (2603:10b6:806:120::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.26 via Frontend Transport; Fri,
 27 Feb 2026 00:31:08 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 50.233.182.194)
 smtp.mailfrom=axiado.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received-SPF: Fail (protection.outlook.com: domain of axiado.com does not
 designate 50.233.182.194 as permitted sender)
 receiver=protection.outlook.com; client-ip=50.233.182.194;
 helo=smtp.corp.axiado.com;
Received: from smtp.corp.axiado.com (50.233.182.194) by
 SA2PEPF00001504.mail.protection.outlook.com (10.167.242.36) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.16
 via Frontend Transport; Fri, 27 Feb 2026 00:31:30 +0000
Received: from vm-swbuild02.AxiadoRD (unknown [10.4.1.182])
	by smtp.corp.axiado.com (Postfix) with ESMTP id EFCCB4157BE1;
	Thu, 26 Feb 2026 16:31:28 -0800 (PST)
From: Karthikeyan Mitran <kmitran@axiado.com>
Subject: [PATCH v3 0/2] Update Axiado reviewers and ax3000.dtsi fix
Date: Thu, 26 Feb 2026 16:31:25 -0800
Message-Id: <20260226-maintainers-addition-and-axiado-ax3000_dtsi-update-v3-0-a3b095989823@axiado.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN7loGkC/x2NwQrCQAxEf6XkbCDu4or+iohEk2oObstmlULpv
 xs8DMM7vJkVXJupw3lYoenX3KYakHcDPF5cn4omwZAoFUqp4Jut9og2RxaxHgJyFeTFWKaoTEQ
 36W74mYW7YhrzUfflfqJDhhiem462/E8v1237AZhqFt+EAAAA
X-Change-ID: 20260226-maintainers-addition-and-axiado-ax3000_dtsi-update-2f37e16b9053
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Prasad Bolisetty <pbolisetty@axiado.com>, Tzu-Hao Wei <twei@axiado.com>, 
 Axiado Reviewers <linux-maintainer@axiado.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Drew Fustini <fustini@kernel.org>, 
 Karthikeyan Mitran <kmitran@axiado.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Harshit Shah <hshah@axiado.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1133; i=kmitran@axiado.com;
 h=from:subject:message-id; bh=dl7URhZfQoj8I76rnREeEPqJMGg8Nos2W9N9Auhx0CA=;
 b=owEBbQKS/ZANAwAKAfykr3bAxbrPAcsmYgBpoOXgrQqCQ+0xi88y1J/VWM45O8O3OBGZWL1t+
 PkeR+fq0+SJAjMEAAEKAB0WIQQykBiJeI5kfMQLrdj8pK92wMW6zwUCaaDl4AAKCRD8pK92wMW6
 zyzzEACE529f/RyZRxGu9JHX7Zhivyxpa37C1inBIi37+Qi31pvg8TnMd2yTNuwpded1qKk1uJj
 TYqFBxoP0D8+dMbG1EBUGOWBJHfad9GGkIreOVwqT9Ghe0hurGs19K3pRfMR1U7S8gzvRvqwnTj
 QT/8Pv+o4V0yxxxEkvWQMFfcbN6nRIHyxD5g1k2KtJDR3bUAcJBfAYF7YNoHSPTmYmAJAmIxL7J
 aGiEdutEZsZsP7oGL2K3+lSEEhnnxNFgBQe6k3Upc/DV4oEXf1MtDH8e8k0lJBR7QV/EiE4GbPa
 cGU1Xv9Fb23G4kOJJAbx7faPzx3gCepjEExsWBtHRxkmbLUWnYmLJatejyJ2dkICuESf6KD1fbP
 v/svn58Tk16VDHGbj1AQvwq40gHmBNFzQUF4i2cxwYrgmmFcuHqbnO9hwKJyZTKCIl06kLNUI0Y
 lgPmJMR2PlRXg+9PuNu/Spf1cPJCKxLGScVn2oV0zacA0pOiTtvB4hrMTiaSXfuplxfbsHyVWM9
 sj3w2lATfC82tBJ3Tdw7dcKZCOxPpeR8563GgVV6F99qkl6jtdy17h8+t0dpUX5wdTrjCvp6KDD
 w5+9h3KA2EHSxJ89Mh408VtqZc6pJ0YJt8mjt1HKiN4gYMA6kTAN8CbVWWTviv6szIo2k2S7Qp/
 RxVSVexcjmGSufw==
X-Developer-Key: i=kmitran@axiado.com; a=openpgp;
 fpr=32901889788E647CC40BADD8FCA4AF76C0C5BACF
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF00001504:EE_|PH8PR18MB5384:EE_
X-MS-Office365-Filtering-Correlation-Id: 845a1f21-ac30-4716-d547-08de75978d5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|36860700013|82310400026|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info:
	JKr9miMiov9WqpPfS6R08kg6cdYLVZfLypZOFsnDcoTXAJYhxpkZiPVrZqzaxfIj85pb633PqyecwPr30lp5IG5CLfjYhZ0WPfzK2+Id/2yLm04Sv8Q2+ZbmEcI5ADD13GIzNp9s4HtkfhFr2SR8jTz5n7Jq4w6R3pnouv6AKsuXWRdHcioWCZeWcqwCch/CncUrmnKDv0wRnRzBSmQsGEIJu51/j3Njg2ERlsFjPJyLrnLCg+FaDGfZYNJ6wrI8LtELKq6wuOxcCVmASOMowUzyMWIBwAo2QxvS4bBwR7gBrHSZ/geDJ8X1AV5uSR6/21/zHq91+/Lf/fQFFOuNqwvhq5Ahra/W8LpSg975vtYjp9CZOAl0m1XWB5QuyUANKTZtdE2p9uADvBnoIdP4uXrdFIRXsE734581zE28H6lMwavzlUwtBvq63wGmqX9ClSkF9CHxlmGBWJHhhHRikcmlM143kUL2V9ZuEu+eMbqVQE3B/LI64nLoz3w8UUUXnfBLNPDA9doos7HdQvalIQoKpnYmy1OpjTy8L0VC5dSETfOoxdKrL/uGM0yBRSN4T6otfY9+DaL3AdQrdLy+FeXmxgbGsRfmbueXBrb0wPY6x1W/G9illdcqaajeXp9jsW4SnFY6ShtWxysrn4gE41BvM/Yamn9CruWesIOn1asJp3XD7/xBHQVDEgjBWuFNseOQj+1sTG4USOS13YWvmM+1oX4AYsKQZsMYFx3Wro+Jm/u4O4rrNIkMK19utpxoDYjT1YfhowAwVrmx1sqhz+Hfo++gLfmxW7P8o987ZOx2Jg4hGwpHPcv3wtGORxsbcQgJse9YpVqXQq7hwqtaDg==
X-Forefront-Antispam-Report:
	CIP:50.233.182.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtp.corp.axiado.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(7416014)(36860700013)(82310400026)(1800799024)(13003099007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	G+NSthNt0BFDMrdhx/tvpuz0AN873v95/PH37PGbEQIDIDILBOGnQFSzR/KFV6zgMFp3Kg7saauDkDvSYsXgzmhJAEyalNP1NssKZH+P/SlKdSxPNiu4utHXO76xf+SH22F1jEujQzovd9VS1c65eRDSqesogubmGOieOJL9h3H0YESASqeU8J2dK9IOmjOfLS3iYiPy62VScgGS4NuV4TkkgZKXh1vKoLYSxDUUl4Tsm64EfUOEswRMlPQFpMuC69rCwlgfk87B1+IQUSH+hpWQQ+WOhBlnj5/0YnThwArTq1pXTuIxk7OjCr69hQKdxpbryBgmz/FZZZ4JckEQN25YbgV9WC7uGqKYujcQ/M2ywCw1DPLy4/SQZksHymliOyFrYwaJJGEu8LXTfjMyE1C+RR5YVvk9uixkJplQrqf/O5d4sGYuGji6h6iUgwGJ
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 00:31:30.3998
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 845a1f21-ac30-4716-d547-08de75978d5a
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ff2db17c-4338-408e-9036-2dee8e3e17d7;Ip=[50.233.182.194];Helo=[smtp.corp.axiado.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SA2PEPF00001504.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR18MB5384
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-269027-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[axiado.com:mid,axiado.com:dkim,axiado.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kmitran@axiado.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axiado.com:+];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6871A1B13C0
X-Rspamd-Action: no action

----
This series updates Axiado SoC maintainership and fixes devicetree formatting.

A maintainer has moved from the project, so we are adding three new maintainers
(Prasad, Tzu-Hao, and Karthikeyan) along with a reviewer group for broader
coverage.

Patch 1: Removed one and added new maintainers and reviewer group for Axiado SoC
Patch 2: Convert ax3000.dtsi hex values to lowercase

Changes since v2:
- Updated commit message to clarify maintainer additions
- v2: https://lore.kernel.org/linux-devicetree/20260220044550.4152148-1-kmitran@axiado.com/

Signed-off-by: Karthikeyan Mitran <kmitran@axiado.com>
---
---
Krzysztof Kozlowski (1):
      arm64: dts: axiado: Use lowercase hex

Prasad Bolisetty (1):
      MAINTAINERS: Update Axiado reviewer

 MAINTAINERS                            | 5 ++++-
 arch/arm64/boot/dts/axiado/ax3000.dtsi | 2 +-
 2 files changed, 5 insertions(+), 2 deletions(-)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260226-maintainers-addition-and-axiado-ax3000_dtsi-update-2f37e16b9053

Best regards,
-- 
Karthikeyan Mitran <kmitran@axiado.com>


