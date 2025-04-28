Return-Path: <devicetree+bounces-171577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D07A9F0E8
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 14:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEA4D16E40B
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 12:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2D3B269CFA;
	Mon, 28 Apr 2025 12:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U/dOVDX9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D472A20C029
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 12:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745843946; cv=none; b=eS4URn57bxBE2Y8qMDPICffR/7kzigMJL15ZlZ6vL2nuckYXM6zxFIp/cbiVTayIVoh6xzNLWBNPxwZECF5YveczcIjO9pdWZAgJagtxYt7vZJp51mRgRyg1R2heBykgc4Jx/9KCOh47N5WPFk1oHA2CXywUpN8P17R1A/LnrfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745843946; c=relaxed/simple;
	bh=5RTpoGxd0yln+rD+iVZT7mTbh5dja30gF/VvmJMuPCs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y0ZtyIzaZqTgfZuK5UhU/2qpq4/iNkeWsEWgnBevy8IlykjS2bp5flqWqUCodWnZXIqgTs6vc3pJiOn8pvAmv2LBiLKVUX76EW+F5B1E6qln8oYoVN0bb1uz8APihk/diiQmS5jDkm4G6bprcZnKM29sAUx3eKFuPZz9Kb/OLCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U/dOVDX9; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-39ac8e7688aso3276017f8f.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 05:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745843943; x=1746448743; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kajF+eLdT9ofXGeTd3YYf3HoPa+dzTPyEOJzZGW/Z3k=;
        b=U/dOVDX90X61jKy2N4cTdr2CnkzS3Dy9WHu8I7fD9N38vjtdThOlxKgPVAXJUzQslK
         E13uqbf4sX96mtBHnTxX1SRf0flQ0YWr9upe+IgvnkLYM9PyqKOVGlDgYyuio/EShr0l
         jH0s7pz2iYR09N5niQDUvKtmG3f+tawBTErbuQTM4h+YTtnM/+/DWf+TXoT1FcJbnLoH
         ltitcxRSY7eK6lT9vS21llzRSo05eYE4/4C6+a9uOZkqXrMcaWv1sso9W6IxToh74FHI
         Q5Db0MhSB7pYQI9xMOspOgkSI86h9/6kZBcHBk1gy6pzUKJoOIvF76bVRupCjeYcDumL
         jQrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745843943; x=1746448743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kajF+eLdT9ofXGeTd3YYf3HoPa+dzTPyEOJzZGW/Z3k=;
        b=dKQQihhI6QRZ8MKZdLxLK9v0ihUIyxzfbzH42KZ/kI0icHFMD+vBSkd0evv9IpHKMP
         1fHkE8Ihqa1VQkBoSp4J8oBM7iisgoQ0euGrpjjD1ZD3M+LdnxLPYA8kcWdmNIRIc+u/
         ViynfiAz071r1O2L7toRoC4ruc2Hfl+Fq5uycEnSbiu1SOhawxMd2yaV3x1FvfiO0SBi
         4h6EW7NIkhNKmWk7NSM5wH8ZcB7iU57B7ZfyqjuCLQjFOBudidbHaguVtB0vVpiyjMSu
         6ZtUGHtb46+CmlByMtPvl4NPxnEhn8kcgkJfpcslE/aWIS+ce+tN4zNQzVnED0UThujV
         CsCw==
X-Forwarded-Encrypted: i=1; AJvYcCVp7Xg0Xbd/JcW0QG+QG7Fdsrjxagmuzby2g2bS/xmaoE34oHts672n12TzbSsuA/NKCtpVpqDPCHrj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb9lZ8tCQivhh11O43WLWsW5vrGyaodoKCuZYDekYTl22X9X8n
	r9ydvtvlTUIL7zFPUf4Zvd2kWxRBWj1qWg7PutvpQbA9ifQ+2B6J/wUU9aIIFlE=
