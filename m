Return-Path: <devicetree+bounces-133150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4F69F9666
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:24:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1EF8188D2CC
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7CE121C9F6;
	Fri, 20 Dec 2024 16:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="WKG3s9Ca"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F2321CA05
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 16:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734711703; cv=none; b=lvixwfc3RWZGHATDbjmMgqRfdRQkcc04TZNGb6/tw/uNIu9BUYIXS/10qEEY+/lG1N2qE0celWD0+kdsSGT5UoHwfefyBzTDi/1p/NQJ21V6ttnuYo738tGLS9LK163Pwp+S5wFMS5KF6x9g/pk5+7Mse7gGYZ2hUWxt8SiR9DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734711703; c=relaxed/simple;
	bh=pXK+2+/QfGO0TyFvojht0JPWl8TlZGLLNkgaH46ud5g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DfVBMWJmBxUSy9sT0QsIl480jPa53ffhk+fqaPRMWke+1dugvFTnMFMMOCd3Z2mLWy9nEDI00ev8sDWGx+ubgfXby2BPwsKYvqvjvdG+JVkwwVX2cuJ4R4UblRuMWNMdjEOttCv/7DBhPx71lCKqcM6BypdREFsGUX0apenIiAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=WKG3s9Ca; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4361e89b6daso14636785e9.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 08:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734711700; x=1735316500; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v2BNxauvgR86wVgxl1iZjGE4qN7o21GTD/GjGRmEaXA=;
        b=WKG3s9CaGk63UdGjCS9EK+gXlHQMqvqj1f0M1sK5BV0RHMlq6vbmuXpW3Q5n/8CJWt
         2kd/J9qyd2yg03/1ydt6ZR3hi3Nt/Xfe4IVDq71YPNuOzBUVfXRGDx/0rP/D0ahZm8w1
         isRMs3cX8JnFL3/fXyQrF6ws4U0gnYPRciIkRcViKCoNHgRDi6GlZBqVhh3iKHkuMX8m
         Qr98R6PAJIoYfw0vlDK4VQrL8FumfAraMhugzm0dATNvxF4IABPYTnnv6DumM/ADFNP2
         1WNN3q5bMVTz5dhB3eWLDYA/aOnmZCRy2iUTQEQrpz5PlGRzIUU5NqW/uOIR5L0Cr4Kw
         E58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734711700; x=1735316500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v2BNxauvgR86wVgxl1iZjGE4qN7o21GTD/GjGRmEaXA=;
        b=Wwnrn2HKxEBql30d2wfnRZrQ/xzIu1k01T6aBiBynNfT3idi6KHs2g0VuCFBXOOtF3
         Y9W8bLE1xnK8nNO0LdoSjWMIsEBTIYjPNsPUJ5945495nMK8IMIHHOgrrUGRU1aA/l3L
         DkbnUdahQHmUBv9y17gLznaz1idJJDVMmqKbYhRgL5yzO6PNFnxML5daf4uUfQYz8VwP
         M6UyEGG+s+oC36JAWeuLEwMQVV3Ey7f7ggIIAUWnLJ1QP8bvUuAxgLaWeI5w7UdepmJD
         qb9enQCAKT8LTfHcu8SgQ7y6RYy6yBCxGJi+STr09uOqyFbmQIU2lXgC4+gUSwP40/pv
         OvSA==
X-Forwarded-Encrypted: i=1; AJvYcCUdO57wrjQ6ENb8+SAIl+L692wZYe5gYYvQTrIh77x/StVeo2BtlvmxojKiaykwj4vWruGEj4uwr3Qy@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2QZj7NjSAHPmw6V5PWkGKACsUZEMOc6BtuN8mxq0mqZtiXEHU
	E6kl97AGq7xDwcHFPc7Wo/+q7Lc5T+CnYOm4cvHt8dSyl6hWBchCFySXgewQs8U=
X-Gm-Gg: ASbGncvQc3UOyA7ioUAGYC1R/EHpWnRj5CeLaerP/b9WoqoLZqlj9EI2+YRwS4VQahj
	/jzsduEHd7R9fS4B82DnaTACXhpDPbcmMv8IJUflDWLFfB5bIJ5xe2O3XnzU2KSnxrNiKvwGmc6
	YNFTQQryKpQSFUsqK+zA9X+l5Rn7A/qRYeFDhckU6dP5JreT+ehM+mfXefUL3Gv+f1YclDgseVa
	ZHpI5WeJpN0deMOVM8oGb38Z8ZY+SwrDQGNtI4mofBbbMHR
X-Google-Smtp-Source: AGHT+IHZKwXSt3EtkR4/vJsXBDTgJju7+F4kSqL+22sBCcY1J09BA0FGI2cPpS1gnn5GDXEf6EXehw==
X-Received: by 2002:a05:600c:138d:b0:434:ff08:202b with SMTP id 5b1f17b1804b1-43668643173mr32952625e9.12.1734711699939;
        Fri, 20 Dec 2024 08:21:39 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43656b013e1sm82824045e9.12.2024.12.20.08.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 08:21:39 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 20 Dec 2024 16:21:17 +0000
Subject: [PATCH 6/7] RFC: v4l2-mem2mem: Remove warning from
 v4l2_m2m_job_finish
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-media-rpi-hevc-dec-v1-6-0ebcc04ed42e@raspberrypi.com>
References: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
In-Reply-To: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, 
 review list <kernel-list@raspberrypi.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: John Cox <jc@kynesim.co.uk>, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

From: John Cox <john.cox@raspberrypi.com>

The Raspberry Pi HEVC decoder has a 2 stage pipeline
where the OUTPUT buffer is finished with before the
CAPTURE buffer is ready.

v4l2_m2m_job_finish allows us to do this, however as
the driver handles VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
this warn fires on every buffer as drivers that hold capture
buffers are expected to use v4l2_m2m_buf_done_and_job_finish
(introduced with [1]).
That doesn't allow us to handle not returning the destination
buffer.

[1] Commit f8cca8c97a63 ("media: v4l2-mem2mem: support held
capture buffers")

Signed-off-by: John Cox <john.cox@raspberrypi.com>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/media/v4l2-core/v4l2-mem2mem.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index eb22d6172462..325a518beff7 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -490,13 +490,6 @@ void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
 	unsigned long flags;
 	bool schedule_next;
 
-	/*
-	 * This function should not be used for drivers that support
-	 * holding capture buffers. Those should use
-	 * v4l2_m2m_buf_done_and_job_finish() instead.
-	 */
-	WARN_ON(m2m_ctx->out_q_ctx.q.subsystem_flags &
-		VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF);
 	spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
 	schedule_next = _v4l2_m2m_job_finish(m2m_dev, m2m_ctx);
 	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);

-- 
2.34.1


