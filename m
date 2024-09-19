Return-Path: <devicetree+bounces-103833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3281E97C66C
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 10:58:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9296FB22879
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 08:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB3F19922E;
	Thu, 19 Sep 2024 08:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="USmM3sJ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35211991C8
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 08:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726736328; cv=none; b=HLhcUq6Zg5xrr+bJNxqelfA52+o+aSRURjKPB8ZLo9NzD0TCFGp798n5c5Yd82E6IbX7/RrqmwDm4V/oq7+sytRF+1MCwC2ry7RTa9N1dHV7tPFgRysNmqn5NyTTWqVgo8g6L/9w676wNQFCcnTdxugyu2Zt0C5k/Y6s/Bqk6Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726736328; c=relaxed/simple;
	bh=+zfXeiZiSuNzsNiN3wIy3QC7ndq9WdhUfYggazg0kgA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ccp2W/lYEuSBcXyf9ClCfnLdYl6xCQPjpwVDrzRxMep9TKnSfReRV18kY8djFYB7tUbiO76/1aEWRoc+gbl0k0o9L8p/rswINhRh0vK8uWeae20cGN2udJtjD/7HgCHZG0zzArs/N7dYM1plOlaOJC6FBOlCJPoNxkeo9+8hFI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=USmM3sJ5; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-536a2759f0eso738650e87.3
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 01:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726736325; x=1727341125; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qXHgEpJPQTKg5VxPMWp2cnwAueXl3CoWh6s8J/HJRwE=;
        b=USmM3sJ5518qOW+IvG3G/oL6Vt80Si9pUh/SqdxLmRa7XvIMQw/LbkKDTWdP6t10wM
         wE1GUS8E27dTTjXD5/jsIehth0+MA/meyK7qZSpuLEWCmxwg+9YvJ62m4MDI1uvLYO4+
         tH1+OTQKg+vZVR1tnoKGv4KIlFqUwiSuJR3qx5lMpCUB4MeVi6z6AdvHOmpZ0ICgT6UP
         T6oRM0O3s2u9DP0esiQg3m+YvT7URzrKQxGyl0Fyqn+m5Zyz92VELUABZsAxvUyBiCR4
         OOaKL9QXgjcg7uk2Ul4nLUAUzlX+I59KGcF8OZWxjSy8gyDNhTq9Bp4wJaGNdqCtkKfd
         DiTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726736325; x=1727341125;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qXHgEpJPQTKg5VxPMWp2cnwAueXl3CoWh6s8J/HJRwE=;
        b=APeYuqv/0BKYFSCvtAOXPL/WFJqcSaODM6O1uTJjkh7tJeBq11P0HLS4njith09p4+
         fM4QhNXs4m42wS48BtbIfpdVfDAoL6HMNT+46Rs8NZbPz8czP/pM0IYuOKxO3KpPEgPS
         Hx8LxFtZl8kbYeWBzlB6SJs/0GHUuTvUuKcM+YAuAniZXGcBLKY6N/+mmdbdqmKODOzN
         PvfekVu3vgIbpoJB8ylgm/dE/sgsjES1nxRjrJDGJf7geMfFYV1P5zpGgiychSYOcl3j
         GKyzaPQ2MRjkujz7YlpfGC120Ujy5LhLFUnNvA1rkCbhG3pEWcywzEBdHUoMhjzYG5P6
         7OvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuXa18Q9NtEcoAPtzcfXsuRfD7VVt6mF5yeLO+zBDREjJKPlcoBQifZZEWIOGDf3vnDqufwEo0TRQV@vger.kernel.org
X-Gm-Message-State: AOJu0YwBlccVxNFH54FNlGSq3xJ97wMGcL4oOBVBwqMJzbstUCfrAMfx
	2rvFFTW2Wfxl9iCvn4ww+Fhz+O3sqxHYzGXjw1tzLNZSXholWMourVYLF8aBAYc=
X-Google-Smtp-Source: AGHT+IFBUzIfmPtY1pCP44YLIOzLQTFYZDubfZtnChxYQrERHJQYOlCRJE7atV4PifpFC3roBWellw==
X-Received: by 2002:a05:6512:3b0e:b0:533:4656:d4cd with SMTP id 2adb3069b0e04-53678fc1816mr13501751e87.33.1726736325043;
        Thu, 19 Sep 2024 01:58:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870bbce7sm1771027e87.302.2024.09.19.01.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2024 01:58:44 -0700 (PDT)
Date: Thu, 19 Sep 2024 11:58:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sachin Gupta <quic_sachgupt@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_cang@quicinc.com, quic_nguyenb@quicinc.com, quic_bhaskarv@quicinc.com, 
	quic_mapa@quicinc.com, quic_narepall@quicinc.com, quic_nitirawa@quicinc.com, 
	quic_rampraka@quicinc.com, quic_sartgarg@quicinc.com
Subject: Re: [PATCH V3] arm64: dts: qcom: qcs6490-rb3gen2: Add SD Card node
Message-ID: <u7w3muvmj2niwtr5h7sbiudypceywejhq7ch6ampahv7gbt7xw@x444wsh2tpqb>
References: <20240919084826.1117-1-quic_sachgupt@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240919084826.1117-1-quic_sachgupt@quicinc.com>

On Thu, Sep 19, 2024 at 02:18:26PM GMT, Sachin Gupta wrote:
> Add SD Card node for Qualcomm qcs6490-rb3gen2 Board.
> 
> Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
> ---
> 
> Changes from v2:
>  - Moved status "okay" at the last. (Thanks Dmitry)
> 
> Changes from v1:
>  - Moving the pinctrl-related nodes below the PINCTRL comment and relocating
>    the sd-cd node within the PINCTRL-related TLMM section. (Thanks Dmitry)
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 33 ++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

