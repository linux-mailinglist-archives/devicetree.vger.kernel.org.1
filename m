Return-Path: <devicetree+bounces-223322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF6FBB36F5
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 11:20:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0BA4168CDE
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 09:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA2D30101E;
	Thu,  2 Oct 2025 09:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="Fg2B2T5M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27363009C8
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 09:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759396824; cv=none; b=j8l56jd4ZRMIjwOYoIQ5y0ukH0QA+F9DMHSFKuO7X3mYcWTNb5M0/PhdNqNsmFRALC4d4aUdnsTfxGoVygghKP4K09vpqgZ8dGYFslR6uSBq5A+GwgNv9EqcYlBKwkCsh3UMK85z5xJ6fR+AMLXSy3Eq22Fb0aO3q+jNeTFj7rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759396824; c=relaxed/simple;
	bh=gIPaH2DDPr2930UcEfosjH7vdWnt++jHkhnT6tAzaRM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BYU84F0TseI73GCdw35uv1KrmN5pWdsjvCYdlFIanWKda7yoC0oPPglJpR+PjHJBQ/oCTaYZi3FXUjHmPqpyhJQcAl3xtDzZI7R731TSKstGO5Jq1+MSZp7J1nWy8gTGPBuZa/FOO/+Du7G1PJ9GrI9pi063a0fD7FtXKMppf18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=Fg2B2T5M; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e2e363118so6699605e9.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 02:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1759396821; x=1760001621; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bj9Abm1mWzloyTs0H8611oSscu6f+O7YderAfm+LnKM=;
        b=Fg2B2T5MZnxn9HGySGlsq6qpSH8PPiS4NSlFDlRk+cOl8C9f35ilpGzPaocLm6f32t
         j+UE2t41P1X4aMmEQHF/+IG/ubgtfeDMYYikzHCJb/usjiBMk0FxYz/GuQKCYl6zcVGZ
         cRWxJMyEiIqBkQmRVBrKAhIi1vbavO3CFhOxd4ejHLgxBYHRPnET51KAxPlHvf81SLd1
         /7+I7QEC6vBQkuHMnsvVig4sFS7kP7yOV8WNTxnrFbw9RurDofoSR6Z06rJxfbAFt/6y
         frx6mLLKiTyKaau0qHTa2nUKsMaA3NQe7dU+rXcTWN5hdvCASZxfP5QrmTaBQNouV7la
         yoRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759396821; x=1760001621;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bj9Abm1mWzloyTs0H8611oSscu6f+O7YderAfm+LnKM=;
        b=mh9VjJQnueFKeXNoqkHZwVUrWA9SlnYJlu4iWHP1PBWlEqQqKTEZuKXprXTOWH4gC3
         COnkr4iB4RgtzS0ASIsIJ8OMeyOsFaFr6tkDqM0GHMDwe0ReO06mFs0LNTIQmKscaXK4
         eSbbF07Dgbu+V1ECKbGZDdAkPF1eAqphBqPUb98VgwBMRHhMIjQsZo+lr3uHwnla6g6h
         q2/9+99drAjil5loDMWRR7Nfo1/jEuXoHscucUp+gkIoedpJPollHa0A1zlZKG6WBaET
         FV6tM96v47YKZtJC+hmOpM6YADf0dC0t9cpzCQrVNKaoQFDoaqQzkUwjBo/so3X1Gbil
         bIUA==
X-Forwarded-Encrypted: i=1; AJvYcCWOlUU2IN3p440VU7GtUQTvZmDMVeMgmnwcRrE7yFonOOsM7fNbiUUviVA8S2BrrzaI5JcUr0EY4m+q@vger.kernel.org
X-Gm-Message-State: AOJu0YwhKkdbOEBlRukjoi+ZE6VjWK88b+gROzYU9XcQ1QEJUhFEyS+R
	Q2f4uqqTxj12wR3k6S+43oWgnRTmEMC3U7HQ4qs0CtIUqdL29/TqZNVSp6pK8qAXL5M=
