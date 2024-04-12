Return-Path: <devicetree+bounces-58559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CC98D8A2717
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 08:51:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09EC01C20F8F
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 06:51:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEC4F502BF;
	Fri, 12 Apr 2024 06:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="BQdy6Cxc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D70502B8
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 06:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712904573; cv=none; b=Vrj88dw1kRcFARMkx72/63rxgESIJcQPZtH+2Gi7ciUx/fh2gBf5n7cP4btgEUtObu6riNmKuJI3d2JoB5m8oerF8zLbFHjtC2uu5wuLzXzYxPlwBwnWB8cQEbhzKorUsKEzhmcCfacoaJvOi6RJlwFnRSVsqv+cvI5huNm8/KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712904573; c=relaxed/simple;
	bh=O/tf7LqN9I0xvPtSVjvgsPdvsJYOqfEPTwX0jfvGFJw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ta8lRwL2wDF9/KtiT+cmVo2OrEwlroZTofilAvazfrNrA2Cf5Jf5c5uUSon0hKGbtzGbzsGfth+mo63X/uXILab3JSe2eNEXb0TZ+NGYXgGpiozJ9GwpRObmyHr9uh+IJAI2tNIJNNL7zS49c11ITJGxT8DMjXn8e6PIq7cPdzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=BQdy6Cxc; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1e504f58230so5351255ad.2
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 23:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1712904572; x=1713509372; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R0+TwQ5GqFH8aHlUKPdqP3mrZz0YybL9qzmJdYvs5ws=;
        b=BQdy6CxcW/R2rq/hF0Tj7MetcE8uJ6zgWDArBrq8CCKWwzl5y2ZQhwdrKB/hsyvBct
         /1wKJJ2SLgp+xJm/JTnUnTYvWmKBS+RaC5PFX+mOSUO2015JcQqXcUcIT8U136t9XTjm
         eV/elwRO8LTgc35Hf4dWNSo5LDVSkpElltEFBD18EXuwaWkr7yQWLuc3IX1qMl504ixS
         VMNj2hLvRtE5aPsScZ1kZYejynVpod5b7oM8WUgFKAbCIpGQgMRen7R5YGnklVVsujQq
         MAMoA4Ds9qszWM5iKfwUIXIXDt1nw60YwwNBNlEesD69KQHw71ca3qIdCs48eYJMLgWh
         Nvww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712904572; x=1713509372;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0+TwQ5GqFH8aHlUKPdqP3mrZz0YybL9qzmJdYvs5ws=;
        b=okmTnQ6f+2qxSjfsvzCssRYLb0rovYZKyT1caJWqBJAQNkh4e63bFAPmDnK7Zb6zRR
         iYVFpluCpp97Zw1bwPpsiWoNSkETuDPIhq3vRRLg9eSep2uyyXAHNSR2zXTOhAq5pkjI
         27mAiaUSudS+iFJOTzKrofRzreQWim7VtcxbMP5sBzD/i949wf7MjESYtVi+PWzmR/pn
         n85H+DxmyAN2zuk6s8XH8dUHJhgCq8pFZCHotWNJDUVilWRZUJL+XJF3st0uPj/Jlb/O
         u+peSx2okgwfJtaHZFVFNQP/2hgwsm2Xqmpf/B5000jMLprJtiXkpgckqXaCSwPw3IGg
         tWuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlIjfLXMSUtNzo+BJfQLoBQ6Q9uI4z9uYboZ1TK/L3PVxSICj+ihRObcUGlREPEi3zIU/oIPKAtscuiXDHW7RZbQTRE+SO736m5g==
X-Gm-Message-State: AOJu0Yy1h37iQFVlEGruWFgLeb0oUPBGmk+PHUrehWJd6MQdG2DvazlQ
	xV+Khya2JI7DlxI+GxTVNsp07u/IHdiccfX0SWyjS5g/EVatb2gSVvWcsaercOg=
X-Google-Smtp-Source: AGHT+IEyMJ5oVk6CfLCQcJcfX/ZIjOVHG1NEnrkJlbePak6mm9DdqGhN0zRdg6Q82lhK4umpLFADiw==
X-Received: by 2002:a17:902:ce92:b0:1e2:4c85:82ea with SMTP id f18-20020a170902ce9200b001e24c8582eamr2036574plg.24.1712904571996;
        Thu, 11 Apr 2024 23:49:31 -0700 (PDT)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id q8-20020a170902b10800b001e107222eb5sm2258818plr.191.2024.04.11.23.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Apr 2024 23:49:31 -0700 (PDT)
From: Andy Chiu <andy.chiu@sifive.com>
Date: Fri, 12 Apr 2024 14:49:04 +0800
Subject: [PATCH v4 8/9] hwprobe: fix integer promotion in RISCV_HWPROBE_EXT
 macro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240412-zve-detection-v4-8-e0c45bb6b253@sifive.com>
References: <20240412-zve-detection-v4-0-e0c45bb6b253@sifive.com>
In-Reply-To: <20240412-zve-detection-v4-0-e0c45bb6b253@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor.dooley@microchip.com>, Heiko Stuebner <heiko@sntech.de>, 
 Andy Chiu <andy.chiu@sifive.com>, Guo Ren <guoren@kernel.org>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Jonathan Corbet <corbet@lwn.net>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Palmer Dabbelt <palmer@rivosinc.com>, 
 Vincent Chen <vincent.chen@sifive.com>, 
 Greentime Hu <greentime.hu@sifive.com>, devicetree@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailer: b4 0.13-dev-a684c

(1 << 31) is a signed negative integer, and it was sign-extended when
being or'ed into the "missing" variable. This casues hwprobe not
reflecing extensions named after RISCV_HWPROBE_EXT_ZVFHMIN. Fix it by
defining it as a unsigend long long.

Fixes: 5dadda5e6a59 ("riscv: hwprobe: export Zvfh[min] ISA extensions")
Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
---
Changelog v4:
 - new patch since v4
---
 arch/riscv/include/uapi/asm/hwprobe.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index b9a0876e969f..dfa7bdbcce92 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -54,7 +54,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZFHMIN	(1 << 28)
 #define		RISCV_HWPROBE_EXT_ZIHINTNTL	(1 << 29)
 #define		RISCV_HWPROBE_EXT_ZVFH		(1 << 30)
-#define		RISCV_HWPROBE_EXT_ZVFHMIN	(1 << 31)
+#define		RISCV_HWPROBE_EXT_ZVFHMIN	(1ULL << 31)
 #define		RISCV_HWPROBE_EXT_ZFA		(1ULL << 32)
 #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
 #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)

-- 
2.44.0.rc2


