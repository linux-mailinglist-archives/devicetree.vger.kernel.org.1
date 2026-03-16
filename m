Return-Path: <devicetree+bounces-275982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HjbNgqzt2nUUQEAu9opvQ
	(envelope-from <devicetree+bounces-275982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:36:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E912295B6E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:36:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 67F8B301F487
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD20B351C13;
	Mon, 16 Mar 2026 07:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="ilqrx0EE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D953351C0F;
	Mon, 16 Mar 2026 07:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773646567; cv=none; b=iXr/DofpJPWs2Ys50yayfV6kzBNz6CrylOsVL/lVkwQ4DaoGTITs+rj3c0Yes5YIArWtWppp9l2HtG5hs2IlHnFwz/ahIO+SqOiUKSwT47yHOdoSTOoFMYAVth5c2gw534A6f4vNVkXRRkYxkSYrOxg7mNUQ+rejprXhaOxfofI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773646567; c=relaxed/simple;
	bh=i9G8Rg1+TjfLhsd03fYMcNLQQ3/2L7IYPr+k3rDLhdo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Riv3m5rQp2tP+MJ19572iSUKhs5grCYgVItZHpeWhHK0XQlGAfPNemKaoFH1rrmEBrM0G6vFaOXQH/4x2PUwL8HkNwRp+QiZfz60X06OQF6+Lhb/90+iRR8ZvPMwCaEPLjTfi1wu3whrQazHGRqqnH+/TcD+4up7SzlfXc74Bxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=ilqrx0EE; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.corp.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id 605D8206BF;
	Mon, 16 Mar 2026 08:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1773646556;
	bh=napq9Fx6lEGxzTHyj3JDOT9mixqbcucMVlpnd28LYpQ=; h=From:To:Subject;
	b=ilqrx0EEsy7ynzaPT4ZZ1pxCyBf7uvIy+lVHO6fndYxmkdIh0qnE+kUz5rkux5Xr6
	 pjWGBLD4KLlas6i8UgN45Ky7cb3Y/JyTbYNpjdbnzcZuqJ/+cV2y462dHeths9+p84
	 ExXbnVQzOxoNW9EreAGozQq61z0W8jZVEetaggrL127GGZnPd0CSrpEzYk2oBmLYfy
	 JId0TqhkNbjqfELmaPeMJNyxtYqnQjzcJigo+8HnRBhliBNmGGyxVb/V83MvjTHyk5
	 ZaqGInfwRNHXR/eIgWlIcLLodt14dB2dqVIeJy74RO6hvqQbUpLgZ6dTD29D28tKYl
	 9WADdlXMSy83A==
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: trivial-devices: add spi-miso-mosi-loopback
Date: Mon, 16 Mar 2026 08:35:43 +0100
Message-ID: <20260316073547.11437-2-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260316073547.11437-1-francesco@dolcini.it>
References: <20260316073547.11437-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275982-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dolcini.it:dkim,dolcini.it:mid,toradex.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5E912295B6E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add a compatible to describe a single wire loopback between SPI MISO and
MOSI signals.

Link: https://lore.kernel.org/all/20260310133254.GA51497@francesco-nb/
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index a482aeadcd44..2cb973c157f6 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -432,6 +432,8 @@ properties:
           - socionext,uniphier-smpctrl
             # SparkFun Qwiic Joystick (COM-15168) with i2c interface
           - sparkfun,qwiic-joystick
+            # Single wire loopback between SPI MISO and MOSI signals
+          - spi-miso-mosi-loopback
             # STMicroelectronics Hot-swap controller stef48h28
           - st,stef48h28
             # Sierra Wireless mangOH Green SPI IoT interface
-- 
2.47.3


