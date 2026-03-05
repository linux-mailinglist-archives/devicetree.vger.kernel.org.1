Return-Path: <devicetree+bounces-271641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePOzCJGyqWkZCwEAu9opvQ
	(envelope-from <devicetree+bounces-271641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:42:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A91821586A
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:42:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED55A302A046
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 16:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E723C279C;
	Thu,  5 Mar 2026 16:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="rqwIJgFg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC872853FD
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 16:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772728974; cv=pass; b=gDAhtOaB+F3otueD2ZQD7YOcslIuEA/bd0Eh8/g+bPcK69l41DG47GNISpaI4KuaodZEDQ+F5IPPsjD0pSD2JiYdhedrkDGuaXGwn2LWnOZC2hpfmAFd0zRw2JapMzwfF5MqkvvizEz4Dw5fHed0rgjGZ5fncEOsAPJNILbp2ak=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772728974; c=relaxed/simple;
	bh=tgBR+uaRfWNUR/xbu/5xWPdr0JhOP+oB90ltAZXz0F4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QMzbHA3SmEo6tdCrguhmy8WjoncHMTVVIu8rP5YHiTg1+2WYdPwW/RI5VgEtJ1Hs8MChD/9/0fG5hWpknrwRt2IlcOSV8oJ77CxTHwNohB2b1rdIC66JJbthrDKNl3F9LJgJm0om+ifIZZm0Dvc2YWKwnGXSKk7D1M16+xXkh9s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=rqwIJgFg; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=0bisfPLoTg2XqRMiZbY8naTl0HU//YMfolzvMIjdGgk=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772728952;
 b=YH2GjxjBBQWX+ZUQqiLG1cItqiPCOZ5/FQALUSMYhOETF3BJWnqUnKV/jNS6C/WJpTezzQx2
 d6G2nte6RbsietZh6jLHZtumTy5cvSLUrUSQ9JTojF0vAw3otfoxdLtHHokm38Io5/AmoJ35Wct
 fObg6rOJDZNvUU1Cc9ujDb0p0a8WiZJ21Yl0gY5gBKr+ufkxA3bqHUgn+KlHQI2BZ4A375N0wwM
 tDYUj5tHx8YyVBMsHVkQTpyeJrjIJ/gFZq5hEQoVAuQIgPgJf0KC+lJ60Fput93hTW7A8rCVJfC
 ND45TNElGpROpzE0fETmNwjEj60fFFUq3v0j69oAdq8/g==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772728952;
 b=Xc5FHrj1LYNdUataLShG+nJjnUMxKmN9eZZ6FyPR6FsRL3s+cnoU/i86xxDmhqpQhTj+dgE+
 REWMoJDIiVw3cYapro96K9ZDkz0M4kxdfYfljTVc8Ttp0rI/778hLbar2w5t8V+wb0sfLEgbkVV
 s95MktvTUwm1rmmTR7GKmM+Vww/6B0h7NZ9YZRVDQ6cViFL9EkMGv9K2Y8g/uisnz3iyd+EfnAQ
 NfU1GTWhMG/n6H68x/EDZYrZK0oQICHcWbglyCmn0GIDpLb5CemD733/gJn1ojKwIvAAG+lHj6c
 PqwXv67CrMUUw7ze+pH3M/d/dWZ+3lGFYh3fIqnYB9C5w==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Thu, 05 Mar 2026 17:42:32 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id ED36ACC0D36;
	Thu,  5 Mar 2026 17:42:25 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: imx91: Fix TMU reference
Date: Thu,  5 Mar 2026 17:42:22 +0100
Message-ID: <20260305164223.2650908-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4fRb1G4hfBz3yX1h
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:571ca73a620effc4570f7a8b5f908bd5
X-cloud-security:scantime:1.761
DKIM-Signature: a=rsa-sha256;
 bh=0bisfPLoTg2XqRMiZbY8naTl0HU//YMfolzvMIjdGgk=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772728952; v=1;
 b=rqwIJgFgN8K+JaRgLndYzAerf0IZ3IACa9lGvJO4OyjiXNLiTwvo6zA5/Dara7Dh1St79Zu/
 ljBFT85SGf460yw0c+U50j0b0CQpQeZI4ntQyeCP09QH1J6Zohsw4vGOFdcRSSO0uCohoXfWVAY
 qIId4ZFlKixShWRA5Ms5AnJ/wdTmh6XTutsSk2uXbRtoRh9hBmsukl/qxhxXp2zG6TcRFEFHQLT
 2EginHjgswGx8fwHfJnoxcJOifS7U9IPa30zw4tsZ16DpBZIL0SGs0nGsYFJg8q9E6TtM+iD+Qy
 LqsTh6wbOjNwTWx1k2sT19AkqFkn3OjIIWa8a8LaXBVlA==
X-Rspamd-Queue-Id: 6A91821586A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271641-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[2.166.189.208:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,tq-group.com:email,ew.tq-group.com:dkim,ew.tq-group.com:mid]
X-Rspamd-Action: no action

Currently a sensor ID is added to the reference, but
thermal-sensor@44482000 has #thermal-sensor-cells = <0>, so parsing fails.
This also has the effect that other hwmon sensors (jc42) fail to probe.
Fix this by removing the superfluous sensor ID.

Fixes: f0ed0e844452 ("arm64: dts: imx91: Add thermal-sensor and thermal-zone support")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx91.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx91.dtsi b/arch/arm64/boot/dts/freescale/imx91.dtsi
index f075592bfc01f..d63569b39bbc5 100644
--- a/arch/arm64/boot/dts/freescale/imx91.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx91.dtsi
@@ -11,7 +11,7 @@ thermal-zones {
 		cpu-thermal {
 			polling-delay-passive = <250>;
 			polling-delay = <2000>;
-			thermal-sensors = <&tmu 0>;
+			thermal-sensors = <&tmu>;
 
 			trips {
 				cpu_alert: cpu-alert {
-- 
2.43.0