X-Gm-Gg: ASbGncv6iU+dCbT9eNV7T4v11PFGTLoQoGqWGBq4Q15O7rKmDn1Ij2mG29XVCCCcm6l
	S5Cgsu3+mff4Fq5vqfZ+lqW8i7m+6yJKUk/8yKEffMo49y1G/uEVslgLzJfm0pMly4TUdb9p3+m
	iol255X4liVpg7OR1BNGZIP8xELVsbUDJVN4D4uIMDRyAzZ4KGdju38V1BVsYQkr4L3ayoKEVQl
	js7QcLQqxOMHIcJB15vRQ4rX7/Bul1fP0lS05fvQc9PNfWqhdRDDbAdZ++ef3dp91ElMhVUVnO/
	8yyzXg1nmzaa7fSLgwGMnfbKjLQCfBIE6kYCPe0kVxaAeA==
X-Google-Smtp-Source: AGHT+IEZDN+foaMYfgyt9eU6rOly8IkdyLaoYyUZbXxe0vM6gzcu4bTy/soXgGRLxAd0ZxJ3sOA5TQ==
X-Received: by 2002:a05:6000:1a88:b0:39c:1258:2dc9 with SMTP id ffacd0b85a97d-3a074fa73c6mr7995850f8f.58.1745843943130;
        Mon, 28 Apr 2025 05:39:03 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a073e5cffasm11177664f8f.96.2025.04.28.05.39.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 05:39:02 -0700 (PDT)
Date: Mon, 28 Apr 2025 15:38:59 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Dikshita Agarwal <quic_dikshita@quicinc.com>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Stefan Schmidt <stefan.schmidt@linaro.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	20250417-topic-sm8x50-iris-v10-v7-0-f020cb1d0e98@linaro.org,
	20250424-qcs8300_iris-v5-0-f118f505c300@quicinc.com,
	stable@vger.kernel.org
Subject: Re: [PATCH v2 14/23] media: iris: Fix NULL pointer dereference
Message-ID: <02824759-c468-4907-b0cd-554c28cc4de1@stanley.mountain>
References: <20250428-qcom-iris-hevc-vp9-v2-0-3a6013ecb8a5@quicinc.com>
 <20250428-qcom-iris-hevc-vp9-v2-14-3a6013ecb8a5@quicinc.com>
 <7f37ec27-0221-4bb2-91f9-182244014b5a@stanley.mountain>
 <7ef2daa2-a6fa-2285-6619-b2f25baabc55@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7ef2daa2-a6fa-2285-6619-b2f25baabc55@quicinc.com>

On Mon, Apr 28, 2025 at 05:40:01PM +0530, Dikshita Agarwal wrote:
> 
> 
> On 4/28/2025 3:10 PM, Dan Carpenter wrote:
> > On Mon, Apr 28, 2025 at 02:59:02PM +0530, Dikshita Agarwal wrote:
> >> A warning reported by smatch indicated a possible null pointer
> >> dereference where one of the arguments to API
> >> "iris_hfi_gen2_handle_system_error" could sometimes be null.
> >>
> >> To fix this, add a check to validate that the argument passed is not
> >> null before accessing its members.
> >>
> >> Cc: stable@vger.kernel.org
> >> Fixes: fb583a214337 ("media: iris: introduce host firmware interface with necessary hooks")
> >> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> >> Closes: https://lore.kernel.org/linux-media/634cc9b8-f099-4b54-8556-d879fb2b5169@stanley.mountain/
> >> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> >> ---
> >>  drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c b/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
> >> index 1ed798d31a3f..cba71b5db943 100644
> >> --- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
> >> +++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
> >> @@ -267,7 +267,8 @@ static int iris_hfi_gen2_handle_system_error(struct iris_core *core,
> >>  {
> >>  	struct iris_inst *instance;
> >>  
> >> -	dev_err(core->dev, "received system error of type %#x\n", pkt->type);
> >> +	if (pkt)
> >> +		dev_err(core->dev, "received system error of type %#x\n", pkt->type);
> > 
> > I feel like it would be better to do:
> > 
> > 	dev_err(core->dev, "received system error of type %#x\n", pkt ? pkt->type: -1);
> we don't need to print anything if pkt is NULL.

Okay, fine by me then.

regards,
dan carpenter


