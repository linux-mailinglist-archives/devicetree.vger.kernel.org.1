Return-Path: <devicetree+bounces-316374-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VvnJNoPsQGoIjgkAu9opvQ
	(envelope-from <devicetree+bounces-316374-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 11:42:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0826D381C
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 11:42:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=etehtsea.me header.s=sig1 header.b=irli87Rh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316374-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316374-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 053BC300A3A6
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 09:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DE6117A30A;
	Sun, 28 Jun 2026 09:41:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from outbound.ci.icloud.com (ci-2005c-snip4-2.eps.apple.com [57.103.89.153])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B7F318EDF
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 09:41:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782639683; cv=none; b=qpOWde1tNnaGTd7v9a54Obss6lElryopLo3S9FRStj6gFwIG8x8MukCmav6EHg5J3jCoFtm9tVP0SHrri+ldR7ue9Md7CVEfU0xB7rl93ywRsYYUOV14i2BxKWzl9yS/uDNSheTHfVbwYpucJZkFSDDSGCsPbnBaFnP2HWy/YzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782639683; c=relaxed/simple;
	bh=Spdbueyfuz8uMNAHc3aXLkzTXslDIABc7BDDWY7Qdlk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RRFmBIvY6buQ+W7NEH4otxNdQe8p+Mx93CB1vaXsauTyZFDOrXy9GJvR4tVp5CZpNaj8QiqMDVLLYl848fG9JHuvULIgXo02QVGceK+RgDRAi/CVgOlW+D4SVgPa58b7JvlGA3XC5kqXCHUR3Pkup82J8Kw7kQCMJGu9BWImf3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=etehtsea.me; spf=pass smtp.mailfrom=etehtsea.me; dkim=pass (2048-bit key) header.d=etehtsea.me header.i=@etehtsea.me header.b=irli87Rh; arc=none smtp.client-ip=57.103.89.153
Received: from outbound.ci.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-central-1k-100-percent-6 (Postfix) with ESMTPS id 3084918000B0;
	Sun, 28 Jun 2026 09:41:19 +0000 (UTC)
X-ICL-RepId: 019f0d9a-d68a-7924-b09f-559281c82f80
X-ICL-Out-Info: HUtFAUMHWwJACUgBTUQeDx5WFlZNRAJCTQtJBEMGXAVeDU8dXA9fEhVdRV4MXgdyFU0dWxlEDlNeVB0TC1NWVwRcEEceUgocHVxYQQ4KWgJQUR1fAgoERwRbF0YDU0VRGRcRUAFYHlZeWhdeTUcfQE1iSQFaGVscQBdKbk1TDw8VTR1bGUQOU15UHRMAXg8PTAtIAVsHXQBICUEHXQRaHEUNTAZfGlgfHVgRXy1SH1cYTQtWDBkGV04ZDEodUlZRBUoMXABoD10dWBFd
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=etehtsea.me; s=sig1; t=1782639681; x=1785231681; bh=qXFGG5ROoxDwgg8Mh3+2KsIvg+hDI0p5sUvKNQ3jUYM=; h=From:To:Subject:Date:Message-ID:MIME-Version:x-icloud-hme; b=irli87RhEVcc/niGegSLny0Www47g3xCxr22cLTNXjkZ/HS5uOyNHp3J+3i4TQ3a0sQvd4hMPj8+q8as6mKJO5eQq6iv1i1S2c73hNUUyHtrWQkRjpR/GiSNPxuOqFlRVAzmBOmO51xIo2ryAiK7vqvsJfynK/RhYIaAfvoO1ulCXHtTZ6K0CBO78V0fHufipiZ5L2Hpbba7N5mbB3YLVwl295G3Is0jOcVhpW7Aqjs6MtT1S7Yx8lss9oNSs8vdojbaeIaM08qLAjYV4/HrYfZaYBhkt6fqwPk8HLi08lxmbLSvwuluqchfuXqWojnKqHh7CW81oEbhZm8g+veX1g==
mail-alias-created-date: 1634905887181
Received: from localhost (unknown [17.57.156.36])
	by p00-icloudmta-asmtp-us-central-1k-100-percent-6 (Postfix) with ESMTPSA id E1B711800100;
	Sun, 28 Jun 2026 09:41:17 +0000 (UTC)
From: Konstantin Shabanov <mail@etehtsea.me>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	valentin.manea@mrs.ro,
	Konstantin Shabanov <mail@etehtsea.me>
Subject: [PATCH v4 2/4] dt-bindings: arm: qcom: Add HONOR MagicBook Art 14
Date: Sun, 28 Jun 2026 16:40:29 +0700
Message-ID: <20260628094031.54452-3-mail@etehtsea.me>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260628094031.54452-1-mail@etehtsea.me>
References: <20260628094031.54452-1-mail@etehtsea.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI4MDA4NCBTYWx0ZWRfX6RPYQsVPRxIE
 y3UpU4wPbHKtIthNwLu1Dvg9P6JF1sLttzKRzsljT1h8aCc8384jmS/M0GnfRqNa0kWR7w4srCO
 /tmORRFoVlEJ1+Tmqu8lLgkJG7YJROnbTf+wyaBxcHuQmkDrexSAceNf+/fihNR+xXMa5fBI2z4
 1QmZvKVx094YNoQ3ViGdeA1V+EVVK4YLM3f8RKUToOSqsL9CxQO7v97kxgjIBzzENg0aQ6FUhxo
 xWOCtjtP5WlUM1PpZe/bEbJ8Mt0iev57fvxG5Gwcu2suaH5LcZYeAyAiHZSbCJGmFl4I7QVR3lj
 I2TjRbZiqIM1GxInNeR
X-Proofpoint-GUID: zo3rwByfKe7T2VEsvGZAigdbq372_uir
X-Proofpoint-ORIG-GUID: zo3rwByfKe7T2VEsvGZAigdbq372_uir
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[etehtsea.me:s=sig1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-316374-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[mail@etehtsea.me,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:valentin.manea@mrs.ro,m:mail@etehtsea.me,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[etehtsea.me];
	DKIM_TRACE(0.00)[etehtsea.me:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mail@etehtsea.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,etehtsea.me:dkim,etehtsea.me:email,etehtsea.me:mid,etehtsea.me:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B0826D381C

Document the X1E-80-100 variant of the HONOR MagicBook Art 14.

Signed-off-by: Konstantin Shabanov <mail@etehtsea.me>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 50cc18a6ec5e..fd985f8adb0e 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1160,6 +1160,7 @@ properties:
               - dell,inspiron-14-plus-7441
               - dell,latitude-7455
               - dell,xps13-9345
+              - honor,magicbook-art-14-snapdragon
               - hp,elitebook-ultra-g1q
               - hp,omnibook-x14
               - lenovo,ideacentre-mini-01q8x10
-- 
2.54.0


