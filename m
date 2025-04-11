Return-Path: <devicetree+bounces-165935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 07519A85E72
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:15:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CFB5618902EC
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97498131E2D;
	Fri, 11 Apr 2025 13:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="DeIvUonf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E329A127E18
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744377297; cv=none; b=sgbLSGyTa0HgV0hImN/ALCKuL99BwO9NHmb+h2VRaycdh6uJ/kBNvPCJ6zcEPX5QhTUPPFufU4lxM0pnvqsgRbYfPgO9duvZr8LRAUO4nYRugHDIIOdBJ+jn9llBWEvir4SKHsnHUn8Er6ToIFzYZA36qMPWjErrBiqxbVz4ZCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744377297; c=relaxed/simple;
	bh=Fx2DSj48yYrVxbWj0sHoE5Kp8sSclZ5JpAzWIKIi5ak=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h4YjDu7A0BioYbxwy4agQdy4QcChpLPvpLS4J6Q9Tz+q9Hw+KUGdQcnkJM4MRsdZGxpqkh3X7hiiDzUobbIv/kZ81uxFzssBIhgTyHXowIlSo8AsXZh3lOWxnS5A97qHqpnlvgzIgyKn0/yP1G5ZZvCJFZpdURqtAR/oBVtJe+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=DeIvUonf; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-22548a28d0cso28302345ad.3
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 06:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744377295; x=1744982095; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PZ9GjvnopZqWsxEaOWAw2bgVB4e74J1JbKJhf3MqmuA=;
        b=DeIvUonf4WOFwTRUtSgscVzmRexwjwdvj7KipEtftzXoz2j/0KWHrJzd7xPDJ0wVOy
         fU3hvAIqf4TbIqttARUES3YXrD1cWy5jrKBiVoVf/MVjtQXlGB2wrtHKhLlJNDzxJj0v
         fr/jSdTKZB/15/QPpOdn2t+7gLiOi3MmN0+P4hnaBXaQ8FflDVun0ZlnOfBL1UCrjCBr
         LysRRVSPmS6oPeE5X7RG/zewvT3FmBBkHGOwtvQtqSU5QKZCpCYEjqAh7tkUJxFZ+Osu
         eI8sUhPPmyyWAgaV/1Pl3KMgcCJ6SwR+TSUBH4y7nnNDwRrGSfxjekKyK/lZtBqLNWFD
         2/iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744377295; x=1744982095;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PZ9GjvnopZqWsxEaOWAw2bgVB4e74J1JbKJhf3MqmuA=;
        b=wu2JJ2Y1YcorZDQj+7Aatzg1ywVzxncFXPjDpbXDw/CiTVI70hYrPvg9W3S6w8h4BU
         bPXB8qbZaZ3Ag0NgcJkxEzasaoRuM4pRfsQhH64MM/808pylaiaW02X29hKScO+0uuFH
         PExYB7pv/V48kRyD9No5OUYZSFQlwCGKZM3kGwQfMPUIyoEGTTEcqk76uztkJOSgpSkX
         6+HXAc5rFELrzEQhtj0vJz7Nni4zWTOgTLoMYpmDwQ98sqQ8tas2tN+MV0OIpll3+SkW
         hIh5khlI3We4Dk/UVMhtjhcdbj1isyoYspI7dNMsSrJVYR1Lb38kIZXS+4jXGhkuNov7
         bMmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUv3CsaggVAO7A0SXHRqN0qjnGLQIvMgZL6ifxonl1x3uxUrLAlO2u3FKvtefMAYdgGVyS5YuYyAdeE@vger.kernel.org
X-Gm-Message-State: AOJu0YyicyvIHC6RrzWT8c+40/3tkLyZS9UriNOw9jNI/4olkTTOk0uR
	RBYvVkWEGdtc6ByzYJuWCIQgYr77VzCE5I5FPhEUyHEIZKPpfrSLg4ZwccJl5X4=
X-Gm-Gg: ASbGnctc6DA5bICIumNvZidK7hQ2PCeeaFkgdVC7P9SBmXS50t6a5lMpTZ2xP1gntgG
	lTyr5IA1lWMQz+zWCZnLdOkoJFvp5xqQznxnTRwIOo6RYyxjKyDwxjTfkGCT5P1vsEZEeVdfQRo
	ZIv12bc+VtKHFTqIGgI4wFXWSwqJbDGlyJxEc8a5OtcEA8FwlFdHZKzOX+U/9SKHV853oc8ZCdO
	wknmoE1UYrbIBNyZiDoXZC0YFKxbFb/gCMwTlg4PbyY4y/HEq+9YjTCSaMTqJgkpAxc8aoW79pA
	2GWPGz42A6KBzJ8FbhMnBU6iWddbkaE=
X-Google-Smtp-Source: AGHT+IFvN5I4E6ZSZP8c6xGMaFyJHcwfDhA7M7Bi4ibh+3ktU+m85bf3AQiHdiDWUBpOoQFNec0A7g==
X-Received: by 2002:a17:902:ac90:b0:224:192a:9154 with SMTP id d9443c01a7336-22bea4bd78amr30197535ad.26.1744377295221;
        Fri, 11 Apr 2025 06:14:55 -0700 (PDT)
Received: from localhost.localdomain ([2a12:a305:4::308a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c95cc6sm48245005ad.122.2025.04.11.06.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 06:14:54 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 1/9] dt-bindings: pwm: marvell,pxa: add optional property resets
Date: Fri, 11 Apr 2025 21:14:15 +0800
Message-ID: <20250411131423.3802611-2-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250411131423.3802611-1-guodong@riscstar.com>
References: <20250411131423.3802611-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an optional resets property for the Marvell PWM PXA binding.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
index 9ee1946dc2e1..9640d4b627c2 100644
--- a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
@@ -31,6 +31,9 @@ properties:
   clocks:
     maxItems: 1
 
+  resets:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.43.0


