Return-Path: <devicetree+bounces-130719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7589F0B43
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:35:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED59528356C
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAFE61E0DDC;
	Fri, 13 Dec 2024 11:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="TDHYwHqU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3B11E0B99
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734089608; cv=none; b=UxcGy+rUchhVAPdeTO33cSsOhFixDF920tFLPpHTfLxFvknBalPbNXpgH+E1/3JD3K9i97M6W6OoUWRCVhuMAvBg0/7m/ksr5QpbvSqxC/niTeyb6zc+3Lj0YHpI8uGWkpa3z0dqLSYBGTLxuQILxvCs/SuTFGDmj3VmuL/j3pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734089608; c=relaxed/simple;
	bh=dkJiuVnAYPALmPp61+7Ff1id1Mwaw6rbYo70OgRM4jg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mbVyiFqz632h1eY+2UFhCzlq/97NHrN6BBLKn8ru1Hz1hw6R1R7xN7aSaiIl+v2Iw8M+YscFuhBYR45gwUUwLZuWwpF0r/4OyZYLp1Gfui6FkyVHZ0YMQpnEClSO941Wov7OoXN1tQNlBiaKtj8Uepya7yRzb/YyP4opp2o4IZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=TDHYwHqU; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-21636268e43so21062055ad.2
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1734089605; x=1734694405; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NEtptHTU3kr3P35YLmk81GIPaJu3IDUx/dDsQSqkBrs=;
        b=TDHYwHqUVtmP5626+IALUU49ujdgxq0aGbdfhUfNtvLsu2ImX3hnOPD9Ryo62qX3ij
         vyMoERxBaHtIxZoUemp3F95bV0YWY3WUhZ5Fbz3616y4ijsln0eSZf7BLuoZsJ3Eyixo
         JAEwo8cJc+yVq82TCdb3MxTgS0j60AAxej2jftImBdyUjONsWFC320PCVjHVzaFX0rqy
         MJaxNgPuJBolPf682aJkIsMluWY1rcSVGsXAkapnwbgVrFYP3BQIHMJA7WdexFOFf8ql
         jAbmEUH0lBOwNeywtK/IfnM7L1nJXApVueD9Bu6z4C5GQfxnKTomlpQzSrrVdgLnzqcH
         mRcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734089605; x=1734694405;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NEtptHTU3kr3P35YLmk81GIPaJu3IDUx/dDsQSqkBrs=;
        b=nZy6JV/Zc8oLjQMPDej4HuZg8xhYJ0IAvjCDuQkYiuQ1DnrXg52BCLSpOOYc8gkAo6
         vsE7aJEG0uT2fY8XTROYN/K5HGn2qacrCb3TA7z3CB8A6GiUIU4F27ENn/sjYmZWVsee
         WZQKMRqlMut0rRU0W90R1CIn/NA5lBFEVsxNvJ6Jj9xyAioM3qTOIPNJBuBKZ/xW4K6+
         a/UyQgB6wc/r5Kxp3a4jE0L7YGALptwKxo2ZOd/fgDP1klhwBrs/sLLasumcxUkTxlV3
         uKJEOdogxaVJ4tL4IVcUgkqfRmKT42QaSuW0FiZyf/dJSHAfJGgSfh32jVu+vam9nS6H
         tuSw==
X-Forwarded-Encrypted: i=1; AJvYcCXaLkduPLSYY2FwHhzhTFhK4gSAlIUru7BKQrQ0SG6RcdUt0qQELqlTrngFg8hRc+g75apiqFWOaGYh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6+2/NNK4pyU+1yemD/+8gx7PmWQAzabT1SziMayVhgHzfXpmd
	b75U5tPaoWMeYT7cGWqf2DFPMEHDXs68tNn/nJUJCeKfRO6bsPOtoquXotUdYyA=
X-Gm-Gg: ASbGncvFdXY2OYZMQjHMqCrIr7p1LpSGXYxQdBnQ1FyPJ7D9P5n8/kNfPeYWnTRzln2
	/dVUHCtSdILfQEuGeA5sSU4Rx4NR508Ha4ivZpH04poDuAedwsYGnZa7CuptazHALkpv3bYdlNr
	Iu3wEl6jfIUYWNX3MnSxtMlpjW0Mz1MuFEaVkPuyfj9alth4+MuslMeTvnl5nONZ7euwvgbqYIG
	PjsrFyPJ8MBks1hfFIL1cGTsXEwuVQETT0UpWJyphkS/frpvbLUe3w=
