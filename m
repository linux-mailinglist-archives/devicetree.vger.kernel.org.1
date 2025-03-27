Return-Path: <devicetree+bounces-161140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF2BA72AFD
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 09:05:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5551D3B7643
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 08:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B43D71FFC40;
	Thu, 27 Mar 2025 08:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QpwLfDs/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAE01CAA66
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 08:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743062702; cv=none; b=Z/cTG872EbNZ4Xf2qFcHtzGYGEYgps+gfxR843y1+YAVCy1cUsGswtJaaiFcuiwNLh9Caq4Pbk0qoyNCbNNnMXvQzzEr7cwYiUhKwfqawBdsXg6hwnGo1I9dD8BoddKdnx2FgnT4D1TfqTHCTA2WDZlOM9/6OFeTHpYspQ+VXoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743062702; c=relaxed/simple;
	bh=dTqlr2hjR451m79Zo3X+DOyCdBNrJpzm94od0/6b/aA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cQySjeAKP8HRkUvetrlCThKwgnORSpoTgWb2Ub9R9FQA4QrB8aw8Mmmwis3OlZZbLcYTdB6BbjMXWbCd8SivXd9soWFawVhR5yWz58eKvLqwR5/ahTLU52RFMKUrRayFvAEr9SawdU7tcdCvbj53mFgwg/d+6Q5d84Z66zWRwFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QpwLfDs/; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e5c9662131so1031834a12.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 01:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743062699; x=1743667499; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j4HEgztO8bDb8osaU3P7mi3hTF/hZput8WpT0jCkOJM=;
        b=QpwLfDs/PMtUgcjUxc3AWrvbdVc94Y3qap3sajT363/vtEc9wh7m0iTR0KwsDy/79S
         XU5ehF9hlOp2yLUO/Zz1U7ZQ2jcP4obtIaLKmxQZft2l3ijN0+IAeMDlHck0A+7ZQp/c
         gxmEsxFM8tcMOdqWQaxM/PaXcQyP2Efh0Iiq0gIa9oq3akZVa1SJLLlmD3ivUoQvVOOq
         ckx5uaIN+JeywcL+6fhz2pmbdUTBWh7lzt9lm0LAdhlPBkf91fxJUFX/XJTQrnJAShwv
         uu0K0Ek1jv2jkKei4OGZcM0sSyaJhWcF8o/TglMOAuFgzKsNKTGTHSjguz6ob+TZUMhy
         7VIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743062699; x=1743667499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4HEgztO8bDb8osaU3P7mi3hTF/hZput8WpT0jCkOJM=;
        b=nIZLRI/esh/gC/3xCBLx/71hGS7oGCXULENClP90prqwGh0kwLQyAfwFi21OAUvHiS
         id+TUjCpehzUwIqWb2/OXssLR47eakJU4M73Cx13OCV2LBAZcfIksqJ6WmdKmkGNX+Q3
         yFmt0dGOPMO64Dui+XkPZYlecnHsodlQd2BLkBh5RyZEO0DeSlPPanmA/uSdfjwQDRDL
         Ds+SH5KQzLSiiEli6eZDOqjj4gtQJxGLA1Yi7v07j05lXG3ejWMaamFRExrhlK0B66sb
         iN7npDbCvYPSTHqGCTt7I9T46glBZ3lmW6moc7NfW6UoVI8evfFLKKixvKNycjbBECco
         Y5sQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSUOAoMfl1gq+o3+Qg1x+549s9lvG50vrbnWGqxKAc8P5/E94BNQHcRci8xwu1aPR/R3fykisnxlIm@vger.kernel.org
X-Gm-Message-State: AOJu0YxcM1WvY8zNQJ5LkjS7Tl8C/yaYe6cBUaN8G/9USsA/1nwgIrUq
	6IVv/eHMCb+dR8ltqc9XkiMU8MFPodhi/mbQsF0wNiT227vz+RZI5mxzEcae+sU=
X-Gm-Gg: ASbGncveaRmTpIgk4CElesccJFgLST456FRK+iXWL3rP62GR1E//id76mWCNLNKXfd0
	9kVk4JoFv4CQHRT/3hbefj1HTF1RQHd0+u1WlnMq0FsFq+Qykq/Ju5Y7xr/Uym6QOZ8kAWx5tBA
	CqvpP2YDn74Vki668zxYFXutJUnPWz/K481+I30WiP0GHp1L+9k6520FoXQlcXae20aLtZr3z9i
	cXVGQCe8G0O/IOrmJBMhPrL4XOYJ8SZXW6mH9SdCFR5VRAXhT5hq4Ut+95s4MPMf4EHXU6SH1U2
	gA52+I10x5zxLA77ZxdsXJMQ+ynDLVzx8IcyWQepJg==
X-Google-Smtp-Source: AGHT+IHnwu/C7hwA35ZgXejtLeIFJKtAHLhv7l8qMYpyk9Q+W2Ud9zHdHAz/RjHL1R8rTdvL+rtmag==
X-Received: by 2002:a17:907:6eab:b0:ac3:8790:ce75 with SMTP id a640c23a62f3a-ac6fae47cfbmr238239666b.10.1743062699159;
        Thu, 27 Mar 2025 01:04:59 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ecf76fcbedsm5182752a12.67.2025.03.27.01.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 01:04:58 -0700 (PDT)
Date: Thu, 27 Mar 2025 10:04:56 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Christopher Obbard <christopher.obbard@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>,
	Rui Miguel Silva <rui.silva@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/4] drm/dp: fallback to maximum when PWM bit count is
 zero
Message-ID: <Z+UGqItLubQ9kwF+@linaro.org>
References: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org>
 <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-4-e9bc7c9d30cc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-4-e9bc7c9d30cc@linaro.org>

On 25-03-25 19:21:29, Christopher Obbard wrote:
> Some eDP devices report DP_EDP_PWMGEN_BIT_COUNT as 0, but still provide
> valid non-zero MIN and MAX values. This patch reworks the logic to
> fallback to the max value in such cases, ensuring correct backlight PWM
> configuration even when the bit count value is not explicitly set.
> 
> This improves compatibility with eDP panels (e.g. Samsung ATNA40YK20
> used on the Lenovo T14s Gen6 Snapdragon with OLED panel) which reports
> DP_EDP_PWMGEN_BIT_COUNT as 0 but still provides valid non-zero MIN/MAX
> values.
> 

Nit-pick: AFAICT, there is no relationship between this patch and the
rest. So it should've probably not be part of this patchset.

