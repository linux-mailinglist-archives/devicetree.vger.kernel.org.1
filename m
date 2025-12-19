Return-Path: <devicetree+bounces-248273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFCFCD0885
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 74301301E3FC
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70107346ADC;
	Fri, 19 Dec 2025 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="AwhCaq5U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F702341067
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 15:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766158095; cv=none; b=rLF2DVDRb172zxNDWfNwKfJwGRPSpVEvHsQJdZJ6HgBlJ4RifJeBIUjMc/EkUj8Y65HIIZD5QxdS+Fy2XAppiFzHvvkTYYd67NznxnuOw4FDggRM3Swuiw/u8bzSaRsDXNSTzbkw3YI8jUlqT0qLgxEAhA1f0IkujP5DhiiZJ+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766158095; c=relaxed/simple;
	bh=nrU+G9HsuMxAyqfxgTpRptoqpXb6zEpgTpzqtiAbz/Y=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=eKVIW97KwgBNJi3d/nOHm9fRrNGlBZmkyrVYWxr6hYbNH9Y6Gbdw7F0QkDh/D8NYfFcUWfcrLWPAjmSZhwFOilfPVjWzUF3ty8M0D1eP9Zq2oDyZP3Ivhl8D8YJPo29uIeHqHYhLbXC2ZBRbTB/1l/IyfrqWEhiADy3feURlIJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=AwhCaq5U; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-88a3bba9fd4so18486846d6.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 07:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766158091; x=1766762891; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yf0ImYCnIty6Hsv8vMFIKwqY2rPgEKUaMHY5AG2sRYk=;
        b=AwhCaq5UOJ6W9TNJaaS+wZEmeWtjYot7QDRne8G8KwnmryubLWmc73wT4TpEaKbA/5
         zHHBapFbw1dndgvxcIpd5my2AAKaatm9N6gCIFl0sV02B1oNpX203ovGWUvRMGspOu3c
         9MrR07NTumX5+we2dUgR9HSMV8O7tru1xvnQbzkrTurUPkx093B+j1V79GFvlmumsEl3
         fp2KpvkCGfNE0Lr+73hYu3BD4pTirvXK34fT1hl23W4b17/xjS1XIcUzSpRxMC6P5emG
         +vphaQuYBWUvFNQTmBS4I2YqZF22dUE7ZSqF8si5qFAJoXvYJC8gUzNnfOPMCWn5zwxo
         zqNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766158091; x=1766762891;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yf0ImYCnIty6Hsv8vMFIKwqY2rPgEKUaMHY5AG2sRYk=;
        b=oHdX1vCLd4HOt/R0K9RQHqZe388gLtXOI2J1Ezr78+nDnnVOL/zi+Unj34I2ae5DC4
         JHCiPoYzvFaltRdB6qFqEgK92D86QALtKdtPdjBlySZrEuaFsAvFd0npre2DYLCQ4mNN
         zMRZZ6WRnlvmJLIJeJpQF8hoLB1K/Yv0rxMLcZUWI0Wy/2C8Ln9dMk1WXkbU+m3msdW2
         f6z54K5+k2AFEixbSHlVRR7oyDszJjDM0CZWvIdzHxkSD3SO59QdVg9LKOiPb/G9OIIt
         Vk/TC7Txx6TJIwoxi1ZJpPaHuqeso8aFED+RPTRYua0dsVqKJ/JnIgaNfvtiNa5bwUYM
         OzSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhX3NLHkPlPsK7R2yFFueWqRxnfFi5YViixxoserM3hDhMLnPHgo8VecD31JoKWoQI4lTp4rDA+/NX@vger.kernel.org
X-Gm-Message-State: AOJu0YwNIcLcaO6rja5VE00gCPe6WfE/AbAue/YAGsEROJGyPLsx3Fl5
	dcYO9dFQpVIqsu6P3OnZizlalIPiHiQ2vfsfebGM9OG8Gscpic4Sc0PP3+/gPpGVsv8=
X-Gm-Gg: AY/fxX7/pgU9KNaQRFLxWSYHre8Uoxy5e9dVOOEZLDyGd26f3OfPVHTLCcFpBpCNSgh
	Uk5obEO80XidsEZ/JoXQfkEwyBKLKs1YKBZm9CxgO03CPKKwwe48fshsa+pJIdNtAFzhmalOyVC
	tbBaKagIrlSa37A8BKsv9f+u/HpiXTeQ0GXodLhAsKpwKvscE7+IMbjl05qv0q+k9SxONRbibsv
	J1YiJ5WQoVhbCb/3uaXXV6OSDpFgldBSR2Ux68qQS9znmV+KAaU9AxPXRDvkEiwEhBNIQzoSvtE
	knCYFFeVvmgYLFkmnJPmqsxcJnPfCA3O82j6h39TyjJIZnSl7JkVbpSxAHeyamZSdH5xUs4yEk1
	4SJjDscsB9WJdeDydlqtgp1g/edlwq27nxQmq9RCRgh72vHKrNlpQrwQbKZ2sZjgvXX9Lz2dGMh
	CvBzAS0VjUZRlV7ub3bE8qDf7it/HzXYPq1AloQ2a7Jga+cYg38To=
