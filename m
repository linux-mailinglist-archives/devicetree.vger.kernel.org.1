Return-Path: <devicetree+bounces-179007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CF9ABE568
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 23:02:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6B934C6F80
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42353253F16;
	Tue, 20 May 2025 21:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZfjPm/J5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8DB1D90C8
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747774881; cv=none; b=GJdj9YhliCUG/Lv0ukyEz3R6hii0muAl3pcAhfR2l5FtJftdTfP1LK6WbuejYnzix06/O/hwzr8b1beMWhAf6PaHGJN67V6RD/3A7H7sNkeyngndAWClIgYMWSANfzqMfMVb+xVk9VPsLvsze0GCNG5LsLQX5Dbee3mfyx9SGXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747774881; c=relaxed/simple;
	bh=hFJhOZb2KYc99TdUu5lHL7z+CYiP5EKAGEds0BI0i+g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Kptnd/On6shwY7nYF4vrB9v1hby6pNGLHIZ1H0//54WCbqVw3EQFrq7C1WGrTSBgmb3lP+w7wYnOs8DI9ejZG3DSB/5Yi+/UsErZc19tQcF6kUNIAuZj7vcz8r4jaf9pOHtogW3K4yBvwfHPDrKmKBVkPXMmwfHOeyVD10/5mGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZfjPm/J5; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-2d4f832069bso2226245fac.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747774877; x=1748379677; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kQLjZcAnXXaS5ho2DdOLPHVtQHkOQ3Gsnqmc9n9fclM=;
        b=ZfjPm/J5jnFRDs6BM27vzshhg/37uLsj9lGq9SA0QS/e0PfudXpVN1Jk/89S4fEKU7
         AtUBxyIPcXUV/zZsD5PxXYAyRGH5vVZfVJN6ncr7LomZtAw6zsrmavlEDoug5mUQcOVX
         9N2anUp10F539+T32cC5TQ5dZGSr/NHOTUgseY72MAOcG8UaCbjwObFx6ayvNWk+aGUA
         42AbaAzZuzeKmEyfpCG9dh3FmlbLl8K+sxs9Yn0261VtUgZ4+4TrluiAQqQ56vAQl+UK
         d4MN7LACdWEEL8chhtR9AHbtHc8WydoJMgLnT7dqE7JdmsVcQNqk5MgbuDuwslKddkDS
         hS2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747774877; x=1748379677;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kQLjZcAnXXaS5ho2DdOLPHVtQHkOQ3Gsnqmc9n9fclM=;
        b=sEgsAlzVZs1b0e+NT0oz7cHKCPCGxSXhH/aXmuXLAo/fYJpMQXsj/YOyCOANYkQ6tr
         D9Fe4UHzXBzksjwfvrXZoel2EVVoWrsW5UhMhpgX+aEhrvWzAWTMh33vfPi497HLsVY/
         zuNjP2vqkcLdH3DsPTrqBFZ3r5FpKhs6D6IwtIzo0VkjfB9fHqjsG+UTMdVQ6cD0FI+6
         OqiCIKqQPgicMPBtWNwuBjfoj/rojXhMmWh+SFLt0vIke+0npq9U4gIacW2dfpS82U5g
         7T+5CfmRIZvQb86r5HJmHHvOMncc0lyqnhTcfTmUn6wXOSj69FGZeC9tfHgGSbzfH0M1
         ufRg==
X-Forwarded-Encrypted: i=1; AJvYcCUy2N/EMZAXipa5SoMoMgC3HZelzD6eUMszyGBhtz8u/5oXpTFA/fNDGmEbW6S1YouM7quGjbalWJYq@vger.kernel.org
X-Gm-Message-State: AOJu0YzfiI3D5tNeC3wM2bxXoRFVliEtoM2BHNLd6HOmh+NQ4QkFbkFo
	W/7AuhZ8Yy808XZ/5JDBY38EtvBX341lPDpxsczzESbYu22duA0I055IFnBy80jwcmI=
