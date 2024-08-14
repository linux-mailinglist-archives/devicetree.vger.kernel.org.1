Return-Path: <devicetree+bounces-93686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 880E8951E7A
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 17:24:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CEE81F22A59
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 15:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02AD01B3F33;
	Wed, 14 Aug 2024 15:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mLwQ/OZ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653301B3F0E
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 15:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723649061; cv=none; b=lNkCVaOH0FVdB8D5W39qFrx+/qGxyWRE6jlA3tMUUiG/2tku1TaG4GZdnFOe1+oIuI+wdkjJ66s1b/DiSFVhTfSpCyORIuznaIuhcvMNwuQ5VFC67f/X0ndYdZ+/eK6uzaQd9g5LwBXmQlcNMLmJfqflq968KZCDpBDt66f8+Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723649061; c=relaxed/simple;
	bh=78oeiAhmfH2ypHqpWxAX9Th+93N4qk57FjBXXcPUyOo=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=fV3bhIcQJOVM3Uje8WyIMYrBeAghuqjXCLqP/L5lopVAvZpT6tZjD5lBhANyEQlBW170rtozOfPkt3tjLfTev6aatb6ntXqPGZdaIY8gGtL/bpH499HL6HeY3HaWVemOV1URxKeTepGqNYmUxWQI2Sf7dKVSaAOPynZXn/Kfogo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mLwQ/OZ+; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-4ef2006dcdbso330e0c.3
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 08:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723649059; x=1724253859; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dKK1SjuVwmihJZM8PM/ZzRGG6/dddgwtniR8fKhlYrU=;
        b=mLwQ/OZ+LpcTdlR8NBTc/9r2MPigx7CHIaqzWOKcgLE1t261Ad/sklfNel/sCnB6Ly
         kELsudhLmgS2sNZFKBxSh4WE99OaJ6iOdC23KPZUgAFm5JXqWglwgah1z9iWAYjGSMXg
         U2uVFwx1kSnBhKEHcUACO1CPdZYe9iXQ4UbYLxHUpNXVnUEh+6BYUwHVSHq8BX5XlOTr
         2gbtJOP6UkWX3dO6/uO0yfXzCQiRjG5LSDlB3J6kdVyaX/8XxKUPCov11ojUMzqtw387
         ux8B6kuPVx+ZgZxeECG7KdWLqTaRaIsdSmA343+Nf1ljwQeDmJcqVssJff3GuQYyk7I8
         UYJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723649059; x=1724253859;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dKK1SjuVwmihJZM8PM/ZzRGG6/dddgwtniR8fKhlYrU=;
        b=V2eqPDAKrtDVVx3nXTbH124sqVm90kFfFqF2bL8hwyK6Mc8Zenk5d8S5c7UGkCCm8O
         rrwJOjjsLuh61C8kwdh1UmTStOqVezYQoLihbAwoRAfxjBNF1+JIj1nbvBSjXW4saSAz
         Q8jYgU/Fn4/LbKXKUpPROusyFcC/dsv/7RmEsidAkOvSNXMITfXU5VYD8OmYZr3DniPz
         LBE6KBV8XEOmWW0JVWhIE947FqNZQJwaBfrZZdBVM3TIc2oUet/jYT5nBInngtmCWT1y
         lAPNoIb2ODQbbnUyekvahahP4R7NS1nxnPfULoWm3cwiPMJGEw3cWr2SvicIqn4Zh/r1
         oLsQ==
X-Gm-Message-State: AOJu0YxZwF4k2fHPI480ArLH3TQZQhjDl6fdRTRLxSKOrIiA4Ihfk0D6
	ozv0qtf0DgggsVdddR1qN3rHMDXBDPQ3ai/LVkD02IqELvyfdo7KJedgkb00PGkg8VgJSDcVDIw
	rjZUb02yceLRUQNzDfg/ZGJespI2mF56PgGURBzyB02BzPFZfo44=
X-Google-Smtp-Source: AGHT+IGe86fXSL32SXbx6PialMNJdcooGEDjrhcLw+A99XpN6IMEoxkaon/5KAJGro6qUc/B74E6x1GZ0HckRFnFvD4=
X-Received: by 2002:a05:6122:130a:b0:4ed:12b:ec99 with SMTP id
 71dfb90a1353d-4fad1b0fdafmr4024688e0c.3.1723649058773; Wed, 14 Aug 2024
 08:24:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 14 Aug 2024 20:54:07 +0530
Message-ID: <CA+G9fYuncv0fuBSC0A1z1G_UOv_XuMQz=DsrLZDK-Wc=10ghag@mail.gmail.com>
Subject: next-20240814: bcm2711-rpi-4-b boot failed
To: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, lkft-triage@lists.linaro.org, 
	Linux Regressions <regressions@lists.linux.dev>
Cc: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli <florian.fainelli@broadcom.com>, krzk+dt@kernel.org, 
	Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Dan Carpenter <dan.carpenter@linaro.org>, Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"

The arm64 kernel booting on bcm2711-rpi-4-b boot failed with today's Linux
next-20240814 tag. The boot failed with half boot log [1]

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

 GOOD: next-20240813
 BAD:  next-20240814

The first investigation show the following to changes and I have reverted the
following two commits and the boot test is back to pass [2].

$ git log --oneline  next-20240813..next-20240814
arch/arm64/boot/dts/broadcom/
  6e7b99d720da6 ARM: dts: bcm271x: add missing properties to local_intc
  eb81f43c901ff ARM: dts: bcm2837/bcm2712: adjust local intc node names

Links:
---
 Boot failed log:
  [1] https://lkft.validation.linaro.org/scheduler/job/7799601#L430
 Boot pass log after the reverts:
  [2] https://lkft.validation.linaro.org/scheduler/job/7799885#L440

metadata:
-------
  git_describe: next-20240814
  git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
  git_sha: 320eb81df4f6c1a1814fd02ebb4ba41eb80a3c7e
  kernel_version: 6.11.0-rc3
  toolchain: gcc-13
  artifact-location:
https://storage.tuxsuite.com/public/linaro/lkft/builds/2kdXLykPUNEquDyvXHZbubB5T4p/
  build-url: https://storage.tuxsuite.com/public/linaro/lkft/builds/2kdXLykPUNEquDyvXHZbubB5T4p/
  kernel-config:
https://storage.tuxsuite.com/public/linaro/lkft/builds/2kdXLykPUNEquDyvXHZbubB5T4p/config
  build_name: gcc-13-lkftconfig-debug

--
Linaro LKFT
https://lkft.linaro.org

