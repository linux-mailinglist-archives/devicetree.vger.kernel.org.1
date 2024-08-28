Return-Path: <devicetree+bounces-97695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF76963130
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 21:48:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D336B1F24545
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 19:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 764C31ABEC0;
	Wed, 28 Aug 2024 19:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J2WDVWVx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8840125BA
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 19:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724874487; cv=none; b=Psc2Ziro8B8Oz3E2d/bFoDP5vGdGO64Xxnj5g1fa0++SI9RDqMap7knBc4pRfP58Hy3tPU/t9Pv3ziqy7uDFUfEKUsad6UQDHzCT49ZBrl3W7m1mdCJ57wWTF40ewDMz7ue/WioZ9zcUbdndBpkkuQznsQMWGfx1S9qhPrs4yOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724874487; c=relaxed/simple;
	bh=eEGI3hdxZ8+12KRUhT1B6CqzyWkP7zuPPsBP1keE5sE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KJ0J8hoHpTAm6+6PFOnqG+CR9o2Io8Qjjpomqumv8AGJkNtnCNJmDeAzH1vu8GSVp2K4W8xybRJ3tHwzSomjrqQ+MnEUAqRsmB7LbpLJyyMGWksUDoJkm6WpI9U2x3iqDx2GHKFUKvVJT009dX0gBBBqfAOxDCwRbSr/7sBub4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J2WDVWVx; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f4f2868621so70477241fa.0
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 12:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724874484; x=1725479284; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OBzjJnYvoExoTdxa+EXBkaygJuIm6Aj3yINJ1UWhUis=;
        b=J2WDVWVxuWcQzaMMsz3k8QxIiU2Hte6ndGJBvq2RbO8CKb8M9I1xrL2F+TkBpVTCnq
         ayOayHMPOtiG9Yq3g09yYg2zLmXpVsc3tu9UjxHvGbja1sVE9G1dwRCd3Lbk9oTNwVZJ
         Lii37sJtzc98di1l01a/aIMEEzT4d0MitEWoI7jEYox3Vau9bb7Qcu+AxSuwDnrj/siY
         4fHIRUBrGvsE0GrDBhZ99u1Gmc10i1fifrFsPXpt2o0OjPQ4loMi0wUdKmYkH79q8ekE
         uPzVXTeVntzw9pOkJaW443+3fYiQhpKQ99f+pGcltlg8+psAQM52XDdTb87ZzyqjqdrN
         8e3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724874484; x=1725479284;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OBzjJnYvoExoTdxa+EXBkaygJuIm6Aj3yINJ1UWhUis=;
        b=eONTTfyPJgf92fAw7sMIqqCfI5uqxj2+NpZHoh/nlVzPNdhg50xMkm5ppZ0feebePq
         GGXQOr2Y+5i7Ulp0ft0ihGoigS2+OmWtzM/WMOVRGuzaGVLUkjdgeyWaKoRilDWWFgOD
         DA661F3DljFolvo43pv1tKZHZALt6IJ5N1G31jYQ/CN5GSBNDcECtkRDwo9gywFP1d0V
         CCwDGraI7n+MZ8MSSIUqqjpVUSr2/ie+mQEuYz8A3xOuT29NNUWXsAxcmDvov9qWHEDS
         5Sy+py4TpgBY3JlTLOv/E8Jo6DsOTs2E19c5Q3w806G+UvKVzn42bjOJTHS4V9wwUWeV
         jztQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRbjq9CwXS0djZiGnLCb4yrfBIPeRUMhiF2w+TToJfIaADoy9yMX3/fhZYMjex2+U7Mci4H+yjk8WH@vger.kernel.org
X-Gm-Message-State: AOJu0YxBzoBz52i2CFDjVW7TH65d6s8KYyXz+j25gPgB/iWJwXKswNYH
	IDDR7glmwVkfZ5n7jIAH8V9l94187lGNXIPrNFP2FqE+jAcpCtiuehXunKS7q3o=
X-Google-Smtp-Source: AGHT+IGtsciDwfFdHJJ8eiekoA8VHrlLbxk8Ypd5NxkIvHj/hMIKGkalEGw+8iFeInHnJaOtTCCSOw==
X-Received: by 2002:a05:6512:ba1:b0:533:4722:ebbe with SMTP id 2adb3069b0e04-5353e579649mr216247e87.26.1724874483178;
        Wed, 28 Aug 2024 12:48:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5334ea89134sm2260469e87.270.2024.08.28.12.48.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 12:48:02 -0700 (PDT)
Date: Wed, 28 Aug 2024 22:48:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Amol Maheshwari <amahesh@qti.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Tengfei Fan <quic_tengfan@quicinc.com>, 
	Ling Xu <quic_lxu5@quicinc.com>
Subject: Re: [PATCH v4 3/6] remoteproc: qcom_q6v5_pas: Add support for
 SA8775p ADSP, CDSP and GPDSP
Message-ID: <m732ashkt5rkadh3mlm44t6coomsvbz2f53br4twt35rzlafcy@sbc7ztnsojig>
References: <20240805-topic-sa8775p-iot-remoteproc-v4-0-86affdc72c04@linaro.org>
 <20240805-topic-sa8775p-iot-remoteproc-v4-3-86affdc72c04@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240805-topic-sa8775p-iot-remoteproc-v4-3-86affdc72c04@linaro.org>

On Mon, Aug 05, 2024 at 07:08:04PM GMT, Bartosz Golaszewski wrote:
> From: Tengfei Fan <quic_tengfan@quicinc.com>
> 
> Add support for PIL loading on ADSP, CDSP0, CDSP1, GPDSP0 and GPDSP1 on
> SA8775p SoCs.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c | 92 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 92 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

