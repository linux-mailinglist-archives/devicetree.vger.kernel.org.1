Return-Path: <devicetree+bounces-132266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB8C9F6501
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:37:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4FF81891128
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE56E1A00E7;
	Wed, 18 Dec 2024 11:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KNOn79vb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDAB619F422
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 11:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734521821; cv=none; b=nIF7PuGLZ6hqLQinzJglsj91RRAEXrofafKVVOQ6/poEVPupd5IKAnqfmxrEoy2R/pqyjfPuDhEhW6ITjBiLZV5vKpj+RBVwamnuRbNy8G/kHPyL+90/QNgSHeP/OHev+K3O7ul86/2TaENx1iXanOTjh0zTb6NI6NVQnTSQc4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734521821; c=relaxed/simple;
	bh=nV+pqhfWyXgRa9pON0VAn9kRTq5cl6suRFxwKoI9NjY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n4yOBc9n98y0iLmeOzd/9k5ZCkI5mdO/8CoQF+mZPrFL2HvS7ITTcqCl82CaNYPXqsYHtZMS+HCW9hlXTIqnhJD1oWwKdAb7vMOiOq+V8Waz73b2hI2vKuPBSXv03pTbv8EsrAibpjBEv5jLatZZEOSV9MjvY7QKfDRJ/DRwTG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KNOn79vb; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53e3a5fa6aaso699626e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 03:36:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734521818; x=1735126618; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mgC6FT2aLsRk0iznKN/lYkL6v9+y1HJaw8g4ZlWCUFU=;
        b=KNOn79vbnRwxqhA20G/SChtyN3khs+XTu+rE6XSF/opDlBGRHHyw1+V3a/q3SEtdvf
         tf6cfPxSqTKAwl5dm6su/YndKL9mz7uEmwpNP80azKvqrHbboSagDxurbBw69IzTHLfX
         LU93Z+kSDsgskWJ2rriNRFFqIQm3iu05edxDJo2ccnlnVuagcoUN5TeRYZqeO7kEwloA
         oSusUbxhUUwtu8DxS/nNLCygh8k5/6ZKInA32bbEbInE6ksJmQ3slc+KfpmO/gGRqc/h
         cBA3zAaD4F3X5qUizW+OhWZp1H49OjK+PYOtiRi8rGECzehh50VP4aLamFuIuBB6oxI3
         R6kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734521818; x=1735126618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mgC6FT2aLsRk0iznKN/lYkL6v9+y1HJaw8g4ZlWCUFU=;
        b=K2e4GQls19th/Vl+FkY9KkkEWnoDPAnGp4igIRrjE94tdaBz4ibx8pz57E5LS59QKI
         KWs+T65q47Lw+g2UtVVl/CVOfnbRbv73OU+9diVc8PirtZgXlAjJAaIV/QUMo8T+uZdF
         XnaxZY0Wu1IKPYwNF7smAlBtfr1jbVBW/41x6IiPyVIS8YdhcCC46Znl+HkcFr1Jtpc4
         SS+CBmvbMpxl0Er0SQcJuIvLuXOFVDg/yBcQToDiOaNULlBdI01WJzKg6ZcOAzeiZtch
         yroz3p/xZqU5nV6r7SzgFt6hgxYKwcz2MQ1Qlx5xEgUmvVzrHxx+1fuWJqL7lCZAvQiE
         k4HA==
X-Forwarded-Encrypted: i=1; AJvYcCXp/xYYh3oaR130nF3j/hEZGCslSQWmsAFH9EPBHzGBVsd3cA6MKI/gpcDfjL5lrRHMqpMu8esyjv73@vger.kernel.org
X-Gm-Message-State: AOJu0YwtW7i4pwfGL6Azu9BeUj/6bWjQYR8DO3mtlY/6C245O/0Q7bOg
	Nd259SLnaAULIjoyR9QJK8v+gJN9yCfBZS0vKRY9VpTxVt2Z+vUTU7uiKk357dA=
