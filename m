Return-Path: <devicetree+bounces-125313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F27309DB87F
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:24:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 73120B22359
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2CCC1A9B25;
	Thu, 28 Nov 2024 13:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XFOLGqaM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2111A01B3
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 13:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732800283; cv=none; b=swsDF+ptOpyZsn8erz3ffF5ngqS28FToJsoBZFiWn0iTOrAd5HywO+IjDPas20GxRun6Ypnmvfv7E0a5Y/ZXt+Wg5HT/fjclnKTRRKNT+TV3HiHY1hGcFhMeZO3M9oiYeqRioHrRMwEn51xueRO97tZc6tRcAWFXrAqflnT7IXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732800283; c=relaxed/simple;
	bh=EiQXqUxIixcM/WIqsE6yZhdRc2YDwoBwf0kwdTIOQLY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EBxvhyY47V7twEh3WRVENPh/QIxKbuXcGd44yXTIAGg1zjBgavjK0iBYsk2qeZ/ILm417Tcxpzl9Ix7ZOyGO4rrB07660ZmRhdXVr+11W6ywJDNqskThgaRTB1A/cDtiModjoswm8UvO6E0YPqmc1kFpYcyaS67nEPkCEML+u/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XFOLGqaM; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2ee46851b5eso96899a91.1
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 05:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732800281; x=1733405081; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=y/S3V26ZtpsH53gJ+nZdjF8Q8MrpcidP1Hfwlg06frY=;
        b=XFOLGqaMrAgAs/EAVX2uU3saBP7riM6VcpUEb199Xd5CuFEEl11dLi29jPhaPv4cVL
         7k4944aDxi19ky2rjhNM5Fcq9BJ9072A5+exeau8Qbwd8bAyO8VHmHzEdBG8JjvjlUlB
         vqp6JKmQsxt3c0siN9cywgnGGYEo/xlCcYrf4zPactVn9tBwJy5yM99L0D+Ssv5y9Kd4
         pXTmynrq0T7g6iSJT0oTOXJ5M+bUi+tPNQpTsXDzbn0e8633KWXvjxjVe9jwJoMHUJ5v
         HWglMhN0Hq3+rg2NhoI2Rwe6asgpmeZxA1HS4Zm2fg1rZXXhDvAsjbUwH08zL3kLTFda
         Uw8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732800281; x=1733405081;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y/S3V26ZtpsH53gJ+nZdjF8Q8MrpcidP1Hfwlg06frY=;
        b=uezgpt5wLpxmsTwFy9/q/8EsMidce2UT1V9hn9Bf65+036l5rgOT43Htc+o5sUHhdM
         3hIdG8rfAqmSk1swx36Ne9U+Glt+APPPLudQhXDApulxRwpwemb3H1geFyt2wGtBML0X
         NNw4B6y+HTR5uQ5o+TI/EYyHaLZ0v0ztYWyw/dhCJSHu63xUdUawWxd4OP/YDK0FvgRu
         OCoqZ6/DCRiX9PC7NFgqpZzST8dV/23QxirhQtXfB1S9fHUuD1O3ul6LDMqPmkhaxzvM
         Lefy1jdKOmz0DCqHK2JsVWrLuP3lRYrwbhx0XG7ORdXC/CPH+bYI4GDnwfiB1SZX3B76
         BbsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxsPm/wofv3LglsLyI0pBVcYxMW/tRYguvWlwZjd5ARxJGGn79HdpuSLtY+ZDZu1UfKNvRXD5nmjxv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3zTgKmN5v6Ap6ufysR5kGQSLGbIOBdC2Tss++kdqoe7gjbR/P
	9QRaOIht4Sio0fMbO8Vdr9pfS5q2xCHdptcQZoM8pGhNYHaDB0e+jKYhl7deZw==
X-Gm-Gg: ASbGncuCrmvi+rRj36fdZAmeVpCc/req+fujBthFDrjPilerDRTwBKVryywD0XB0xeY
	Hj2S10q3vivhVBLdPUK/Nl4fiW8LZF/MxXWkyXv3TrOLUGZnw+xP9MsCKg43mg4HAycL2CiPYcK
	PcYhL762kmtl7vTw3iJQaiPsjN5+YtFx21uKpWUz8WT0zfhambc/bvd7lGm52pn0oYwrTH0+7zs
	npLp0GKDMEir4VJrBtNfnB0Do3oxg9McEqpD7LAtfKkYVehsThgXCaz6Zct
