Return-Path: <devicetree+bounces-298278-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHwUMLoMB2oLrAIAu9opvQ
	(envelope-from <devicetree+bounces-298278-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 14:08:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3920354F183
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 14:08:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C160C3157036
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82CAD47ECE7;
	Fri, 15 May 2026 11:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="dGyZoH+A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECC447CC9B
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 11:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778845862; cv=none; b=dq+A6d+wMFmtunRUA63Vocs5u8N4Q999WaYpG7vAdHp+KzyAFMO4lMEuA08YgnE7AltKgs3WIecYk2OqSOi3GfrnPmTplXxGj71LXfsWPd/nXq7mGZey0PDMA/TBcegSXgjV1NQYLUHx/8b5uefkcPXyaJAO2kt4yW655fmuKjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778845862; c=relaxed/simple;
	bh=6kFn4dcGVaXo/n35fpEIPoxldbG29tZM7Sv8RrAE/FI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Lwo3mZNGJidw5vErIT0jUxvowZYlJX9fytPRii0GK/STYCHnPyPxpqI/LaXMQjMrOX5Mj8bcFSlrEl25GotQ5im7PGz/hY1ep/9lkrHJO1qtZVpjFirvjmSEMRYeMPsC6cblaLdCGN69Muj9iTEl8A4+Su098xeLxzPrVExsiE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=dGyZoH+A; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5a40502e63bso8296265e87.0
        for <devicetree@vger.kernel.org>; Fri, 15 May 2026 04:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1778845858; x=1779450658; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X6ljMWmUboXD/jlL65txDouWmV0Cc/lFptWauWqQZEE=;
        b=dGyZoH+Au2zrEwjH9gfGsLmwb8QoE4EOTJ8y2EXlRHR89hrJ/mnVFXKxALiKcq1sm2
         etls6uJrH0r+b1ydVqPglXCrRw+7IL15FZ02qq1BuIbbCvLPhxCBNEHD75A+sXGT8yJD
         PZmHzQFipstGnLrZ7ozoJLzDp7gIbOxiORV+jzioU7jmHjy/PWCsvZwN1eSoTBkV+6xl
         pSb6wmv1vxbVdeJiWTTJaZf1vdlVzq/4bGKPAcd1fKakB7rvZMRGj/uBLXK2zmND2TdE
         gaA6tvFl0j08cERLgasrcQCTeEXbuDXEiFRmLfxN6MJLZaLIkQr37nLdFYeEC9VmqYfS
         ogDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778845858; x=1779450658;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X6ljMWmUboXD/jlL65txDouWmV0Cc/lFptWauWqQZEE=;
        b=MLZJxc2Qf2qBaVFLk6CYnNH+O4PzdT1O/+C+sXcSBvtACgUaLlxAkWpie5am4TWTPk
         gJ0NLg/YC2ZrSGEBSCE8CNDnAAp4a7+4MprqduFtiE7jsZFH+CKRu40oZoHQyYAB3vZH
         4ja5/qe2G2osaFEILGd+L/BWWM8jKisKm2x7V8Bt+I1/Unrx3Mx7lGEt16YOWYP/+p6p
         Cq/l3qwjvzmLeVMMpkFWSEZQcrIguJ/ZpY6KEe9NXKTS57EQTROe9ImBxplgHiqObZyf
         DLy4X9MYNbR7cuiNVhrr+vZfoeyWI9c7f5eT5fpBnRvXqOGWNMws80tVqYNM3Qa97ShV
         deew==
X-Forwarded-Encrypted: i=1; AFNElJ8y4UQGfUt1sqgjBXgoqdrA2C5z4vf0+JNT/kADxhuwczDShp5YvuUi23iTXibX04hbHaeg+63hG8tv@vger.kernel.org
X-Gm-Message-State: AOJu0YxfazQ2vtgL1uI48T6+BnR9dTA4Kz7jFD+qvJWm933BzPXtOxH8
	VadFjRMmPxkmkG6+Nqo0Jfejv/EYKG4KP37jS+1AOM0eJSAnRSVC88x/6NBVpIVc80o=
X-Gm-Gg: Acq92OEJeEWx2ci5M3BZtvnG2yOPkXYL4/0RCSj1wUVBiVqMZMo5j1TTn31wO1QmYmd
	qJO2TlQ9cVGN9/7aPMGnziXz3oGlnB9/QdDX7IlwdSC1XgoQY4SkaDkVQZirL7e89XcOiw3x8TZ
	WXVr4p2KZYzf/gHg2aruorE+b3WZxAmydAGwqLY9LFSZGXm87L2QPfwqH7x7bJzjiZO0/J1B4wQ
	wLv845AOTI2IhEAMtJSnmQwlHifAZhgCeXN+Z8pLYRT2lZND1yi7j0AcHdL1fcVjyLtOGep35Uj
	NZzolXDrmpvpah2aWl97Wkzfig34EJfxLzU7ute5dJPbX2S7Bujt/dxBEwSjLPs1PvNd2uDAR2H
	foWtdRJ8OHl9ltMQWoVNufsZvJ2mK0T2nzwP4KEpbdNjHY7GrOLHlqtlTHP0drhx0UD+BtyyEmX
	fRREBpq23djfMwlVKQcO7sqKzlAMwzJPkeuY9ydEGK48Zp/0gMFoGiU4C4FOR4caKYhD8Ir6/AT
	i4ZAzE6g0WE+d8WfrXtUw==
X-Received: by 2002:a05:6512:1387:b0:5a8:65d9:613f with SMTP id 2adb3069b0e04-5aa0e73c0eemr1036472e87.24.1778845857681;
        Fri, 15 May 2026 04:50:57 -0700 (PDT)
Received: from fedora (d-zg2-146.globalnet.hr. [213.149.37.146])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164bc0ccsm1278617e87.41.2026.05.15.04.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 04:50:57 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
X-Google-Original-From: Robert Marko <robimarko@gmail.com>
To: o.rempel@pengutronix.de,
	kory.maincent@bootlin.com,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH net-next v2 1/2] dt-bindings: net: pse-pd: microchip,pd692x0: add port disable GPIO
Date: Fri, 15 May 2026 13:50:00 +0200
Message-ID: <20260515115050.691119-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3920354F183
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sartura.hr,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-298278-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sartura.hr:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

From: Robert Marko <robert.marko@sartura.hr>

Microchip PSE controllers have a dedicated port disable input that like it
name suggest, will disable PoE on all ports.

So, lets document that GPIO.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Pick Acked-by from Rob

 .../devicetree/bindings/net/pse-pd/microchip,pd692x0.yaml     | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/pse-pd/microchip,pd692x0.yaml b/Documentation/devicetree/bindings/net/pse-pd/microchip,pd692x0.yaml
index ca61cc37a790..ca4200afa793 100644
--- a/Documentation/devicetree/bindings/net/pse-pd/microchip,pd692x0.yaml
+++ b/Documentation/devicetree/bindings/net/pse-pd/microchip,pd692x0.yaml
@@ -22,6 +22,10 @@ properties:
   reg:
     maxItems: 1
 
+  disable-ports-gpios:
+    description: GPIO pin to disable PoE on all ports
+    maxItems: 1
+
   vdd-supply:
     description: Regulator that provides 3.3V VDD power supply.
 
-- 
2.54.0


