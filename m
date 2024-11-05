Return-Path: <devicetree+bounces-119037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9199BCB24
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 12:01:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA2471C214A5
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 11:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEA6E1D1745;
	Tue,  5 Nov 2024 11:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NRhk9/9k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BED7192582
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 11:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730804503; cv=none; b=MxbStY4yTErpLdvHOq+O/ni5Vb7vhqp3TfmeAdhCcPiIQx3tz8mT6s/OB2iYio8xWFAPgxzZcf0aGhAc0GVJtOHtfejzeD4+goGZrnU57lMqIegSne71ny/wwgQaEKjv9bXX5Z7sCQTvme+tB5BcQvCE2UUYDWzWJlCCMhnYIqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730804503; c=relaxed/simple;
	bh=5WNY4BTKpyqkgfx/aIHK+uOWMIt2dKDdpsq+9SR0ycc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u+0jgjMlLLzUXDEKHVdSpp/HXqlyPWbqH/J/pPyuGRNKMXHwxfrPbzH25lKjqtyXV8XZ5o+JbW0TaENXJ/+yYA60WqTCsHY48Gud63jRn9dSiD6btGOxRPMdIAuy5LPDnsTFZoNs276nFFiFZt7f0DlMmeefwvhYCqkCSij+biA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NRhk9/9k; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43163667f0eso44962825e9.0
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 03:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730804500; x=1731409300; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0mqp3tTDVEC0dYJejZacw/zr4PmWIksNztPnZtcH9gY=;
        b=NRhk9/9ky3OpCsUFsZ7o+vtgA5mPyaF+o4hS1iKfShuA/6MBNA+WR8+RsgT2vixms9
         ZgHT/KL3jAnc3pPZin9tYOeyPTqzUslxeFKFW+WSA1HSwa90etqK92iR8oRnIX/SKJGY
         85LSH7ux87tJPdJmVMWCpolQL9L9qKx85Se/gcPyxxf6pyFtXPiW7RSrs+xrbqQKI5rL
         3dMgb0iNuEiE51OpLcsNMfN/ElmexXiQ4GM15biajn9gR4N3iig6ZkD6GUeujh1f/aDJ
         dAD+Sn7bYRSU+/I7L4YKJt42b0Uiwxy9CVJod8R6N9zsdnr5shTASDNzvWfqHImXM7fq
         8EZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730804500; x=1731409300;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0mqp3tTDVEC0dYJejZacw/zr4PmWIksNztPnZtcH9gY=;
        b=na1LyKi04gbjeVgvZ6MY6slbcTEalIwSZu1MvzoONHpwxUNNbYyOwuNbnqUJOT06S7
         dXIOuuaYm3+MMM+lLHhU7eJ2/Kpmyic+uGquJ7tOvnLPMifeQ5VF77H1DZ1HJHqn3dEA
         q+6adxVt0HJkz8lAEbxwQc1bUPSHYTa+lDaQMYJXxaacrAmyNWc3LDQPlhTY1TsIWyp+
         xcKCWnOgGiblVBD6kCdoCyZcEdbGbbzXwlSM3f3M09p95dyYXo0Yfxja4QfEgrYELkzw
         cOBAFrer951NJ7aYmxs2FPDASEovlPelH8urRGDqpAvesLvSJx5h/VWp5CJEdGYsXC73
         MQMw==
X-Forwarded-Encrypted: i=1; AJvYcCUSCtnRdJdmG/dZP3Ucpop1mo0dUXYR5Fbqckdve+bshywuTQy8CD7BhMlSnlmxQB768ZrxrFA+xxSt@vger.kernel.org
X-Gm-Message-State: AOJu0YwIliSdxdkdhUNZRT3m3Hx00e9kLUihAHEqWE/7PUopZdtaPbRD
	WGBFPrJ5BMtCIhUeZwC2mOn1kxdC5ks5DptocB5CjjGLIx7+yUkOHh4or85A8EU=
X-Google-Smtp-Source: AGHT+IHNIaTXDGPayDWrZncCkF8QcYlSviGx9GZU1YCBv4OUqG//R4A/X9nBYttt6C5Vr4YVKwEhEg==
X-Received: by 2002:a05:600c:3150:b0:431:5ce5:4864 with SMTP id 5b1f17b1804b1-432832aa0b1mr120332515e9.35.1730804500460;
        Tue, 05 Nov 2024 03:01:40 -0800 (PST)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d5e7c8bsm188611715e9.26.2024.11.05.03.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 03:01:39 -0800 (PST)
Date: Tue, 5 Nov 2024 13:01:38 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: x1e80100: Describe TLMM pins
 for SDC2
Message-ID: <Zyn7Em1HqTwysZsh@linaro.org>
References: <20241022-x1e80100-qcp-sdhc-v3-0-46c401e32cbf@linaro.org>
 <20241022-x1e80100-qcp-sdhc-v3-2-46c401e32cbf@linaro.org>
 <a282021f-5e61-480c-84c4-272049e28244@oss.qualcomm.com>
 <Zx9P+HQMOkJsJGcj@linaro.org>
 <327507d8-2dc7-4645-ac3d-d68ff31a84dd@oss.qualcomm.com>
 <ZyS50DFLhHVlnRtd@linaro.org>
 <c6f8ff2e-bcc1-480a-9ca6-0b55991c099e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c6f8ff2e-bcc1-480a-9ca6-0b55991c099e@oss.qualcomm.com>

On 24-11-04 15:06:29, Konrad Dybcio wrote:
> On 1.11.2024 12:21 PM, Abel Vesa wrote:
> > On 24-10-28 14:10:54, Konrad Dybcio wrote:
> >> On 28.10.2024 9:48 AM, Abel Vesa wrote:
> >>> On 24-10-25 20:34:19, Konrad Dybcio wrote:
> >>>> On 22.10.2024 12:46 PM, Abel Vesa wrote:
> >>>>> Describe the SDC2 default and sleep state pins configuration
> >>>>> in TLMM. Do this in SoC dtsi file since they will be shared
> >>>>> across multiple boards.
> >>>>>
> >>>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> >>>>> ---
> >>>>
> >>>> Not very useful on its own but okay..
> >>>
> >>> Fair enough. For some reason, I'm not able to get sdc4 pinconf
> >>> to work.
> >>
> >> Any chance you tried to define 'sdc4_cmd' etc.? This one seems to have
> >> sdc4 pins on gpio127..=132
> > 
> > Yes.
> > 
> > But since the sdc4 pins can have other functions and since there is no
> > device that uses them (yet). Shouldn't we just skip describing the sdc4
> > pinconf entirely as that should be done on a per-board basis?
> 
> By that argument, why describe the controller in the first place :|
> 
> The possible pins are predefined and physically wired up inside the soc

Right, unlike the sdc2 ones, these can be muxed to a different function.

This is why I their pinconf need to be described in the board dts rather
than SoC dtsi. Since there is no board that supports it, we don't
describe them at all.

As for the controller, we should still describe it even if we don't have
ways to test it yet.

> 
> Konrad

