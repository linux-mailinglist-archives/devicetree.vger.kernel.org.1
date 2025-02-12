Return-Path: <devicetree+bounces-145558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D629A31A48
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 01:16:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 537251662E5
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 00:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9548F10E0;
	Wed, 12 Feb 2025 00:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RQfYLtYd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EA579EA
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 00:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739319374; cv=none; b=ox32iy/BC5RDFptJlzLPbuhS4tqr9+danQIuPIaOfEypW7W1MFpwqno8LZC+73rmtRYgUCsAj3mvNjlxMXPl2cykXJegl4WsWhMGUVuQkZnFcndqTFjddFPLpYOzU7kd5aJU3PZN0PMwll0/xiV3D9GTcdfx5SKyVodigYQaERM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739319374; c=relaxed/simple;
	bh=Fnjc85tFo+DRqushjTLDrAr2YQG02n0rclwpTAv2Swo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gsq8yiCRk/jIuO5i/B0T616Tn8ZUdFn9TZzq6FzzL3ZNWfHL9Eie0A1mzw+rQO2A0vcAi3lA8soXeS13fhgo9CX4lB7+DJHzoYRxa/uPsqYFFLjOR/s5fpWjfNoF3l0dWcYcwBVNByYY3skygGAma/5ssN0P/smI6qaWWxSM1iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RQfYLtYd; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54508b026d1so2872663e87.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 16:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739319371; x=1739924171; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xdffwztOvMIrK2jjolf4o8Wr6ci4Bs53P61Nbn3lItg=;
        b=RQfYLtYdxr2g0RDE37LwdJH2jRiDZmakJ7p8zlyRwxTyxL7SDEFyHjuCVtFOp+Hl65
         V6TU1Wo9MkNMDs0Wuife11Nwv3jL29vGCcmRNk/VjvznIWKU04vSWzCE4bbidN9IK7Sr
         /oR40yfveV5qNYhWMXbjiTi1782y3o3C03i+8xk1iJCoqLvKuaKq2Yk5K0Gk6QvwH8YD
         TwMm1uXfyiB2kPGeFf8QC6d8zlfN91SQJFVGL1Q4oP70UW5wPuhKiLa/DcPWT26a3PgQ
         xyxcNVkrF+rmlnUwey09ZGmdaCo7W+07gW/s0fAi9B6yVqAXTAz3YGk7ihX5KACSoSDv
         Oslw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739319371; x=1739924171;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xdffwztOvMIrK2jjolf4o8Wr6ci4Bs53P61Nbn3lItg=;
        b=Kf1fPPxn6p7i3wWQsAkPqO6vF2RjKBuf33JfjKgk4nAl1Vty1jN/UJWLAJH4qvM8N9
         EzsarFX80/zs8gGs1SJoll1R91o89lIPDAxQWnXkPargWLhSQdsliKy6NdouzbbM6mDt
         K+jgY4kzXTRNsNnVom8qDs8vrWVdX03WSJdhM6qHo0tjoKGSElUtaFwFALyv/NJgxd7C
         CCBTb2meRI5AkDSgcj4DLjgE4lGTykILk/d1/sw7PDzumrRWOIlazivd9NM1AApw7H/2
         WPT9NpFqrveQGJIW4Dfi7UHqneQen/iqBGBe5exJ65S38V9KvDvk7kjNgRa3TwRYwB7k
         OD+g==
X-Forwarded-Encrypted: i=1; AJvYcCU6RnHvpklm9DiGVS6RIKNYwgRoWlE90/qJH5k6aTPWK6O10hsvE415JHgPrFLI0Ce1v3lKuURiooD+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzmp78GtCYUr2bDgFUmF0iHaQXWo+sb/OzS3BwmeUb7kZXhF17h
	bGVWpBYqfsm3gkymsAno6hAbDuPsboouZsyJzekwV7fEZ7WcWW/8knhtEX1r02A=
X-Gm-Gg: ASbGnctRT+5gdjWE9eDzGGFdYMRup6icgCor3yAF1JQNNB+2rfGpw4EfW/2+pXgmxtE
	hiwad0VC4GH8ARux9jeIDDBgXB1Ar7XEYhAA4uebHjz5iVKrJa9FPQXljas+OTbk9MNfSlBgvXu
	0KasPwRB4rXuf+PMrEZV3QEqSgL80NgAE15JsKNH7M8JeIe2rWejaUh13Un7D6fSNIihlBdbKlX
	StzsW/vpuKVuPLXCflsruhSz/iDjM6CG3bIHKS9uw1iIcyc+0y5OILHA9M2u/FU9ZbjKrT3sFpe
	96jbket0amn+260gzSiaDvLKu26KxqRSLyUbhr6sx3x5TBYUby+qUvnhGXyRcBH5lBpo4YY=
X-Google-Smtp-Source: AGHT+IHy0V/tdcXjGNazvy2Zt+CkmxrEZA7UjXkUXMZVFafXjdfWax/sQBr8F95GBvsvHUv1FZm7oQ==
X-Received: by 2002:a05:6512:3e1e:b0:545:c89:2bc3 with SMTP id 2adb3069b0e04-54518178d4cmr243784e87.33.1739319370883;
        Tue, 11 Feb 2025 16:16:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54506ef1733sm1053658e87.1.2025.02.11.16.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 16:16:09 -0800 (PST)
Date: Wed, 12 Feb 2025 02:16:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Simona Vetter <simona.vetter@ffwll.ch>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 02/16] dt-bindings: display/msm: hdmi: drop hpd-gpios
Message-ID: <ma7ur32qudbxaqt7fejgxiqf4vqvsd2o2oki6cz5enwchdli4n@xk5dptvjbkw2>
References: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
 <20250209-fd-hdmi-hpd-v4-2-6224568ed87f@linaro.org>
 <20250211-fuzzy-piculet-from-eldorado-6dce4e@krzk-bin>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250211-fuzzy-piculet-from-eldorado-6dce4e@krzk-bin>

On Tue, Feb 11, 2025 at 09:26:31AM +0100, Krzysztof Kozlowski wrote:
> On Sun, Feb 09, 2025 at 07:04:46AM +0200, Dmitry Baryshkov wrote:
> > Supporting simultaneous check of native HPD and the external GPIO proved
> > to be less stable than just native HPD. Drop the hpd-gpios from the
> > bindings. This is not a breaking change, since the HDMI block has been
> > using both GPIO _and_ internal HPD anyway. In case the native HPD
> > doesn't work users are urged to switch to specifying the hpd-gpios
> > property to the hdmi-connector device.
> 
> In that case users would need to update their DTS/DTB, so that's an ABI
> break.
> 
> Please deprecate the property here (deprecated: true) and keep support
> in the driver.

I will expand the explanation for the need of the ABI break. Yes, it's a
bad idea. No, it doesn't prevent the board from working. Yes, it needs
to be done.

-- 
With best wishes
Dmitry

