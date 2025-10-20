Return-Path: <devicetree+bounces-228579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 074C1BEF44B
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:26:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8142C3492B6
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 04:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C4122C15A9;
	Mon, 20 Oct 2025 04:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="XGPSyqSR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABDD2C0268
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760934347; cv=none; b=EBQ1DM6hiKqz6Y4jCBHgW3AlVsFv9iN2OJL++vc6+7gV3uP2Sr4uIPRjj/W/PmVSBN2ea3auSQqaOFH5N831YRugkknaI3WKatTBg6nXTcpf9a5DL+SFr0kw2tl8EwL3x7UD00FLX0SPNaxLH5bicBLNlnE3e1QAuWonwOlxtL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760934347; c=relaxed/simple;
	bh=B02ziWQmo5WsV+VWudXschLhIhlEAVaMv4vSaAYkoAo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t/i3URQN5Dz3ttOs6JvMAD3FxKDjGwLwfrCt/DMQCskg52PnpRMjoN/JTrZVeyatNDIKuoCamEsCpd0egj9zQRp6KHSAr1nZGGXX8oDKBzV6VIR7coyxLa+oK46eiQ18wFKfGau57PoK6eFjlfAKu0BXaeNHtXVy7RNNo7hA7Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=XGPSyqSR; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-290a3a4c7ecso42001955ad.0
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 21:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1760934345; x=1761539145; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nvb+N79+1rz+7OJYvNB/1WfSxRwqST+oSw7w/swSoZg=;
        b=XGPSyqSRnRhq5JmulstB1NXdKZIsaEyEk5/nwN1cBuSSDVPpH1LoGGVlnP8clTE/aE
         my4xciFeoPjbtJRO/3H1D6AXEgKk3pna5kfEOLDSaRVTprBYPj94nkdjxgWTPDkWI5/J
         fiCqGnJXalcvfT7223jn6dqZTs5nGGBHEp7di2alh48AR53v+J9ViKkdy9RNoSRSG+Mf
         Mz+g/E0pOUZpxEa6UJEAuHAGLEfSKHNy2zE1qthztfi+RF2fLhZi0cA9tfVL6k42+ymy
         tHQYcAHS8xUBZqlE63JTOV3ygUPL14ISJbRktfNbt8Ewpp7PGEHZ5XFDCR3jwd1f6lEg
         8BXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760934345; x=1761539145;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nvb+N79+1rz+7OJYvNB/1WfSxRwqST+oSw7w/swSoZg=;
        b=d3BZTeuHWLWarFvCaX4UWrTSsDUSf7hJ8zdxpIsumrs82ar77Syvv7u4CqoqEq1iFR
         vGdAVRUO3nZnSCI7mRFxEr/3WVVtOAB1YODAJPSAz0eOV0ZxvTrrARUYfG6R7YRuOP0E
         MbBvKaNZSWMXPyS2KHfMou7P8Y6rDeDIOY6cE85zgLwWTXTCGlU1XB6gtpckT3QoXafK
         rmesCHoiVxghZDRS7oEbrzj6IgvpBDChwpc/cgvtgyGhkrvfnTke3dcQnuvd3iH4lBir
         45b76ptaKxwO9HdhcOohsVzvpTZPP7OaQUTHJiscJl+jiMFXy9FFZdEsRrhUPDN5gXog
         fQZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWs+eiUKeZ1K+GbeYjpkSVLCndDVhx/pQzIMnzSv99A5JHZR3wX2k/1BrqiC3PTHROTV2kqXXNosQUP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5qBKnxstCN2KAhvUtylx2lYpajLn6/psYrWi60f0sAMx6LxQH
	yrcbTlufwHyMUpCRZ23l6QKfqckfETdp2vCROTszZAAP5xbNEqdEW7wb3ZemTW9TGII=
