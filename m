Return-Path: <devicetree+bounces-315251-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gWS+EvLdO2rBeQgAu9opvQ
	(envelope-from <devicetree+bounces-315251-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:38:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F37DC6BEB41
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:38:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FHQTxJel;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315251-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315251-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FDD93091C52
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 13:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B96C438B7D6;
	Wed, 24 Jun 2026 13:37:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAE31F4C96;
	Wed, 24 Jun 2026 13:37:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782308222; cv=none; b=k31MsSTyK5lHB2Rwu+Hocg9w+inNjuHKh0T2A+uaGTPfKgHft7TcDtW/fB2wp3rEirnJTmeDYdW8LfH31uu6LEYG6FdFRZAl/MV7V1RWcp/b/9cNdE2UvJqvr2Zs4uLW5vIpM1GFAgmColIfV/xOWkcQ6gdOS71mpmPFjxps6ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782308222; c=relaxed/simple;
	bh=DmNmk89jHRGF0HMR2bqWhqfTKrWxCqSJV/gZMZdMyz4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lzZbaIsFS6BQxXliVSiGim47IpPL3KyBSo2gPVsq199RpdoLmW1Pz+Hr6ioMHy3yqooclsYtRpl+5h3xPDoMvavQn21CsyQhZX8HPkskXopiLiFVSDYfDa2wqDOQ3oiVgw9lrhm/wfsws+4k62AB2mNZPhTvmjLYmayr5wSzq4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHQTxJel; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B5001F000E9;
	Wed, 24 Jun 2026 13:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782308221;
	bh=CV0B6fPgP7Nr8Stw6KChmVD4qZfsxnWZMz7t7ypTqzw=;
	h=From:To:Cc:Subject:Date;
	b=FHQTxJel3r2tHMLco7N4iZNJ/4aycGp7Tw9Y+30NtTW+N+gI5a1HQfoJpZgCSf6Sr
	 Uz4D+/1jjNO60BhOA2AcIdakPwUgR93/tCDLZJGODK1j3fg/JsMkXFBDXcDj9gWQHL
	 g2aqGoa6f2aycHM62FLMi6uW0T+dqUofkpQQEha92krZMvSiyUMkw0CRDhZFEXR9d3
	 doqZMx/gXPMXJWEBN3jw+iAj5bcKdeRiV9y7q/aQIMuIohL+itZYRmHKFJiniO3dfO
	 Q0pmPkzR7JykDhCljUeJSUth+d5xMmMYaM6cwt0/j47l1XQO6BwkIN+jHEcO6ni6hb
	 ygHRcTiojhZcA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ronald Claveau <linux-kernel-dev@aliel.fr>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: khadas,mcu: Drop type reference from "fan-supply"
Date: Wed, 24 Jun 2026 08:36:42 -0500
Message-ID: <20260624133643.4146351-1-robh@kernel.org>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315251-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:lee@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel-dev@aliel.fr,m:conor.dooley@microchip.com,m:linux-amlogic@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F37DC6BEB41

"fan-supply" already has a type and shouldn't have a type $ref. Drop the
$ref to fix the warning.

Fixes: 39dd85d9246e ("dt-bindings: mfd: khadas: Add new compatible for Khadas VIM4 MCU")
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
Applying this to my tree and sending to Linus for rc1.
---
 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
index 1f135618e3b6..c6f91e7bc8aa 100644
--- a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
+++ b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
@@ -28,7 +28,6 @@ properties:
 
   fan-supply:
     description: Phandle to the regulator that powers the fan.
-    $ref: /schemas/types.yaml#/definitions/phandle
 
 required:
   - compatible
-- 
2.53.0


