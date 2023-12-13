Return-Path: <devicetree+bounces-24725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DFF811017
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:33:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2EFB2282224
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50CD424218;
	Wed, 13 Dec 2023 11:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RC0pQrg+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8110411D
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:17 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40c317ba572so12199485e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1702467196; x=1703071996; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bstEpC4Wn7eojNR4ey8qLYKe/MWWQca3CdSgitFw4Fg=;
        b=RC0pQrg+1tzni5Y/urP2QWDVAWmKqQUsrkRj0mkkRUeu7RUyjQAaNL9xs2KZ8B8u7w
         qAyP3KEhtSBooyTraLIgzc97Zdu10Lx9T1Q9kCZ48YupxjLt1+XdRDesCjuKhqKZn6FG
         FZVe8wO+gH6jCMj+J8/4tSIFL0w65DgvzsVGTvvGa1b58Ji7zudsKY2+sPasFIale85o
         GHGLg5ufOgZWrGr/O5GmVaZvKWcAkSiUNQkVs9prh21o+vH+SmG3XAhe4zyDwUlWmfio
         Nf+uMiXqj3SgPD8H8wef4UCjj+48zhsFEK9XtAoEQjEoyRyz9yYTf6R1gODpJoFg50p4
         sNpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702467196; x=1703071996;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bstEpC4Wn7eojNR4ey8qLYKe/MWWQca3CdSgitFw4Fg=;
        b=rn7fcMFOH8BN6+2fDkvVQaDN2kSN39hL0bsPpxrOYLzcKN3HUR3JvOux1hAshJlSsr
         eFeEU98xwDsD00OZSS6pkU4FyB7DjGcwxdivNi4Pmra1t7t5MkRHDKCHffRxKRmyS2NR
         3FMOIBhH5xcdBzI8TuJComeuFDxOSEC6kE+Bn8JfX+edy98K2MURPmuJfHc4WS+lMO2R
         pf0UhClA4vrnrrHHd26EDQo04aYMMZDtSFsLUP+IPXeuQVpITkgR7BUlhBDg7wsTT30b
         gKeGkFuxs1sLQEJ3a6E5+x6GQkW4mVDu6Xia2W4EA39XFEyv5iqA8qRwWIbPMk3qP4bc
         CtcA==
X-Gm-Message-State: AOJu0YwEm784gnu3tTBehekysl9HEMAAGrRyXiF/wLRMCKrTcv6QwteV
	Fh1hJiCx7KOck8ULKmTKrB9EaQ==
X-Google-Smtp-Source: AGHT+IG2tOfMAS1pydsf4pPawIp50fPoX384Fx9efJpcAm8MmIokurwGuZwz8GEsZl7/fbAwTEX3Lg==
X-Received: by 2002:a05:600c:358c:b0:40b:5547:76a0 with SMTP id p12-20020a05600c358c00b0040b554776a0mr9797289wmq.0.1702467195152;
        Wed, 13 Dec 2023 03:33:15 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:c564:f167:d072:5672])
        by smtp.gmail.com with ESMTPSA id m27-20020a05600c3b1b00b0040b38292253sm22433137wms.30.2023.12.13.03.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:33:14 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Robbin Ehn <rehn@rivosinc.com>
Subject: [PATCH 3/9] dt-bindings: riscv: add Zam ISA extension description
Date: Wed, 13 Dec 2023 12:32:59 +0100
Message-ID: <20231213113308.133176-4-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213113308.133176-1-cleger@rivosinc.com>
References: <20231213113308.133176-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add description for the Zam ISA extension.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 3574a0b70be4..912cc6a42eb4 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -171,6 +171,11 @@ properties:
             memory types as ratified in the 20191213 version of the privileged
             ISA specification.
 
+        - const: zam
+          description: |
+            The standard Zam extension for misaligned atomics is supported as
+            ratified in version 20191213 of the riscv-isa-manual.
+
         - const: zba
           description: |
             The standard Zba bit-manipulation extension for address generation
-- 
2.43.0


