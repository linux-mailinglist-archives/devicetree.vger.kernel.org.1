Return-Path: <devicetree+bounces-63731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B803A8B6384
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 22:28:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F5F11F22A7A
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 20:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 131FA141995;
	Mon, 29 Apr 2024 20:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xSjOtVAd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8FC13AA5D
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714422535; cv=none; b=L4VV4huMfbMEAqVLdNqVysdb4EkNvgxAvADvzz4r/doRDCKTWaHXDX3BZwoDLDgyk1CF7JF4Og8f282tbt5PInSVc0R1c1dPN0HXEkrKCbkWsEu38nrZOjVJCvZtxxNviFCBtyliTloNUHdDhon4EVZovzt8Pw8Fl7UpWbajNVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714422535; c=relaxed/simple;
	bh=qD9fA+6x5YEjH6N/bnfv4m+coO6ZZOEi8S65u1eBRvM=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=iqHOnIauU4MI4WGEqSL1tgrRNQVnY/FItBkxCfSjXESZGUdTODx9oJxdl+WOgOv8w2zZ8CuBRJE1gc3FZI7cIjFKer65qjqdTRENISdT4FjvVsCLTRjs0x/ynlv7EZ0IhJRqLB+yZKzVxs6fr8r8bJ8lR78iybfb8E1o+Lii03w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xSjOtVAd; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-4dac6802e7aso1077421e0c.0
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714422532; x=1715027332; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lKuZuU03NTynIqlQQqRGb6a67x7v1EBlFYJcjyUFQ04=;
        b=xSjOtVAdPBiDeq+zZQjPW8x+wzsBe/N4ImR1v3wOB/iC0ayq3MgIZP2rpzBNplGlNF
         S3FdSyMZpGDZp9G0pnx1iHiwdhg+WJLxdAJV5OLfKmn8khNnvscOpOgZEHwFlcKBczX2
         0+b3PD1c29mzNL8Fjsdq66s5d6x9T5ddZDyA6q1NtyQkD0wuLdE9g1XcVWzddrzfRbii
         FGKpoXkHfwTp0ziFqO8c3MpDgMDOU5IoCCuCX0TNKdnaTF+f10p9gC7GciX6LhneAbQR
         l1+JgmXvTcYOsT3PTfe33mLPH5y6p4kOnJX4tELHYXLijJfjB1j3G2YJlgves14dkhcH
         ZdCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714422532; x=1715027332;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lKuZuU03NTynIqlQQqRGb6a67x7v1EBlFYJcjyUFQ04=;
        b=D/T92i5Ju0Xci9r7+4YZ1hRo+nxY+uxqyMYP85ponTsXbqijcPP4yMSrbdWK81j4In
         UN42qCXnYm8PRcHQAcQ99mVJHuZFsIowtDmpMYqMUyuFuqDltd+9q1i2JDwR+pyBC+Se
         3pAoxCKdH87YSNAOZj0ENqgQ5w8OaCBR+0Ra791xmM5a7P4G8uRKmY6VLJNeRyYMFDV8
         pZPdBPgyM9JQWSpXWQI/omMISJXgz6t87hzhgTcWKu0Y2DAHtr2st3E+grA0CPpkRuyk
         AlZ0/oo0zgyVHAP2DXkxHjx/R75Y8JUTs1d/tb2ZZyNTWPbjCzonsHcOqylAgx3OC22+
         H8og==
X-Forwarded-Encrypted: i=1; AJvYcCW70oFgpzLHCNrU1tG7dqF6PGUx5kGl3fTa+wha8iMW6GaX581v3PcgEK/EeAp2ETBqFspRiU5HUc9zX32nAHDcqwXKIf05huOVWw==
X-Gm-Message-State: AOJu0Yz9IDZz1EFGn5xyCewwhi00ayDM9V/2pUWecvPZs6JC7kauVz1P
	autH7qN8vJIWcnn+FLULfVJRzgPiWzTBg0JVg4Vsrd4tVkK8oD8DSB9WBqOn/zb9rL7Hh6xXKm2
	Jc93LZQdlw/uuVay+f66OsrIXiMuBmOOIWF2oPg==
X-Google-Smtp-Source: AGHT+IGWE4dZTf8eDRkrviqbjY4zijszcVXO72v7h15YxEvhFegCWLtOLh372/gBc1wZQisnIMhcKj7hvdbxUkY8IEQ=
X-Received: by 2002:a05:6122:2221:b0:4d4:20fa:eb0c with SMTP id
 bb33-20020a056122222100b004d420faeb0cmr11396869vkb.5.1714422532382; Mon, 29
 Apr 2024 13:28:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 30 Apr 2024 01:58:40 +0530
Message-ID: <CA+G9fYsXkn3xcdOm7H3+s4Xw_vc0f+uqCbFHHOcQE6OUascTsw@mail.gmail.com>
Subject: arm64: dts: ti: k3-j784s4: No rule to make target:
 k3-j784s4-evm-usxgmii-exp1-exp2.dtb', needed by 'arch/arm64/boot/dts/ti/dtbs-list'.
To: open list <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, lkft-triage@lists.linaro.org, 
	Linux Regressions <regressions@lists.linux.dev>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>, Chintan Vankar <c-vankar@ti.com>, danishanwar@ti.com, 
	krzk+dt@kernel.org, Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@linaro.org>, 
	Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"

The arm64 gcc-13 allmodconfig builds failed due to following dtb issues,

Looks like the recent changes on arm64: dts: ti: k3-j784s4: are causing
build breaks.

arm64:
  allmodconfig - gcc-13 - fail
  allmodconfig - clang-18 - fail

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

Build errors:
----
  make[4]: *** No rule to make target
'arch/arm64/boot/dts/ti/k3-j784s4-evm-usxgmii-exp1-exp2.dtb', needed
by 'arch/arm64/boot/dts/ti/dtbs-list'.
  make[4]: Target 'arch/arm64/boot/dts/ti/' not remade because of errors.

metadata:
------
  git_describe: next-20240429
  git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
  git_short_log: b0a2c79c6f35 ("Add linux-next specific files for 20240429")

Steps to reproduce:
----
 # tuxmake --runtime podman --target-arch arm64 --toolchain gcc-13
--kconfig allmodconfig

Links:
----
 - https://storage.tuxsuite.com/public/linaro/lkft/builds/2fmJ3r7MbjcUn6ZjBeDKT6SpKpH/
 - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20240429/testrun/23715285/suite/build/test/gcc-13-allmodconfig/details/

--
Linaro LKFT
https://lkft.linaro.org

