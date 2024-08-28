Return-Path: <devicetree+bounces-97691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F24609630FA
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 21:31:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32C7AB2148A
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 19:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7101AB508;
	Wed, 28 Aug 2024 19:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kN2bwTjN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB20C175D2F
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 19:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724873481; cv=none; b=rU7HrG6ebYn7iusgloSxIXC43FUzzl0OtOsjGhdw4bAhQiLb9QTZXyfHCE4g6HDYpbUPIck3EKa+4meoiYxTT+2ZnzHv7zj0e363FVEWhDvyS27GqC5qhG/1coKHXMCNVGCLey4S7sfqDznVOsyjH2AvKf9scYPlvWo/27KsSK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724873481; c=relaxed/simple;
	bh=VuB8aOD1DFpYanM0ekrE9ZDfb9mPITbIOAVIdF3y8q0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f2/V0CDUUVzQ0DO9MvWYnSdyEr7I7xej4fzgUUxVbkD6+C2uRAhHAOZqXNDKf1TEvxNOv+Ie0JT0U4FeKUJU/56C5ZF83LjHWoluItItHqJnfIum62fWSb5nvk4BEAHEMbL9cmYI4K5mHWf99suAkvpY3ZqtzApE6L/eQPF3fxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kN2bwTjN; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53349d3071eso8814431e87.2
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 12:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724873478; x=1725478278; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AoA1rvh9tEvmLE6yW93wrf40qTudqkuqIKNU0qjFVRI=;
        b=kN2bwTjNGYgwqVThl7k0LilhcbN1N7ZtcwfkSP1SCA1gRhUdZyG0tTowtswBLXnqzf
         FERQcnwMHv3882Bfh8YlCqe3MQbhcCoXQ2MnYy62pOKnAWDYNeT1NBSMA07g2nFNq7bV
         6YPmaRTMQVjW9TV8cbytkFxomIS48BHZKkO+iU6WSS/ENcR7URWUejNLDVhdLcSn847q
         7gUs+Q6vPjohyMkCXvybIGxcxxd9VsWdSEriRdIcBp3e5nysd4MahgTaoEZwm1+areo+
         qOs5qKrQ1E0eOeVK4FyriUaO5IZLks+xpqS39wuDPxMVjEgYiU0hJRHru4ao8Fwbp5k/
         Sn2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724873478; x=1725478278;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AoA1rvh9tEvmLE6yW93wrf40qTudqkuqIKNU0qjFVRI=;
        b=VFRu6NxFkW6vtQUUn26IZBaftKVBigTsvKMcvKa0HiF8FvVXboY7m1vvEb1lCYPkAL
         NzLc9R/YCxe+ey/wnmi1XsAvKSKwrO3wFtdIGyWLm+cNvUKcmv7TlKPJbT2gvndB0q0S
         EExjDS82x1kMbPQ72BGOtWbMEaUGBGXQVlOjSyJ/aMQPdz5KhV+PABoVhJMiIGEsegIm
         oIriwa0bAiWoU0mxqvN8SVXrym2RwMgbLNiRQaWkgZB4hv3ltY/GEg7GajDK2iAcjtJm
         jAmU83huwNyC+ARgancH+CCRjqT9r+zTMXdXOIEbajeccbedr2UuCPmkAwvfjZPxX/GA
         O3TA==
X-Forwarded-Encrypted: i=1; AJvYcCV3SDmwzwTB6uSxRp3MCm2rNKnmws5yFnuohtG6K5iGo/29/paPLqHF3rAszDiwlaBFF6je6VFprlPB@vger.kernel.org
X-Gm-Message-State: AOJu0YzAWw3JHhHmxS734kF/PgSNxXOCVZzhg2HXpW2MNymszfa7gOy9
	QmxTAaq+vA8+PMYwzD3a/DosZ82wXe/dguPz13aAXvGGrzptOBxq6ugImuXo8N4=
