Return-Path: <devicetree+bounces-168440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0652AA93196
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:36:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D2CE1B64F67
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 05:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23D0226A0F9;
	Fri, 18 Apr 2025 05:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="TTCkN2+q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9A326A0B7
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 05:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744954483; cv=none; b=S86rQpH8LAncdBsklivOvFztvqwmyouivEsyariPr1Ci1SD4OAeBd7yaKtL05aWef4sqJaVOA5uyuLGocwQbB9Mi9/QmSoxk1vHRlI49Q4B68ASJCaBB8ghK+AkHGikZgxqU3p/Yv4HM1Fv6FNYRXIPDWBxYgx43fIKxncJYxuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744954483; c=relaxed/simple;
	bh=0tp3DYKfV6TqzzMeGOt7zRglW3WoNctrJHskr09ur0Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hnf8zMpSy5s0UELexV7w7k2Kspy7VX0qjTy9PZfUl6rmHqM8LIH6PnQyZynuqFMtrlMwIB39BLb/GGBeUSLVaDJEyVV6jRjrF8GvWOmoV3bxCU8TKtbogs5r5bkn8uo1nk1dAvff94oELVSIq4thJQ3v+o7HnigD9nRX7diCYPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=TTCkN2+q; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-73bb647eb23so1370397b3a.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 22:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1744954480; x=1745559280; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3B9Pw4FCv6SInWNpKovsdWyAhm6Z0HhbS+dPaBZ5QxM=;
        b=TTCkN2+qhT7x1W+mPkOAGeGGkyZN2KOLta1ynP1PcJEIp/NCpfUATIYkvPf1u1fAYs
         DclWXgikXTl0riWpASNBH4UUrBsm2y5iAbwbNavHRY7VTNT6dvk1jMHRy7D/8E9uNRdR
         0UcwUX3W9MdrfZMBBNLYvB3ZTH/qRONEdTKuwT7O2jtvP8Vz/2pw2EOedyimTEz3MeDK
         mlEPRV5EHkppnPnDhdgt2KjHAYLMgmO9trIHT2FzLXqu+1o++iSNS9ItTsYM738jFRtT
         cPtT/z/D1Z/QdtILfhIemaeReQkLC5ttpnjLcV4U+ko8/mSQUFaVJDF3Uj2PCcKJjeBp
         g/ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744954480; x=1745559280;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3B9Pw4FCv6SInWNpKovsdWyAhm6Z0HhbS+dPaBZ5QxM=;
        b=KrQxq6yARZcY2Xt1D5+krOVxTcrPXjqYCI3MGaFY5PuOYhcWcKdQH5wvhUBrCIhq8A
         iVkvl1ky6E+zgYP9JcVxY24cwCD/luHMeTuXS51MoDZhtkEB0sA9SyTemlwulmjkV4J3
         CGPVeGQFOrQEzjQ6PLTNxRYgg70CMThxrYJKnc6WNOuTOoctgdVl94LV/e5QcwHEoIkb
         Z0QjTyJOOR2vvbtLdtaMLsu+8qsfi21zjO2hyvDV8u702EIvZ8JoHrIsn9DB4tu856+6
         +TUlRMVG7zqiicIm/DuCfUBbJgP4MvHnQ99rwJAjDqdAkOfiPC0BrZ3wFc72NjoxN7vj
         H41w==
X-Forwarded-Encrypted: i=1; AJvYcCXcaXXhc+4CPocTeWZSJ2NvtOLW6pXKV27e7mYQcn8bUsP5b7H/7tDfiYQ24DDNRxvg7M1n35VOwyG/@vger.kernel.org
X-Gm-Message-State: AOJu0YxPeLkqWWCpg/RGbIuwlVdRcHbI/RxlSrxtAceZxGaO0K+5+eOS
	NRcgun6gJ7oICbiCbLCgwjSB3L1ukTS/mYgCdhm7+nhScW14t1lvrwWoV9whX3k=
