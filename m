Return-Path: <devicetree+bounces-102764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D719782D9
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 16:45:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D63B71F21B96
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 14:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3B8A2576F;
	Fri, 13 Sep 2024 14:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eOZSeYOY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E814F18C36
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 14:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726238713; cv=none; b=JzB/YJzNj2Dj2bwYOOetnrQcUHi0uQf5MNUcUzEp07loGTDNVolpMhSUq/w6Qov0J2ir88Iite9lgnANoWooNy2xK0nSTEQDGL7pGRGpp1cVj82Onhr4+GJxWdBPZYZBiI8rzMZRbI2KhQ5PZGXn9Oofx34vUpSp/SR7eVqJg8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726238713; c=relaxed/simple;
	bh=g2ybvLjs9yiUiIZpkDchh13jHortfCHh94LQJ1NTVQ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YIJDVhn1tEqTdKa23JuFlsdsRD2+Czvm+/qyjgzSe+cMm8mXcPkQxs4cRu0ijiEoNbh2NlG50QoCSSjpuAn7QJCge5qEvUCSUS/86JOGW+MV/usXk/wXpx3j6Ns991I83KfRRUUx/xCW/nK5jyiMaB60dsQ/ccDph/7zGuPGhTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eOZSeYOY; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2f760f7e25bso24060081fa.2
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 07:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726238710; x=1726843510; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hRlsoz0SQi6Y31kBnSS0wNEmQwFLdHQJn6urXpVey+s=;
        b=eOZSeYOYHaJS/OgMMvEGOWpt7Z82u5QnWTgkPC5R/+k/DjCxmYHst1z2BGis5DZ1or
         hMxZPOSVgqm6QsACdsNoFJmqmeJXie1OH2vVx8r+w87AFNw5rD207X74MA73CyvZFVbh
         CKubRBLExbQ8qDc7T3+0GSiFJ2f16VL6PyR+mjC2jj5mYf/UOSgcgiz5ebTvGr8OslUX
         LxJwHlutJgGbaU8aQ1/c3Xa0bQ1t1viUuGOHXgTRxWyHGKXjOkgqXrxnb68o7hD/YbVi
         UeWtFuMJzbf9LgsFLqqR7NZjGXZZQ61Rgwc3+Zw33H6kDmNDwCBU/oIRdcohsOzjETWT
         eyTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726238710; x=1726843510;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hRlsoz0SQi6Y31kBnSS0wNEmQwFLdHQJn6urXpVey+s=;
        b=U2YxvxKLIt/BjxLSv6YTRyhmEHtLnOsNAsCFQ/1CJ64rh+cRvCQO5lyL7qItwROUku
         TyaGMLGQKsBqLYYLI7hpV+JQlGFvKlkePOMfTv5Buq9a5IypRMfsP5oYm6sYNo3/rMqB
         TODL6Fq9JoXm+OtRK/KG/d3DMLi1wNZpcO9Gm9I+wbEam+QuxYw7RhhGqkySRHI1IYhj
         gXAeq1gSMtEy25u8MdG9HU2dIa1J3GUMdHIJuaKlz+7zSyZuRDhUT4wc8jUZqyNZqKDH
         YF9fks6U25kD7g+JeHvqOYXLnS+NxgmmNx9OIdkbljZ7ZDl3ht8omkYwpbbCmV66w5T9
         eHKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnFhkvgSqyzPc7Akd+3MNQZ7/JqdjrmdgDANZwQlM82Li1e7l7BZ4G6W14xuYwVtyEPWSB4coQp3+v@vger.kernel.org
X-Gm-Message-State: AOJu0YxiM1QrCr5bTaPpmXUj37iianqhgjWvyama3JWF7MqMbG2T80T8
	WB5MGn9+BDQTvusVVXbqApw9a1Kguc0h2nXl32Dzzr9TwDQLWFJ1YxvJUh3u/g7umC2CchZPp5p
	8hycU8P13ykP8m2c/urzV5M0Ms3feSC1rD32Hew==
X-Google-Smtp-Source: AGHT+IHUFXrwlfPMaxEeDNt9yglyljvYbg/DLrmw5ptYs+I26fJbLl2Yz4iDT0/avZHjhVpNTTnBoHkg2kD6Gg/9LqI=
X-Received: by 2002:a2e:4c19:0:b0:2f6:d5e2:7889 with SMTP id
 38308e7fff4ca-2f787ddf348mr27934931fa.19.1726238709788; Fri, 13 Sep 2024
 07:45:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240912170025.455167-1-valentina.fernandezalanis@microchip.com>
