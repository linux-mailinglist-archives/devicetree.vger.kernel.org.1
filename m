Return-Path: <devicetree+bounces-132676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 699949F7BF8
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 14:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3FC627A044E
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 13:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439AE223E6A;
	Thu, 19 Dec 2024 13:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TE3scQlS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711FD38DFC
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 13:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734613676; cv=none; b=fK6y9jzq7onOmLtGqR33J1oiMnOJ8YIgcJJz3lMMy5QeC0DdI6UUxWU2JikmtYDze7bf4gVtWXqkXOrj0yUpNEzxT+8gBUdsh/bkZnbiSck4DdeGl83nDw9wXe/+THkVDBXX0O6hk2wPthJP+aV77K7UPq6DEMY3YdOjBVCJAKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734613676; c=relaxed/simple;
	bh=6hPBLgMmfnbU5fJmTeNIW7KbcBrCAcdnrr+wM2OaDRs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FTEq6bdWSS3IEAS22HZ7CociQDR/50lV6g0YTc9z5l/IoBUDX3xNsPbtCNUFVg5d0okPFO2PqVP9q2Q8lNs7LBALCeeuJaoMljIyFiLp6Sldba5Rw3H0FQL8gRoZ433jjlFB+Xe0lIhe9mGZBQPnOLXqDZ8rBhaMcQRaCkhvigI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TE3scQlS; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4361d5dcf5bso8557425e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 05:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734613672; x=1735218472; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rpk/ffLMQdXc9r1ZsbGnQaD0+ch0U8AdCVw+w16xuCo=;
        b=TE3scQlSlbOMSdcODbXuIOxVyVZ5Z6d/IDE8tW5SnP1z8vmN01a9NZ+aXpizyUYuyx
         aWuDo/yo4J20OPiQoMGmMvmC+GT7KP7FtPFCxBoLS0pB9jlVeF/nJrQz+EV1gAWFsMH0
         xeEDM7ilM0Q6Dsff8/d3ki7XgOgiO4EkjrJG0k+r4tsjCoEGVTGCaqOWCKfl7cHSuX2I
         Cw6KEhdhV2sLfuP7dXMTjdqy6xmYKL1QDAaiEc46euLRwzpboCfFFW27dGAul0KTBh8v
         Mh0ouVfF4TuFNIpE7Mci+D38HHUi+8EZunVONH3YJIIFKDUG96Qj1gpaulnBpHWV/PNB
         7QbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734613672; x=1735218472;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rpk/ffLMQdXc9r1ZsbGnQaD0+ch0U8AdCVw+w16xuCo=;
        b=NdWtIb7z0nLE5Qb2KxBzogWCMK6egUT1fLPNL43BTzYQ/x6iTkIAe/dlhO4Qorb6Vw
         crg9okNSeeoQ4nyYN0e5GxKBCop8nfwE4jaSsV+NEr81Pzs083hYPrJmNSsiyZPbX19Z
         fG831WxrnMsXHMAFdBny925AG1mKVi7zA1OXhtkNd8KKPhy075VGbcag/CudkQ5uGCtn
         c4wTG+pMSxT6J4TPvm00/LuoqEGnBIuPy12iWJnbZdmtOrEXzpXJEQ6vJL0/EYkq7RH0
         +l6lZF3yC4SYaCKD+XvSSEijgcxzn0P0YtGrkgAgpdbBNtWXrpa51hkVSZiAoTV+cgU1
         S6lg==
X-Forwarded-Encrypted: i=1; AJvYcCU5eCmGuWmRxLvLHDojyxD006UlSULfEHwujpcrRN9rdiCYOxiNFoMOOAVW7QgPEt+CkxFZUfTppmba@vger.kernel.org
X-Gm-Message-State: AOJu0YxJmfY5fPRrBdeqv5FvoD8sn5jfQS5MwclijXQJ5zKGgwqr99eV
	y0usr/3abp1qyDZ92I9OKMcHgL6LAGGHwvDqfqxDpXXjIHnRwZY2A3Q1aYN0LbH0ffVGKyoe3mt
	tpsE=
