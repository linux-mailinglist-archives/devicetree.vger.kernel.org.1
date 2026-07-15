Return-Path: <devicetree+bounces-326967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CPnfFdh8V2pnFgAAu9opvQ
	(envelope-from <devicetree+bounces-326967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:28:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E9775E1B1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:28:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=nrlkSyR3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326967-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326967-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B9B453010BDA
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDF3447277D;
	Wed, 15 Jul 2026 12:27:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43171.protonmail.ch (mail-43171.protonmail.ch [185.70.43.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054C446AEF2
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:27:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784118469; cv=none; b=b2bqSnT4aVK+LkeOvZ7u1gzDhb6eB5q63cciSCKu8EAbuVu9XJZ1DyBt1WB526EYERt/2lbZSCEG3SfMIccIx38q1B8niDmp8uJjtBwk5GkLHvEN6xc481CogwBgvehStNwFFlyzoIhYAgo047WFVSOH0uMexUCf5Ln0O3gYM6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784118469; c=relaxed/simple;
	bh=feUXKoU1OigzdRs8cwri1uskaBwwc5Ly4ocsOXChL5o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XIAuZAUmnhghY9vCSjGtNUWlqGeNrmP3oHky+3bBXY9zu1kJ+s2eiXKn6HVj/IPXr6jfNkzBi/DCsT2y16TWWwtSqcyXU0ZN6udiYI4HJK4s61ZjFDaOByj373oLw5gK+kgnGMAV8OAcGdjUUc38EoHLyVS2NyvWkzg6yYVWROc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=nrlkSyR3; arc=none smtp.client-ip=185.70.43.171
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784118466; x=1784377666;
	bh=5B+E/oOoq7h8vHYA+0lGPxncQ4PnLMN7/YIu4Ypf8mc=;
	h=From:Date:Subject:Message-Id:References:In-Reply-To:To:Cc:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=nrlkSyR3MmAtiRjE7CsMMFVNP7PqWDOVv4Q7kpsjlWOXcd+syS//G9KXwZ6r8R/dy
	 LeI5RmU04Z3ctcPqjYp5g3zfzL7V79KyqyfpQKOyD/CtIz5AcQmDMwoG8UThNSE0lU
	 Fox+QlwREx/GyczZK3WHi0f1W1aPOKI4qTg+SBZPuQ8NYAoyh7Nhr0uGbG1EF7P4Bl
	 jm2sQVN8jKryI0rW/AO4HxjeQD72PndKSPHvrJm4MvoKWdsml25s1aVmkz8IfIKia9
	 Uz3IF/JU0bvC3DhPK4bM030CIHkUC16zA1+c+Lba2VNNoyvj9EDqkRtsdLi4HhoAxn
	 demaK/+nkVBEQ==
X-Pm-Submission-Id: 4h0b6S2cHDz2ScPt
From: Esben Haabendal <esben@geanix.com>
Date: Wed, 15 Jul 2026 14:27:24 +0200
Subject: [PATCH v2 2/4] dt-bindings: iio: light: ltr501: Add ltr329
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260715-liteon-ltr329-v2-2-d18af55edab5@geanix.com>
References: <20260715-liteon-ltr329-v2-0-d18af55edab5@geanix.com>
In-Reply-To: <20260715-liteon-ltr329-v2-0-d18af55edab5@geanix.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nikita Travkin <nikita@trvn.ru>, 
 Maslov Dmitry <maslovdmitry@seeed.cc>
Cc: Esben Haabendal <esben@geanix.com>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <jic23@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784118460; l=759;
 i=esben@geanix.com; s=20240523; h=from:subject:message-id;
 bh=feUXKoU1OigzdRs8cwri1uskaBwwc5Ly4ocsOXChL5o=;
 b=wedCmlErWr1AkJe8tLTJC9tpIeCI5a4Bd/HFakaOgBgGjaCvbGyjK5iQqr+CzVg3pYkmGSGi7
 nrwskutSM47C0ume0qZXsTxcX/TG8EFeJ5B5FntX8FEpOeeJxEy+z+i
X-Developer-Key: i=esben@geanix.com; a=ed25519;
 pk=PbXoezm+CERhtgVeF/QAgXtEzSkDIahcWfC7RIXNdEk=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326967-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nikita@trvn.ru,m:maslovdmitry@seeed.cc,m:esben@geanix.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[geanix.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DNSWL_BLOCKED(0.00)[185.70.43.171:received,2600:3c09:e001:a7::12fc:5321:from,100.90.174.1:received];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,185.70.43.171:received];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DWL_DNSWL_BLOCKED(0.00)[geanix.com:dkim];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,geanix.com:dkim,geanix.com:email,geanix.com:mid,geanix.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D5E9775E1B1
X-Rspamd-Action: no action

LTR-329ALS-01 is an ambient light sensor similar to LTR-303ALS-01, but
without interrupt support.

Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 Documentation/devicetree/bindings/iio/light/liteon,ltr501.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/light/liteon,ltr501.yaml b/Documentation/devicetree/bindings/iio/light/liteon,ltr501.yaml
index ab9bb68dd736..76e81eba7ea4 100644
--- a/Documentation/devicetree/bindings/iio/light/liteon,ltr501.yaml
+++ b/Documentation/devicetree/bindings/iio/light/liteon,ltr501.yaml
@@ -19,6 +19,7 @@ properties:
       - liteon,ltr559
       - liteon,ltr301
       - liteon,ltr303
+      - liteon,ltr329
 
   reg:
     maxItems: 1

-- 
2.55.0


