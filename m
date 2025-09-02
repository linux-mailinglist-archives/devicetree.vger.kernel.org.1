Return-Path: <devicetree+bounces-211488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A09EAB3F3AC
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 06:25:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C0672045FC
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 04:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 727E92E0919;
	Tue,  2 Sep 2025 04:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="PWfUFMf+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA6132F761
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 04:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756787090; cv=none; b=kQ1xogHlR04IIwHTnlgeTZ8qvkdDA14mzunIcAXajYPHeyNvjoyaO7hg8jYfh1n3sok4yC14vmBADGQkrCs0ua3mvQANXMI3Ygu6O6BmHssq5GyfIS8nu5ooMIu5ZUsKGbEoz8Lt49DDzx3UgHw2XR4+rnOuVmxYja6RndkDVUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756787090; c=relaxed/simple;
	bh=AHBUSWC6NQwt5gipootBG6lu9YU2EyCEcBy5+RZx010=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EDUe9OcKUSrG5N9XAfGPKRFuJlqYzoeNh8GPOsh6nQ/RGxvSJqpkbbi+6sGeTDl+SaC3osoQAiotwpGRJfFKxW7FJv9Rx4y9jZIntanodeD5E0UlCeZ0OeVGXmvV0oWnmuZ940HHRNqgV5rQWzrx8IkES6x6GTxpsSWjsgP5gYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=PWfUFMf+; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-323267b98a4so4207673a91.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 21:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1756787088; x=1757391888; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L4l4TBk/LGXRpjovIOSrhrLfanQNTxjIirl6+Uo+sE8=;
        b=PWfUFMf+/96vX/Bp+WAl3sj5Xol4cbLG1I0IwapwdW7wh2laaHbtfp4v8hYmlQPBLP
         tW1Q8pXX/51Z/YE99wmgxDpiDEm8mvRRIdXgNHt5nPYUiI5/fHEqvGqM88Xr+0aoAAwt
         WDBsWhqnfrhauC5ZagKZmJmBlqgD3wmb6cpVRJqFioXMfxTh/qYkOAofQWkMR0XwIDRa
         Z3U3qyFUIBrKCn6f4xS1NItPoHd5agwKImLj9mkrDJibJWVNxXKhl6Gr9QUBR2Z6wH5c
         4Pbp9nokVgZgW0LaYRc423zuybMrQcFErltDEz62Mnts4VcjGFwCC0y9ToYDxJ6febod
         6ByQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756787088; x=1757391888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L4l4TBk/LGXRpjovIOSrhrLfanQNTxjIirl6+Uo+sE8=;
        b=WepZmu/cZ6chkkN5e9C1WDszKQBVgISlzjFWl9Jj4gNeeWLwBNsUmO5bhiqngQTPs7
         1Ow9jJXMFEzkvpbx4PjfVDajRzmOi2I8L4UQA40yUQlBvOR30qQjxIf3w7NokYypO10u
         GZYpI9d/VxLwNa6S2eUd6yb/HPXmfKmhthtMfe6G0/ybLq0hAsjGI1Aba/hcsNcc8+BD
         MOQ971N9p7mYYVM2OuOFgFvZg4dWmdY7x8leKLlHBW1kI5jcXju0KYD4EwiHKx1BwBCy
         nsECzJgUjmfWmppBWqEiT5mHtmhhjWn9wOBFD5Gi+rtYWpv3gjAQakgy1lVpQVK7/3mY
         NA+Q==
X-Gm-Message-State: AOJu0YyGBIN3F1CUIApGH+XYRNWWV85bp6gn6fwBpL75vW3cIQrbkbew
	zXvTBO8UdmchpvOUBAexTFIjOtdltyUvgpJgGIrdFhwwqvvK/eh39P6sIV104srwc1o=
X-Gm-Gg: ASbGnctYDACCnLv9OsaRo6KvW+WZzCbzkog9OYQglw7sYD3J6/F0U9HInjyRZW4uL/u
	B26dI9m2hpIEYoZhK5EDB534AFyhmN77ypPnDSEhlMNqbrYZawUSdcrDFs20oc1+FkmtU55u5sk
	aZYQZTDboB4cOUg3mJEb5UBIn8E8ORWfZ2FQEjmUI+VTuE0e8X3wWfPStH0OlWlQ6prkaPVtqyk
	phKNjHOX9+jYs0G33MW9/m85JTMVgnoy4XY5ggIdENaz7mqyFP3QtSgkd93QWSPe5+ZqckDGeET
	9N4jA0rZp4IWTf0NYIdNdk5tM1bWtWKiHhIHl1ANLZbeqhVGftaidqs1LWYMP6z99QeQyWbVZTl
	9uhUW4h6Ofc8xw0NbSzEjKaRqOujt9J6K4FI+joHR7ha+fs2Ssyr7mdqWIj7uSVbaOMbDzwErDA
	YyWYxUh/sj6zIuE/gsrwteAeIXbfAufDIB1CWSP1TERXZBmmHQbEJnew==
X-Google-Smtp-Source: AGHT+IF/UIFHSTUTfHrNH3bDDX+6KD5zm8JCKYYhXajmMDgvuIFurnNObTwTgyDtBVvv4P6nH93RqA==
X-Received: by 2002:a17:90b:3d48:b0:321:cf49:2c04 with SMTP id 98e67ed59e1d1-32815433803mr13646315a91.9.1756787088100;
        Mon, 01 Sep 2025 21:24:48 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.56])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-327e21d14a8sm12216706a91.2.2025.09.01.21.24.42
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 01 Sep 2025 21:24:47 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	ajones@ventanamicro.com,
	brs@rivosinc.com
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH v2 1/4] riscv: add ISA extension parsing for Zalasr
Date: Tue,  2 Sep 2025 12:24:29 +0800
Message-Id: <20250902042432.78960-2-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250902042432.78960-1-luxu.kernel@bytedance.com>
References: <20250902042432.78960-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add parsing for Zalasr ISA extension.

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index affd63e11b0a3..ae3852c4f2ca2 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -106,6 +106,7 @@
 #define RISCV_ISA_EXT_ZAAMO		97
 #define RISCV_ISA_EXT_ZALRSC		98
 #define RISCV_ISA_EXT_ZICBOP		99
+#define RISCV_ISA_EXT_ZALASR		100
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 743d53415572e..bf9d3d92bf372 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -472,6 +472,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zaamo, RISCV_ISA_EXT_ZAAMO),
 	__RISCV_ISA_EXT_DATA(zabha, RISCV_ISA_EXT_ZABHA),
 	__RISCV_ISA_EXT_DATA(zacas, RISCV_ISA_EXT_ZACAS),
+	__RISCV_ISA_EXT_DATA(zalasr, RISCV_ISA_EXT_ZALASR),
 	__RISCV_ISA_EXT_DATA(zalrsc, RISCV_ISA_EXT_ZALRSC),
 	__RISCV_ISA_EXT_DATA(zawrs, RISCV_ISA_EXT_ZAWRS),
 	__RISCV_ISA_EXT_DATA(zfa, RISCV_ISA_EXT_ZFA),
-- 
2.20.1


