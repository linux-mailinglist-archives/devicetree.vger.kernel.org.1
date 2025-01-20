Return-Path: <devicetree+bounces-139743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5ABA16C3B
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 13:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B8311672C2
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 12:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBE6B1993A3;
	Mon, 20 Jan 2025 12:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fq1CcgYd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926271DFFC;
	Mon, 20 Jan 2025 12:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737375601; cv=none; b=DvObH2JmbSMiUsUvG/QKkrc33Z6kqcOoIBIhKtTW5CKI23rqSCn88ufed0LWPAm9Waz+8xNAkoAIlPjklb996ifTiaxu3OCGF4y5aB85/VB+4m/rj8Dg30WF/r+x8jqubGfHn9vaFMIcFoliPjyGPj1Ba1T3/Yrg1B00fZDoR+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737375601; c=relaxed/simple;
	bh=1UabhrlEpjbeUPG49KvAEtfAp6W8RWy99z6tVDsNLr0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JFMtesxdfhJXDk3MdVvkSw9XSmmX3yDL0Hr9wUtBRatQGGpfjbwLLXD368cIlQpwIIJviIMKp9A/OJcdTZzFd93LrM3ny8VR3A39H/E1DS9zVYSJq4nGdePBFy0TNRgYemxxWOWQUUvJrijK4bHKrSq8/O2Jm9skUT0KpsPYGNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fq1CcgYd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B3E9C4CEDD;
	Mon, 20 Jan 2025 12:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737375601;
	bh=1UabhrlEpjbeUPG49KvAEtfAp6W8RWy99z6tVDsNLr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fq1CcgYdsz+V1sav98PyNnmCJuJ0RN7FLnE12ydu/LkB/g+cUaL/lFkD/IeN5zdYS
	 onqqEEaO0IH4cqowCMAnEvYUVTKAqlXrstWdjTXiXN8hlkgWmCt0jx+KuBzpsJA9C6
	 7hzUIvX8dR7uuo/x/5KTCrhxWGskwd81tOa1I+CYCMudMqdxEjMxDj/SdkFbGggnKR
	 sEwUfMu79iDNNPijVqKKMZZ38hVrTbIZtasTQsMx7cDkqgOPlUgwmZ5Z5WwTjS+PaU
	 dgu5mqiikQLztJJUHATvyawoseQneFNENrevTsLt9wyzgnuKHzpu/jnN06NbuL5GCb
	 q51e5wHzXLOPA==
Date: Mon, 20 Jan 2025 05:19:55 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: jassisinghbrar@gmail.com
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com,
	conor.dooley@microchip.com, conor+dt@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Valentina Fernandez <valentina.fernandezalanis@microchip.com>
Subject: Re: [PATCH v6 0/4] Add Microchip IPC mailbox
Message-ID: <20250120121955.GA3525889@ax162>
References: <20241217113134.3508333-1-valentina.fernandezalanis@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241217113134.3508333-1-valentina.fernandezalanis@microchip.com>

Hi Jassi,

On Tue, Dec 17, 2024 at 11:31:30AM +0000, Valentina Fernandez wrote:
...
> This series adds support for the Microchip Inter-Processor Communication
> (IPC) mailbox driver.
...
> Valentina Fernandez (4):
>   riscv: sbi: vendorid_list: Add Microchip Technology to the vendor list
>   riscv: export __cpuid_to_hartid_map
>   dt-bindings: mailbox: add binding for Microchip IPC mailbox controller
>   mailbox: add Microchip IPC support

I see this series is now in next-20250120 but you only applied patches 3
and 4, so the build is broken:

  In file included from drivers/mailbox/mailbox-mchp-ipc-sbi.c:22:
  drivers/mailbox/mailbox-mchp-ipc-sbi.c: In function 'mchp_ipc_sbi_chan_send':
  drivers/mailbox/mailbox-mchp-ipc-sbi.c:29:42: error: 'MICROCHIP_VENDOR_ID' undeclared (first use in this function)
     29 |                                          MICROCHIP_VENDOR_ID)
        |                                          ^~~~~~~~~~~~~~~~~~~
  arch/riscv/include/asm/sbi.h:436:56: note: in definition of macro 'sbi_ecall'
    436 |                 __sbi_ecall(a0, a1, a2, a3, a4, a5, f, e)
        |                                                        ^
  drivers/mailbox/mailbox-mchp-ipc-sbi.c:121:25: note: in expansion of macro 'SBI_EXT_MICROCHIP_TECHNOLOGY'
    121 |         ret = sbi_ecall(SBI_EXT_MICROCHIP_TECHNOLOGY, command, channel,
        |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
  drivers/mailbox/mailbox-mchp-ipc-sbi.c:29:42: note: each undeclared identifier is reported only once for each function it appears in
     29 |                                          MICROCHIP_VENDOR_ID)
        |                                          ^~~~~~~~~~~~~~~~~~~
  arch/riscv/include/asm/sbi.h:436:56: note: in definition of macro 'sbi_ecall'
    436 |                 __sbi_ecall(a0, a1, a2, a3, a4, a5, f, e)
        |                                                        ^
  drivers/mailbox/mailbox-mchp-ipc-sbi.c:121:25: note: in expansion of macro 'SBI_EXT_MICROCHIP_TECHNOLOGY'
    121 |         ret = sbi_ecall(SBI_EXT_MICROCHIP_TECHNOLOGY, command, channel,
        |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
  drivers/mailbox/mailbox-mchp-ipc-sbi.c: In function 'mchp_ipc_sbi_send':
  drivers/mailbox/mailbox-mchp-ipc-sbi.c:29:42: error: 'MICROCHIP_VENDOR_ID' undeclared (first use in this function)
     29 |                                          MICROCHIP_VENDOR_ID)
        |                                          ^~~~~~~~~~~~~~~~~~~
  arch/riscv/include/asm/sbi.h:436:56: note: in definition of macro 'sbi_ecall'
    436 |                 __sbi_ecall(a0, a1, a2, a3, a4, a5, f, e)
        |                                                        ^
  drivers/mailbox/mailbox-mchp-ipc-sbi.c:134:25: note: in expansion of macro 'SBI_EXT_MICROCHIP_TECHNOLOGY'
    134 |         ret = sbi_ecall(SBI_EXT_MICROCHIP_TECHNOLOGY, command, address,
        |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
  drivers/mailbox/mailbox-mchp-ipc-sbi.c: In function 'mchp_ipc_probe':
  drivers/mailbox/mailbox-mchp-ipc-sbi.c:29:42: error: 'MICROCHIP_VENDOR_ID' undeclared (first use in this function)
     29 |                                          MICROCHIP_VENDOR_ID)
        |                                          ^~~~~~~~~~~~~~~~~~~
  drivers/mailbox/mailbox-mchp-ipc-sbi.c:420:35: note: in expansion of macro 'SBI_EXT_MICROCHIP_TECHNOLOGY'
    420 |         ret = sbi_probe_extension(SBI_EXT_MICROCHIP_TECHNOLOGY);
        |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~

Can you please fix this? It is a little frustrating this is happening
just as the merge window opens...

Cheers,
Nathan

