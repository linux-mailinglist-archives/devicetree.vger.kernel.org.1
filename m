Return-Path: <devicetree+bounces-244458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 038EACA537B
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 21:06:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CDFDE31983E7
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 20:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A24F434B693;
	Thu,  4 Dec 2025 20:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="br9uXAzu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A04234BA34
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 20:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764878647; cv=none; b=gUfyzPdtwHZpvkXqpbfQTYC04LlkN5bGF0RBHb35lQGZCupheP1LN0EoOadqrwqOxCx0n+Bb0gD7oKgVtAUNdlxmfX/vp/oeiz1l3tiiaNmD3Q/JTVuiZAOfe3QvMQKASNevx24W1goql7fhsxLh+9fkY+04j0+aGpUd0GU/Mks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764878647; c=relaxed/simple;
	bh=vDVmmVGnkAFlfQ8sB5tmt1wB1lda3XmsatvedsLasmU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IMVWczrOREcCdn+xyFZLnexTPzJCyGTFD+K+n+D1uuI5rwdJKlDhX7rue204dPQbP9IGZI9ivqJlP40ccphFGRidJobnQ04d3ieBB4sIogXviE6foFBGXyCMLeeWXycb3VaVbNqYhWQUnnuTz4Y/pT/c1GN1X79w5SpOOFQM4uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=br9uXAzu; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7b9a98b751eso1140427b3a.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 12:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1764878643; x=1765483443; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=64xLkyzyDt+G7LhAFS7W5T4PZ7pgqwloJjIatj/cxJQ=;
        b=br9uXAzudPA3h4BKrT8pp7tYCoY2gw8TD5VI02DoGYYCD9y3udZwgYsgBEkBRjpOhA
         7Br49ooZYp4KieBi/+eSu+IuJRiF9OA/s5sLExjJIHG2j3xE8qSd5trGmK8LOGiR/TlS
         AHte9izzqGbke7f59Pz/c9q9DWuP5/raHfMDmQcMfEUGLWDvxW3BSal+wqGYS/HxqNFJ
         FadWS4Q1ngSgZlOYphLAwbEumJi5w1ArjGlTu9YMgpewVsN+mcST/Ky9qAafrnmwquVU
         jWieFeZ9sDJrrrLDMgp+J4zwsbAUeorsuihzhCEVAHyzSmxIV0AWYPGtFrIzKzo6n93b
         c2hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764878643; x=1765483443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=64xLkyzyDt+G7LhAFS7W5T4PZ7pgqwloJjIatj/cxJQ=;
        b=AikPBjMxNFqNPXeo7zGzSWp9NXib9k2PI3A1jd1rIgNqpfOx3s8PCbh5yJ2yJ7B0cg
         nypmFF0qQ48xyLh8J3Jr8vb6wmTLonZWskRLQhrU3YtR/QYzyKJ5XGOjmmjEFJWFf0dl
         nqLdEn+qPUdMunAjzBSt1fsPAtEnWuxxwl8LysJrnly9j7J0eBimnuQ8/6X611wy9fum
         fjuYnnirVYS9vEJ6t5PJ+6Iciz0A6YEQMPYBZ/u3msTiAd8bJl5k83Z58tSe03jXxM7B
         f0ZMKjlcETRdQjywukNKqvaFvpyfvL5w6pXmO8uVZjhyIzBwv8mfYHtakMStWvlc8gqM
         3OEw==
X-Forwarded-Encrypted: i=1; AJvYcCW6UPedsuSBGSjMoLh+xEUCZhJDs3cVNT2cmGlFC7NGEt/IAsviTo6Sk7MqG4X6PON1McAojpWeqamm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb8ksGxXlrsl0koW6TuLzXKC8OVjvnZu/RwE3UzR622Gz/lIWD
	X+tiTFuL/CMyDzBP9tIzGR2Tceyi9cIvWgbLQZXp1WsOx6XGl/dKkRc3lUyZfBCmblmbBQ9ShjN
	ZmJxF
