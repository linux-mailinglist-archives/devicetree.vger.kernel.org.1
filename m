Return-Path: <devicetree+bounces-248834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A59CD61F2
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C24013091B4C
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 061932D4806;
	Mon, 22 Dec 2025 13:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Nrp0u+Si"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4732D781E
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766408838; cv=none; b=svfVsNyIaZP8DURfRviQ6OoQUskI0a2E1rsDhe+nWvvJUlf+sGlAupFGw3lMdEmMp4biSzTnxBJ6BNOLRojpB3Vuy39mWLNEi3cRxJnS8YEdtsNuM0JUeAZmi6Mb2zLMUQHpwh9lV5gqKzvYGjjTAcTvif0Pp8R2/g/FrJ0arpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766408838; c=relaxed/simple;
	bh=OBOvbsWkB4JX91DLbnwWud+gbnMSideHZUoDSFjfq0w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VxhUz5IuL3BWP8gWzOUleCTj8QN3upEq3JjD/HtNpxeRVtzptEE1b5QYgmaJrWzBSHdA77kExGdFe2T82erOKky8epI9HZ4HplwcEDqWPV+JFI9Xus1tGjAofvziZiuldSUwH2nEjZesemkCMyYtTraKnfvBQXEkA81r4w65INI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Nrp0u+Si; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-34c3259da34so3902045a91.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766408836; x=1767013636; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YmSKFLQJJOcL/UHZMWYDxU5qPoFtgd6eohGiohbnOX4=;
        b=Nrp0u+SiBotvIt80Mjpgc+E6Jl/6A+i9OBLJAgksxBSPFJ8V4Pnf4/fXEcNMx6Q0C9
         vfL9FmM5eaNeM+z0Y4hYHsMh3hR8JYiJf41PIeVXPMT9byKCZfhI3eAlmdxuxfCBaVzD
         zvEXDIJftVjbN34hX3QWtbhuy3zshYY3tgyROXBaloK+p/0dxW+pAl04o1wF/EP7LHgY
         o1xLklcR/7+dj+aGz3VFxOHRk+XkpiuHfcKekxPnzHfwVv0yKQPXTCxSoRgC3DrAAyM6
         2GQ4936lwbXqlPMzmM0rkI5V/k+RMPKq7xXXu5HZB/vLAzoqF23rqMxraghNjqcqtuTZ
         DDRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766408836; x=1767013636;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YmSKFLQJJOcL/UHZMWYDxU5qPoFtgd6eohGiohbnOX4=;
        b=eCgtHsJVVKh27CiGLYuoVSvOdpVI2sb+JvzQ6Y7u4tQIH4Q1BaIbyc5UmddAOuAsTb
         kFgscHR8VyVcMmaFpOieTEZE6qFQ6qdFoUoYnaa3LQP0StJ7jY+Pklezyr5WsVldI7w5
         LunZT+BfTyDg0M0Yr9F8KK18tquj4icIS9qDQUQ61j/22hsKSs1YL5mFdrHQPJEd/kfd
         d5Cy/MvVdxzGBqQtSYo/wHHIU2sXv87yjtX5O0E+hBgYC4LyGLD11W80yFhmNJeaiL1G
         uIDs1Ivw6oYPneIm3fxDmxXmpIOnyI0XaZoqI1uF2M7q0FnAdzaefL7maEWcIQGtuHZ4
         mylw==
X-Forwarded-Encrypted: i=1; AJvYcCVh8pgL68fscN6NHWndWRy0mM5IEHQ3+FWBK7x5yAsvTPE7YE0TZurbkLQ+eLyyMDwJA6AnbANwGxO/@vger.kernel.org
X-Gm-Message-State: AOJu0YxC6PtFDF2rdHJJq6mBvnACJ3E76lfA9/8QecFCT8TSYtayHK83
	xL8N9qLE7O97lUAYlrL0E2dJB7FVcwsTCTh90RyeKs9tnO5dOmcNVPu5+S5JvgRIuOU=
X-Gm-Gg: AY/fxX4Jcd9LeZzNwm6MMZWhA9xK+hCWT+XV9M0+Fer2JKMFz4N/Mjeljd8nQINi+5a
	vgZUlOCYjmVRDwdB3Q7Let6CUjcgkPGemaa11MPCMrFVeE3B0z6mvSS2nxGgu9waIFqTqSu0ovR
	sW9g4esJHqai0C/XK3F82EFJOuVIQsTJ1mrJVIIDVZIXc4z16rCJb7v9JrxHg7ycB92WbD6pO1t
	vQrzf0xiyf+WTOkVfzJXJsB4XreVLBsU6vt5dljPmp9hYjJOF5GE0qGna6LUCoyArl+Xrdva5JN
	J7Df127UQ1L0Gm/GSyg6ZcdU2Lb6FQEMluS3XDcq3yFcZJLXjlNsuyqeTiPWwobjUjXmKaU+ahK
	qjyYk4+Q2KuwYjsDXLDM66jiyzZk0YDd3/zKd4u3LKlz3qOuavlGEcmbmOE7H8GWEm6okb3LZCT
	lrwzoGtJ4dqYPb1FXi3nQR5BFLyBHLvk4Qd6f1wvwftA==
X-Google-Smtp-Source: AGHT+IErkmtgUVNEtdp486aXALGkmaBg1W9XZAspgQDXTKlho7yIRKAUKoJehNC2P2iVciq0Y+zRRA==
X-Received: by 2002:a17:90b:4f41:b0:340:bde5:c9e3 with SMTP id 98e67ed59e1d1-34e921b73b5mr9241301a91.23.1766408836378;
        Mon, 22 Dec 2025 05:07:16 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::402f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70c932casm12970405a91.0.2025.12.22.05.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 05:07:16 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 22 Dec 2025 21:04:15 +0800
Subject: [PATCH v2 05/13] dt-bindings: serial: 8250: add SpacemiT K3 UART
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-k3-basic-dt-v2-5-3af3f3cd0f8a@riscstar.com>
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
In-Reply-To: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2

The SpacemiT K3 UART controller is compatible with the Intel XScale UART.
Add K3 UART binding and allow describing it with a fixed clock-frequency
for now.

The clocks and clock-names properties will be made mandatory in a future
patch, once the K3 clock driver and device tree are merged.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Add Conor's Acked-by.
---
 Documentation/devicetree/bindings/serial/8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documentation/devicetree/bindings/serial/8250.yaml
index 167ddcbd880058b6dcea9ce33bd814ff8ba6b0f6..73851f19330d7f9fc254efcd32b5977feada0b07 100644
--- a/Documentation/devicetree/bindings/serial/8250.yaml
+++ b/Documentation/devicetree/bindings/serial/8250.yaml
@@ -160,6 +160,7 @@ properties:
           - enum:
               - mrvl,mmp-uart
               - spacemit,k1-uart
+              - spacemit,k3-uart
           - const: intel,xscale-uart
       - items:
           - enum:

-- 
2.43.0


