Return-Path: <devicetree+bounces-155252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 412A1A56063
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 06:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 601867A58AE
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 05:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5A90197A92;
	Fri,  7 Mar 2025 05:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MaiPhB2E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004851946A1
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 05:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741326675; cv=none; b=VZeEu/8wzH6CaG7jPnEqb6be1QhAHosp7dbC6h0bQXrRTbddF7H2rqk4WeoluDfS/kmkLC0Qk2XtD9MdWS7tmcxxDRjQfE37Y1GMeB5Cmm6CXmqbQ5K/O5pM2/nmZDaRcwrhTlf8ZZX46k5TL6BII9o/t1ZOp7XG9QsF/DkBD5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741326675; c=relaxed/simple;
	bh=i0+vWPXN2cdkzD1NTQZZWBolbNXz27fwbs3BiMXdQ9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NWr/4FQBtqjA0dsYcX2t5gJPKVBaCPLLPa5m+LwFfNEIGK4CWG/24A41eJmFkFNwUkkMiGwfh677mEYfO5xHzOMAPsh70UnHQpriudJEG7P+8Rvla3InEK08jOFumQV+XnBm7+HGQPo8ealdWHiIiuw7dWpV45slykrNA5YJe4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MaiPhB2E; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30bd21f887aso11971741fa.1
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 21:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741326672; x=1741931472; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tXmSK8/WMVoYp/YH6Up96+HRQthxxadTxRUuQDlSb80=;
        b=MaiPhB2EOvjjLPWLCzyqtKFLvB98B6FCAOdU3qv48A1AxEGKYkWG1rzxw5VoHd9l6j
         IFLnoW3ffmqGHcz1cp+5gjl5TrlW2pbIpuNDhn1hHVCHFqVdoyneywDveYVciR2N3np+
         OMfZ9j+92f01e9TRBq7ZVvMtvT1uNMWa0FjBLyMs6CvvsMPQNF7CtmcY8oakN+OxwWtJ
         CJuJFc+0jnovxB8eCL+jHdrUCTVFJoT9VzwajsdOwsiPI/9nv6SFEC7D1NyuHQZd9yzW
         qWi5ug0GXGhMwevMpw7+J0B3EQ6jQHXd4stP3F2tti+BpG8QIOBBWqlhJJCO2oR+08LK
         o7XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741326672; x=1741931472;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tXmSK8/WMVoYp/YH6Up96+HRQthxxadTxRUuQDlSb80=;
        b=bVSthBHbD1ePsamahGNTZdlXHVMXaD5qe7cRe1LJUWpnSw/4ov/Tz5cwGjWI34595y
         rTylyx2dcfjbwdOi8mgqPbTHC34RmpzVudjWD9gQiN36aKZ7ZlgDB5fpuCur2uE0tVYU
         oT5bMjAId7cjKu86n5Fn642MxCn1dnS1G4qtdOgdavlOdKcGBI6wKe5pFVLN3M5xy4H0
         mzgm823rmX1w7Y05JXCVxAp7jLe/2UT3fw3vh5v8RLzFLmqJxQg8Fo1nDms958RZLGdY
         1Gixh4uXagNPJcY89bj/aHUeEfq4A3XnDz1FrUeFq/9xTFcJJYG5Mywe4E5+xPIqrojQ
         b9HA==
X-Forwarded-Encrypted: i=1; AJvYcCXCGU3n0ORZTeKGHYfklbmMxjUoKQyosRnXZaJjZRBMqrI/VKGtbyfeZBN2FbY1dPb/BLEeKuKqMwW8@vger.kernel.org
X-Gm-Message-State: AOJu0YxVmqZAWt/aDUgaEvmfDs+Hz5EHnKoggzI3MnEPCxGv5uru6FHP
	KDrNwaoWmlSOICgIv3eEGDXF4YSwmPtYa3lQpyhNiFnRumhsEDTASWRUInjhMps=
X-Gm-Gg: ASbGncto1VTux0QW2bzbZ7O0CbRPlOzkLXqJLAgZk1MZ73lxc3xCEasK59gf8TFU7YG
	AlHLPjkQmZ557VgRFJHisTj0ehCrFZjNJteDH2/U4f74GBayedJD59CrAyn1sGMaHoMUrc5nT1A
	cWt4Umk5w6xBmhyd9va67thhbLYssx0GhxL/RZoGl31w/1puzXX5CfYBmPd6LCz299dzuP2pDaj
	O93+uGnBC5ft+9DZGENxM0zYMfnQpvllbha5QjnpbHpzvSDpgeeaN8+h1c7oZA69iOmu1dLFvqb
	GQ6nzHM++CTmERIzcZ1d8h2SSGK9aAVz3dIZzhtw7zmIKFDT+2tMGl4hMHC1SouK5Y5QIW5BTS8
	CcizmPgyZrsFKYqb25XBWM1up
X-Google-Smtp-Source: AGHT+IGZcu2fypEgK7clxXmR93TzJ7unEXU/+kahsKp0+Qev+odXPrrlaC4iINRI4Yd2AzKHpypLwQ==
X-Received: by 2002:a2e:330e:0:b0:30b:eb08:53e3 with SMTP id 38308e7fff4ca-30bf45360acmr4804561fa.17.1741326672025;
        Thu, 06 Mar 2025 21:51:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30be9a073d0sm4291591fa.112.2025.03.06.21.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 21:51:10 -0800 (PST)
Date: Fri, 7 Mar 2025 07:51:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>, g@eriador.lumag.spb.ru
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Robert Foss <rfoss@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Christian Marangi <ansuelsmth@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Rohit Agarwal <quic_rohiagar@quicinc.com>, 
	Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-usb@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 09/11] arm64: dts: qcom: x1e80100-dell-xps13-9345: Drop
 clock-names from PS8830
Message-ID: <bth4rfqqu2bat24avosimvxuqmruc52taues4wljnhfcmxnx7m@zkjvf32oiogt>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
 <20250306-topic-dt_bindings_fixups-v1-9-0c84aceb0ef9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306-topic-dt_bindings_fixups-v1-9-0c84aceb0ef9@oss.qualcomm.com>

On Thu, Mar 06, 2025 at 07:11:21PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The preemptively-merged node contains a property absent from the final
> bindings. Remove it.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts | 2 --
>  1 file changed, 2 deletions(-)
> 

Fixes: bd2dbbb1f35a ("arm64: dts: qcom: x1e80100-dell-xps13-9345: Introduce retimer support")


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