X-Google-Smtp-Source: AGHT+IGIA5Nxp4aLQLPCqJOBJCzuUgDnPtLzTB/9BIteMLCqncZoQFdLyaWZQ9R4m004CPzbIRDsdA==
X-Received: by 2002:a05:6512:3b2b:b0:52c:e084:bb1e with SMTP id 2adb3069b0e04-5353e5696d8mr199475e87.13.1724873477405;
        Wed, 28 Aug 2024 12:31:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5334ea591bbsm2251241e87.176.2024.08.28.12.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 12:31:17 -0700 (PDT)
Date: Wed, 28 Aug 2024 22:31:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Trilok Soni <quic_tsoni@quicinc.com>
Cc: Caleb Connolly <caleb.connolly@linaro.org>, 
	Elson Roy Serrao <quic_eserrao@quicinc.com>, andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/8] Enable EUD on Qualcomm sm8450 SoC
Message-ID: <bvhukpvqtn2rmgscqgfzwxi6lxmm547iesxwfvjeuvs6k72adm@g2vumqixalu5>
References: <20240730222439.3469-1-quic_eserrao@quicinc.com>
 <023d4ea8-635d-435f-bae2-87284f70123b@linaro.org>
 <2a17eaca-54af-d1fa-304d-c7e0afd85b33@quicinc.com>
 <32f23133-c494-46c1-a1f7-cabddb6331a8@linaro.org>
 <622c0fd6-e4e2-6597-d0a2-ff449d7d2f59@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <622c0fd6-e4e2-6597-d0a2-ff449d7d2f59@quicinc.com>

On Tue, Aug 06, 2024 at 11:58:02AM GMT, Trilok Soni wrote:
> On 8/1/2024 3:52 AM, Caleb Connolly wrote:
> > Hi Trilok,
> > 
> > On 31/07/2024 21:58, Trilok Soni wrote:
> >> On 7/31/2024 4:13 AM, Caleb Connolly wrote:
> >>>>      2.) Proper routing of USB role switch notifications: EUD hub is physically
> >>>>       present in between the USB connector and the USB controller. So the
> >>>>       usb role switch notifications originating from the connector should
> >>>>       route through EUD. EUD also relies on role switch notifications to
> >>>>       communicate with the USB, regarding EUD attach/detach events.
> >>>>
> >>>> This series aims at implementing the above aspects to enable EUD on
> >>>> Qualcomm sm8450 SoC.
> >>>
> >>> Are there any plans to make this feature available for folks outside of Qualcomm / an NDA?
> >>>
> >>> There is an openOCD fork on CodeLinaro but it still requires some proprietary library which is only available to folks with a quicinc email as I understand it.
> >>>
> >>
> >> Which codelinaro link are you referring here?
> > 
> > That would be https://git.codelinaro.org/clo/la/openocd-org/openocd/-/blob/qcom_changes/README_QCOM?ref_type=heads
> > 
> > Which says:
> > 
> > Qualcomm specific tools:
> > - Login to qpm.qualcomm.com
> > - QUTS: 1.64.1.39 (version & above)
> > - Qualcomm Host USB Product Suite - QUD QC only : 1.00.63 (supported version)
> > - EUD QC : 2.1.1 (supported version)
> > 
> > I believe the specific versions of QUD and EUD are only available to Qualcomm engineers and not even to OEMs, though I might be mistaken.
> 
> Thanks. So are we okay w/ one of the following option? (trying to understand the need here properly before I relay it internally). 
> 
> Options:
> 
> (1) Provide EUD library and tools - proprietary w/o any login requirement. 
> (2) Provide open-source EUD library and tools w/o any login requirement. 
> 
> Is Option (1) fine to begin with or option 2 is must? 

The usual problem of (1) is future compatibility guarantees. What
system libraries will it depend upon? When the open-source world and
openocd update to the next libusb ABI, will it break the EUD library?

Next, which interfaces are going to be used and/or provided by the lib
and tools? In other words, will it be really useful?

Last, if is prorietary, then under which licence? Will it allow reverse
engineering or not? Will it allow redistributing? Also note that OpenOCD
is licenced under GPL-2.0-or-later, so while one can link it with a
proprietary software, they can not further distribute the resulting
binaries. Also there might be different questions on whether the lib
itself is a derivative work (and as such it must be covered by the GPL).

-- 
With best wishes
Dmitry