X-Gm-Gg: ASbGncvoPcbmKQy4eAEySpaLQVhuR12NTts97sm/Z90E9azJfNUZVHuyxAmncw6g75e
	ZyyEp4CN+Eu/sLPOzQWt/fG4jjeYY43OUOcNb+PWSarKYVyKI9B84B/jd5TsrHUjiQMFtirSiBI
	viRNEyyMGDjlLuZd3dnOJPbQb5POHHymNJteZBwddjcRtQG5U5+KGzx7yL07JK/D2p75ReiO+Fl
	fVO4wPB4boTRS7kFbjmUmxhhESEzab7++fVW9DQOU4dSrZ7c/Fxo/Wy5yzL672iuXUpXUonqqDZ
	bOIcw8Z6qDayuJWWz+FsHcsT7FJs8aHBo8Hk8Uh1gelbCZXL3xEitHc2Av0FXK2iwSvr0k2Bf2F
	x9B+7NN/ASIiWcXe8cEV1oN5EBOhtqYHmQw7JQVSiLrsS7kLDpdAft2RNeXzmUmFx1aT/GiaA0E
	zR1ECPWN161aBsgNq9VIh5T40zAtdeNIPfgka5GGePpqka9/Z2IGSFSu9Le8u3YbgljFFIiGNqO
	g==
X-Google-Smtp-Source: AGHT+IH0j6CDe697/Hu2JYLa69TXmwS2tLcGClfdWod/OVynSzlnBv0UTOF6Th9AWlAgJGMUHpIxww==
X-Received: by 2002:a17:903:3c24:b0:269:8f2d:5221 with SMTP id d9443c01a7336-290c9c89cd4mr136224525ad.9.1760934344799;
        Sun, 19 Oct 2025 21:25:44 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246ec20a4sm68319325ad.7.2025.10.19.21.25.36
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 19 Oct 2025 21:25:44 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	will@kernel.org,
	peterz@infradead.org,
	boqun.feng@gmail.com,
	mark.rutland@arm.com,
	anup@brainfault.org,
	atish.patra@linux.dev,
	pbonzini@redhat.com,
	shuah@kernel.org,
	parri.andrea@gmail.com,
	ajones@ventanamicro.com,
	brs@rivosinc.com,
	guoren@kernel.org
Cc: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	lukas.bulwahn@gmail.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH v4 09/10] RISC-V: KVM: Allow Zalasr extensions for Guest/VM
Date: Mon, 20 Oct 2025 12:24:56 +0800
Message-ID: <20251020042457.30915-5-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251020042457.30915-1-luxu.kernel@bytedance.com>
References: <20251020042457.30915-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Extend the KVM ISA extension ONE_REG interface to allow KVM user space
to detect and enable Zalasr extensions for Guest/VM.

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu_onereg.c      | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index ef27d4289da11..4fbc32ef888fa 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -185,6 +185,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZICCRSE,
 	KVM_RISCV_ISA_EXT_ZAAMO,
 	KVM_RISCV_ISA_EXT_ZALRSC,
+	KVM_RISCV_ISA_EXT_ZALASR,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index cce6a38ea54f2..6ae5f9859f25b 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -50,6 +50,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZAAMO),
 	KVM_ISA_EXT_ARR(ZABHA),
 	KVM_ISA_EXT_ARR(ZACAS),
+	KVM_ISA_EXT_ARR(ZALASR),
 	KVM_ISA_EXT_ARR(ZALRSC),
 	KVM_ISA_EXT_ARR(ZAWRS),
 	KVM_ISA_EXT_ARR(ZBA),
@@ -184,6 +185,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_ZAAMO:
 	case KVM_RISCV_ISA_EXT_ZABHA:
 	case KVM_RISCV_ISA_EXT_ZACAS:
+	case KVM_RISCV_ISA_EXT_ZALASR:
 	case KVM_RISCV_ISA_EXT_ZALRSC:
 	case KVM_RISCV_ISA_EXT_ZAWRS:
 	case KVM_RISCV_ISA_EXT_ZBA:
-- 
2.20.1


