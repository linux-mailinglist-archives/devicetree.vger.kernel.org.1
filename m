Return-Path: <devicetree+bounces-50426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6342087BA7A
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 10:33:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 954351C218F1
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 09:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 817DC6CDBC;
	Thu, 14 Mar 2024 09:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JXcVdz7r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1CF6D1AD
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 09:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710408765; cv=none; b=bGtP2q1+rt0r4A0qVa5nuX/yXkvMG7/ZBIufV4bNgH8KXsebXR8U1dU3dxQkXkuCikxdj5rxDPP5vtfEpAXENV59S1+POfTiLTJw620HhwI1axqy9OkZq5n0SYM12M/x8cmL8oYJHTKENghi6ItxmEwTlLzTDVzglxX7RoU/Wq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710408765; c=relaxed/simple;
	bh=BOQwADhp6hNBBGWp57cYwSctxcMOUUM6fgHRtwk1t5o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F5gR+4qeytYlxaHUYzFVyVO3pWwTeEjL/MYKo/Zl1/Dpo623Qca0xVpKzdFN5/iKFKvHwCDg2ZY/gE5HTi/G8VPolJ0GYpxzgm/hcKb8s3f6S35i5wKZTnA1VP1tZdm1Tdg9JqhnOSIBsjbsvqwEiDj23vwPLstvVlaPRPp6V5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JXcVdz7r; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-4734ac202e9so863485137.1
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 02:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710408762; x=1711013562; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5JooR2GP0yo+BFgcavLa552X/AqpFEXdVuiGm3v30sY=;
        b=JXcVdz7rpBGnIdW4ixwYHnoVddO3sJ7o5Xp5UJ3LnIx8tvCnyzHQmoL5W9ptuAvx52
         up5QxdgfqfGeSnFK1aHuJ41KnedZuyQ1lssL3QJ5rZZIz8o1Tf04xZ1ajMDNdi7PMG1r
         sp+pLeU+XMdpleTG/w6aEYblUzqWo+l4UQtF+wcFa1GG6aPbOKbonwLlbckiJcUkoTGr
         P6JuTWUvIMwvtAbQPrcWQ+cVIer0oJI7D5/mt8oQZQx06ITsAa29eUEYNI2MyWoQ9jV7
         iN9oitoB1+042Wq154B3+zcntJAMmL3Kr/I/JA/86H7YrGrhtaxgnvya5Dlj7iWkHQUT
         T/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710408762; x=1711013562;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5JooR2GP0yo+BFgcavLa552X/AqpFEXdVuiGm3v30sY=;
        b=E8ng5iOFsFr215MLtUvmMO9Wj1MgeUfzcVJPa02kFA/a4KW1CYbsU71wqQfSVJRdRF
         NPogJOWUc1SBM/H/KiEWcnDxa7nPnuM0LCH9HsPjYTpbjOW2x+fvmX5wqCY055QPAu3g
         yDP6GYv/bP/hy5xqel0T8wqPsDy7cjEZNdE+rsenV2It8FrS2oAk8Y1AGD8at1vB7z07
         yWuNK5JT3yDFg7kplXwqbP1aF3qGm9W6uSk+0/ajH0uIlZ7TLNxQUTrsuFb/2pa4eL2H
         GqU26cM1yCdTQpuebqoSzOwzkfDq+B0aiBIuRVor971WHpFEceJI2Qv8txPINYsRumWZ
         HpFw==
X-Forwarded-Encrypted: i=1; AJvYcCV2vFyAwKfIk+r+Oudbc2xMhVoYpdjp08312jDhxJ3qc2WfsgmgKHC/Z8pDg4ZBF3xTDRf3uhfLZhRDCbXLGIAYsoBRXpd+v4lv4Q==
X-Gm-Message-State: AOJu0YxmP+wbcbm6T8jTOxgA9Z/6lUr44gYWnZrof5pCXQQ5jWU2a6lu
	xdY2QE91UbkT/eYUes/2xsBXoDvYNNeH6HefNNfw9TuEa0xWiMLO7gfTzDLfWxxrl6i68Qf1h89
	1CbK+fhvek0i14sQGT9I1gopoIPJFf1U9AMz/yw==
