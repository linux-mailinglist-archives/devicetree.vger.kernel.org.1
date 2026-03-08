Return-Path: <devicetree+bounces-272639-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aB2ELW8Ermlq+wEAu9opvQ
	(envelope-from <devicetree+bounces-272639-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:21:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5748E232A51
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:21:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 06BF1303676C
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 23:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25822356A38;
	Sun,  8 Mar 2026 23:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="nby08M2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106120.protonmail.ch (mail-106120.protonmail.ch [79.135.106.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C706623B62C;
	Sun,  8 Mar 2026 23:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.120
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773012038; cv=none; b=ntmA2IdpDsT4bNJlat3oFiCpcs3JrrUnceQiTwRL1ag7K4eMV2AEm5wPFjrYFEA/vSJ+cCtxYftbt4d+f++ghWmH8WxRiHoxjBEW383Kz/qHq2fxdQfhKAhOOquDT0Xyr0pcCeXzxEQkhsiaWFZY/JY2ecY8C7wTyYy/CS52TzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773012038; c=relaxed/simple;
	bh=EFrSuc2SdbmpcJpGclMRzS8DTn9v6weqBkk5dYCqnlE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mNoQPzankhPjjTaqoMIv0EbrJ/dslZJmDMJ5F7bGC9rvxdig9yoH4bPjC+8vUSV33g9hUmnkV0FDt2JgS7a4WFOfzH9yMTEr3lllr6H9TqbmC1aAlgNhPTNNCIWY+3NIKWn5xwbttgq059tZ8wYDiuWkNAPgKoTZIJt9e2I/OHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=nby08M2i; arc=none smtp.client-ip=79.135.106.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1773012034; x=1773271234;
	bh=dx+eufURY/w9OVRqgejHERgP+fDPlU+3xj9P76ifVr0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=nby08M2iImBb9SrQ/RV9tExJFGOOFmXqmMk/I/6GtwNAwHry4c+0BRY/YDWFOKnxc
	 KnfVR3W1YogoZkdbom7izuAgfItDOhj1GbA/TfwsFAXVVyjnsHde1l96S3zWUXvCHb
	 G0JzdlSwwlEFn5UpKS4dwDJVD9nDF3XJczJvhHDhYeSoC/LmtUuLAS6nOfShdqD2Zy
	 aqFMoFXZ3UmTmmq0h2DXYyEjowtau4kKEjoiJ2IfHtUGfRSwuXF4zylX9jH1vEEV89
	 9B8UwVbXZF3Yz0bxhCOzk21bWqQQ/UwcjLricCnUY7Janmyok5dXNu44vRFn8NrD5S
	 gZtM/NGNqE7Ew==
Date: Sun, 08 Mar 2026 23:20:27 +0000
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>
From: Alexander Koskovich <AKoskovich@pm.me>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>
Subject: [PATCH RFC 1/2] dt-bindings: usb: qcom,pmic-typec: Document vbus-detect-gpios property
Message-ID: <20260308-qcom-typec-shared-vbus-v1-1-7d574b91052a@pm.me>
In-Reply-To: <20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me>
References: <20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 917b69edb690b0cb30d1e916d8e4a399105e8092
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 5748E232A51
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272639-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pm.me:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.967];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[AKoskovich@pm.me,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pm.me:dkim,pm.me:email,pm.me:mid]
X-Rspamd-Action: no action

Add the optional vbus-detect-gpios property for devices where the PMIC's
built-in VBUS detection is unreliable.

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
 Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml b/D=
ocumentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
index 6d3fa2bc9cee..f45bf3e34c03 100644
--- a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
@@ -78,6 +78,12 @@ properties:
       - const: msg-rx-discarded
       - const: fr-swap
=20
+  vbus-detect-gpios:
+    maxItems: 1
+    description:
+      GPIO used to detect VBUS presence when the PMIC's built-in VBUS
+      detection is unreliable.
+
   vdd-vbus-supply:
     description: VBUS power supply.
=20

--=20
2.53.0



