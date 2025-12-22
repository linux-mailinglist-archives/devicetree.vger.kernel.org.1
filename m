Return-Path: <devicetree+bounces-248829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 49783CD615E
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:06:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 92E32300AFD4
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 529A52D7DC0;
	Mon, 22 Dec 2025 13:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="2iLBD3YG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B19C2D73BC
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766408786; cv=none; b=Gx0b3GmIb3v2aEzdDoF0lA1OR2Nc5+bIVwmnPE9tI1yWEQsebThtNwRL7MrPcuRCGYZweYt//jaeZKKit5qKymaONUAmCQIqLTFXMd81jDhoKpL/tnPXKRTf0hsGuzj2Fgoc//70H4Ct58qX5VAIPF4PsdeqwClfVOJnUiMFGFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766408786; c=relaxed/simple;
	bh=Rv8zqZlVb4ysvH1kGjBn1SvVInEk6LPP485yK/BDHLM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lTaiyqsqKmO5XJgPkW2ZAiHE76r104h/UbLy6dI70XaS8Jj1UM0QtrUweZ4pw7pzapHFnK/TeA5hPsRG0tF134pXJpxT0OBEoPSBIUjb9hUkMg7D4W2dezxiRethw4OGutdFWJYjxt6NAxRKMa6Fwx+vp39zIud9bOak5rMTbLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=2iLBD3YG; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-7f1243792f2so2692216b3a.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766408784; x=1767013584; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JXhlYUOgp3ayhnB6iDyUlWrJZ3/fHlXGidOq3n++KU0=;
        b=2iLBD3YGOsWaBGl4W3opisR1EB1eHVhXCp3t9uT/SbiSxMk1MO0BJd9kYHi8iDPL45
         b72q+iaL/ieIhEeSYU/I+lv6pPPX1KnCgvO+rU3R1cv/f86xdg9W77Ev5rKhdeTL2ZuM
         rxvTiuBVRNzf8CkEadalyv6ev14UmxjCA9Yu9xn7OC4yJ6A0jPQt39abSTqvoYC5xp67
         pOyvM6bDQJnws1x0h1c2foc3VSliVTA72sPufBlFCEJmgsY/uFQ2jGL3Vjc3qUnNpcVm
         RGCUavsSobQiUTwjtp10n7+5gIsaefY8Ud3d02LMwsz56wXx7vBeGk3hp2TVrEByhegm
         GdgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766408784; x=1767013584;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JXhlYUOgp3ayhnB6iDyUlWrJZ3/fHlXGidOq3n++KU0=;
        b=L1gVyLhssK1OvVw1shozwy7148NITIbzkHGrP9J7euUFG82RsZmKXkrt/6JHaJtkDH
         OWPTxiMqgOll7YTnLm1S5a5RqI1bNQvyteJdPItyDx85RKHT6l/Z92gQ2DKi4+9E+0Zk
         d0NcgfSDFpqZfkxN5hZQ2qWkjKblU4i+nForN6I9bQ0hT/1FYy0tcQ0wG7KVNgjnU5BV
         KOYQla2FucEInqrqqbLrpF7hcdCb9MfEPyhFcGLZNvDfD1vVQtSQEFYNAx95b+wAyMv/
         1VSo4sC2DhqifDvf3WgQmkAcyjQByuJWYUxIqDlP5vYXxgMdakoxk2paPF2ACaPpgwyo
         xg1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUFfMT/jrJsNAcJ6Pi9h3nEjWujcrQ/w8PHGV7ovlYKSlE0nLmVtBxOZPhM4x8MFh0l72K77Bq1Vpqw@vger.kernel.org
X-Gm-Message-State: AOJu0YzDbkkzM2vKzPgek/X0fx5ty//8f2RVmGhddACIaW/1rnMemRjf
	0YO9hV45up3X/tdeXbSdVzcGalKXIstDcf0txggS2YlakTbwljtxyUNz5H41wX9k2s4=
X-Gm-Gg: AY/fxX7Mb7GO1qZkmzOe8JbB6tfAw2spb2xu8t0tNdsmEUiN4AMKxlB09Z94DZhurCx
	S6EdyNLsWF5f92CaQNogR9dJaxKgs7qUynvM3x1JhT7v8YyTN89uJ3BVqkrPscBXTUM9xkzKzN5
	GRdJONLEbTP4fN9aYTeYhNXtlS1gM0PkVAWZtOcDqjI8NkhOTTF1ZhZVours7eFhvb9Psm31VDk
	mgWYiIDv6KHE9/fNHkIztN/sHRPcFx1D4tXNsVEHYGSbH1vY4nB+V+sWYKbnUIacO9PNVRWnuH/
	pChmM9m7hKHjHepqbc0ZiMojctGAgy5/X9KFQIcul84o+Q/lDJYWIvKUeKSpQdR9JeTR0ppP+BD
	Z4ZjcuEVV6Rc8QOpkOrsCv97C7Gh1MRirk2P3ob/Ax/e/EHoCfTv65HQTVcGgQq4zo1GMQBRVaq
	yYKOQcI2GxdQcvYI8xvLPGjxYFznRbpzc=
X-Google-Smtp-Source: AGHT+IEMBF+3e0D/+sI/PT1plC6W+n/irFioveOjohAD5bO+6V93DVk5UOwucVi7eXYOS/loRQ/JUw==
X-Received: by 2002:a05:6a20:7285:b0:352:3695:fa64 with SMTP id adf61e73a8af0-376a94bf23emr11214001637.37.1766408783610;
        Mon, 22 Dec 2025 05:06:23 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::402f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70c932casm12970405a91.0.2025.12.22.05.06.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 05:06:23 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 22 Dec 2025 21:04:11 +0800
Subject: [PATCH v2 01/13] dt-bindings: riscv: add SpacemiT X100 CPU
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-k3-basic-dt-v2-1-3af3f3cd0f8a@riscstar.com>
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
In-Reply-To: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
X-Mailer: b4 0.14.2

Add compatible string for the SpacemiT X100 core. [1]

The X100 is a 64-bit RVA23-compliant RISC-V core from SpacemiT. X100
supports the RISC-V vector and hypervisor extensions and all mandatory
extersions as required by the RVA23U64 and RVA23S64 profiles, per the
definition in 'RVA23 Profile, Version 1.0'. [2]

From a microarchieture viewpoint, the X100 features a 4-issue
out-of-order pipeline.

X100 is used in SpacemiT K3 SoC.

Link: https://www.spacemit.com/en/spacemit-x100-core/ [1]
Link: https://docs.riscv.org/reference/profiles/rva23/_attachments/rva23-profile.pdf [2]
Reviewed-by: Yixun Lan <dlan@gentoo.org>
Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Fixed alphanumeric sorting of compatible strings, put x100 before x60,
     as per Krzysztof's feedback.
    Added reviewed-by from Yixun and Heinrich.
    Updated the commit message to provide more information about X100.
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index d733c0bd534fb63ed7c0eada97c42832431f1fc1..5feeb2203050ae1f1404100ab7ba93e224f72d97 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -61,6 +61,7 @@ properties:
               - sifive,u7
               - sifive,u74
               - sifive,u74-mc
+              - spacemit,x100
               - spacemit,x60
               - thead,c906
               - thead,c908

-- 
2.43.0


