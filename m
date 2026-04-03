Return-Path: <devicetree+bounces-284466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLMlFK/Oz2m50gYAu9opvQ
	(envelope-from <devicetree+bounces-284466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 16:29:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC8C3953B4
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 16:29:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 202BE3012D19
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2026 14:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 029DA3BED24;
	Fri,  3 Apr 2026 14:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="O27kKWwe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E554B3C552F
	for <devicetree@vger.kernel.org>; Fri,  3 Apr 2026 14:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775226540; cv=none; b=EyCW8EwLJMHMILAj2m3swROQ7zYqMpU2R8Dr3AywKkY/Nfr/hTW81W+W24GjODbey9ZNjpnQ8f2XGULOWVyezm4uvEJmYihT8YnkgWtKIXdRH+LQmV3sk4Fl1Mke4YNlaHwmf6fC3sfik2ZXxG/nLkQNrlHoKh22wmeiLH9oUdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775226540; c=relaxed/simple;
	bh=vH/ueYU0JM+Fk7o9qd3pD7pOGlBUbuQCnl4sMdxEXtE=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=fOU6s1T9rlBpK1ySH9uBPmgS1xypEvUwvldcWLVeiRi9I/uXVqDbvNq5t+dz5Lgw9dg1oNSJ6Crw20lutI8/0oq0L964AfJQBUUQJFGQCgB0mMknjKpRsZj6urCanp0OoeyFiCQEgp3HaDqeK5SjSTU3Cul80F5tnYTpz7mRemA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=O27kKWwe; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48891776099so23700125e9.2
        for <devicetree@vger.kernel.org>; Fri, 03 Apr 2026 07:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1775226537; x=1775831337; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=sXH0Wzyt0A1bijugwBqcmU83Qx2xfswksL1/C9qUqOw=;
        b=O27kKWwerM5QBBrQebBtfTxomIACfRi/X2SZWDXUXwLzq/5mW3+8X3HwBc1pDHwehA
         Jd5cWjjr0RCbsq76LJf5scoQqI029B+MwjUTYrWKASpZ8ByRb6p6j+X/8LfTN0yQOUG4
         kS2MHwbSSUr8JhkNQuu9FruI3Mfo6QVKvaQFGHaH8yYBnXfRa/zEpPNcpNRa0d2ECr+L
         +45qsA+l/B3uofdyuAtif/icmUhzuiq/pireYr/qAMEHpKeOwwrkUSDL5j8YFefFABiN
         gYGAVgRvx19Txf+/WxfmrV9gjvMP9ur6FuzKNbj3e6z4KojbYdgeH7k2TkxR7zNhQN4Z
         7MGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775226537; x=1775831337;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sXH0Wzyt0A1bijugwBqcmU83Qx2xfswksL1/C9qUqOw=;
        b=Tk+T6gFUqDdhz0Eg7aof3wEG6vY+OoA4y31RvXsH80jwCQEsn5k3LyYjoVopJnyXHH
         nd2yaQ3px/GxWkVmuV2DYac3ZUvyeNRsWB5JNp2Y7lQvpROS4y8/7RGGEs5/6E+Ku9cn
         tjPoTvGVApV4XCmKRcCLjBgUAs6QrrbpnVB1dijr88fntZICgbxe1XlEdHvLUy/TPkzh
         jb5zppu0frNnHk9nB3kwWaLoCNHebqdxrJ2YCey9FZQPkxB3jjVLob45YaaAwhKoki/t
         41K1sQR/qDCV8jEJvykqJ8FVS0kNa5hz5jnd9ol1DWn3ea96u4AJKi+mjqKtkjpE8jOl
         uUQg==
X-Forwarded-Encrypted: i=1; AJvYcCVF0gGT4rJ7j5XjvvfQrLNv0lTIenyBnnYV+KbtyrKX3VkVfpsPJV/u4r1QseIabcG1mq7NEKzVT96u@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj8y6+G21R6Vlpl3l8CfYOStVFhRChpWHXd3pbHnR2hMV4iOW3
	6tfbW+J+EbOl2WpG8Ap9f82ihgY507JyndGDzLQlPkl9mj+eLx8DxVBVQg15/ktc2WE=
X-Gm-Gg: ATEYQzyUUEXK4JYfu1t45W8Z57bOlaPdbQJj1sKgCVSXqxYcveIwkNdwWo0+hTq3/iM
	dMk8jloxPLBPm1n4J2YxkrVcuc7drBBSsLMWnNc6RN0zMgMe7WgAt1Jap6VBYhrX7SHyiHtndPS
	8n4dj8l10lGBs+m+/u68bdqNmVxnqW1D1vas1TnF+f5hCLNmcC+R+a3Of2DQ9bDplofXnxTmXSV
	yDAyiN5pTHgIt1wCF9DQK3RGm+1vzsINLBEK9Kl6ygDxsBOB1i/9zE+B4/kHVuOCCQHa5frBBp/
	pFnG486f6DGaiKopr0IFXTO6wvLR/CTE6Vv3nQmfVKhfMA1VuByXCf8xPG+l8FM897KkUdBgUkR
	mmPUtHyU8TsTNSSnO0wT3A+TGT3zneMkOXOgpvTRlmBF2qLNTwK4a6NBi4744KENgngDr+sYiOa
	U3B/5uqhQiU0gQTwxFFZnR9VMB7nsKUya1YCZw7GB3T+e7v95f+SkRRf9tusMY5ffIOHK/
X-Received: by 2002:a05:600c:3b87:b0:486:fe23:1707 with SMTP id 5b1f17b1804b1-488997ac1bdmr54229815e9.20.1775226537269;
        Fri, 03 Apr 2026 07:28:57 -0700 (PDT)
Received: from localhost (host-79-33-140-232.retail.telecomitalia.it. [79.33.140.232])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4887e9630ddsm258915625e9.13.2026.04.03.07.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2026 07:28:56 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	linux-pwm@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Naushir Patuck <naush@raspberrypi.com>,
	Stanimir Varbanov <svarbanov@suse.de>
Subject: [PATCH 0/3] Add RP1 PWM controller support
Date: Fri,  3 Apr 2026 16:31:53 +0200
Message-ID: <cover.1775223441.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-284466-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrea.porta@suse.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[suse.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EBC8C3953B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patchset adds support for the PWM controller found on the
Raspberry Pi RP1 southbridge. This is necessary to operate the
cooling fan connected to one of the PWM channels.

The tachometer pin for the fan speed is managed by the firmware
running on the RP1's M-core. It uses the PHASE2 register
to report the RPM, which is then exported by this driver as a
hwmon device.

Subsequent patches will add the CPU thermal zone, which acts as
a consumer of the PWM device.

Best regards,
Andrea

Naushir Patuck (2):
  dt-bindings: pwm: Add Raspberry Pi RP1 PWM controller
  pwm: rp1: Add RP1 PWM controller driver

Stanimir Varbanov (1):
  arm64: dts: broadcom: rp1: Add PWM node

 .../bindings/pwm/raspberrypi,rp1-pwm.yaml     |  52 ++++
 .../boot/dts/broadcom/bcm2712-rpi-5-b.dts     |  12 +
 arch/arm64/boot/dts/broadcom/rp1-common.dtsi  |  10 +
 drivers/pwm/Kconfig                           |  10 +
 drivers/pwm/Makefile                          |   1 +
 drivers/pwm/pwm-rp1.c                         | 244 ++++++++++++++++++
 6 files changed, 329 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/raspberrypi,rp1-pwm.yaml
 create mode 100644 drivers/pwm/pwm-rp1.c

-- 
2.35.3


