Return-Path: <devicetree+bounces-251870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9E2CF7D29
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 11:37:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AF0D3305AF03
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 10:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9398342514;
	Tue,  6 Jan 2026 10:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cbiYxwmb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B88342507
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767695436; cv=none; b=DjXHL64kwLE+nFi5JBFzskQ0pvgcNS3T0WWbT4/lkFmUQMxBpnGg/dNZXFCj/T9JpXZYI80pR/mKOIuRzKhv+zc3Uve5bqJkgVAiB36v8FV3ZXuU50UL+6zgcFXL7HDgboQSIoqwDdW/a7CUFLxx+rvIrQdbHifBCDV7iBniO08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767695436; c=relaxed/simple;
	bh=c6JfQkHcrJOT7jlRutHXYm4l0no8Tfkw+iaOPkSh0q8=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=NMeWBOd8JujsjkwCRx9q1ZUUt0fmza3N6e9RmWeXxvq0BeD+fyHCGyZ80s3bHjzi73hsEDqyyZtIztXsqDYxbKcMWOANcBqETiDBy7vFbY4aoMH8xYdu25ymo+ikirIMcdjkJatITmbIkFhBbduBmAeZZTi0iBlbRNjRolj4ssA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cbiYxwmb; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-382f9930e54so1598601fa.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 02:30:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767695433; x=1768300233; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=NsJJOzya3cvYihpIwq796R0nHpBIF37n18oyXT0fuvE=;
        b=cbiYxwmbry3kbDR8UzW0E2MnqrPl5XBsx66NP1XyjPRtX1WHd/bwoDeH9Uik3ok+iZ
         M35ONFj1wjea+EkkrHAkKofUJBFkEmIi7auSRIvQPnr033Xz7LJryz0n4bL2FxhvObq+
         w675e7TfpeFwjlDuZAnJMjfXILN3ZPNYwMFsZq1mujB6ncGofcZJkHFK29lhDaccH66N
         gB/gcSkjt5Q+4cP4hoobrqD8B+UvbQwzdcgwPtfBWFYbq1BIuA11gldjYJRuGZzxSnKP
         aCXEi8YXFGb9JGLsMbzOeFQlIsR8OlpjMinvhX0ssdh+N24LEgwQbVy1uzPxEfut3Cty
         Ipmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767695433; x=1768300233;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NsJJOzya3cvYihpIwq796R0nHpBIF37n18oyXT0fuvE=;
        b=oYbj0NWRjN8zIRu5vTlQJdHlSsZxjeZAk87fURPOZRhBiGBlVByEY25a+8f5TzzWgz
         vdW7OofJGTWjw+U+fPUerurMxbsq09MLI2SYAvqe2XGCueWCfTNJpEsHHnF8uFuOdyYw
         FF1K49SWjE0li2N0mh7AjlsPB6qWaptL2HFbGpYFk/y9akdRhXPQ7GvybKgnr2vf0tVn
         bngn6ehG4UY222qDphcpDhf0ZUtENF46H71p/TGb7KWQMU1rDEGSDxJcLBWSGPWcVEA3
         Pqn3ZC2QRwuYGidH1P3Jn+aytHEpRzj2QULpeJdhIqs/X21Hbg1yuNKrOj0MPk5P4mLi
         JGDA==
X-Forwarded-Encrypted: i=1; AJvYcCWWgc5Y/Ef0Fn5+Zfl03P3zLWAl7JbmbB2NaQ4ebF8x1DDh/NEs8JjEI35Jl6NpMp5T6x1lomaforF8@vger.kernel.org
X-Gm-Message-State: AOJu0YyMWSWHT6W/az4/f10LipjAqrNYX/ZfJbyJ1of7pDPbde5GquaU
	tIIo9UkRABN98QTmZIkNwAY93H53d0lt6DPZ26yhBgFCIEpLBaRTfYBwX3+IhuQ+
