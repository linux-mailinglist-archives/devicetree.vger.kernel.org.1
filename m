Return-Path: <devicetree+bounces-274690-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNBzKpnhsmmWQgAAu9opvQ
	(envelope-from <devicetree+bounces-274690-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:54:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBED274F3E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:54:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 264AC316C992
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 169E13F2100;
	Thu, 12 Mar 2026 15:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CfHo8+Xm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07A63F0AAE
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330623; cv=none; b=k8jIxJbq+V9uhfI15LsDUGBEfgj7QKKqyQA5oLgOHq4L0uAScVGJSl7Jjl+LLTs1CAcTTiZJZVZt7ioLnzm5dynBfSaCNwZWneoMiUuGbrj729GNGPTIXLmwY8E1NZhfU5DhWvgxus9IYrc8afBSEHU3t8BL7RsdcV/FnvNQqDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330623; c=relaxed/simple;
	bh=CbhB5KQ/eIbZFKfZzmUbhzpOi/+XnjgwaeHVx94tB9g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UaIJtTWTvlrxh8qflVOW+gXWTw76/Qwav39ANvZWQqGPUq+ZPObd76vv7x6Qzikc/vj9P2VA6z/vQB28YdkrSrwMKm5YEqeWj4sStrSKlD7BVNd05yJ9z4LeWlAKN5GdhUcU6/eT5/YN6NDIADFoyn6SZiFxg/d8jZtv4CCraz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CfHo8+Xm; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so13649355e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773330616; x=1773935416; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a/f8358XeMqcTwt08gbPmPnqpZegBjCDtTpDZQVf+oU=;
        b=CfHo8+Xm6A35aB3VABh6RHePecCVpWT60eN7eNxHJ+2vqmgosHPdYw7hJDPbLbDWL2
         7m7penfHoyEo01ePB/8dvyDMOCjyRyFuvIh5EmAF4s8oJJK5RCs8PeIm9bRt1BwkhvsK
         edlr/5AMGGZPcYJwzH1vqlsEHz1HHq8VgrZ5QPLUxAGb8mlOBh3inb8boQSnHwA+2is1
         w0ixRKnb/+GnM+4Qz5zkl+mOUl0G2kXv6Hr0nT9UXBLz160uO8HgmdkCOgSWuzWNwIvB
         JuD+Y0asW7hon6Xf9/GQDVQaI2Be9tdEENbLN01JjUERRYwfe7lqMUeUAGaHBceh0loe
         M01Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773330616; x=1773935416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a/f8358XeMqcTwt08gbPmPnqpZegBjCDtTpDZQVf+oU=;
        b=l2h6BO/eBfdZy36ECJqXbGCYYhDQ/1nMM6N3yLnZUJvUneoh2cHMkGI8QjLieKQQeD
         wiONR/2+ZISZeh+cUEo1paWzKKTg8v4oTQoPsPRisy0iF8f09ZMmYjCK/Z9ORSACLr6T
         VrvHRAAGrQDhp7Jq0A8DAkQ2p6Gy3NgJ7ke/jnF/kfDhxsgNlUDh5F+l4S0DwHCeO7Ie
         YLr3MtknFnMstFbhETr10Hb+THlSTW7KWMaUvl60nysu0uyJWji3DKrd6yX7fMC7Neun
         IdjFuy/4dx+ShQNYF1kBK3DeW8AoDlkFqpMndKvldw4tU4lTSiZjXboNs1Mk10r/gsYc
         +o8A==
X-Forwarded-Encrypted: i=1; AJvYcCXx6u0LECAqcKGEDkxu69kJDXpden7O5Kws4FuUQDpXwOs8O2H76oZxAz1AcYTFr0lUj8LaIqubMQeL@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9T4e8VgFfgo+txkzOMCnuOqWJNWvP7gaDZBI8zV6zHH+81c2Y
	4wRNjxmPw9p75qusxaDEZIQr4296RM44OxYPgHy+T1NsoLwNfsc82mdAK+BwrB0F/1k=
X-Gm-Gg: ATEYQzz8AkCgpmCSs5q69BKre78lV/7IAhUVQCX9cpXsjL8X0Zt2SL1B+3sIL+4DVur
	ZdyfpMpr2bN0UcYHdXYtSrnSgsLmvpsVsBj8xRvnaqzriBRw1iNabLYU1rBQvOhPvFdzd9/2BfN
	oJ73THpz2u/UJUFs6ag95BK7XBY8jr/moGZQBt1aQVyCxfguYQnWhXz/BbgaysP8b89CgO8XCSH
	GgcTn5V2GUNKZEWPfaFVH0BbFeSj41vY8+j0TfjfbeTrXNQpQx3k+LlFAjVyBbvEE8YBQ/vyrLC
	1gAvVWpNM8CBPZuJpFvY5OXC3RJged/l3J6EIbC480GTA13c+/0Bnq5fDGEuLOF13vUnprGmkSA
	710KnNtXM0/z9e8ViOTWnR+qbzxGRNhO2zCQfudX27mG1TOkZX2JT+GNJYP+bk+WwJl3QMJuS8N
	QFvueOApwRjleEMXInRSG/
X-Received: by 2002:a05:600c:46d3:b0:483:2c98:4368 with SMTP id 5b1f17b1804b1-4854b12ce6bmr113978785e9.18.1773330615796;
        Thu, 12 Mar 2026 08:50:15 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b5e912fsm361187835e9.2.2026.03.12.08.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:50:15 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Thu, 12 Mar 2026 16:49:02 +0100
Subject: [PATCH v2 8/8] dt-bindings: remoteproc: k3-r5f: Require
 memory-region-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-topic-am62a-ioddr-dt-v6-19-v2-8-37cb7ceec658@baylibre.com>
References: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
In-Reply-To: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Suman Anna <s-anna@ti.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=902; i=msp@baylibre.com;
 h=from:subject:message-id; bh=CbhB5KQ/eIbZFKfZzmUbhzpOi/+XnjgwaeHVx94tB9g=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxND5bypN1LePRk39SmSqu+s51n9xh/ZjRVYYo01E1c8
 e3amm2NHaUsDGJcDLJiiiydiaFp/+V3HktetGwzzBxWJpAhDFycAjARHy9GhqVGib++dapanHe1
 3Vr165X+ZLVrP9JCrtoduf35wRLR+u8M//3OKt0I0EmLeeR6IL158/bzk7RiQ68Yd3xX2MRxu4b
 tPB8A
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274690-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:email,baylibre.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3DBED274F3E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

If memory-region is used, require memory-region-names.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
index 3f2425e0880f9a516ac10700a218ed035ff07d5a..775e9b3a193878349590c5036aa884617ebbcc9f 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
@@ -245,6 +245,13 @@ patternProperties:
       - resets
       - firmware-name
 
+    if:
+      required:
+        - memory-region
+    then:
+      required:
+        - memory-region-names
+
     unevaluatedProperties: false
 
 allOf:

-- 
2.53.0


