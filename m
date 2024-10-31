Return-Path: <devicetree+bounces-117874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D83659B82F7
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 19:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E554B21E9D
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 18:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7992F1CB316;
	Thu, 31 Oct 2024 18:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i5tSsegI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D762C1C9DFC
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 18:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730401172; cv=none; b=KjLfl6rcNl0bjlObMyYKNhC0jPPyLQu8YsdbaEks+izD3/jmo/6mSCKysDvFOYQVjq202FVbLV6FsvSpbhkLneghZ2EvvXmShcbhI5E2vDr+6ndIkngqmTsM9F+vvbt3ji3Yf9BHMDW+lT3F+MO0LVfo6rIymnFAwsASouQiRMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730401172; c=relaxed/simple;
	bh=MaQ7UJ0znbDI8GaESKtvVvk6UKE+EeaPRHIJ9cBtDlQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZoVYxVRh3s2F44VPWoxmRNc/85OWae+EaCTPJB1u1AttgdHJP9MrBu5Dx8c2qOvCFtjfJfAnwn/rkMti8Xy5hDWWzqicc66xP2uxsN5b6DRufUDv6hSHdXrh4kEdIEtxlAhZP+ZM3GDyYNq3vCrPXmCjwHM4itSe9qDLr50VVRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i5tSsegI; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-539f1292a9bso1597038e87.2
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 11:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730401167; x=1731005967; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QgMMTxWGZldXwHbAmueNqIX4cPV4+6ZGXkoMeFqofw0=;
        b=i5tSsegIVG312zsdiw59fj/f6z4tprjDjLFNRff92TP05bxHzlDd0S2B5SDY8Dglfa
         uyUnXeyFJUm6vZm6WwGSlnWDcX0xRmhggnk5ThCJwzAAamBO7stA4BY9mWx6IwRi7hRi
         m6QzR0mpW+nkfDJLGr/aFB6WJjG5y4T9ZsbcoXGYyBMGDzHI1z1Vtl0ep9LazYPiopTR
         wIwecmOM0xwqxALvW3SBqzEYUgZjhlzbEjchKavEGvqILQzW/OCyeoXb5gaeiu848xAF
         /tu0+TQ9wKj/SB8TwxPhVYOlzGOWGUp6P2iHKRX8NaA6C/F0C7uJsL6o7G1PQlZqsrEX
         TS8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730401167; x=1731005967;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QgMMTxWGZldXwHbAmueNqIX4cPV4+6ZGXkoMeFqofw0=;
        b=PcL+SFC2MPifcEnpXV2JGs3pDBJlwCKLLYkzqISYf0SZaT0DwThWgeyee9Efxw7CqW
         aGeDOevg2q+1caYJSMq6oCIwRgdpufBIpPZCuqLo1CFrU6rFbHnx+/p/HUa/XAVTFBaz
         nsJDBZ5+KV9Cak3xcB300XqFOU6W1D+jyla3qcSk+zV5YccY/VPciN44NQL4Xgt2sTQW
         n6tMs11xz1Q5yAM+ESMHOjCirc2VefU3Er2p20t2ndYK3JPMJ+Y6D4T7ZCik8JopqXir
         iITwUur4K+uTRzQWHOFiEtKP0FpbCaIzBlDQKTr7H4RhO2PvUgqBR4N9wKwqvDspzzed
         lAUg==
X-Forwarded-Encrypted: i=1; AJvYcCURgfPFPqbmr5lXgpD5u+pl+kyyhhl3h3DgTYSkIpenWxTiYjt40hGbz7XzoChGNYQs/gVmZ3MetWva@vger.kernel.org
X-Gm-Message-State: AOJu0YxevEn9uTr33ClxhFUsn3PLntybUUqO/d+3oZv7vOXnEf4V9yhl
	Ab5F/YRy/umLbnKGRX437N8Bg/kzkk2Rvnk67pDNewyEcN6R+0Dxps+apkCHE2w=
X-Google-Smtp-Source: AGHT+IGW9STTQx4r02UXSW1XZr4ikTd/Ykqy7h0AGLPXWxytIkZq4an4HuinOyjghB3c2xYpRcpeZQ==
X-Received: by 2002:a05:6512:3087:b0:539:fb49:c47d with SMTP id 2adb3069b0e04-53b348b7bfcmr9402266e87.12.1730401166932;
        Thu, 31 Oct 2024 11:59:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bcce473sm293371e87.160.2024.10.31.11.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 11:59:25 -0700 (PDT)
Date: Thu, 31 Oct 2024 20:59:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qingqing Zhou <quic_qqzhou@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, robimarko@gmail.com, will@kernel.org, 
	robin.murphy@arm.com, joro@8bytes.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: qcs615: add the SCM node
Message-ID: <vuz5mvmi4srbwdopivu543cdndybjy5cswc3zmukztldyv22ql@27les6xz7r74>
References: <20241025030732.29743-1-quic_qqzhou@quicinc.com>
 <20241025030732.29743-4-quic_qqzhou@quicinc.com>
 <flk7n534gfqyivlbl72qco4k5d3c6ravevumjfoh6464pe3qg4@r7ns6zr2i3bv>
 <645c9887-4df2-4ab2-a048-ba79a97b8d2f@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <645c9887-4df2-4ab2-a048-ba79a97b8d2f@quicinc.com>

On Wed, Oct 30, 2024 at 04:42:19PM +0800, Qingqing Zhou wrote:
> 
> 
> 在 10/25/2024 2:02 PM, Dmitry Baryshkov 写道:
> > On Fri, Oct 25, 2024 at 08:37:31AM +0530, Qingqing Zhou wrote:
> >> Add the SCM node for QCS615 platform. It is an interface to
> >> communicate to the secure firmware.
> >>
> >> Signed-off-by: Qingqing Zhou <quic_qqzhou@quicinc.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 7 +++++++
> >>  1 file changed, 7 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> >> index ac4c4c751da1..027c5125f36b 100644
> >> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> >> @@ -278,6 +278,13 @@
> >>  		reg = <0 0x80000000 0 0>;
> >>  	};
> >>  
> >> +	firmware {
> >> +		scm {
> >> +			compatible = "qcom,scm-qcs615", "qcom,scm";
> >> +			qcom,dload-mode = <&tcsr 0x13000>;
> > 
> > No CRYPTO clock?
> NO, response from Qualcomm clock team is "the current QCS615 RPMH code does not have the clock support for CE clock", so we don't configure clocks here.

Is this going to change in future?

> > 
> >> +		};
> >> +	};
> >> +
> >>  	camnoc_virt: interconnect-0 {
> >>  		compatible = "qcom,qcs615-camnoc-virt";
> >>  		#interconnect-cells = <2>;
> >> -- 
> >> 2.17.1
> >>
> > 
> 

-- 
With best wishes
Dmitry

