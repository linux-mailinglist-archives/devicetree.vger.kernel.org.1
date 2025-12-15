Return-Path: <devicetree+bounces-246519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DBBCBD695
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BF253016353
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FB6532ABDB;
	Mon, 15 Dec 2025 10:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="If1nQ4jw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D20286D7D
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 10:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765795871; cv=none; b=fmlsMSBFzkt3RmHMVACelts+e+tDlYwQhOR94XIovQVAASRph21VMyUTCo51eevdPg8UiwfoMEre1bbDXr5LVDKK3mi4t/mFF1HP+uiQd3HGjkLJfyK6kNrl0+mcTpSM6rwbgJpdApnguaXxGsjcPUDCTNAmujvBaDVDiKNGjuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765795871; c=relaxed/simple;
	bh=53C07aiX+KmUS4ZwyUDhunA2al4zK1t48hjSDjLErNw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uFowreu7oJ/42mZ6opPRsxsNc0EQyK7dVP9cjR33dN3mvbaxAa4VvCJ772ZAggJfXVAhMj2bF6qbCD6XQBfNFRM4MFY3uG8++Lvmvh0noyK6+bc3fsOgs+c8qD+7dA8CCK0vAGjzj2Pr/1Z9Bmyd5BTbPr4akEA/eSGL4iyrq5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=If1nQ4jw; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47755de027eso22984245e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 02:51:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1765795867; x=1766400667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=df9nR8VZxWqdoDGlAC2gMzlQG9390TwrDoFTIv4go2s=;
        b=If1nQ4jwOAZPBKTmVlMwwvUIqFVIqAZV9QfHvo/pvBflGwz8b/6pjJLdq8fJ/lZO8R
         UPwA1qO9MV2uAao6FnK2bOqulPgnbCb9z8uOaLYAtRXdr1Lgf9DrXDzeZyK9mpoySIIa
         F/SKjk8GvHly5Z1cjphEyxQPdnsQENPBXH+t73WkN4W0CwtTiyGafss759wV+a7nO8Ai
         6iNreaazj1u4u/aSGWdauyEosweNyJ42T/TqtYnSoW7E0aNMUxbqMVfyJqtrPMDV7MBD
         QaKbC0UnujGJa/Od8YLyV8uv6wSL5ZfjlOFY+cyIvZCVdPNZGmGSJ3WTmmoonNmhBEWn
         X/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765795867; x=1766400667;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=df9nR8VZxWqdoDGlAC2gMzlQG9390TwrDoFTIv4go2s=;
        b=nOyNVaKNqJ9V0p7LEXvFhfFnWDert82P5BWxeOP++nLH32fqSfcc+WbKToYLKtIpAd
         /edW/ekM04F7yro2E4U509p0Jbn78COeeQJ7nGwhoWTQLRlKlk4ZkXhcwXA+qVuC0kCR
         I8D9OZIWVD72weHOH321KAuZTeCaDEIYhYurM2+51+1etyudGJb9NVOyNq9AWW+gjYz9
         BowZs+QtYfRZc1wGn8BnVvOmLc6UWNBPQKpm0d+M1EADDV1cJ3GRDiNF7G2KVPgVnXon
         V05/S/l1Pvjg925FkMZuMQMpGHO+Sl6vUZrDW4M3k15oJkg3IIcm5NKvMrSW9asGuijC
         IygQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXkjPVTPGalppo0TVLOKYFT51yevsUQ3JU3bcpLQ84bpjs/RVBO1B0ad+50KQJEtLrQZO2lUiLlcYl@vger.kernel.org
X-Gm-Message-State: AOJu0YyaMTB7YfSImO6UfHzLSCuxN6AltV7KAtKzitCsGDXs1z8ZgSZE
	d87qT5vAkXna5NjXWC7CRVxiowFl+DnxP43+5R9YGm6dhhnyBwJl5Tnlmx7AOQHvPOifD34gJNE
	w8rDw
X-Gm-Gg: AY/fxX7REEyysHBN8ep0cw1WcGN+pidVgAiqjJlIksjcXRUiQgt6J34RhOp0f50PP/F
	6jrATx2yjRlyEpQlM+jfdWkQeUZnStqaig6Hx984FCpGdNaU6u8c5MrX/kcYJSQV9smd9apVsTw
	CLCTpAUqZRwRHErx/kFhZqKfxr8jNQhP6JcKhXoNzaizO8fTnHPIIOxVOzaWJJqLy48If+ALuHw
	QsGg9T2XC75SLYa3Xikwapig/YftFUNNfzxMG0S8ebameP2wsJzvq4CAHyVy13c2WSrOm+P/zq8
	jJTHXZMYT8W6xGwZ+Ba1q9rGkoWS0/rKhrI1hjODXadtApMFKlpoB0DoWHq/B1hLm7Oe6JYg6sl
	ZIhQNdXlQu+sMzFMMgu4mtR3pWqlNuZxu/MexjFIru0SYvcO6KqTpU5rv13ER68npeQ4pPv6v/9
	ePyh4PFoghGDowj4QPwp7kpsaJ
X-Google-Smtp-Source: AGHT+IGQkDPSiIqBU16hW6pkKLW9N/W+yMzLNnRQRqaDZA+xNXh4rMLXjgTTwvCUQbRtUa5UMQD+Sw==
X-Received: by 2002:a05:600c:8b6d:b0:479:3a87:2093 with SMTP id 5b1f17b1804b1-47a8f914528mr96491215e9.37.1765795866989;
        Mon, 15 Dec 2025 02:51:06 -0800 (PST)
Received: from toaster.baylibre.com ([2a01:e0a:3c5:5fb1:3f77:1837:bfee:f255])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-430fb078e56sm7695439f8f.21.2025.12.15.02.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 02:51:06 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Chuan Liu <chuan.liu@amlogic.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20250919-add_video_clk-v6-0-fe223161fb3f@amlogic.com>
References: <20250919-add_video_clk-v6-0-fe223161fb3f@amlogic.com>
Subject: Re: [PATCH v6 0/3] clk: amlogic: add video-related clocks for S4
 SoC
Message-Id: <176579586619.1510096.14461375977036233686.b4-ty@baylibre.com>
Date: Mon, 15 Dec 2025 11:51:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Applied to clk-meson (clk-meson-next), thanks!

[1/3] dt-bindings: clock: add video clock indices for Amlogic S4 SoC
      https://github.com/BayLibre/clk-meson/commit/29c4f32095d0
[2/3] clk: amlogic: add video-related clocks for S4 SoC
      https://github.com/BayLibre/clk-meson/commit/c78c9dbe2bb9
[3/3] clk: amlogic: remove potentially unsafe flags from S4 video clocks
      https://github.com/BayLibre/clk-meson/commit/4aca7e92023c

Best regards,
--
Jerome


