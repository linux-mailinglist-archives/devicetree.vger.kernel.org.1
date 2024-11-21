Return-Path: <devicetree+bounces-123571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 616479D52C2
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 19:48:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6A0AB21C58
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 18:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 553891BC9ED;
	Thu, 21 Nov 2024 18:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mWrJndSj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7507C188907
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 18:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732214926; cv=none; b=aUM2CZjrnjYfiTapSaL8rouQipGEFgdPufCszppErybX9qvJ1i10E67wRoS63dWIib5pHQbW3VZT55Uukfw+Pb9YX1DrEZidX+zFubX+Q62rTeO3M8bxTXKQYYy5Mbv4mKNd43UFeV8V/nArN13DEwiZEnYAD0BLeM3sum6rZsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732214926; c=relaxed/simple;
	bh=twaM33SaQzki/mmDs2cZN8TuvvcI8JhAgJC6bESQIXw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ouI4/G3yIPCk2la3cg21zwb1AqX5hRv0fmfzTglSEnSwLJ3bpuSRHua0E9vORTuqe/Vn2WbC351j+gDMQNh1LkSKe8+fDpYox33wLzbAKKKRy2+Zi5So4nLPer+rWLHXpbUEaeRyjBCSPnB5yf2kDUZiODjCS/qjCyD1MUDDQLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mWrJndSj; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539eb97f26aso1409837e87.2
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 10:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732214922; x=1732819722; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N/jkkR8nMbERvoxQEZT3BdxCqkHgcqUYdGB2wwBhahU=;
        b=mWrJndSj6chWJ7J+akrcHlGg3IctTUZh7fNv3B8eYSlMN3amTvYGyGJC6ZPzX6qp5W
         L6Q8pTC5SDj2j5ckw3QiqpnZP6IA3B9gJv+1rL+PR5mf3ZN3IcIC7DUSfOQRiVBH/ucC
         0t2/L8R13nk2nA9Aq4mJ4Up2VBuhZL7WJD3sUAd3FZwSQpxBqU3jOtuixHKI6kXMzObj
         dDJ/5Bwy3/9e/NGZQuQGE6iw0iwuz+H0xln+A7EcsnhuDq9mNb3h9P3TsjSBzN1zsrRX
         CotTWskpY2lk+Vo/t7YyxVFwtapPsLQFAd3DWOwjgnHGHdbv4ZLQyf1xfWnrTw3Kr8CL
         q/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732214922; x=1732819722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N/jkkR8nMbERvoxQEZT3BdxCqkHgcqUYdGB2wwBhahU=;
        b=sNoV48mKARtTMZztmLy3mOD0Y2AAEF9ocOYke/rk4DR46VM9BphH5e0r/R4VchRVl3
         Pm7EezWZOPgjD2ZLpzNuMjo5Kx5qGF0W1dYiJt0Jq47ShmA6sctKhPPbUlV+EC35AMur
         BoTu/U5obxG3awiBLu6hBr00FDKohrRVz7TQf3HROtQaZpBd18v33YCssKafnGoiS+vW
         GUDzcnl4e7sF+kpJ/hrKRt2uPBb1mP/42byXXZplpj/2OAT3GIOnDy6wzOh8O6IwyHj1
         GLs+4hOhgMfydOi6zUOjAaL/VNof8yYX0SZEtt871HL+7kgWwQjNmqx8iHAlXj04e4tb
         UWnA==
X-Forwarded-Encrypted: i=1; AJvYcCUL2MlO/vlkaKqFD3+OK26ZkbLInYU9bsbnUb/wNXjS7ox9T8cVZlBo45KEm4bMUNBPWd0Gl/xjVLxo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3ubYY9JnYOe+4xyUai11irKw0kL4n+xSllcvHTE35Rn4wGRpK
	EANJPqorc/FO2AFEy1s746W2WdIRU7oOxWHBCv+LOHxR7xTj0SWuJi/H7FVG1RM=
X-Gm-Gg: ASbGncsQoupNxj2KRft+l6EP63XKBYVrtn76THJTmotT4YcQj2/wmsV6S1dT3XG62bz
	tJM7gC4Q6IemHz0CjyZu5ES6FLX7MSxEvN3WUZcORff2a5gW/bK7tOmZO02GnQxEqBw83Roh0I4
	3NO7Ek2W7Rbw14bUAWUs6rDu+IXDLarCwubYw65FzfbVSNF04P2QyppXk3s4qUWgrYHSRdRHvRS
	gHPykXMtMgvJY2ntYaJpTicVfljEcz0mgbiLExi7ZXz+jHAuTqpu4urjecOzSYG7XCg8auP2W+j
	JM0q2drXOHn0ICQs9QkRuaqNtbuBTg==
X-Google-Smtp-Source: AGHT+IF1mBAeJ4BI45Mi1UjCjlUsGJoAnHv/OqqK+iLPphGw3fRqlEgh+3glph/5g5che2HoDtNuuQ==
X-Received: by 2002:a05:6512:3d22:b0:53d:ab10:c273 with SMTP id 2adb3069b0e04-53dc136aa3bmr4136200e87.40.1732214922608;
        Thu, 21 Nov 2024 10:48:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2489d33sm44989e87.194.2024.11.21.10.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 10:48:42 -0800 (PST)
Date: Thu, 21 Nov 2024 20:48:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Xin Liu <quic_liuxin@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com, quic_jiegan@quicinc.com, 
	quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: qcs8300-ride: Add watchdog node
Message-ID: <iwofebhajxvjliqwn32gnubrvkjyycidkfrlu4w24tw62v4kor@ksxzcmmymhgg>
References: <20241119102315.3167607-1-quic_liuxin@quicinc.com>
 <20241119102315.3167607-4-quic_liuxin@quicinc.com>
 <5d670f55-1ebe-4034-a6a5-e68417c6e486@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5d670f55-1ebe-4034-a6a5-e68417c6e486@kernel.org>

On Wed, Nov 20, 2024 at 05:59:21PM +0100, Krzysztof Kozlowski wrote:
> On 19/11/2024 11:23, Xin Liu wrote:
> > Add watchdog clock on the Qualcomm QCS8300 Ride platform.
> > 
> > Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > index 7eed19a694c3..3024338bcfbc 100644
> > --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > @@ -265,3 +265,7 @@ &ufs_mem_phy {
> >  	vdda-pll-supply = <&vreg_l5a>;
> >  	status = "okay";
> >  };
> > +
> > +&watchdog {
> > +    clocks = <&sleep_clk>;
> > +};
> > \ No newline at end of file
> 
> Look, your patches have errors...

But it's not an error, it is a part of the patch format, telling that
there was no \n on the last line. We might prefer having files with tail
\n, but I'd not call it an error.

Nevertheless, I agree, it should be fixed.

-- 
With best wishes
Dmitry

