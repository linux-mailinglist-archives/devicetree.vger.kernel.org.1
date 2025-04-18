Return-Path: <devicetree+bounces-168435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6837FA93185
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:35:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11CFD1B64CC8
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 05:35:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09379269833;
	Fri, 18 Apr 2025 05:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="GPcXYGaN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D156269827
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 05:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744954466; cv=none; b=r3hzVHfy9pyusCMSIW5uppt1bMfNofMfFtKAegGM6WeODhDhsgFfqUXJ/8MY4B6WMaFhXsIg80xo1ug0EHF3WCMXxDCiy338mlopVK4KwyhldWr8eaAR/2983zC93E+kPoR/MDDstzKzSu0f81e+6kiBKzTnF/QIEeN1E0OMfPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744954466; c=relaxed/simple;
	bh=iNvtmhIIdE2E+xRjc7orMQlXMujypCVr1/7GWwD+Wzc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m4uahVUFRi6FX/FYY6GJTcBGjcrnCJAQ2FJk9RnG56higWae6beAbbZgw1A5q0xjjpVBXQfX3GhKakzinBVqfkNacoXzVYTBVARbgxmNpBIcKjGsQJWikgxY4RlHPRw/QfsabzyuEr2HjXXWzq350PXP9AbFBOXqB2LVa9pl0/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=GPcXYGaN; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-736a7e126c7so1381435b3a.3
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 22:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1744954465; x=1745559265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BQs7uzZ6Onwkx41wDcc5ghYmXoSRb5gM/5WF7cFYuB0=;
        b=GPcXYGaNYoB80blbfSFnf/p2fhAS4CEex7JOsmlQjiOPEt1R/luOvKmZ1IadudkGyk
         xf4gXuCcUSTgfBcGYQop0Bj0JJtjI11KoaiKyoWryqpxqNxx2oZ9486COgxCn4NYFJQt
         cVWuuvnMlQbg8zHX0pj1TxMULsxxveZr+eSsTUF+uELpTuxtUx97y4UFGkZ6bKT+Wwyb
         VCFgtBanebl6ghRGIFC6NTrkbJ9t+EHitQszoOPRn3ZGqmpxpJ3GFAe4pPDLq8fOuPnp
         zOMX56yVwL0lBtreu0KrXKWf8WnAVu0ss2+IP/hoNupuuGroHPySDi+5GQgm/ItkqmFh
         wpYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744954465; x=1745559265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BQs7uzZ6Onwkx41wDcc5ghYmXoSRb5gM/5WF7cFYuB0=;
        b=JiBzPbDPBROQgewXC0XUmh27q9artBsPae9wx81AWNcPl/sf8yPRVgINnrtYmv2KRb
         g4jBNQSpIoocGY80JtZj8caziWK7slD0A1FE19MeR0z+p5y9xpLWvGjkNxjeFku97Wnj
         2H9Yu68dRCwwIicaWu8265M2PUO4TIjLcXyZikqqnghYPQrQV1piZOToLxiQNMrLqxSf
         gNktXE3+wkOA3a84smpU8UP0ox/aQC7xqFddnKPRj9FfgjPZMPgUfeyxJ6tTMXMLbp9L
         mijT1ZK214V7NTTIEdCyA205s8tYSQuMqpL7Cd6h9+MyADkSCTCn+rYRFwj1zITLH2PB
         HnUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXySs0jFGeu5g+CnaZYDvsULiKgPzMPnPd3LfMQC91dY7SgEM1F6OoFw7VqGtEp6IVXRNHvghKAe/c1@vger.kernel.org
X-Gm-Message-State: AOJu0YyWXvjgnr0sqq/d/VBIMHbhiArNEtpYmpZ7YV/P8I6nFlf3bvdh
	MLnzL94emSs6G/TyJRGDOpfOWTaV4rc2RfwIgMLizZXjIza1fND8RDTIYuSvSPA=
X-Gm-Gg: ASbGnctm495E3C5KTjDWPRMKj4TrqN6GVuWzLZjCdc9TtuZNL6qdZs1qKXPkzL2N6Kg
	tOtIFVhTAKxBIwtqKM4dTTHy3AqWwg9H570oU7r0Zr8fdAifNOk02euscCFMnfTfgg03SjFQkZa
	uMWAaZoj9FtlLZI3Kmw2TjKVMU9OXvni9GxhYJmf/H17rKoX92/jm8O+WSvvXEdGfH+eGFO1ENY
	VdGMmA30qCfAGWPyhr1scbGxxCAZl33LCTDDYxEoWcyxIpQpgNWU9J3tvNpcQL5t8qJdPClt82y
	DzFzksSwQZhk/9Md4zbISE1/WTB1yVq0S4sICg6yWB9QA75fDKpOet2DbQpTr/HRmfL1tn6gqMP
	H
X-Google-Smtp-Source: AGHT+IF2DvMayvvtqWjev5K9y4IkVU3547WcTSfffFPt6RiuPH7JdExs6M3EHo0S62GLsq0ai7FbqQ==
X-Received: by 2002:a05:6a00:3a18:b0:736:62a8:e52d with SMTP id d2e1a72fcca58-73dc14c7d0dmr1797266b3a.12.1744954464653;
        Thu, 17 Apr 2025 22:34:24 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfaed86csm834555b3a.180.2025.04.17.22.34.21
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 17 Apr 2025 22:34:24 -0700 (PDT)
From: Cyan Yang <cyan.yang@sifive.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com
Cc: linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Cyan Yang <cyan.yang@sifive.com>
Subject: [PATCH 05/12] dt-bindings: riscv: Add xsfvfnrclipxfqf ISA extension description
Date: Fri, 18 Apr 2025 13:32:32 +0800
Message-Id: <20250418053239.4351-6-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250418053239.4351-1-cyan.yang@sifive.com>
References: <20250418053239.4351-1-cyan.yang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "xsfvfnrclipxfqf" ISA extension which is provided by SiFive for
FP32-to-int8 ranged clip instructions support.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index d36e7c68d69a..be203df29eb8 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -675,6 +675,12 @@ properties:
             See more details in
             https://www.sifive.com/document-file/sifive-int8-matrix-multiplication-extensions-specification
 
+        - const: xsfvfnrclipxfqf
+          description:
+            SiFive FP32-to-int8 Ranged Clip Instructions Extensions Specification.
+            See more details in
+            https://www.sifive.com/document-file/fp32-to-int8-ranged-clip-instructions
+
         # T-HEAD
         - const: xtheadvector
           description:
-- 
2.39.5 (Apple Git-154)


