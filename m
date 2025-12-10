Return-Path: <devicetree+bounces-245541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC379CB1F6B
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 06:25:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 11D43301E214
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 05:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D299B2FC874;
	Wed, 10 Dec 2025 05:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EkEoGQn2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15743271457
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 05:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765344314; cv=none; b=i+nkbF7+S1497UqWZ0abXRRxIbM7FpIwkAzMNFfAlYCQDLh4vZY7dChDidPi6xuPAEuzx+EtrgcnIou9YH1oZXeo4Q32ELGyN4eHfhIMmT7YsDgSDxQhAhVZq1yTFiZjTSIYoJ59J8p6KdbsmApF3aiheLNKUKvnQTJQ/EC+Gn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765344314; c=relaxed/simple;
	bh=e+j95jMXeUM0YV8aOFZvi80Us2v0kcLgnRw05P63QNc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=p8sA30CUN5X0tOFvElQgCLRU8SZEo2WMiC8Qwpmp+NLXUItbscbRBuvrulD/B9aV667mmgNKqlByrtZJDSNs4Pfi4NNXN7q9Wo5UIrIWtvRyUQ+kTXpxyGAPz6zsG2kNgQM13MJVwlbnBKtPEVhK68EywHbzNyhaTpNzbF600d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EkEoGQn2; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4779d47be12so57504995e9.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 21:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765344311; x=1765949111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eGfQ3qiTzzG9reGNHg6its+3nIMomB7nNh7rZSun6mE=;
        b=EkEoGQn2+ZJHFwir4wetRrUJKSzbyEHMDNKMmohCDhDis425tZrZdoypPmGB9NFKgm
         62oKOrDOyvswUzru+9pxfeQh8krdOvWNW/VxiKKaTpwkBX5dSP9ywnharedQ4yOgvLOx
         cDWV4YoLLFJOxzUBPTTfgpUtEVXBz4h4gPmh43rAm37XQ0nAPzJqc0fW47TuSEIH54gg
         /sMYjF6oQvDXtrJtqogO4ALNcwL/Mx/tJy+qtPn1fhGRfDw15b8bPIkBx9J1JZ6uZZXk
         QaTjHzVNStHedcGD23NwAyVryG4KMJFrbyZykUncz/Xn6J9QBhBMtG9Ad1Iade0vwfnb
         LU+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765344311; x=1765949111;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eGfQ3qiTzzG9reGNHg6its+3nIMomB7nNh7rZSun6mE=;
        b=O2Nvcj1cnIeYEMBCA+E6n6JVaJYXAJuuqJkpEe5AHCDR16Cpu0doqnuCld5adr4y6g
         Eraiz3IsRUkqCCifJe9OwiQxXIrBsdvpTk3zcmuQ+DLoGjlQbCDFCKc6UtADpB3AC5oj
         roYWbTGy5yVwZGNXD1GOYIGjC/ZFzziztOZ0z2GA3ye39VMbWEtC9yB7GJeN7DYW5Y7f
         2+dW4zPILdLGmdZrfK6TX1LUCFTugJS9Q/Zff05yk+VcW7BNlvhGLDPjVTUjtrqA68vj
         xohL9jU235m1cEKMELQucK9HmP908Q88/NU0Xtsjk5YVfgOhFnSIYl1Ugrgm08fIt49n
         mqyg==
X-Forwarded-Encrypted: i=1; AJvYcCUmGUQeQ7ekP5jN6FOxwA+Yym8944yHqNmuxKsG8sZiGL955EaGw4BlflIULdi0jW7Y4+DGsCNnDKb0@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl87ilMwzQCBPaR/QxoIGaxQE1OZsJBg0D206zcW/jUCzNSopg
	XX/BLYOLJGWeQ0p68orJ7OIKUYI3TxBP0sxcuvGbzaA3IpR0ksqzk8Jqc2Y0//xfNJY=
X-Gm-Gg: ASbGncvWNX0L5gfd961Safgy79gfmbadlbCA5mG5ykG+N4uXr7iSmzOM8BCfhwjVr0y
	HIoLeIi4RgIkWBCK4WAXLNJiZR20hS1kvsWE1kUfP+81iAyeVMTU+B8HzAeZLUirlnKSPyRQqc7
	Sfc0tSf3R8kha9lG3aGZhPXp0+/0EYmnJOaccC4x5z4UceoRu6hKmrXjUmLXDAHSM+t94eCKJte
	sta60T3vLi7HplbCJq1HbK6DXdHCZjTc/MkpD613QEoZ0t+ndNSwfbLeaLOC9mzwfmm5tsHI+fw
	AqdK54bKhDmWGoVLuTzzxAppkWqhC11voh88Hd5wwzPrBhGhhj1X70bGXCvD5MzzPJ9FQtFPMsH
	nZ6B9pE21zIsex2bfDJchsjh1e5Xibh3y39SDqytXIwte6ejSroyHMOrAxRJlQqey/2rVhxaZ9g
	tzJ2gUUvdiRyW+Hfnm+ICs1MoCklRWbtk=
X-Google-Smtp-Source: AGHT+IFDRRrdDRlTyL+UUuEgDOPir+MxwY91C6SGfC4AqLJbo3UvQmoYIDZUN04cqYhCz3QTSE6IyQ==
X-Received: by 2002:a05:600c:198a:b0:47a:80f8:82ac with SMTP id 5b1f17b1804b1-47a8385848amr10132335e9.26.1765344311432;
        Tue, 09 Dec 2025 21:25:11 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:4fde:b93c:87db:86e6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a7d3a75a3sm33485695e9.6.2025.12.09.21.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 21:25:09 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 0/3] Add the System Timer Module counter
Date: Wed, 10 Dec 2025 06:24:44 +0100
Message-ID: <20251210052449.4154283-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NXP S32 family provides a System Timer Module (STM), a 32-bit
free-running counter clocked from a peripheral clock. The STM includes
a prescaler and one or more compare channels generating optional
interrupts. When used as a generic hardware counter, only the main
free-running counter is required, while the compare channels are
typically unused.

On S32G2 devices, the STM is exposed as a simple counter block that
can operate continuously and be shared across subsystems such as the
Linux kernel, firmware components running on Cortex-M7 cores, or other
co-processors. The counter can be read atomically and provides a
stable timestamp source to correlate events occurring in different
execution contexts.

The Linux kernel controls the STM through a memory-mapped interface,
configuring the prescaler, enabling or disabling the counter, and
accounting for wrap-arounds. Other subsystems access the counter in
read-only mode, making it a shared timestamp reference across the
platform.

This driver adds support for the STM when used as a counter on S32G2
platforms. The device is described in the device tree using the
following compatible:

compatible = "nxp,s32g2-stm-cnt";

The driver exposes basic counter functionality: start, stop, reset,
prescaler configuration, and overflow handling.

Changelog:
	* v2
	  - Added Rob's tag
	  ** kbuild
	  - Reordered alphabetically the headers
	  - Added bitfield.h header
	  - Use DEFINE_SIMPLE_DEV_PM_OPS() and pm_sleep_ptr()

Daniel Lezcano (3):
  counters: Reorder the Makefile
  dt-bindings: counter: Add NXP System Timer Module Counter
  counter: Add STM based counter

 .../bindings/counter/nxp,s32g2-stm-cnt.yaml   |  64 +++
 drivers/counter/Kconfig                       |  10 +
 drivers/counter/Makefile                      |  21 +-
 drivers/counter/nxp-stm-cnt.c                 | 386 ++++++++++++++++++
 4 files changed, 472 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml
 create mode 100644 drivers/counter/nxp-stm-cnt.c

-- 
2.43.0


