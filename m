Return-Path: <devicetree+bounces-19694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6747FBD6C
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 15:55:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5CF70B21FDD
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 14:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 953095C8EE;
	Tue, 28 Nov 2023 14:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="QUx7BnEG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38CC41FC4
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:55:06 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1cfb83211b9so25349645ad.3
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:55:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1701183305; x=1701788105; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dwaKI1lgANZQjTOA+BSUck4M/d+5iVp8xCEzRTmcPWo=;
        b=QUx7BnEGbwMAVcJxQNaNG9NsHM1hUy6COEnkx3pc6GUcocnzt+VJMbUhdPid+9psRm
         niBTGRsJrjrGRij3wQkIMoBufaJuR6SIlKB/uFgqRYaHbUOT4u1KWalMlzzV5yvFgj1Z
         LQmirJ8O81+QilLcAeJ2/erJT8hJBt/xgF1B+iNVQ+GYtx41YaOdQhkqfhTXNIlE78VZ
         joJFh02I0Y07RQtRLXmhZ+tBesBUORtQ54XMSsvsKLn27ONSqBBr0DhsZKN826UWbk51
         E4d76SxH1YCpQ/Wdn6efgR6kcQcCBw+5G+cdZV76cbwEcaM3AjW49QEDkvDIVpAM/B8h
         VJHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701183305; x=1701788105;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dwaKI1lgANZQjTOA+BSUck4M/d+5iVp8xCEzRTmcPWo=;
        b=RLT3qysqJkUVjufmvPJ4UiVHVNfpFzRi6kcYs03fy8ymyYDF1K2JfR0LAIAGA5b93B
         03MNbpauAAzf+xf6lpiaIotBfFr/pVj4WjVitgcw6nN2u5Z9wCOW2ep9vcbTTf12iXTW
         GR/bNWcR0Q3dMyKLLxhqv/gB+8K8Z+QKFdYiuaaXpiKeQF0X0/Qk/0bltU9d0g5nk9ID
         AQ9j5vaZLqm0FA5SawqHoLnyL/KuaGcfMrjd2vp9CXjjCu00PaegLXV7wsOAoeJw7juv
         Rs7F6NtMS9P1VmDy80XEYvfua4ecPzFshrQ5RXB6HvbZA9TT+3GvPfW88bXEoR4FDhRn
         4s7g==
X-Gm-Message-State: AOJu0Yxp3WMbMuJce8+2bAxJHVrd9xb/gybfCyaOvvEiv73eYmOwp5v2
	KdyQt0FyBzeHWjdcUEsYgXRmcg==
X-Google-Smtp-Source: AGHT+IFdL6lrc2rq3C3h5rQ26OCZchgBFYHtaZqvZgLoeRcXvlSFiVjZWOWYlj4SJdtu9QHCgheMng==
X-Received: by 2002:a17:902:db07:b0:1cf:c37f:7160 with SMTP id m7-20020a170902db0700b001cfc37f7160mr8891565plx.63.1701183305589;
        Tue, 28 Nov 2023 06:55:05 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id u11-20020a170902e80b00b001bf11cf2e21sm10281552plg.210.2023.11.28.06.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 06:55:05 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
	Atish Patra <atishp@atishpatra.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Shuah Khan <shuah@kernel.org>
Cc: Anup Patel <anup@brainfault.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH 11/15] KVM: riscv: selftests: Add Zihintntl extension to get-reg-list test
Date: Tue, 28 Nov 2023 20:23:53 +0530
Message-Id: <20231128145357.413321-12-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231128145357.413321-1-apatel@ventanamicro.com>
References: <20231128145357.413321-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The KVM RISC-V allows Zihintntl extension for Guest/VM so let us
add this extension to get-reg-list test.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 tools/testing/selftests/kvm/riscv/get-reg-list.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index 4af0f9a750e8..e1d43cc9da16 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -57,6 +57,7 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICOND:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICSR:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIFENCEI:
+	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIHINTNTL:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIHINTPAUSE:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIHPM:
 	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZKND:
@@ -397,6 +398,7 @@ static const char *isa_ext_id_to_str(const char *prefix, __u64 id)
 		KVM_ISA_EXT_ARR(ZICOND),
 		KVM_ISA_EXT_ARR(ZICSR),
 		KVM_ISA_EXT_ARR(ZIFENCEI),
+		KVM_ISA_EXT_ARR(ZIHINTNTL),
 		KVM_ISA_EXT_ARR(ZIHINTPAUSE),
 		KVM_ISA_EXT_ARR(ZIHPM),
 		KVM_ISA_EXT_ARR(ZKND),
@@ -798,6 +800,7 @@ KVM_ISA_EXT_SIMPLE_CONFIG(zicntr, ZICNTR);
 KVM_ISA_EXT_SIMPLE_CONFIG(zicond, ZICOND);
 KVM_ISA_EXT_SIMPLE_CONFIG(zicsr, ZICSR);
 KVM_ISA_EXT_SIMPLE_CONFIG(zifencei, ZIFENCEI);
+KVM_ISA_EXT_SIMPLE_CONFIG(zihintntl, ZIHINTNTL);
 KVM_ISA_EXT_SIMPLE_CONFIG(zihintpause, ZIHINTPAUSE);
 KVM_ISA_EXT_SIMPLE_CONFIG(zihpm, ZIHPM);
 KVM_ISA_EXT_SIMPLE_CONFIG(zknd, ZKND);
@@ -843,6 +846,7 @@ struct vcpu_reg_list *vcpu_configs[] = {
 	&config_zicond,
 	&config_zicsr,
 	&config_zifencei,
+	&config_zihintntl,
 	&config_zihintpause,
 	&config_zihpm,
 	&config_zknd,
-- 
2.34.1