X-Google-Smtp-Source: AGHT+IGqLFD7+ohjLCw5KHfPU8C+4COV+XiGB8UR/WxQfVhsIQvvpPgvT8BLHFS9OjcnFJAe1uWA+w==
X-Received: by 2002:a17:903:191:b0:212:55c0:7e80 with SMTP id d9443c01a7336-218929b9b15mr27260825ad.20.1734089605533;
        Fri, 13 Dec 2024 03:33:25 -0800 (PST)
Received: from [127.0.1.1] ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21631bd2c2dsm103327125ad.263.2024.12.13.03.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 03:33:25 -0800 (PST)
From: Max Hsu <max.hsu@sifive.com>
Date: Fri, 13 Dec 2024 19:33:09 +0800
Subject: [PATCH RFC v4 3/3] riscv: KVM: Add Svukte extension support for
 Guest/VM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dev-maxh-svukte-v4-v4-3-92762c67f743@sifive.com>
References: <20241213-dev-maxh-svukte-v4-v4-0-92762c67f743@sifive.com>
In-Reply-To: <20241213-dev-maxh-svukte-v4-v4-0-92762c67f743@sifive.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>
Cc: Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kvm@vger.kernel.org, 
 kvm-riscv@lists.infradead.org, Max Hsu <max.hsu@sifive.com>, 
 Samuel Holland <samuel.holland@sifive.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1889; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=dkJiuVnAYPALmPp61+7Ff1id1Mwaw6rbYo70OgRM4jg=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBnXBt3hKCUiKWCXnJ+7Ph45oRx31ZpZbzWBP7Ga
 j9uhhsDjAiJAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCZ1wbdwAKCRDSA/2dB3lA
 vewBDACLJG8wmLy2oyopVjS0Gh86DuPlouo7WZyKUbQtzArWQ+Ar+yE2dNY2VOstAKk6TnsyA9e
 V9qsd8G9KerwiJMf1Zfq1DM6cw/JsErLXMQ5aFnKT0UcbnFK6g2vx0VsF4yRF5T7xhXHJfOZ7Yh
 gMIRyvjrb7G+98hgjec4LDP4snG4/wDt+DDc2hXR096zGtsmpNUSBTC3GWz2YZGUyVs4buSoHaI
 OQ6dViZ4g/If+kSyd9w+i8ivWppTY8O3Chuermdf1DUAj7cBLDHnRiDTxWY7odfEt3F/FuTavRU
 VDp1vrJt4MJErbMJ5Z0v+cbh0Rw7Dv+QxGR5ozvJTxs4g6eRQl3T8CPRkW5e7mezG4Jly5XE5bQ
 FPiATWmhpzvKkqJWIaPUKMyIDsik7dapDN5adPUKa8HPpCwJtVS7Au09SAGzfPIiUiph74LCF/L
 Py+0lp5CJ9El/UnUBZBQZLr5wR3ZJSNsF9uVdYEuWeTuD9hT8dDXWcpsD9SdQB3UFYIWw=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD

Add KVM_RISCV_ISA_EXT_SVUKTE for VMM to detect the enablement
for the Svukte extension on Guest/VM.

Since the Guest OS may utilize the Svukte extension simply by setting
the senvcfg.UKTE without any trap to host. In the view of VMM, the
Svukte extension should be always presented. Therefore adding an
extra entry kvm_riscv_vcpu_isa_disable_allowed().

Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu_onereg.c      | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 3482c9a73d1b644385182436192914f34b50b997..57b3abfbbabd967721f140b65f58f002e770eb6a 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -179,6 +179,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_SSNPM,
 	KVM_RISCV_ISA_EXT_SVADE,
 	KVM_RISCV_ISA_EXT_SVADU,
+	KVM_RISCV_ISA_EXT_SVUKTE,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index 753f66c8b70a72e76210075b4e07849741f614d4..50fbbe5bade6af83977bac6d381688fea80e7945 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -46,6 +46,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(SVINVAL),
 	KVM_ISA_EXT_ARR(SVNAPOT),
 	KVM_ISA_EXT_ARR(SVPBMT),
+	KVM_ISA_EXT_ARR(SVUKTE),
 	KVM_ISA_EXT_ARR(ZACAS),
 	KVM_ISA_EXT_ARR(ZAWRS),
 	KVM_ISA_EXT_ARR(ZBA),
@@ -145,6 +146,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_SSTC:
 	case KVM_RISCV_ISA_EXT_SVINVAL:
 	case KVM_RISCV_ISA_EXT_SVNAPOT:
+	case KVM_RISCV_ISA_EXT_SVUKTE:
 	case KVM_RISCV_ISA_EXT_ZACAS:
 	case KVM_RISCV_ISA_EXT_ZAWRS:
 	case KVM_RISCV_ISA_EXT_ZBA:

-- 
2.43.2


