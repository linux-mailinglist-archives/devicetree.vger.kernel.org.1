Return-Path: <devicetree+bounces-103290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F8897A4C6
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 17:04:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AAB242815FB
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 15:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1CFD1581EE;
	Mon, 16 Sep 2024 15:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oXZacBpy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E203514B97D
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 15:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726499092; cv=none; b=OKcz3yFJXCsWYezQVcfRs9MgFKFoUdp45rYM8ttumGV60YxqlNscatsKq7m+E6vgjYEhQvZRklHyE2lfBPKSqAJNNjac/17libw/z4pZNHWcgePahw09vG3XGzcDtr2XTdPAAbtztxTfMYSJc2H6XM70iyv22NommBWevLRSnWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726499092; c=relaxed/simple;
	bh=nMIpf6/81shZhRa654Ccv4313rWw4dt3bkUqKzsZfwE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RXduonljs+SfVa95h4U4W+S6f77LWsE+SrfkH+7W/h3UFR7jUsEF3P+4qGj/A7XYErqEAyOE2Qmlrp5K018tj8jN2McFcqF/PPvWB8TrT6lZnMh4Z8S2BO2cewc+O8jKJEVwxmOPYVqq9HfZX2R0rGitHAxV6HFY22saMQz3FsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oXZacBpy; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5c413cf5de5so6384134a12.0
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 08:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726499089; x=1727103889; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Hdt/C3X2PP3Zg5PnoGqtBdwBBLQg7apsiImcH1HDjNw=;
        b=oXZacBpycCw7J/UCbx6uQhgxRXv/IoJFplEOLupRneLOw9ByrN67byHjhWpvQHidBP
         lgXxujKWYIFbp4FmqRXBv/MFNy5dcMJKIAg32mUChhY2lViSPs7QCxntRPvs2+cowEMw
         b3p1u3CoMN40/L3Rys1uQ7QesykY8f6HS54x7h1uv+B4KZYc1KYC7Yv3apTnzst9UmTR
         8fLq9UOTHihTqR+MKheDhX82sFTCF34OfOP3hc4EC/5MMQBYnbp0glGJQtWiR15a3OTO
         2EwXwFaP5l0bXJxna8+RfqmD02hIbhhqbu9SuRHXhE1hI61gUPtzZiuYDXKbj+KpxYjS
         ypXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726499089; x=1727103889;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hdt/C3X2PP3Zg5PnoGqtBdwBBLQg7apsiImcH1HDjNw=;
        b=jp5mUKBvBhCOfMcXp+PBXmw/jbHGHg4vyktFEonVP0i/Ci5apO/dpqc9PMgTa5FCBq
         whYRrJoKSUcMo58ZplWvFHrvtGeETvCWVMRsa8HOlfH26CoqOrPQdZhj77tBxAfrtrpM
         S711n4Nvngi7Na/+s4WuQaMGK8EjtDvc+gfMXSs+EKNfGwaAGrVgP6HtgcZR0/SbI7tX
         23ysWeXgL8eBwFOoDoh+rU4QnqzQKnSpfUHTtBAotVl0FzA08f8//MbBAzlGrrfNkSPS
         HCZwDTtEO3craNsh8/Pf4vSCoVOr+z6HPi75Y8AvR9Pfgqml+Z4UVNNCDXEgZsxS6+JO
         FNZA==
X-Forwarded-Encrypted: i=1; AJvYcCWliLlGCQSj901Ex5FZ9qLlUNvfVsKBrI/I2Qcpj8UqYOPZSS3E8BfFdD9LiEkH4gIqqC7mhproNxY4@vger.kernel.org
X-Gm-Message-State: AOJu0YySeccaue1yt2rG8soHm+WaeMNul/eucrGhteLRZTYYlQpVM0CS
	paOxky6DnvmmAqAWUc91IGsdmaazv4waYRXHeGK/NJELsu+TktCuVxwO/W5moDxo22Vebk2OsYz
	J1gCpve6Ks/CM1/8OmtsR7IFJp+KMqGxGZZAUOQ==
X-Google-Smtp-Source: AGHT+IG953y/v5dl5p5Z3LL49kO5fYc2xRp4hHw8+JoAMYA8z1TeDNMF/zfkoylCATu6XMkcxeBAsRZUu5pz6qqEpaE=
X-Received: by 2002:a05:6402:2347:b0:5c4:23ad:89b4 with SMTP id
 4fb4d7f45d1cf-5c423ad89e8mr9452741a12.26.1726499088917; Mon, 16 Sep 2024
 08:04:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240912170025.455167-1-valentina.fernandezalanis@microchip.com>
In-Reply-To: <20240912170025.455167-1-valentina.fernandezalanis@microchip.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 16 Sep 2024 09:04:37 -0600
Message-ID: <CANLsYkzGiB+vkjHKkHYhZEK+MK-Uid0VxcqsBUJG0ZbmCQCeqg@mail.gmail.com>
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

I would advise splitting the two patchsets, i.e one for the mailbox
driver and another one for the remoteproc.  I would also start with
the mailbox and then go with the remoteproc.

Thanks,
Mathieu

>  10 files changed, 1250 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,sbi-ipc.yaml
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/microchip,ipc-remoteproc.yaml
>  create mode 100644 drivers/mailbox/mailbox-mchp-ipc-sbi.c
>  create mode 100644 drivers/remoteproc/mchp_ipc_remoteproc.c
>  create mode 100644 include/linux/mailbox/mchp-ipc.h
>
> --
> 2.34.1
>

