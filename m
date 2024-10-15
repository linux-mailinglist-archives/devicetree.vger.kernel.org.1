Return-Path: <devicetree+bounces-111491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BC699F014
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 16:49:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A1E7B2295B
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 14:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2B321C4A2C;
	Tue, 15 Oct 2024 14:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xd3dAV66"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6481B2188
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 14:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729003785; cv=none; b=O4p92hD3uSnfKdn9snb7yl3co47lWkiqK9ewtllcuHydCcPiZsP2ltEYDuTbWOifS5XhPzubXLcdWN2eptBtECQIvEJIrVkzF8d16LvOCaSGWGO1ocbQkhJw7sO1p+OMhsaJ2Z1pnTKiG+EEKqBpmpPmeZsNWjVR3MxYoG1ksiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729003785; c=relaxed/simple;
	bh=jftCcgpGscguxSk6kXzdvDBaiXSUimRLuEL9wKI3/7I=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=RgbxRnhfGuPbqgNuq8xb+fe+/IGNc0knpDPOQ6+S8CBRhN+8utIY32cU9W6GvZI4/PSEHTCoXvOoiZXRs4Q8rOv5VgnwaQl9ItK4NutfsVtlLeOadS0jUC2UXUfmVS+FXW5YO8rd+D/gnXBjxZWx8lggU265e4EwrK+TlVLIeK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xd3dAV66; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-50d4213c5f6so836941e0c.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 07:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729003783; x=1729608583; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tvpxbUbkgDaEkuRJpwxPS3JaI9LTJgLeDg7mwmImTTA=;
        b=Xd3dAV66YNsI9470LoN+9u33Sr9YI8pXUnJZctXxD01wzndeuYyAtvdn1T8liC/9Sh
         KNFrDozcOj2A7nh4OfL03yxRDQmSWvquzPP7srIsR9lHSEUHKqvl1gD0FCJPs3KkfGnB
         hBXOvebCMHVZnnqlKAclrjTs4z3NPaJS4tFTqyOaL9y0HyfmSnWrzClh7HHcABSHjbNQ
         NLlrL4vl/TwJhY7pdtgdLUz9VgJTIWNL1fhtfaTMP4UGwPduo2R2oBsL/b2xF3uwUvqs
         J5aE52N4dMyWGweuKGrkyjw+UdlWAWlDDwlHPq+kWBoDvd8EA2Sy9vdzy52yOsrs84Gp
         dAGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729003783; x=1729608583;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tvpxbUbkgDaEkuRJpwxPS3JaI9LTJgLeDg7mwmImTTA=;
        b=Gl6hEJNnuSSnaR7+y6GFmeiZlo54Ks1XTG55s1IAl7alJrvJXoWHShT9vvpTeSmUVY
         AZpCJMAbdnA7YRkIhDWy88pHZ7/wxOzfGcX4CjiN3KTfnjvfhkzzNgg8SaCR71fMJDL8
         2PaTsKaEnPMBR/blsRLPcf4VfPP1IvhdY6rR4/DCHpfrmaqV15mUql0CtFcs+fjRIY0Z
         F6yJIKN465+yYr0LDymVkx3BqoiroJZl0sSmIrVifL0j5VUh+hp5jnD738s0mzHlC90T
         zyhjHNcXPCtX0wOTRewUhGpZxysJg2mfXKLJzLmF5N6itDVFpW2b3SXTmEAGrFds2zdC
         FIFA==
X-Forwarded-Encrypted: i=1; AJvYcCXinqlvpH/o5eJ5VatT+Ar0OWuDjhjEzd4DNHv1H7zt8a8ielwS9dTNWhGCAq3kyuVyQyze2aXyptRy@vger.kernel.org
X-Gm-Message-State: AOJu0YyO6aPoP2xUtHZ+aWxqy1EKhIRIsrOyHKZR3Uu8iIKgcp1hxG1d
	1KXJ6/CQ5j8D5kmL0GfnbzETZqQIihe5ho0ZAljLJcHVuuUQv3jcSVXx0wMA6DV2LH22NsW9a1K
	HnPsLKSUF2TykMx278/1xbwTAT50OzeqXtpk/oQ==
