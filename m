Return-Path: <devicetree+bounces-141276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3DDA203AD
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:02:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80EA11662A8
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE3F1F4294;
	Tue, 28 Jan 2025 05:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="gQ/tU2RW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DBB1632D7
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040405; cv=none; b=N0wDTkYPDpl5wORxCnwigP8yBzIGQA9zPZMo1RA08PqhhtfbubKyAR6xC2hDY919o8h1t2N/h9Uh/nFtU8x61GFRGDXV9UNmq3DPur2aU0IF/01vDnzz4FxcmPiuMoi5AltoH1mL8G/ZOaUDGePb8L5Bh0D6K3lxybGAqY0wYZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040405; c=relaxed/simple;
	bh=j6KZ4QS2aupIU/Q0ybhUflnKa/It+i/xJb5UAE1ecGY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KLEtIgTVQr/Ui6tw9sda53azjv20hkz7aChvo/sJTDq8zmPu2IIY8BAlXqvi0mXoeVbeXYi1Q8SXztCpzVsiDAuHreLjQcnWLR6N1U+KBBU9elKq8E18KA+E5yIwJ6wPq9gJqIexX/6suiOiPQhbwBJoSKXe4BDWIJhLEC6ic1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=gQ/tU2RW; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2ee786b3277so6953490a91.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 21:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040402; x=1738645202; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3ysqLj76yIXMmN0DuXp9ro2na+awhMKH5VmavOAjzvw=;
        b=gQ/tU2RWxSAoCOOua4wrmuWyEN8D5cIxZorgtVAv7XNomdaq+N+RtX0SQPKekNTlcf
         A+rRROa43P6G7i3I5BGKc/Dv6tfJGtU6smseApdTjIXzEiZsf0pftsxfOhjpai8iE0zC
         A+lzE6JskrYxqEAOKo3Bx6aPaA0dlbwkbLdb7zwrOD43MEq//hvLbEhwwhEdPYRX/Bcu
         MwYY2jWe53PKFvOd9RuGtiXj8ODXqj5a/E6795d6Jw7mgjniZY+msO1ma0th/+DvzswY
         76re6bwnADW1koAqABhguEoR7kwcwR1/FFvwXZ4j9laUlzTbbKqQ4HdltDb30IJJ76S0
         zdkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040402; x=1738645202;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ysqLj76yIXMmN0DuXp9ro2na+awhMKH5VmavOAjzvw=;
        b=NfeN/CU551Ecf9HF+q/xcHCpOHaEJ2SIDSuzGG8H/X6VmYPxrWaFnYJeKGDPy3UfXf
         JNe5JyQAd2EJmrVa18pJEmtawABfe4Lqu6oVLRYSWuL5/LXwVXtNVr/gQ9irL50sZevU
         yJoo96AEU/3DKUR4EtJKS3j4rEDCouEQBpDkJtt+XZKJnQtWv5yc0qfYJ+S7QPbMvXcT
         7JnMX303S1eW3jQHb8R+SkanrdUeKiXxt3Rlm6wm3iQkSFZVeFN1CSER+PDVE6aennwl
         JWkbKO4JBQ0SVPHjBukZmwwg6FCtoIkaaB8fkDXmqIvL0ziRYTd7kAX2+bS+nKU3vORh
         IJTg==
X-Forwarded-Encrypted: i=1; AJvYcCUtZB+yZ8RfqKhOILZIfd2YB9zrjZefnNM/mZ/YcjwlNs03wpG20S/qiC7KQIPAnCH1Tw55jqpowgUv@vger.kernel.org
X-Gm-Message-State: AOJu0YzNoPv/+LItx+TqxwgAkFKiseJhNCI/WrVDLxYPG/NdZm43oRmx
	8VdPEJFXG2RhvHFDifND5Neuk8XOpfecpkeV1iQhq2MF8RPIBTt7qyH/DWMKSbo=
X-Gm-Gg: ASbGncsp4dWBVlYPfd0WCbqg8OtKXSKCH3HOFLeX2NrJ3GiKWmj6eHCswU0n06QNr3K
	/8DqtjfgUl5bziDJ4piFjZBp3NU4e15QfqqQeLhf9CsGduxZPsT8XBfN9oavJtqHobN9jhyn6wT
	Q+Zo6AbXrGCum226fS+l7CkHIfGIa5zSoYnIKYbDvEJiv95q5EyuYH+YWBE3th42y3qyLv7tZBx
	N0e1KZn+yaZ/L91/89N5BhqpjI11FR1S5RWay3opGqhc/tsVIcCkyWmZULViinLhCVqi4k/LTu1
	0iyRL++xeUo1UTBxDH0BU+FVkb+u
X-Google-Smtp-Source: AGHT+IFdfSM4LoL408uYEIffufa8tyqHYMXtXIXqsBrutmD1adLWVCNfMy18lpD4qkSPUrqnOkGRNw==
X-Received: by 2002:a17:90b:270d:b0:2ee:863e:9ffc with SMTP id 98e67ed59e1d1-2f782ca5d86mr58401904a91.21.1738040402292;
        Mon, 27 Jan 2025 21:00:02 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.21.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 21:00:02 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 20:59:49 -0800
Subject: [PATCH v3 08/21] dt-bindings: riscv: add Counter delegation ISA
 extensions description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-counter_delegation-v3-8-64894d7e16d5@rivosinc.com>
References: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
In-Reply-To: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anup Patel <anup@brainfault.org>, 
 Atish Patra <atishp@atishpatra.org>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>, 
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Namhyung Kim <namhyung@kernel.org>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, 
 Adrian Hunter <adrian.hunter@intel.com>, weilin.wang@intel.com
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-perf-users@vger.kernel.org, 
 Atish Patra <atishp@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

Add description for the Smcdeleg/Ssccfg extension.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index f47d829545db..1706a77729db 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -128,6 +128,14 @@ properties:
             changes to interrupts as frozen at commit ccbddab ("Merge pull
             request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: smcdeleg
+          description: |
+            The standard Smcdeleg supervisor-level extension for the machine mode
+            to delegate the hpmcounters to supvervisor mode so that they are
+            directlyi accessible in the supervisor mode as ratified in the
+            20240213 version of the privileged ISA specification. This extension
+            depends on Sscsrind, Zihpm, Zicntr extensions.
+
         - const: smmpm
           description: |
             The standard Smmpm extension for M-mode pointer masking as
@@ -169,6 +177,14 @@ properties:
             behavioural changes to interrupts as frozen at commit ccbddab
             ("Merge pull request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: ssccfg
+          description: |
+            The standard Ssccfg supervisor-level extension for configuring
+            the delegated hpmcounters to be accessible directly in supervisor
+            mode as ratified in the 20240213 version of the privileged ISA
+            specification. This extension depends on Sscsrind, Smcdeleg, Zihpm,
+            Zicntr extensions.
+
         - const: sscofpmf
           description: |
             The standard Sscofpmf supervisor-level extension for count overflow

-- 
2.34.1


