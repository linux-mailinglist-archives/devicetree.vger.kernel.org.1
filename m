Return-Path: <devicetree+bounces-77668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C72F90FA04
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 01:59:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 940081C20D65
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 23:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D33111684AC;
	Wed, 19 Jun 2024 23:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="nH6+2ZQu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9F016631B
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 23:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718841463; cv=none; b=nJvopYaCh6/9YRuLBt77388quKqwC6eoTUd/QBbuR9kPOcx0S24Fe8BG4ZqXt9yhigQqMAO4cRima0S1lKwpwRQDz/gBvxHIF6MANuIiof3x8bMy+n123/URfEhDlcerM9v4V9QZvARYqBGIqBqXJhdsDiigHx8wb8E1qTf7mNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718841463; c=relaxed/simple;
	bh=xBHaFe7VLcuLpxsCjlsn/XmzjfLlJdrvGHOT1OyfrwA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kvgljPPCE3YZKbr7s/mwof2tQbXvpzg1OMQlztQ6Un49U9i/upL3+0ziH4ZkLbVyFafKYTkiY/9vxIkkTh45oN6HXADlgBSM9p7m+iFpi+JvRsQZMgu34W+gl0RSN7KQL5r1WSDiOreMqxyXb69s7+g4bxddI0acGq5g4JISXCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=nH6+2ZQu; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1f9c6e59d34so2359395ad.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 16:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718841462; x=1719446262; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Px8N27AOqmnwl/KnT17601Vv0G3wj5EYnZpDzUGAj0Q=;
        b=nH6+2ZQuxoRsHpGxk4lIGHjM0MFTe6dllHRDVdMksG2Gi9L1iVd4wwCm9XaErRsdK9
         9yVaVcuNzi7meEGR2jiqKIKQsawAlHAdqfS+qcvluNbvIr2a+UUl+Ns6QiIQN2v8lWZG
         d8ww5lByb2zgbjhdRhGWEqDYVcwFWFzMIcE9keh6c/TDA9mSdAPGqNdAXFChAtXQydQI
         BjUztGO+TN3RfFUt7C6NGBIXjFHN49jFqlX/GdH9QRhR1tWXpNN4ySHjKKFfJ++WCbxH
         OrJVSs4SnAQ3AeMkvqiR74h01AlXq5y6649TrEuEAkg0s8rPJuLfdT+OXn0BmQGB2/Dd
         Tlhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718841462; x=1719446262;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Px8N27AOqmnwl/KnT17601Vv0G3wj5EYnZpDzUGAj0Q=;
        b=v/MuoZt1OoUBbsRclJjYHXFkazb7Hu+WWU+Vw7wzDsgNs/l97LUrVxGMq4S2h+rs41
         76Srn+cQVBAraslc4AEHcRKHhL+2JXucsB7X+OMBH1fYfbw29alge9eyLAGnxj74YTpC
         zLPawfewWmLirvLIsQWWYRJBcmbpu+AdoL77UFWH3XFpgNAz7Tu4ZiFhHekoAVkpC7zR
         DI20bnb5+VCCuX+TOpqakhBgbm/MJQSgF0mDRxknYlfoD6pGmlhhnTq1IKPjvURB5CeT
         N4KqdWfzPRO/P2pGz0rhxBIIimsdGkxAV7ZCAk5QPrXwvU29XFrao8mPFUUcKy+W2cAx
         MrFw==
X-Forwarded-Encrypted: i=1; AJvYcCXCvDI6ycJD/lI6jZ2z20CdixL7SxAI4iSoBCxxeDPTHlCFHae+LroGm02F6W4Ebpr+QAHLZivhCYeBE2on0uNQtB7Z/pciB23x2Q==
X-Gm-Message-State: AOJu0Yz5NaqkAiN/RwRKUldd4bJBik1ZN8dg0K7tNfGeiSwrvGHpq0CI
	qJ9jKyVPhHp/YrD7g21KHJac3Mb9x6o+N0ntEAzKQRlRk9a/Rl1Z41wHFmZxzeU=
