Return-Path: <devicetree+bounces-111132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C80E99D5E2
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 19:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8B381F224F1
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CBFA1C727F;
	Mon, 14 Oct 2024 17:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="X8bcmZ5a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1CE1B85C0
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 17:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728928470; cv=none; b=olpO+0NUFM0Axrpps7wtiooaN4pnrzYIAzottwwUgG4ezf0fPvzU3CSJb9PjqHiHoZ3pLZhCZOxSqWzcYnp9OFR4xyZ+a7y6r+XawXo7fszPXEDxCJcqu/yflzg0kcUM16GUg88nZ1GxDAnhoM5ExpIsAVtI9S1NyMcArF1gTHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728928470; c=relaxed/simple;
	bh=LLg0wCPOpS/AmndI72VxttCgIFv7G1VnB/HH0FuhVXY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TfkoL5PvkebuvpTvICxoIYGcyub3MsHyLzOajzCPUCKu9EHQNhpNvp58dUhHTjXLMKz97eM6zeqE2oQywntuv3u7ZrFN77Gc+k9mvWS5BbFDHZWUiDJQEbD8wB20Upu2wXutTNzDMGYx0210ck4FfnX6cvINM5ivCOIaOsmtokU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=X8bcmZ5a; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-71e49ad46b1so1695485b3a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 10:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1728928468; x=1729533268; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3WMPWjM4v7j14DyEcQ5hwRAd9xYSxf1LHTYEm0hMLIQ=;
        b=X8bcmZ5aPT7+HnBej0npveR9XSk0bIUCe0zxcfMD/MXrnp/VBBWqT+rGcKcRafAsdz
         RCFy6Rq6ix0q3z6U6tg0OFaLHTdLDfnaQihhtldtqPyi5LGT5MdQ91tPYdnXDVX6c2pE
         vK4u5XHXExLUx3wFr7+teb+hmdo1PUFlvk9Xz3p5Toq75yoK64MwktDf13U0xXJWTTDa
         aJ5iaZeEoneIAs1jVx4ZHt0BSjdbmtrFU8AjwVGKqbHOSPTJAtjH1f3hLtL4Q9Co46vX
         oQ35LoB0AhhXfqXSTKXbMSZxyODf/19BcLBeXgy9OHyNcyr1lHsEehzW4TiiwckBDiPU
         X8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728928468; x=1729533268;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3WMPWjM4v7j14DyEcQ5hwRAd9xYSxf1LHTYEm0hMLIQ=;
        b=M/wZbAG0dsdXsmKG7F8rBJT4IZ9wnw9uhY/Na3YWlEvwWef4S4HQwJeMoU/mzXCik6
         8MVk9E61MYAyGJeQQkm2yGnORJq0MuSYUHUCVZEmyX407mu1gBcC3iGUn8piX+JTKxzY
         0VC0Wv929sw+rp6L853anAfsatbB24XuCIAEN0d9XBVbz+pE/h0dajyW5Al+np/Ykez8
         4VXaXwl7OLoBCnuVECR8UXf3FFku9itZrRYTbgZFYmEKwpao3y9J4o6eN4vb/ruvK/QK
         ygurKZYGmvrLt3FmrovQcUuXRKaDISp5/mjqjY3BlmeLcS/AebbuP45V+U7lU5hOJD/O
         6B6A==
X-Forwarded-Encrypted: i=1; AJvYcCUPSaqWW7psJkKSF2K9yjBxSY2r8PwUzuJuxqNWTxDbKsaXd3jvtlhhJlAFqsh65HuQSI/X12sMQpII@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9dg9TddWAUDNETnZT2knUevTAq5w2MNoNwxjWPZYNqReGi/89
	u9aga8HDdmiuNHu7bAJBKsYM1+NxMFG9S8LZUCOTROU+taMGTgJfk1FZ3IkVEfM=
X-Google-Smtp-Source: AGHT+IGg0wES5gNNTPcTHOmFhOZ7P4Cnh4UasrOzlCIqf49HPyl8t7AfprhbcD8tS5R+AH+gxhD9rQ==
X-Received: by 2002:a05:6a00:2e06:b0:71e:6a13:9bac with SMTP id d2e1a72fcca58-71e6a139d5fmr4826861b3a.0.1728928467907;
        Mon, 14 Oct 2024 10:54:27 -0700 (PDT)
Received: from [127.0.1.1] (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e49a7e5e7sm5611109b3a.179.2024.10.14.10.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 10:54:26 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Subject: [PATCH 0/8] riscv: dts: thead: Add TH1520 pin controller support
Date: Mon, 14 Oct 2024 10:54:17 -0700
Message-Id: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMlaDWcC/x3MQQqAIBBA0avIrBtQU4KuEi1KpxoIE5UIpLsnL
 d/i/wqZElOGUVRIdHPmKzSoToA7lrATsm8GLbVRUvVYDmW1xMjBlXSiLxmt0YN1zmx+ldDCmGj
 j559O8/t+wF8+xWQAAAA=
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Kanak Shilledar <kanakshilledar@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

This series of device tree patches enables the TH1520 pin controllers on
the BeagleV Ahead and Lichee Pi 4A boards.

Patches 1-7 have all been cherry picked from esmil's th1520 branch [1].
They do not have the issues pointed out in the previous series [2] that
I sent out which contained out dated versions of the patches.

The final patch was suggested by Emil as there are not currently any
users of the spi0 node so there is no need to enable it in the board dts
files.

I have tested on the BeagleV Ahead and the LicheePi 4A. The leds on the
BeagleV can be controlled as expected through sysfs.

[1] https://github.com/esmil/linux
[2] https://lore.kernel.org/lkml/20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com/

---
Drew Fustini (1):
      riscv: dts: thead: remove enabled property for spi0

Emil Renner Berthing (7):
      riscv: dts: thead: Add TH1520 pin control nodes
      riscv: dts: thead: Add TH1520 GPIO ranges
      riscv: dts: thead: Adjust TH1520 GPIO labels
      riscv: dts: thead: Add Lichee Pi 4M GPIO line names
      riscv: dts: thead: Add TH1520 pinctrl settings for UART0
      riscv: dtb: thead: Add BeagleV Ahead LEDs
      riscv: dts: thead: Add missing GPIO clock-names

 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 86 +++++++++++++++++++++-
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    | 39 ++++++++++
 arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts  | 30 +++++++-
 arch/riscv/boot/dts/thead/th1520.dtsi              | 70 ++++++++++++++----
 4 files changed, 202 insertions(+), 23 deletions(-)
---
base-commit: 66f5c917cba075cb2cdf8cad2019f72a1df0328f
change-id: 20241013-th1520-pinctrl-dts-54275cc4fdb0

Best regards,
-- 
Drew Fustini <dfustini@tenstorrent.com>


