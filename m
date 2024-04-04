Return-Path: <devicetree+bounces-56284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B01CB89850F
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:34:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D5301F22C41
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 10:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 992A47FBA7;
	Thu,  4 Apr 2024 10:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="m9/oW3Kj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A149078B63
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 10:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712226867; cv=none; b=oQYBoSxOL/Ip6KURer0XVYRxpIG6usPnqvdrGHQ0TU62lQZ+fAkeU/2oH3rWJ3OaJzi5oSxK0R4ntwwHEITQ8R2tKoJxlmgQlRxT2j5VIseSU8+1mb8pk0MFnxRZVCdCDLOCa3ZTW0evqgeE/aWIlnY7+TLqVvcnlMIJnCHL3MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712226867; c=relaxed/simple;
	bh=2/q4jfOj6U1einCYXJdHvK78eAQ3vHaYbSRzBTdpsBA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=OWS5a7Fk2WrZ2QsP2D6g5EAmoOugBkUNqOD+D87hz7pwSce76rMqc5ZWsUSVQuw8zgRqfkhWmUgyLbnoRmKWYsgGw7ta9OPvV7SXKROBxKbjAz12+qIXVE32oiQmE9afgDb6XLcQ1NFvsI6YIHz3JpvJeXkkJg1QYRdfR3ukZOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=m9/oW3Kj; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d84a5f4a20so1728571fa.1
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 03:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712226863; x=1712831663; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h0yWpEBMuRREaN4Rfpr4/p3Cbe2kX6z7SdkYvYffV00=;
        b=m9/oW3KjpOr27N9nfPPmNzaCEB8cK9KH3zQA+Xy7uidbef5hRIvmfyD1u9Y06YStT+
         BzPXWgetDznouQS8INkOz2wS91EWVtiApc5C1/l5PhRXvJhKI4+/+kX2gqDhpRIJrIi5
         HUeipZ+CFkuPtDzHlw5I4YWsYBMydVUwnJ7UKmE4RH4HjmQIw3TDdx0uXM5vnB8NA+fv
         nT1CCzOP+mdWKaAxpx6Wo5GWFhLq/TeKDcxbUXNkhuR/f5k8Iwa/RQKndW1+aKlQ6Uum
         DkdXKyrZ14urAGlK7qL+nAvTTf8kZEwT+BF5nAlk8WypzhpmTcwnHa4bBu477jftqZfc
         ZArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712226863; x=1712831663;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h0yWpEBMuRREaN4Rfpr4/p3Cbe2kX6z7SdkYvYffV00=;
        b=NjkcY3qqMlPiVgudvJqc8kuOnQNXl/VvWCBpjH8Lc/QBVvEEQ3Vi7i0G1wG9SdenUq
         Znb2PB1NAqrpiWdg7KG7AC9TQYzdhSxnxqkmZCei7ujlGxjN/JNyDpMlLRgZF37YobQR
         x1mK+9c23tRFWid+StNDPc0eBh/AAv8C2MjT6fIqt7AAG8133yBRumzcQ3puNlaVmNCf
         FT1ojxlvkFmQJuLW8rjWuayUsi8aGGU02pEXVNZYUlQ9CemGsdWxk/El5SJimGXDRKj7
         5jacp6UpO8o9Umf3ceH++Ktvp1lApzTSNVZ1HkVrmNV4521r01xcRZKwh+Ico8ukf3jm
         6ZnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjEXrE+Jxqj5lje4M+66BxeDLDYAyzqLSqbfCKJu6SV4aN2/PUGYJqhO3sXHu0LesLdmg0J9EQt913LGdFSQ0kn82vebjAQ9XG1A==
X-Gm-Message-State: AOJu0Yys+f1Rwai4tCGQYVHZTW6pG5biRBU3DM62GkwA7JYpaS9expNo
	poN2pU3gyHfsWKVhgX0o6bjghSP2K5+8gbK0zSZClV40QCwKeGezNqwtIjvLvC8=
X-Google-Smtp-Source: AGHT+IGgwXcPXNss81WaNWWIVnkPiMwtrKqgSEy7SDtHw2OIS4sQFnmrJ6LWngbeMCuWYCY0SDTSXA==
X-Received: by 2002:a2e:99cf:0:b0:2d6:c59e:37bd with SMTP id l15-20020a2e99cf000000b002d6c59e37bdmr1469136ljj.3.1712226862690;
        Thu, 04 Apr 2024 03:34:22 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:555b:1d2e:132d:dd32])
        by smtp.gmail.com with ESMTPSA id ju8-20020a05600c56c800b00416253a0dbdsm2171340wmb.36.2024.04.04.03.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 03:34:22 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org
Subject: [PATCH 0/5] Add parsing for Zimop ISA extension
Date: Thu,  4 Apr 2024 12:32:46 +0200
Message-ID: <20240404103254.1752834-1-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The Zimop ISA extension was ratified recently. This series adds support
for parsing it from riscv,isa, hwprobe export and kvm support for
Guest/VM.

Clément Léger (5):
  dt-bindings: riscv: add Zimop ISA extension description
  riscv: add ISA extension parsing for Zimop
  riscv: hwprobe: export Zimop ISA extension
  RISC-V: KVM: Allow Zimop extension for Guest/VM
  KVM: riscv: selftests: Add Zimop extension to get-reg-list test

 Documentation/arch/riscv/hwprobe.rst                    | 4 ++++
 Documentation/devicetree/bindings/riscv/extensions.yaml | 5 +++++
 arch/riscv/include/asm/hwcap.h                          | 1 +
 arch/riscv/include/uapi/asm/hwprobe.h                   | 1 +
 arch/riscv/include/uapi/asm/kvm.h                       | 1 +
 arch/riscv/kernel/cpufeature.c                          | 1 +
 arch/riscv/kernel/sys_hwprobe.c                         | 1 +
 arch/riscv/kvm/vcpu_onereg.c                            | 2 ++
 tools/testing/selftests/kvm/riscv/get-reg-list.c        | 4 ++++
 9 files changed, 20 insertions(+)

-- 
2.43.0


