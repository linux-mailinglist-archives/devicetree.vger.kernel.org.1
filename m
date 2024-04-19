Return-Path: <devicetree+bounces-60926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3598AAFC8
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:53:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6AF66B251DE
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 13:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1BA12C817;
	Fri, 19 Apr 2024 13:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Sw7pYEe5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03020200D3
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 13:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713534812; cv=none; b=ofNThabj41X4lIMfQWMOsqU7USx50ZP7e/Wz8evdSoeZFVuvca2pS/KJY0d6qeLYEPcYwJDYlCSEFA38vcEV0gp9Y+9MYalOH0F18ctBDby6uKe+Qasj94hzCn8adQ8X2ZIQjze+ROMm53cY1yiNYrhvwblEjuf27eUomBtfdNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713534812; c=relaxed/simple;
	bh=ontq4m39cUfk19pc+PXXxfKI40lpAbS18dYQoPOyuLc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-type; b=TR2WRYe9CUmnmvn7IDOfAh71NfWkVvJ+HKHkantDeBQmAESFdOQQNKmuufb7q2PtTqXXzY1KwQLOI7FgbBHf05qj/VkVkV3fC1o8WfQDqpQ7dDoml9IdPYBYteBmUX8HP4OQJpfE7zujnNALAI8XRGx1y12Dj9CPhEP5v6+BP6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Sw7pYEe5; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-563cb3ba9daso1851928a12.3
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 06:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713534809; x=1714139609; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H50p08qn7uGf4Z9JFkdHi+jkfC6EZzcHo7CUifdDw3E=;
        b=Sw7pYEe5036PJpOa/TAJSFyqEbNSQ4lLm+PkkzKQRThuz3QQAoUWZjl62iFpGBQVf0
         hz9+YSlolHoA3CG9ivK1KZ1EhHCDZM73GCIzf0mXGbrGtP6wnXoKa9kXXn0hz0nRRxM1
         GiZNivJz1wdBenfwRJz2/z9F4eFJcl7f0YO2bBnPZwA5r8nV7Mf8qYa1N3jrvCKFRoNu
         QQeCTFvhVs/K2R2xkWugYpM8sgKPRpu8XyDSwR5iGKfJT3K1s/ZQqNHVBVPub3E8ellL
         ng8PUcg9hCNhSXZP7fWheb0Eqa0BN9/iIN+/RcRzTL7CDmYwtqCy0M0rSryeGQlro+3v
         IPwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713534809; x=1714139609;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H50p08qn7uGf4Z9JFkdHi+jkfC6EZzcHo7CUifdDw3E=;
        b=kTH6yN6/f4lNekW5CBtupywCcCzDSTYf7hpzwFqDwZdWbp6pA7WaK51BBz5H5GxxWX
         ln1dOQXU35EeNjT6sAWELP4yKZScwIxxBnmXCHbjUdNR5mAaqllwr8tTdTXZdKHSpEMM
         /uo8qsRQdhEX9zirtt+RUqNoRL5eiM6qwrws/DXj9JC8lIrrhBupOZkFw3Mlso6WGu5l
         kk38LVdPQQ2IP9v5rE4OWoeC6EWcDJpyEigRbshXd4B6RNC0mYdfjbeGGsVmZAb6eMtS
         1usSI0wToHXWU7WWqpU9o/xKbwC/4HFDrUwrSOVQfmHEUuiOxC2jW4rdBTfH3gT7C10i
         iymg==
X-Forwarded-Encrypted: i=1; AJvYcCVjxUDCATRcGWAntT3uUip9s9Dtt/oBZ5YEbsshgiaci0ID6/CsxuVy/UztqoBRq/RnxIuqOKhoIq9j7/wEI6qVbWR9M/lPNWpB9w==
X-Gm-Message-State: AOJu0YxX0Chpna1ODJl1tEsCyNarv7+UR5rZhwNGCLk9kTJGm5QstuoX
	6G14Dvd8SlUsVtcucRS8W6GWAfh6lEVDbFu+m609hLGzhcz8Itn5L4SeGF0EeSs=
X-Google-Smtp-Source: AGHT+IGwM9ZfHrsnh6F6OY6TFGNn1gRJmjysMnGuYPZucZ7dMPAwOGkgddkO6TWYVH8+aMZLSHBk/A==
X-Received: by 2002:a17:906:3645:b0:a55:75f7:435c with SMTP id r5-20020a170906364500b00a5575f7435cmr2058940ejb.16.1713534809405;
        Fri, 19 Apr 2024 06:53:29 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id q21-20020a170906771500b00a51d408d446sm2245772ejm.26.2024.04.19.06.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 06:53:28 -0700 (PDT)
From: Andrew Jones <ajones@ventanamicro.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	conor.dooley@microchip.com,
	anup@brainfault.org,
	atishp@atishpatra.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	christoph.muellner@vrull.eu,
	heiko@sntech.de,
	charlie@rivosinc.com,
	David.Laight@ACULAB.COM,
	parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: [PATCH v2 4/6] riscv: hwprobe: export Zawrs ISA extension
Date: Fri, 19 Apr 2024 15:53:26 +0200
Message-ID: <20240419135321.70781-12-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240419135321.70781-8-ajones@ventanamicro.com>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit

Export Zawrs ISA extension through hwprobe.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 4 ++++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_hwprobe.c       | 1 +
 3 files changed, 6 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index b2bcc9eed9aa..e072ce8285d8 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -188,6 +188,10 @@ The following keys are defined:
        manual starting from commit 95cf1f9 ("Add changes requested by Ved
        during signoff")
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZAWRS`: The Zawrs extension is supported as
+       ratified in commit 98918c844281 ("Merge pull request #1217 from
+       riscv/zawrs") of riscv-isa-manual.
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 9f2a8e3ff204..a5fca3878a32 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -59,6 +59,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
 #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
 #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
+#define		RISCV_HWPROBE_EXT_ZAWRS		(1ULL << 36)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index 8cae41a502dd..b86e3531a45a 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -111,6 +111,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZTSO);
 		EXT_KEY(ZACAS);
 		EXT_KEY(ZICOND);
+		EXT_KEY(ZAWRS);
 
 		if (has_vector()) {
 			EXT_KEY(ZVBB);
-- 
2.44.0


