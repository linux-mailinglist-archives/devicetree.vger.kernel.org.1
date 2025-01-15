Return-Path: <devicetree+bounces-138810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CF7A125C7
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AD1C3A7190
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6C3086356;
	Wed, 15 Jan 2025 14:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a9Lsdstq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6BC433CA
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 14:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736950709; cv=none; b=NfdH/PjxJaS/HLAAgtU5NS1SKI62DDJpmRQfb8zhQuA0erIa2H/Xy4YXxSSJAKVdwkW8dLoN2USe4Vy8Yl+9uI3OpOBL91ECUZEZ/OFVc884WoJpP6ita2TZ7YDusW2FDHUp2LL06QO092nm4FQrQutel1DHL928Hpo+AHJKLg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736950709; c=relaxed/simple;
	bh=Ra6VjKu0S3TSfrpyZV+gMCodGc+tYkk8uce5ZVbjZAk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=N/CW4F6cImn3bTG/uZD66VZACRq5AUlKbAXNDeM7v/i2F+7E2lKicEaEF/kdEY9BMth08ENC5PF8FqL3PmIhyIYT/uS0y1B7v+7P9QnYGlnSIQD5JUL3uV81vmdNoLwOhUld/JLHbET45956uYK0Udarq6evchVrLSwgRvfFMKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a9Lsdstq; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-436637e8c8dso69907455e9.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 06:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736950705; x=1737555505; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LyLefsirnFHiBny48nwRg1v70yfpPBzd1WsBXD7eEU0=;
        b=a9LsdstqCz9KaGW0a3x+4DnluLuuQRVAIbKiSxVN3DIy+xPYQOdWuBd9qHemt/ShQ/
         GBevwkCC9zDZ9aFmVgMyNm3pGOO2UmClZyfqNarQjPh8GjDvccoMk336xaNEyScjNzh4
         UoaaHJ15WM826CIPIqgv/Cck4tGI1blfGcmXyGg8sk5KpxDOKRbb2R7msYqmS7Q2o2Oe
         14lvNSWyPyUC9wJ7ceBoGHEmqb+OzscENmPzRMqSse239XaB8wVnhnw6jHSoLwyBaZb9
         2vwutpibce8ol3vzfd0EOQuHdlTq6Q1DYF9twIOLXi+AavIKcpA2bijhz/su/L5laWpd
         RbjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736950705; x=1737555505;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LyLefsirnFHiBny48nwRg1v70yfpPBzd1WsBXD7eEU0=;
        b=QzN1EchlVXzTx0n6d9cEdwM1tJ/64AJqJKkF4Xz/sUPP/PwkPvW/hqyngPURr4zCy9
         SSpNGgUxRUtv7uBy20TqnCRpqoBczW3gk3TB0fNAKJsqxf8EExTz4KoWfiXb7koVA17H
         rq95SvVvwUZjjMk7Cf1uxQSsGAAL53Lvg7uf1AB1oYiZM1XhLxY4vSF7nLr6T+XFkzSS
         Hk9YwcPQ7Kc+Jg/1nZE1kHbFThdV75NebrRuA0mDTupGRiDaUSIKKiwfvIsLGTH6mnNW
         2rCfg8lkUG/a4QAp7iWK30bOypmQyI+ioGUfsgxgIvOFKeTvMYRnHVt7rAbXcnB2zha3
         XhMA==
X-Forwarded-Encrypted: i=1; AJvYcCXtx+fAl9f+rg9/I62hSXGsd8AMxvl98P3c4Gw9CgKgB0RsErJ+1dSM1birjoP9NCq4yrbbJ1vBNNow@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo1WfVKirtGwa9DvOkXKuF4Jy+hJ7FKuxiu5jhqHpbRCa4jIVt
	AqIDDAvZIecz6b4Asb01ezk/HuaRTEFYvtC3poIDavwXAntk76ppOj/zhSz+sGY=
X-Gm-Gg: ASbGnct9c4g+NGem0z3r8RwR2xrhB0h82OuRNivmRJqlUcIYpgD+GUo/9KJAVEs9CBu
	Hrar6KrAgqQKs93oduJvgczaRkYGZ0fBwSba5zKqtL/5/31e0oHFn3IEqc2xOPcps6yCncznNMX
	fQnPouDirru1YNeZ3wMr7eXzEp+U8SlyNT4Bb0iYSpXB228RTwjwLrMsaEoOS3jhhfcn2QNhxYf
	875Or4cf1DGtmrtgYtSeWZ3okY9XEAOT7muvXlIcwnrb/smhEVxoqtut+D8vhtqZxXDrxXQjlqJ
	0AU+o9RxJWamctDTwJLiyVSZBn6xbKck0QU1
X-Google-Smtp-Source: AGHT+IGP60LUIuwASgS9o56h7S+gPKy3P6BFhKHpsGSUmfHT7ch3g+Akxa/OVdsuqoBRuhChB68dWw==
X-Received: by 2002:a05:600c:3ca4:b0:434:a10f:9b with SMTP id 5b1f17b1804b1-436e26ab2a2mr300078595e9.14.1736950704653;
        Wed, 15 Jan 2025 06:18:24 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74d8e06sm25184555e9.31.2025.01.15.06.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 06:18:24 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v7 0/3] mailbox: add Samsung Exynos driver
