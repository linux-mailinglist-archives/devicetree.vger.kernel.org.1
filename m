Return-Path: <devicetree+bounces-134945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7869FF012
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 16:02:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BC0E3A2EA6
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 15:01:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93D31152E12;
	Tue, 31 Dec 2024 15:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="EbccG/lo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CEC28F4
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 15:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735657312; cv=none; b=IA5o++t93/wAYD8w9PdPxhI26liwRZI4nKP8J0Qr8f72cQRUbJDnRztFdU7Cv5qLBIX4hTiv2NhZZkowy/rhR4QcPGWManHZv6ViiEXFD6gYeqyE7f6Wr55eKCutIQFtalUDTnc/rz9pbynVtW9bJbt+YmYOr0YDMX/bT4O0Eok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735657312; c=relaxed/simple;
	bh=dO6CdgTSt/+zcXVhJ2Uz5ywJklO9Ho5WIRCjmPAxMTk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=og4O+rd+T5jZ7DVKUxDoTFuDwklRbMf9XYp9x+p+TLNJwiazLKUqYqg4kADVqvih0+DPsIBg/3OqTFaHc3OiwWYM5gU0wgVCVT8p74dVYEBKTUn33jEBduDft9a5Yg/3JLPatEP3Xh3KmGACJPhEb969T+HxpCz6RxGsv65SyXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=EbccG/lo; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa684b6d9c7so1673205166b.2
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 07:01:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735657308; x=1736262108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TfpchHbExO0XW754q8DbjVQ1byQNlSKH4QhxgnPxvYU=;
        b=EbccG/lovL437LA7t63hWEC1h6UiI2pyUUTvdSsF+knZ6rsFNAwHvG2s0RuTleBUh6
         aVzQowLA70GZCBVxmNfZyrytwC2CVilwXSnIUUd51GJZeB1V9JAeLflEl7YjFA08xnbz
         ljUoF5iEkB+pUsM3LZC+D6uMaTe3+xvr7ly38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735657308; x=1736262108;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TfpchHbExO0XW754q8DbjVQ1byQNlSKH4QhxgnPxvYU=;
        b=kjR6irB0zixdJve1LAKsl1q/uf2OF519nRwUdLJaCW/j6r73bvoiHjB8SSwwFIRaRG
         RxOR5nBE857ZWvyx4haxjxl1cg5a6YYHLdKgDzlLg7KcDvccoVCzorVg+zowFnj+p4dH
         oFrcSnyacFNqy0Q4u5UkkGdLr7wAAZNb4GdEYZ8AYMUO0k94mARiAC6FpqZsu1nQveqt
         0Sy4hFLlGvO5Qq9Ch6II8VHpV7gO7AuVibWtJOeH2UA7cO8lowQNSjmQHj2K6oDY5JCy
         0SaVynvokxzAK9DkVxO+kexnOgRNb9NiVWlEks4x7SH6iT6L7zRB/qh0o8JYWhKHE25z
         vBrA==
X-Forwarded-Encrypted: i=1; AJvYcCUGocQOz7DPwjuamrC/KusI9MyFZhkowxNkaajuOZywpB9LrM5XFhXy4Kq5yDtoVK1IIO3DkTimfP1l@vger.kernel.org
X-Gm-Message-State: AOJu0YxlRfJ0c2TtY0NYGbOypLgk/eRt0AAIYCLqDgJcIjZCcO7kyo1v
	5FCglsJy23oO+YNdzG2h1tSXEw8lRIfiLPiBmkzNMzEdTcEoQKqt4iA3BNmxb+k=
X-Gm-Gg: ASbGncvddxAlDbsEp6nHFPBHT9pOUaAPfr1ME0WZ1TCjN9Ljor0Wl08TEt1MRS10YDD
	Kf91c67ZzYPV6Y5s2es/K9YViPSYjd2KW+4zntgbRNY/Y0FRE0oSX86HeOFHJ/z0WOFkIAofLzu
	RCCFXUcKapcBBfpC/wCywbaKMUnH57LGk1FmuvU4acTaBcCJ6QaWlL9le3QSispDIyzRqn84cAT
	e+uB5a+Wus+wwgTL5LUbfIKSBOFLKyUjWX2ODLx+hBNDuesG+YmJiwu/kFMD0WVZaQ3s+hOmqYT
	1je7hDrHa8CHUzKqyU2q3Q==
X-Google-Smtp-Source: AGHT+IFTYNVf4PANRTY/pECtc8/bJhsdH1GsC3hZP7+Sn/hJKwsBL1qJz0Y+j7y+5zffKEeOjC6D9w==
X-Received: by 2002:a17:907:2cc5:b0:aa6:8676:3b33 with SMTP id a640c23a62f3a-aac3464f929mr3338245566b.47.1735657307900;
        Tue, 31 Dec 2024 07:01:47 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e89598csm1575905766b.56.2024.12.31.07.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Dec 2024 07:01:47 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 1/2] dt-bindings: clock: st,stm32mp1-rcc: fix reference paths
Date: Tue, 31 Dec 2024 16:01:40 +0100
Message-ID: <20241231150144.4035938-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The path of the two files was wrong even at the time they were added.
Let's fix them so they can be correctly referenced.

Fixes: 722dc8a1d5c8 ("dt-bindings: rcc: stm32: add new compatible for STM32MP13 SoC")
Fixes: 20107d7328cc ("dt-bindings: rcc: Convert stm32mp1 rcc bindings to json-schema")
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
index 9b3aaae546cb..ca75b1972470 100644
--- a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
+++ b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
@@ -40,8 +40,8 @@ description: |
           = 0x180 / 4 * 32 + 0 = 3072
 
   The list of valid indices for STM32MP1 is available in:
-  include/dt-bindings/reset-controller/stm32mp1-resets.h
-  include/dt-bindings/reset-controller/stm32mp13-resets.h
+  include/dt-bindings/reset/stm32mp1-resets.h
+  include/dt-bindings/reset/stm32mp13-resets.h
 
   This file implements defines like:
   #define LTDC_R	3072
-- 
2.43.0


