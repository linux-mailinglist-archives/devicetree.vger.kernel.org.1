Return-Path: <devicetree+bounces-262188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBwwHN3RgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:45:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E423D7E89
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:45:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 844893014A36
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 762333128C9;
	Tue,  3 Feb 2026 10:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K3xECGcF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBF32BF3DB
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770115547; cv=none; b=KuJljabwPaLH/sYj2axqyE0tCE79H0Q13Drd+fl9zJyf9IBC0EnQFHBhZtiH3b3XTShzIhONZyGRn9Aot5B1gphK/dhxSifOXB+pRS3NDxPf7CkaLSSjKjidSEnFi63hIawJtJ3GL5lYf2oLnQqucFGyEGggpR7JxSFlD/DlpAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770115547; c=relaxed/simple;
	bh=zsphaFUwrIMo+pf0TuXkBfQPvCURjbSZqfmjuT5IT4c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DDQg1nvpdjZPeVBSNsmBiW1Q02dWNQNM78YBbe/1/P3MQYFplfDMOLcndlzBaGrvkFEwRx0n1I2g4BCCniMvxol9jxUL8QV1jD86IuPv9QUmiaED2fOH2abEdJX5TlvzGB6EZgqU+vuG4KIC54VaOBLYY3T5AXsAt86jRMPvZMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K3xECGcF; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so58042095e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770115544; x=1770720344; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3pjjTKOk0euh5gASu/21SEOkboYtVXo/rQHyHB6vLHE=;
        b=K3xECGcFtQIlQ2dgUF4Gi9SK/20rSsb84EMVhbCL8kdqXnfG/IEmWus4SpXifRokId
         WrzzUIGvxmYNcWC8DlBnEnizdvnJnvtMNdxmPRUeiSoSX6kTZ+q+1ql0Z682mSOqUrDT
         N1REgcgoMRISNCBz2Ku5+OdQAoOaMaOQtMlRKJwH6ZSeZy1PTmTpNC1TUGM7icfTME/m
         yUfeRHOxcyZy9WUb2H1pMYtj+uz8nMyzgt5HaH16q/P/jo9K+F+wzF3IYJ19uB+QC2uF
         XPjbK/VS/iHvWhuIjr5HMF8HHpXxZgf3FWmZKnLVOsiwUn6KuGdotiq8gtefOWiWuV6y
         pcPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770115544; x=1770720344;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3pjjTKOk0euh5gASu/21SEOkboYtVXo/rQHyHB6vLHE=;
        b=pkKI08oyAnAeYmpcLmP/FiQ3V9SPQle5HCUXIfY6TxbwlRn9jLRing4V6aoE+jFG5c
         pXPWIHyVjxcdASHI3GgjiwsHl3sEN0P+mwmGWRF36rVHg4RFH3v01xTrhC9qbDIV1RK0
         K+HIb3DxpKP633MXwtMdfcd+5pM7J4b6MZ5WVsiVhTSWWRxUbQnO8McSXm3hYdpUUpZL
         7E3A2vohnPcPumgQqZhmMuf3LpE03/PVo+TWTEUHoKkimasm5p7ZJVFrS/dclBW3wSGn
         1GftBMBYbrT53CCQuVae6sxXqMYjEd20caz2U89xTch2KNQbTgK2u9HBGX4dpi2dtEjq
         dqrA==
X-Forwarded-Encrypted: i=1; AJvYcCUyu4b4LMti5za/vm0G2hcorwWAOSaeNbhJ0yuA29BO0WTVkQ1elzBJLljJ28F2qVldPbXWXpSiOUdP@vger.kernel.org
X-Gm-Message-State: AOJu0YzSq1VkuPxWenAj53QMeSlq8JYt1WsBqejq7Ocitj2oMkcHtnZq
	50M3mxC5H0MAMB4gSQY+RC9ajaO7vunsrEVWKF3NQx8RFqPkt5AMwFt0
X-Gm-Gg: AZuq6aL7mGGIIQE8q4d5eUmIoglUKRLmMQGAp7V4LkHtSMppu1Y3Z3Fg6aoKOn3SDDL
	fE5sq8NmUsBJzCv4sLojcwCNrzyYWMizOwCWvA5G8gibTz/cvz3zvCkrR0HHnKlLTMyZidnqK+c
	dc5YHQGVTAe02TV9+d57CL+hqBN6NRLn9yAKd+sy1nSr9NtQ2n9CvruMrnKBWoiPRls9F9SG/+7
	snmFBtEXN/VomY3Dh6RDf8VDBig2hDmpVNtqgIMu7Pk3eBIuwPqrszTbnnlogNaZ8az4TBHqs3L
	CbmkitZ2R1dUrJBFje/jxq4Hnx9RsR/p3uzqT+1355FpjSDYHOkr7VR8n0z9GMEFvVeIppa/kQ/
	d2r3E8fXKAvn1/uDF5bGBSV5vjLPHBZ3wtKp8D54uc4YYmuGj7rYCjSBt78NAY1G74IFQTV607q
	aigDKjmjGt0mY9MedmwHoK4xFzK6mE
X-Received: by 2002:a05:600c:c4a5:b0:480:6941:d38c with SMTP id 5b1f17b1804b1-482db492393mr191878015e9.29.1770115544341;
        Tue, 03 Feb 2026 02:45:44 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4830512ddd0sm56554995e9.9.2026.02.03.02.45.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 02:45:43 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	netdev@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH net-next] dt-bindings: net: renesas,rzv2h-gbeth: Document Renesas RZ/G3L RMII{tx,rx} clocks
Date: Tue,  3 Feb 2026 10:45:38 +0000
Message-ID: <20260203104541.264759-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262188-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[bp.renesas.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,glider.be,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,renesas.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1E423D7E89
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

As per the RZ/G3L Hardware manual, CPG_CLKON_ETH register bits{12,13} are
to control the RMII{tx, rx} clocks. Document the rmii{tx.rx} clocks for
RZ/G3L SoC.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 .../devicetree/bindings/net/renesas,rzv2h-gbeth.yaml      | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml b/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
index fb60f745a1ff..2125b5ddf73d 100644
--- a/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
@@ -58,6 +58,8 @@ properties:
           - description: TX clock phase-shifted by 180 degrees
           - description: RX clock phase-shifted by 180 degrees
           - description: RMII clock
+          - description: RMII TX clock
+          - description: RMII RX clock
 
         minItems: 7
 
@@ -77,6 +79,8 @@ properties:
           - const: tx-180
           - const: rx-180
           - const: rmii
+          - const: rmii_tx
+          - const: rmii_rx
 
         minItems: 7
 
@@ -170,10 +174,10 @@ allOf:
     then:
       properties:
         clocks:
-          minItems: 8
+          minItems: 10
 
         clock-names:
-          minItems: 8
+          minItems: 10
 
         interrupts:
           minItems: 15
-- 
2.43.0