X-Google-Smtp-Source: AGHT+IESCa7TzSgsPFxRQ8nOnf1gW1Aedmg8uL4v5ngWrg3XKHmo91iY/SWKPTEaWsgBtfXN5+6Jow==
X-Received: by 2002:a05:622a:588e:b0:4ec:f6ae:d5d9 with SMTP id d75a77b69052e-4f4abd9768bmr44575641cf.39.1766158090847;
        Fri, 19 Dec 2025 07:28:10 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac62f973sm19054751cf.18.2025.12.19.07.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 07:28:10 -0800 (PST)
Message-ID: <ee9ce749-5ee4-41d9-8d1b-7b3b507b2217@riscstar.com>
Date: Fri, 19 Dec 2025 09:28:08 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/5] Introduce SpacemiT K1 PCIe phy support
From: Alex Elder <elder@riscstar.com>
To: dlan@gentoo.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org
Cc: ziyao@disroot.org, aurelien@aurel32.net, johannes@erdfelt.com,
 pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 p.zabel@pengutronix.de, guodong@riscstar.com, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251218151235.454997-1-elder@riscstar.com>
Content-Language: en-US
In-Reply-To: <20251218151235.454997-1-elder@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/18/25 9:12 AM, Alex Elder wrote:
> This series introduces a PHY driver to support PCIe on the SpacemiT K1
> SoC.  The PCIe controller implementation is derived from a Synopsys
> DesignWare PCIe IP.  The PHY driver supports one combination PCIe/USB
> PHY as well as two PCIe-only PHYs.  The combo PHY port uses one PCIe
> lane, and the other two ports each have two lanes.  All PCIe ports
> operate at 5 GT/second.
> 
> The PCIe PHYs must be configured using a value that can only be
> determined using the combo PHY, operating in PCIe mode.  To allow
> that PHY to be used for USB, the needed calibration step is performed
> by the PHY driver automatically at probe time.  Once this step is done,
> the PHY can be used for either PCIe or USB.
> 
> The PCIe controller driver that was included in earlier versions of
> this series has already been accepted upstream:
>    a812b09a6b599 ("dt-bindings: pci: spacemit: Introduce PCIe host
> 		  controller")
>    ff64e078e45fa ("PCI: spacemit: Add SpacemiT PCIe host driver")
> However this series still includes devicetree patches to enable the
> PCIe controller (along with the PHYs).
> 
> The patches that remain in version 7 of this series are unchanged;
> they are simply rebased on top of Linux v6.19-rc1.  The first two
> patches are the DT bindings for the PCIe and combo PCIe/USB PHY.
> The third is the PHY driver, and the last two are devicetree updates
> to enable the PCIe controller and PHYs.
> 
> 					-Alex

Yixun pointed out that I neglected to provide a summary of the
change history in this message.  Here is a link to version 6,
which summarizes prior history.  My explanation for v7 indicates
what changed since v6.
  
https://lore.kernel.org/lkml/20251113214540.2623070-1-elder@riscstar.com/

He also said I neglected to add Neil's Reviewed-by tag, which
is true.  That is here:
  
https://lore.kernel.org/all/ba532f8d-a452-40e5-af46-b58b89f70a92@linaro.org/

Sorry about that.  If requested, I can send an otherwise
unchanged version 8, but for now I'll assume that's not
necessary.

					-Alex

> Alex Elder (5):
>    dt-bindings: phy: spacemit: Add SpacemiT PCIe/combo PHY
>    dt-bindings: phy: spacemit: Introduce PCIe PHY
>    phy: spacemit: Introduce PCIe/combo PHY
>    riscv: dts: spacemit: Add a PCIe regulator
>    riscv: dts: spacemit: PCIe and PHY-related updates
> 
>   .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 +++
>   .../bindings/phy/spacemit,k1-pcie-phy.yaml    |  71 ++
>   .../boot/dts/spacemit/k1-bananapi-f3.dts      |  44 ++
>   arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 +
>   arch/riscv/boot/dts/spacemit/k1.dtsi          | 176 +++++
>   drivers/phy/Kconfig                           |  11 +
>   drivers/phy/Makefile                          |   1 +
>   drivers/phy/phy-spacemit-k1-pcie.c            | 670 ++++++++++++++++++
>   8 files changed, 1120 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
>   create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
>   create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c
> 
> 
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8


