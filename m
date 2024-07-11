Return-Path: <devicetree+bounces-85078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C88192ECF4
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 18:42:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDE721F238DC
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 16:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D9DD16D4C1;
	Thu, 11 Jul 2024 16:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oBZOlg9A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9005616D337
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 16:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720716121; cv=none; b=EiyLWdMoY3ZUMaBQVMgoCmA+BV9ZdgP37TW+5e6yaaOW9IMjLgbLCyPa5A7GY/skGie+8K+jiMKfAPsFbilUWzaUV5sYxtQgucucb2xMUHowLLJJcZjy2FTsFnCpci+jo4FSpyaoqwfkqjiJA+kvvb3J9JUzNm53swxaDpUPDHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720716121; c=relaxed/simple;
	bh=a4QAtjiHvxxw1BzWC0fkN+pn/KINv2TovD4X0xhrjKA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aCwfrpUgt56sBKBR657ModC4vibqRYilxxgaEQ04rUo97aU9PvyckfWYpqPAbTIlvyls7JSdnIYuYBzUh7qc770SpJcRAPXOWWNsAzyLi80/RzWHvpdS0RZ3X3uv+QqeqFWPn6G7iOzoqxuX3DCaKj1Vkrgfyp69EWF0Xvxp2XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oBZOlg9A; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-710437d0affso780329a12.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 09:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720716119; x=1721320919; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Xt2lMN+078eDNF0Gw7yedN2yiedgJwwv9Vmf4vST3kk=;
        b=oBZOlg9AefcNLihVUcRn+K/vLpUaipbc0qPiL+3RjI0Qk1d7sDyKk4miB9B0cZa8wh
         3luq2aAKuL+HHfbVs7usoxdiqOmFdwiB2nATK1tLuQHZGUTJDTtAON+tR+Gy76/cRn23
         k5qs1KeSme8kgt4LXi6/OiVPcofwcDsvDCgwqtmVWqZ2VPFEWmm16PytIaCNISqLfk9L
         N6Gg4YAb1/P07PLI0ScnS+4h5EqG0jB7CaN6hcmQi3ETntdvFHfEl2zxWyExNJD7YIuV
         iD4U7DkTpoILKr5HhMfMsY/B32lYBJxdy6axwqtq/I83phNmcoCpwzp9sam+O03Fz7y9
         lPxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720716119; x=1721320919;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xt2lMN+078eDNF0Gw7yedN2yiedgJwwv9Vmf4vST3kk=;
        b=B2QQReICAi2+sLT048Cl3zqiJx9BTgh5cm4e6aPX0RTUgIQzhrHLmzMO96jc41QCxk
         2BzprZ9ffh1vPU64bhnuey5/MlIDxRaS8cZyD+dHjCQGcblbycUw6kEpVWpd9ZVFNDRd
         GPbegdGN5C8TY/ODzqDs9ab6yxCe7HUNJnQOPTFH520x736vmhYsxGbQbNYV+3bWvqhG
         PS6mUZOjqkDhZ8gSCXdvwUSG+DK5TbFZnXiEPtJokMs1prybmbiICAjfvp45VQQu9HmL
         rnv1byyFWvDlby3TPfSOTCkTHtf4TGOgpBJ0TONQ15leCjDQVuKPDtcjkSJjg9qIGPmS
         2lEA==
X-Forwarded-Encrypted: i=1; AJvYcCXeQ759lcBEmF7qCoxqTXb8bGXwpLwm3lmQhNy6VVDGekdMmsmxd7gzyoi/WOE9YsArVYCKvS/YHB0DJH0SI30ftaiHCAHpHPTxLA==
X-Gm-Message-State: AOJu0YyLO1PDhhXh4TgyT/cYVeD0hrXbnZxvvACbspjNsiS8nUJCA7AX
	kc/Qnkfq8P0H2aJq/DIEeK7FDQr0vllXNXoVsEe+XDSkDl55qyQJIYDozB8qMg==
