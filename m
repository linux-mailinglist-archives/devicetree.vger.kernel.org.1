Return-Path: <devicetree+bounces-25591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CF70B813CB9
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 22:37:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8BEF1C21CBC
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 21:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B31476A33F;
	Thu, 14 Dec 2023 21:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qGcfgN8L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B5D6ABA3
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 21:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a1f5cb80a91so4883566b.3
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 13:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702589830; x=1703194630; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zG76K0qzQZ6BZo0ZqrQ/rLUKCqfNhdCgq1Uc4qUXBrw=;
        b=qGcfgN8LTNN+1hu+VKYU5Iu6DZP+TJImMgvM4f1yqATEtCgpK1UFvxT40bZruE5Nq5
         HzLD+x+eDjsRjeFx4oXilW1LrkKeOLln2GfRXVmJMzUFghyIZEp51Cz0V5ZiShbRqt0j
         js5S4kqZWuRCvhJsCuaaCAYGBFLlykCeniZvhJvn6Nk9aMwcbvYdks6tUAuwWmzB/Wxw
         4bg3L/ON3CZp64UmCkucj2NgLJexaLpDM2T8TXxQz6iYNfzwBqyzzfd/FP0exAXGn8VN
         HVFR44JiEeYFmNLakyZ2Ya4vHY7DtmWMWxgY+eFoTr/7eDF3f/M/AOzh5I06UyRG2U3z
         G7bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702589830; x=1703194630;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zG76K0qzQZ6BZo0ZqrQ/rLUKCqfNhdCgq1Uc4qUXBrw=;
        b=lVITt3fTMscjkUlkkenxJ6m4ee361+cJvOyaL+UjPrLvwJT84zsXBbhzsFB28UkYFj
         GGQ1ccfMkGXEtS6HcJDm4uqMkUnSy8ZeT0SycaA2tLDFTjTMcSFvKB12OMSnAxNPnQJf
         L/aqdc48eWj+jhVyCqrFrmJME99OokIlpxSnixdPUH7Uvo5cl3JVn2xGS70avSU2ZmM5
         iV+l6MoH5mFyQCR+hWhw5TiA7qNp+Wj3yumaRGfKKRaWWkfme/OLjRi4XKt4Su3JL9YT
         2w/XmXXiBRinM05N2hMDa8Dh2a5LLPjgpQ22/WoMArmg+iJ46tHUqvUsDnhmSvhyBLyX
         +4Nw==
X-Gm-Message-State: AOJu0Yy5a05jsRkkNL3VKuL2f2dyfbM7Zy4S6Modcxq+KqlkvVTltXPu
	H6Jl+EEVFTeqARmRKpPA/i9fbg==
X-Google-Smtp-Source: AGHT+IFcW+SbpzKQAw5oi5FA/QgeaAA3x2c1H5/dpHyiWf88seXHLhbIlAZi0tqPdOEL1HK8Ns/PLQ==
X-Received: by 2002:a17:906:29e:b0:9bd:a7a5:3a5a with SMTP id 30-20020a170906029e00b009bda7a53a5amr4065934ejf.36.1702589830053;
        Thu, 14 Dec 2023 13:37:10 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id li18-20020a170907199200b00a1e4558e450sm9913466ejc.156.2023.12.14.13.37.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 13:37:09 -0800 (PST)
Date: Thu, 14 Dec 2023 23:37:08 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Rajendra Nayak <quic_rjendra@quicinc.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100: Add all missing nodes
Message-ID: <ZXt1hOADgY9iofvC@linaro.org>
References: <20231212-x1e80100-dts-missing-nodes-v1-0-1472efec2b08@linaro.org>
 <20231212-x1e80100-dts-missing-nodes-v1-1-1472efec2b08@linaro.org>
 <9c8e887b-429c-4226-9851-5f1cbb93524a@linaro.org>
 <ZXsgYl2h+MnTIz7D@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZXsgYl2h+MnTIz7D@linaro.org>

On 23-12-14 17:33:54, Abel Vesa wrote:
> On 23-12-12 17:21:19, Konrad Dybcio wrote:
> > 
> > 
> > On 12/12/23 11:24, Abel Vesa wrote:
> > > Add all missing nodes which describe entire X1E80100 platform.
> > "all" doesn't really mean all :|
> > 

[...]

> > 
> > > +				clocks = <&gcc GCC_DISP_AHB_CLK>,
> > > +					 <&gcc GCC_DISP_HF_AXI_CLK>,
> > > +					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
> > > +					 <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>,
> > > +					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
> > > +					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
> > > +				clock-names = "bus",
> > > +					      "nrt_bus",
> > > +					      "iface",
> > > +					      "lut",
> > > +					      "core",
> > > +					      "vsync";
> > you probably should list the ROT clock here too
> 
> Will look into it.
> 

There is no ROT clock.


