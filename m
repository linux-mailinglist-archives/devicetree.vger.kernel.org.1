Return-Path: <devicetree+bounces-106678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F259B98B4DA
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 08:47:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 99444B24F6C
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 06:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF0F5192D65;
	Tue,  1 Oct 2024 06:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zra1fMuM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A6663D
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 06:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727765248; cv=none; b=iJhh5zz5v897TzdRlw3S8N2Kw3dAEaWayc1gtr81xpruobRWwJ58wicS7EC42deWDVk6DBLFOb4JtrM4YwhrPtCaImrXbkeN5y62IWF9TcOjQhyJyb5RfG0bx1jo1qKsm8D8ib/HNX3Uu0F3D4xRZ/a2vIouoV1t4idwXtX0Yx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727765248; c=relaxed/simple;
	bh=n+ms9eas/yrSMAHRy5Y7bBaQ+oTS1E29qNA+U/tw/OY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PchNW7X25BmTRHaX1ZhLw2FjwcYYroZpiDk3+GDy2mPJM4+z0EpRcVb8jCChshosI9LrOeqjFJTdJ0UydnZvgNcWrmg0RJOx/ETutTJ4yJot4RPIlUkNQkrcNg+7HC9C+cePbyL8yg030A2ea8e+Pgozpa1Sd1ugQvNSJxBKclI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zra1fMuM; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-20b01da232aso36845895ad.1
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 23:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727765247; x=1728370047; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ATsOy61DsddooGaPEa2CzZYQXPNTRfIT95jkUv1EcB4=;
        b=Zra1fMuM2UnfbDUHPoXqC6pIqfDYr4/hfdZ51jq+bwYL18RCwOgqwTWHhhuTZYm7/B
         6O9T/U2VegBMsIlwFcSYvZL6n90GM2baeHL1Otmw4zWBwrm3BKg5U51HR4N8HTic+XZ/
         Jh1051u5I4pE2tsxpknXhJgPIFSP6Smd9KPe16iP1rTlLW0zSZ3HuuMRZvQjjwZB/caQ
         qLm/lxt4FC0UfjWrbiCT33xuwk4lkTbYnQTHI0pvXOoriQd7Tn6T1wew8hLbn2DAVOFj
         XMGkuFsYHawMs3L1TNR16Edj2lJTV6byOXqYzkunpOTysfsmxk5SDK32V4cHdHR7xu1o
         C91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727765247; x=1728370047;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ATsOy61DsddooGaPEa2CzZYQXPNTRfIT95jkUv1EcB4=;
        b=nqiTkgyI8qslyS9/ZJbmSh1Do9CMZ0NBS0vok/pIRYh77apSmq+lyJSeyQbewVx6Ck
         rKpKXonJw4AWnfcs4OSDxLwi1XUvTzKD5ou5kiKHclyQ3NmfT0nRPupVwtSqjxs7qhh3
         uLF5/EcpZv51U/rZODIXWk9uZi49U28JsG5bptZrym2Sn+xbire5e3Plh7VT47lk4/TO
         +LG7nWw0iQSJ5aqxCilOFrG2dt/OzbM6Ele9vsPYKLxODGKnuQfEXiTv41i2+R57X3cW
         N5K65Uy+0h6vTG+zUNsKU5hIU9yh5XSi4LyMmKCJAs4McrcSGpt4CH+xB6sp8G3MxXlq
         vDJA==
X-Forwarded-Encrypted: i=1; AJvYcCUHSvX1FKVuo2L/zgyCZrneqIqmH2jC+L8rtz5V9T14rtzh+s/TtOX4CywZVVHoimGirMFa1CY4k68R@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5hDq2qc96PINV8iTvRD9dW4OY3eB4A6ymMhW/QZKh9Tr7YYvE
	NUIYZnw1YltcjYZtmCf+wfDih6JnioGlvde8tLekSXW2oVdP5/RntMfsqnvwUq3qSJN62B+SmXl
	z
X-Google-Smtp-Source: AGHT+IEgEGAOc6QjgeVL09WHHyQC8Ps+y20CMVXh86yh6HQzv64PoeqKdtTv/zU4U5RmhWTExsEsxQ==
X-Received: by 2002:a17:902:f541:b0:205:6c15:7b75 with SMTP id d9443c01a7336-20ba9eb2654mr31998995ad.7.1727765246768;
        Mon, 30 Sep 2024 23:47:26 -0700 (PDT)
Received: from localhost ([122.172.83.237])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20b37e61c4csm64001915ad.274.2024.09.30.23.47.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 23:47:26 -0700 (PDT)
Date: Tue, 1 Oct 2024 12:17:24 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>, rafael@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@quicinc.com,
	quic_psodagud@quicinc.com
Subject: Re: [PATCH v3] dt-bindings: cpufreq: qcom-hw: document support for
 SA8255p
Message-ID: <20241001064724.o4yz2d6xlcrbx6ro@vireshk-i7>
References: <20240912175043.2262697-1-quic_nkela@quicinc.com>
 <crsuqys5tlgtf4667fwaojn5z5ri4uf3te4n5a2bcalidgobo2@up62meevaxwn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <crsuqys5tlgtf4667fwaojn5z5ri4uf3te4n5a2bcalidgobo2@up62meevaxwn>

On 16-09-24, 11:44, Krzysztof Kozlowski wrote:
> On Thu, Sep 12, 2024 at 10:50:43AM -0700, Nikunj Kela wrote:
> > Add compatible for the cpufreq engine representing support on SA8255p.
> > 
> > Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
> > ---
> > 
> > Changes in v3:
> > 	- Added compatible to the correct constraint list
> > 	- Removed the new constraint block added in v2
> > 	- Removed the patch from original series[1]
> > 
> > Changes in v2:
> > 	- Added new constraints
> > 
> > [1]: https://lore.kernel.org/all/20240903220240.2594102-1-quic_nkela@quicinc.com/
> > ---
> >  Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied. Thanks.

-- 
viresh

