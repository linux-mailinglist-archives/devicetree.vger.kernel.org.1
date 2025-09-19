Return-Path: <devicetree+bounces-219159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC62B88355
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 09:39:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FBAC526833
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 07:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A3652D7DC8;
	Fri, 19 Sep 2025 07:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="ILMwbVmv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C6F2D322E
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758267472; cv=none; b=h7dv8gVLfg+n08RJiaVlgmpjfjs1LdWqkHMjFWF0GrTlSd0krcPqI1MqYNF46xNen1MGslP+vVXxkHXq3H/P7HVyIuUqbCB1txPevgmsyAZt9mlR2upArJZcP7OaK4GkxDxxNrftU+wWxZ+1fzKKOVVO2Js5YECKvyny+5GtQ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758267472; c=relaxed/simple;
	bh=+YpuvhJCI/yShT1rtWNvOFpxGI7l/ehsFRhKIaNPItU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nkylIjFnpn8jgf1+V/7Oh+a5aVXY2Id4KT5s225l6ry5i5r/cgaGjQt5XN6O+tuKG2OPlTBaR40M3/tdcsyPiDOJk/G2jL9x1YUF/6Su/R0MK+5V0emhNA35kSNUMSHEEjfhHSZG9rwgxP2VsV1IrD3JR4SWAi85+M/3snbhirQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=ILMwbVmv; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-77d37d71967so1311867b3a.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 00:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1758267470; x=1758872270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kcpuRb5Zady/Ndj7TK1NVXuo7wdyupAjCmRtQU7qg78=;
        b=ILMwbVmvePhwb63VcL6xWvyq86V2LqZ5vXnadEgJSykWDZwrQbtAnlaKSLd3nA6aMV
         jjV2urD+9mkl06Sa4OQeeh7HWIPO0kMaFmaEAXwdo2FOU60uZ4RIqvqs0I8QlAOBoBxT
         9axFeZevbtti6CXIFJ0keSVca9dPy7hVEEoe1iHCa5009KqC2o7FtDiXeVWQUJOJUvZb
         Lt1y55GTQZmmN1H8cm3gYunoYcwbpSViiSdjlmuPTwSpG+TvAmJzVz6zuk9aIX2gMFCj
         0auPMTS8G7O/CtzigwFHBUHWa9W30oulwiCRzilvQtvO3eJtrZtv0yciY/YDCRyhwVpk
         dTLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758267470; x=1758872270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kcpuRb5Zady/Ndj7TK1NVXuo7wdyupAjCmRtQU7qg78=;
        b=BFFYKV95PXiUi/KqVftEZCGs/qBIGcZJA+QjBjPUTQ2/CH5ZcXcZiL1R8Yq4SJT6+I
         wRGyDvokFQLUmDNsfauKUYMMjVN4BEFI558eCOR5svILVCsVWz2VJp1GpJ8UrJxR8H4/
         fn7MS1tFc95o4/GNNBfcnknlJaIAng3Tv0NzACxt5yfaJDkW60rkD8UVc7yEMhB4dpNO
         2EUlGx8Bh/wmcWgim1UpaATKRGM5keP60DRqbtTMCSzrq2S3cZul/d2CuxyffPMqzmJ1
         ZwErrpofsWkUdOqdk/n7LLYITtOk90LEK8YbQztP0TMNP3ONLJ9rokEgA3tHc0O1ty9+
         AilQ==
X-Gm-Message-State: AOJu0Yw0rEdPjmiHX8QlMh4YqrPGkEiEzuJrEUqVcVwYVk4ARf+RG9l4
	NVOAa2fa1zvRQonbip9muLXjAO1fuPVNdycSUqPF3kQ9LZHqYT2R3Gykxl9rmPs3cBQ=
X-Gm-Gg: ASbGncs0hFb1oDly1HHNvV6DUbpa9zIL0q2/YBqRGQp/Gv7XEyH1kNaZ4qh0Hp/BfMY
	EoEhbjUkeZQr9FyJGIlu4a+gayuAgaB/61z5JTPg+3QkonM5zoQOYRq8Vin7tnw9WGhCFjrQwuU
	K0Tcac2II2uuNzdeKRz+EzrMbQKOakinNZnhQe2qb2nQ5J36Xoc2MR6IECoRlOaRSiNoX2h8IuX
	Iz/3HC1TsU1SQP0J+uJkcIsaDkqt+Av/k8RbSA9PqLwHtJ+u+nhzvxCJYuIKeqtyZalz6gVaKlH
	TGn9BhSYklCzjw2B2uLJQAMc/KD9w4XObDjN2DiY1CRkwGQs9rLGQIQ0uMgIjxhmMaSTwd4Mxzs
	5kmoro2mtNdFmxCwQGqYpA/ckpje3BtczMLCmKGTB5N6OtjkH8z4NbECCTnbwitiET/eIowkrjz
	oTc06Y7vFvXgQYQI5/i6I2fW47I8O1V+r1rRR6X2JZbg==
X-Google-Smtp-Source: AGHT+IEgACB1Se8zkEhUh/liD5ZfRMe2E7bZVsNaOovjpda2dN5kxeT40rB2jna9QVBQYl1FDLn0SQ==
X-Received: by 2002:a05:6a20:258e:b0:248:f6f1:200a with SMTP id adf61e73a8af0-2844b5ca29cmr7654865637.1.1758267470068;
        Fri, 19 Sep 2025 00:37:50 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.57])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b550fd7ebc7sm2679096a12.19.2025.09.19.00.37.40
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 19 Sep 2025 00:37:49 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: corbet@lwn.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	will@kernel.org,
	peterz@infradead.org,
	boqun.feng@gmail.com,
	mark.rutland@arm.com,
	parri.andrea@gmail.com,
	ajones@ventanamicro.com,
	brs@rivosinc.com,
	anup@brainfault.org,
	atish.patra@linux.dev,
	pbonzini@redhat.com,
	shuah@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	linux-doc@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH v3 2/8] dt-bindings: riscv: Add Zalasr ISA extension description
Date: Fri, 19 Sep 2025 15:37:08 +0800
Message-ID: <20250919073714.83063-3-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250919073714.83063-1-luxu.kernel@bytedance.com>
References: <20250919073714.83063-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add description for the Zalasr ISA extension

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index ede6a58ccf534..100fe53fb0731 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -242,6 +242,11 @@ properties:
             is supported as ratified at commit 5059e0ca641c ("update to
             ratified") of the riscv-zacas.
 
+        - const: zalasr
+          description: |
+            The standard Zalasr extension for load-acquire/store-release as frozen
+            at commit 194f0094 ("Version 0.9 for freeze") of riscv-zalasr.
+
         - const: zalrsc
           description: |
             The standard Zalrsc extension for load-reserved/store-conditional as
-- 
2.20.1


