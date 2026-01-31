Return-Path: <devicetree+bounces-261398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAndKnG6fWmoTQIAu9opvQ
	(envelope-from <devicetree+bounces-261398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 09:16:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 53456C135A
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 09:16:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 09A363008988
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F0F2E1747;
	Sat, 31 Jan 2026 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="gTEuapOw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau2.qq.com (smtpbgau2.qq.com [54.206.34.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59B72FBDE0;
	Sat, 31 Jan 2026 08:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.34.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769847393; cv=none; b=U9pSJhQunGYGoRKg91/Q6Ko5DmuGf30pEU1obdMTBFHgDgZ8InNX7Hx/PerHQCy+ds1l5VQ/rg8ETYsnYkUnlYLpacC2MHsuzhhgVTe5D/B0pYvV3+tSyuZyMMd3MdmWY9WiWPRh/djNxi/O+CUWkvOtIZ91SloaggvjjN2temo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769847393; c=relaxed/simple;
	bh=a63ub1fcaljl0Wu9hUsqBo64fUqw/OWWxXAZg/1Hup4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=HNZrpOqHLrmrSTkzAW/C2MN/94j8EsdHT8NxU9do7EKkRnST8MolOQrYsOc+E65L4q54XBjSI2bGXYfcOuWsMNZ1JuljnMYd+5Iw+aK7f/DBNKX/rPZ69ysmAfbCsiy9r3n4dKrLcgjCidrIUbxQYzCU2k5cX3Qhcapn59lHxME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=gTEuapOw; arc=none smtp.client-ip=54.206.34.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1769847318;
	bh=EMiVJUqDKq7YKJIu3ZUJNtEQU6Eyi5qop1Aw2z7vqEc=;
	h=From:To:Subject:Date:Message-Id;
	b=gTEuapOw6+5vaFDixjLVMxklzQ2cPharGS+VdFZtoaXN7yxFxJFHEelbEiSKWfGAK
	 XjzFVtQ+BGHs2N4Z56t3Q/Srxb/CsQxPCVkj9HrAzEOdAQnvuxbpVA68WmlNggBY4z
	 oDs8lW4ypoSkkGfJhcoLUw6YwMLCtx0zxTDRlQ58=
X-QQ-mid: zesmtpsz2t1769847311t280b5eba
X-QQ-Originating-IP: ubMpBFfxjDX0rtbY5fR2eOsNjn1UKwYQhGx2NtiLwjA=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 31 Jan 2026 16:14:55 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13477520136800706907
EX-QQ-RecipientCnt: 22
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Hsun Lai <i@chainsx.cn>,
	John Clark <inindev@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Andrew Lunn <andrew@lunn.ch>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add rk3576 evb2 board
Date: Sat, 31 Jan 2026 16:14:37 +0800
Message-Id: <20260131081438.100-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260131081438.100-1-kernel@airkyi.com>
References: <20260131081438.100-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MjuprvNQPEAVe2Ob/KJ5//jokuka0mjbTjU5EjlwF+KUC+wJfLEkT3P9
	0eaQGSNE/xQlRyOnQyrxhpCcRuE6qDKbIHE/EqupdTL4bjJ4+Q4kdiUCabWSfM9qtQurmi1
	c8MStP7y3N+LWu0opk7Iw4s8cLKK36X8nELdoV6Fxr2utZIvF+CUNKj1UFkDMD603sQ0hXb
	IUc987jn3vHSn5gphRUsvAp4RXpOorDsF5K1uDQ+5rRFiSQHF4S9Bj9ysJM7GfAYHV9jcZ2
	YfGApEvnhhPvnE8yesSWrnzrz1D0bkowssuYVPZzcfgG2qb72v3hfBgGLB1jmuJ+GLAhITx
	7P747LuwiMjMjnUx4uhhBJEbA+EmY2fX8cJfyrksKzIM7RM3hDExDcsU1SK3i/iN3SHi57g
	SBCMxHb4M1OmQzXlVI/Y6qX9gXhBB9rsTxp3e+kXUpefLg6DlZDfms8YFX9DVr5c5qP9jBA
	zuFoFh1gAn9TLBV746jceYT4lN7yytBmMDNeI82GSBbFPxWvduyL2t0K/Tdin/p9l43ooeG
	rMo5iPNBgh5DuvdDmGoqvv/27IdpXS8lhdELGywLvId5X9M5YIhhFM6wLscsrasC2wDFaDI
	mfmamR2z5rYKXcohqJuKpj62qoKLodNzTeQcbBjlwsEaJ87QFz81Ih8d7hiZD4WjFVX0yH+
	1EPyQC1Fx7ZyPkRE6u/d+aa3e7Dh3WJ3tmNqJs/V5fuChFHCsWv2O1sbdpexVOnhmzve8yZ
	7AMjdPtLtueGv4LjgDOZ0IHC+OHgj7g04nCa79zi+HZsc3E9WoPH6M9NYxzOF6FMJalUa1x
	eYOiCna99DX0pswnkNySPGOiyuLBY6DwAOW0OGrmyJUZxc01g4ERiktyrXXtBEHP25SR2Zh
	5zKy3FrGr85T2seuE4goPkHFcHm5MKCVXIPxhxDhpt6S7g9j95ZevmVyh5FhK1YDd+CDXkm
	l2hRvZabOWVBFAK+sVXCT49lKE7GOiKqcm5qJY/F1xFAQyY6MsK9F2+aPOG7ZzpqXFgkrUR
	xXX4dBGMKIr7kZVETd/M4OnfAbuh9zai6t/hpyDCvKzgdwcdLo
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[airkyi.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261398-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,cherry.de,kwiboo.se,rock-chips.com,chainsx.cn,gmail.com,manjaro.org,collabora.com,lunn.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[airkyi.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,airkyi.com:mid,airkyi.com:dkim,rock-chips.com:email]
X-Rspamd-Queue-Id: 53456C135A
X-Rspamd-Action: no action

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Add devicetree binding for the rk3576 evb2 board.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
(no changes since v1)
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..59ed57082003 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1136,7 +1136,9 @@ properties:
 
       - description: Rockchip RK3576 Evaluation board
         items:
-          - const: rockchip,rk3576-evb1-v10
+          - enum:
+              - rockchip,rk3576-evb1-v10
+              - rockchip,rk3576-evb2-v10
           - const: rockchip,rk3576
 
       - description: Rockchip RK3588 Evaluation board
-- 
2.51.1


