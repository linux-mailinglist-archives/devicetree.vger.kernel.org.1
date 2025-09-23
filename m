Return-Path: <devicetree+bounces-220455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E69B9666C
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 16:49:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3491C176A8F
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 14:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E954B24728F;
	Tue, 23 Sep 2025 14:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YpgNreNR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F33120E030
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 14:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758638731; cv=none; b=HrUKYKk1gi/GGPr2KdEdbLhkxEvPVO5HyC/4355668h7V+sDqZS8Ee7lIOvsWP6tjycGI5a09IYMrCvvCeRs/ETlNO4N9wydEmbMOvpLeHy9usFWSeUz71rd1Rbw3ov80j2FK17lXzuuWNLhmyDpdYuWcRGJeALZ/vFXdKNtvZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758638731; c=relaxed/simple;
	bh=E++2gVltlUZvM7LO7UL5hRQpUefdLdmLO6BBQH8nTIo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=htLB+JWaJGWzA3dM+pkwlurVsbGJ7q7jrXZOrW8NrxxVTmtVcM+HrLEjus/hI3AVjOiE+Ik0ki+vAKsLITsN6yc4w5SHuGzOcewR6zy2nMm+uCmmcKlQR/9t9WfOSwpOMTImJvXO5QkwW/xlu+EmiRv1jhupu8VkEFYbcsl3szU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YpgNreNR; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-46c889b310dso27209815e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 07:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758638727; x=1759243527; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1lVyOEtb44jMIonYRz4wgo+G3AHkk+QAbStCapuIh3I=;
        b=YpgNreNRiYpOeT5qcTASfIHN4dKPo0RWg7E/jnKFlwlAcDPyaNiZwOD0ZLfxJ/URqx
         dc2LDIh6jqDQfXoQodUXdkvfWoy6l0pHds8wB2TnJrraJ3rgDTQQG0MeG6o6j8RwEwPM
         Ojm2mVFUsWmgjI8NzIuw2URegOZQKrT9ZFkZhn/Lz6WkC01AGnE/HMte58Hsm1gPkCUv
         f3Sluhkdf9zxlMDy01TXhpU5ziBJHzZUYBshkjDn/Pz0L/yNveFY9dL+FGCjWolIBDCr
         qI9GsaFeYWVYZFlH/eGRJzRSyQZvVbx9oaVIAKimTIQc5ya9dlLL8OlS893JCG8TTPMv
         O0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758638727; x=1759243527;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1lVyOEtb44jMIonYRz4wgo+G3AHkk+QAbStCapuIh3I=;
        b=S+o69VV8QfBkyv9nL4rFqPhz/Em5BKdVFUaEXEVCpL9LhXrVRJdbdZ74T4QvpEfuqY
         1qv6tftGm/vKHr63cDEqA8sZsTG4vENoL+rOu/tq/qtn/WAohlf5p6ExxuEkvlXas9gM
         2FQqz1L6eMkcuY6HwTDl/4rVWmBibjtt5WkylVXjzy4Ljf3wf5qEAqgKebuiDskkx2nv
         9KRlt7Ptv5ZsqmcKrpZz9UEt8vvxh34JgNOu5Ej7XZXFpGjTwoEpYpACjSiUK1Rp68la
         Sqpq/2FIIrBvY4JX7tP7Jh31zQHSY6vsM4NfOSVn4UDR0sa4JFB7HORL8RswZh2PW//9
         ggoA==
X-Forwarded-Encrypted: i=1; AJvYcCUaBUqk0t+HFuJHGYBkrkbi3HZoQ7Tp6NYB0qkxnvroy6TJnNcIa6QyhEhLuZWjBydn+AkVgj+NSXbg@vger.kernel.org
X-Gm-Message-State: AOJu0YyTFHmEU1YncHRbnF14roTRirqvPGNjx/+X75urETCrh8SuCfJN
	B/CF+BCyH0vQB3jxAXLw/V96452vQA6h294ayvM39QpzvzBh9QkR8UGc
