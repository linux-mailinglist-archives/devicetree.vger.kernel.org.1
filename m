Return-Path: <devicetree+bounces-224615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E0558BC6444
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 20:21:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5833434DF41
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 18:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 723CD2BEC2E;
	Wed,  8 Oct 2025 18:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dtdGpqsl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901A2292B44
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 18:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759947674; cv=none; b=pm6gTBAyEJaEuYYbyksqLQrZtJdw4LKqCZNFU5QkeVSlrC0QfFXxDXiYGP0CgZZ9d/QJK9wnY+QWoGced1N1vmp8efG5ud+mpjPRQSyqWBibqqn06ilNU/BTsiHLkkEYAEboSOKN7tGaqHNkMTehqZBcPVxCAoZmzSYBYZdW9GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759947674; c=relaxed/simple;
	bh=AQqdMa04vXC2piy9UqiS53/4Xv5soFhx22ppyv1jBes=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aSOUSZyF3E6numYNVEMK7/3/W24xdG2QJnlrO1ssHwYHVW5+P3V4mB0Ust0LzSwNXnKn9t9OPQ2UGjFUxvmV1zb6+4NHbaYuqF49OIbMh+QhSR3cKVnnP/OO++PPgWt1TL7lrJQAPbbNe0Z3yaEgoYux1P7rfYP5xEu8D4rYVKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dtdGpqsl; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-59054fc6a45so216485e87.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759947671; x=1760552471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=r0xvqxT6obqyR1rkhpk/b1maW+DJaEvwFyv59TGQqp8=;
        b=dtdGpqsl7xzMq6wwN8mtt7OPO1nW7jtDoeXMbdVau17W3agQq7cl35HSsP7xlJGS8b
         P0tIfUiIJKaordFfrYx1SKJaCJRbVYfqnYftLSZIGdUEiLlDw1n+LN9/Qwm2K53qDAjz
         crQYjZLsaj6scjY81/xFilYdQw3xwu5NXunDgK39Aj1sTrnrmEzz3NWNcmOC8N0UP79n
         601NSe9BylRIvauZDB34N+hkwspROl6QMrS/54k6nop/dFFCi5a46ZNBUp5qOsQERXy4
         iB0G4mFRe13L9Fz1oXD67bm/os9sRsZHStb/ZeVDh9WopGVXmxjkhbsXMI8za4dXVfnZ
         b5qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759947671; x=1760552471;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r0xvqxT6obqyR1rkhpk/b1maW+DJaEvwFyv59TGQqp8=;
        b=kf/1xS/nWhUF/mEzC1DKS7GJrMwFGXOwHXbXny8YqGznu9Or9ckAtuq1+OiAp86eD2
         YT0Aa7e9I/xh2HTQdm1ljyDk4K06lmQJfN2s5GY4WrEafu7WLJW2RskelXM+0B+WVig0
         2hqAiM8ZPZQnTNDhCrNVCzQxLd5ajX+wfg6kA5+fOv8dxSKpzCVwzpfE93FE2zwxHozr
         hA/QQytvbte7MeXACanZuYCjDdZCxZuGjUHFVEKvojMnCfucqv2GQSDTKIiC8M6vLQFl
         1cZxGKNTKtjJw9m6OQFyGfti4Jo3jqtsyTuqEnMrr8A7lk7PC2TzsE/4+Q2PmS0ClXjh
         OBdw==
X-Forwarded-Encrypted: i=1; AJvYcCVB5DWWk8LfmwkJXhGFrpLHKZ4euEHnsSu+TlXk2qzXSQmeZjZ0SndP26LtnayJYmOI8YasnXrWbynS@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl4yOx8Oa9hr4ER+Tv1hJRXMTPi2QF1BCQXsU4v0niL93qzm7o
	vAiP2nWrXCw3jGwdd6Kl/AkAVnPXzViXOYVyXJsMadNlXg9BxCjdFbGC
X-Gm-Gg: ASbGncu+d1FHwbcOYIW/xz4NyoV7k5pWFGP7cR0nwV45nt0Y8kV/xhSoMCDsjtcYp5Y
	0ob4yynyK001PPyVkEEqehqPKZPslt3YBszh1yz9OlkYrq5asvXIoGUqGRp9NDEUfVjjDbUCmIf
	x1WkoxjVjch/RC5/L+xo/6OGSNS5u7Av4kHnmVRULLAyQ54vsrv+wPjYVSbTKXzxfqo+eLSGGZG
	56njnCdWx0zFGeqWd2/Zt7yu525/nlH1es5jI3kR4YvnzoARfetZTQomogrcWmokSbV559UYVZD
	bDWDP5qD9eUoXZ0wedBZe8Vb9+XwHQIPpPX6DK6NqWgcCNG2Tx8WrBvkij+A2jpPCnEr+bAEusc
	zRbcukFf4kM0uG5nd0xu7QSzTEPD9iFUYETp017y7jKs4OzBHgpO5KoI=
X-Google-Smtp-Source: AGHT+IGUmDxJhLMmq3olsZ1CaUePrJF77nqg1cSWJUcN+Jh1SFYb8Y4RqO/vHveCQONc5FBDfJj4vw==
X-Received: by 2002:a05:6512:230c:b0:57d:77a1:715d with SMTP id 2adb3069b0e04-5906dd527a6mr1407474e87.32.1759947670361;
        Wed, 08 Oct 2025 11:21:10 -0700 (PDT)
Received: from crusty-box ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907adb1268sm223930e87.90.2025.10.08.11.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 11:21:09 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH v2 0/2] arm64: dts: qcom: msm8939-asus-z00t: add initial device tree
Date: Wed,  8 Oct 2025 21:20:18 +0300
Message-ID: <20251008182106.217340-1-xerikasxx@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This dts adds support for Asus ZenFone 2 Laser/Selfie (1080p) smartphone released in 2015.

Add an initial device tree support for Z00T with support for:
- GPIO keys 
- SDHCI (Internal and external storage)
- WCNSS (WiFi/BT)
- Sensors (accelerometer and magnetometer)
- Touchscreen 
- Audio input and output
- Vibrator
---
Changes in v2:
- added customary newline before 'status' properties
- removed odd newlines in pin configuration nodes
- reordered pin configuration nodes by their 'pins' properties
Link to v1: https://lore.kernel.org/linux-arm-msm/20250930132556.266434-1-xerikasxx@gmail.com/

Erikas Bitovtas (2):
  dt-bindings: arm: qcom: Add Asus ZenFone 2 Laser/Selfie
  arm64: dts: qcom: msm8939-asus-z00t: add initial device tree

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 256 ++++++++++++++++++
 3 files changed, 258 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts

-- 
2.51.0


