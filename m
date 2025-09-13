Return-Path: <devicetree+bounces-216751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6CEB55FE7
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 11:27:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26F915885AE
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 09:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C88D22EB5C6;
	Sat, 13 Sep 2025 09:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="lzeFdCuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCAA2EAB6E
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 09:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757755638; cv=none; b=b1uHFGMEzbzKcqRPqntDAW2ARmte1yfSFJbdhMIi7gVvX80isFwKe51FgMqxrX6zXHLttxWGJYn+69z4NFDscfh81OePUvq28ksP+jpV3xwqhMWC//YFc8UKHkM9m3a0AiksWYYn74kuBGlpnNwr0a7EpRz115kCErpSrjFhCtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757755638; c=relaxed/simple;
	bh=yrpiAloBhI4p4ZhNenjc/ytnMmXyltlftqvFi3+CYcA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TOmgQE86aTtTyOy2Ip6Nar3MYh3xoUVMEg1wGBp1e3kr2ZBLdjkO6jWKqOnxicdP4UQ+QpH3bQKKaYGoSv9wkzXJQtI1wNbBQD9FE2UqaLFVb8b0XR3/sxXBrSIG4GqMsEXaLDnY3SwgfaKWOBDkoytKLBDgcV4tTwXXx4Ch2vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=lzeFdCuD; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-62f1987d493so220727a12.2
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 02:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757755635; x=1758360435; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZN4beYZHw/m6widRTHsuro02Y0QudB0qsvA1rFXjFHs=;
        b=lzeFdCuDsgEbKjIVR98zhARXXwYK/iplkNXgoRMed4pemjP2Gh04mmEdpMgHxlR1Jp
         A4uKxckus2VcJ+iwaqOMNv3/37VWQ9GrooWr2q8ijihdM+ar8kI6rrsdrkdsM55B2014
         aoHvkos6C8PT21/tx1O/d/8TJcNOI+CaqltLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757755635; x=1758360435;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZN4beYZHw/m6widRTHsuro02Y0QudB0qsvA1rFXjFHs=;
        b=I9MaxXiB5P6NepKiUqWlPKTebSL17Z42RgcEzKRKeTKe7eTrP1EausvMK9c9FKnWAC
         /tG/C6u0WkKMCixDx3K65bcWDc5JfY9cXVKDZ9oeN8CKRreNfFzNEbUG+NtmdlQhOQuY
         5mSoTH3eq4FWEl2O6vUfoTLlRyCgZuLLFUJWb6EJEvvQaP3/2xqbnC2v7Qx9MsMFns67
         XfCZIjjUK/mNlwHkUyxJ0qBITtAcIFlwOlKjM7+97klRrR+TlxJ0UZyuwPHjah5YYz3l
         dLuTe5Qmlz3YKNa+g+AVc7z/jjSpu3fBu6Ykqg8ZE2KrYxK0JSxSwhs8xl424K1nMjVe
         +y1A==
X-Forwarded-Encrypted: i=1; AJvYcCUylNL6jOIHBMKaIKH4vbc3A1GwODW9D8h4xza3aJCqIHjZx1isag9bahMk6KZTs10mtox/mg1Jl4sY@vger.kernel.org
X-Gm-Message-State: AOJu0YxD3bEwLxgk5kQQ+NkOREq3NuMG7AN2AhanppgMgIqoTggkMRJi
	1FC8SnTZex0OBhwnpuOewdzo3lHxeG6acied4Nru9+eb2EL0VTpG2yioUJt9uC/GWdU=
X-Gm-Gg: ASbGncuH+Vo7XimwH1Q+scilAzDSHZ/+k/J7mt/mtQLY1UCSKW2yCSRIs1dEzI6h/Km
	p8ybn1WWKlvNnJuEh2OJWKNu/oVCL6U4TiaMyuw3i84JX6e3pwMQv3lsOupnYytpBMJsGD9NeCO
	jrW4T1sXUCWW2cQIQ7yHGPvnw5b9PI3JD/5F/dEHOQopKPIYFuVJUaLL15duPHKLQg0O3HbmxvA
	Ax3qBDNbKW1XyyYMBBOgZh9OuOcMyUJkTsz6mGQzolMyr/zsg61McYPGeX7sAUnQZ6i0sQjcq5P
	70hLrHxnAwCFCkSiBmcXptjpOGPRVqI4tmwwY/y7+mb0yvLwEB8x6X2VKnfpLWBGsiNcxsDq9pX
	IA7hPaLETRk2MLbEL7UoYcXg1FIQN5gwway0F/P/9Jef9PoIyR/hMbJ4ZHK9wIYE02T8ct2n51A
	ZohQb5Y6NIMXQiO2VngqXqw8ofq9hiy8wcF80HsTs07CyfnhYZYUNY0WGZWgZYUFNuwzGqyl0YM
	Q4=
X-Google-Smtp-Source: AGHT+IHv7bNkL/Bm3DVHJJzKvLokKqToRNVyhlC2S70s85D3t3Bilce6lDaE7bZNFEYk4zHC7lh/yg==
X-Received: by 2002:a17:907:2d2c:b0:b07:9c13:153e with SMTP id a640c23a62f3a-b07c353e3f8mr586848266b.2.1757755635504;
        Sat, 13 Sep 2025 02:27:15 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b33478besm551705766b.99.2025.09.13.02.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 02:27:15 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v2 5/5] dt-bindings: touchscreen: remove touchscreen.txt
Date: Sat, 13 Sep 2025 11:26:55 +0200
Message-ID: <20250913092707.1005616-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250913092707.1005616-1-dario.binacchi@amarulasolutions.com>
References: <20250913092707.1005616-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With commit 1d6204e2f51f ("dt-bindings: touchscreen: Add touchscreen
schema") touchscreen.txt is no longer needed, and since no other file
refers to it, it can be safely removed.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>

---

Changes in v2:
- Update the commit message
- Add Acked-by tag of Rob Herring
- Add patches:
  - 1/5 dt-bindings: touchscreen: convert bu21013 bindings to json schema
  - 2/5 dt-bindings: touchscreen: convert eeti bindings to json schema
  - 3/5 dt-bindings: touchscreen: convert raspberrypi,firmware-ts bindings
    to json schema
  - 4/5 dt-bindings: touchscreen: convert zet6223 bindings to json schema

 .../devicetree/bindings/input/touchscreen/touchscreen.txt        | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt

diff --git a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt b/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt
deleted file mode 100644
index e1adb902d503..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt
+++ /dev/null
@@ -1 +0,0 @@
-See touchscreen.yaml
-- 
2.43.0

base-commit: 22f20375f5b71f30c0d6896583b93b6e4bba7279
branch: drop-touchscreen.txt

