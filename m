Return-Path: <devicetree+bounces-326649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4pYVD10nV2peGQEAu9opvQ
	(envelope-from <devicetree+bounces-326649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:23:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3108875B03B
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:23:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=doFBqq35;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326649-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326649-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CBDF13018DBC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 06:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E108031E820;
	Wed, 15 Jul 2026 06:22:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0185D3128B8
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 06:22:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784096537; cv=none; b=lRVTZJGDEKIDj/UlRhRqQl+q/JI91Ls5itJUWHEHjhLhuaxpJTPiM8bC7CBeJUEiGr8PvOWeHIbEixuCjIiV8+E0TethqNqY+umLGImUVLhIGF1r11w5PSDpjNXEnmqHHgCEqirC+FRp121vUfWmiomtGBhFSXmqJ6gaGuyYLS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784096537; c=relaxed/simple;
	bh=5Uzl29QTCrj5VKD83cW4UxcKrN9I1xXI5DXz829aub8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lNIpOi7057UAinzpPCalLN20ThhqY8wM47rUmshCQmUGG0lcsQENqbo9GU/1OOuyFGzm+NvDhMtpW5D80IrUS0AF+3xqIpMu+DtUHYXHnRaZqgqVeDOPP2pIiHQDm0W1YidCYq1me5UmEVeXgV5PHjI1jBh/Y1sa750GMRs5MYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=doFBqq35; arc=none smtp.client-ip=209.85.218.50
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-c15e03c2763so358305166b.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 23:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1784096534; x=1784701334; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XAn+sgOJ//YpFHFCj3wQ7fJwCRmUnKUhDxx0gbmShJo=;
        b=doFBqq35WqSu+LAYV+UZ8RN9RP5GXzLhpYRVPSsaXhiaUrxJvu/iGrEXxM7Mn830Mr
         D9UEyOHg/SX7om0Kiw3VDirjcDVWkMJcFlTIupgurige+wBom8Md1rMp+4sN5Cv2MQGc
         v02lcyY2PNEQh0qi1CEFr9IqCgQflahmzdudw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784096534; x=1784701334;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=XAn+sgOJ//YpFHFCj3wQ7fJwCRmUnKUhDxx0gbmShJo=;
        b=cbRNU28xxdk5TLUn1VfLvL3+Kcji/qpjrooIztkb8w9McTQhEg9zEtC0gQt5D6Fal8
         k1/bJPCWMggWuKJLrQXZ0PBnOJqpOWymWRX9agd7ac1mzF7eEBjy+l//7eGahkgnlWFR
         OIW1UBiPY74Zq9pd3DF5Ml0wZh0ANstDkZ6psn3RzdmVY58zlE1J4Ps4Cn40c5TDFmB8
         J0X/8Q3E6QHrZNAN7U/If3VD+PjghXsk+LNYSeda9iIWbOQkNgTqbext/v0GjUdXcKfe
         xpZk7Cwx8Cawi1ck8RvRbNqYZsWJGxtdVw2MSEinMh6teNvhJRL5DeELUuy10OGkN6BL
         L0/g==
X-Forwarded-Encrypted: i=1; AHgh+Rq5s8oVBfJ8rgziTRBe1djafuSVJnSNyNaI/4eBqnAAw3L0HO8nAr8PM9tOH+FAEqo9SCzrdAteffPz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6ittg1yWYJKeNEsHbWB9E7Lzg6Jqdm1EtQ6yfp3XRTycPIsmw
	dskh/FUPnbNQPlSq+/jUN9edAPpG0c3eQZrLICb/v0O4mq5cQuAfj1PjfQgdrS8k7BM=
X-Gm-Gg: AfdE7ckklG3/3B22qGO6N4358LaU6OK12++OpEXHiB5yeXPgmXQQb+vfVFQwW1q8Gss
	SBcDl8htjwkglYWRQ0V1gOjgq4iJDQeU6kn28R+88Czb6BHfCJx0eu87sr2wvcAg6KNlf051bSC
	I5BK2fO3aS/PC7b7DJtaLBZiPYWbkEZZHIqv96KDVldH78DWpAAfS2Tjte+HJ7J2tHdxTbVlsDi
	x8zqeF6Yq+0S7DZbMtLGpsDs4vv+3jhObG0Nnv8V9Wo9xd4EB/2hskSIkIk7T6M5wrlI6lXmJaR
	qJ8hgSRlFehwixA9y4F3TQkCsUO6MAvJ2FUEV1B/QpXttIGMhYHqXu/hzhvAAc1TQn0YdoR7QHx
	N7s4nhsKfnNXBMaGAscBsM4XmeLobeUNWB0RiI+9CBCsrB243IW9TgSNQaaty7Z8q51u3NiR45/
	xSiwhyQ+OCyfFELeJ813RlyrNu8zsmpr7PLrpO7EXrWlicPVoP4wwAmj9kz/YFSqha6Y/NkRTAR
	nchYYXccEUV
X-Received: by 2002:a17:907:9610:b0:c12:4133:39ba with SMTP id a640c23a62f3a-c161ea2ad17mr949555566b.26.1784096534178;
        Tue, 14 Jul 2026 23:22:14 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.. ([2.196.41.101])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15d0c3cf1esm1028820366b.44.2026.07.14.23.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 23:22:13 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	francesco.utel@engicam.com,
	domenico.acri@engicam.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christophe Parant <c.parant@phytec.fr>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v7 01/16] dt-bindings: arm: stm32: support Engicam MicroGEA-STM32MP257-RMM board
Date: Wed, 15 Jul 2026 08:20:18 +0200
Message-ID: <20260715062201.3599458-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260715062201.3599458-1-dario.binacchi@amarulasolutions.com>
References: <20260715062201.3599458-1-dario.binacchi@amarulasolutions.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,microchip.com,foss.st.com,phytec.fr,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-326649-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:michael@amarulasolutions.com,m:francesco.utel@engicam.com,m:domenico.acri@engicam.com,m:linux-amarula@amarulasolutions.com,m:dario.binacchi@amarulasolutions.com,m:conor.dooley@microchip.com,m:alexandre.torgue@foss.st.com,m:c.parant@phytec.fr,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,amarulasolutions.com:from_mime,amarulasolutions.com:mid,amarulasolutions.com:email,amarulasolutions.com:dkim,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3108875B03B

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


