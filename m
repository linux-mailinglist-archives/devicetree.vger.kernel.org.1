Return-Path: <devicetree+bounces-147602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D756A38BD5
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:01:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9ADE3AAEB2
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C748190497;
	Mon, 17 Feb 2025 19:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zbYoOUtK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFBD518F2D4
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 19:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739818879; cv=none; b=NRGsmdq2wArJsFG9bqtEoFDGaA9HbqlfGQvJwGgeNokWG5bmTjYgzrWJEWf0756iJ+lnKHgCOrvYWBPff+T5f4kiXT6QHQ3q5Ns/eghWVo/L2MRyDgnxX/W6QRaUYa15orUG8vkWucz9J40YBZDXHR1oOI+A8L7B23Z94hMm4Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739818879; c=relaxed/simple;
	bh=GGGBr9WGpE2jvMig9xuvonpC/5Zk9WOwH7Grjs4yC7I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TSiPIXzWMO9Th8J2Omm7bjiy0Yf9euHmy9J3jHcIEMCyXVGgX/q04odZeaampofXUZyJXeCIbBx8Jg2z1EZVeewR/PZFKGBt4MU+VfpEW+wlAIsbRWtrWfohbQfMyeX2uUBD9aA1Y180njcgfA/3OLPOGXkGvR4qU4m/gcO6THg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zbYoOUtK; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30613802a59so48476591fa.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 11:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739818876; x=1740423676; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3KVpMc6HL6H0IbUiBn0TVnYFjN3Gop2XIWiyOAEOilM=;
        b=zbYoOUtKbI1POvmMZt1kGo37UPR4/Wv81KdV1DO1EMjY4rDiJEbIy2JnSnLX5n6F4+
         CL8WUULLFt5QeA149gY5d/YEOT0l7Av4f/NbyYx6kY6JvmKiknJbSFtWOe+bOKleii1I
         PjMVUvDjkHetaVsJ8WyEiZrEKfnVnMAbeZJpbbh5J65k631SIW+qOckO8uoRIVO7BMeJ
         iDBQUji0XGcsMFNbQfROISNsymFY2LqE08V91eTptV6PueyBYNmzZT4kJa5gE0Z1o8oP
         yYNs4bYZ+vRxrk+GHFRDAwAiKaXkqcJ4p7Ko/YtuGNGolGRdNqY2COc1dqWiXcaKN88Y
         Z2pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739818876; x=1740423676;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3KVpMc6HL6H0IbUiBn0TVnYFjN3Gop2XIWiyOAEOilM=;
        b=n97izuwU15wkQDXzYZQPE16kbd1sTZ7KK5U2KGjlY6BJjykglCnrO4ylvY+ew1lU2M
         5v+WES/3MaOBy7QGJ6kIGjBivuGMhBWBOPfgXQFHrLEFypEM6BjIxBb6jyY6I1UvLEq8
         aW+OsElnL47tB7woDa7n6oAUshiBbbksMnsrVVR6z1Vwc+k62S+aRMkyQ44QB6anzw3M
         F2I63N2SQsa6NcNPaaVJZKCT8Tb36BFtSmMmRYndEKT071fu5Uw3IYlQsPS0OOoZUM2K
         7Ui69mp8d87vRNYLAk44BGAyk6Uy0fwcTmtodYJQUCBLpfWg1ETRAVeVREKZWr2wPcGx
         S2Nw==
X-Forwarded-Encrypted: i=1; AJvYcCX5GA5hJpKDQ1F6IP44M5NDqO01NPX3+pJ1GGOtAqiSCRElLS0TpXp3fkMS0k167XA4MGbQ89MIYFIo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2VF1luq16wF+EGRnQifr6UMsUG1rFdc0PlLkjl5IkOZANaM02
	CUk4UtZ12G5umGk8GLRynF+V0WifqtcxeApHC1hmnCxNOfrhE+JcPS8vyKDq7Nc=
X-Gm-Gg: ASbGncuaah/JiFOIt1QLQXEUlPBHIV0GYqz9g1qVrm9kpivTOh7ajyFgz6LJZRD7suu
	sVVQqx2dk21tTnUjAlDxBpZOVYAq4V4PPlbXCTIRBuj7AHoPHAO0oTcYlIrX0+QiF83brVAH4qi
	EaD+LjaPy9YXj1N3sQNLsXWTujlTmbr/jh+E/AmYWJENuDdjzFJ2Ig95hV3dbsCTsEXLT+8ehow
	D4GhZSVh/4OUJZF7NraKC79rrCK1au/TtQ++0k+xTaf40T2AWtZtL1MgoukCmBJC5Yttec1LHba
	pGVKaCequGA70mJvlZCLppSm1/1Ov31VrruoTaXgb9RSoatyXnNCNx7p7jigQhzF6J8YUc8=
X-Google-Smtp-Source: AGHT+IHOqzXihtG/q/MOUu/ObVGRxR4vcEqAKB3UjZpWusxSGj7tDYpn5jPIEX0hDh+XE6pxaNtc0Q==
X-Received: by 2002:a2e:8895:0:b0:300:33b1:f0cc with SMTP id 38308e7fff4ca-30927afef0dmr28520491fa.34.1739818875993;
        Mon, 17 Feb 2025 11:01:15 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a27206f15sm7247121fa.61.2025.02.17.11.01.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 11:01:15 -0800 (PST)
Date: Mon, 17 Feb 2025 21:01:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v2 10/16] drm/msm/dpu: Add handling of LM_6 and LM_7 bits
 in pending flush mask
Message-ID: <fqmt5h24asj36odjx6bdgc5qjoeqwgpmrrsqq642ss6l3tsnmy@wh52uxkzudvv>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
 <20250217-b4-sm8750-display-v2-10-d201dcdda6a4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217-b4-sm8750-display-v2-10-d201dcdda6a4@linaro.org>

On Mon, Feb 17, 2025 at 05:41:31PM +0100, Krzysztof Kozlowski wrote:
> MDSS/MDP v12 comes with new bits in flush registers (e.g.
> MDP_CTL_0_FLUSH) for Layer Mixer 6 and 7.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

