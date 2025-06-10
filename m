Return-Path: <devicetree+bounces-184199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0E4AD3389
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:25:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52B591897024
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC97628C5D0;
	Tue, 10 Jun 2025 10:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WunM42N8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BEB28C2AF
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 10:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749551145; cv=none; b=S6+sJoiRvOvCkYGOf89x/bHfs4kX01MRM4hrfOXYwIK8s+9/ELrbqufJ7GDP83wDtuixYHGhrH5VtlDTIKfLXgMHwgA1tW7O4APUlcRsgxmfs6Qj6drRIW56S27EeO+XIbt+BS48rRS41mPc010tVpqNt47UaBOdFRUEqT6wOiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749551145; c=relaxed/simple;
	bh=oHV889pk9/dbexLINzXMTXrUu3qmaDgybAAQrKHQt4s=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=g6mphfiXsJr1ce2aNsdYfdxYC/4Txkb3jesQnZhV5ghjNgddE6Cqm6ZoiI214RyMLXAAS8HfPzKLQeWBG0ppVP9ENOpRna03+bsAu2cChOQgHTrMuOQY/bhpMq7iHCpAN8TqPvFboV5oarucVXLd16mz1oaZBcfk7UoB+HMlFlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WunM42N8; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-530807a856fso4467698e0c.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 03:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749551143; x=1750155943; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/KbPqIjq6A0gP5OwcTzAJtKToDqxED7lTQn+3ShWhu4=;
        b=WunM42N8gXN9vkYLoIyr4uvnA98ADTDFYeHeCX4aJZb6T3lh53yTLD71IV9JrJFwAB
         ZzZkmeRub+nDt+swTpSd2eddIK/aXhmyVMC21SO+oIkQ4CvOtqDZubMnMQg/NPYv0SC2
         Yi7Fq5JyjVzxDyWDzd1ROiZJTQ8J3HgsoWJIBSv5NWpEDvT3y6Gc1a0FrzWav/slV9PE
         xDsCV727VuVPtCmMccUTNW+q7W4o5QW4AI6J1m0WCPRfJaqb64wtvC0aWLldiyS+jt0e
         A6kAjYkPlRlA9sjlmlbnsoHJuy8eZ1G8pZT6JTdzjkc/vnwhy72Yi2LNqceLydsRJQpV
         vZUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749551143; x=1750155943;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/KbPqIjq6A0gP5OwcTzAJtKToDqxED7lTQn+3ShWhu4=;
        b=fve/nZEqsy2nvynvMNutsBz2MujAwgGN6I2VNrlFXPOQ4l59E+eM7ujLYe4tdPw41M
         KvkSM9+/EYFz6tCd0PLTXBRcj8ORl9ODaIBJFqxp8eva+Iq9cCG8CKf5cNB+ZXO/kdf5
         Ay/1ZPvTX3V/Pn3z+15DRylJ2Qv64usSOkhSR5TkDKNvynPZiQKhQ4Wi2QQCkbz7Xcgy
         mQs9UwPAsMqVRup96rJbmvkmknOYMLFonDG7QghAaHFkTrEv4AL1i0dGLnYN4mII7j9G
         n6IAx6PaCFPTQcwhQC/ds4YzqutLfBtdfbR16HMV3+ru6s9hYDwgBt5xeXY2d49iOsk9
         CLEA==
X-Forwarded-Encrypted: i=1; AJvYcCVvFyKNG64qcJ4GIWmPAYBjVpxaFNCs0lna6Z02o0KuoOg6R1lgNF5dbPz+XzZarbeCLC6Ww1IHE7CF@vger.kernel.org
X-Gm-Message-State: AOJu0YzcEEMJL8hXEOcXnsptIXNJr/cmX1kk9bJnjFMM2H9lDW7CpI4l
	n0f7/FeRZY/VhmgE/0CqyIrsxDuPQeM2ysOEQHyGv3/t44x0aJj6kjXAv+/REQmFM4jUm2GPD9+
	a5TgsXwBDXPaLAnHJAow/BLO4l9a9hYfveGymHRogvQ==
X-Gm-Gg: ASbGncuXnoqmXUKrIt99gQeq90bHozNb/yIrC/hXsa5MvsAymLgJISRFKT0Tkqv50uJ
	rmMV5WaM0Ve0Gu3jnGM0faSlsd4UNIcI1li2cYHiqqR3GyPhTOiR7hzXEqv0GjZXfa9pc3etvm5
	g1pMDa5/ge8dTDbRFPepIf66JT/iTtgoOq36vqV47W2f64wYilzFuyicwfKbEGsrnWkaxiCbMB5
	NkhBTQ6pOPesmY=
X-Google-Smtp-Source: AGHT+IHshLTe8OuH7+ip/8ueWp0i74zRNPn5hHiiSdvdI8UuOJ6eD1FAplWjvLZQZJWIGjYXeSMeV/zYAYuInU3pbBs=
X-Received: by 2002:a05:6122:640c:10b0:530:2c65:5bb8 with SMTP id
 71dfb90a1353d-531131187b5mr1514506e0c.1.1749551142776; Tue, 10 Jun 2025
 03:25:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 10 Jun 2025 15:55:31 +0530
X-Gm-Features: AX0GCFuPO70Fr5H2aOlLeOzXniiVZlpD36FORRmiAmu3qpXvFghQfZN4JyKcc9A
Message-ID: <CA+G9fYuppX5LeRjOAZWsYRCs76PVbnv-TN_RrszhDsk=KregyA@mail.gmail.com>
Subject: next-20250610: arm64 No rule to make target rockchip rk3399-rockpro64-screen.dtso
To: open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Regressions <regressions@lists.linux.dev>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Peter Robinson <pbrobinson@gmail.com>, krzk+dt@kernel.org, 
	Dan Carpenter <dan.carpenter@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Regression while building arm64 with the Linux next-20250610
the following dtb build errors noticed.

Regressions found on arm64 builds
- dtb build error

Regression Analysis:
- New regression? Yes
- Reproducibility? Yes

First seen on the next-20250610
Good: next-20250606
Bad:  next-20250610

Anders bisected this to,
# first bad commit:
  [49760b9f60528393cca3ea35c4d0719f84215a48]
  arm64: dts: rockchip: add overlay for RockPro64 screen

Build regression: arm64 No rule to make target rockchip
rk3399-rockpro64-screen.dtso

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

## Build error
*** No rule to make target
'arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso', needed by
'__dtbs_install'.

## Source
* Kernel version: 6.16.0-rc1
* Git tree: https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next.git
* Git sha:  b27cc623e01be9de1580eaa913508b237a7a9673
* git describe: next-20250610
* Toolchains: gcc-8, gcc-13, clang-20
* Config: defconfig
* Architecture: arm64

## Build details
* Build warning:
https://storage.tuxsuite.com/public/linaro/lkft/builds/2yJ4IOQa1XxMqDgmzjEl7VszYE9/build.log
* Build link:  https://storage.tuxsuite.com/public/linaro/lkft/builds/2yJ4IOQa1XxMqDgmzjEl7VszYE9/
* Kernel config:
https://storage.tuxsuite.com/public/linaro/lkft/builds/2yJ4IOQa1XxMqDgmzjEl7VszYE9/config

## Steps to reproduce
 - tuxmake --runtime podman --target-arch arm64 --toolchain gcc-13
--kconfig defconfig

--
Linaro LKFT
https://lkft.linaro.org

