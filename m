Return-Path: <devicetree+bounces-109943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5222998907
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 16:15:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 858151F22237
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 14:15:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 092F71CEEAB;
	Thu, 10 Oct 2024 14:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WRd+9E0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6135F1CB515
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 14:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728569517; cv=none; b=teMoTGCC3BjMu/9rm6GJxL/WRceWRd8qEdwGSQGL6wverOanz8sQeb4kKuirmtzueI0yJCP7HyfD4ViLyMjggj34S0yeqf69wRUZfdhIbpFb4/IilsAIMkM9K3dCMCu3xsZwFa+ul1E7oHxE+TMc64xJQ1HeySzAqrYpaB/ItS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728569517; c=relaxed/simple;
	bh=Kqu3Umq1tGzPWotpcgscd3wVQPd7vVFD3LEC7xmdsa0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qBvttAmFbcYUsYNU5MzEfrzSPyf5On8MIdAWGYSxW8f3dFCdD9iqcNx7e6FnZy0I4xJgVCFB4Fu21vx5oSDquhwlWzwM2D3zXcXeAYDnejMi0yFZqPCWEcv1rHwEbyRKjYP2ASIu9gasJtfHl4hCVOiwZTwewRoBvOUm4q3c+ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WRd+9E0Y; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-20c714cd9c8so7061555ad.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 07:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728569516; x=1729174316; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fxLlyQIQJJgdiI75ek6ACs/j78T35Co5yzYY4Qgs6Yw=;
        b=WRd+9E0Y5UeqWVHnJLVG1lI27z6wVaVifKGn+gqZCU7l4zn4xyKFJb48B/vmA22QKf
         aKy8LXYkPFel1Tx2zzBMuIV0aJ6AOic/wDDCJSboUfi5WCWD5+9/REUptPApDjhIAP9b
         XXbpAHHw3Y8aEu1ZsQChXBYLCfzecm6ooaKHDTFAIuYpqa8Z+U+oO8acGdad+gCrBLeS
         YiB4KCC0A130jtrISp3pMJUgZCB0rZTAB/Plubdjl5uixFTeoqf7wsg66OkcDfzVjQ+Q
         kGC/GZqNbgSK8VCZgEquiZW89fIHVjogUC/hk/M72HLyPkvcCVk2H66Gj7jBNYQl5md3
         edXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728569516; x=1729174316;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fxLlyQIQJJgdiI75ek6ACs/j78T35Co5yzYY4Qgs6Yw=;
        b=YYR4E9tOTfImlYF67M5wmKjFT7R282hclH/NYU52SrtCEQym86+PZQfoV1N1HsaaQL
         r6hk8Wnl63pXrzT59qz9ILktIDih83Pbf2Md7ic8GymciBt2o1bbQkpyv5/2UiaXnAG1
         39MLFgd7IEjK4brG1KTxAZbQPGiFTaWoT9YpvFu4/M4wY8PzPHkhbZ4/jjfErqvmsLL9
         7JLSh9TJI8t0iA73x5MzNZJ1BcRFN+IqSyFHy8H4JFiFrqj9lZ5UlLZ74KC6k6oyqY3Y
         7nF7K9NSYIh1qkqBTR3GQ1/I9/jGUMZCa2o/xZtJiai10mx2eJ7mUIhN+Dr02MEz8RQT
         nbsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVx/xts3RLG9hnGde8HENvNM0dfoJVGPgrWG+ERTKKhOK6zlJoo2CdQlrUvAaUFgQGi3HZhpohtI7A9@vger.kernel.org
X-Gm-Message-State: AOJu0YwmaVNT3daPR2jgSp+066Z0ch84tFgstMMFzoPh5d9tSvaFos/y
	b3YDvre1eWqD9gcIzF2086uLM+bL4pWKj6I6RgfnMNHncClhfUpRsvf3QWtXLZudbjFywpqdPvQ
	MA/MQxIifrzKz2HJwhd+Vw/cjkUmyBMFKCNf2rg==
X-Google-Smtp-Source: AGHT+IEhasvLE5yjpIGoee9hmPWbwQLLyEu4QgFWIgNpHIHMhcKCpF7OJWfO7V9mYtlQ7TYOHC4EDf/4tu2SMkw2TAg=
X-Received: by 2002:a17:902:ecca:b0:20c:528d:7063 with SMTP id
 d9443c01a7336-20c637104bdmr113865075ad.19.1728569515691; Thu, 10 Oct 2024
 07:11:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241009161715.14994-1-johan+linaro@kernel.org>
 <xwscnif4mqzykjinjtbr7jqsksy2buzindyttkk754jmumktm3@p5xxnmia7fxe> <Zwfei-Jn6goiya4H@hovoldconsulting.com>
In-Reply-To: <Zwfei-Jn6goiya4H@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 10 Oct 2024 17:11:43 +0300
Message-ID: <CAA8EJpq1U7=An1V=DRqd2tAr527est1UFKc59CE8wRL1tdN_Ug@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100: enable GICv3 ITS for PCIe
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 10 Oct 2024 at 17:02, Johan Hovold <johan@kernel.org> wrote:
>
> On Thu, Oct 10, 2024 at 04:54:19PM +0300, Dmitry Baryshkov wrote:
> > On Wed, Oct 09, 2024 at 06:17:15PM GMT, Johan Hovold wrote:
> > > The DWC PCIe controller can be used with its internal MSI controller or
> > > with an external one such as the GICv3 Interrupt Translation Service
> > > (ITS).
> > >
> > > Add the msi-map properties needed to use the GIC ITS. This will also
> > > make Linux switch to the ITS implementation, which allows for assigning
> > > affinity to individual MSIs. This specifically allows NVMe and Wi-Fi
> > > interrupts to be processed on all cores (and not just on CPU0).
> > >
> > > Note that using the GIC ITS on x1e80100 will cause Advanced Error
> > > Reporting (AER) interrupts to be received on errors unlike when using
> > > the internal MSI controller. Consequently, notifications about
> > > (correctable) errors may now be logged for errors that previously went
> > > unnoticed.
> > >
> > > Also note that PCIe5 (and PCIe3) can currently only be used with the
> > > internal MSI controller due to a platform (firmware) limitation.
> > >
> > > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > > ---
> > >
> > > The PCIe Gen4 stability fixes [1] are now in 6.12-rc1 so that we can enable
> > > the GIC ITS without being flooded with link error notifications [2].
> >
> > Cc: <stable+noautosel@kernel.org> # Depends on driver stability fixes
>
> This patch is enabling a new feature, it is not a fix, so Bjorn please
> do not include the above tag when applying.

This is for stopping autosel from picking up the patch, not for
picking it up. After just helping to revert random patches being
picked by autosel I start to like this header.

>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> But thanks for reviewing.
>
> Johan



-- 
With best wishes
Dmitry

