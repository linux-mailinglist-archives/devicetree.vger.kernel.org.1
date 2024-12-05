Return-Path: <devicetree+bounces-127613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5B79E5CCF
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:17:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EDD418847D7
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4602224AE9;
	Thu,  5 Dec 2024 17:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gXfu4U+i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B5138C
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733418925; cv=none; b=IA1/f0d67yUd4fvaSz129GhMKTzgPQnRMVEwLRfjAt8vzWW931qgZTrJq0kxw6v4b2mtdHAljUElbFEyprT+9+K5XaaZeTWr6agwe2FH4iLPHZpCrnUaaeUYREOx7WIdl0lrVOe+7oUd4MOXzgvzmBW4p27VGqZf54ipNNIlc9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733418925; c=relaxed/simple;
	bh=uJrtJT7gxlW++Ty/O1yTg6+kz0Nk5NMas9el983z21o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BLK/O2w2JS+EInAbImXocI619eOj/LFd0eW38XtDZfCRHyXAp+ns+UwXWLfnSvWMWotd3NZtk6gdGJFauQyau0Sy+N0JqcZuR0o7jprVj75JtCSOjl22iVLvRfbQsiXKxOkDv8aiLqEuIVjM8QgZ/lQvpmcdcRcgLQwXtX4hB2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gXfu4U+i; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53de771c5ebso1195988e87.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733418922; x=1734023722; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VC7qjn2Ue13WwDYjqbV/OAtsUDuWOgrtwnr0NjndRq8=;
        b=gXfu4U+iqsWHO5Zpnv6R1OphO+fciwmTcW4XfSqA7joXBypPLi4J4TZU/EkX5zAf3o
         PRajMAJXDAUrX2IARVZO5kPizwRmGrVhHDJWv5m7Djl7zc/zTZ8aXB93DizeZxoqBvxL
         W/89Evcx/M8e2lbgiO8FXPBk1RGv3aAn28OByYvCKDO8bUJT+Ju0vDiJBnAdlyVJ87Vl
         k/ce4tYDYRE8PuMDim6LMU+cFsGRM+Z1ohlfgIdSpGtEWyyNq+MSshIjcshfTUQPTm/C
         jvdJ2tqxcXVWko0oU5IvCQSbJecavaSf0c35z1mEOcMsOt79xvxr6Y8AkQj+8kipBxbO
         Viog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733418922; x=1734023722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VC7qjn2Ue13WwDYjqbV/OAtsUDuWOgrtwnr0NjndRq8=;
        b=si7bDPn/ZU/c1r4yNm7D3/2THlze5g+/Ov/pfNWoErgUstnsSBUaUNUuAmEcywUAvV
         a5mM0bSL5O0Qnmffxy15C6j9mF4OaqEzMfavG7YRNeQUs+PmwEcj978whAI6Az9a2Dth
         LW1f+4ATWggflowaHigZb546R4qmkQB4SL/OxMjH7WMhnART7WEdJrNfr07XUbDoYwkr
         yFjS4f96X3dCJYosmabnwFEHdYY1bLueyk1ttZifj7iuVAD/IFJ15we3YaWLX94gYF32
         hOCAY5aNI3vqJXxkfm4cwXGDsFL+VIhmlLTUzGIVLI/hqct2PDXRwXSm787r/Of/kPEQ
         Fl8g==
X-Forwarded-Encrypted: i=1; AJvYcCWh7qIQP2eOmGKbpZzqxZIPl0fSHHSZOgpFbOrshJFll+g0v2RyjI2MnGYlnh7FTAHVQbtyIdjVTeHu@vger.kernel.org
X-Gm-Message-State: AOJu0YwFGpw2445EXzDdQm+bKOgaxtCOcMYRmdSFurGpvO9oDmdX+wua
	dMpOl77GTjIDNSBKjjZXPGYFy3aIcS65b5U5/0Bk9tOGtQ8FrUBLNMCxsQf3aMg=
X-Gm-Gg: ASbGncvn9arqkY7Z/fzhERa8hCXU2MsLD5Ad0+OWtpDz1xl9tibxCBFU6vpkpWEMIsn
	umXtRMLyj8I+FpEHndrroxD0GIaFL+/fo7bADSKSEYs436W/NEyoc28z0ddHTJ/jpoiI7rZEioo
	z9a/5eeDjU0gJTN+YmXPTTVquBeSnoFpyXiL4KuosdZkH7vgJUO2l6b/g84J9/8tH8BPgG7pdCm
	bTsvaCQsUnh3hPfz4XFyp89a5yuH14nSqHSPc+qfwMKHU7CyFKxeg0EMrTR8J1ZtqdD7ehXGNtl
	rUPOfvxk+kLcajw5G28yp/NOMZDYjw==
X-Google-Smtp-Source: AGHT+IGH88KxLDDpR3F7Zua2FFnZVp+X450MYJpG7X6Zbx4IrQuk9wIFPeZ+LGfXcyrUOUfPRq9xtw==
X-Received: by 2002:a05:6512:224d:b0:53d:a99e:b768 with SMTP id 2adb3069b0e04-53e129fff72mr4872910e87.25.1733418922320;
        Thu, 05 Dec 2024 09:15:22 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229ba710sm290454e87.140.2024.12.05.09.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 09:15:21 -0800 (PST)
Date: Thu, 5 Dec 2024 19:15:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Jishnu Prakash <quic_jprakash@quicinc.com>
Subject: Re: [PATCH v3 3/7] arm64: dts: qcom: Add PMIH0108 PMIC
Message-ID: <4i4y5sajd7dmqjm7snjxmj2v64hadj52reo6utztvk4lsulwax@p5yq7swn3z2q>
References: <20241204-sm8750_master_dt-v3-0-4d5a8269950b@quicinc.com>
 <20241204-sm8750_master_dt-v3-3-4d5a8269950b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204-sm8750_master_dt-v3-3-4d5a8269950b@quicinc.com>

On Wed, Dec 04, 2024 at 03:18:03PM -0800, Melody Olvera wrote:
> Add descriptions of PMIH0108 PMIC used on SM8750 platforms.
> 
> Signed-off-by: Jishnu Prakash <quic_jprakash@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/pmih0108.dtsi | 68 ++++++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

