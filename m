Return-Path: <devicetree+bounces-263560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNK2Gh4Fh2ngSwQAu9opvQ
	(envelope-from <devicetree+bounces-263560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 10:25:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDF910554A
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 10:25:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 447CD3015895
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 09:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79C8530F813;
	Sat,  7 Feb 2026 09:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="We6OdlAy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9EC30E851
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 09:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770456345; cv=none; b=J3i1RZ65jB+26lYb60x7vb1HBQhjRBHV5xzOhxkJg53tRXqp2FmQBI/+Xu5AdOXwhFijOEfV/D+q+9PBTtoaJqFpVYifceV1JjoRwDmQ6HxLJ7SHMYcy2R/zQukWKW2zUJzPQ0nyvOU/4/jRVmWDCKCLm9is9FfySs3TNj3gBQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770456345; c=relaxed/simple;
	bh=hJ1l789RsEeMkktHF58F2aSO9tx6XIcoj+qB0zmuang=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oKkz//laXKRZXFuDs0KdS+v63wCIeQNATlYlCL6kuGcDfQ52nylnJlc4QDfw8w+PjKyLeIzfFTOFBv9dneuoVfv/FVyUhHXD+SILa9DaUHZAWHWTtxbIh4ch4HPYNelCDIdNTgJBXMmAIdjT6Hd8Z3Spghysvl0o6TpZ+IPW1so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=We6OdlAy; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4806f3fc50bso16301545e9.0
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 01:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770456343; x=1771061143; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PEIQmFNiAqTJVNLjePK2g3dQ+ZwYNFMoN7rZHrRTv5k=;
        b=We6OdlAyP34nwm5DLG0Q2OS6tRWMw8vrT5IT8gmFnAfFY8tg8EJvdMj4ne6kfRBIAx
         +Tal/EqmwAbBkwBnxI6JdU+Wr16gDFKiZyxS3t1FjlGLuxbqq9ulN72fc+aCXGvYkUR+
         4ToVwUMvBtFaehmpEOmlNOWQddPfaXxYsOTpkxIRAsRsbQUUHAsAoU7UDd7TcCIho4or
         PEjzgj/ImAlKQloZOkR8tNavp1iq7b808MRTxtXmDqtlHKSCk1hyPoTyJHDkkaD6LE2g
         nOY0lUIuMaggRjICIJzVRN3zMPo94EWsdpeD5K0ehU51aB15ADJkNcUA9JXdECS0UAQl
         84Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770456343; x=1771061143;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PEIQmFNiAqTJVNLjePK2g3dQ+ZwYNFMoN7rZHrRTv5k=;
        b=JCdb/AaNJ3Ts6tNlnYQT8/1eQ8RhETK+92nZWjmlEFo1VMCw2ehNVJmnNo8NPY2tlU
         G1QOWITeOUjI0J39+9QkKUxd0tpVZiaLDJbLqlXsCNwGN/jK4h9vIjFYcpG3tDHuuZeM
         sHFOA0JGoMgcBM06pylGQz18TLJ7o/v7dg3NBEXy0odwkMK/7nDU+hpeG3xbtkJGkXWh
         pTeDCGJv48+afMhCOmKEBV+bTAqNYeczZwU+2h8DWnTsXgqUekmFI+hJOJyqvoK/c+Qx
         LHbjzrJrGs8PogirZnCfgDFLkxm2Ic1XVFpGV9Q8RJnqkT5VViiWjrrIQa7tT4s/gftD
         I8rA==
X-Forwarded-Encrypted: i=1; AJvYcCW2xxlpUyrWnGW5VTtRwJ3UJrzUHJonof4JFmjjOED+kXqAM2Vb6rbSodCtTvdNlhaR4mk8BqlMt0gX@vger.kernel.org
X-Gm-Message-State: AOJu0YzSLM9r5+0TqPHWJJgaEkgNITDOdPjI5q7xhe8QX2KD+kURaqQE
	eyzhbdI4fQc4F6McdirmrmjMpRlPhNGWVetsLYumldde77ukL+mDsxYE
X-Gm-Gg: AZuq6aL8I0epPYWB+FWqKo/vRp4/8zhtN67rU7+yrvBpi6OQdyZxpDoOvZ18fvR8qN/
	KWHrLFCRNqGsvyRDjbeHoZuDfggdJI58ag6C3i1BXcpExDzvxpCxIyGb/aeOyE4C/ExUzwnFxpc
	6x9se54u4CkRQS63jtuSFsbUiQOj5EqywnWZGzmD2D3eQ6R4GeMQfhV0OwdqhbSXIqyBVkGR92i
	YbJ4rRb5cA6CGd9MayhAc0nu0lQqvPU7PORLslJdTDIR1Yiiowgyw6RBXvJIWYBdv8O5lX8fXj7
	dyyZNaqm/aia/hjxcpnKoNjvw1BYiHnJGRG0+PAr7ddwN4hgaZmPGeuXzuykX05PEmOtGHUoo9U
	/Bevhs9FwDxFlJJ/P/q3fkoQtfEQWR0Jv7Kuh+OiQzx7criQULBAzXGN13oAxmb7vDOP0FurPSV
	OJacaBDgrxRBI=
X-Received: by 2002:a05:600c:3589:b0:480:4a4f:c363 with SMTP id 5b1f17b1804b1-483201e4022mr81467635e9.9.1770456343103;
        Sat, 07 Feb 2026 01:25:43 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48320736953sm101034545e9.15.2026.02.07.01.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 01:25:42 -0800 (PST)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kuba@kernel.org,
	maxime.chevallier@bootlin.com
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	pabeni@redhat.com,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH v6 1/4] dt-bindings: net: ethernet-phy: add property enet-phy-pair-order
Date: Sat,  7 Feb 2026 10:25:36 +0100
Message-ID: <20260207092539.647768-1-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263560-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9CDF910554A
X-Rspamd-Action: no action

Add property enet-phy-pair-order to the device tree bindings to define
the pair order of the PHY. To simplify PCB design some manufacturers
allow to wire the pairs in a reverse order, and change the order in
software.

The property can be set to 0 to force the normal pair order (ABCD), or 1
to force the reverse pair order (DCBA).

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
---
 Documentation/devicetree/bindings/net/ethernet-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index 58634fee9fc4..4a27547f7d7a 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -126,6 +126,12 @@ properties:
       e.g. wrong bootstrap configuration caused by issues in PCB
       layout design.
 
+  enet-phy-pair-order:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    description:
+      For normal (0) or reverse (1) order of the pairs (ABCD -> DCBA).
+
   eee-broken-100tx:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
-- 
2.47.3


