Return-Path: <devicetree+bounces-252566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA946D01147
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 06:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 414133008771
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 05:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E0C2F12D4;
	Thu,  8 Jan 2026 05:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=summations-net.20230601.gappssmtp.com header.i=@summations-net.20230601.gappssmtp.com header.b="xGKeAvZc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7E52ED846
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 05:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767850075; cv=none; b=qixaiNRObO5qZm0g0QwuJ/dI3Ld8X1pUPLRWJtyO0QNqfvR6ANiAYg1gnCyUhFvkRZYnCJwdCOyTKAvMmMRbbJdgNI4GD9EaThKPdAzep9as35fSifywaAOboj/d9EzdBdEgt++Uw352q+j/QqRlu2yQVVVw4iCx7DsCP/U/ljQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767850075; c=relaxed/simple;
	bh=axExFEVawx6b/HLBeJrzGMEy2cTYiNuIo7O1q0+jeGs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=thiYjlbH3zehXFRY+69vY2iUlJdx436D4KdXlZ8PkeyzDh1nN5pjA8TD9a0ZG2gJHEgmAEAryNKNlVATxpG1H1l9k1cTv0ZgmkgO4XVdYiXKLTCiElIYurOUPr8Ggm9cOveoecD3LiMR1j1RaOwCuhTy+Dp0/KwJ/hAIl+RuJt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=summations.net; spf=pass smtp.mailfrom=summations.net; dkim=pass (2048-bit key) header.d=summations-net.20230601.gappssmtp.com header.i=@summations-net.20230601.gappssmtp.com header.b=xGKeAvZc; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=summations.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=summations.net
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-78f99901ed5so30637657b3.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 21:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=summations-net.20230601.gappssmtp.com; s=20230601; t=1767850071; x=1768454871; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BC+osoIwsp+MvsvfieiIYrUxWM9BGrlddB8KAIiHx4w=;
        b=xGKeAvZcSxK9lW8webwP+1N941XNaFYkt61G/E3lNAci0GtowPkgoiVTl9QSVaXWBR
         NWQe8Q+Jhim9ceguMLnCa8ihrljpG+P4/GTPznEWVBPPVUGGQcE1QAHTraBESCHwq3kX
         RnGM4vAdxFs7TFxTxOzlEQMAfRXB3lzqL/2nltlRl1Gn4Z3OOM1XFYihd4I2Pg6HYEI+
         lgzuuOMN7Z8aCJL0rFbnUBYqomZ1NaPVpmFm/TQwMRSeOZahfYNjMPQzlZJLLVvr0Anb
         zgZIN7rT030zYJ+BgnXq1LWJC2VEXQdpZHi/IeJSicd0XRgAGn0S/dNN306t5Vq52DcH
         cLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767850071; x=1768454871;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BC+osoIwsp+MvsvfieiIYrUxWM9BGrlddB8KAIiHx4w=;
        b=rco8GYZP6hJAgprB6pRoDSJ82mJ6ywFfUIbkl7vRyEqYiPnMXGFt72DaVoaPloNNxV
         D3AWz65K3YeX6amlNWUXpxlKFZ01rGL6jAxvHlgfgFy9NA08JQdmRtlaVDl9LQ2GSWL4
         /0mzUbSXy9fUADAs2wabq4W/67SLPmIGKh9G0JCGz3kE4Ad3e/TahqQHKIQmiX5NvuRy
         2Ao+C4du8CJcwP22o9Nj1LkvAjub6ZitkuE6lu88c/6C6F3sM9S0518lym/WJ/W+vg5+
         HBBTePrQz1Dl1pe+2U/vYRF1QN77DffB7zDrwUhxStsH+6DAsATEE8G0YHs1oey/6rQZ
         a4Lw==
X-Forwarded-Encrypted: i=1; AJvYcCWbBwnt/bIFbdc8QT13p5l9tV7mm9zgDak8Piqpx/+CmxQAPQ89PITu5QFDpuf569NCPDOzbo42V3uY@vger.kernel.org
X-Gm-Message-State: AOJu0YxdSJdGKf+w4FBPjlu9vg3/kER64BeKYeHrfeRGDYKy9DF4GTjs
	FXQCSg5E3kX/6CR2Ryn7HMF22XDI/nvp+ky9JG5ppnwIuX5JONmgyWl/ju+RFesVY1b9btJTJVf
	pnfPifK59+txLq3LGnlYVhHzKdXrjfMXtc7Y5Vica7/A=
