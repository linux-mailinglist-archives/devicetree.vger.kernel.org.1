Return-Path: <devicetree+bounces-266635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHz3BCL3lmkusgIAu9opvQ
	(envelope-from <devicetree+bounces-266635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 12:42:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5895C15E5FC
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 12:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21C15303DAAB
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 918DE3064B5;
	Thu, 19 Feb 2026 11:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="g+eMhbPS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6864C2FDC38
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 11:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771501314; cv=none; b=Br+oBIxWsX7p8imo180OFuONBnrn+Ngav9i8yISAKv82dQIfyhmUTKlp9G1eeXYYaEh6kHeiuhxD+SocQGtfDWd7knTUYh3zzNcOCPMD2+/zvPN+5E79Ns0fciPzhXLqrQP/XGPBl9L5ik8MYHZOg9LmTFs1OnrNG3Y5bFJwREg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771501314; c=relaxed/simple;
	bh=1rCkpkHyHE3IPuAx81k2bwmc4nwhuww71wQ9MS0fnZE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dcJkF5KWSEkhS/IIdp1LFknfApRzrp+I2kbVC6Jxj/Fb+LfllYsw7Xs7Jh9NpwBLWxqAyBvFaRk9hre6glVLuWYs3gAzsZiRPlfn/6YTVAGNQX6ml7vkMLDo2cnKaMj89TCGE35MdXZRm7zGC7cHoGxHfGIDOY5hcUrrU4hLilo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=g+eMhbPS; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a8a7269547so7796545ad.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 03:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1771501313; x=1772106113; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3WO3LsK3AW3by8XZxWRGcuY2BsjgbgR+h9RmVDdaQIY=;
        b=g+eMhbPSxdYoyNcYp9yBsWjIvVdSW/veIgXfaDfM5rVoBDS6ghPZv+CcNGlynJKK/M
         TVmoenvgCfIxV6sjUV//fM+blW6EYDpABbiCZbtVKoPWTQYtNEDJ45gc/w9zHPX/4FoZ
         84DVt925dLHODzB1XygjVsCGAeF1aTJzMn3tA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771501313; x=1772106113;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3WO3LsK3AW3by8XZxWRGcuY2BsjgbgR+h9RmVDdaQIY=;
        b=akWJ6Rspz+pcaxxkSd8nWHaSzQ52FC7So6dkS7/OLY0mdXeBNvQNW99Fv80UbjwlBU
         wWfx5xxWRe1ZBRKh46KwgRhuB59IczzADswF6zxGOoLhq7QiIxWzdJNLOmlORs2dT4HO
         TC6P5AMOSwb+UvLUXsvJIFbYJJzuuniVpwaV9h33t9PGjnRA/pSN1y1N4waxPLU5Y1DG
         +psFNY7HMFr9bi8rE8ckQ24sO5CxADIIzQj8DlFm4KQMQ+8xD8F/A79PQ1b0ULVLkjDV
         eqETlZ02tt95T1/P/suhF5GZgnpiHOvZq1UuERDKsrqoU6GP5Qr0jw9Jl01SW95xPKud
         OgPg==
X-Forwarded-Encrypted: i=1; AJvYcCUHb/Vh0T7Xtc5eOHqsMQrlL0dARliyajgSN2WSWGrCPqc/N6No+g+X8NQ4tlq/Ojy99BUWC2KW/W1M@vger.kernel.org
X-Gm-Message-State: AOJu0YzakXQKze3NttwgziRfdKqvHjVYIySrwtK7Pju5aaAYf4xnv99j
	FCKkP3aKhQdzhi9fi/FhxvUrJdnNfWg9nW0tHZg2O3eZYQN03ULIAnKx7abENhlSMqk=
X-Gm-Gg: AZuq6aLxydS8PHqts8qGojlKy7vJ+9Fq+SEfpK1bXpJKnH/ymkJk/2Yhx+9CQp0WOwk
	nA/VMPgVL+cSWS9yM54XxMOchyg89YO7Ezdv2haSqjrK0gR+SPqb4MnZDyPs56xDpAoaD/mTmBw
	JubojaVejUXBAnKRczBSFCNcl5zXFGsNmwc8sIL8OqCW92doHHNee5r7lbt7wr+fGUch/1EAIbz
	PaQN09N2WJHRwKMpXS8aYfMdJ6Iix6/zN6yjeWV5+lFOVg/H2yz6fDwdqpj7SWeoMzu7pwq3KoF
	yPcbYIeKSMBsOYhkSi1Ds8nDTWQry1y8HazKandgjDZkIBdsfXsD5679tYMzqCM/8OIlzWdlgaI
	AbYvfoREaXjOcjvCNrNd9JcyJagWzeMm1SJxn5NYrRk8xprPb/gmRpKxPMypgxtbWtedH8bN16r
	WpnoHKLnWzzCVKUsStiFH/5cHG0le9SySU9dVUnoPwLyzdtlAbadAGaZnck0CzE7Mkds9mzqCRk
	X4Y3WALgu98wrmAWYsPIwFUzXKIYMKyf3zW0seHGobMKVm5PJSb0b8mIiy9rjt8hBI=
X-Received: by 2002:a17:903:46ce:b0:2a9:4450:abbc with SMTP id d9443c01a7336-2ab4cfbc9d9mr241204505ad.26.1771501312744;
        Thu, 19 Feb 2026 03:41:52 -0800 (PST)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567e7d95d8sm27442358a91.2.2026.02.19.03.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 03:41:52 -0800 (PST)
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	navami.telsang@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v10 1/4] dt-bindings: crypto: Document support for SPAcc
Date: Thu, 19 Feb 2026 17:11:27 +0530
Message-Id: <20260219114130.779720-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260219114130.779720-1-pavitrakumarm@vayavyalabs.com>
References: <20260219114130.779720-1-pavitrakumarm@vayavyalabs.com>
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
	DMARC_POLICY_ALLOW(-0.50)[vayavyalabs.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[vayavyalabs.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266635-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[vayavyalabs.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavitrakumarm@vayavyalabs.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,vayavyalabs.com:mid,vayavyalabs.com:dkim,vayavyalabs.com:email,2.98.90.0:email,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5895C15E5FC
X-Rspamd-Action: no action

Add DT bindings related to the SPAcc driver for Documentation.
DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
Engine is a crypto IP designed by Synopsys.

Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/crypto/snps,dwc-spacc.yaml       | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml

diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
new file mode 100644
index 0000000000000..857e5c6d97fc9
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/snps,dwc-spacc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys DesignWare Security Protocol Accelerator(SPAcc) Crypto Engine
+
+maintainers:
+  - Ruud Derwig <Ruud.Derwig@synopsys.com>
+
+description: |
+  The Synopsys DWC Security Protocol Accelerator (SPAcc), which is a
+  semiconductor IP designed to accelerate cryptographic operations,
+  such as encryption, decryption, and hashing.
+
+  In this configuration, the SPAcc IP is instantiated within the Synopsys
+  NSIMOSCI virtual SoC platform, a SystemC simulation environment used for
+  software development and testing. The device is accessed as a memory-mapped
+  peripheral and generates interrupts to the ARC interrupt controller.
+
+properties:
+  compatible:
+    items:
+      - const: snps,nsimosci-hs-spacc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    crypto@40000000 {
+        compatible = "snps,nsimosci-hs-spacc";
+        reg = <0x40000000 0x3ffff>;
+        interrupts = <28>;
+        clocks = <&clock>;
+    };
--
2.25.1