X-Google-Smtp-Source: AGHT+IHhjHrwJN/0a3LoxP1T5UBrL/PpHDbGZKXCNWeqjqOsCu7VZTYvWW+l6+4/H4GWb3YSpNc2tw==
X-Received: by 2002:a17:90b:388a:b0:2ea:adaa:1a42 with SMTP id 98e67ed59e1d1-2ee08ecc3f2mr11264448a91.16.1732800281343;
        Thu, 28 Nov 2024 05:24:41 -0800 (PST)
Received: from thinkpad ([117.213.97.61])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ee2aff1f34sm1408085a91.5.2024.11.28.05.24.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 05:24:40 -0800 (PST)
Date: Thu, 28 Nov 2024 18:54:32 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	andersson@kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/6] dt-bindings: PCI: Add binding for qps615
Message-ID: <20241128132432.fxvmjeluagignbph@thinkpad>
References: <20241112-qps615_pwr-v3-0-29a1e98aa2b0@quicinc.com>
 <20241112-qps615_pwr-v3-1-29a1e98aa2b0@quicinc.com>
 <poruhxgxnkhvqij5q7z4toxzcsk2gvkyj6ewicsfxj6xl3i3un@msgyeeyb6hsf>
 <42425b92-6e0d-a77b-8733-e50614bcb3a8@quicinc.com>
 <b203d90d-91bc-437b-9b91-1085034ed716@kernel.org>
 <cce7507f-a2c4-6f96-f993-b9a7e9217ffa@quicinc.com>
 <c81b89ff-6eb5-4a01-af84-636aa2a02a34@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c81b89ff-6eb5-4a01-af84-636aa2a02a34@kernel.org>

On Tue, Nov 26, 2024 at 07:58:16AM +0100, Krzysztof Kozlowski wrote:
> On 26/11/2024 07:50, Krishna Chaitanya Chundru wrote:
> > 
> > 
> > On 11/25/2024 1:10 PM, Krzysztof Kozlowski wrote:
> >> On 24/11/2024 02:41, Krishna Chaitanya Chundru wrote:
> >>>> ...
> >>>>
> >>>>> +  qps615,axi-clk-freq-hz:
> >>>>
> >>>> That's a downstream code you send us.
> >>>>
> >>>> Anyway, why assigned clock rates do not work for you? You are 
> >>>> re-implementing legacy property now under different name :/
> >>>>
> >>>> The assigned clock rates comes in to the picture when we are 
> >>>> using clock
> >>> framework to control the clocks. For this switch there are no 
> >>> clocks needs to be control, the moment we power on the switch 
> >>> clocks are enabled by default. This switch provides a mechanism to 
> >>> control the frequency using i2c. And switch supports only two 
> >>> frequencies i.e
> >>
> >>
> >> frequency of what, since there are no clocks?
> >>
> > The axi clock frequency internal to the switch, host can't control
> > the enablement of the clocks it can control only the frequency.
> > 
> > we already had a discussion on this on v2[1], and we taught you agreed
> > on this property.
> > 
> > [1] 
> > https://lore.kernel.org/netdev/d1af1eac-f9bd-7a8e-586b-5c2a76445145@codeaurora.org/T/#m3d5864c758f2e05fa15ba522aad6a37e3417bd9f
> > 
> 
> This points something else. I diged v2 and found many unanswered
> questions and unfinished discussion:
> 

The conversation is here:
https://lore.kernel.org/linux-arm-msm/20240823094028.7xul4eoiexey5xjm@thinkpad/

But there was no explicit agreement on the usage of 'qps615,axi-clk-freq-hz'.

If describing the PCI device's internal clock frequency is not applicable, then
I'd recommend to change the clock rate in the driver itself based on the number
of DSPs enabled (or based on other configuration).

- Mani

-- 
மணிவண்ணன் சதாசிவம்