X-Gm-Gg: AY/fxX5uqN79jcwVgA4HN29qs/dyMlD2Q4n/wmViWGfs76JJQtp5haR6eYvBk+07l7R
	a80ynHgDDX0Y093cZeREV8ZQebxzMul67fsGPQpKyi1VVbKB9Q21u6eT8cnLz4gxnXbZFPBicLz
	S1g+mdX5EdcNErwLpK/3fVLpuS1rMqeNOKUrnI92VbkALCXlw+A4dRV/3hrI6QkDBgZgssj83NG
	1C/yzdNk+tSGUiA/Pk4PexH6fIhDzSy67hjeePcWIHP/yQvWtSe6ij49VHDxg0Fmp1hNZZqTlp2
	DAHpkvJ9nuFI7NcYn9CAM5jJk5HK3BONLZAcbWW89Otj2u1xDblOv8S+S1pIJS37dc09FSk1ruy
	5bRT1vb96/SVz04WkUlbOeF/o1OVeYBFOwAotDfHH9yYcSX4khBiiHHXun3ZEM6ItKF9wpqHc
X-Google-Smtp-Source: AGHT+IFmb+80wkKZdKxRHpidfReqxOHlUmLsipFT1rzzTuNx9rKmNHYR/9f9tfCpJuYk6MXE4I4WOw==
X-Received: by 2002:a05:651c:1148:b0:37b:9361:711d with SMTP id 38308e7fff4ca-382eae68ac5mr6985121fa.8.1767695432846;
        Tue, 06 Jan 2026 02:30:32 -0800 (PST)
Received: from razdolb ([77.220.204.220])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb8dadc0sm4315921fa.33.2026.01.06.02.30.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:30:32 -0800 (PST)
References: <20251216-upstream_pcie_rc-v7-0-4aeb0f53c4ce@aspeedtech.com>
User-agent: mu4e 1.10.9; emacs 30.2
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
 <joel@jms.id.au>, Andrew  Jeffery <andrew@codeconstruct.com.au>, Bjorn
 Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan
  Sadhasivam
 <mani@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Neil Armstrong <neil.armstrong@linaro.org>,
 linux-aspeed@lists.ozlabs.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Andrew
 Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 linux-gpio@vger.kernel.org, Mikhail Rudenko <mike.rudenko@gmail.com>
Subject: Re: [PATCH v7 0/7] Add ASPEED PCIe Root Complex support
Date: Tue, 06 Jan 2026 12:58:40 +0300
In-reply-to: <20251216-upstream_pcie_rc-v7-0-4aeb0f53c4ce@aspeedtech.com>
Message-ID: <875x9fuj7i.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hi Jacky,

On 2025-12-16 at 09:49 +08, Jacky Chou <jacky_chou@aspeedtech.com> wrote:

> This patch series adds support for the ASPEED PCIe Root Complex,
> including device tree bindings, pinctrl support, and the PCIe host controller
> driver. The patches introduce the necessary device tree nodes, pinmux groups,
> and driver implementation to enable PCIe functionality on ASPEED platforms.
> Currently, the ASPEED PCIe Root Complex only supports a single port.
>
> Summary of changes:
> - Add device tree binding documents for ASPEED PCIe PHY and PCIe RC
> - Update MAINTAINERS for new bindings and driver
> - Implement ASPEED PCIe PHY driver
> - Implement ASPEED PCIe Root Complex host controller driver
>
> This series has been tested on AST2600/AST2700 platforms and enables PCIe device
> enumeration and operation.

First of all, thank you for your efforts in getting this driver
upstreamed! I am trying to understand whether this driver supports
PCIe devices that have an I/O port BAR, where CPU access to I/O ports
is required for proper device operation.

If I understand correctly, this line in the Aspeed 2600 dtsi file
declares the I/O port range:

    ranges = <0x01000000 0x0 0x00018000 0x00018000 0x0 0x00008000

During system initialization, the pci_remap_iospace() function in
arch/arm/mm/ioremap.c maps the physical address range
0x00018000-0x00020000 to the virtual address PCI_IO_VIRT_BASE
(0xfee00000). After this mapping, inb() and outb() calls work by
converting I/O port addresses to virtual addresses starting at
PCI_IO_VIRT_BASE, then performing reads and writes to those virtual
addresses.

What I don't understand is this: according to the Aspeed 2600
datasheet, the address range 0x00000000-0x0fffffff (which contains
0x00018000-0x00020000) is mapped to Firmware SPI Memory. This would
mean that outb() operations get routed to memory-mapped SPI flash
instead of PCIe.

It seems like there's a missing piece to this puzzle. Could you help
clarify how this is supposed to work?

--
Kind regards,
Mikhail Rudenko

