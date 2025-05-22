Return-Path: <devicetree+bounces-179540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DDDAC0B92
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:25:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 140543BFAB6
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 12:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C1DE28AAE3;
	Thu, 22 May 2025 12:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F7GLlyr3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B31528A713
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 12:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747916722; cv=none; b=CRAbpH9Iwv9QY1v1h8bCJLogv08mT+znDZvgGGM5nutpvmMSMTO0YCMXYBMl2bM4amFIZbhoRQpQHCVe1Xl7T7MgI7r6DH5vGjt+B3e7qmgtPFwjl7fQzGXxybXtKacy3BaMhhU0iwWSydlTBkcEpLsMBgq8tT24wxPWn4h8f0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747916722; c=relaxed/simple;
	bh=sFWdLCw1yS6Oixnql//xrLxtUNnFBMyddbYGl5qZkwA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QiZujMXlbvVlXLZ0VwvtIc4+8W38hcHh6VfLbhIIC9XBD5G33viWVuPo1Nw1r7ri4oTaVOHojHbNSyfuoRpBMiSojlsM157k1xN83D5TuNT6KpIGZ56dO/BVXB0+fcka715PQlnb/Qrgvs5Qp0Re958LrVH1YWlZIh6i0+EJqOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F7GLlyr3; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ac2bb7ca40bso1344335266b.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 05:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747916719; x=1748521519; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WZuijAJRPJZ+p2n09IvIvH7D3TfvZOkc/364B+Mx6Yg=;
        b=F7GLlyr3J8I40iVu60gieSuE6EbHSf5P8bEd5b9y7xNgXExSYfOww2aW2J4RyX+UQW
         VfNRN/kQ60w1uGwoGxbnXJx91atiOkfRB4dzfd/18P9SbuTQ6EAoEcDFxUzTuZ6q7TmW
         CARzeBbGxoe1r6zaGr79btguMPIhjLV1mvSqUh6GVD2eKO+x0csYVWSlQDGwXl4p4zOm
         a0u2hENVBcZLDU/qBXzcLn6hR3Vikxo0IeqqEp+A8Muwxvb9x9LoLVWpC89FE+Gu7pGj
         Tqq/jtwVGaTKlTqGrC+olkjp2EYfHXdeEbaNpuzkbq0cxv8AjEyks1Q42+2VkZipNHDe
         IItQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747916719; x=1748521519;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WZuijAJRPJZ+p2n09IvIvH7D3TfvZOkc/364B+Mx6Yg=;
        b=l/h7wrZ4otAWKXXKT7jBovkSE3v7KJaeKRSOJ/ToVo5ruxDubNvZtAeo7nsU1e/W5d
         H/vGtN7LZB69ek9R/Hux2estlCxCmnrcM/3rbDUHMNYv8QlUQkmtA2HBGthCc6k8QqPk
         +oTzqERb98HmNBk8aDR5zHHeJNWh8ichcVgC3+QsmobAs/CNi/TX2jUAS/HaUcnP4Ab5
         tW6inZw9qvqPCvH/WQa+3Q+vQjNpUzWd4zR9YCzKnSLJSQ42hs2FPXowFRQdVchiSu9p
         MXaS2R5rKtvCGRc8uBYKtnBsd+mL2MIM0QEF3k9h01a9f7LhZT47uqTnY6yJjQESiO/3
         vlOg==
X-Forwarded-Encrypted: i=1; AJvYcCXa/GI8Qm8ITiu/cD844hvrqyXB9w/B/Q7WPCxok5zlZV0ulROPi0ta6AF+rqZ+X8CWv5sMibto1NwG@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdd8m1SkaKK9e1aZYd0aQoDPfgxc58X+B2cwPahHcA3ZrfDsxr
	ykqGcXtq8NRmTd5sAlcqJRZIhx2ALbJCR68YoHZlhGHIMEomfjh+8LqoNwooN4Omiwc=
X-Gm-Gg: ASbGncsVDX8vH9dpUoID6PKAfBE/f8IxcD3afDJKMpUy3LrwTh9OwCySu5cYcpep1OM
	M3pN5jt6/uZOTy0ABUnEoaUfauVkUzLj14OL+QaiMYLpwOGHxSsAPhIYcnX+8qneaUjDrG/lJ32
	u5sIc45SpJvtWhjqL2616mk+f7vKPHe5LuNquaQKkycZrtq8zSlusnKKfVjdPZcxI+LN3ILZM9b
	dqsrHfUSC2ESES8BPANbX2YAnLvMmnJvVvRFvbEEShrdq3vOx7KncLd26C/PzZrKZpXO16OwhbR
	HogfNdHnHA74xIqNezlzMjf3nNThTvarTrDeYkKyuCPOkhHM
X-Google-Smtp-Source: AGHT+IHcT2PY89g15o0bxhhQt0NPg7NGUlq73S+uSn8e6SJg6l2RRfQQixZwQtfKRbnT5KPfhf/pwg==
X-Received: by 2002:a17:907:8690:b0:ad5:4fdb:a2d6 with SMTP id a640c23a62f3a-ad54fdbb14fmr1991573666b.43.1747916718712;
        Thu, 22 May 2025 05:25:18 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4ea7b7sm1081211266b.177.2025.05.22.05.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 05:25:17 -0700 (PDT)
Date: Thu, 22 May 2025 15:25:15 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Melody Olvera <melody.olvera@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
Message-ID: <aC8Xq949p6NNDXa7@linaro.org>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
 <20250421-sm8750_usb_master-v5-6-25c79ed01d02@oss.qualcomm.com>
 <aAswZg9s41s/m/se@linaro.org>
 <f7de2bbc-4925-430c-b263-226a633e4bfb@kernel.org>
 <CAO9ioeXzzSBy+wYFATeckKZ2641GaTA1dB_1HOb238DdB7ACoQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAO9ioeXzzSBy+wYFATeckKZ2641GaTA1dB_1HOb238DdB7ACoQ@mail.gmail.com>

On 25-05-22 15:18:00, Dmitry Baryshkov wrote:
> On Thu, 22 May 2025 at 14:05, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On 25/04/2025 08:49, Abel Vesa wrote:
> > > On 25-04-21 15:00:13, Melody Olvera wrote:
> > >> From: Wesley Cheng <quic_wcheng@quicinc.com>
> > >>
> > >> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
> > >
> > > Nitpick: Drop the double space from the beginning of each phrase.
> >
> > Sorry, but why? That's a correct grammar.
> 
> 
> Being absolutely nitpicky, this depends on the country. In some cases
> (US) typography settled on using double space after full-stop. In
> other cases it's a normal space.

Okay then. Please ignore my comment.

> 
> 
> -- 
> With best wishes
> Dmitry
> 

