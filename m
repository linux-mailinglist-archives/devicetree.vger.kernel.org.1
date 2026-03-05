Return-Path: <devicetree+bounces-271522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MwJLdBqqWnH7AAAu9opvQ
	(envelope-from <devicetree+bounces-271522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:36:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AD0210A72
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:36:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 76778303F9FC
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 11:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BD7238E129;
	Thu,  5 Mar 2026 11:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V6wH4MLk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CAA33783CF
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 11:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772710575; cv=none; b=H4HNTJ4tfoTN7AaEb+AWZI77qPb1mSg3pTXeMo3Wj/tHQIGlRD7IodxjmWIrm0+E82vtZrOt7yKcM91Ds24w3kVjMb8VmMtFtlFa57koIJqHUVNgNiSW0Q7jr8yDVKoJa5JljNGrj44dO/vzUCN1R4uwXuxZ0/h/Uu5osBxZz8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772710575; c=relaxed/simple;
	bh=XK0nFFbH4MiZSG9fcS0a36y+AVa1RacKkH9tV8iO6pk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HamZEpIAubDy3Su0PLkrno3QRyYaBF3rkUgFcTcFf6tbpcLVr+4bGca1myCEVQX8LFFUDpwKumbVqy1LdlZ89QflT8VWXWtV1I7RxawqIp6BQ3RDLjrbpLCxwxXAA24L7bYvVb9lo1P6QeKBP2Jj7Kw2/7UnzDs05XCwERqL6jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V6wH4MLk; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a9296b3926so58270885ad.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 03:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772710573; x=1773315373; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DPpOKLGSNmmq39HFqiUGhDOWmdkSAdiRJ6UaDmbkiH0=;
        b=V6wH4MLkt4xWUBGWqX/1ieEIBgl0z8wwJLoP426+M4D/avg7VDd7u+C8mPzg9+2H09
         u0jo+GbDfSHSsXYRT7kL4nTrfUcNxXJavdBjR7d6fRLnyzkojlpzQBtzlNoGPGtzCkX9
         4HEaAJGLgtQJOZi3OYgn7MfLH33YTtqXFMic+vAKV7qvj7OQQXCpEvU0hjanRLArOFxd
         xpe9/QiT53ZaVJyxCjDxpQdJVB6i7a/zSgc69ben0qpWHhXUFVceWdmosUb4L0fnzOPB
         zlkBgnZ19iM8R/nLU5iX5LwTmtJKccnIYGfFvtyqa91x0kNn7g+aNYgTgYlOgMODAVZp
         IcnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772710573; x=1773315373;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DPpOKLGSNmmq39HFqiUGhDOWmdkSAdiRJ6UaDmbkiH0=;
        b=SzwR67rI86Hf/e4flcXsIH3d4c2gFtLmvAPMXHHmlbcr+xCKnN/iY7Mkcm9/IsQdry
         6p/7qfog9q+8ru3uTSCtO9rhqyb+Y91k8X0v/UFL6/DuGn2KL8tDzpbc8RMWnCPiOCPY
         jMvpkYFJFnOyyVWP45NKJojR8y20PwLqjp2cFBUMz27LaDGgwwRUJoqkRCSF6mwWjrwr
         yEqzQnwuI+R6LzBrfQgmk0lKx/AF3lsO3HqStA8wemHS8HBTS/lwAII2jPcbZCLID/LR
         7XBQ8CcnK2E9He1psKvvb7yq2+5D0W4W+bguOVVCa6VNp/ClDoh6L9WaWbW6gK08McXV
         J5Yg==
X-Forwarded-Encrypted: i=1; AJvYcCUE0z6w715krGJdIJmuSCHRfom9c3uLq/qqLbLS71qJklNE2+3hWeRTiMaXKt2hcItyNmul02slc7ff@vger.kernel.org
X-Gm-Message-State: AOJu0YxTWmzOR8ZjZq3VBNHDfVqaZz0L1CS5z7/yS36Tbs2rhk5PrnRJ
	9ePe+d7EYnHkQ1xIP+h+aTFpC0WlMi4Hs4BJp9IGft/GGD7xamB1lgfK
X-Gm-Gg: ATEYQzy4hJ884dWlUMDCGVwp0QjZSgzzKpRa6ycS/78uqPyrgFGf9x1kemgwXb+83nu
	ng+Ltqe1o8wyiFCW3Mx5ZQ8j2HWMQR7RDRIJmjX+Nh4pSRLD0eSntepJHBsrbUIEMhdYloCpHcv
	K+brw1XHq0Y692NX5E7rDNGfe9OR9EwhCKbtAuql/MNJupbKyU7ubcEXMRy0UMP3l8hSEpNfOyl
	9WioYAnFN6YPDg9N/RTYTEixkfzxZ9n1LI0H0Sn842yozABQyoB9xzufWt63U2S/IW2BYMXsqBS
	ihxK2HxA430sH2obCvu9Rfz0BsdAeS+HEnX0mvhGjHxCaHoiMqSkHU/nNAI7xBkIkwcHLCMF1Dc
	sFAOAZf8Py/2U5j0NIOO4qk7ID4PDPjYRsZc5pbPg0Eqj6qXec5329Hl4ksreNmygSggBnrIrzn
	Pg88sEUyA+nywaieaxkpc7BY/DWpczZ/yR9Emk/cZUtVcbZmGheie9Xj4YskqXqVZyt/5L
X-Received: by 2002:a17:902:d583:b0:2a7:62d6:d049 with SMTP id d9443c01a7336-2ae6aa04ce1mr59119905ad.8.1772710573331;
        Thu, 05 Mar 2026 03:36:13 -0800 (PST)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae5e1699c9sm78796995ad.10.2026.03.05.03.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 03:36:12 -0800 (PST)
From: phucduc.bui@gmail.com
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com
Cc: javier.carrasco@wolfvision.net,
	hechtb@gmail.com,
	wsa+renesas@sang-engineering.com,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	phucduc.bui@gmail.com
Subject: [PATCH 1/2] dt-bindings: input: touchscreen: sitronix,st1232: Add wakeup-source
Date: Thu,  5 Mar 2026 18:35:11 +0700
Message-ID: <20260305113512.227269-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260305113512.227269-1-phucduc.bui@gmail.com>
References: <20260305113512.227269-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 00AD0210A72
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[wolfvision.net,gmail.com,sang-engineering.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271522-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,glider.be];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

Document the 'wakeup-source' property for Sitronix ST1232 touchscreen
controllers to allow the device to wake the system from suspend.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 .../bindings/input/touchscreen/sitronix,st1232.yaml          | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml b/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml
index 978afaa4fcef..672544e5a26e 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml
@@ -32,6 +32,10 @@ properties:
     description: A phandle to the reset GPIO
     maxItems: 1
 
+  wakeup-source:
+    description: Device can be used as a wakeup source.
+    type: boolean
+
 required:
   - compatible
   - reg
@@ -51,6 +55,7 @@ examples:
                     reg = <0x55>;
                     interrupts = <2 0>;
                     gpios = <&gpio1 166 0>;
+                    wakeup-source;
 
                     touch-overlay {
                             segment-0 {
-- 
2.43.0


