Return-Path: <devicetree+bounces-60996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EE13C8AB30A
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 18:13:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4EBCEB21593
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 16:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4AC5130E5E;
	Fri, 19 Apr 2024 16:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QBr/DvN5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F86F130E21
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 16:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713543178; cv=none; b=R6YYCI10TcdLqwkao0gawndk+/I0xDy/R6SWIdAChecBq9EtkNz5olQWIiXTqxzWjvi4PxXyfXi22MF1Kaj8cBTcn+oM4kS1K3MZWIXzGmlsO340fEwR92QTJ6iOnYy1Cub6pCO/dSUl41EkhjJf8a74+lv9ciQIV3QxGDCOYsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713543178; c=relaxed/simple;
	bh=JxNKpsR1inImUDvLSsSZiGbU8WwvelNQnh56OEKC6rk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pqIS0CLU8dD85EoPLf78nAML8n5z2C7QTZh9Xf4TuahE/qm9w1ieY6/x0WCN4ppaNSQgY27JOy2+iIJ9UcndzQxIOtkeHr8hYMKbW6lkAu7eSh4POptmaPWjoRi5C+NaqqcS1XUFRpl+Rbt9G8A3bCfRRlqDowMLqJYVzAHMK6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QBr/DvN5; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6eb86aeeb2cso1211014a34.3
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 09:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713543176; x=1714147976; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OPxZQoPoT3cD510S1fWj22o1C31vqdc0Bvc4+kC+CBg=;
        b=QBr/DvN57T1vLgBojLoN7JwE6lD4SHrjL25D0Xaqk49dMbOKScW+ZgNFec1F4jAcf/
         Ev4Ud695JWp/fzUWeKzDcK0AdIZUClktoFGxTh9k2pC1snwyQR/B4cVN/pV6Olx2c9ue
         Xd82oE/HfFRdFLIoDLwx9dFVukldF3Xw855cmgAX9GlG+8GjaZUbuGM3I0uul+QmPV8C
         kfJfRdiyrcC6CCDfO9H01lG+fGTk9StP7jbZOOT51qvdG08K/8f+ginXfoCl+TZvRgh5
         pCRuUSwsAI/TOEIefAOjWhpjsnTM/Ux6tljaEPjx+Cm2zLmR4UGIMNh6A9e1eF/t/ZUL
         eJJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713543176; x=1714147976;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OPxZQoPoT3cD510S1fWj22o1C31vqdc0Bvc4+kC+CBg=;
        b=ZM0ymW316rqvnIbCBb+jbFUhLtQBj0rpgjqsgPBkMwF9dbfqTjK375OS860QiaQA1y
         rzXyIwyJ3ufSTcRhpwbojCWZpoc7QY8bMPvNKMT3PoPEvyngsi1SGX/NdsBl3e+82owJ
         RucxtZeOmcadEPD2GcS4wJOTqo2JUkqhOJdXVdme2BA8a8xKhGlF01cH9Z6uDWVr0UWR
         K5ZYVg2iyqFBYJYGMkXMkw2HqeMoe3F72C/jopCyYnfFN8aQ9NrFT1JImPxtv+UWz59E
         gLRHHPXKHgplW7fXZiHb1VgBypB7zmKpcMBrJMNg/rUK+VMK8X0kzBNiK7XFHLcXDGfr
         fU9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUn7Op/7mdnHE/kgi+I3GnzCdTMDK/cuu068Pu8qyuKD4tz2fJFpH5X3c+kx8g7/b59acPozJnQEWsDEEPNb2RYSFn0ZZMMS0jZNg==
X-Gm-Message-State: AOJu0YxMmwzH0WqVp4XHLHs4NT837UC9pikgJ4A/4VpCMmLUkYYvWc8W
	1Ol9gHruc2f3QfucxqHGyjCV5QZ97V/wSZ/Ip/5OwlDCNcrJ9lQ+qQkmwqwI5cvnLxmU4E/ZJIY
	vIiRCJtAJHtqEw1dkA/6VGJfHAFomQS+fLeZggQ==
