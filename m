Return-Path: <devicetree+bounces-116002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C39B89B19AC
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 17:58:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F4391F21B1D
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 15:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D596213C827;
	Sat, 26 Oct 2024 15:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XXkSypwb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2F46F06D
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 15:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729958294; cv=none; b=izZc/n71mfvDNniLS+nWzqqXxCUpY9S54Gs8sQBGXFIoLfUr1mISMgNoWPm0438zYS6r3bbdVxUyn9i1AXMhZYk/aI6UVDn3eYPYXB5sgonm9mofpb3nxSTBRTWrNlhlH6uyoi5K1Z/G4GTuJBRdp8Wd9JPJmc862eMrrH0yBaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729958294; c=relaxed/simple;
	bh=0Yy5KhAotvtG1MeuOHu2YrvJdVMziOmFkmayVc04OFY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mqcRl59YZQQxyvza4+tSqZS7HG46O2i3TNQRX6/EXSItkdad8HL8ESSvcGp6IAIhepAvS1opUh4FEGRQNesFmNajLjnK0Q40NA0oA4igT/lSRINka6t364hU05atQ1EOvklDmVuXpZpmG6RF0AUcrVTFDKfMIVxRrVXIOBX+hgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XXkSypwb; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb5fa911aaso40777591fa.2
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 08:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729958290; x=1730563090; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nObd6q39hTr2YQsRyrzp9HSXK/DdhwTjCY0y0mR1PXE=;
        b=XXkSypwbefLI1ucXwsxkBoLbHfLkpdSjUDOFrggHOoOw8a4brYtrZv4J0JQeCT61B4
         kNvx33ZGiz930P+c8KF9CHWnpFKK0jBSg7Nu8Dfg4gxchu1gSZnCvlBh5M6RUPJGj3r9
         qCr1O8fXNbD3NKP2cJx9rs3MQWAUdulJ/zVk0Tp0PLFDuz6Pjo6OOOA5L4ZURDZsMkgH
         Geqo9KO5un+VWAONwsx63NOgykBuBL4o3nVGoy8HKnlaFr9n8W0GUYOaE0sMOZ/+NflY
         5tgmuvpKEiquy5Sk2LZAJoKNURoFpDgNWei1VwOpS0OHR9VIrdqqX8aCoIJoIE1seXga
         /nIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729958290; x=1730563090;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nObd6q39hTr2YQsRyrzp9HSXK/DdhwTjCY0y0mR1PXE=;
        b=jIz34tHbsqI14gJRh0d+ETqcJ+9fJFqT6/nSEacTDT6VFN01xw/zxz2JndbW4qYCQV
         o9RyYtqmG1GU4bnqUBCjlNQ4P6ITVrW/Yg2Fojb3lYYy2EZ63rHcc/23RqUgQNLo6C4E
         St7JAWc59/36Wbe2CSVX8/Y1IOxOADNB8ghNbYEx8NXBbPw4+iunz7KDYikrreC2//Df
         x/5s09gsY62xwOKky3RX+NhdeLmFA5e3n310Dp4npk3Z0VtSnm4auA+swizRsGcx0KvO
         8Zbi94qJrOpKvZHfFQWnDGtmzgW+cG6QDMJNYIakheOY0+LIRddqKXzeN/YQm/I7NGZu
         NVmw==
X-Forwarded-Encrypted: i=1; AJvYcCUgmFPoY/sa2qF1NKe+k7QCGcb4fzlA6ys+u6w0knuLcd/Yap1qDdAUrU2YeedowbgAcee8iteIPjTg@vger.kernel.org
X-Gm-Message-State: AOJu0YzDIDRVHFQjdrKKckf4AJTabvZtPkYFJ6LZsNfU3Gye6FjswPfn
	HeiPHTC9pw/u+2NH9IL8cquQtLEsUV9eLpaXaVPyVtAxegLtYkwiRwUXb/cslp6r9cfKOJAfzMC
	e
X-Google-Smtp-Source: AGHT+IEx8yd6r3JxxjdHBLUNhzq0EwSMwjb+YKGZtWbWQxHCWYkq8/n17PU3q4sZPj03cet79QZFJA==
X-Received: by 2002:a05:6512:3e18:b0:536:55cc:963e with SMTP id 2adb3069b0e04-53b3491e254mr1810034e87.44.1729958289546;
        Sat, 26 Oct 2024 08:58:09 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1d5a62sm543900e87.233.2024.10.26.08.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 08:58:09 -0700 (PDT)
Date: Sat, 26 Oct 2024 18:58:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: interrupt-controller: qcom,pdc: Add
 SAR2130P compatible
Message-ID: <6p6uxa7ym5nqieenwcyt5ozqxdxojksh3ws25w2tmeinmxk3ga@lasczijp4iho>
References: <20241017-sar2130p-pdc-v1-1-cf9ccd9c37da@linaro.org>
 <offdcgni7pr433jozldgvzkubr6gvb635odlopgrweitiynaky@kvbgg4xd7g5k>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <offdcgni7pr433jozldgvzkubr6gvb635odlopgrweitiynaky@kvbgg4xd7g5k>

On Fri, Oct 18, 2024 at 09:19:41AM +0200, Krzysztof Kozlowski wrote:
> On Thu, Oct 17, 2024 at 09:13:01PM +0300, Dmitry Baryshkov wrote:
> > Document compatible for PDC interrupt controller on SAR2130P platform.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> 
> This will be picked up by Bjorn, so should be part of patchset
> targetting SoC (just like few others, e.g. firmware). Please target same
> maintainer tree/subsystem within one patchset.

For the reference. Git history of this file shows that all patches for
this file were comitted by Rob Herring.

-- 
With best wishes
Dmitry