Date: Wed, 15 Jan 2025 14:18:13 +0000
Message-Id: <20250115-acpm-v4-upstream-mbox-v7-0-948e09fcb5f2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKXDh2cC/4XNTQ6CMBCG4auQrq1px5YfV97DuCh0Ck2EkhYJh
 nB3CyuMIS7fL5lnZhLQWwzkmszE42iDdV2M7JSQqlFdjdTq2AQYCA4cqKr6lo6CvvoweFQtbUs
 30ULkGReMiZJJEm97j8ZOm3t/xG5sGJx/b29Gsa7/xDgwysDkGguojDK3p+2Ud2fna7KSo9wz2
 REjI1Npri+F5AZz8cOkOwbYEZNGRqWFgJylKEF9McuyfABK4qjrSQEAAA==
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736950703; l=4681;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=Ra6VjKu0S3TSfrpyZV+gMCodGc+tYkk8uce5ZVbjZAk=;
 b=h33+NfDQmI1lYuSRo6dWA3xcKVXDp8zt+ua3vNaiqopS3831SKpnkgpY5JbC5qMvfYArvfzDr
 Nb5gwIHttynAIeGp41FEsEx44XfnSP20eo86RQivF9H0/dkFeiJEri+
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Hi,

Now that the channel identifiers are passed through 'void *data' in
send_data(), the clients now depend on the message format introduced in
include/linux/mailbox/exynos-message.h. If Jassi finds this set fine,
then he shall provide either an immutable tag so that Krzysztof uses it
if applying the ACPM interface driver, or to ACK this set and let Krzysztof
queue it.

Description and change log below. Thanks.
ta

The Samsung Exynos mailbox controller, used on Google GS101 SoC, has 16 flag
bits for hardware interrupt generation and a shared register for passing
mailbox messages. When the controller is used by the ACPM protocol the shared
register is ignored and the mailbox controller acts as a doorbell.
The controller just raises the interrupt to APM after the ACPM protocol has
written the message to SRAM.

Changes in v7:
- driver: pass channel identifiers via 'void *data' in send_data().
- bindings: drop chan type definitions - not used in dt
- bindings: drop comment and "|".
- spin-off dt-bindings mailbox patch on its own. #mbox-cells = <0>; was
  already allowed and used in brcm and mtk.
- refer to the ACPM driver as "ACPM interface". The interface uses some
  protocols (PMIC, DVFS, etc.) to communicate with the ACPM firmware.
- Link to v6: https://lore.kernel.org/r/20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org

Changes in v6:
- mailbox: add support for clients to request channels by arguments.
  Used by the ACPM interface where the channel identifiers are
  discovered at runtime. Passing them via DT would be redundant.
  Initial version sent on its own to gather feedback:
  - Link: https://lore.kernel.org/all/20241219-mbox_request_channel_by_args-v1-0-617a6910f842@linaro.org/
  - the patches differ from the initial version as they allow #mbox-cells = 0
- bindings: google,gs101-mbox: update description, make #mbox-cells
  const 0.
- mailbox: exynos-mailbox:
  - replace exynos_mbox_of_xlate with exynos_mbox_xlate, the channel
    identifiers are discovered at runtime and passed as
    'const struct mbox_xlate_args *sp'
  - in the xlate method, the first argument is the channel and the
    second the type, as channels can be configured either in DOORBELL or
    DATA modes. This becomes an example for when an exynos_mbox_of_xlate()
    method will be introduced.
  - make exynos_mbox_chan_index() inline and directly
    return chan - chan->mbox->chans;
- drop Krzysztof's and Peter's R-b tags from the google,gs101-mbox
  bindings and the Samsung Exynos mailbox driver as they were updated.
- add Krzysztof's and Peter's R-b tags to the MAINTAINERS patch
- Link to v5: https://lore.kernel.org/r/20241217-acpm-v4-upstream-mbox-v5-0-cd1d3951fe84@linaro.org

Changes in v5:
- fix dt-bindings by using the correct compatible name in the example
- drop redundand "bindings" from the dt-bindings patch subject
- rebase on top of v6.13-rc3
- Link to v4: https://lore.kernel.org/r/20241212-acpm-v4-upstream-mbox-v4-0-02f8de92cfaf@linaro.org

Changes in v4:
- rename bindings file to be based on compatible: google,gs101-acpm-mbox
- specify doorbell or data mode via '#mbox-cells' dt property. Update
  driver and introduce exynos_mbox_of_xlate() to parse the mode.
- s/samsung/Samsung/, s/exynos/Exynos/
- use writel instead of writel_relaxed
- remove stray of_match_ptr()
- Link to v3: https://lore.kernel.org/linux-arm-kernel/20241205174137.190545-1-tudor.ambarus@linaro.org/

Changes in v3:
- decouple the mailbox controller driver from the ACPM protocol driver
- address Krzysztof's review comments

v2:
https://lore.kernel.org/linux-arm-kernel/20241017163649.3007062-1-tudor.ambarus@linaro.org/

v1:
https://lore.kernel.org/linux-arm-kernel/20241004165301.1979527-1-tudor.ambarus@linaro.org/

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Tudor Ambarus (3):
      dt-bindings: mailbox: add google,gs101-mbox
      mailbox: add Samsung Exynos driver
      MAINTAINERS: add entry for Samsung Exynos mailbox driver

 .../bindings/mailbox/google,gs101-mbox.yaml        |  69 +++++++++
 MAINTAINERS                                        |  10 ++
 drivers/mailbox/Kconfig                            |  11 ++
 drivers/mailbox/Makefile                           |   2 +
 drivers/mailbox/exynos-mailbox.c                   | 157 +++++++++++++++++++++
 include/linux/mailbox/exynos-message.h             |  19 +++
 6 files changed, 268 insertions(+)
---
base-commit: 5bc55a333a2f7316b58edc7573e8e893f7acb532
change-id: 20241212-acpm-v4-upstream-mbox-948714004b05

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


