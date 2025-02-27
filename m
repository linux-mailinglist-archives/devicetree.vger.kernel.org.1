Return-Path: <devicetree+bounces-151977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FD0A47AB1
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 11:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29CE6188F97B
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 10:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EBB222AE42;
	Thu, 27 Feb 2025 10:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A+ECPPpM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3CF229B03
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 10:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740653201; cv=none; b=oj5iy83OYx7u12xVqvnhX0Ed2amHEYuZWyrppSs/EznG78R8cTU6hUF45U8VB4RpAEXhik8GWpX0bjv1dNxZUqt+px0zynSSPlgrg/ot/hc7maleG9CpjIqpoDo29tymS5Fjc37x9I+3bZWvvOh70WP7M1eb+KrG69WcQPOlRxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740653201; c=relaxed/simple;
	bh=GXcqDaM4iJxo1UFq2CVb2sA3L38nmHx73YWAlmx+a5I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YygoULTJGpY31PTv63yNLCtbxEG/D5eqf1nAi1iDYIU3r9BFJr2v1G4bnTjrJbdnikzZxY5rgEmxpTiK45RdZ3iQReL2nfKgFOZUTdpe+OtFjBi4VjpDv/0HXKD41UrVeF6SjQZTBhK7dbNDiZ6VdJ86m2FRlZQ3FgNQAVE4SSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A+ECPPpM; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5ded6c31344so981741a12.1
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 02:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740653197; x=1741257997; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NPVgA06tyH3i4HM0WlziuIUTUmSh+HZPXchXbJCW9Ic=;
        b=A+ECPPpM8hZmiEDwIbyF6B1jM08fqsa/lwyaigz7uWhLLQAWoawEMMQXIEVY0PHwO6
         IrHEUtdWqwzC50+hrTKUQ2+ZLfV+pfq9YCo5hB1UvMII4VboDbd3ITw7gs4zC5JRa+gS
         OQzaRHLXoQ9tTWNLgP0EBaGjiBxnuenZUuXphdbkG39/zTSssXBy8d9qlz7R0sQwOkd6
         3nHIcPhjOqZPtApsoAe0AmeV7ql83BCk/XY1VEinJJrXwDkQy3Y5T/67tkINZAXlTMMw
         zIutG8o2ufYAuOGyYJpg9+P87zB52nUApHi07S9L3846J+0XmARTgnEeB9u+IPxOJ963
         SVeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740653197; x=1741257997;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NPVgA06tyH3i4HM0WlziuIUTUmSh+HZPXchXbJCW9Ic=;
        b=iCJBBDfyB2rcRuQjNumgsuDUa54IwooXiW7Vypwf2jrjiesTouqAIm8XU1FXIPDWz5
         cb9Tv3+ouiFa2nztwmkBqq/zFTk9437tzbIgSN5v7vE43Byzb8Sm00J5EVVMOXsR+c5Q
         yw5LEa7VKyPlX4GR5xsf6ELQ0QvWup+N6YVJtSZ7E/OTxBQdGcFlMFGT3DbsCYldbbIi
         fd82FdrQ47GYQ1XPxVYb+8mGnMaGxUSRFJ7nef27xzBGuAB30d5Qy6KQHUKK1lmzp0Rz
         gfRtfb5D7+3UITLkTt9UixoENaAHpO+wm8os23K1hroM36zq+QTJluOx1cjyfMB769cH
         v6Ng==
X-Forwarded-Encrypted: i=1; AJvYcCVeIzZhVq4CK2LfRtw3kDX6/wIqAmKYQWk+URAEqVi9xHDENLq5ouWS8JnudqVF2+3uLKMSIypZP6Yb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy55KWRE6I9qUgrxUU4eB/sqnykIvSIQKc+7d1PUHkxfH1BCkzA
	43JllokRq+MjrhuA2Ce2dqQxTz2YGOclRxh7P4+ge788z5S7uM5LUITOz1q6swY=