X-Gm-Gg: ASbGncunczuwwAxJyQGYLmWdek/qhn/JqpSU2kDkhqh2vEgVuch/4LI7EiqPWL6WhLU
	/iZ6UOY/F5+Hj3dPcGLhsgLiX/7cofwg2jYDdc52khwThezPb1IH1uxuF0f7fE8CdwmIACdoOzR
	W531ubuP5+SbxAbdtHVvAEwAP6vjGVWyh+agefiYNZ5Z54WtG32RSQOcFjG+ZQBuNeGEOLrMep/
	aoCJp3jQh5m0WaVpbyHJreR1GZSzYl+suMiuPkIqw3iOtaMz4hxdL/zX1LIuF1WymypmIpzmJd9
	nhkU3oW8LkkfD6Tq+V9yy7LoLnIbsffddaFeteY5lYAdXj8qKICuTRTr
X-Google-Smtp-Source: AGHT+IHCaNRz8jgNzTe7X02HLlceq96ofFY+QEcp3cSOZO+Ea2N9Ngvuwc4vEBlOvjNHpM35FTfYgQ==
X-Received: by 2002:a05:6871:8081:b0:2db:f81e:db98 with SMTP id 586e51a60fabf-2e3c1e9281fmr11839606fac.30.1747774877028;
        Tue, 20 May 2025 14:01:17 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2e3c0b2e1a7sm2348470fac.48.2025.05.20.14.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 14:01:16 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH 0/3] pwm: axi-pwmgen: add external clock
Date: Tue, 20 May 2025 16:00:43 -0500
Message-Id: <20250520-pwm-axi-pwmgen-add-external-clock-v1-0-6cd63cc001c8@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHztLGgC/x2NQQ6DIBAAv2L23E3AilG/0vSAsOhGRANNJTH+v
 dTTZC4zJySKTAmG6oRIX068hSLyUYGZdZgI2RaHWtRKKKlwP1bUmf+cKKC2Fil/KAbt0fjNLCi
 ebeNG6zrRj1A6eyTH+X683tf1AyQkdZRzAAAA
X-Change-ID: 20250515-pwm-axi-pwmgen-add-external-clock-0364fbdf809b
To: Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Trevor Gamblin <tgamblin@baylibre.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1285; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=hFJhOZb2KYc99TdUu5lHL7z+CYiP5EKAGEds0BI0i+g=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoLO1+HR1LfRmxZyAO7NhveFiE4LPjQiKuNkNUd
 vRwQOVK+WKJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaCztfgAKCRDCzCAB/wGP
 wNTLB/4qE9N1BaGQSqUtXIzXos9hC8s+6tTa8iABPktn3wJygFb8c/spuZCi5MqJl8OwsbNjpcL
 f1NBd9v3FZ7ic40Bhj5Ys39/lW4jZEwzB8L9Dou9qKkgFcGq8kVui2c4v3olTZjjc5MnArHsOLe
 LigOu1fw5Z6Le2EzSqsCrm3mnsgrAUMMNfgSYWNcZlwOhzfFt310MjPPFNJTiNGa7D6ME+XkHbF
 pwK3ZEdMHuUjo18SbRFBtO14U2EfOnuFBgSgx4cDN8HgMzNK7nZ5lPJofQb3mSiuc3sNFpu9I7x
 Fd9ttx+7gIH0CuE3eSJz6Bb+hxx66EV63IFceqS9vnmSqH2X
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

When we created the driver for the AXI PWMGEN IP block, we overlooked
the fact that it can optionally be configured to use an external clock
in addition to the AXI bus clock. This is easy to miss in testing
because the bus clock is always on because it is driving other
peripherals as well.

Up to now, users were specifying the external clock if there was one and
the AXI bus clock otherwise. But the proper way to do this is to would
be to always specify the bus clock and only specify the external clock
if the IP block has been configured to use it.

To support this, we extend the bindings to allow 1 or 2 clocks and
modify the driver to handle both cases.

---
David Lechner (3):
      dt-bindings: pwm: adi,axi-pwmgen: update documentation link
      dt-bindings: pwm: adi,axi-pwmgen: add external clock
      pwm: axi-pwmgen: add support for external clock

 .../devicetree/bindings/pwm/adi,axi-pwmgen.yaml    | 28 ++++++++++++++++++----
 drivers/pwm/pwm-axi-pwmgen.c                       | 23 +++++++++++++++---
 2 files changed, 43 insertions(+), 8 deletions(-)
---
base-commit: 484803582c77061b470ac64a634f25f89715be3f
change-id: 20250515-pwm-axi-pwmgen-add-external-clock-0364fbdf809b

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