X-Google-Smtp-Source: AGHT+IEw/ehjPfDXNATTHtGrSHHP4C9JwV6Kj6BatJG08Bp402mPy1LMb6cyyRyUbYRiGWhqcYgS8xdIUCRwabBR1Bc=
X-Received: by 2002:a67:f247:0:b0:473:48b6:48b5 with SMTP id
 y7-20020a67f247000000b0047348b648b5mr1285848vsm.2.1710408762595; Thu, 14 Mar
 2024 02:32:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240313123017.362570-1-sumit.garg@linaro.org>
 <20240313123017.362570-4-sumit.garg@linaro.org> <c0e10cbf-c6f3-4b0c-8616-983da2a40236@linaro.org>
 <CAFA6WYNMjCaa0FKjNv6a8VFkco3=GBfgWNDuckGZdiZ9dGmHgg@mail.gmail.com> <d82ab1f8-e677-485f-9a6b-4115acfd7239@linaro.org>
In-Reply-To: <d82ab1f8-e677-485f-9a6b-4115acfd7239@linaro.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 14 Mar 2024 15:02:31 +0530
Message-ID: <CAFA6WYNSumyScax=GkN42GJOG56T3odF5Ed9A2i1nk_exCyGtA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: apq8016: Add Schneider HMIBSC
 board DTS
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, stephan@gerhold.net, caleb.connolly@linaro.org, 
	neil.armstrong@linaro.org, laetitia.mariottini@se.com, pascal.eberhard@se.com, 
	abdou.saker@se.com, jimmy.lalande@se.com, benjamin.missey@non.se.com, 
	daniel.thompson@linaro.org, linux-kernel@vger.kernel.org, 
	Jagdish Gediya <jagdish.gediya@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 14 Mar 2024 at 14:48, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 3/14/24 10:04, Sumit Garg wrote:
> > Hi Konrad,
> >
> > On Wed, 13 Mar 2024 at 18:34, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >>
> >>
> >>
> >> On 3/13/24 13:30, Sumit Garg wrote:
> >>> Add Schneider Electric HMIBSC board DTS. The HMIBSC board is an IIoT Edge
> >>> Box Core board based on the Qualcomm APQ8016E SoC.
> >>>
> >>> Support for Schneider Electric HMIBSC. Features:
> >>> - Qualcomm Snapdragon 410C SoC - APQ8016 (4xCortex A53, Adreno 306)
> >>> - 1GiB RAM
> >>> - 8GiB eMMC, SD slot
> >>> - WiFi and Bluetooth
> >>> - 2x Host, 1x Device USB port
> >>> - HDMI
> >>> - Discrete TPM2 chip over SPI
> >>> - USB ethernet adaptors (soldered)
> >>>
> >>> Co-developed-by: Jagdish Gediya <jagdish.gediya@linaro.org>
> >>> Signed-off-by: Jagdish Gediya <jagdish.gediya@linaro.org>
> >>> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> >>> ---
> >>
> >> [...]
> >>
> >>> +     memory@80000000 {
> >>> +             reg = <0 0x80000000 0 0x40000000>;
> >>> +     };
> >>
> >> I'm not sure the entirety of DRAM is accessible..
> >>
> >> This override should be unnecessary, as bootloaders generally update
> >> the size field anyway.
> >
> > On this board, U-Boot is used as the first stage bootloader (replacing
> > Little Kernel (LK), thanks to Stephan's work). And U-Boot consumes
> > memory range from DT as Linux does but doesn't require any memory to
> > be reserved for U-Boot itself. So apart from reserved memory nodes
> > explicitly described in DT all the other DRAM regions are accessible.
>
> Still, u-boot has code to fetch the size dynamically, no?
>

No U-Boot being the first stage bootloader fetches size from DT which
is bundled into U-Boot binary.

> [...]
>
> >>
> >>> +
> >>> +             compatible = "adi,adv7533";
> >>> +             reg = <0x39>;
> >>> +
> >>> +             interrupt-parent = <&tlmm>;
> >>> +             interrupts = <31 IRQ_TYPE_EDGE_FALLING>;
> >>
> >> interrupts-extended
> >>
> >
> > Please see Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml.
>
> Okay, and what am I supposed to see there?

I meant you to refer to an example there but looks like
interrupts-extended is a valid replacement too. I will use that
instead.

-Sumit

>
> Konrad