X-Gm-Gg: ASbGncvJFyqV7e+FwldMd9NEGkx/ghmmQlBA17U9VwIoESD0vlt4mD6KFcdvhRnAYPI
	7yx44tuyB23myTw2UlqTteJ2AAthFCsqCtRDC0kKuB17cYV+SnXMOVqe8PXvEoJhVKokO82Q66m
	Hv7UqwZ4JDxj4qh1c84mlLMtxENCp9XaNyWjkv07zgmJz+m9gedNaQto56mTv3WQJcOZyHH9MQi
	HbTZts3FGvxY5XOnAT9/lpftHJ5CxCs25MlkESVuurKD0taHv1nziQQCcPTwSDUQQhuyxhaDhB4
	UuAWXNVnm8kimqCQ4+lERMie9NGbHBZzF2k3ZnahwkahSnxOgp4asL7Hte7B564GO2p359pnUI6
	uIaGcuwP8fA==
X-Google-Smtp-Source: AGHT+IGloWH6a/M1sg9S+wwEb1NJ4jTuvK9J/b5oBXRjCHdZJoqFRptrBcSe7FBusglyJvCFgwIZTw==
X-Received: by 2002:a05:6402:4604:b0:5e0:7cc4:ec57 with SMTP id 4fb4d7f45d1cf-5e44bb37281mr23479228a12.31.1740653197543;
        Thu, 27 Feb 2025 02:46:37 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e4c3bb5ad8sm901032a12.34.2025.02.27.02.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 02:46:37 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v3 0/2] support Linux reboot modes in syscon-reboot
Date: Thu, 27 Feb 2025 10:46:12 +0000
Message-Id: <20250227-syscon-reboot-reset-mode-v3-0-959ac53c338a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAHRCwGcC/43NwQ6CMAyA4VchPTuzFRnTk+9hPDAosERXs5FFQ
 nh3BzdvnJq/Sb8uECk4inArFgiUXHTsc5SnAtqx8QMJ1+UGlFhJRC3iHFv2IpBlnvKINIk3dyQ
 qrStjrLnUpCCffwL17rvTj2fu0cWJw7x/SmrbHkCTElJcVausRqV1Q/eX803gM4cBNjXhUQmz1
 BtpjC5raW39J63r+gOQeAXtCwEAAA==
X-Change-ID: 20250226-syscon-reboot-reset-mode-566588b847e1
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

This series teaches syscon-reboot some of Linux' different reboot
modes.

Linux supports a couple different reboot modes, but syscon-reboot
doesn't distinguish between them and issues the same syscon register
write irrespective of the reboot mode requested by the kernel.

This is a problem when platforms want to do a cold reboot most of the
time, which could e.g. wipe RAM etc, but also want to support rebooting
while keeping RAM contents in certain cases.

One example of such a platform is Google Pixel.

DTs can now specify the existing properties prefixed with one of the
Linux reboot modes. All the changes to support this are optional and
opt-in, platforms that don't, or don't specify a register/value/mask
pair for a specific mode will behave just as before.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v3:
- support <reset-mode>-reg in driver, not just in binding, doh...
- correctly parse <reset-mode>-offset
- add a comment for all the BUILD_BUG_ON() checks
- Link to v2: https://lore.kernel.org/r/20250226-syscon-reboot-reset-mode-v2-0-f80886370bb7@linaro.org

Changes in v2:
- fix whitespace issues in binding
- Link to v1: https://lore.kernel.org/r/20250226-syscon-reboot-reset-mode-v1-0-91c1b62166ae@linaro.org

---
André Draszik (2):
      dt-bindings: reset: syscon-reboot: support reset modes
      power: reset: syscon-reboot: support different reset modes

 .../bindings/power/reset/syscon-reboot.yaml        | 74 +++++++++++++++++
 drivers/power/reset/syscon-reboot.c                | 96 +++++++++++++++++++---
 2 files changed, 159 insertions(+), 11 deletions(-)
---
base-commit: 0226d0ce98a477937ed295fb7df4cc30b46fc304
change-id: 20250226-syscon-reboot-reset-mode-566588b847e1

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


