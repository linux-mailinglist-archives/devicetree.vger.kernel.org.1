Return-Path: <devicetree+bounces-307198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7QeYJztuImp2XAEAu9opvQ
	(envelope-from <devicetree+bounces-307198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:35:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1728B6458C7
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:35:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=fXpGuh9Z;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307198-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307198-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1440A302A2C1
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 06:29:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCA2A40627F;
	Fri,  5 Jun 2026 06:29:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F37840626C
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 06:29:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780640950; cv=none; b=Pkpl9zDMAE2H1R82WEqh5/QCbWFP9ST+vwSOwna9w4l/IWDpdbEzhC5datCmjZZ5s6xF0Ee0Fh54WDiJYTTwVonza29BVfUXPUJpA9aklZUbglNd8pWs6QM0F2Pw2V772tmbrT5f3DI1XF5i2HHFHH+u/q51DHkBWRMOyFZihHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780640950; c=relaxed/simple;
	bh=5Uzl29QTCrj5VKD83cW4UxcKrN9I1xXI5DXz829aub8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I+X2hyFYRooNP63kgEWK0rKta+w3VGtiE1rzIpHiY8CwSyreIO8Q0mNn+Lg09OWhhd0MNUuSsvp2r7uTmTdVBFLA4yb1QtHaKCWoSpJ3I6qnvbYiIAHO7e5VoBlKHjwDFNuU+nXxqak6ZDIXeByiOut3wgvQgi+KPUV32R8bIjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=fXpGuh9Z; arc=none smtp.client-ip=209.85.221.42
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-45ef372c58aso872504f8f.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 23:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780640948; x=1781245748; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XAn+sgOJ//YpFHFCj3wQ7fJwCRmUnKUhDxx0gbmShJo=;
        b=fXpGuh9Z2p8N6dqKd5QHbR5UFUDija4VDrQ0ILmH7UnakkXePnVTwbzCL68qUAIJsD
         tlAkMShMqnIJiCsPGvLHwPiGR6+mwCid9frX5Y+CWi03RBrVwcrdkQZP82FY25Sw2AIY
         gUeiCmZPBs37YNogsx1/5xYnamqggLQTW2fs4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780640948; x=1781245748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XAn+sgOJ//YpFHFCj3wQ7fJwCRmUnKUhDxx0gbmShJo=;
        b=ktp6hKNDnbDPctnKUftNOwlbCndGcgTKvkure6+em+WlkW9M1Q7QeLdatB7q587Kfu
         JETZ87VG97a4oiNF73gtRpksqkXzDG5HUIlf+RkFW7S9D92xyRtHlZF9zITNCd9rfXqB
         ezmMCsKi6EHCT2s5DQy128sB/TAM0jjBpe7Oa/mrRm0v58evZju0Kv4KJEpV7JbQsr/H
         Bz8ThzSB7jsXBGQu023RvPyF+45zCKVEeYA+V0qxJrgKRzH3azHldMe93O0+gXgwgLtv
         Ou1diK1vj0p4tYadgm+l+Oq5UD36cz+XUeZuR4w1aQr5PchErJV6cRju9Vu2CRNNDRQg
         0Sug==
X-Forwarded-Encrypted: i=1; AFNElJ/ms1e4J7KUt38Lh6treKkYt/ShmNlIJaFyA3vBotAsEoMJyu7OBo9VAgImGsCWP14pksBt/bpO5Ou3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9mfniqKbKXKHXlXc0gAiarY5Vz3u72V5MplHfOilTZbfSPdJB
	dD+KoweVprhu7XMAe8mF4hBOsRJ+oDCXed6PsooDL8qoLjLffsYoY4tNYeeYzoreTr4=
X-Gm-Gg: Acq92OG1A2KECMpYHu2WBabKuUOAtgJ0rbg4CGhRpEgJ1Eo8Vy7hGh09jw0AFpw1JER
	vE2MQEJ06zNJUlS0Aj1C2k3orzJRiHd9VGr5BCqdfafMIwEm+bQ335qgvmomZMivr27xku1GhqU
	x5J1WBv364kELCUk48yTFEWD66Cfy1EmdwQxk8Ph0fmKUYd9UC+4o8WqL+HTMNMwUdNIuSoTZcU
	yWaK5opuz4mrkBwxAitWGNQtSaPMJBhUXfRPodjzN/ymoSPZq2LIRYyeFaJHtW3a2sS9LNHlyNM
	HQBqqsk5H6ofHdvfGPeBJvUiDpan7Qm56pBkabNPJ5SiXTrMDHts9mPk7/7y3qmFBirqB5ZJ/vm
	/0DxZGqTqPOQuDYVnA26W/INVvYVJI60nOqI/idSY+zkAXpHZs+aOGoP6Gt/0Pzqbhv/3WvrlLy
	dksQWUPHW1aIGIauqnh2GiZZe3+buSFOH8uZXqku81HAhIUGUhPiqdpahmAoKjHqEJO0Did9E+D
	PK931+Vb0gf/oDRPYozEBFxrz4FDylIiA4qiyNkvbYFrzYdqX6ANI/HgJHBjJppzkVLn0BPnhmo
	ayitFB5nmKTzoC4RT6d0xYVX8NgopBNae4E=
X-Received: by 2002:a05:600c:3f0e:b0:490:b3e7:4614 with SMTP id 5b1f17b1804b1-490c25f9e55mr28705485e9.25.1780640947625;
        Thu, 04 Jun 2026 23:29:07 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f344148sm23022648f8f.19.2026.06.04.23.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 23:29:07 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: domenico.acri@engicam.com,
	francesco.utel@engicam.com,
	michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Christophe Parant <c.parant@phytec.fr>,
	Conor Dooley <conor+dt@kernel.org>,
	Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v3 01/14] dt-bindings: arm: stm32: support Engicam MicroGEA-STM32MP257-RMM board
