Return-Path: <devicetree+bounces-75358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFAB9069A3
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 12:08:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67E581C24031
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 10:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52F121411D3;
	Thu, 13 Jun 2024 10:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qUfUnCeU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A7E91411C7
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 10:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718273281; cv=none; b=JYXxOKvnQvv24V1+7z+i6qXobwJccG9fX5tL9Dop7GnK/+XzxslJOCJMZT4l3mxwy7hTCtp8+G83RmpMZ6nCo78YoCyv1Rb70qaRY19HeJ47TF6XBv0IZZl4nxm111ZdBrawGjZiRB13nNIiTnUVetAhVAZxWIW0NGl/Lo5zJVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718273281; c=relaxed/simple;
	bh=oDpsC86xnQTDxHdbvxBVXExSH9BkhxRWqhOh4TQqauI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H0n9ZbG6N4gwAwygcKSsbWnLB+fXpdZxxLNY89Ywy2AGU6Q+wQVueVXZx5b5OPoMlM9pmV7QKX5/xE/f1q1kfcDARNtfCPx21ok3IVcNJa39VnMB2ZyZZgwJ3jGntlAqCN5bCD+onPDJB3LvxZaSCpYAl2TOSbPx3Q1Tqd4ngoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qUfUnCeU; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5295e488248so984590e87.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 03:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718273278; x=1718878078; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RYvXhUR4MqvdO8CyI6lyGFQa8ObvUY9+LLJIm6+1jFA=;
        b=qUfUnCeU186J4CoMxjdATurELfr4JGVWKXBXjLhcYVs7dDnTEwpQ80Cm0Ii2UykXtt
         ZA97QZUNvpKyxB8QmMEPUc9UeD19H8SNZHVc+0iYyq/gZ+mqTeQA8EtZd7AQnIqPihR5
         NJwgO1tYipHgGoAKk6xnn2fruJ7T09zgjyo9fbZc+1EZU5Y+22MWzFIyvkHWPuFk8O/O
         Z70PsYqpDIiryxIeUlqA2mpeH5Eqhxb7os6Fl5zZvVUhhHVB7IrqXH4X9/CpsI9ZEfd5
         woELrfwLK+0vE1h8KLL2dwpZJr/Rk9wEiMbE3EqjeJc4nIcARghQ/DhscA1hUO0bIKAF
         L4UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718273278; x=1718878078;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RYvXhUR4MqvdO8CyI6lyGFQa8ObvUY9+LLJIm6+1jFA=;
        b=YU858V0olYKMRVhwI8c271kD+WQIYXYVSiDDFFbIKYqfGepthRGKMdSxr5Pbdudcx3
         7l/gCgPXj3JIltPUNAEIdWiBdCDQMhXggAlcHV4ju2fEfrEB+DEOtRmlb180fLfZHr1N
         pWXvt2R/JvvJoIKPs4ymL+e5ka0fAtb1JhLv5xo8oCIT/+7OofW65VJskBg1U2qk751i
         ZsUoAZjlqHjNMr8eGr5o3X39FURgnapo1HSD1m25jSUO+KEd22jQ2bi3reBQDKpRAVj2
         9OGsKGhFadoY+1iutslqDX3K80eFwYmLX+WvgftyDZLt4LPDN6X3eEPoTvJZjwowrsdG
         /pag==
X-Forwarded-Encrypted: i=1; AJvYcCWbPVl365ZW+7eyQeTPecfGCpqoFPzW9Zp2+DFLsordxUDPn3Tfx8/3EIUoCOepjR/fChmJLZF8OXiTXw+AtH3xvlkG5mbxoywVow==
X-Gm-Message-State: AOJu0YxutUQkqHQ9QuTsP/hqM04PK0F13S4XcGYPlkk60m5+tZ7OFvAC
	iSn6M8Piw4i/slxOj+FAMBV44EhTKX0SLbd5QmY/WnvZx5BE4dZR6HpAAqkhADg=
X-Google-Smtp-Source: AGHT+IEIfjbzuR+TJYfn0WkM5bFWWQE5UXg72/ta38D4UK601aQPCRVEmPoKXYW21UYlolSVF5CCJQ==
X-Received: by 2002:a05:6512:3096:b0:52c:893c:6c2c with SMTP id 2adb3069b0e04-52c9a3dfaeemr3306688e87.40.1718273277753;
        Thu, 13 Jun 2024 03:07:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282f2aasm148599e87.85.2024.06.13.03.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 03:07:57 -0700 (PDT)
Date: Thu, 13 Jun 2024 13:07:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v3 2/4] dt-bindings: display/msm: hdmi: add
 qcom,hdmi-tx-8998
Message-ID: <qf3erx5x7cigdsel6eh4nb4cl7733ag6qxxeblcdjzys6dnrul@nl7mzrm4ljji>
References: <20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr>
 <20240606-hdmi-tx-v3-2-9d7feb6d3647@freebox.fr>
 <Zmnejlkb869mN3eS@matsya>
 <af3f71e5-6864-475d-aa90-74986d516bae@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <af3f71e5-6864-475d-aa90-74986d516bae@freebox.fr>

On Thu, Jun 13, 2024 at 04:02:24AM +0200, Marc Gonzalez wrote:
> On 12/06/2024 19:44, Vinod Koul wrote:
> 
> > On 06-06-24, 18:07, Marc Gonzalez wrote:
> >
> >> HDMI TX block embedded in the APQ8098.
> > 
> > This one too
> 
> I assume this refers to:
> "Why is the patch titled display/msm, this is phy patch and it should be
> tagged as such."
> 
> I always copy what others have done before me:
> 
> $ git log --oneline Documentation/devicetree/bindings/display/msm/hdmi.yaml
> 27339d689d2f9 dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
> 6c04d89a6138a dt-bindings: display/msm: hdmi: mark hdmi-mux-supply as deprecated
> e3c5ce88e8f93 dt-bindings: display/msm: hdmi: mark old GPIO properties as deprecated
> 2f14bc38d88a4 dt-bindings: display/msm: hdmi: split and convert to yaml
> 
> Are you saying we should diverge from the previous nomenclature?

This one is fine. For the phy bindings please use phy: prefix.

-- 
With best wishes
Dmitry

