Return-Path: <devicetree+bounces-66075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2618C12B2
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 18:27:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4625CB2207F
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 16:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F42B170828;
	Thu,  9 May 2024 16:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="En9K9tMx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F049116F911
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 16:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715272048; cv=none; b=nAhNjttG8yuycUBYT9ntuy4NyhHciRhxM/2cHp4paCm3QLhLF8k4+gnUVeagegIXc7ylCzG68mw9uBtjo7jncqddBuqSnqGCz4zAGirHxCgV3pC1InTwr+4nHmAJm5h4yNXFTC9AopTZkytFBrYWbexSOeK87h41Qr76aQMkv1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715272048; c=relaxed/simple;
	bh=txdYUVokTSzAJWgps5DIN7AP0OOCMWGT5bqowv6DVAA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OHw0lbOPHxvV8UIi4+TVpWuqu0rCUDTfX3ePEI8ArUNzT+8O7kFaiHVAqL/0NfN2BCOOO2MfCXNCXq3UM/yguB/1W6N4YdoDqtI+xRZvZJyR0P1bgaw3p/X3kDf9AI+0AIELZoraBb5SR4d2ZIWiHw1Ky0ZGS8nUP2EQPmMvJiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=En9K9tMx; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1ee38966529so15744145ad.1
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 09:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1715272046; x=1715876846; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F/faDAFpSR0nEREgruz48ieW2Rr4UgJ9rT3PHGQFx6A=;
        b=En9K9tMxV+BgA5qJDmFpFJMxYnWGmi242mUodDISytkRNITJhg/nH9oEsEDmlWsZer
         OV8/bEj3mJ6PFHe1ZjSwa6Nh+g4lVmm+iOy5LYOUpTRPoX+y4cPfcSLCV+6hTewRVcYV
         tkQNEdk0bOZEZKPLZ/AHpBXIBvNjybM71JouBhaRrAO4Ht2Fgv/O1FX0bW9uHpNLWQsW
         AjsVIZuJ7wg/jgKdxMI8euB+Cl9680NYOu8Q1mT5/k/rVLh4lcYGHf7NrcBxoX6JTpw/
         /5Pyvz917i9S/MuZIbqZHVfZSeMIEeDzxAGpT83zeI9EM9uBM3+8Pze//UstNaeVEXEQ
         i/ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715272046; x=1715876846;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F/faDAFpSR0nEREgruz48ieW2Rr4UgJ9rT3PHGQFx6A=;
        b=azqS877ny9EnbiRIYhuGZ+mE+LXeOGuC1fDcCogCPHWWEwntcDjsCF6SxAgRdgZDH+
         wiu/vlra9k9sQAWJ/HEksmgSWb8IIUpoxjJ/1UBpBmUiAWOb+gEr5hvL5nvfDBbbFJDq
         CPuvZthFQr0En5BkfOFGoC1eC9syCktsAuthqWXJzb0MMlylL6+11rZgXz+hl2G3Boam
         yQHvuPQXnzJadGS2aJ4KEPyi5jDp3l5liWOQcQ/d8fEpGsBQ8yaC0tCqcb6J1cIYbvkt
         d76X8kMccIYDHIEYUK7lweO9AOINLiV8kXUHjsH3EdRm9Ax5HcCwQdg7zOzMVPJWYgw2
         BHvw==
X-Forwarded-Encrypted: i=1; AJvYcCUZqhKNO7HECQKSG2unpJ9HBwsd6r2FeAT0Id6OuOfyd/jw4Njs3UH3JCtxbkPK45AOdPKxkjfv0Hil/mJVrNnUX8H53Oe2xGIg8A==
X-Gm-Message-State: AOJu0YwRwqGta5x5V+SH1Fk1rBtKOB2EkeaTGoSj+1lY3Q86kFYdToda
	BFdoa49prSZVyU29++FilZ0IhCFWkBQc4CURFo3GbOvaLC6rZDZkRa+IHk0Xdf0=
X-Google-Smtp-Source: AGHT+IHRJN0hklVkmHeffKwUUkj9zkJwCxFOEPyg5vihbQBuEXUImJTw4YLdpfC/uaaO6wRigNHbew==
X-Received: by 2002:a17:902:e74f:b0:1eb:7162:82c7 with SMTP id d9443c01a7336-1ef42f74f9amr2694775ad.18.1715272046337;
        Thu, 09 May 2024 09:27:26 -0700 (PDT)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0c13805asm16210285ad.264.2024.05.09.09.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 09:27:26 -0700 (PDT)
From: Andy Chiu <andy.chiu@sifive.com>
Date: Fri, 10 May 2024 00:26:51 +0800
Subject: [PATCH v5 1/8] riscv: vector: add a comment when calling
 riscv_setup_vsize()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-zve-detection-v5-1-0711bdd26c12@sifive.com>
References: <20240510-zve-detection-v5-0-0711bdd26c12@sifive.com>
In-Reply-To: <20240510-zve-detection-v5-0-0711bdd26c12@sifive.com>
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

The function would fail when it detects the calling hart's vlen doesn't
match the first one's. The boot hart is the first hart calling this
function during riscv_fill_hwcap, so it is impossible to fail here. Add
a comment about this behavior.

Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
Changelog v2, v5:
 - update the comment (Conor)
---
 arch/riscv/kernel/cpufeature.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 3ed2359eae35..15ffda1968d8 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -683,6 +683,9 @@ void __init riscv_fill_hwcap(void)
 	}
 
 	if (elf_hwcap & COMPAT_HWCAP_ISA_V) {
+		/*
+		 * This cannot fail when called on the boot hart
+		 */
 		riscv_v_setup_vsize();
 		/*
 		 * ISA string in device tree might have 'v' flag, but

-- 
2.44.0.rc2