X-Gm-Gg: ASbGncvEdsjQd9nzH1nWR7pU2PuqxXVdVKrWOTEYJnVfCPdTZsyARJJmaG2RZzady0I
	JpzlErxBcjhAlLH9DRwGIpjdzR8GX430NJxx8eHdI45LcgK+jHZRAXGZbohQV8Sx/J7f48EzTzZ
	GgfCSv0a1B/C+hP46qSo/LfcGJjbXlX7eyxvbUjr94u96t5SqAwovzSoqD5o89Qvx/YTJPqr1VS
	fgsRAhEvMESuH2ddtjYozKjTAqXmcYxyQwmWqtqFm4QB2LWGtYMoM+48pTVNsWWgFLJQAnMR9tu
	XnUGT4LPu9fVLEbaD0yy6OmT5ZXvjLqzCRPE1dPPtThBAZQYMOUFlxciGttVsjBIr59zPYpUYC2
	7BA8tHO3gGnweSKaq2+kW/CvrDmWXs8uFTp0HG9di4lXOYMbuARQWkO9E2xlJTVrckqTJf+U8A0
	rLBnSfObpebI8cABuLmY3b0d/WvE7TqVk=
X-Google-Smtp-Source: AGHT+IEOhZnijBnNdOdOsVk4yoGiswhZ4mB9XbdEcOyRSW2OHSL2c0QLsA8JlQSctaVi4Fp5PYAbjg==
X-Received: by 2002:a05:7022:3c13:b0:11b:9e5e:1a66 with SMTP id a92af1059eb24-11df6457d6dmr1963954c88.14.1764878642636;
        Thu, 04 Dec 2025 12:04:02 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df76e2eefsm10417454c88.6.2025.12.04.12.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 12:04:02 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 04 Dec 2025 12:03:51 -0800
Subject: [PATCH v24 02/28] dt-bindings: riscv: zicfilp and zicfiss in
 dt-bindings (extensions.yaml)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-v5_user_cfi_series-v24-2-ada7a3ba14dc@rivosinc.com>
References: <20251204-v5_user_cfi_series-v24-0-ada7a3ba14dc@rivosinc.com>
In-Reply-To: <20251204-v5_user_cfi_series-v24-0-ada7a3ba14dc@rivosinc.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>, 
 x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
 Vlastimil Babka <vbabka@suse.cz>, 
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Christian Brauner <brauner@kernel.org>, 
 Peter Zijlstra <peterz@infradead.org>, Oleg Nesterov <oleg@redhat.com>, 
 Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>, 
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Benno Lossin <lossin@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, rust-for-linux@vger.kernel.org, 
 Valentin Haudiquet <valentin.haudiquet@canonical.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764878635; l=1566;
 i=debug@rivosinc.com; s=20251023; h=from:subject:message-id;
 bh=vDVmmVGnkAFlfQ8sB5tmt1wB1lda3XmsatvedsLasmU=;
 b=xNldZE7ggkUY4ump/fCL/1LsAC7onHMyBUwvRbY47zCFtNRuwaSA06AgdswhMqiJ56F1mgWuR
 UeXTJ0gNxD5B010/yIJ2qjv+tHksoFDtsdJiXEDcLJhe2dg4MXf1BtQ
X-Developer-Key: i=debug@rivosinc.com; a=ed25519;
 pk=O37GQv1thBhZToXyQKdecPDhtWVbEDRQ0RIndijvpjk=

Make an entry for cfi extensions in extensions.yaml.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Tested-by: Valentin Haudiquet <valentin.haudiquet@canonical.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 543ac94718e8..3222326e32eb 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -444,6 +444,20 @@ properties:
             The standard Zicboz extension for cache-block zeroing as ratified
             in commit 3dd606f ("Create cmobase-v1.0.pdf") of riscv-CMOs.
 
+        - const: zicfilp
+          description: |
+            The standard Zicfilp extension for enforcing forward edge
+            control-flow integrity as ratified in commit 3f8e450 ("merge
+            pull request #227 from ved-rivos/0709") of riscv-cfi
+            github repo.
+
+        - const: zicfiss
+          description: |
+            The standard Zicfiss extension for enforcing backward edge
+            control-flow integrity as ratified in commit 3f8e450 ("merge
+            pull request #227 from ved-rivos/0709") of riscv-cfi
+            github repo.
+
         - const: zicntr
           description:
             The standard Zicntr extension for base counters and timers, as

-- 
2.45.0


