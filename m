Return-Path: <devicetree+bounces-125314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6543B9DB885
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:25:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE8D91636C5
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB2851A9B2B;
	Thu, 28 Nov 2024 13:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x8qCv6f2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01A61A9B21
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 13:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732800299; cv=none; b=BpfsBM94lD19EfoT/fFBfZDr6UpyojIF9KBQWx7afX69aGHHZGUpT5kDjl6Gxosa6aaRRVjPG6xNkwyiOGhvQFLBTpxgG+Lg86XBxrwrtVk2Dr/3dpAwrXBp6Uoxjt3S2Teww5jMzIFW5BapKtndEmcX+m4OXialzBzbxUP1dxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732800299; c=relaxed/simple;
	bh=TJHCUr65Fx9nI0lYWVGuUksq2Eus8GiVaUverXhwu7A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=buxM57s2tzJBKi6J3Ykwxfyo99dSdFVGDclCB0wIlqzvxfsp+WcREC+ZrgF7oaO4xF9dU5pUoJvIfjf0LzQi07o7/dZpjDbXd4VQqPfn6/NCEnQuTrC8qY/ilf8DuulRz4gimPDMttTENtDP8ndJMgfB636JsDWHt75ssxB9bU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x8qCv6f2; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53df63230d0so801170e87.3
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 05:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732800296; x=1733405096; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xu+TtrzBU++n85lMLAMaz83aPvmp/GtLgt6yR9tcsxk=;
        b=x8qCv6f2g15tGWULR74XizIesy3u9PNUaoXsJTDaYOOkU6bz4qIZPlX1KJOpiqH2wq
         aPe4DId55Z3tvCHoIjDmoiOYZKTPgAn1L29EJHFmmfqA0t3JWRdtDnW/CzKoYLZlzU9r
         vKYRnJXEZb/bIffKGg06ZsRVaXNepgj1N38LAhkJYcfZdFZ2CnkpWBXLdZqp9l+13NHE
         A2anRj9u8uMhujJHTKYEB3CvfOWTKAJF+xfEopNyCrUMHMlx9VeJ9yAANn7D9Nd/Sflo
         aYb+GM7WryQ3Aepp5QqJ285vk35m5Vre2fuLKf0wqsfWfcOnr+hCuphTTkV2MEbpsTP7
         /HbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732800296; x=1733405096;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xu+TtrzBU++n85lMLAMaz83aPvmp/GtLgt6yR9tcsxk=;
        b=C+6suWwQ27RMAq3m8yMSfCYpb9DV0kmNJ25CQ8ozccZB2RdkWminnZIqjWq5oKCCq7
         WTsB/eWNN+ToiLii+nqRqyNxspq3mCG7SRfoF9H7bfCj8TP/qtxBct+ojnBW1HWUYwzh
         gFbh13nr6yKbt4Kdk7RDNAo+H1Mc7KfMhCG6lAVtDvMz8uzsNKhWcuVbiA4Mm7Qvh7uZ
         iCx1beUy24VOu6Jp8laZahQFykzrDmQ7WUxXaq1M5KDVuTl79xGYQ8PnKGD4cbH4J8tx
         uCp9j99RfLRPT3H/zOvdKVMg8QwUaysxmdQaeO0eORApJoF38JXLQ1ci80dhliXFbtfc
         4tXA==
X-Forwarded-Encrypted: i=1; AJvYcCVeVFMvJev9+NgOTDjjUpHsnhePlQAnZUgkB7fMcgveuh9b/333oz5lOuJt4aMlasFG/sHGCvTIoHsk@vger.kernel.org
X-Gm-Message-State: AOJu0YwuE4ZYIGnuA/piviEjIdNBEyR+qDklocLIcvD4nwaYeMwSMn4N
	fK2qAa1gaNDQFWZTyS6eH2CCoBV7HWs0DzPVwjWQFIKoqZzxMLVLoGa3/MoPpGc=
X-Gm-Gg: ASbGncsMi7K22Iw1K5KoVvundJJufcYZQUHZnTt2tifIcmwgjTzfZONrrzpPEeHe62B
	r2BAwrZwJgsB8Tgi/1XC4Mr2egoMvXhHmxakWazJI8/zF9Du3Dr6Qk6wbwM2adAHRGELYSIjwmY
	Hz+38Yetp28wjrgEl5gm2lMCYHxaw8W5VO6GhGzdLvwWeWL6z/FXLEPbhV796im0gdfPO7iAdE8
	3hVkF53h7chuScteEPsXTmFlVR8PEhkuH+Noc09xCULXNUzNeBNXQx8CoDqorIoNu1HOP7C7Q+P
	jYpaRylRhLAYzF47KPt8kjDU5/ZwQA==
X-Google-Smtp-Source: AGHT+IEpZe9yoi47jMikkocK38/MKcOL4vKUAWk7lAfQh1r/azAfrCwMc0oz7RX7DyOhdOTWypto/Q==
X-Received: by 2002:a05:6512:a90:b0:53d:ef49:5b5a with SMTP id 2adb3069b0e04-53df00c6057mr4150533e87.1.1732800296195;
        Thu, 28 Nov 2024 05:24:56 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df644313bsm175297e87.69.2024.11.28.05.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 05:24:55 -0800 (PST)
Date: Thu, 28 Nov 2024 15:24:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Akhil P Oommen <quic_akhilpo@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/7] drm/msm: adreno: add defines for gpu & gmu
 frequency table sizes
Message-ID: <emsraqtyxkanfzafej45dt47hdx37okvngomqgou35a47uly6k@5w6iwq6xfjul>
References: <20241128-topic-sm8x50-gpu-bw-vote-v3-0-81d60c10fb73@linaro.org>
 <20241128-topic-sm8x50-gpu-bw-vote-v3-1-81d60c10fb73@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128-topic-sm8x50-gpu-bw-vote-v3-1-81d60c10fb73@linaro.org>

On Thu, Nov 28, 2024 at 11:25:41AM +0100, Neil Armstrong wrote:
> Even if the code uses ARRAY_SIZE() to fill those tables,
> it's still a best practice to not use magic values for
> tables in structs.
> 
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.h | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

