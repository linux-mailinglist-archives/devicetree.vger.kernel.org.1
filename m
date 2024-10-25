Return-Path: <devicetree+bounces-115782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8900C9B0B30
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:22:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0423A28A131
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA90224418;
	Fri, 25 Oct 2024 17:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="MtwogUUq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90034223A41
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876573; cv=none; b=EXyRHQYuuLQSIubJV7JtKYnDzorcRIKdML73V+vDt0PJjsAhLt7MkwKgzfyIvLFkdO/4hIljA4MUPIqDQRARTEvar+a1OfkxWvxRt6llUw/wV61yIN4wI6OItU2Xn6ludzLPZgR4YMYGHv7IIQEt6VAyburHvf4Jzku5+5PdilU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876573; c=relaxed/simple;
	bh=qbTXGGCtCxRZYwnAfxwA9KNcR/Ug/Ds7SZHmLf1ddZM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u4VdM74SvqadAw9GRpbZP1UywPUYQ7MqgBjzqgDTg6qejTRXWn8z7v2Pc8wLjpEHXVXnZviKB11NQXdqK0JtfCzzM5nD+mq48I6k13pedM1z28wZFhbDel5fMUTLJI/1OQvXBGnLv7zAkTESlFcB7XcK3SUQK4VLZVc0JLJDtaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=MtwogUUq; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37d58377339so1728657f8f.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876570; x=1730481370; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5GUojHTwofpiEg2dwpNmSHs/emdcMv58M0L0R39wpRI=;
        b=MtwogUUqA3LKPuCToQrOZSZ/P1lm5oo9buekMumYqxn7PC4IJWh4Pu9G6uVNGj9InU
         Rwjpb9a2Z8QKF7En17h967fS+MQxxBkqp8VR3C8wsBiSu6IZiIrwuITnauHzmAp/PfIK
         X6G/iP3IR4MHWa3EoO4ttI6g7hFT3KW5EZNWU9gDtBNUoCKr4O/fTYD7NOyyTew7ns+U
         INS7mO7nW4tu6Hawijy+F6elnv5YfTLgzz/cA9fuxn9BOyhBFuuHGLfDkwuKMF+cKfs7
         KEWHdvr//4piPR5gjDpnFAViQnxp+kNseD4jKS1tx0SmlkIKvwB6GiID8Nv7nFnqRJ7n
         9qPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876570; x=1730481370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5GUojHTwofpiEg2dwpNmSHs/emdcMv58M0L0R39wpRI=;
        b=EKyn8t9Eaz1/1HR2QeSv9DOCSt8M7s/J1Oi/Z6QKy0/CKp4OHjLX4N4kCzX1xAQ4LN
         /RPA8oj3g2NEQzdf/NPevcgZrffja7tbeM3ulJydEEQSQ/EGpSKfBW6FO8qeLa1M23ZO
         41i82AO7ttB9WyfvmoatIHWQq+Ia2lqZDTEZrtFhPtyMqw0r8pAhQz/GutNSkpEhQX/8
         ZX4VQRou1uFg//srYQ6YTBW7nOHE2I1fvBZ3gCPO0zuvJ5lyxlshUupd1iFC3nuJc5qQ
         D7t2ForCeph39wnkJZwkYDUZmmlFWDVQuS+PgkCq4PyIhgOSqQYyeNqGJ6qRYApGkTYO
         FESg==
X-Forwarded-Encrypted: i=1; AJvYcCUVVuJbw8uVQMjwchaQdklFlcX9derHYOJet6VX1Wmn2p8tmGvQCp03xjx4TAr4E3871dRB8Ftd7feQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyEMPqyAyW40wm5YFzUg1W8hcHzfhEWCBmSElrIT7fQ8tuK8xAQ
	oEhbe7l8Il4hz++tuSRqvSvQBujwvuTx6bOjcYLPDjo5TgoKWsLsfceh3Yc/Hig=
X-Google-Smtp-Source: AGHT+IGCwZV5fbmeF0D4Xme2MrSeeStQPCABILFJnZu8X/UbpKfmCgg7tE2q1WXeLJuU2hjtaGAprQ==
X-Received: by 2002:a5d:56d2:0:b0:37e:f4a1:2b58 with SMTP id ffacd0b85a97d-38061172aa9mr141238f8f.16.1729876569829;
        Fri, 25 Oct 2024 10:16:09 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:09 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:15:40 +0100
Subject: [PATCH v2 09/36] drm/vc4: drv: Support BCM2712
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-9-35efa83c8fc0@raspberrypi.com>
References: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
In-Reply-To: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
To: Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

From: Maxime Ripard <mripard@kernel.org>

The BCM2712 has an improved display pipeline, most notably with a
different HVS and only HDMI and writeback outputs.

Let's introduce it as a new VideoCore generation and compatible.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/gpu/drm/vc4/vc4_drv.c | 1 +
 drivers/gpu/drm/vc4/vc4_drv.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
index 3099292f22a5..417a5b456d80 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.c
+++ b/drivers/gpu/drm/vc4/vc4_drv.c
@@ -460,6 +460,7 @@ static void vc4_platform_drm_shutdown(struct platform_device *pdev)
 
 static const struct of_device_id vc4_of_match[] = {
 	{ .compatible = "brcm,bcm2711-vc5", .data = (void *)VC4_GEN_5 },
+	{ .compatible = "brcm,bcm2712-vc6", .data = (void *)VC4_GEN_6_C },
 	{ .compatible = "brcm,bcm2835-vc4", .data = (void *)VC4_GEN_4 },
 	{ .compatible = "brcm,cygnus-vc4", .data = (void *)VC4_GEN_4 },
 	{},
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index c6be1997f1c7..14b0a7ef2683 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -84,6 +84,7 @@ struct vc4_perfmon {
 enum vc4_gen {
 	VC4_GEN_4,
 	VC4_GEN_5,
+	VC4_GEN_6_C,
 };
 
 struct vc4_dev {

-- 
2.34.1