X-Gm-Gg: ASbGnctw3zkNhPbJCshvPViWSd6PvIZcypNmCxk+Aj8MXbnlSziRzzWu5GHdYJQTWrf
	hgvxm8wx5+7dEiO0bKSTQVIGz6Yf/2aSi/itHLYE2Ly4mCtqlhG9BrNtoDSPNOOHeS2fehItD98
	JbEP0l+dqnUdOKkWYXOA6AF1htF225hFY+rUamvjLSpk7/+jEqeFbdCOfxLEqanlWgTJ80GiKMD
	q+3Lp7T2T5teI5zWuMy/x+NhLWPpuyml/Pq1Rs9J7emXq1HB8yu8g1OtjHIM7XKn9o7utCsZTDQ
	ersdrt1zw87+yL1sYzUAE05RjXu4kuQ9nHtYtaXdlE3p42q+CIE/ZcJ6hyHX4XoOxVOJEvm9df6
	9b4c5bve4QDtQ15RHUKIS6bCnaG+QHGUm6/4fHAt2FwN//jj/v7PJu/2BMifm9FSmsJX+tR9sJL
	2OQw==
X-Google-Smtp-Source: AGHT+IHyDP0JGNqLKMAlNFpmFatcdlVbRpg2mdFpBQ+NBXh/GQ+EiuZdPupjGEXn5Rz6NkpSEimuOg==
X-Received: by 2002:a05:600c:6d46:b0:46d:83e7:45ec with SMTP id 5b1f17b1804b1-46e1e142a82mr19944675e9.11.1758638727056;
        Tue, 23 Sep 2025 07:45:27 -0700 (PDT)
Received: from biju.lan (host86-139-30-37.range86-139.btcentralplus.com. [86.139.30.37])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f0aac3fdsm238940435e9.1.2025.09.23.07.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 07:45:26 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v3 0/8] Add RZ/G3E GPT support
Date: Tue, 23 Sep 2025 15:45:04 +0100
Message-ID: <20250923144524.191892-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Add RZ/G3E GPT support. It has multiple clocks and resets compared to
RZ/G2L. Also prescale field width and factor for calculating prescale
are different.

This patch series depend upon[1]

[1]
https://lore.kernel.org/all/20250915163637.3572-1-biju.das.jz@bp.renesas.com/

v2->v3:
 * Added Rb tag from Rob for bindings patch
 * Dropped wave form callback conversion from this patch series as
   it is covered in another series[1]
 * Added suspend/resume support.
v1->v2:
 * Created separate document for RZ/G3E GPT.
 * Updated commit header and description for binding patch.
 * Added waveform callback conversion to this series.
 * Collected tag.
 * Added link to hardware manual
 * Updated limitation section in driver patch.

Biju Das (8):
  dt-bindings: pwm: Document RZ/G3E GPT support
  pwm: rzg2l-gpt: Add info variable to struct rzg2l_gpt_chip
  pwm: rzg2l-gpt: Add prescale_pow_of_two_mult_factor variable to struct
    rzg2l_gpt_info
  pwm: rzg2l-gpt: Add calculate_prescale() callback to struct
    rzg2l_gpt_info
  pwm: rzg2l-gpt: Add RZ/G3E support
  pwm: rzg2l-gpt: Add suspend/resume support
  arm64: dts: renesas: r9a09g047: Add GPT nodes
  arm64: dts: renesas: r9a09g047e57-smarc: Enable GPT on carrier board

 .../bindings/pwm/renesas,rzg3e-gpt.yaml       | 323 ++++++++++++++++++
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi    | 184 ++++++++++
 .../boot/dts/renesas/r9a09g047e57-smarc.dts   |  13 +
 drivers/pwm/pwm-rzg2l-gpt.c                   | 209 ++++++++++--
 4 files changed, 704 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pwm/renesas,rzg3e-gpt.yaml


base-commit: bf2602a3cb2381fb1a04bf1c39a290518d2538d1
-- 
2.43.0