X-Google-Smtp-Source: AGHT+IFyCjZYFgzvRtug/FF7Rkg4BIV5TdPRIQDiRczoqfOkCPSprOtAZ6MVzV6QhnnT962rmYjPy+oKdl/xd0zwff4=
X-Received: by 2002:a05:6122:3b01:b0:50d:7a14:ddf6 with SMTP id
 71dfb90a1353d-50d7a14e8a3mr2075278e0c.10.1729003782861; Tue, 15 Oct 2024
 07:49:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 15 Oct 2024 20:19:31 +0530
Message-ID: <CA+G9fYuhS6Ltemvb_EZfq+j3PpTnmo4qb46Gu1s6L47wMsNO3g@mail.gmail.com>
Subject: next-20241015: drivers/of/address.c:244:31: error: passing 'const
 struct fwnode_handle *' to parameter of type 'struct fwnode_handle *'
 discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
To: open list <linux-kernel@vger.kernel.org>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Linux Regressions <regressions@lists.linux.dev>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, clang-built-linux <llvm@lists.linux.dev>
Cc: Saravana Kannan <saravanak@google.com>, Rob Herring <robh@kernel.org>, 
	Anders Roxell <anders.roxell@linaro.org>, Dan Carpenter <dan.carpenter@linaro.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"

A larger set of clang-19 builds failed on arm, mips, riscv and powerpc due to
following Linux next-20241015 tag and these include tinyconfig, allnoconfig etc.

And gcc-13 and gcc-12 builds are passed.

First seen on next-20241014
  GOOD: next-20241014
  BAD: next-20241015

List of build regressions,
arm:
  build:
    * clang-19-sama5_defconfig
    * clang-nightly-mxs_defconfig
    * clang-nightly-exynos_defconfig
    * clang-19-at91_dt_defconfig
    * clang-19-pxa910_defconfig
    * clang-nightly-vexpress_defconfig
    * clang-19-vexpress_defconfig
    * clang-19-mxs_defconfig
    * clang-nightly-davinci_all_defconfig
    * clang-19-allnoconfig
...
powerpc:
  build:
    * clang-19-tqm8xx_defconfig
    * clang-19-tinyconfig
    * clang-nightly-tinyconfig
    * clang-nightly-tqm8xx_defconfig
    * clang-19-allnoconfig
    * clang-19-ppc64e_defconfig
    * clang-nightly-ppc64e_defconfig
    * clang-nightly-allnoconfig

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

Build log:
-----------
drivers/of/address.c:244:31: error: passing 'const struct
fwnode_handle *' to parameter of type 'struct fwnode_handle *'
discards qualifiers
[-Werror,-Wincompatible-pointer-types-discards-qualifiers]
  244 |                 err = pci_register_io_range(&np->fwnode,
range->cpu_addr,
      |                                             ^~~~~~~~~~~
include/linux/pci.h:2022:63: note: passing argument to parameter 'fwnode' here
 2022 | static inline int pci_register_io_range(struct fwnode_handle *fwnode,
      |                                                               ^
1 error generated


Build link,
-------
 - https://storage.tuxsuite.com/public/linaro/lkft/builds/2nShjJ9pOcjqxIXViYuRI5haZZP/
 - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20241015/testrun/25441737/suite/build/test/clang-19-tinyconfig/log

Build history:
----------
 - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20241015/testrun/25441737/suite/build/test/clang-19-tinyconfig/history/

metadata:
----
  git describe: next-20241015
  git repo: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
  git sha: b852e1e7a0389ed6168ef1d38eb0bad71a6b11e8
  kernel config:
https://storage.tuxsuite.com/public/linaro/lkft/builds/2nShjJ9pOcjqxIXViYuRI5haZZP/config
  build url: https://storage.tuxsuite.com/public/linaro/lkft/builds/2nShjJ9pOcjqxIXViYuRI5haZZP/
  toolchain: clang-19
  config: defconfig
  arch: arm, mips, riscv and powerpc

Steps to reproduce:
-------
# tuxmake --runtime podman --target-arch mips --toolchain clang-19
--kconfig tinyconfig LLVM=1 LLVM_IAS=1

--
Linaro LKFT
https://lkft.linaro.org

