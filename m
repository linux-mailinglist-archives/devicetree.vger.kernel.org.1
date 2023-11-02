Return-Path: <devicetree+bounces-13614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5B27DF43E
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 14:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81841280DC2
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35DD318E2F;
	Thu,  2 Nov 2023 13:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zMFY9vah"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F145A18E2D
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 13:46:15 +0000 (UTC)
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5330187
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 06:46:10 -0700 (PDT)
Received: by mail-ua1-x929.google.com with SMTP id a1e0cc1a2514c-7aae07e7ba4so341253241.1
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 06:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698932770; x=1699537570; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GJhHm2XHGMd0cXtLzgcvnKoFChgDo5Gjqf+1+H8tOko=;
        b=zMFY9vahLvaORYmKehb5tIIV+Vj0CxaV274MXSF9gCgZj6KCVX5C+vIxNbOTFRG6EX
         mpTZ4x98r4bzgiU+uoiYXZYTiKJfnVX2JeHxs+6OgfJKy86LWO7M9RX3aZe0uahtdG8q
         28DYoyFRLkDMAZday/hA76PchlgPYe/xVD2WswY0D95v5CBfMzp1nGEaOHn2K5IURu2Q
         iXW4+l/sUMSorlK8D9q8plDlVq//6PJvjpobzMEKOthCQXo0nJIaL1YVZY4on3NaeFvP
         AWjRE/YLMwEsBtSq1jlSou4SRqoKIkf2+mQdiUBB1jvwdSrmEQe/Y61gBvVCNOaj9yDl
         TOjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698932770; x=1699537570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GJhHm2XHGMd0cXtLzgcvnKoFChgDo5Gjqf+1+H8tOko=;
        b=eB6CxvbgvsayZCEB3ZzXc27szTIIl2Gjl7tHK9huTrB8IHvr0lwpSb1B8trpcEFbyM
         B4o8kShBZ27o1GUo/A1WoE+6wuhkHS3bMaXjZL/z2v5h6H9qUbgz0Zt/y4FCHkQk+wq7
         Oe7nM9r0t7DivfJIMa7qkmyAuakpHEVy3eVpXBRVgYa+10Gijm+qyt2zBIwmTlDY/Qiz
         Otv8j4UeKXD3RuXAKMy0yZmxWrewAuQYcZlsGxr15GjWKs/0fHFDCo04YQ7lqm0dJybj
         ZB36rSxohxcxWQ1H6uioYyhHKacSTXIYEi/6jGuTuK9mkbdx30O5wNMhAhirgnGi57JH
         dVVg==
X-Gm-Message-State: AOJu0YyuRExDTGuGN+/ObR3qmFcKLxLfQAtOXWB6RoHXUCSbg35DktZe
	6m8QSCF6X+F4jxN8vltcjJjiI1pOEue/HN9g3eBVbQ==
X-Google-Smtp-Source: AGHT+IE3+bEozoJdnZ59uxYB6mWfKI1iSnVC64atBxRf2N39zd2ZRJUat2R/g4PSKasOK/8DHc/jAmBDp8E5SnFFvME=
X-Received: by 2002:a67:e092:0:b0:45d:56e0:7178 with SMTP id
 f18-20020a67e092000000b0045d56e07178mr2224367vsl.2.1698932769829; Thu, 02 Nov
 2023 06:46:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230828211424.2964562-1-nfraprado@collabora.com>
 <20230828211424.2964562-4-nfraprado@collabora.com> <e90cb52f-d55b-d3ba-3933-6cc7b43fcfbc@arm.com>
In-Reply-To: <e90cb52f-d55b-d3ba-3933-6cc7b43fcfbc@arm.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 2 Nov 2023 19:15:58 +0530
Message-ID: <CA+G9fYsbq28w7m-sf6LhMscXHdPs0cGXU7kK6YzjKdUFKuQ+6A@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] kselftest: Add new test for detecting unprobed
 Devicetree devices
To: Aishwarya TCV <aishwarya.tcv@arm.com>
Cc: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Mark Brown <broonie@kernel.org>, kernelci@lists.linux.dev, kernel@collabora.com, 
	Guenter Roeck <groeck@chromium.org>, Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Shuah Khan <shuah@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Aishwarya,

