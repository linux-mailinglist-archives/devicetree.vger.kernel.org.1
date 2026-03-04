Return-Path: <devicetree+bounces-270875-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNF4AJ3gp2lnkgAAu9opvQ
	(envelope-from <devicetree+bounces-270875-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:34:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4D61FBA45
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:34:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B901302592A
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E370D36BCF4;
	Wed,  4 Mar 2026 07:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Uiq4TaMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C0534B1BE
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 07:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772609689; cv=none; b=P3uq5uFfnq9b6X5WgPK7hR8d1v259foSUwvUk10XJemnXNp5y0aKAyJW0hNMlA7zhm4kUHHVhZkOjK9Rm1gCvQy8V4zIuTAYxSFrdcNiCaitUIG+yHGasuRTa9jWieLw+PniRHNg1bh6KsbtEqJkz+8Itr+sbJ8IQyxS0Il4J8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772609689; c=relaxed/simple;
	bh=ihWtm6BNeZIdHJPxSWdVbPBlhVDJEp9hB8t4Ho65JDw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MA6HEDxPqi9YPko0o4NCBYmyh6aNis9iUJj7DS7Z0fkhvDvz1stDqIbJpBOEBXJ9y0Z+eIsAtKmsZwfu3NK6oAI4CT47MUc+nghkdvZNkWOzg9RBpn6CmaiY9t7v0wnqhtWF/L7B7bYYbdCZTtmZi67RNaGi1SrzrLr7NNdNhNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Uiq4TaMu; arc=none smtp.client-ip=74.125.82.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2bded9bf7a7so4783666eec.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772609688; x=1773214488; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5OSdZggynsJBsU/qtiL9Wji3B58q5QjoIHphGlxLwaA=;
        b=Uiq4TaMu6f9N34ZAPNosb0yxYS1xBVcj7nH5LbRj0nRP7Ey3l8AVqFVmbqimyHHVue
         32y3Ta/IzWWgRbedReYZae4ONoAYWSRmD4Q1fQq8t563J8sv6kw1Yppaqp51TLyypkLJ
         EBB1L9Flzg99sVTh6Cv70Ycob3OEHkN5U+afUoW1aAhsIy05fuqle4TBia7vBZ4Blb0g
         foswnZ//cYdvsHgjpFVyIaiPXO2Uxt4HTvfVJyzNA+Hrd13J/qrbOq+XdSiUkuXb38t1
         7nv5hrdnURhj0fFV4bZOTdxZ1bXqZQ61k7c98izH2KmEOzv1BunQHpNCHaDC6+cZPbXS
         4+FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772609688; x=1773214488;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5OSdZggynsJBsU/qtiL9Wji3B58q5QjoIHphGlxLwaA=;
        b=BzT5lcDn+MJQNQtMm1Jk7uLnVbmxuJZjUqb1wpHHVcPVfgU32Gy/acUzm1Z7iq6SwZ
         6haspXoyPQwhdi4SZR6nOubXclojkrEoWNJ2rdK1ONrXvYvG30fRGSZ2iMV7Trs4tCAx
         3ua0pXhEverxlk0zvC9zdrXIPVJEdPXA3LTXWHF+bWbCPRLAoRRFHNAIvW7uExPLCdNU
         EE6I5GghGoIjD2AElpX5LnRM0z5p2HH/KzpAFG30QJ2dden8STfiVeYeaadgl3hET73t
         pPP+uqJif7JQVu8erZ2rIQagSYnG2NpparknNmCgeGo9QtPboHq76JJc1m0CmrGd+DvX
         k06g==
X-Gm-Message-State: AOJu0Yx0mmzhj1AnkCX7WwnGy3vdOn28qYi+Xem2+oQ0a2tHZ+isIzgS
	MvT7u65RV7ZnXfo4uXiEd99ZOpinoyhx/9I7pa7/dUgyjGA4D9ATp2tIGyzNRg==
X-Gm-Gg: ATEYQzxWIGIu1sqAfKwPUS782v/ADl4h/ObmPmuQMBVEsUmQD7tAPF/bx9QyZ/MENqr
	hYr9yKJ4IHhkvkkNk2FKHRrC0tOCN1x4rgVzRE77ojn+q8TwcRsqHHVOk/vS68Nru5P+el53JEA
	Hp+Vetf0X/+SaekPBPH/BgTpY/yPOlSP397zmosieG/GTQwtH0C3D4H4pFZ/uGK7HTDKWGe2PFt
	cKwOVQZVqB6rrGYteraXMQcZmFt2O6lUWQ8pDbuZz2UB1ioSS3ZRkPWmOziq4hmjoqNeUAgrvc0
	K/onpDuZCkrvSVkE62vBrjMVMo8aIimasVzo5KadBWOExd8irNtUZavR8efS306kdn6Ru29yX+H
	FfcdynXF3+2LitxdTP8tdXMTHrT4/52LXE/5NJd6qHsFiSJhHlpEnldayNqw5EUZy5QgXeB5/rY
	SljdgY8JFb94cRN4uy2s/j
X-Received: by 2002:a05:7301:1004:b0:2bd:cfce:4c4b with SMTP id 5a478bee46e88-2be30fa615amr465643eec.2.1772609687731;
        Tue, 03 Mar 2026 23:34:47 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a55:9af1::1002])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be2056acd1sm3457123eec.22.2026.03.03.23.34.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 23:34:46 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	wens@kernel.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	mripard@kernel.org,
	andre.przywara@arm.com,
	Jun Yan <jerrysteve1101@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
Date: Wed,  4 Mar 2026 15:34:29 +0800
Message-ID: <20260304073430.438835-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304073430.438835-1-jerrysteve1101@gmail.com>
References: <20260304073430.438835-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8C4D61FBA45
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,arm.com,oss.qualcomm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-270875-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,ultrapower.com.cn:url,archive.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

TaiqiCat (TQC) A01 is a set-top box powered by an Allwinner H6 SoC,
equipped with an AXP305 PMIC, 1GB LPDDR3 RAM, 8GB eMMC, an AP6212
WiFi/BT combo module, one 100M Ethernet port, one USB 3.0 Type-A port,
one USB 2.0 Type-A port, one Micro USB port, HDMI, SPDIF, Micro-SD, and
infrared input.

It is a blockchain-based terminal product launched by UQSoft
(Beijing UQSoft Interactive Technology Co., Ltd.), a wholly-owned
subsidiary of Ultrapower. Its dedicated product homepage[1] was once
hosted on Ultrapower’s official website[2].

It should be noted that UQSoft's official website[3] is no longer
operational, and the company appears to have been discontinued.

[1] https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html
[2] https://www.ultrapower.com.cn
[3] http://www.uqsoft.com

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 9e4627f97d7e..e6443c266fa1 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -901,6 +901,11 @@ properties:
           - const: allwinner,sl631
           - const: allwinner,sun8i-v3
 
+      - description: TaiqiCat A01
+        items:
+          - const: ultrapower,taiqicat-a01
+          - const: allwinner,sun50i-h6
+
       - description: Tanix TX1
         items:
           - const: oranth,tanix-tx1
-- 
2.53.0


