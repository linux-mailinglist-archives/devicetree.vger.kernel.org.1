Return-Path: <devicetree+bounces-123552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8E39D515B
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 18:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 912BE2847EB
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 17:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEEF119EEC4;
	Thu, 21 Nov 2024 17:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="femW/hq3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1DB188907
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 17:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732209077; cv=none; b=RvHSeg64FjRqeXsv6H93JW/Amh538a4RHnLNmmZHDMwAin+6xbZNBAf3ZR/B7RBL00YzNRPtoaj3lEl/coqAjmZbfTy+tde65ZBPuzfabRUyYSQLTur6RMsqxBINyPaMLcIiRDefQVjdCjt/b51Y39ZmMgRmuVvktGAfCBj8WjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732209077; c=relaxed/simple;
	bh=+AL6wkfuA2btJisY5BliOminhIkzFmMy/zkSJfUjIhg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KU8fklIh5wkjtIUsgVBijUyrHiXacHwYrjhJcP1PplCnMaXtHQw+sKlH/RG4EZ/7IFZoJnOTE80YKgs+/e8kzfIV2rSHSmVUAn8sd22oNaeK/GPd1BjlwvjRpW4X4qJ/gvYkHri0u0c6Ua2jG4XkDNKVKe9+QXhwojFkyzNVhFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=femW/hq3; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53da24e9673so1185725e87.2
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 09:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732209073; x=1732813873; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BMEW165paKttKZq6OB5pufjOGDOmBneCMyuKHIOgj/g=;
        b=femW/hq3VbzTqyoU8TldxJwJB+DJpZFfdtXHY2zUEV1cBVC+y+PZy+6QdjCGsWC1tr
         lNp7XnZDG2N6qDF/IcKtE/Vll72kfJeWl64cFNtWTBWm21V4LY2lT0/XbMsdY1JOi6DE
         SNsc9csCzWxEVa2/DY1m2lRk1ge6HDlWWoeWthk2yVTyDH0aB2xKuqVTSBTCE+hQEIzz
         kg9fPjwnw8L/bPbW8UF8ccvFEJQKswFcOvg7Z5H+q2g3eZuflFQ86dsM5anfLaifVKBA
         VwtryyCQoqofwbpPNg65vQrlktHtZS7orGlN6roVirlSv0RoFtGnV7Iph2Uqdp5zvUiV
         pn3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732209073; x=1732813873;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BMEW165paKttKZq6OB5pufjOGDOmBneCMyuKHIOgj/g=;
        b=B6QrknOxaL2cDh6F1TbLPxaKD1mqGqTjqkaXS3d7+VbmhJ66qH27vGOsebMg4uBhYO
         AUWvZlAdR/RI/VNPLk5wpiF5Udy/Sp+ce7q7OsaY1X8il5pa3wzQ8B4tsERqKEHVFWWe
         z33fjb8Okg6z5int8HHu3HT96jMLUz4oicmtpyVMXOrWN5VbxKkNN/4tpKu+4WAOjpQN
         x2lJJM092wW940f5B7QwXI48gqbFo4gjj15ao2tg1xugWOLJT3cDKB0LtSbpmN+lyGLq
         rgVl3/SiLGmRl6FizQd6rqUwPwwAorrKmbeetxU9pnIIbaCcUduDXwoTokH2SNNMsHJj
         Kc6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXnFAwS/W4/RNriQgOw0TrtFZ0Jlj+NWulAWqwIsNSaHjoVsh4M2rx+ZonxeYEQBt5JcDTRc7Q8QR+Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxDxCvNproY1KK8H0rCEZMkicPCaSP7d7zta4In0/QfFVZ/PaSw
	Pi5Ae/mfSVoB4TaGcNLaRaYACQtjpcr+e/WJ2Jj0RPqlNFKj3WH5XKD2J7eszwE=
X-Gm-Gg: ASbGncu3hGoZ0w0LQOwpPQ1Heb5m8B1IfbDIOJC8CmYaiJ4LflOnSjTnNpYNdMPJjqB
	7aU59NimfcM7a+N6DcT3aGwL5iVbYHCydBdJLoXPDr2k0G3miw0ytPXTeUAx4VirNZO7QpHBT2w
	sMpvawXufI2V73HiXoUHZHRq9U5qg+FX66w2Exmul4W/I9LrbPkOGP9P1yzmgSOL/H1GHkiZolB
	S0fW556tbQ1W1dZakoaYjBYVwf6bmYyeqsQsleISHGn6SBQRTjwzkUo9udINaDI72EbCSVGBls/
	gjcsnzQ2jkTs4BrYlFHh7jttxlAKPw==
X-Google-Smtp-Source: AGHT+IH75E9kHCeJ9hwtn+b2lfsAECcUMBrPaNYfXzIudtYhmAv7LO26flEfRN2vJp6JnpGQMZqjQw==
X-Received: by 2002:a05:6512:1051:b0:53d:d236:6f7f with SMTP id 2adb3069b0e04-53dd23670c4mr268737e87.12.1732209073257;
        Thu, 21 Nov 2024 09:11:13 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2481f18sm17470e87.158.2024.11.21.09.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 09:11:11 -0800 (PST)
Date: Thu, 21 Nov 2024 19:11:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com, quic_abhinavk@quicinc.com
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: sa8775p-ride: Enable Display
 Port
Message-ID: <uf7nk7n2ji34my5y42zz7n32aqn33vnqeg6zcxlimwcmpa75zy@stbrgjkt3jqi>
References: <20241121091401.20584-1-quic_mukhopad@quicinc.com>
 <20241121091401.20584-3-quic_mukhopad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241121091401.20584-3-quic_mukhopad@quicinc.com>

On Thu, Nov 21, 2024 at 02:44:01PM +0530, Soutrik Mukhopadhyay wrote:
> The Qualcomm SA8775P platform comes with 2 DisplayPort controllers
> for each mdss. edp0 and edp1 correspond to the DP controllers of
> mdss0, whereas edp2 and edp3 correspond to the DP controllers of
> mdss1. This change enables only the DP controllers, DPTX0 and DPTX1
> alongside their corresponding PHYs of mdss0, which have been
> validated.
> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 80 ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

