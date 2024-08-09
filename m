Return-Path: <devicetree+bounces-92364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9EE94CE9A
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 12:28:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64EC2B214A4
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 10:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 287741922E9;
	Fri,  9 Aug 2024 10:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NewNTG3K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23884191F9E
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 10:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723199282; cv=none; b=TntFMlnBzlViLojaplj3KR8k5HjMo086LEIY2eMoOQPyrUZKKbKdSAPsC82DNwzLc0asov+0IFTumno2P7i1+HRlHmfMOQPAR4tEKlTC01YlGwHtMwRv0mWp3Ct61Ld3xLHvwN/64pifD8kGB4CHBsAIm7QpLHugTVJXcUNbsbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723199282; c=relaxed/simple;
	bh=mciDyR6DAV+t2Evh9AfOB6T8709XeXKN989YLH9vaxs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XPviw6PiQ3hTZOBuk6Z9wn7OC5CwZMd3uArjl8VyXrFyaOHMs+8aQFBR0IcTIeUDB9W0HUS5jmh/2XmAg58+OhT6+uCkgIsiizaasE5xJYOY7j+dzeCwyxCHQHdB9KNAKwzYQpQbIkFrXbn36CYLKEhxleeRlx2HQT5AUeQG1Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NewNTG3K; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52f01ec08d6so2561058e87.2
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2024 03:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723199277; x=1723804077; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Oq5WuounRhDgOPhDOrEXdyNS99LjTUBlFL3IccwVggc=;
        b=NewNTG3Krd9j1LDsR9r9d7SmqaNP4390FFmBbmQmfIhRmKHCBQXU9SP+ergn4I/K9p
         K74Lrdh1Qexa4cCaYgtAG9u0Ezi3ZWO1zsJBAnnkUA7dTmWu8ZStG4Zc4L910JUC7DjO
         Qv6oexoiLIt8bF1DM0cZd7kQWei08Gx7l2ixl7uMg8M/DoTG56X8/ORbYBxOBlTDSklk
         TvukddLAu6ROfyHkZTv3wjDTNhYQkm6lEVQzn9O2/5rhgD/LbkK+uLnOis2jbUy2oIV4
         6p/H+IOm1d3tCAZ2rcCysGrZ/hHLDro9dHlAG0mXFyK80pxaXPySGdDDhRX3xYU/MIXz
         rDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723199277; x=1723804077;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oq5WuounRhDgOPhDOrEXdyNS99LjTUBlFL3IccwVggc=;
        b=bPJT6F26dtonLRGtJ36CVOaGilaYiVo+sTVVRnwYnyICi2i0kga4c9zeqs0b1NcfOB
         h3BWZt6WOwBhzRn0UelKircTlQk8ofbGfYhvL7hre0eBRpmdyFuviHC6jiXyv9LYlEeK
         E2Up/MQl5GNxrGH6T7CTFbExiQLuJOR9a6KPkHPyc7VNB/s3o3VTLvA0KRlh3ES84VCB
         m2f47WqIGI+JrJVZcWZpPhDAoXGXBBeajCEt4yKLXazIzVD8jlUb1DggzpZ9pyvxsnsr
         sGNK9Qc8m0svyWnoOUOC5E1QXDb7RUK68eeVKZ9j7gtg08yEtkBdg1+B1332NF8j0+Ia
         wQAQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8eVdh8aJLfybOV8rx+E22j6wOeKsD0y+3P1YkqykG9qNUs1116z9otB7fIuepGcT0WNQwHytt7g67ddmYvmfpNDD5omxVBbl+Xg==
X-Gm-Message-State: AOJu0YysdGjSpH0KIqPFyTf2DN7j0ASj16G7M8QMb9wzI4oFuBEc2SF+
	JEE47SEscxHiPK++f16h6m8uJziNY9myknMBru2FS7aR2ttpdyy4HmMemJy1iZA=
X-Google-Smtp-Source: AGHT+IFBNYCFbmOMoK+gCdRJEXf1i9wJyiJOeN25cq8clrsXLyDyrnuY3aNzE7llXL4REgI4fC8Vwg==
X-Received: by 2002:a05:6512:acc:b0:52e:fd84:cec0 with SMTP id 2adb3069b0e04-530eea5a11emr852782e87.52.1723199276902;
        Fri, 09 Aug 2024 03:27:56 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff1f:b280:8395:bc08:2fce:1f21])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bbb2bf869dsm1418437a12.1.2024.08.09.03.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 03:27:56 -0700 (PDT)
Date: Fri, 9 Aug 2024 12:27:51 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konradybcio@gmail.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <quic_kdybcio@quicinc.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: x1e80100: Add UART2
Message-ID: <ZrXvJ0Ay-2gFWB13@linaro.org>
References: <20240809-topic-sl7-v1-0-2090433d8dfc@quicinc.com>
 <20240809-topic-sl7-v1-3-2090433d8dfc@quicinc.com>
 <ZrXWPQVXfdL-QLnt@linaro.org>
 <b9b02bc4-1abd-4a56-bb6e-ac2c59e8f609@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b9b02bc4-1abd-4a56-bb6e-ac2c59e8f609@gmail.com>

On Fri, Aug 09, 2024 at 12:24:03PM +0200, Konrad Dybcio wrote:
> On 9.08.2024 10:41 AM, Stephan Gerhold wrote:
> > On Fri, Aug 09, 2024 at 03:43:22AM +0200, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <quic_kdybcio@quicinc.com>
> >>
> >> GENI SE2 within QUP0 is used as UART on some devices, describe it.
> >>
> >> Signed-off-by: Konrad Dybcio <quic_kdybcio@quicinc.com>
> >> ---
> 
> [...]
> 
> > 
> > Can you combine these into a single entry, i.e.
> > 
> > 				pins = "gpio8", "gpio9", "gpio10", "gpio11";
> > 
> > if they are all the same?
> 
> Keeping it as-is gives us
> 
> a) better hw description
> b) an easier ability to add a label and change e.g. the bias
> 

Ok, but it's inconsistent with what we have for qup_uart21_default right
now. I think you should either change that as well, or follow the same
pattern. :-)

Thanks,
Stephan

