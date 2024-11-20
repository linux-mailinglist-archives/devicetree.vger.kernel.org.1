Return-Path: <devicetree+bounces-123149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2379D3899
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 11:44:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44721281490
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 10:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 078BD19DF4D;
	Wed, 20 Nov 2024 10:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gj3kZyzU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4383D17278D
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732099465; cv=none; b=ivxO7pXfwvew61wLgv+U7xPONN7cgXl8T8AhxRnmhK+DQZizw23pD9r4rnIrMiv/H0eFfvCu0rlOSfUZsSlpNJ3oFHJWHqetZ/AQBF1jCYGQOBJVkDOjyDYp6NPG8kDtVDJDES984PJOI7JWI7yPWdlOu/gvnSvEAqgx0vyZ9IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732099465; c=relaxed/simple;
	bh=PSIEIjCkwowMwP6F7pDyJxkqxSzIMP8yegjUBuV121M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N9P+fCd3apNyRJ0m5d3XwEMRMgharL7QnhjSOmeNJcgWAJxLvEjFtQp8Yhu3pDYtzh/AaAK6EhuEikL6Jpi53/+5Yul4CcttvPLPlul0U1bkNVcyasZrvAiRZD0sG25VHn0oUxXAKk2Mcj1q3vhg16/BzOmpzVydEF32PimnPYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gj3kZyzU; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539ee1acb86so4330189e87.0
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 02:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732099462; x=1732704262; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IFaQOAwXecsZliPvhtGOW3UP08yIdA2VUxO/uHYIpGw=;
        b=Gj3kZyzUvdISMeJznKEZzABPkwPtVvzpwABXWl2QGjhivcNkBYFiTVpDHqCegbA7KS
         9QEDQ993eLbm6GYOqYD39xjB7bkEB/9h3peK1KHwFJqm2jvWYJoFeFtBj7NzWy/F/WVd
         GsmOB6KktOuADd87oft6mbMNotL9jSFxwuRvTaEjR02guj8Fw2ByfVH+XnULtjxGysaw
         YLlxtXtX4nhxM7/s/435v/gGrGVQMENWGCiocz2WqyMixpNFCBGajK+sX707K/LSax4y
         rirMHxwGgbzPa1NiDWFFIsAih4pWwLfaytRPIF7PCb0I9Jqgv6QyWh8vfUzuq0ypvCYE
         toUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732099462; x=1732704262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IFaQOAwXecsZliPvhtGOW3UP08yIdA2VUxO/uHYIpGw=;
        b=U20AXcQHWXivSGctRG0JUhY9Nk0obsSG0YY7kKqH6nMRh8lwj3NiQSVbNwf+aRnoUR
         xpARVSVsGypSZZEYZzACHwuPSxtD9m5R4qzeTNCJdHcznOKXo6sA7+jyKq0g6QaeXkIR
         W0bVRVHhJ1v/ixZi2xIF4/A7WTVCk/lf5xxfoZwF1vwZHUQuaD1H4rm7rO7CWdTz+GVH
         /lN2H9RDfw4AC+2A4D5kwJ2bv3GeRgMYejnb31RgpmVk/l57BD/nuPuY14NiqJACg8WP
         Oy40m0EGWhDoWkMmqdJ6VRR9/RNaDsk3vTPWOvg0tBQIcepgNW/5tmAr56ilKW2QsbHv
         a3Ag==
X-Forwarded-Encrypted: i=1; AJvYcCVrZYelWAAQE9Uwn83vAth8csQwOARpAWJt/OQf9zlVOfhB/jCyWjnObcaNPQwbR5k+VrhMbjlwyDiP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy9pvFMlot+a8QEOUZmzjNShU4H2GG4AEU8WVQcalBmhFD2TNX
	G3zTvIMFfN/nq4YuG1ilJqu5z5CHfnlLnjdseOx9dTxlyDMScozX1uOhW12S6Sk=
X-Google-Smtp-Source: AGHT+IHk2JJ5HGmR+YoqQPmq7AYyvFw1Gvq+fbJdIJLuypkzijPRXqlaQ7jAEGqpbVN1Hm4GPboeXA==
X-Received: by 2002:a05:6512:1c7:b0:52e:987f:cfc6 with SMTP id 2adb3069b0e04-53dc136f9aamr844707e87.51.1732099462301;
        Wed, 20 Nov 2024 02:44:22 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dbd3fc552sm591462e87.64.2024.11.20.02.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 02:44:21 -0800 (PST)
Date: Wed, 20 Nov 2024 12:44:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Cheng Jiang <quic_chejiang@quicinc.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, quic_zijuhu@quicinc.com, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_mohamull@quicinc.com
Subject: Re: [PATCH v2 2/4] dt-bindings: bluetooth: Add qca6698 compatible
 string
Message-ID: <smwxrjvdvyxw6tknucl6fb5jpjau2q4jcyjxpunbtt5ep6xsr4@ztuyfkrwgxoo>
References: <20241120095428.1122935-1-quic_chejiang@quicinc.com>
 <20241120095428.1122935-3-quic_chejiang@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241120095428.1122935-3-quic_chejiang@quicinc.com>

On Wed, Nov 20, 2024 at 05:54:26PM +0800, Cheng Jiang wrote:
> Add QCA6698 qcom,qca6698-bt compatible strings.

Why? Is it the same chip as WCN6855 or a different chip? Is it
completely compatible?

> 
> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
> ---
>  .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml   | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> index 9019fe7bcdc6..527f947289af 100644
> --- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> @@ -18,6 +18,7 @@ properties:
>      enum:
>        - qcom,qca2066-bt
>        - qcom,qca6174-bt
> +      - qcom,qca6698-bt
>        - qcom,qca9377-bt
>        - qcom,wcn3988-bt
>        - qcom,wcn3990-bt
> @@ -175,6 +176,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,qca6698-bt
>                - qcom,wcn6855-bt
>      then:
>        required:
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

