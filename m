Return-Path: <devicetree+bounces-264451-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNr3La9Fi2kJTwAAu9opvQ
	(envelope-from <devicetree+bounces-264451-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:50:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 343CB11C158
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B9C6D3050412
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F8C23806D1;
	Tue, 10 Feb 2026 14:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ax9puqCF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D083803DA
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 14:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770734963; cv=none; b=nqHHUaL4eOdE112UluFDkfL+b/xHmddiBCoamzxxpnrawUhVG3NbCuzsnXhFqk6TUaneVTFEc1nj5LgP5qnIgiLoUgX3DpEUlIUrzYP8TW8lLHx0KQVqBCkrZtRC/x+kzZzYAr3TLMiZIQegUoKHTQ2tIT3AtZR2ojq6aQFb6Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770734963; c=relaxed/simple;
	bh=DxKS4EuDqwmAjEPcvYp4olM6SGXjq2P0CiHjb+v3WcI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=R2w1Sd+9+T1FeaseGdrUsoGHQNXLTlkpCqflgOL7JsL79SUCSSC7CqiY04y6PsUcEDxEmG5zKQj9CRD+Ayc8vlzfHkvb5nYKy4Mt2KBZKrlUCcYUAPdyKngLelnTSBpMBCMaEQ/2LL4iQ+rmKy3wbOt0RDdl5ur+TQxnZDiXqfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ax9puqCF; arc=none smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-64ad79df972so3075681d50.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 06:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770734960; x=1771339760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SRvhqTW/9dQaIxqN/xLV7/5mlXB1evHeb5Au1aMeufE=;
        b=ax9puqCF5LTzmdQXrtlK/2LR/YAebPGy4mACZEvSrMRMd17x4vwNh5ldkJRLM/cgs8
         wpz9EGCNZdi2oN6p3+jn9b/9NKp5/uFO5jIPyGsXncY+SEr1dTLCoQmHPUgCp0GBZZZW
         /5YRTxgNSbtyG3VmQwzSUzuzKAp+e/69ok7H90w3HQzc5/2RVjtEJw73etIyvPguIFWd
         +L902fvIJAaMs/Jl7Q1IVtZKILv4U1rIDksPuIdX/y5yJfgnOKeAOF92+E1UFP6mEzNV
         cIR1Fruk73UtXLLXAJRHqCHEulxblSzaNDbZQU/QVNa0JirizkAwEW5uI6kQ5wQuFa3e
         xTjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770734960; x=1771339760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SRvhqTW/9dQaIxqN/xLV7/5mlXB1evHeb5Au1aMeufE=;
        b=dRVBj181RMfMkoEQ6GxkyLb6Ov5jh0rMz/9NwtriAnNPtFPg/GdWSOJVnwieWZhBbp
         tqY0BKP7R4Kh4SdKWaiRpTJVS+ZrDXsgc4DYaqqcgz7VpaiM13XDbqhx0MC7FULrgTa2
         Q42WRvaQfD3HsxCwq6Iu0q9qNq9wLuu1f+m/sD6gEp60cKcweyeOF+2d5txRcLCTC+sH
         aB58UuUoGMlNOnq4PZNrK8+O/l3eASZMJjQBLgWcFaDTA9Q17/Es6K4DVKW5OUXvdHpk
         WixSekEj20qSvTTEj5R7tG0jCWAXmE6Wh6kTCQCg/uBMwEy8qm38hVX1jP+TWAJ0gG9s
         u7ng==
X-Forwarded-Encrypted: i=1; AJvYcCVvyHCC7ggO/hlox7Zk5UWOK7NFikEP/gf3bfCcjgyt93FRUF/QLsuaglpVzlummcWyp/T01dhidUK5@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4rH2erfDpBdsJus/hxK4GnfIhRwdRfe7dsFftm7fOIlteQMjC
	Xxu5v86S4anrVjDo7tT8X9k9Agdt0isIn39Ae0jKyCW/Y4H4ZqgB4RF1
X-Gm-Gg: AZuq6aLO0hKSJl+6oyLdgnvvkk1KMVnOz0n9BESfdA5m3Eo0t96J9txRo+FcPCwsrCD
	wsRoKsjFE1Aussn+zKBOuX8eVCBb5t9YfKy9TdpEPApplILNaRblsyzYewi470vGWh0ViOrQsJS
	PSPowGPxoHp8VnEiv+aN1CApTgTIMHhyCWKjySRpv0AR4Re4Dkjin5dwIexEoQIVDmw6YfAXb05
	pFfSyb0YSnqfkpxPxGqUqeN7wEflxQMIEz/ImFno/+l9nyFzH8KYKpz2N8GMoz0sbKxaVsX94xT
	rDHv8VWiZOAcsk/XZva/Xb7SpWl6mO6hM3pDIWMJLwnjmPs0zR67WS8RfT9wUSzthzQ7rhyOlvz
	leD8kfaLS5/ARlYyYfHnc3EkseSigyDRlOsX/jeV1p64CmPuKKslVaV6C7ENaAQmsm5E5wRyaWV
	Bmdbsd0EMzK8AI/KS7yb4003Fz9nmsPN3p0kC+
X-Received: by 2002:a05:690e:d07:b0:64a:efe4:7b47 with SMTP id 956f58d0204a3-64aefe47ebcmr2613048d50.83.1770734959965;
        Tue, 10 Feb 2026 06:49:19 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:7e95:428c:8802:872e])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64acd247ee5sm12086263d50.6.2026.02.10.06.49.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 06:49:18 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v3 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation board
Date: Tue, 10 Feb 2026 11:48:44 -0300
Message-Id: <20260210144845.317048-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260210144845.317048-1-festevam@gmail.com>
References: <20260210144845.317048-1-festevam@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264451-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: 343CB11C158
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC.

Document its compatible.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Split it in the EVB and SoM dtsi.

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..409c11b8ff97 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -802,6 +802,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion Omega4 Evaluation board
+        items:
+          - const: onion,rv1103b-omega4-evb
+          - const: onion,rv1103b-omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.34.1