On Thu, 2 Nov 2023 at 17:41, Aishwarya TCV <aishwarya.tcv@arm.com> wrote:
>
>
>
> On 28/08/2023 22:13, N=C3=ADcolas F. R. A. Prado wrote:
> > Introduce a new kselftest to detect devices that were declared in the
> > Devicetree, and are expected to be probed by a driver, but weren't.
> >
> > The test uses two lists: a list of compatibles that can match a
> > Devicetree device to a driver, and a list of compatibles that should be
> > ignored. The first is automatically generated by the
> > dt-extract-compatibles script, and is run as part of building this test=
.
> > The list of compatibles to ignore is a hand-crafted list to capture the
> > few exceptions of compatibles that are expected to match a driver but
> > not be bound to it.
> >
> > Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> > Reviewed-by: Shuah Khan <skhan@linuxfoundation.org>
> >
>
> Hi Nicolas,
>
> Currently when building kselftest against next-master and
> mainline-master the below build error is observed. A bisect (full log
> below) identified this patch as introducing the failure.
>
> Full log from a failure:
>
> https://storage.kernelci.org/mainline/master/v6.6-9152-gdeefd5024f07/arm6=
4/defconfig%2Bkselftest/gcc-10/logs/kselftest.log
>
> make[4]: Entering directory '/tmp/kci/linux/tools/testing/selftests/dt'
> /tmp/kci/linux/tools/testing/selftests/../../../scripts/dtc/dt-extract-co=
mpatibles
> -d /tmp/kci/linux/tools/testing/selftests/../../.. >
> /tmp/kci/linux/build/kselftest/dt/compatible_list
> Traceback (most recent call last):
>   File
> "/tmp/kci/linux/tools/testing/selftests/../../../scripts/dtc/dt-extract-c=
ompatibles",
> line 107, in <module>
>     compat_ignore_list.extend(parse_compatibles_to_ignore(f))
>   File
> "/tmp/kci/linux/tools/testing/selftests/../../../scripts/dtc/dt-extract-c=
ompatibles",
> line 67, in parse_compatibles_to_ignore
>     with open(file, 'r', encoding=3D'utf-8') as f:
> OSError: [Errno 40] Too many levels of symbolic links:

OSError: [Errno 40] Too many levels of symbolic links:
This is not related to selftests/dt tests build.

May be due to, A loop of symlinks that are pointing to self / same files ?

> '/tmp/kci/linux/tools/testing/selftests/../../../build/source/build/sourc=
e/build/source/build/source/build/source/build/source/build/source/build/so=
urce/build/source/build/source/build/source/build/source/build/source/build=
/source/build/source/build/source/build/source/build/source/build/source/bu=
ild/source/build/source/build/source/build/source/build/source/build/source=
/build/source/build/source/build/source/build/source/build/source/build/sou=
rce/build/source/build/source/build/source/build/source/build/source/build/=
source/build/source/build/source/build/source/tools/testing/selftests/power=
pc/vphn/vphn.c'
> make[4]: *** [Makefile:12:
> /tmp/kci/linux/build/kselftest/dt/compatible_list] Error 1
> make[4]: Leaving directory '/tmp/kci/linux/tools/testing/selftests/dt'

Here is the log showing selftests/dt build pass for arm64 build from
Linux next master branch.

Links to the successful build and kselftest.tar file shared below [1].

Build log:
=3D=3D=3D=3D=3D=3D=3D=3D
make[4]: Entering directory 'tools/testing/selftests/dt'
tools/testing/selftests/../../../scripts/dtc/dt-extract-compatibles -d
tools/testing/selftests/../../.. >
/home/tuxbuild/.cache/tuxmake/builds/1/build/kselftest/dt/compatible_list
make[4]: Leaving directory 'tools/testing/selftests/dt

Please build by using tuxmake and validate builds are working.

steps to reproduce:
=3D=3D=3D=3D=3D=3D
#!/bin/sh

# TuxMake is a command line tool and Python library that provides
# portable and repeatable Linux kernel builds across a variety of
# architectures, toolchains, kernel configurations, and make targets.
#
# TuxMake supports the concept of runtimes.
# See https://docs.tuxmake.org/runtimes/, for that to work it requires
# that you install podman or docker on your system.
#
# To install tuxmake to your home directory at ~/.local/bin:
# pip3 install -U --user tuxmake
#
# Or install a deb/rpm depending on the running distribution
# See https://tuxmake.org/install-deb/ or
# https://tuxmake.org/install-rpm/
#
# See https://docs.tuxmake.org/ for complete documentation.
# Original tuxmake command with fragments listed below.
# tuxmake --runtime podman --target-arch arm64 --toolchain gcc-13
--kconfig defconfig --kconfig-add
https://raw.githubusercontent.com/Linaro/meta-lkft/kirkstone/meta/recipes-k=
ernel/linux/files/systemd.config
--kconfig-add CONFIG_BCMGENET=3Dy --kconfig-add
tools/testing/selftests/cgroup/config --kconfig-add
tools/testing/selftests/cpufreq/config --kconfig-add
tools/testing/selftests/efivarfs/config --kconfig-add
tools/testing/selftests/filesystems/binderfs/config --kconfig-add
tools/testing/selftests/filesystems/fat/config --kconfig-add
tools/testing/selftests/firmware/config --kconfig-add
tools/testing/selftests/ftrace/config --kconfig-add
tools/testing/selftests/gpio/config --kconfig-add
tools/testing/selftests/ipc/config --kconfig-add
tools/testing/selftests/memfd/config dtbs dtbs-legacy headers kernel
kselftest modules


tuxmake --runtime podman --target-arch arm64 --toolchain gcc-13
--kconfig https://storage.tuxsuite.com/public/linaro/lkft/builds/2XYjd2yxHi=
ay3gVALCGpAch4G8o/config
dtbs dtbs-legacy headers kernel kselftest modules


Build links:
 [1] https://storage.tuxsuite.com/public/linaro/lkft/builds/2XYjd2yxHiay3gV=
ALCGpAch4G8o/

- Naresh