X-Google-Smtp-Source: AGHT+IEgTLjaLHTZ0zguQcs1gqrqg8KFpY0l6KJG+wR1xIBf2/IdI8JPFT/aa4FSMBdX31NRF6xYRt6E1kuu8nb1WlE=
X-Received: by 2002:aca:240c:0:b0:3c5:ed16:c0fc with SMTP id
 n12-20020aca240c000000b003c5ed16c0fcmr2516936oic.52.1713543176263; Fri, 19
 Apr 2024 09:12:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240403043416.3800259-1-sumit.garg@linaro.org>
 <CAFA6WYNxTPgiq6WLQaKGMTenuKe51SXXhgGYkdyRibghXAMfnA@mail.gmail.com>
 <CAFA6WYPk6E8JM8z62Skxq454WwPFYQ9EDx7FD--inqe7YoNJkg@mail.gmail.com> <CAA8EJpont5jn9X24saBiM_TVRNh9984xoRXFojj-wmTiK0nU+g@mail.gmail.com>
In-Reply-To: <CAA8EJpont5jn9X24saBiM_TVRNh9984xoRXFojj-wmTiK0nU+g@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Fri, 19 Apr 2024 09:12:44 -0700
Message-ID: <CAFA6WYMtnAjkK0j-KqrUNWOTSnxjvrayBk3+4gqUE+ZxgceieQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] arm64: dts: qcom: apq8016: Add Schneider HMIBSC
 board DTS
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, stephan@gerhold.net, 
	caleb.connolly@linaro.org, neil.armstrong@linaro.org, 
	laetitia.mariottini@se.com, pascal.eberhard@se.com, abdou.saker@se.com, 
	jimmy.lalande@se.com, benjamin.missey@non.se.com, daniel.thompson@linaro.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 19 Apr 2024 at 08:31, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Fri, 19 Apr 2024 at 18:27, Sumit Garg <sumit.garg@linaro.org> wrote:
> >
> > On Tue, 9 Apr 2024 at 23:24, Sumit Garg <sumit.garg@linaro.org> wrote:
> > >
> > > Hi Bjorn, Konrad,
> > >
> > > On Wed, 3 Apr 2024 at 10:04, Sumit Garg <sumit.garg@linaro.org> wrote:
> > > >
> > > > Add Schneider Electric HMIBSC board DTS. The HMIBSC board is an IIoT Edge
> > > > Box Core board based on the Qualcomm APQ8016E SoC. For more information
> > > > refer to the product page [1].
> > > >
> > > > One of the major difference from db410c is serial port where HMIBSC board
> > > > uses UART1 as the debug console with a default RS232 mode (UART1 mode mux
> > > > configured via gpio99 and gpio100).
> > > >
> > > > Support for Schneider Electric HMIBSC. Features:
> > > > - Qualcomm Snapdragon 410C SoC - APQ8016 (4xCortex A53, Adreno 306)
> > > > - 1GiB RAM
> > > > - 8GiB eMMC, SD slot
> > > > - WiFi and Bluetooth
> > > > - 2x Host, 1x Device USB port
> > > > - HDMI
> > > > - Discrete TPM2 chip over SPI
> > > > - USB ethernet adaptors (soldered)
> > > >
> > > > This series is a v2 since v1 of this DTS file has been reviewed on the
> > > > U-Boot mailing list [2].
> > > >
> > > > Changes in v5:
> > > > - Addressed another nitpick from Stephen.
> > > > - Collected Stephen's review tag.
> > > > - Warnings reported by Rob's DT check bot aren't related to HMIBSC
> > > >   board DTS but rather they are due to msm8916.dtsi or extcon-usb-gpio.txt
> > > >   still not converted to YAML format.
> > > >
> > >
> > > I haven't seen any further comments on this series, can you help to pick it up?
> >
> > Gentle reminder.
>
> I see an email from Rob. At least GPIO-related warnings are related to HMIBSC
>

I suppose you are referring to:

arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dtb: pmic@0:
gpio@c000:gpio-line-names: ['USB_HUB_RESET_N_PM', 'USB_SW_SEL_PM',
'NC', 'NC'] is too short
from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dtb: gpio@c000:
gpio-line-names: ['USB_HUB_RESET_N_PM', 'USB_SW_SEL_PM', 'NC', 'NC']
is too short
from schema $id: http://devicetree.org/schemas/pinctrl/qcom,pmic-gpio.yaml#

I am really not sure as to why those warnings are being reported for
v5 and not reported for v4 here [1]. Also, there are only 4 PMIC GPIOs
available on PM8916 out of which only 2 are connected on HMIBSC and
the other 2 are not connected. AFAICT, these seem to be false warning
reports or am I missing something?

[1] https://lore.kernel.org/lkml/171155390164.3454213.14779164019451021567.robh@kernel.org/

-Sumit

>
> --
> With best wishes
> Dmitry

