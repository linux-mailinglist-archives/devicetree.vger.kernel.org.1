Return-Path: <devicetree+bounces-60555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A14DE8A9A5C
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:49:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53797284432
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFA961635CE;
	Thu, 18 Apr 2024 12:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="S5pKyZgY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BBA163A9B
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713444509; cv=none; b=bmr6v7qBYiZzxPmGIzOMOFITxsrT5vFvaTA4r5ZQ1tZq66AkJW/eUQ5aYD7qG4pmR6qL4EVeZd31eIXFcG1JYCeYwz2r/ooX7m0M/kI+3cz0EZYF7G3XY/UvjylkXxSL4Mo73tRqOZM7Bn4n1ZXuaQaGX/QSs+zS9V8KbOf/Dhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713444509; c=relaxed/simple;
	bh=E0hJ0cNVpzGDyCkIHhzVV48In8rsSze1Ba708GHW0DQ=;
	h=From:To:Cc:Subject:Date:Message-Id; b=VQICGEs484GVAuGpptKxW7DoIdeSmI3DflQir3NAuFAIPN/NTuFMxfZm71EN8wiW6omBaHIDtGrwaelsyxJpwgyw12zLkDxiz9tmMZbLbVZRIZmgLW6QwATkqSdJHuaBIMstWY5e8hHvLDDu3A8hRaV/mpR1FaBOJO8s68zQaww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=S5pKyZgY; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1e51398cc4eso7314995ad.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 05:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1713444505; x=1714049305; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vBVJjQh/Nx8BXhkrFisIjtogBH13cAN8LyyArAUlFGo=;
        b=S5pKyZgYuO+xZKmnhRrOhK5YDbE8tmtTVUp3bps8bs4wcmRgoH5AP+aVnDGdfGhCZf
         1OBhaf3zKgFHa3jX2834JmIBHgFsSUMq8nCRTqvS2X4eRhfAxqXWLtBPlJR9K9EJT59D
         FGCD0s5koQqObczKbAd7tsi/4fC6GPmlXx0azCZgTQQjV3i5KX1QyTKvY/IIgCS1G2eT
         iFJNyPiX83PMPWjPpWl8DW28HJ7LJ/+KBCvt5oygDB50DHHXbYGcBBugpGS65vcMPTYp
         y9C8BOd0zQx+I97IYF8DXJBlQGQ4GhM1knhNsNuH4KBf2tLni2vMMcBPeqmpDgiMeMRV
         MwDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713444505; x=1714049305;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vBVJjQh/Nx8BXhkrFisIjtogBH13cAN8LyyArAUlFGo=;
        b=QYe+detNyqECwIVUJ226wBje+UE23dAoRL/iPW9NzyAniY2fHmMmpVJ7UqX01M1VnB
         kf/aAuGirATfyj/FYAClX8+N0cnfu6AUtkHSibIn8wENVg2ydoF83zQEMVz26/r3jB2u
         khnKyZvTLWhvmU63HDclh9zR3DfsTZR2w8OsJai88YT9EL3hFTfCgV4Ejk97T7caBGP+
         KaVuJDjpr4vpggK+TDfVD/Cy5HUs8wyyZbIT8Nz4kMnrzwkAdS1e3lRoxfm1lQR3mBev
         yvsq8bcDgTxIQujB2nWA15ilOp/BJ2FjTdT/EUIPthLjx9nG6ykwIsD3Gbc+MrZBiU/y
         mdUw==
X-Forwarded-Encrypted: i=1; AJvYcCXwpd1rKicXnljmKtKsrlmQUJsL5qet9DZVbnPlIIIVPxO0sj81VwFo+OozJ7TU0RXD6kwUGCNHmZ5JxMfqFT5u1EnLdVdPt2qLbA==
X-Gm-Message-State: AOJu0YzTpaVIVZLq7NtuvAmB+9NAPNZOLNWxwYS/xzigCpACtbXkxEju
	RYGdymYvnNXJ5R5ASAKs6j9TE/7fvF867P6tQuQAg3/46kaK571SdDWKcIUNBc8=
X-Google-Smtp-Source: AGHT+IGSiSDDmR8LYcqwjG3haTEKWA5AkubEyL3ysc5fD6DHGQT11eT1vAj07i5o5JXkET0KZpz3OA==
X-Received: by 2002:a17:902:9a0a:b0:1e4:24cc:e025 with SMTP id v10-20020a1709029a0a00b001e424cce025mr2713328plp.59.1713444505581;
        Thu, 18 Apr 2024 05:48:25 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id ju24-20020a170903429800b001e3d8c237a2sm1423509plb.260.2024.04.18.05.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 05:48:25 -0700 (PDT)
From: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 0/2] Add ili2900 timing
Date: Thu, 18 Apr 2024 20:48:13 +0800
Message-Id: <20240418124815.31897-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

ILI2900 requires reset to pull down time greater than 10ms,
so the configuration post_power_delay_ms is 10, and the chipset
initial time is required to be greater than 100ms,
so the post_gpio_reset_on_delay_ms is set to 100.

lvzhaoxiong (2):
  dt-bindings: input: i2c-hid: Introduce Ilitek ili2900
  HID: i2c-hid: elan: Add ili2900 timing

 .../devicetree/bindings/input/ilitek,ili9882t.yaml        | 1 +
 drivers/hid/i2c-hid/i2c-hid-of-elan.c                     | 8 ++++++++
 2 files changed, 9 insertions(+)

-- 
2.17.1


