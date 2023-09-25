Return-Path: <devicetree+bounces-3180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5793C7AD958
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:40:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 73E221C203DC
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77CDB1BDCE;
	Mon, 25 Sep 2023 13:39:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBCC125D8
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:39:56 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA05A19C
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:39:53 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1c453379020so44253605ad.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695649193; x=1696253993; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aiGfuZzpdgt2mtsTil9OGkblf0k2xd+WLhVWfEwORCk=;
        b=Mtu8skHnKMZ1tDeS8xWQ+k9fraQqEy15mdC4zQ0Me5H0qxj7R501Jk2vzha461+grv
         ILXGp1b3QGaI6oEAngel0mv79laEExmctmmY9C6SJU3LSIk3MXv7PvBiGyucD49PFPyC
         eMUQBgN0XoYp1oAc4OfTsvNX7OLvvJ3DNPgRgy+2nZ7UG2/s3bsK21G8CMwZ32U2nkTC
         LkVs0KGwdibQFB/k6uFrPr8IHK9G3i32+SEkOcU1d5/a6l2XVW4YpkJTvvMMSIJM4aOT
         UpjPO9EhtROsZD7eaM21Xmsv88kmCYkVWRzrXvnowBo3XabRKldn/isyE/lIZ6fu6zFm
         3IuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695649193; x=1696253993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aiGfuZzpdgt2mtsTil9OGkblf0k2xd+WLhVWfEwORCk=;
        b=koxox2h1zw5a0YvD27TI+UFUsWteZl/ACS4YJMcLQovMm6PMz5SZDMeXQ9SFYb45SC
         IlO5CvYG/HOpp/IdeevZkLvcQe1PMksD2WXxyD9g/tq6nH7C8/dKFX4z28zeX7Tys3ju
         H+6nV8Ok42YauweOVjmdImSiGPM5ervyz8SzPwi0hpkbucbOAElK3C8b4l5I0U+ArSmo
         iOC4lVzGl9yRHgcE7gUb0yt5L8UKr9DGIHThxpb+BeAsjosePJVzw3ViapyroNPStazy
         kNavFfb9Gz6LceJkDR+J+AhSJsYgqpXAtA3bIpHvNTE6F6TpuHKHTfoXT3V05q60XAbB
         9HFA==
X-Gm-Message-State: AOJu0YzSQ6I9jSyflbPL8Joxb290lVtabjDZa5uNl7sCHK+N9PJTjMxX
	wJeT8LO4wl+GkDmidIpePsgfUQ==
X-Google-Smtp-Source: AGHT+IFAFl3LL8p0HXHNpJm36GoHz0drDmeIuMdA9JnKQikzt531c8bL68ncefHeUvtNOSQlgomJjg==
X-Received: by 2002:a17:903:24c:b0:1bf:6ad7:2286 with SMTP id j12-20020a170903024c00b001bf6ad72286mr6241708plh.43.1695649193249;
        Mon, 25 Sep 2023 06:39:53 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id p11-20020a170902eacb00b001c625d6ffccsm969433pld.129.2023.09.25.06.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 06:39:52 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
	Atish Patra <atishp@atishpatra.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shuah Khan <shuah@kernel.org>
Cc: Andrew Jones <ajones@ventanamicro.com>,
	Mayuresh Chitale <mchitale@ventanamicro.com>,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 6/9] RISC-V: KVM: Allow Zicond extension for Guest/VM
Date: Mon, 25 Sep 2023 19:08:56 +0530
Message-Id: <20230925133859.1735879-7-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230925133859.1735879-1-apatel@ventanamicro.com>
References: <20230925133859.1735879-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

We extend the KVM ISA extension ONE_REG interface to allow KVM
user space to detect and enable Zicond extension for Guest/VM.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu_onereg.c      | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index e030c12c7dfc..35ceb38a4eff 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -139,6 +139,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZIHPM,
 	KVM_RISCV_ISA_EXT_SMSTATEEN,
 	KVM_RISCV_ISA_EXT_XVENTANACONDOPS,
+	KVM_RISCV_ISA_EXT_ZICOND,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index 17a847a1114b..d3ca4969c985 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -47,6 +47,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZICBOM),
 	KVM_ISA_EXT_ARR(ZICBOZ),
 	KVM_ISA_EXT_ARR(ZICNTR),
+	KVM_ISA_EXT_ARR(ZICOND),
 	KVM_ISA_EXT_ARR(ZICSR),
 	KVM_ISA_EXT_ARR(ZIFENCEI),
 	KVM_ISA_EXT_ARR(ZIHINTPAUSE),
@@ -95,6 +96,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_ZBB:
 	case KVM_RISCV_ISA_EXT_ZBS:
 	case KVM_RISCV_ISA_EXT_ZICNTR:
+	case KVM_RISCV_ISA_EXT_ZICOND:
 	case KVM_RISCV_ISA_EXT_ZICSR:
 	case KVM_RISCV_ISA_EXT_ZIFENCEI:
 	case KVM_RISCV_ISA_EXT_ZIHINTPAUSE:
-- 
2.34.1