X-Gm-Gg: ASbGnctc1XA2AvszcGprMq5HIX49DL5Ssh4AMQLCRKMQjjYG3Y1uzXJlWbuU5MAu6oj
	RupkqGrL0t9py4iLzjxpEYeyuSIcmNX+9ELBloFXaErt6jFut42vyGxYeB+cfSMguOE/B0TIeXB
	rXs5whJf6bw1dzFuw7GdACL6eRpDtGDCSS767ozMG56Cg3NnrJ1GgKbn7Nj6SLQan36JWP/o5xL
	ubcnXYIkxFfW9jbdd/C9Ti4s5ugBR7U1fTef96MvRSY5SUxfthYpbUEQo4xT2wf+9faC7ASeNqq
	znvL6K51ThBUwZ4yXUEAZOQuNdClZLIFBTeLC44bGVRJRUO0jepjcasxdELCwVyuYW+qvYbsAnv
	ZWQhV+EhtoDbdGbSgCwPDAiVIMEHzRR57SDczdItbMmnOzfQcaSShf2v9xzFO
X-Google-Smtp-Source: AGHT+IEscjxe8qX8+wcxvs4YKWYqZeRUzUgazCwsVmzKHp1vbho1fwFonw8ocJOeBXrMnKFrCWJp7A==
X-Received: by 2002:a05:600c:83ca:b0:46e:4912:d02a with SMTP id 5b1f17b1804b1-46e612c0f3fmr45077015e9.23.1759396821032;
        Thu, 02 Oct 2025 02:20:21 -0700 (PDT)
Received: from [127.0.1.1] ([2a02:c7c:8a3e:8c00:3430:5fdd:d596:adae])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e6918bdebsm28958795e9.9.2025.10.02.02.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 02:20:20 -0700 (PDT)
From: Harrison Carter <hcarter@thegoodpenguin.co.uk>
Subject: [PATCH 0/2] dt-bindings: leds: Convert to DT Schema
Date: Thu, 02 Oct 2025 10:20:14 +0100
Message-Id: <20251002-ti-leds-to-dt-v1-0-1604ae333479@thegoodpenguin.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAM5D3mgC/x3MMQqAMAxA0auUzAY06KBXEQfbpBoQK20RQXp3i
 +Mb/n8hSVRJMJkXotyaNJwVXWPA7eu5CSpXA7U0tCP1mBUP4YQ5IGcU69j6wbMngtpcUbw+/29
 eSvkAJCic+F8AAAA=
X-Change-ID: 20250924-ti-leds-to-dt-ebcdbf5fdf22
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Dan Murphy <dmurphy@ti.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Harrison Carter <hcarter@thegoodpenguin.co.uk>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759396820; l=811;
 i=hcarter@thegoodpenguin.co.uk; s=20250904; h=from:subject:message-id;
 bh=gIPaH2DDPr2930UcEfosjH7vdWnt++jHkhnT6tAzaRM=;
 b=ijRptHzk3y8rIOFHY6uJGzszf1BVhbFIbDN3kLyr/S1OCA+3wibHk6MVQCqJTjLkvxTZniekk
 hJHWDxX2nQBD82A4cW7wohwAtPIlHlPFn5wjz5JSsoxTaZljuSYBiaj
X-Developer-Key: i=hcarter@thegoodpenguin.co.uk; a=ed25519;
 pk=xn5ghTMMWQniDtZih4xwKCTAaBHDozflTmqNKtaKo6s=

This patch series aims to update TI's lm3532, and lm3601x to DT 
Schema.

Signed-off-by: Harrison Carter <hcarter@thegoodpenguin.co.uk>
---
Harrison Carter (2):
      dt-bindings: leds: ti,lm3532: Convert to DT Schema
      dt-bindings: leds: ti,lm3601x: Convert to DT Schema

 .../devicetree/bindings/leds/leds-lm3532.txt       | 105 -------------
 .../devicetree/bindings/leds/leds-lm3601x.txt      |  51 ------
 .../devicetree/bindings/leds/ti,lm3532.yaml        | 172 +++++++++++++++++++++
 .../devicetree/bindings/leds/ti,lm3601x.yaml       | 100 ++++++++++++
 4 files changed, 272 insertions(+), 156 deletions(-)
---
base-commit: 76eeb9b8de9880ca38696b2fb56ac45ac0a25c6c
change-id: 20250924-ti-leds-to-dt-ebcdbf5fdf22

Best regards,
-- 
Harrison Carter <hcarter@thegoodpenguin.co.uk>


