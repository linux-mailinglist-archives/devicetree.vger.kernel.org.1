Return-Path: <devicetree+bounces-259218-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IpfFbOudWl4HgEAu9opvQ
	(envelope-from <devicetree+bounces-259218-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 06:48:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F797FD03
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 06:48:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADE1F3011580
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 05:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5732F310762;
	Sun, 25 Jan 2026 05:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="aEr69hPO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9238230F547
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769320109; cv=none; b=cewyn5S7LkrNCepVI3mNS5rtPk7po0uX7NaZL4H1LWjDAk8aaRaahfNhnvf9At/x+Av1xQ3+7ISS7fuWDliXl6KX7hbXUFuiX+HkxzSYFyDFdqPdsVSsuZwMNB3JjtTFe8Q/i4qM6jfNATaIzUZsKYzqvQjh/lYuQI9pa4Aprug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769320109; c=relaxed/simple;
	bh=ilP0oUEcgLbC49kjj4ZBFmbRYl5pSdW30oe15mM7XC0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XjRVWVlZ+De3yasgIKfTD/XL/avrd2BVrcMTrQFAcfuiuNnzRPPmgEsy0AioY8LOWo/DdjnqckZpubMU6ZLxQiRaD94B4qFVCwT5IZjTKePn0aTBLPdBwsDsXnw3tlZ0WwBsPLOHHKD+xbtT33mZZBE9eR+Lz7a8xxf/FKI4pO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=aEr69hPO; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-81dbc0a99d2so1762184b3a.1
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 21:48:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769320104; x=1769924904; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U+hFQkKCXgC1aoBhH/+QMxC/tTL+ChXS3LVeT09Vue4=;
        b=aEr69hPO1s8Y2HfQdleG6XVPyOfZiA31VoHkw8SFB6pt8r2j0h/BCIbOC3su8ulxlz
         iZj1181aNa6WF0fvs8Jgus6uCSDN8NUdv2wwoLotPjWnVT9VkMEIKXbdIenIkad7m83l
         wxuRdcr/5Ecu3etEBi8JgR7YLXMVvCHuIYhVrIouIlV9RSmQvNtbvKydoUN740ZG/KJX
         mSDbf8gi1PmCo14C2uBkqVf8xNT/OjZB5Rmuq93DFsO27WOWR0b8XOW0BLDoCnOwqEgp
         zQoJqqigUuFxTcdnYVLvvzmibewHWSvVDNDOuw6WZ9jSO/ykosS3hR+1gmS1lXnH3yZa
         5XIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769320104; x=1769924904;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U+hFQkKCXgC1aoBhH/+QMxC/tTL+ChXS3LVeT09Vue4=;
        b=vav2Exz0aG8KK9Au2V2MI9M+BqSAm3WOPZTCy0r8mOCjPtNraJ9jkZCKNVYpH5QZ7t
         0se+j3uBYbgizib56IrYPfFo1sry+bMhuAHo7ynShhqBq+h45sKs8YmaYaR5OYfkavQO
         9uO6HSQpA30OLzdiWgwbg/JM/MZebcCsed2dCZ9S2Nl8YX5zoGRs53IsJcuCGzOOFd+6
         M1NblEPxJ/GDTOx8DOf5YjGIjTVmjpmu55tqFTFoG4des+InHXRpdnvUBMie2ljCgnp1
         VYIOw+i/TG6crLmlw8Nd6DpVMxSJMuS8bkb0SZagPcLQqdJ1EbW1RSyfcoBjEz8PuhCu
         pFFA==
X-Forwarded-Encrypted: i=1; AJvYcCVMAnTvapaD7FQbJX6zwSyVfSeK6ZcOcqGPBlQ/wzcn2HGLRGWztzXi5KLMr2j5cKfC3ar39GkFfQZv@vger.kernel.org
X-Gm-Message-State: AOJu0YxfE4ZThfwz/jYWsG+ULqeeMcLWZXZnSKd8hXCZFLYsTdJYmrd9
	9tl6PiRNQWqBepFA5kim+ZxKhooeZgiOFLItYfkB+3uPLsX1rSDedd3ROExY+woP9e8=
X-Gm-Gg: AZuq6aIsuzcksnANN2nmLK16/4xTAqwZ6JYzVLjJyrhDvHYiy2xTWDdvgMcjLX9nnCz
	WcH2d564gCGmbrN/2KBsfHlfS738qcRTW5F4ddGprKyvbLQ8JKeldTXa9jO6B/K1ND02zpLK77z
	+THNyfoCD7Qy+dqRao+5Wbjc6Y+D1GkwuOUc+bVBN71JSoZcaRRqOsqBqGVVWpHSi6ySvL0diGt
	HF9Z/8tiEDMrjeJ4TaNT/UhtYbINaRRVUbfuSsP1Q+5cdOOY7fguycE7KwgeKcvmVwbq51QWwMc
	5Ttu/2FdVYYac0spItTB3nXjpCI4FqzlOCmjQCL1o08w72xMrkb39L2vdIifCyn8O/3BuuEYH4Z
	xVNtshm8B8dOLxxEKSYyac2NjP9vXx1Oxbf9rcTTTGR1S21zIIucJyvBn/IaZPrFid2IydRoX1A
	92gKYeb6Wa+y1jdRo83MX0SN2JR8jaVlo=
X-Received: by 2002:a05:6a21:790:b0:2bf:183c:ac86 with SMTP id adf61e73a8af0-38e9f114abemr636293637.25.1769320103914;
        Sat, 24 Jan 2026 21:48:23 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c635a3f1ebesm5680016a12.19.2026.01.24.21.48.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 21:48:23 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sun, 25 Jan 2026 09:36:06 +0800
Subject: [PATCH v2 1/3] dt-bindings: riscv: Add Supm extension description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-supm-ext-id-v2-1-1e3b9714c860@riscstar.com>
References: <20260125-supm-ext-id-v2-0-1e3b9714c860@riscstar.com>
In-Reply-To: <20260125-supm-ext-id-v2-0-1e3b9714c860@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Evan Green <evan@rivosinc.com>, Andrew Jones <ajones@ventanamicro.com>, 
 Conor Dooley <conor.dooley@microchip.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259218-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: B2F797FD03
X-Rspamd-Action: no action

Add description for the Supm extension. Supm indicates support for pointer
masking in user mode. Supm is mandatory for RVA23S64.

Add dependency check that Supm requires either Smnpm or Ssnpm.

The Supm extension is ratified in commit d70011dde6c2 ("Update to ratified
state") of riscv-j-extension.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Add dependency check for Sump.
    Put the check blok after single-letters and before Z*.
---
 .../devicetree/bindings/riscv/extensions.yaml      | 27 ++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index c6ec9290fe07..2b0a8a93bb21 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -262,6 +262,23 @@ properties:
             ratified in RISC-V Profiles Version 1.0, with commit b1d806605f87
             ("Updated to ratified state.")
 
+        - const: supm
+          description: |
+            The standard Supm extension for pointer masking support in user
+            mode (U-mode) as ratified at commit d70011dde6c2 ("Update to
+            ratified state") of riscv-j-extension.
+
+            Supm represents a combination of underlying hardware capability
+            (Smnpm or Ssnpm), U-mode consumer privilege level, and M/S-mode
+            software configuration that enables pointer masking for U-mode.
+
+            DO NOT include this property in device trees targeting privileged
+            system software (S-mode or M-mode).
+
+            This property is only appropriate in device trees provided to
+            U-mode software where the next-higher-privilege-mode supports
+            Smnpm or Ssnpm and enables it for U-mode.
+
         - const: svade
           description: |
             The standard Svade supervisor-level extension for SW-managed PTE A/D
@@ -907,6 +924,16 @@ properties:
         then:
           contains:
             const: b
+      # Supm depends on Smnpm or Ssnpm
+      - if:
+          contains:
+            const: supm
+        then:
+          oneOf:
+            - contains:
+                const: smnpm
+            - contains:
+                const: ssnpm
       # Za64rs and Ziccrse depend on Zalrsc or A
       - if:
           contains:

-- 
2.43.0


