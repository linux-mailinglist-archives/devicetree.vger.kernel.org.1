Return-Path: <devicetree+bounces-205303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A52DB28AE1
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 07:58:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29B2F5E33E2
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 05:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F00461C5F1B;
	Sat, 16 Aug 2025 05:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="fPOD7PLz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D5F1F462C
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 05:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755323894; cv=none; b=LYjYF0OmfqKtkcStnnNjWQw2pe540PnphZ3f4Vg1jB5Znt5UBO6xNczMmuL7Mw1El3F4xJhZ3IfaLLNJM25rvmFt5uiuOdThE3OAeSV9s0ylQ/2CYExK3AuMQwzbFre1T5bnM9KjgR3iDYvtBBcxfvMrlZxj+aPgvm9TMM6jWwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755323894; c=relaxed/simple;
	bh=WAfkSZrl3calNt7Fy7Wn8M2gukVfDmNuTibUuqbnrMc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LIO5RDzso753IsVFMSYjwT4vPC8QIct1xbIyTXzIaqyJ3uATLs1ykaV62E8z9mCNDyA/WwXnuLq2A68a857XylWSRY+v+RCNx2CI5ENYRSQRa/w55rbyKUBIPX81xDiSqcKcpUwznVQ/ImDqkJRi0TqLY/ci3iafZhC4N4pCuA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=fPOD7PLz; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2445806c2ddso22314055ad.1
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 22:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1755323892; x=1755928692; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JQQQbraPh1krc8T4xvof89GHpnq76NDYsEq95LcPMgc=;
        b=fPOD7PLzrPY/ypP07bwAJGN2Rg5dO6Eg7vHhBFFv7wqgSRCF1FfOcxUlAIBC6SKpyf
         s0ONGCQNqVxi7D3iPm7DRX5kLFncPj8kdtXjepcPKJoJo5Oh6HAncxfMH/8EPPVjQ1iC
         dYZxLfHLD8apoFK9IW9NX40BjkwkGLTkZpFoRLjQSX2Uen7JUTBxC7as2xIhJ4pQqv6P
         nkvetoJG+OunXwR3dKafFAuKaHR5yHq+JIuruJcE+8aSha/JxDuuRmKuLdHnjXwP7Lx2
         DeMJsHIGtPfrsZputJLjn9J7jX7CfPRD55JevYeuEYzznDfVldmDLE9onvxoRV9TFCM+
         /LFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755323892; x=1755928692;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JQQQbraPh1krc8T4xvof89GHpnq76NDYsEq95LcPMgc=;
        b=xHPltFO+I0va4Py+QsR0SZwQZp1OGQolTLbJV0LiWrGUB4tMXROM07u/+aBslI5I7W
         hcWRxuXAkVAYg6odj6KKRe1eW8H9qM0/7ohXDMpLlA+evTr6zJGGNc9xwpxPKaOU3W7C
         ZLWmXd+UJqULLtenlcv/znrbFYMSvTtpnSNDnwsEEfVyUil8JKIDCmsMp7DZL1vMQ7ps
         fiZwTvHS/ATfF6KLvpWPNqILHAvREbpeLi4xUVUmoyC4jbcbZwZ2WdVXlx1NLbqFH7T6
         GkaHgIgafPkFC5Fo/ts2A7aqf5rONehiXY7ZEk6hmboIh2tw8gpDD/QLtqjGrKdHvQVj
         vMrA==
X-Forwarded-Encrypted: i=1; AJvYcCXryCMk5OPvqUPEzBzcmddLfW6nQwCnRWm918Q3cmTckfCNh7LgkL5hYvDpnK4HANmN6yORTFgQ9S6/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv0cU7YbgE+9rHAByb2813v5uGBrKcPN8hC4BpW/jZn7Romqtv
	h7kmQMShXSs+ecoJU5aj0Vw2iWklDNuyco7a/cYz5wGdLpkz/LNkBz+vMHwLFosk1J0yG3Udz59
	NLMg=
X-Gm-Gg: ASbGncsfDFmUEi7fBwUrmDeRkD9wqJzdXF6gcBtWeJaB6ELgnNp/dVFINTqc0sl6wCB
	7MNsbxuHDv3JKsE2Oz2+6/0lrZXMMPHhR5+9W5mzcjFI/rj/wZKwoR0wrFv1SXORFlKWEmc0a3q
	2mcWMFITyUBfuubSB3h0Ecu5LEz/5re1jFZU1hjaW4v/Y9FCdHqfxA3acYc1kZvdwGGXJtapy11
	+kbUrolIfMAc72sX697yw7MWQDh8gNSzuyFPRGfVuR3XpTsSpXN88H01f6qRK2tVmLGgGnIiNm+
	6U94VDmakVmyJ6a9XMz7YNvHn+EvAkkeokwz++SbtSQOefzOnITrVxMEs8t9MoJRsDMDv9v9DpL
	NbsybDHNDx1VELc29G3SbKEutAhY3Utk=
X-Google-Smtp-Source: AGHT+IEfcGoaS0z47ErwANHzyN1q4zk+dx8nklv25qpQwbTkNYvE5VjfNicbmC6/8HkAIj/0hpzxnA==
X-Received: by 2002:a17:902:e848:b0:240:79d5:8dc7 with SMTP id d9443c01a7336-2446d90c649mr81275395ad.46.1755323892487;
        Fri, 15 Aug 2025 22:58:12 -0700 (PDT)
