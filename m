Return-Path: <devicetree+bounces-257656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kK85LJAQcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:32:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC2C4DD88
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:32:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9B87596DDFE
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EDAF3D6466;
	Tue, 20 Jan 2026 23:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gf9cmTb1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f196.google.com (mail-dy1-f196.google.com [74.125.82.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4AD42F12BA
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768951205; cv=none; b=BXHhBw+mc1iTljSLVjmY0ZbHqBqdPRuiN4TritfEtirIWDJWRAvz5NOmgLGi08fde6g+s5fyhexB/5dhUFVL59oHRsdxiz2kt1O3enU/R1xLSJQeWU76+qScgUWi6CCTMvrJgrgeoojQZXh93ai8o/bb+7L4dc6TYA0fH3+GMf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768951205; c=relaxed/simple;
	bh=rg9BbpJyuCknqU7v0qMKuW/JAH3jbsHsquA8+830Yus=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SEjBtwLbAJjcXdCMwFUq5gIZ9eAkKdTsDKuA38TzZAkeT9Fy2HgL00x8ZuXuFEu4bJE6gnBXn4II4aSDmKSHWWyfBB/o8Ixg12i4ZpMsz3tzlOvkHG2Z7a0gxW15tQhOOPVDALxsmg01hl/9ZzTIhDNs9eZ4tbcc6bM0qV+VYV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gf9cmTb1; arc=none smtp.client-ip=74.125.82.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f196.google.com with SMTP id 5a478bee46e88-2ac3d5ab81bso6476657eec.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 15:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768951203; x=1769556003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=At8sEw4IJz6edgX+XTJSF5huNTHEo8Z6l7w0WtgZiBE=;
        b=gf9cmTb1xCXkvm1BsnMgdoMLiu2wejtvJEHtv9xprVDamVP7IpBlGBuLLANyUWrJ8H
         b7MuY1hJpFrugKwSpahStmwIVh8W3CXxy9rMhGAog3Ow9tStFaEjcXUulkwrlxzuYfzs
         Avy2SQvu4uud/7qqrPQsF1tEWWql5TM1UDmiSvk4MKUR3vLpDdJq9h6DtNSSOWq97FnS
         quOmnABrImrAp1LJmj6VW5bDVivRu/0WQyRZwfZUF07w3Q+1nQvNaRTsSfco9e/JiOPc
         td1AairycN2iPA4FdiTGi/0035PD+uAb2jwrREIcGSO26Y3Px8PIblR6LP9xE2Gn0GbM
         FbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768951203; x=1769556003;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=At8sEw4IJz6edgX+XTJSF5huNTHEo8Z6l7w0WtgZiBE=;
        b=rw4kZCAIIK+1d0F3wu7l9adgIfb3sDpihzejFrNzt+7zWEged74hHGsqTl6j7ZOqXB
         QGEknlxHSx6gx7vM+/paDCDcjBM8RyUUt1WNstiCfUvCb8b6/ThRRLBFR7fbCuAmL1Pa
         lQsMfmVWS+cqd3PEEwdMruAaKFfT0dbAaa0ycnt+B7wpinapEpQ8lY9E1AooLu19iEAx
         dOCyxFm3dkf1jOAf69eGwXccJBFg5/mNHSLzs4wfb9DVomzGJraZJoYODQndWx0g9YxM
         XCSBBW349DOmjAWbLfMl6jsAUyoq5vrm8z7+ymtfpp4kEmuRP/7iCwQDUcFWNoDEvXwK
         fBIw==
X-Forwarded-Encrypted: i=1; AJvYcCVTM/fiXGRYTwgrX2PpNM5Ulu/hdS6TbrxfvQioAoHGIumN+vyieYRj9qjE/MiTL9d0LJ+ba5O/U0y8@vger.kernel.org
X-Gm-Message-State: AOJu0YxghnDbiFq4CUyxjbKfYP7A2h6gQNgOvgxn0Rk5BM82VtZ0Y1DV
	y/VgDkpglalDVXb/v5ab4Fm+ho/i7pUyx0ueSSLf5/sIx79rVkUyBv9W
X-Gm-Gg: AZuq6aIjc/IjEV6AvXXNdrVX0cUduoBXaVp+AuoIp6JuG9w8Is+XS9HthJycRqQcr4i
	gioDXOr/hA+fol9jek9hDWZq37fIEuXNH1F8WPSuYf1dPZxIATWDf1qUeddBZKaF4Mt9bpa7YpJ
	rX2DnN+pAWVPAJJN7nAS3C7i6yJOR+OF4cnuBnULZUZAGev2YWDxCzqEhmxkTCOlETdDAr69QzL
	WJ9zr58eCGUXle7h2UGT36I+vf5XdB3PR5CIbm4QgdZsMZC1XyGXef5lpHvoEzx0KZH3JO4yIOi
	bTGv1EqilIDiLqwuia+VEa8qMnTgc7BruxAD3c9H0CFo6TJvlpVUw2JLcaVvjtTuPzoA6unxMfu
	cKhBtc78pfWwDjmfE8WNDymAbIcfvoH+rrB4gkmcj3p4SaF6A7N9FHoqDTU8fp22v6sglmcE+4+
	qx7+Umqg==
X-Received: by 2002:a05:7300:a286:b0:2ae:55f1:8201 with SMTP id 5a478bee46e88-2b6b46c6813mr9693768eec.1.1768951202448;
        Tue, 20 Jan 2026 15:20:02 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61::1000])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6fc2820a2sm4326816eec.35.2026.01.20.15.19.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 15:20:01 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: victor.liu@nxp.com
Cc: marek.vasut@mailbox.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	frank.li@nxp.com,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v3 1/2] dt-bindings: display: bridge: ldb: Document nxp,enable-termination-resistor
Date: Tue, 20 Jan 2026 20:19:29 -0300
Message-Id: <20260120231930.2782444-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257656-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[i.mx:url,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,nabladev.com:email]
X-Rspamd-Queue-Id: 5FC2C4DD88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Fabio Estevam <festevam@nabladev.com>

Document the optional nxp,enable-termination-resistor property for the
i.MX LVDS display bridge.

This boolean property indicates that the built-in 100 Ohm termination
resistor on the LVDS output is enabled. It is controlled via the HS_EN
bit in the LVDS_CTRL register. Enabling the resistor can improve LVDS
signal quality and may prevent visual artifacts on some boards, but
increases the power consumption.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Restrict it to i.MX6SX. (Liu Ying)

 .../bindings/display/bridge/fsl,ldb.yaml       | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 49664101a353..7f380879fffd 100644
--- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -35,6 +35,15 @@ properties:
       - const: ldb
       - const: lvds
 
+  nxp,enable-termination-resistor:
+    type: boolean
+    description:
+      Indicates that the built-in 100 Ohm termination resistor on the LVDS
+      output is enabled. This property is optional and controlled via the
+      HS_EN bit in the LVDS_CTRL register. Enabling it can improve signal
+      quality and prevent visual artifacts on some boards, but increases
+      power consumption.
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -84,6 +93,15 @@ allOf:
       required:
         - reg-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx6sx-ldb
+    then:
+      properties:
+        nxp,enable-termination-resistor: false
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