X-Gm-Gg: ASbGncuvBaSW9D42BY1wQMEX2bbjPXKEPjuK40ChljtUpZnCzFN4/XcSLe17iSoFeGE
	NfgnEiUXBuTFDSNMVNjU0d699ui02YXpWxCs4rWlGOSyrsv6wBJ5efyoGy5XrjX3brfsamm/j5V
	VUaoswlkaE7B6QTViBko9+lA+I26ewLPpaPfOQNiFxvi/RVJTF7aq4O4P6NKX4+A8vrtobhblAD
	D/YIgYIaTWhbW18gMkxCTu2zPsfd9QEAdSf1nguKk/aFJIiPse5xTzJVYOxAYvfkWNurbWGtwMY
	pL/lZpJNINyhXKv/H9ExapDQVM82gUuA0bNYFuw5q5r1u92A3K0omClacKjBzEwM9J8VgLcRNZp
	5
X-Google-Smtp-Source: AGHT+IEuEbIHe/qe/mKunQ55/N9j2n9eXoEPrfFel1LpRV6cO2jrZzwdtlvPw0EFjDejmF7X3JD9pQ==
X-Received: by 2002:a05:6a00:114d:b0:736:3c2f:acdd with SMTP id d2e1a72fcca58-73dc14c80b5mr1878741b3a.14.1744954479883;
        Thu, 17 Apr 2025 22:34:39 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfaed86csm834555b3a.180.2025.04.17.22.34.37
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 17 Apr 2025 22:34:39 -0700 (PDT)
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
Subject: [PATCH 10/12] riscv: Add SiFive xsfvfwmaccqqq vendor extension
Date: Fri, 18 Apr 2025 13:32:37 +0800
Message-Id: <20250418053239.4351-11-cyan.yang@sifive.com>
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

Add SiFive vendor extension "xsfvfwmaccqqq" support to the kernel.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 arch/riscv/include/asm/vendor_extensions/sifive.h | 1 +
 arch/riscv/kernel/vendor_extensions/sifive.c      | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/vendor_extensions/sifive.h b/arch/riscv/include/asm/vendor_extensions/sifive.h
index 2d05e3e73170..ac00e500361c 100644
--- a/arch/riscv/include/asm/vendor_extensions/sifive.h
+++ b/arch/riscv/include/asm/vendor_extensions/sifive.h
@@ -9,6 +9,7 @@
 #define RISCV_ISA_VENDOR_EXT_XSFVQMACCDOD		0
 #define RISCV_ISA_VENDOR_EXT_XSFVQMACCQOQ		1
 #define RISCV_ISA_VENDOR_EXT_XSFVFNRCLIPXFQF		2
+#define RISCV_ISA_VENDOR_EXT_XSFVFWMACCQQQ		3
 
 extern struct riscv_isa_vendor_ext_data_list riscv_isa_vendor_ext_list_sifive;
 
diff --git a/arch/riscv/kernel/vendor_extensions/sifive.c b/arch/riscv/kernel/vendor_extensions/sifive.c
index 077315e5b2d7..1411337dc1e6 100644
--- a/arch/riscv/kernel/vendor_extensions/sifive.c
+++ b/arch/riscv/kernel/vendor_extensions/sifive.c
@@ -10,6 +10,7 @@
 /* All SiFive vendor extensions supported in Linux */
 const struct riscv_isa_ext_data riscv_isa_vendor_ext_sifive[] = {
 	__RISCV_ISA_EXT_DATA(xsfvfnrclipxfqf, RISCV_ISA_VENDOR_EXT_XSFVFNRCLIPXFQF),
+	__RISCV_ISA_EXT_DATA(xsfvfwmaccqqq, RISCV_ISA_VENDOR_EXT_XSFVFWMACCQQQ),
 	__RISCV_ISA_EXT_DATA(xsfvqmaccdod, RISCV_ISA_VENDOR_EXT_XSFVQMACCDOD),
 	__RISCV_ISA_EXT_DATA(xsfvqmaccqoq, RISCV_ISA_VENDOR_EXT_XSFVQMACCQOQ),
 };
-- 
2.39.5 (Apple Git-154)


