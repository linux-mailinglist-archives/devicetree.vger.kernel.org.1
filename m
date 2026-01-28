Return-Path: <devicetree+bounces-260355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JhzJgv2eWkE1QEAu9opvQ
	(envelope-from <devicetree+bounces-260355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:42:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A1DA0AE1
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:42:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 67CD0308E550
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9086B34EEFA;
	Wed, 28 Jan 2026 11:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b1UXqsgx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E048029ACF6
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599842; cv=none; b=HgoZ+s6Kf+cotcguZBsjf9HbZR9QHACFcVw77vHMBIYV7g7dSM7lsR4YKiIEJHPe7VIchjYXDc6+d2Xw9xeTwlnw00XJFuXU4Mgs4bCq0OsaSxJJglcImql0eMnEha7dv48Q9HJExvHM0GyX+x343yRVGI6gzhRfVM8E+E3Nx2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599842; c=relaxed/simple;
	bh=/RCaq8Nf9DK3BBKk1+1Bzr//w+kvr95FiZjsjcdJyuc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m/sKKSgzYKG0HlBFQ+zEm/N7JUOqvUu+Gpj0jnRP4HF4jBaTis7+1Xm+vJIBUECZYrfy8TGp61wfj4rZjREkZQmFImOMqVUsBfjftbHQ1iAeLOKKwvk94g0bwiMMdZVjY9n6tjHcoxzD7XhMgOKbsdD+g70y+179U9kwJf7FH8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b1UXqsgx; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b8845cb5862so1053701066b.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 03:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769599838; x=1770204638; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nGs+LR4jbDBowtza76Mu6Qaa4SHKRymwud+Uk5Ptu8I=;
        b=b1UXqsgxL1qixfvA6+Dk/N8qe36z0OO33GJrECZ/Fq1mM6q5k/A8xnblVCFMkdSmKd
         nNaeS61oq4SKIme4o8OVaE4Us+NHhngFczWEZJwK5frnhoLBuwF29KC4PeglDSr8GoYX
         3v7RFRp/SydPT5rYiUNpCQgR91dy/igMNTCHjqw3DcMUbwpp0Rzdfq6VOD3CX+B6zc+I
         1UM03PmwpwTBhtGo5PlD4bYqrsdGwt/vAGQp/TuMinq5JTOGY3KAdDdVpHSeYU7H1Zxa
         ae7F/0+FzTU5aW/47qqp57oRHu6LTKz4v/CPRcfrb3LuS0U9GtsOtPdzqKNsU8BAmjoP
         DS6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769599838; x=1770204638;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nGs+LR4jbDBowtza76Mu6Qaa4SHKRymwud+Uk5Ptu8I=;
        b=TrBQn+fArGs+BaZ/2/Or162blNoSJma1jqy/rXibR6jX0MEfJoJxrwLJdKZ2ymSSKb
         iXg4lZlG+K7MdK0JqnAbFuVZ2FOQwVRNv9hcKc0ariMSSfSl0XB5asDQk9NW5BbN8R3b
         VFLf7vV0TIw4Gd3iS4HVedpmTP9X+5FQS5pHiNll/JtCJeoYyRdtSywCzXOxZDGTqLgP
         cgNsXT33e0WdssQPzf67mZXhdOp2DOB3NK1nb1s6XJ6S2jsuwW1AzcHGXTjyZVcTvCye
         S7SK4jNF6s308EOKVm5vOuPBKGe+DshLdedDjvqDYjMHxM+ZXVvq8mvPrLrjEtuBylgz
         ZZdA==
X-Forwarded-Encrypted: i=1; AJvYcCU2u6uVNQZRnHec5anho66dK6ZEtVVKHZ7+2jIN4dGc91EAq2pL1iCe5i41vgR8wqhqvnligWPzrFEa@vger.kernel.org
X-Gm-Message-State: AOJu0YwIE1cWwRg2tM49MHxC88/RW+CMvFjOxUIUE0CjBEOcVbVA3Pou
	szUjhvF2+eNhfgvFtqMDKiX0BwYov8SylBSnygooSzmogfwcIvPlDzZn
X-Gm-Gg: AZuq6aKwIe8IchKXNChHcoxPZdYeZYR7CDMdQH1a9i+sGZO4BZLVZK/AG8U6CQYAMom
	1g45zqwEMs2aJrac+0JIziXKX3w6wh8C/wBzFXUHOlI8PzOG82kFrffMo59QuxQ6K5TatVcyqNb
	H/EBZJYCJ9NfE6tLll4K5Q7iEj882m0iddoibuFqrGfZqK+egWGEURaCzU1xwWkV2MqEj0B8EIq
	sRuX5uNAKfAB1q71iY/xHDprHoENbavYnJhzBMv+9bIiPDTcPfOqAOj07DqO3WxwCyrXokV5vkG
	AT8mLd7nHXBn/p7C3UKwXuDAIJ4WfHw0yI2MPRJFH/jospyqUmY6aE8UTIOgSn1jM1RT4yR6I1s
	7NzK6eHgNxE6w3AwrwLLB2NDIOE7hAMnGz6Ut5AwbaJ355mvB8rYKicS4gLX3txM5WO4AX/a9SQ
	1vqKsaRPOxPySBFJ/DS7HweSkvkYGm0Fc3UU4=
X-Received: by 2002:a17:907:e118:b0:b8d:be69:78c1 with SMTP id a640c23a62f3a-b8dbe698346mr174031866b.46.1769599838005;
        Wed, 28 Jan 2026 03:30:38 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e29d:6e0e:72c1:d15d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm114400366b.46.2026.01.28.03.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 03:30:37 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Subject: [PATCH v2 02/10] dt-bindings: soc: renesas: Document RZ/G3L SoC variants, SMARC SoM and Carrier-II EVK
Date: Wed, 28 Jan 2026 11:30:21 +0000
Message-ID: <20260128113032.337231-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
References: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260355-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 58A1DA0AE1
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Document Renesas RZ/G3L (R9A08G046) SoC variants and the Renesas RZ/G3L
SMARC Carrier-II EVK board which is based on the Renesas RZ/G3L SMARC SoM.
The RZ/G3L SMARC Carrier-II EVK consists of an RZ/G3L SoM module and a
SMARC Carrier-II carrier board. The SoM module sits on top of the carrier
board.

Reviewed-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Squashed the patch#3 and #4
 * Documented GE3D/VCP for all SoC variants
 * Collected tag
---
 .../devicetree/bindings/soc/renesas/renesas.yaml    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index f4947ac65460..5c22c51b1533 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -548,6 +548,19 @@ properties:
           - const: renesas,r9a08g045s33 # PCIe support
           - const: renesas,r9a08g045
 
+      - description: RZ/G3L (R9A08G046)
+        items:
+          - enum:
+              - renesas,smarc2-evk # RZ SMARC Carrier-II EVK
+          - enum:
+              - renesas,rzg3l-smarcm # RZ/G3L SMARC Module (SoM)
+          - enum:
+              - renesas,r9a08g046l26 # Dual Cortex-A55 + Cortex-M33 + GE3D/VCP (14mm LFBGA)
+              - renesas,r9a08g046l28 # Dual Cortex-A55 + Cortex-M33 + GE3D/VCP (17mm LFBGA)
+              - renesas,r9a08g046l46 # Quad Cortex-A55 + Cortex-M33 + GE3D/VCP (14mm LFBGA)
+              - renesas,r9a08g046l48 # Quad Cortex-A55 + Cortex-M33 + GE3D/VCP (17mm LFBGA)
+          - const: renesas,r9a08g046
+
       - description: RZ/V2M (R9A09G011)
         items:
           - enum:
-- 
2.43.0


