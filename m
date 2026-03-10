Return-Path: <devicetree+bounces-273671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGH6DjtXsGkJiQIAu9opvQ
	(envelope-from <devicetree+bounces-273671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:39:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD56255B72
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 95E51302B4CA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5CF3D47DB;
	Tue, 10 Mar 2026 17:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="REPaTk+6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73F93D47B1
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164337; cv=none; b=IJohfvR7BKYYb06Eclu+lY8S09wM8UIkgXDM+PL2WwGPkNVVMWDJuFFhEwyB7AnUQkXG0Y/43vi3CUpnPES3oDEzSeZn01Hfg6hiNScgpQdXSWlwmd0GDiLOcMAz4qDdybhyeMq3y1DGbAAoXZ0bC+tnpvHcOQ9LOeu1zo4j/t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164337; c=relaxed/simple;
	bh=i6Ts41fXLRb5swardCZUkTCJ3f2AD6uWbw7o0btGsW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K/XAf01t5GgM/+rVMs5cPqYYlM/OT+ywdcC8JjPWuIOhXJ8FHttYMLWFoH/ZUoeZ+5YwYZbNQ05IxngVsRqDXhkTLkUPhonCaBq9yMmCYNtSdkqZ/MITIJCQsEPNFbz8/8Glh17bFVvkhH+MJD+r2kF6gO/L988jcWvpr3VCbwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=REPaTk+6; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48540355459so18401895e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773164334; x=1773769134; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=98rPC4PTu7tCmBtkzzBMDz6PWd5qa76zGSirl2GTGes=;
        b=REPaTk+6KZ3HNkdiYzZUhFgPaX+ALaMPnt+fdvHYLY/ZInCXAOoMFXxZNTEj0t6O+1
         WlBRWVvpLwYxwy7+UCqkDHp394iZOK1GPA0UVNVF1Vqi5SlJJIQXg+wHzihgNZwlb36Q
         kEa6s0Uu5r/HPJGPK2GOecmys3CS/tlUNtQuBMTmDVLkR+3P+P+TkKGCCkfJhjiXa0PR
         Ft7Iy7X+P6AWy9U2c2BySHhc7Ny1melQ/+hLfk3WMtgfhVSUApwTBjM7gE90ORZ38mGA
         RZaB6DCt5PWBdAXM8TRjPGCLx/pH1mWDhmdHAwhBIjd1VI5cTX9G+slqoKtd9O2z5gDM
         8TPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773164334; x=1773769134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=98rPC4PTu7tCmBtkzzBMDz6PWd5qa76zGSirl2GTGes=;
        b=mJJNyHpMh4FQ49sk5LkOvKLo5USrdVEo3+X3J8pbydYhqjSG4boXL68ALPPGusIWyu
         uULWQ5Vul0dkvx+dJ3C90xQAdPxIf8Jo/ou22oFYNci6sy8MWJFF0/KBnlm0ZCmSeC0u
         sT0y8Sz9MH2FgD3aRAYqqVE/dCJCVHRF5KalAk+6cOENdppe6X9QH8l90SsNOH1eP+QF
         K7M3L9kVrhg055fl5aWvL5IyP4YZepeSn+2K8E1uY3kJ0M5r6M8XRuuDVHoonuIr5vql
         1l7Q4o3Q3/Io5nG4LF6l9OWtBZ3T63zK+y/C9oWVjnGRgM2nbaHo08rO7ZBFnBakO4ug
         mpzg==
X-Forwarded-Encrypted: i=1; AJvYcCWrWFaaOzZNn6SpjTNdUsDw13guNklcSaFRUB1TckbkzkaMlf3IGyP3STIA9VtFr1tAWjXw7ziWG7KC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0vg8TE8FlOrY57peaGplpbLUci2f9dX5PKm6XLgVkiyoKr/8m
	dYXTSrDjJQZFjDOAcbQBcXMhMb68rUy7SW5zuL97WkWowXDSNX26iYd7
X-Gm-Gg: ATEYQzxHquYVV8H6oC7hT9ewRZ6X0xYMhq48yXIHOx0Z0g7FbwT4qjybLEdiry2IekC
	p3jl4povE+zMS1FaqDJbLKGC4IaUTAo+ll2MZN4mt5tTf4LoRWSosd3gRXRc6mtxVjL3mlE0QG8
	gmTMCSzq9NXYWXnUmSjrc6tkod0yB6KaSCht+RsT8bRw4HgSBaSm15FLa/j1vntOEGQgatkUHn5
	077hiXrlA6WP5v7HaxS9+GO7Rs0idxmOJypUHpTLQrxgOnlhIbUcYm8eADRTG8Nh7sv69Jnv34K
	lb0mzBJYvzJ+bFqa9GKFdawTOnbMfC1x6raO9z4Kdv4L6yEPAE5hUQ/hF1rlhAm4Mz7R2+2Wd+E
	d/l5mhcbOMSXrRXqPmIw7d56tVSOZaVTEF5sCe83e4Wr8pA2E/aArlN75fki7umahRmkPnd2AfB
	AL3yg52gyKUZuQUXzhqlNPmOM=
X-Received: by 2002:a05:600c:c173:b0:485:3812:36dc with SMTP id 5b1f17b1804b1-485381238b3mr164800125e9.9.1773164333895;
        Tue, 10 Mar 2026 10:38:53 -0700 (PDT)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541a900easm103239295e9.9.2026.03.10.10.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 10:38:53 -0700 (PDT)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kuba@kernel.org,
	maxime.chevallier@bootlin.com,
	pabeni@redhat.com
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH net-next v7 1/4] dt-bindings: net: ethernet-phy: add property enet-phy-pair-order
Date: Tue, 10 Mar 2026 18:38:43 +0100
Message-ID: <20260310173846.230923-2-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260310173846.230923-1-dam.dejean@gmail.com>
References: <20260310173846.230923-1-dam.dejean@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: DBD56255B72
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273671-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add property enet-phy-pair-order to the device tree bindings to define
the pair order of the PHY. To simplify PCB design some manufacturers
allow to wire the pairs in a reverse order, and change the order in
software.

The property can be set to 0 to force the normal pair order (ABCD), or 1
to force the reverse pair order (DCBA).

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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