X-Gm-Gg: AY/fxX6ReqKHmBt/iKel52+R6Ly/gC7CjdttmRtRfJAyOv+VjYqeo9ebZrrc9MZznfl
	HaWiZUYdlJgFHAuHJ3gghM3jcZpWBGKkojN0/lU+GdEEQkxiWuxKjjpvtNf5/NSwv4MoEaYy/gq
	l8G+HEXwhfedc1Ps/hso30FRdbbANC/oJE2qdlaLjpZ3CCUG+YtFrWLEisbQroO1p/v9RexKBbO
	kjvIIt0IfM8PoXxM29E8Un+9XuXmRCEb4u+oy9joQU96I3YdRQ5+aq3Dk6E7Z1ymYstQP7N/GRh
	11fkhsWXSu7GjNEmWd1mqdPrhSp3
X-Google-Smtp-Source: AGHT+IFOgL9QuUd80/piaFldcHRAVd0y782EaLehHJfIPXTxtTytmiYz4W9EajgqaU/7OrfDZq3ETfFnz3U6oZf/2iM=
X-Received: by 2002:a05:690e:120f:b0:641:f5bc:696c with SMTP id
 956f58d0204a3-64716c60119mr4870525d50.72.1767850071169; Wed, 07 Jan 2026
 21:27:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260106092117.3727152-1-joshua.yeong@starfivetech.com>
In-Reply-To: <20260106092117.3727152-1-joshua.yeong@starfivetech.com>
From: Rahul Pathak <rahul@summations.net>
Date: Thu, 8 Jan 2026 10:57:39 +0530
X-Gm-Features: AQt7F2qhmjlZCACoqEpff45oADUXIoYNWJ-4094MakljrIym7FWPaVOI4-KiK_c
Message-ID: <CABdD5xkq=LbaUo=jDGSF2U2Rb0r13EEJQMfSjxEMsSX0mCDyhQ@mail.gmail.com>
Subject: Re: [PATCH 0/5] RISC-V: RPMI performance service bindings and cpufreq support
To: Joshua Yeong <joshua.yeong@starfivetech.com>
Cc: anup@brainfault.org, leyfoon.tan@starfivetech.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, pjw@kernel.org, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, rafael@kernel.org, 
	viresh.kumar@linaro.org, sboyd@kernel.org, jms@oss.tenstorrent.com, 
	darshan.prajapati@einfochips.com, charlie@rivosinc.com, 
	dfustini@oss.tenstorrent.com, michal.simek@amd.com, cyy@cyyself.name, 
	jassisinghbrar@gmail.com, andriy.shevchenko@linux.intel.com, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 6, 2026 at 2:51=E2=80=AFPM Joshua Yeong
<joshua.yeong@starfivetech.com> wrote:
>
> This patch series introduces support for the RISC-V RPMI (RISC-V Platform
> Management Interface) performance service, covering both Device Tree bind=
ings
> and a corresponding cpufreq driver.
>
> The first part of the series adds YAML bindings to describe the RPMI perf=
ormance
> service as provided by platform firmware, as well as the supervisor-level
> controller interface exposed to the operating system. The bindings also d=
ocument
> how CPU nodes reference performance domains managed by RPMI.
>
> The final patch builds on these definitions by introducing a cpufreq driv=
er that
> leverages the RPMI performance service to manage CPU frequency scaling on=
 RISC-V
> systems. The driver supports RPMI access through SBI-based transport mech=
anisms
> as well as dedicated supervisor-mode transports.
>
> RPMI specification reference [1] and [2]
>
> Test Environment is as follows:
> https://github.com/yeongjoshua/linux/tree/v6.19-rc4/rpmi-performance
> https://github.com/riscv-software-src/opensbi
> https://github.com/yeongjoshua/qemu/tree/rpmi-dev-upstream
>
> Use '-M virt -M rpmi=3Dtrue' when running qemu
>
> [1] https://github.com/riscv-non-isa/riscv-sbi-doc/releases
> [2] https://github.com/riscv-non-isa/riscv-rpmi/releases
>
> Joshua Yeong (5):
>   dt-bindings: firmware: Add RPMI performance service message proxy
>     bindings
>   dt-bindings: firmware: Add RPMI performance service bindings
>   dt-bindings: riscv: cpus: document performance-domains property
>   cpufreq: Add cpufreq driver for the RISC-V RPMI performance service
>     group
>   MAINTAINERS: Add RISC-V RPMI performance service group


Hi Joshua,

I have a general question -  RPMI performance service group is
primarily defined for devices but can also be used for CPUs.
Do you plan to add a RPMI devfreq driver too for devices?

Thanks
Rahul

