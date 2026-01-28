Return-Path: <devicetree+bounces-260356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OQYFdL0eWn71AEAu9opvQ
	(envelope-from <devicetree+bounces-260356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:36:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 170ACA08CB
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:36:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A9922305E7E1
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA59A34FF5B;
	Wed, 28 Jan 2026 11:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cAS4dlor"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F4434D912
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599843; cv=none; b=bGplRS9WHt5+LOkbi0aKYJOEXdqbk7Q9I0nbQhPrvgStaQkxreHsJS4TdJBR528Aae86cb2hdVygz71nriTred7tX2oemnaP1POO/chYEUGI0/8ahYIbSr80R+1pcFemWWGX8K+K6Ok4nuBsDceXS5E+NArARbWluzK9drKBV0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599843; c=relaxed/simple;
	bh=9v+x0vlRgzi3LTj4XFgPGZ/SN797NNC98jDGIlLWXsY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ucuiwxwvgFd1HRtyHnucECJ4o9s3sG2OkoS5GeWqBuz8t85VT6m+wx5XlADsNO+eiXtEB6wIeovfpPEGJQbvPyRhEePAycwznhDlqIN65D8Zr5HpoR31B3aSGFtOlFZYSzk9JtCnFPEytreuj/v9sRz8bSdlmYF885isuJr0arE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cAS4dlor; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b885e8c6727so161288666b.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 03:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769599839; x=1770204639; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X75yIl6hGl7Ae9Buv3v27ichOYcema+RgTkjFX2ziCk=;
        b=cAS4dloribF+Khuj/KBmpXembibNW8VqCdPnZhWmuG/y5nVlY55mis5cHPV7KJFtoB
         XxrGFn6FBhsomC5OzuJVZGLMiVmD2eD41o4PA/w/8wtmDF97qYqy4lg1AXpivURsjj5Q
         ul2Ixn3fTD+psWX81cQSr9uu7CDYnB2xtafGvMEitqIM7+q2ddr5rhKWvdXp9UZ7KF8q
         U3GMSzs0M31Gn7r6tqzUnfH64eRK4feLPt377QbbibVaLn3zWN7vlYTNifHvm2Hd8Eb9
         MjOr2SYRpWY+fKNY8sJikce+T01hbV6vt6wrzDT6pUg7fPETBG0tNDXlAdxzqx2MZDqt
         h9og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769599839; x=1770204639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X75yIl6hGl7Ae9Buv3v27ichOYcema+RgTkjFX2ziCk=;
        b=mJRD3OCqXd1pw+NcH4eh1TS7EKxEd0RDmi1RmASYxTkccLBqRP5K540DtcM/hEqnnY
         N8HQKL7Vlff+PgyLb6zBk9STZu295JNunbnmw6BbORzkcVbBsy0gf8PumWpSmJOJYYTI
         oFcs5tObviynncAkPswVgmcGvLwV79KTHIQSoq28OBmqw16aRWiKoBaXYaql5JMDsvFq
         CSBA0k0FjLLpj32lnrQstMgb9R1bdRYQfYtGwR5K9krjbDvtG2PoSf7tyMrYVlw+WxlP
         U5n7h6os0KrzdCEf232rvVRpv9Wrk2uRt0KzaQaxDQHsLt0ulXajVE4Ja5cFMvQ+Dh/3
         AVQw==
X-Forwarded-Encrypted: i=1; AJvYcCWbDS4QJx5hY9UFplovdRZhb3Y3znuSBzRL0uBs8etxqulL10zUDyFci0BYGlFCU1gKRvCQpF65BnF8@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/EsWHRHcrW8KcW8wRYpNdmPmJPBBqgJakj3Z1CWu/vZ4rc1ZF
	bFLGoiyMAiKVUPLU18i4nvFNPcdPQtBclTt4PbMa4+p3ww1MfPrxbWsV
X-Gm-Gg: AZuq6aLbSSGOna+6GC2c5xG4fVJYKvJRyk63CbxmgT8nH7IYDiWjEo0od1domQpECKK
	Hso7L/a1nrV1vNt7DNYAejsvlTDrAp+gw0NVmrkw5aNdIpAg5TwaSrvSn0VdUMwba+VNuOYEPco
	YUdOVrW2YF42O+YNM0V2D4TQ/4xcoeP90s/dZjcGmUgkdtab1WiL9kHJRhj8dnV+/L/nSc1agmB
	XObkKkgOKFjVOYPvR73qTT+5eEqR5wPLKk8nVOt3zHIm0PILEBNbvV5qNRg0o4aUGY0SATLfIh6
	S0lZCuWa9o8Z+iZyY22zIdleXYYRuQjrjUwoHz/UC9GcdDXMM7eqYiSzPP2jud+JFKY4fubzEpF
	9T7aIh8OYc+XIvmH7uZ7XA22DGdmEfIWdyu7luRXAz5TVsXK5b3s1PCNHy6wLESqpjauaxze+Wk
	0864Fsc8s0YhTzISCAugO9XB7ICFq8cwLfE1k=
X-Received: by 2002:a17:907:3cc6:b0:b84:3fab:4251 with SMTP id a640c23a62f3a-b8dacc4209dmr406559266b.15.1769599838621;
        Wed, 28 Jan 2026 03:30:38 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e29d:6e0e:72c1:d15d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm114400366b.46.2026.01.28.03.30.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 03:30:38 -0800 (PST)
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
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 03/10] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Document RZ/G3L SoC
Date: Wed, 28 Jan 2026 11:30:22 +0000
Message-ID: <20260128113032.337231-4-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260356-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 170ACA08CB
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Document RZ/G3L (R9A08G046) SYSC bindings. The SYSC block found on the
RZ/G3L SoC is similar to the one found on the RZ/G3S.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Collected tag.
---
 .../devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
index 4386b2c3fa4d..94ae72eb8fb6 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
@@ -24,6 +24,7 @@ properties:
       - renesas,r9a07g044-sysc # RZ/G2{L,LC}
       - renesas,r9a07g054-sysc # RZ/V2L
       - renesas,r9a08g045-sysc # RZ/G3S
+      - renesas,r9a08g046-sysc # RZ/G3L
 
   reg:
     maxItems: 1
-- 
2.43.0