Date: Fri,  5 Jun 2026 08:27:29 +0200
Message-ID: <20260605062900.368376-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260605062900.368376-1-dario.binacchi@amarulasolutions.com>
References: <20260605062900.368376-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[engicam.com,amarulasolutions.com,microchip.com,foss.st.com,phytec.fr,kernel.org,siliconsignals.io,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-307198-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:domenico.acri@engicam.com,m:francesco.utel@engicam.com,m:michael@amarulasolutions.com,m:linux-amarula@amarulasolutions.com,m:dario.binacchi@amarulasolutions.com,m:conor.dooley@microchip.com,m:alexandre.torgue@foss.st.com,m:amelie.delaunay@foss.st.com,m:c.parant@phytec.fr,m:conor+dt@kernel.org,m:himanshu.bhavani@siliconsignals.io,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amarulasolutions.com:mid,amarulasolutions.com:dkim,amarulasolutions.com:from_mime,amarulasolutions.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1728B6458C7

Add devicetree bindings for Engicam MicroGEA-STM32MP257-RMM board based
on the Engicam MicroGEA-STM32MP257 SoM (System-on-Module).

The use of an enum for a single element is justified by the future
addition of other boards based on the same SoM.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v2)

Changes in v2:
- Add Acked-by of Conor Dooley for patch 0/1 "dt-bindings: arm: stm32:
  support Engicam MicroGEA-STM32MP257-RMM board"

 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index c6af3a46364f..c5ce81e3ce45 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -203,6 +203,13 @@ properties:
               - st,stm32mp257f-ev1
           - const: st,stm32mp257
 
+      - description: Engicam MicroGEA STM32MP257 SoM based Boards
+        items:
+          - enum:
+              - engicam,microgea-stm32mp257-rmm
+          - const: engicam,microgea-stm32mp257
+          - const: st,stm32mp257
+
       - description: ST STM32MP235 based Boards
         items:
           - enum:
-- 
2.43.0


