Return-Path: <devicetree+bounces-60994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D77DD8AB2C2
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 18:03:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76A4D1F2135F
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 16:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5C15130AED;
	Fri, 19 Apr 2024 16:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zEgQvc+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29581304B6
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 16:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713542615; cv=none; b=unmAIF8NWvT1cDU1ZDzp2Amtn6zDdC5NQHR6hdakx1PjHVMdBZW5pyxeRSR0+UQsSjF2YfeQS9kiVVBKivcX7lnPl/7zRKhFJ/1Q3wHVidDmiUiNgrE5E73mFda+QCo3c7x/EplWbX3hvFW10LC5ly8tSL2x1JO5ZFn7LovI3t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713542615; c=relaxed/simple;
	bh=/eXm0CTaLlshMmOpuJ+Hb0diIo+ynEWJIFTKEePjGU0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q2PvDdQ4xFtYL+73/s75dH8/jvWG69NTHnrSMZ5163Ghe8BzljgKj9Xi+oeEQ92ZAbNuzDERtvlK5kOTdCEFtIEEk0Cgd5ifQu7+GXSN0Femt+R7kqCvU5OlDmP0uAzjnFlvcN7Atl7Hpz57C1JVkKJKeCgUs4KCLvTAx/v07pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zEgQvc+N; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-418c2bf2f15so18606645e9.3
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 09:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713542612; x=1714147412; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9K87eyQsJcPV+MjC9TGZ0b2ErIOF7s0I6KGHZUdEzoY=;
        b=zEgQvc+N88bX+glGqWa/yGXwTIooRIidFGDWBPF/SrkYef0Qa+2jEggM/ajYj+ukj3
         vLpbN4dp5Sinja6c9YNOOQiEhuW5L7NeLa1qQp3ENZVH9jQ7hkx7uOr66F5eFkeLByXi
         CTLcEM7PwTvt1XLm7iq6H7KNNR3n5uio7mdet26R8bM7Blt0RFXMnaVUreeV0+Q9CPMb
         lqshwqHiPAHMRGFQHQEgVRF39rQ/HoZLHfl/NFCI4hvVYRWgnxvMkORHfmYejWN9NbEO
         nfGA+VH6cSsD+gJcIvJhaDNa+5cOZYH1lKAY3tP1Wjm0ioi4lcT89F4UIzWfCuki1oc9
         BrAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713542612; x=1714147412;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9K87eyQsJcPV+MjC9TGZ0b2ErIOF7s0I6KGHZUdEzoY=;
        b=TMDQzCwrzPNpfGwSs0Ur3BN9zc8j2VuTcQm2QnGTcKqbT1g+8Pv8VvP19h8oCqY+Ak
         /tMYh+ac7J8YxTwYweX+p1MFe7Z71Y2naiqjRv1CNQhlQEKzJuQTUFVAwom98g8u6spa
         4tS1LER9CUL/V0RA845hTNbsmREo5VI2J09Z0HuLpnooG9hnqB0X9Bk1zeoGnLD3rJUd
         1i9Umm2n+tY2fxUwJ6GDfpbGBdmGVMxShHh4WJs93RxkSNxUXn7QbIH9tHPmSyG2QxsD
         88CNosoBxCOlYvUDgbT+d9BoC4TCYTUAQHN/EyL1U++/M+mEpWwVEQl3f/qHxjKpLof3
         UmNA==
X-Forwarded-Encrypted: i=1; AJvYcCWwA0iI4KpyMt6gjEoz6Zu69NaDk8PqBs1dVz5+tnoZlIltaAatakHS9fb2OUIKQFRFsGW7ThmCiVxnYqRoI2NDh5z96tiCKBVs0A==
X-Gm-Message-State: AOJu0YxcY6V/kUB8hLbOuel7n+lBNIQCHiSv9nbiwDlsfJqtW0PpuTDe
	XZL+pHT4mnsL6gEDjaTn75znKUMXAn89gz58q4CCwSl7ogbVH7FFTW5yk29CJd8=
X-Google-Smtp-Source: AGHT+IF61j90FxwaOMyvxHlliptjSNEA5j4fWAYLAKVrzRuIp5qzebPKQLaE+h5oX2Q4HLOyia2QSA==
X-Received: by 2002:a05:600c:154f:b0:417:fbc2:caf8 with SMTP id f15-20020a05600c154f00b00417fbc2caf8mr1783059wmg.23.1713542612133;
        Fri, 19 Apr 2024 09:03:32 -0700 (PDT)
Received: from linaro.org ([62.231.100.236])
        by smtp.gmail.com with ESMTPSA id d20-20020a05600c34d400b00419c4e85b54sm1405965wmq.16.2024.04.19.09.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 09:03:31 -0700 (PDT)
Date: Fri, 19 Apr 2024 19:03:30 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: x1e80100: Drop the
 link-frequencies from mdss_dp3_in
Message-ID: <ZiKV0ube6J8pXXfU@linaro.org>
References: <20240418-x1e80100-dts-fix-mdss-dp3-v1-0-9f8420e395d4@linaro.org>
 <20240418-x1e80100-dts-fix-mdss-dp3-v1-1-9f8420e395d4@linaro.org>
 <ZiFC8d6cD35B+PaC@hu-bjorande-lv.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiFC8d6cD35B+PaC@hu-bjorande-lv.qualcomm.com>

On 24-04-18 08:57:37, Bjorn Andersson wrote:
> On Thu, Apr 18, 2024 at 01:22:18PM +0300, Abel Vesa wrote:
> > The link-frequences belong in mdss_dp3_out. Display is broken because of
> > this. Drop them from mdss_dp3_in.
> > 
> 
> Why is display broken because you have this property in the wrong node?
> Isn't it broken because you don't have it in &mdss_dp3_out and this is
> just a cleanup of an invalid property?
> 
> Perhaps that's what you're trying to say? Would be nice to have that
> clarified.

Will drop the "Display is broken because of this." part.

Thanks.

> 
> Regards,
> Bjorn
> 
> > Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > index f5a3b39ae70e..0642b5e88639 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > @@ -4096,7 +4096,6 @@ port@0 {
> >  						mdss_dp3_in: endpoint {
> >  							remote-endpoint = <&mdss_intf5_out>;
> >  
> > -							link-frequencies = /bits/ 64 <8100000000>;
> >  						};
> >  					};
> >  
> > 
> > -- 
> > 2.34.1
> > 