X-Gm-Gg: ASbGnctvtgmo9LhE7p3he2Y/khG7HSDnknXO+Wxt0IGhKoUl0ptV9Fj/LzcQSZ/iItI
	6ZErrkwNrRH04lZ5xL1SDDEzhtyiubT6G8gUX1TVncm5dfEucPDphWfr3/ss9HUBX5hBG6Hp1m3
	beUYKpNNpZvldz9KZyzLhvuge8MJ1bhityGBL7UToF8v+KHUCGEU+SeOefwi35jtegAOtNAnlyU
	+vN/7+36r8TnSooI28KbwiR2fLs03duk7zpU7+dawstqjNoByxfzF3XKwuspsq6I2Hc/7uYjveG
	HinMA3Ot7cucXmlv75VTRUQIUy4RpehIdPhR
X-Google-Smtp-Source: AGHT+IEL8UXjs8X0S7UtKDlYHBSfpKUQ5jbhCUs1olN7+uCkgGDEWmfHiA7Ew8uzxHg+T6Icg5yzVA==
X-Received: by 2002:a05:600c:5492:b0:434:f804:a992 with SMTP id 5b1f17b1804b1-436553f69demr60792685e9.32.1734613672439;
        Thu, 19 Dec 2024 05:07:52 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436611ea387sm17436705e9.6.2024.12.19.05.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 05:07:51 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 0/2] mailbox: add support for clients to request channels
 by arguments
Date: Thu, 19 Dec 2024 13:07:45 +0000
Message-Id: <20241219-mbox_request_channel_by_args-v1-0-617a6910f842@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKEaZGcC/x3M0QqCQBBG4VeRuW7BWYzcXiVi0fzVgVprxsIQ3
 73Nyw8OZyWDCozOxUqKj5hMKYMPBd3GJg1w0mWTL33FnoN7tNMSFa83bI7/JOEe229sdDB3Yj6
 WdUBXBU958VT0suz7y3Xbfrz8eNNuAAAA
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734613671; l=2747;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=6hPBLgMmfnbU5fJmTeNIW7KbcBrCAcdnrr+wM2OaDRs=;
 b=k56rdsOke8IWmYym13tETHNkwywcDz1k2b/m8+2Albs/Hk+zaZrl+9E2xeXumoTTuDrdCRDz/
 fUA8CKuObS/ClYgEF206bdv1LabJQh/QZtes9y7zmTEeGYJtBlKml9D
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

There are clients that can discover channel identifiers at runtime by
parsing a shared memory for example, as in the ACPM interface's case.
For such cases passing the channel identifiers via DT is redundant.

Supply a new framework API: mbox_request_channel_by_args().

It works by supplying the usual client pointer as the first argument and
a pointer to a ``const struct mbox_xlate_args`` as a second. The newly
introduced struct is modeled after ``struct of_phandle_args``. The API
will search the client's node for a ``mbox`` phandle, identify the
controller's device node, and then call that controller's xlate() method
that will return a pointer to a mbox_chan or a ERR_PTR. The binding
between the channel and the client is done in the typical way.

This allows clients to reference the controller node as following:
        firmware {
                acpm_ipc: power-management {
                        compatible = "google,gs101-acpm-ipc";
-                       mboxes = <&ap2apm_mailbox 0 0
-                                 &ap2apm_mailbox 0 1
-                                 &ap2apm_mailbox 0 2
-                                 &ap2apm_mailbox 0 3
-                                 &ap2apm_mailbox 0 4
-                                 &ap2apm_mailbox 0 5
-                                 &ap2apm_mailbox 0 6
-                                 &ap2apm_mailbox 0 7
-                                 &ap2apm_mailbox 0 8
-                                 &ap2apm_mailbox 0 9
-                                 &ap2apm_mailbox 0 10
-                                 &ap2apm_mailbox 0 11
-                                 &ap2apm_mailbox 0 12
-                                 &ap2apm_mailbox 0 13
-                                 &ap2apm_mailbox 0 14>;
+                       mbox = <&ap2apm_mailbox>;
                        shmem = <&apm_sram>;
                };
        };

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Tudor Ambarus (2):
      dt-bindings: mailbox: add support for referencing controllers solely by node
      mailbox: add support for clients to request channels by arguments

 .../devicetree/bindings/mailbox/mailbox.txt        | 19 ++++++--
 drivers/mailbox/mailbox.c                          | 57 ++++++++++++++++++++++
 include/linux/mailbox.h                            | 17 +++++++
 include/linux/mailbox_client.h                     |  3 ++
 include/linux/mailbox_controller.h                 |  4 ++
 5 files changed, 96 insertions(+), 4 deletions(-)
---
base-commit: 78d4f34e2115b517bcbfe7ec0d018bbbb6f9b0b8
change-id: 20241219-mbox_request_channel_by_args-7115089ed492

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