In-Reply-To: <20240912170025.455167-1-valentina.fernandezalanis@microchip.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 13 Sep 2024 08:44:58 -0600
Message-ID: <CANLsYkwC0hW3YPmfxOCW+sQcNVVficvPX0+yhsTnKb70f_4taA@mail.gmail.com>
Subject: Re: [PATCH v1 0/5] Add Microchip IPC mailbox and remoteproc support
To: Valentina Fernandez <valentina.fernandezalanis@microchip.com>
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	peterlin@andestech.com, dminus@andestech.com, conor.dooley@microchip.com, 
	conor+dt@kernel.org, ycliang@andestech.com, jassisinghbrar@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Valentina,

On Thu, 12 Sept 2024 at 10:48, Valentina Fernandez
<valentina.fernandezalanis@microchip.com> wrote:
>
> Hello all,
>
> This series adds support for the Microchip Inter-Processor Communication
> (IPC) mailbox controller, as well as an IPC remoteproc platform driver.
>
> Microchip's family of RISC-V SoCs typically has one or more clusters
> that can be configured to run in Asymmetric Multi-Processing (AMP) mode.
>
> The Microchip IPC is used to send messages between processors using
> an interrupt signaling mechanism. The driver uses the RISC-V Supervisor
> Binary Interface (SBI) to communicate with software running in machine
> mode (M-mode) to access the IPC hardware block.
>
> Additional details on the Microchip vendor extension and the IPC
> function IDs described in the driver can be found in the following
> documentation:
>
> https://github.com/linux4microchip/microchip-sbi-ecall-extension
>
> The IPC remoteproc platform driver allows for starting and stopping
> firmware on the remote cluster(s) and facilitates RPMsg communication.
> The remoteproc attach/detach operations are also supported for use cases
> where the firmware is loaded by the Hart Software Services
> (zero-stage bootloader) before Linux boots.
>
> Error Recovery and Power Management features are not currently
> supported in the remoteproc platform driver.
>
> The PIC64GX MPU has a Mi-V IHC block, this will be added to the PIC64GX
> dts after the initial upstreaming:
>
> https://patchwork.kernel.org/project/linux-riscv/patch/20240725121609.13101-18-pierre-henry.moussay@microchip.com/
>
> Thanks,
> Valentina
>
> Valentina Fernandez (5):
>   riscv: asm: vendorid_list: Add Microchip Technology to the vendor list
>   dt-bindings: mailbox: add binding for Microchip IPC mailbox driver
>   mailbox: add Microchip IPC support
>   dt-bindings: remoteproc: add binding for Microchip IPC remoteproc
>   remoteproc: add support for Microchip IPC remoteproc platform driver
>
>  .../bindings/mailbox/microchip,sbi-ipc.yaml   | 115 ++++
>  .../remoteproc/microchip,ipc-remoteproc.yaml  |  84 +++
>  arch/riscv/include/asm/vendorid_list.h        |   1 +
>  drivers/mailbox/Kconfig                       |  12 +
>  drivers/mailbox/Makefile                      |   2 +
>  drivers/mailbox/mailbox-mchp-ipc-sbi.c        | 539 ++++++++++++++++++
>  drivers/remoteproc/Kconfig                    |  12 +
>  drivers/remoteproc/Makefile                   |   1 +
>  drivers/remoteproc/mchp_ipc_remoteproc.c      | 461 +++++++++++++++
>  include/linux/mailbox/mchp-ipc.h              |  23 +
>  10 files changed, 1250 insertions(+)

It might be easier to split this patchset in two and proceed
incrementally, i.e upstream the mailbox driver first and then the
remoteproc part.

Regards,
Mathieu

>  create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,sbi-ipc.yaml
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/microchip,ipc-remoteproc.yaml
>  create mode 100644 drivers/mailbox/mailbox-mchp-ipc-sbi.c
>  create mode 100644 drivers/remoteproc/mchp_ipc_remoteproc.c
>  create mode 100644 include/linux/mailbox/mchp-ipc.h
>
> --
> 2.34.1
>