X-Gm-Gg: ASbGncuw5WTE59Dzc3vxvncZAwRjGsXKg9A6qNwLgoWg799yX22ykWpiF0bxPk1jjsB
	LHckUo4EmqbD9rzMPgR3XIDr8j96g2Lfq5iZq1GT8MNCbCSflklMcR/rFjeKMkgMgHJejXe6rdM
	DTBqusW1qvOeI1hNdr+oUq9eoNPAjzMeLUDNC5EAaYhcle1IkPi4ibj3ctkbbxL4tLhRN5kDVuO
	h8Q9DdAqHgvci0wPng1zIYz3fTn6/oF7WikHUo4BxULQiwUlduzlPSM8fj3MAeb8Wak5LCaGNuA
	LGfc4PUMBpIn54F24FBxPcJKexsOxT9Z/o8C
X-Google-Smtp-Source: AGHT+IEZ+sSU1SDLXJ8oJNi+0fhecW4BHBNr3eJX66/i9r+4ejfv6uryNvgWsgMb3aNXDMPAIOxqLg==
X-Received: by 2002:a05:6512:ad5:b0:540:1fb3:e061 with SMTP id 2adb3069b0e04-541315b4f48mr2268645e87.28.1734521817999;
        Wed, 18 Dec 2024 03:36:57 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120ba9db5sm1426597e87.88.2024.12.18.03.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 03:36:57 -0800 (PST)
Date: Wed, 18 Dec 2024 13:36:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
	Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org, todor.too@gmail.com, mchehab@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com, 
	hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org, 
	hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, 
	will@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com
Subject: Re: [PATCH v10 1/4] media: dt-bindings: update clocks for
 sc7280-camss
Message-ID: <hevfx4sgsatohz4ndgrlidj5kqxaiizmakjqjghlkbmguluzi5@ezxa36uasb32>
References: <20241217140656.965235-1-quic_vikramsa@quicinc.com>
 <20241217140656.965235-2-quic_vikramsa@quicinc.com>
 <02da691b-1f5d-41a6-847c-c7e9b8239919@kernel.org>
 <c14493b0-c9d3-4e1c-9f86-991b4cb25c98@linaro.org>
 <fe28a9bc-82ef-4fef-af50-9d9261ed9b39@kernel.org>
 <a1032d53-6f3e-48f6-a2e9-1315bb1a3232@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a1032d53-6f3e-48f6-a2e9-1315bb1a3232@linaro.org>

On Tue, Dec 17, 2024 at 04:30:37PM +0000, Bryan O'Donoghue wrote:
> On 17/12/2024 16:23, Krzysztof Kozlowski wrote:
> > On 17/12/2024 17:12, Bryan O'Donoghue wrote:
> > > On 17/12/2024 14:10, Krzysztof Kozlowski wrote:
> > > > On 17/12/2024 15:06, Vikram Sharma wrote:
> > > > > This patch change clock names to make it consistent with
> > > > > existing platforms as gcc_cam_hf_axi -> gcc_axi_hf.
> > > > > This also adds gcc_axi_sf and remove gcc_camera_ahb.
> > > > 
> > > > Don't combine ABI changes with some less important things.
> > > > 
> > > > You miss here explanation why doing the ABI change in the first place.
> > > > Without that explanation I find it rather churn. But anyway, reason for
> > > > ABI break and impact should be documented in commit msg.
> > > > 
> > > > > 
> > > > > Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> > > > > ---
> > > > 
> > > > Best regards,
> > > > Krzysztof
> > > 
> > > This change should be fine since we haven't committed and upstream dtsi,
> > > so there's no ABI to break yet.
> > > 
> > > Agree the cover letter should have been explicit in explaining.
> > 
> > So these are recently added bindings (sc7280 is not particularly new)?
> > If so mention in the commit msg that no users are affected because of this.
> > 
> > Best regards,
> > Krzysztof
> 
> Agreed.
> 
> The commit log should make clear that the ABI hasn't been cemented yet.
> 
> 20241217140656.965235-4-quic_vikramsa@quicinc.com <- is still pending

If it hasn't been comitted yet, isn't it better to post a fixed version
rather than committing a version which has known issues?

> 
> ---
> bod

-- 
With best wishes
Dmitry