X-Google-Smtp-Source: AGHT+IE9ctiXhLQ3czR4VOfyGCDYyva625XcHFB9wFJATFzLwz0WID1rY0XGQBXMeE8CJ9TdpU89MA==
X-Received: by 2002:a05:6a20:2588:b0:1c0:f7a4:2c39 with SMTP id adf61e73a8af0-1c2984e3693mr10205344637.56.1720716118771;
        Thu, 11 Jul 2024 09:41:58 -0700 (PDT)
Received: from thinkpad ([120.56.197.247])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b438c7099sm5880532b3a.84.2024.07.11.09.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 09:41:58 -0700 (PDT)
Date: Thu, 11 Jul 2024 22:11:53 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: enable GICv3 ITS for PCIe
Message-ID: <20240711164153.GA4992@thinkpad>
References: <20240711090250.20827-1-johan+linaro@kernel.org>
 <f7e74a6f-0548-4caa-a8fc-8180c619c9aa@linaro.org>
 <Zo-ssBBDbHRLtAwG@hovoldconsulting.com>
 <Zo_zu-RmbZyKijVQ@hovoldconsulting.com>
 <20240711161947.GA4434@thinkpad>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240711161947.GA4434@thinkpad>

On Thu, Jul 11, 2024 at 09:49:52PM +0530, Manivannan Sadhasivam wrote:
> On Thu, Jul 11, 2024 at 05:01:15PM +0200, Johan Hovold wrote:
> > [ +CC: Mani ]
> > 
> > On Thu, Jul 11, 2024 at 11:58:08AM +0200, Johan Hovold wrote:
> > > On Thu, Jul 11, 2024 at 11:54:15AM +0200, Konrad Dybcio wrote:
> > > > On 11.07.2024 11:02 AM, Johan Hovold wrote:
> > > > > The DWC PCIe controller can be used with its internal MSI controller or
> > > > > with an external one such as the GICv3 Interrupt Translation Service
> > > > > (ITS).
> > > > > 
> > > > > Add the msi-map properties needed to use the GIC ITS. This will also
> > > > > make Linux switch to the ITS implementation, which allows for assigning
> > > > > affinity to individual MSIs.
> > 
> > > > X1E CRD throws tons of correctable errors with this on PCIe6a:
> > 
> > > What branch are you using? Abel reported seeing this with his branch
> > > which has a few work-in-progress patches that try to enable 4-lane PCIe.
> > > 
> > > There are no errors with my wip branch based on rc7, and I have the same
> > > drive as Abel.
> > 
> > For some reason I don't get these errors on my machine, but this has now
> > been confirmed by two other people running my rc branch (including Abel)
> > so something is broken here, for example, with the PHY settings.
> > 
> 
> I saw AER errors on Abel's machine during probe with 4-lane PHY settings. And
> that might be the indication why the link width got downgraded to x2. This is
> still not yet resolved.
> 
> > I saw five correctable errors once, when running linux-next, but it took
> > several minutes and they were still minutes apart.
> > 
> > > Also note that the errors happen also without this patch applied, they
> > > are just being reported now.
> > 
> > I guess we need to track down what is causing these errors before
> > enabling ITS (and thereby the error reporting). 
> > 
> > At least L0s is not involved here, as it was with sc8280xp, as the
> > NVMe controllers in question do not support it.
> > 
> > Perhaps something is off because we're running the link at half width?
> > 
> 
> My hunch is the PHY settings. But Abel cross checked the PHY settings with
> internal documentation and they seem to match. Also, Qcom submitted a series
> that is supposed to fix stability issues with Gen4 [1]. With this series, Gen 4
> x4 setup is working on SA8775P-RIDE board as reported by Qcom. But Abel
> confirmed that it didn't help him with the link downgrade issue.
> 
> Perhaps you can give it a try and see if it makes any difference for this issue?
> 
> Meantime, I'm checking with Qcom contacts on this.
> 

One thing I confirmed is, we definitely need different PHY sequence for using
2L. The current PHY settings are for 4L, so limiting the lane count from the
controller is going to be problematic. And AER errors might be due to that as
well.

We need to investigate on enabling 4L.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

