Return-Path: <devicetree+bounces-259538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDpwAK6Ad2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:56:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A35DE89CF2
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:56:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CA21630074A2
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC2CF337BB6;
	Mon, 26 Jan 2026 14:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JS9YkWnT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385193375C5
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769439394; cv=none; b=DAjF76U+rXR2b6OlgS1bLeyD97NkSa7tx5hgxNu1GUfUXmBGiI7S0xgc4YBlKn7LMO1r1330pYivcx8ej2ha5VkUYhOAf+jOS29FOq871VN6l+L6wVH/YFM35vXnNyXy9Y5wHC9XenqSG3r69joTF/XMBWstEvkfEQUKZZ3Y3WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769439394; c=relaxed/simple;
	bh=zoU5K02Bbq7cw3lIuV6NlOALPTjdLVS9TUL2NqjNC4E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PNm5QHPmvjH0l321qGtKTqsTIffsb7gdUref4Fq00Qp2G8ACnldK0GnzufHoRyEG3YAz2c5iN9R0LDr5jUyocvBp8Zm20MAUbMtMm99HTkO7XyqTsS3nBwScZntbtlVUjDR5XMRYsW9HRV9nGhWmHz8MaWPhvshZzelbobDyCo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JS9YkWnT; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4801bc328easo52259975e9.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 06:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769439391; x=1770044191; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2a8Ed9B2Mg4RdZUumF2drNSJLLH5FmhhUmHLfuibnFg=;
        b=JS9YkWnT06zRzMmm4GZxHVLDTe7rJmjmHlgd+2vHsQqDvx6GoPiiSYixpX870TN9uA
         9PuuRMdV5ZjD3ktKEEHKTO7gt7w/tSIqHSTaoWOQwmHI5XFzdLoz+ogW4svoUxxCeapm
         t9lIMXMPVMg1JcoLuGVOH5FGhZz5r1PTxcnVRSDaA5enjOUfAH4VVM5FpPcnOpbjLrb2
         5TYcjHnWiwCwyTA/wGG9geEGKP+DUpgQThMGzRX4SJuP6mXugoGg+3B4kfcQJZ2EFNuw
         Jh0z0AAlOYoC/twsKwL4ZnlbrRwosA5l2oCwOcvSrQa97AjheqU56xlOt/CAFbTEqHI/
         5L0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769439391; x=1770044191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2a8Ed9B2Mg4RdZUumF2drNSJLLH5FmhhUmHLfuibnFg=;
        b=WE/Z9Qy11KAJE1ZzSX3HQUdCKL3pznUZUyMuMePrKmcLquisB6y6IjdIWTr1ZqDLIB
         hBboMRAWX7BtRkIlzBxWNpVVsGa5+5GuOrpe3QV5yr4n3nN1t2NssQBu4oXHE4sb50Ss
         tmIKKA5mKRVPyMWGsn9BO/d86mfQoRWw3p7eQJcH4OE2ZQWHZSsrSXkQ9TSl9hiWDrvI
         ETGLEeJWNOj9Lk36rVfs90em3tl3aIJ+ecX6rfG8/RvnAQ8rMq1sxdEg2lKujGYas1Zg
         DeBrj6SbG83zdTBEtD1FcSNZLFV3sRb87LZfHcygrEgVffwQ+Y6miG0wJqJYfHqWwfha
         d4ow==
X-Forwarded-Encrypted: i=1; AJvYcCU/59uNjkAT8Np8QrQH3ByPrPN6NNkY/tL3NDH7wtofnhkdN14tvxeibpcEe0U8vcG/3nqTL2q4rPe3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1T0ojQ6vlO7BNafs4ztl4DdU6FnKKyEv5jABf167IpVEIJIWa
	qAxUYlydJwyZopDdv6IP8idLjYUQ9jZZwIXAC5H1Xj0eeELBmYslNz0F
X-Gm-Gg: AZuq6aJjyfZtLLuNz/i6m5ebXigSOrRc1fAj2mcQmQXVMlUR6X+TWgOPGD3v+m9j+AO
	yk6MigXFn40rC2ujMCYTg71J1aYUA9wS5HAqZxZkuyZo/wKJDtaeP7GuuPv3vtHMx2vJQFk7m3Q
	i1XZPQlCw+MUAAGyU0odQfpiG95ZYdr8Xt+78I3I77qxJdL5I1QqVhQNI6PCoC9eNGPr8XTTi2X
	aTq5gZx5iNI7s41J/OAwX9jtY9+69i7D3zp50wSMwexlJbfkS2RIB7qnZsSMu4ba7Fv1Dr0rDNd
	9RLSBDUjp3IEjQGFBLHaolu9z+36+zc00O5sIQu6/zN+O596sLS8LhEh8VuyGXGHvAPigw6eChi
	gSGHcE95GWy3/ITrs2msYQU8eiVmW7dCn1AAKTT+4lMxlJbLazn2PJutavI7rFaYDGYSC56GQzF
	B/XdpDoac4PvSj8wRyqL4Jmc0AC994smC+O9EU/8pYMWUPo1XF
X-Received: by 2002:a05:600c:3113:b0:47d:403e:4eaf with SMTP id 5b1f17b1804b1-480650f2933mr20236615e9.10.1769439391388;
        Mon, 26 Jan 2026 06:56:31 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d8c0aebsm278448735e9.15.2026.01.26.06.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 06:56:31 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Chancel Liu <chancel.liu@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v2 1/2] ASoC: dt-bindings: fsl,mqs: make gpr optional for SM-based SoCs
Date: Mon, 26 Jan 2026 06:55:36 -0800
Message-ID: <20260126145537.2301-2-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260126145537.2301-1-laurentiumihalcea111@gmail.com>
References: <20260126145537.2301-1-laurentiumihalcea111@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259538-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,pengutronix.de,nxp.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A35DE89CF2
X-Rspamd-Action: no action

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

For SM-based SoCs (i.e. MX95, MX943), GPR configuration is performed by
the SM coprocessor. Thus, GPR is transparent to the software and does not
need to be described in the devicetree. Make it optional.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 Documentation/devicetree/bindings/sound/fsl,mqs.yaml | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/fsl,mqs.yaml b/Documentation/devicetree/bindings/sound/fsl,mqs.yaml
index 1415247c92c8..bcc265a742c7 100644
--- a/Documentation/devicetree/bindings/sound/fsl,mqs.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,mqs.yaml
@@ -63,6 +63,16 @@ required:
 
 allOf:
   - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx6sx-mqs
+              - fsl,imx93-mqs
+    then:
+      required:
+        - gpr
   - if:
       properties:
         compatible:
@@ -91,8 +101,6 @@ allOf:
         clock-names:
           items:
             - const: mclk
-      required:
-        - gpr
 
 unevaluatedProperties: false
 
-- 
2.43.0