Received: from [192.168.1.9] ([2401:4900:8899:e205:7ddd:6d95:7c30:9bd3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446cb0a0a7sm28328245ad.65.2025.08.15.22.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 22:58:12 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Subject: [PATCH v2 0/2] rust: Add abstractions for applying devicetree
 overlays
Date: Sat, 16 Aug 2025 11:27:44 +0530
Message-Id: <20250816-rust-overlay-abs-v2-0-48a2c8921df2@beagleboard.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANgdoGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDI1MDE0Nz3aLS4hLd/LLUopzESt3EpGJdY7PExGSLJEtzU6NEJaC2gqLUtMw
 KsJHRsbW1ANfXOV5iAAAA
X-Change-ID: 20250417-rust-overlay-abs-36aac8b9752a
To: Jason Kridner <jkridner@beagleboard.org>, 
 Deepak Khatri <lorforlinux@beagleboard.org>, 
 Robert Nelson <robertcnelson@beagleboard.org>, 
 Miguel Ojeda <ojeda@kernel.org>, Dhruva Gole <d-gole@ti.com>, 
 Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
 Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
 Saravana Kannan <saravanak@google.com>, Benno Lossin <lossin@kernel.org>, 
 Benno Lossin <lossin@kernel.org>
Cc: rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1764; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=WAfkSZrl3calNt7Fy7Wn8M2gukVfDmNuTibUuqbnrMc=;
 b=owEBbQKS/ZANAwAKAQXO9ceJ5Vp0AcsmYgBooB3tEYbUFzz86LDTL4qa0gfYE0ANuYv2dMMbT
 agA0/n+2vKJAjMEAAEKAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCaKAd7QAKCRAFzvXHieVa
 dJgTEACMp2wmStbeLFa+gRZ9GsLa/0vzPaHBLoQ73zT3id3laECBFj9cg7M7j7iPcZHCrHI84SR
 v5KBxUcwd83Nb8pLJyzjnDIRYq09DqcJ7wvLS6oP6oHVgutUbYHC75ItV8BRlJMjpiE8jiHadTJ
 TIOJm8IBT2BAv0TgzM+aD3VQMWR804rRFOPSViPX9OIYFM1OlJSjIn8tcKPWWOaSzpQgHwQo031
 LKKfAFNLjZIy5cYKjITATY4U6XEav+odCb951ti5tDGRz312LZTEeaMVMLOUR3CJOHB/lvt4wW3
 /KV57l4MaQC7aaNpGEnhl+HPbiPxaf+zs9WONu/9dZUj2bz+H7Y6NJjycWMNA91L/TqARvBVJ3D
 T3JTQr/I46XzVrynAwTeuIVYX2nGeCrJXAksscKY5aR6NoQX0DxcPH2W8pvgXSZfCNWos4OoFJt
 IrjGpfJriIrbu9WnI5jdYDxONpW8d9fwlpFiX7AvGGeb9ZsV7ajmGh9yuz3P3jpgSLzlyYHNUMH
 PT8nhlnzYpuHyS6kBTHncGF6Sj4S5HaLUrLwsqxigw91BmuehphHhAyBARJ+2sJ59Px3MwXrdwL
 Porunor0bDyucW4X537qB3OsC2U8LrMmatFLqX8miZfDhiFztI88BU1M1i5mQhyBjW6Wqdu+eLL
 ISesOj9MJRvUKmA==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

The following patch series adds abstractions required to apply
devicetree overlays from Rust code. To see how the bindings look in
usage, see my working tree [0] for a connector driver  I am working on.

Open Questions
***************

1. Removing overlay on drop

I my usecase (see [0]), I will only ever have 1 active overlay in the
driver, which I will be removing dynamically. So removing overlay on
drop works for it. But maybe there are some usecases I am missing.

2. Only enable bindings when CONFIG_OF_OVERLAY is set?

The kernel header currently seems to provide blank implementations of
these methods when `CONFIG_OF_OVERLAY` is not enabled. But I am not sure
what is rust-for-linux policy here.

Best Regards,
Ayush Singh

[0]: https://github.com/Ayush1325/linux/commits/beagle-cape-v2/

Changes in v2:
- Rebase on next-20250814
- Return error if buffer size too big instead of panic.
- Update the reference driver link.
- Use `to_of_node` on fwnode instead of getting of_node directly from
  struct device.
- Link to v1: https://lore.kernel.org/r/20250422-rust-overlay-abs-v1-0-85779c1b853d@beagleboard.org/

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
Ayush Singh (2):
      rust: kernel: of: Add DeviceNode abstraction
      rust: kernel: of: Add overlay id abstraction

 rust/bindings/bindings_helper.h |  1 +
 rust/helpers/of.c               |  5 +++++
 rust/kernel/device/property.rs  | 18 ++++++++++++++++
 rust/kernel/of.rs               | 46 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 70 insertions(+)
---
base-commit: 931e46dcbc7e6035a90e9c4a27a84b660e083f0a
change-id: 20250417-rust-overlay-abs-36aac8b9752a

Best regards,
-- 
Ayush Singh <ayush@beagleboard.org>


