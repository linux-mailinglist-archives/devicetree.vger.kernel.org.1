Return-Path: <devicetree+bounces-262179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KB4IJTzQgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:38:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C07D1D7D25
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:38:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 79E39302BAF9
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB06326944;
	Tue,  3 Feb 2026 10:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m5JNCBA6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E665531ED83
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114639; cv=none; b=sVp3wZsNeacZCAGgyJdAjjDC6X/t8A+aDgSS7qGdr+sqxdSDMQnWKr4wX344vENe0HWrjx9dyY77cezAbm77WPpNpwuToINSL1yJtb2iL1JX40srTuWlm0qzPexubmoFfVFAQgxKt66WgvFUhHWzGwSOEtxx8QMoZWe4qfLAmvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114639; c=relaxed/simple;
	bh=vVid8PUtvYXfm9Ugr0eVx7o7Bd10bxTZeVAyfpkG8Rg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eWKSAt3aXUMfla5B3eSj2SQZeuG8qpHTeaUetpjXibROjmDyYjzgyPWg0I7mlhQ9U12fuk4r3lnGsw9CJDJ7nVvosYibND13H+/XwnoNMZkLyD9zHNECmpTscGQusejNRrdr5EECthBld/dtUoohgpjXaM/CxAs51yDBg2zCey0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m5JNCBA6; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-4359a302794so3724019f8f.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770114635; x=1770719435; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qsm+kwCXSm42O9NVlSacONQVbKsmfmrrrYzdz9iWN+c=;
        b=m5JNCBA6JZDNDD76EI1zkwII1mHOLCbzNmRHtg43KtgtAb9s4wLnT4VrxA2xID7L6d
         QHzTg/1tv8l990Gj6AxJdBGzeOJ338S2T32R1MRZuJDINHYN4A7X5roVjno22AQNTZF0
         quRcAjqandbCdKicna3mOsjihZgRziXj/rYQdpQtZY1YacbCBC32VjpUWEFzXMZeV9U9
         M2YZMXoxv4nlzI6/eD6FqhVkzCRCdX4k/zAF4gvgUBRqzAUDELfkhOvVxkBA3n3RcRtm
         AWQs7I2x4wRVqQUboNklYJY/uJaMwu/Kqyp7meZxgV4NlvsMXbESCGiBFEmFotmIo9lx
         D2Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770114635; x=1770719435;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qsm+kwCXSm42O9NVlSacONQVbKsmfmrrrYzdz9iWN+c=;
        b=GQdYRaZOvLs+y8rejUxGpQo2vaEQAvHELDTeVMkiXVAFg5e1apOHJuRy5+1ZBUKz2/
         lZgLAKjI6bIrrCTAE5SnHrLrffTq1HW0bqtpmeElimHwvuJMDQJSAWvmzqtbvpdRAorZ
         /jWH+KPiBnEiW9FjbDB+n0IXKvsiF9AJV8EVjx+BH2zz1YlhAkuhqDYlb8yuXDTbgYtl
         Ng6Z7yQHJHhdobUIPArBM8GzVQ9EgHbPuso7P831qPCDJiUkDkx+VbdiStNf/DB7Kk3I
         XxTIk/5d54dqn0T5zyv8AvtxiJXrVXSom7KiWyDhslqL3thZ70ouWJQxt2v79U4tA/1r
         rYew==
X-Forwarded-Encrypted: i=1; AJvYcCUpeGHyP/LCjitIL1G8ZMZCWtuFHxjVprfqNFS4WpgSB//xkqFeH4INU4oFdylUUQZFfJhPH3LCnvTg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+rwjINbgdObkdpZBVcjV7ioPmRVAMOyF094Hj99rONMllluK4
	nuoNDtywO1qKDUMkUSTeJ2hjWEP9zjkY8TCKvvUP71Dx6mGnLk6B/SXK
X-Gm-Gg: AZuq6aJE+Do8j00J4vMAn2aNpyxFyAaV4KIX+JlTUhJMUXCVgTr+did+5KnhjNCBAlv
	9mT/pjLSPblgwwjvESxhWEwF60uQSArNeyKN4m9KRFLQdRJynuq6djut6LwNW4ntVAnT6l5UruN
	OXjsmt1gCeTsFrzrMCItHOCiQPfFs0TZwjjxM0ICHOOCsQC3flCMlpEU6/ayGr9VEu/q+qLl3o2
	HQtMOizCb2anbsLGQ5IdvMz7+RtNkd3zLdE+yfJz+3deOKe2wMUWShuo5utw4MbGluOKmfxMBEX
	wN5i5jj1yeL9lkVrVeUypKrxHshZVbLy2V51yETFH67wMqvNs5eZvvgwR7RyWyO7DXJHayvlA2N
	R+2ZsrJCg5jzt2sqT0PzPSp7ZJJ8DuFlp80QYFycHRe56RBc7ZMNKTvrHby32+J4ysj2/vc1SXd
	NWyKZF8W/Gs0ebGOngIeINuo4DUwlq
X-Received: by 2002:a05:6000:184b:b0:435:8d02:b9d2 with SMTP id ffacd0b85a97d-435f3ad1f8cmr20314991f8f.60.1770114634875;
        Tue, 03 Feb 2026 02:30:34 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1323034sm53160961f8f.35.2026.02.03.02.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 02:30:34 -0800 (PST)
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
Subject: [PATCH v3 02/10] dt-bindings: soc: renesas: Document RZ/G3L SoC variants, SMARC SoM and Carrier-II EVK
Date: Tue,  3 Feb 2026 10:30:10 +0000
Message-ID: <20260203103031.247435-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262179-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Queue-Id: C07D1D7D25
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
v2->v3:
 * No change.
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


