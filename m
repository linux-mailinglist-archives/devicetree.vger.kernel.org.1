Return-Path: <devicetree+bounces-86404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A789933F5F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 17:15:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B4B81C23257
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 15:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C425A180A92;
	Wed, 17 Jul 2024 15:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="utHiNNVN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E147C1E4BF
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 15:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721229325; cv=none; b=XL7hQVbL4SiOiBzSBfn2RTzul7RuZHaWIKFQFeFqQNTkWRBiB8b43wdfo27A8fsSlDKj0IqKMxnj70tp4ZlytVBBCXVwU8E9fhqbGgGRSZsg7k81SDZZo6GN/g49fgygG+jdHLFSgfF7ES+Mhp/0/QhubzmTX9MHfZHccgliGhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721229325; c=relaxed/simple;
	bh=+6h+uoCC6ecRahffc4o+OWUG2/gvSp4Q0jZz2hWIoKM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ics9Hrh2jpo09uXF34KKmgXbvCRHbl7+YfSqt+q8WHPmNPd+2bZoeDy75Dz8wFbeqeKFPrGV1pxKMJfnhtFB50ihegqan+eR5ROHx9tCPB+7vn75if/JCnFucwITYxIIYE40dfDHhSpAeSjDDdNIaufHU3LOS5tXDCoPlW6TMg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=utHiNNVN; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52e96d4986bso7257131e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 08:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721229322; x=1721834122; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KpIRTuJDSCxod/Onaz2pIZfESLPtdGiWZKWdvFkOVHc=;
        b=utHiNNVNDI+JuPkect+1woWeZ0DsEC2UOj4Rj3/UWZr9tgQtk0KihWum5nofAlJR+J
         ZT3wW3fx01lIOe9DbjiY5MMdRwaM/qbfyRsYc+3fGY3V77M5XAJE0aqYid+4EDFOAe0w
         E2XMKlnLwsn2YmvmWMRMxn41uJoUomCy5fqBKBCelIbmQttBXr7KOBTgJurBC2Nw66Za
         qZrcDJgbLiuCQOlplRct+SBbTOyE9/y4kg809OmK/6V0NCseKpUg5DRYX4P1WLXlBt2r
         ZG4bXKxZNGntVNyb3cPknxvqTBAsKXlM+j66LHdhJTxhWnsJZ23UaZdb2IeWrzQKRvxU
         X9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721229322; x=1721834122;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KpIRTuJDSCxod/Onaz2pIZfESLPtdGiWZKWdvFkOVHc=;
        b=ScQ/T01EfYaXNvUx/tw+oxdQP4FxZEDhdy+fuoKc+y/8qAVnrbMG/WnHBElxxKMKrf
         az0akBnmBToxO1o7+99D3g/sb7HgbqZngL7M04FfRNNwgu/ZKcU+QdcViaqoXwi2SB83
         qi+FJt4tOLAX0MAEAaZ0whK7llqiBXBXC6mqW7K3FKpVLsgvxq3zYJwjFC99VMKrDtXV
         HjKU8zrTmqYb3Fk1Q+Z+CIoJQVFt3PvYlA9cLkswbySc6o5CpldltJqEmGy9MP9lxvlj
         dw5B/XmRLlM8ftGjjlN6PmRFUgbnWxgEryn8tUw37pkz7mga1aZv2PXAGK1Bj2Id/1iC
         7LKg==
X-Forwarded-Encrypted: i=1; AJvYcCXbvGCzTmDBtPw4IZr0bvqckPWtAAw0mjdWkZcxpw9pVmG7UNyLo7trvNGGhjcbUE26gUqhUlJM2tQ8s5GtJBtERFvObzxo9hWmFA==
X-Gm-Message-State: AOJu0YxSgzv6Uv8jZ8YmYJ4Z4UmSfMIjn1C8LZ9sIbmyIOeJX4fp5TTU
	VhIu1dGIIXZ5/WgTl1NiKbWmxYDywSlDu7093pvNEOIUyLxynTLPI6jSQ7glC+4=
X-Google-Smtp-Source: AGHT+IGK5/cIA7lUzPTSuIt0sTisGdUdeww47gAgu/jR81KTPuWynbwJ56cEpHr+zkLay7ST0RQ2sQ==
X-Received: by 2002:a05:6512:23a2:b0:52c:9e82:a971 with SMTP id 2adb3069b0e04-52ee53c3f3fmr1541722e87.7.1721229322039;
        Wed, 17 Jul 2024 08:15:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed2532113sm1503972e87.187.2024.07.17.08.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 08:15:21 -0700 (PDT)
Date: Wed, 17 Jul 2024 18:15:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, 
	gregkh@linuxfoundation.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andersson@kernel.org, quic_wcheng@quicinc.com, quic_kriskura@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: ipq5332: Fix interrupt trigger
 type for usb
Message-ID: <b7udcnmseh4lnc5giteu7qyssxtxkcng5ivfkt3g4mupb5zcn4@f4rsh4motwih>
References: <20240717094848.3536239-1-quic_varada@quicinc.com>
 <20240717094848.3536239-2-quic_varada@quicinc.com>
 <442956f4-ca5b-4ff8-bc02-bcad4dce50e9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <442956f4-ca5b-4ff8-bc02-bcad4dce50e9@linaro.org>

On Wed, Jul 17, 2024 at 11:55:44AM GMT, Konrad Dybcio wrote:
> On 17.07.2024 11:48 AM, Varadarajan Narayanan wrote:
> > Trigger type is incorrectly specified as IRQ_TYPE_EDGE_BOTH
> > instead of IRQ_TYPE_LEVEL_HIGH. This trigger type is not
> > supported for SPIs and results in probe failure with -EINVAL.
> > 
> > Fixes: 927173bf8a0e ("arm64: dts: qcom: Add missing interrupts for qcs404/ipq5332")
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > index f58fd70be826..56304f996dbf 100644
> > --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > @@ -322,8 +322,8 @@ usb: usb@8af8800 {
> >  			reg = <0x08af8800 0x400>;
> >  
> >  			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>,
> > -				     <GIC_SPI 53 IRQ_TYPE_EDGE_BOTH>,
> > -				     <GIC_SPI 52 IRQ_TYPE_EDGE_BOTH>;
> > +				     <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> Probably worth asking, is there a MPM/PDC on this platform?

Judging by the vendor DT, there is none:

https://git.codelinaro.org/clo/qsdk/oss/kernel/linux-ipq-files/-/blob/NHSS.QSDK.12.4.5.r5/arch/arm64/boot/dts/qcom/ipq5332.dtsi?ref_type=heads


-- 
With best wishes
Dmitry

