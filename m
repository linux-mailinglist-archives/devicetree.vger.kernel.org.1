Return-Path: <devicetree+bounces-69857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B840A8D1C30
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 15:10:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA0631C21B60
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 13:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA5D416DEAA;
	Tue, 28 May 2024 13:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XmQsayfL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E9916415
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716901802; cv=none; b=kB7wlBpvK15hpuQoDv6FmkkwU0L96Wwn+kN+APRQyd71NXLDEDutLfFao7w/jJuI3BWUtTM7FJWij8s/ET0aTY1FP8JeV2GVCOmAAlFUvaO7oyKGjm3nkvI3Wz375jE2QX0x6fzqGLNmFmzKpL+/aEbzO7WFNvF2fJdvjsTRwbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716901802; c=relaxed/simple;
	bh=oJRSdItw2anLfw/4zZaFRaP3Dn6ne/abmv6YdE3q5AM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M7vb4b1Fg/xNpk35Hk0paRGCkcU5yJ2Mj71Vr86twjUDB9cIH2kOlH2NhVzPT6pCzqgSGuviv5pdNkjSU0rEoWShjlbY1G7sn21ZsYuRwDHSlg1pT1CEb4249gZb4RRio/hKyNQn3wnzXWOu1q7GhsUsd1f9hG8gChuaglQGgeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XmQsayfL; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-529aa4e988aso1038156e87.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 06:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716901799; x=1717506599; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PPwsTBTSG17+Fbzi2z4l/C98UM+jSBGnmgHkuUq/dfg=;
        b=XmQsayfLeDSkPS/1f9j2ZNaCnETid3Xyhe1IMqSQyOiKDQpa/7JaxQq0iwfxJvnZQI
         j6oJIntPosG6E2pfczc1oyYhIIOTRdqfhqZu09WtS9yPf7XATBFLc1RvW4kZC5dRn2iA
         /covHL5hkq7+gXezHJ4XBAxhtduW27rkjtD/6vDDcxl6i5emuHl4qavL2beY1sCtiqa9
         Z7lXx0mbFelsDTyRVMMbZ8+krH2GuuymbZSVddvT1PsQqd4HsbCf41HtVOOLO69E1YUE
         iELBkg6E3+/a/d+Kf/dcN0PIWKJsz+SCkIIEf9vzc0u5ViY/WiN9+2UCF1Dc/Usch8WF
         Dl9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716901799; x=1717506599;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PPwsTBTSG17+Fbzi2z4l/C98UM+jSBGnmgHkuUq/dfg=;
        b=uDDCvR/I2tZuNPvnrEcUA8rK5cxkDipMc1PQ6xRsC6yHsi6JZsfziq+ksKM7FeOF6R
         tH7iV5rqUuQYmyYn7P9Ji4FYI45i3h+dDw0bd9boBY5thtEfqRyamU89HuPH+TiJnUBP
         6AZNUAL6QpRTdrCNltc0NduoVvtMdq0f8yPLSIx87TPRN/8eOzKb0/zKPOXSbEbkX7GP
         NF6lzslUpCTvlVgYjE2NbXFPV2xPa/XG45lrwlOFBMIRoxI4sPt4EJ4BNFK0j7uMAUyK
         D4FN51F8ZSR4er0xw9TCcbCiee+yelCLi7sOBKViym2KyEElf9P7DLtsoy5wEJa/faBz
         t/cA==
X-Forwarded-Encrypted: i=1; AJvYcCW3bQ7BNMj6XdXVc7D1L8UIuaeeqfZ946M5lDvd5XXSjvc/CZKss3YwIHXdWWiogdEaHhzC+2yfGbgFHBJgTJnwaf5sdd4vtvBu1w==
X-Gm-Message-State: AOJu0YyEnlB5S8Z/QMhI/pZqjf2WFmbnzqzkSwI1QjpdfpRUj92SSBt6
	2eq98GGIXgIJ7SsDXkgyFEQ+uv4X9xq9DCP5tGk9CKPKyJEm7sfJ1mlCArfZ7Ew=
X-Google-Smtp-Source: AGHT+IG5b3vXE8/MoabYI/9hNRRALdcl2EYh3i90PULGycLtPuvRCTBGfdkvBEQL5r2PPaFh0SwboQ==
X-Received: by 2002:a05:6512:acc:b0:529:593f:3f39 with SMTP id 2adb3069b0e04-52964caab87mr9168415e87.35.1716901799454;
        Tue, 28 May 2024 06:09:59 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52970e1e75dsm944316e87.230.2024.05.28.06.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 06:09:58 -0700 (PDT)
Date: Tue, 28 May 2024 16:09:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: x1e80100-crd: Add pmic-glink node
 with all 3 connectors
Message-ID: <wnja3vrlc7nnusdsi7zrb4yeej4oxslah4yac6xopojfe7hh2m@laexn6b5sxwr>
References: <20240527-x1e80100-dts-pmic-glink-v1-0-7ea5c8eb4d2b@linaro.org>
 <20240527-x1e80100-dts-pmic-glink-v1-2-7ea5c8eb4d2b@linaro.org>
 <68e51df8-5553-4df7-91f8-65bef924a407@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68e51df8-5553-4df7-91f8-65bef924a407@linaro.org>

On Tue, May 28, 2024 at 02:28:08PM +0200, Konrad Dybcio wrote:
> 
> 
> On 5/27/24 10:07, Abel Vesa wrote:
> > Add the pmic-glink node and describe all 3 USB Type-C connectors. Do this
> > for USB only, for now. The DP port will come at a later stage since it
> > uses a retimer.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >   arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 143 ++++++++++++++++++++++++++++++
> >   1 file changed, 143 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> > index c5c2895b37c7..2fcc994cbb89 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> > @@ -49,6 +49,101 @@ chosen {
> >   		stdout-path = "serial0:115200n8";
> >   	};
> > +	pmic-glink {
> > +		compatible = "qcom,x1e80100-pmic-glink",
> > +			     "qcom,sm8550-pmic-glink",
> > +			     "qcom,pmic-glink";
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +		orientation-gpios = <&tlmm 121 GPIO_ACTIVE_HIGH>,
> > +				    <&tlmm 123 GPIO_ACTIVE_HIGH>,
> > +				    <&tlmm 125 GPIO_ACTIVE_HIGH>;
> > +
> > +		connector@0 {
> 
> Could you describe them somehow? e.g.

Which reminds me that we should add OF bindings for physical_location
driver.

> 
> 
> /* Left rear port */
> connector @0 {
> 
> 
> There is probably some better terminology to describe the one closer and
> farther away from the user, do as you will..
> 
> For the QCP, they're numbered on the chassis
> 
> Konrad

-- 
With best wishes
Dmitry

