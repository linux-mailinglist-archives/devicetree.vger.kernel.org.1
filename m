Return-Path: <devicetree+bounces-61157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A78C8ABE03
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 03:06:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8A834B20D7D
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 01:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 107144A21;
	Sun, 21 Apr 2024 01:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="oGccmBvY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9175711198
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 01:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713661500; cv=none; b=XAEydA4ZIY95e7Yn2JL/WACcsvC+f3pNU0y2gtWXEqp9jLeTKtxgA9sSFrS3yqUcN+21WznOP1wm2ByVG1tliS+j3X3IqmWpOBpZTWudF+ciqYahBn5dqpA8OEbtdG5qEk5YjlUU2OKCUZkZqd+iZHK/bKutxXcyzoNjptKjeKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713661500; c=relaxed/simple;
	bh=QiQI1i7vjXBhs46HZcfDGYtUbq5szs9hkhXvkNVDIxw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X7yUXtvEWQlsv2FqsXLrtKaJKbU1baeSzy2+vcnAfRCxjpJnxMIS8MnD5axwXxistVB+/xo0/ibXyCx4OZ5+9ujPxz5BwHKTkAYgDAUhXt/jj9EJo8brmsMpDOfDX+K8ecTqoXDCoyiGnG1mE7ntxrhjAOaIfrORLNOkGvjbhKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=oGccmBvY; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6ed2170d89fso2819105b3a.1
        for <devicetree@vger.kernel.org>; Sat, 20 Apr 2024 18:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713661497; x=1714266297; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yu9Am0unYXzuMc0qIjJPUdYEG2xZXFr099jsPQEasY0=;
        b=oGccmBvYajcLj/QmiK9SQgst1zVxPYLUJAQsQNkRlcZZJIul8UICE///c/FFFzQHT+
         3iX1sKSgime1oqwvYNoiayEj06ljrr0hP3nQvdWog2cypsKo0qD2SB4MBMnwnHerIP8S
         yenzo5pq+JBByPikyl0a8inSPAhxQjV0zPAK7yVQFHKOaeOsLyIIOuu1dxVSbkxZAKoI
         mp2iIM/+E0P49MF238ZKrXDnKSNnF9RBrdh1RSHMn8TmHZxOBnHd97McGoZ5d635ifbh
         PxJqybJtaIVV4llLUjuTmeDP0ZG5EL9bV6esvhA0SNLSlJ/aIJxOTEx2EpIg/e1pAUHB
         1VoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713661497; x=1714266297;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yu9Am0unYXzuMc0qIjJPUdYEG2xZXFr099jsPQEasY0=;
        b=ua1j2BKgTX6nlQkLHrNUfKrxgB9LzidJWFpUDt98NqgsNWkVaddcZARhWkuBRdsPbQ
         CMHCHUMctpKa9ck/Tj8knh++byKUwc169d/G6ZAfTPmMLBmx+UKBcD3Doky7CsybcjVL
         QluDjG+MhksdW3FP5iQEbZjckTVm2bilXXkQlkDXdfQ57Q5U2QYZJ9BZIhkyREBwfx6a
         o8ImJgOaEySWU9dFo7YG7P8jrD2g5xju4alvGf6cgkD+HoCZjxZvagdv9+0w85zLJnRj
         FuqRZDo5AnxbO+LJH0MTKai5+y8DOQgZs0yQj4czicylre0RSN2XrOzRHSlw5hiF32FU
         IGIA==
X-Forwarded-Encrypted: i=1; AJvYcCUxf9/O8FyTjvccClquEJEVX6pIq5OY9zNcdOUDF+S8rF/A9F247JcUO4l7Uhuz+U7cZyWhC4+7oSIVOlmPn2qWtqBrllKRIQGAyA==
X-Gm-Message-State: AOJu0YxwKwbl35AWT8IKGokaOvY3Tkb7FuyJoWl9HzjSV3yxDSWGLnnt
	bocUByOiPrivMzq+6RA9COo9+a/SnCXsxgFRH1cXQEJNaoXAP1tHHU93Wu1r9+0=
X-Google-Smtp-Source: AGHT+IFWaA66MVhFHzVqeH6ER04Jg35UlWbtwP1v2a6tYCwe6/lLPPzjlT26aXgRHK+BXdqOBFuWwQ==
X-Received: by 2002:a05:6a21:7884:b0:1ac:efd3:4d87 with SMTP id bf4-20020a056a21788400b001acefd34d87mr3420884pzc.19.1713661497028;
        Sat, 20 Apr 2024 18:04:57 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d6-20020a63d646000000b005dc8702f0a9sm5249627pgj.1.2024.04.20.18.04.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 18:04:56 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Sat, 20 Apr 2024 18:04:38 -0700
Subject: [PATCH v3 06/17] riscv: Fix extension subset checking
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240420-dev-charlie-support_thead_vector_6_9-v3-6-67cff4271d1d@rivosinc.com>
References: <20240420-dev-charlie-support_thead_vector_6_9-v3-0-67cff4271d1d@rivosinc.com>
In-Reply-To: <20240420-dev-charlie-support_thead_vector_6_9-v3-0-67cff4271d1d@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713661481; l=1065;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=QiQI1i7vjXBhs46HZcfDGYtUbq5szs9hkhXvkNVDIxw=;
 b=+3zc6q0i2BsAtbDQT7K3i0HV2YRODdQ7IkaZd+LvMW/ig/YqGy1avCBI4l0spwFxEKlLUSKKu
 xWM1me9URmJCN4CloLYVBR+5P4yAUklVAjXSfYEk8uxaiWkJDMFr8fd
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

This loop is supposed to check if ext->subset_ext_ids[j] is valid, rather
than if ext->subset_ext_ids[i] is valid, before setting the extension
id ext->subset_ext_ids[j] in isainfo->isa.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Fixes: 0d8295ed975b ("riscv: add ISA extension parsing for scalar crypto")
---
 arch/riscv/kernel/cpufeature.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 48874aac4871..b537731cadef 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -609,7 +609,7 @@ static int __init riscv_fill_hwcap_from_ext_list(unsigned long *isa2hwcap)
 
 			if (ext->subset_ext_size) {
 				for (int j = 0; j < ext->subset_ext_size; j++) {
-					if (riscv_isa_extension_check(ext->subset_ext_ids[i]))
+					if (riscv_isa_extension_check(ext->subset_ext_ids[j]))
 						set_bit(ext->subset_ext_ids[j], isainfo->isa);
 				}
 			}

-- 
2.44.0