X-Google-Smtp-Source: AGHT+IFURITgIHUXPIWfZmHbHQG5F2+TL0ewnmECwvcXqCwzHJzZyz8b56abtJ31GhWKd7wdcoVjcg==
X-Received: by 2002:a17:902:dac6:b0:1f6:fbc2:526f with SMTP id d9443c01a7336-1f9aa3e74a9mr33490725ad.32.1718841461778;
        Wed, 19 Jun 2024 16:57:41 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e70ae6sm123620745ad.71.2024.06.19.16.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 16:57:41 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 19 Jun 2024 16:57:21 -0700
Subject: [PATCH v3 08/13] riscv: Add xtheadvector instruction definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240619-xtheadvector-v3-8-bff39eb9668e@rivosinc.com>
References: <20240619-xtheadvector-v3-0-bff39eb9668e@rivosinc.com>
In-Reply-To: <20240619-xtheadvector-v3-0-bff39eb9668e@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <shuah@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Evan Green <evan@rivosinc.com>, Andy Chiu <andy.chiu@sifive.com>, 
 Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718841444; l=1957;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=xBHaFe7VLcuLpxsCjlsn/XmzjfLlJdrvGHOT1OyfrwA=;
 b=U7tzWwho/N+CYyjv6ycLZuv3v/0Gxvil3l+cEZQaFfxVErRfFZmSmrZhbTwGPZz2eqVP4HVTg
 hIdYdYDPg0oBDxYwrCdKYnpW+bmBtpNSw9zJjs1RETRdIys5x98rJY/
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

xtheadvector uses different encodings than standard vector for
vsetvli and vector loads/stores. Write the instruction formats to be
used in assembly code.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/vendor_extensions/thead.h | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/riscv/include/asm/vendor_extensions/thead.h b/arch/riscv/include/asm/vendor_extensions/thead.h
index 48421d1553ad..27a253a20ab8 100644
--- a/arch/riscv/include/asm/vendor_extensions/thead.h
+++ b/arch/riscv/include/asm/vendor_extensions/thead.h
@@ -13,4 +13,30 @@
 
 extern struct riscv_isa_vendor_ext_data_list riscv_isa_vendor_ext_list_thead;
 
+/* Extension specific helpers */
+
+/*
+ * Vector 0.7.1 as used for example on T-Head Xuantie cores, uses an older
+ * encoding for vsetvli (ta, ma vs. d1), so provide an instruction for
+ * vsetvli	t4, x0, e8, m8, d1
+ */
+#define THEAD_VSETVLI_T4X0E8M8D1	".long	0x00307ed7\n\t"
+#define THEAD_VSETVLI_X0X0E8M8D1	".long	0x00307057\n\t"
+
+/*
+ * While in theory, the vector-0.7.1 vsb.v and vlb.v result in the same
+ * encoding as the standard vse8.v and vle8.v, compilers seem to optimize
+ * the call resulting in a different encoding and then using a value for
+ * the "mop" field that is not part of vector-0.7.1
+ * So encode specific variants for vstate_save and _restore.
+ */
+#define THEAD_VSB_V_V0T0		".long	0x02028027\n\t"
+#define THEAD_VSB_V_V8T0		".long	0x02028427\n\t"
+#define THEAD_VSB_V_V16T0		".long	0x02028827\n\t"
+#define THEAD_VSB_V_V24T0		".long	0x02028c27\n\t"
+#define THEAD_VLB_V_V0T0		".long	0x012028007\n\t"
+#define THEAD_VLB_V_V8T0		".long	0x012028407\n\t"
+#define THEAD_VLB_V_V16T0		".long	0x012028807\n\t"
+#define THEAD_VLB_V_V24T0		".long	0x012028c07\n\t"
+
 #endif

-- 
2.34.1


