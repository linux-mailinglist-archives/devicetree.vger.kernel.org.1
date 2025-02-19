Return-Path: <devicetree+bounces-148350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBF4A3BBC5
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 11:40:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D731F3B029E
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1DAA1DE3D7;
	Wed, 19 Feb 2025 10:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tiDumWSU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35C41DE2D7
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 10:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739961625; cv=none; b=K1EZTytEUtlzFj4/V29mj33UYIZpAHHmkDDeA0yM5ZK7AtTZti4Kt5boP9+uJjbYmDCFrUQSEqnaNDdCL7JmR86iOoXlZozycyAdTmNfUtMJHdT+JwsMc9o+rFaYEfpSxAT3vlZEh1o4o3/+KpIfsiyqie6k5tFgHvtBvqNR1qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739961625; c=relaxed/simple;
	bh=+Anp7Lg+FVfajyUS0vQIj16UIiLsxJxFxYN+q8tFg5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AsD4ApqO5prcZ129OS1zsN9KlEuvsN14mYXQj4aHvWyMNI3d2vMhSs1RriV2C2L9ZLhkXqMrlpn9wIfjt5p9Y95oeO7zhGTuJelYFAQqCEhhTYVACgIa0lmnU7SyDHfBfg/ss74jYw2YxniLVLflWoYkd+3vbjSQJAO0QxX2SAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tiDumWSU; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38f3ea6207cso2909953f8f.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 02:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739961622; x=1740566422; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oTpEssmUoRIjX9Gc5CypTsWt0/nZ9V99gdm6sCPaUhg=;
        b=tiDumWSUIen5vA5PEKbxRhze1OoAEXKqdQVOEKPbXK2dwq1GUIO2PP9INjhAMT+OuD
         ATpTp89gX7FPZ2b57cu+BuA7v7AraLwLN3pDxegSQuozJ7Q0ujbwBiORytZnhRkG0Udh
         mxoZjdpgWtrsOC4rvGpkEi0p+MVu/Ka9+c/QCS2oQIZrAHzXjvmK/pbN68w83cxyUzgP
         bpHSZowD2Jgm44cUjTc9HjBRvYF/yHOre4KsKj9ZCdEwGMvNm6AjREINTSuzatNj5bVO
         bvkpU9uQCe/Ez6MlAFBEXBXasoCkPttbwfvx9Es9BuzoU1nmoghlwtQtwdKlnpGm8scc
         E7zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739961622; x=1740566422;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oTpEssmUoRIjX9Gc5CypTsWt0/nZ9V99gdm6sCPaUhg=;
        b=WtWnB9pl2FI3HK0lJBvM5b/OpI4nAo9Uak8vZSLzMGRku3igGLjXlxidKakb8VzGug
         Ej+nOkZ8sOVTRcH1AaiCibe36KyLcO+yog1qGILxh5SPh6J/JV0R2cvqPfA1kFaeoZpH
         ifhgmVRuf0hSB3tG7NxChC1Vqx3SX7wRvHYLND+SpbubpQQDA08dlsQKacn3tixGbbN0
         q3C08si3IJSFlILWurafjZKKpfTlLOjJHC/Psz1DeU34CTX3BUgiTqgjmNKA5GvjjzyU
         5OHA+C+lIT39uLrscuZLLlOOQEJRzL3f/yjwefCYSAE6t8puCOQW+pHw6BsLHDfhN+n4
         EbXA==
X-Forwarded-Encrypted: i=1; AJvYcCVm9yY8yKl/L9Ks0lfB4lIFM844VsfzkxeH0jm/CDXuFt5fEoZJaeWBeA712QJPv0DUVwbgTxTikZmf@vger.kernel.org
X-Gm-Message-State: AOJu0YzXwHCJI7nic8YN09bdeq5JdbOhr6h5edOEVdtrHgvYKaNp5Q/p
	rXN1WpXJ8vkNhybJ3sCKzNFmnJkN9jnbgX77vleX1W6gJS9cri1HsyiluJaUddeoDreMsxMd/Md
	j
X-Gm-Gg: ASbGncv8zTkcF7MEDzkb79g9lDIs68DLIPPzEzkihTkkP8XUG9WcgZGUToC+ja/gsBi
	VdmAWmPbznPaTImGi/l0+Gi7bPKAAwo/3tOiVg7VkYQ87i5M4IPR27ed0fDZrHEwD4BzJBB7ZO3
	P4IWBhJlHBVdFGqiSBoEs4lmnz71gX2roOaEa/KbE5xdRPqLOfpCh9TbSShP0dJ2pHf4CDBFn9j
	Jt+SKvUVK4HBif44+GSlLV3LvgeUZ6ZAfiTRdKq6uhYFewZbSFe78A6mx2eGMt0e9t8y42n08hu
	YdnNpv/kADCU4LiFMZj04q6y3+w=
X-Google-Smtp-Source: AGHT+IEWjgG7pbgCzAJkKiubwvHKifXXf7rgGGj2vJdSFL2Ufsb0tZitD1EnLcEdqieTl59H6i3ZRw==
X-Received: by 2002:adf:ef46:0:b0:38d:badf:9df5 with SMTP id ffacd0b85a97d-38f33f39223mr10831845f8f.17.1739961621535;
        Wed, 19 Feb 2025 02:40:21 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff21:ef30:6f72:6161:57cf:1c9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258eb141sm17162624f8f.41.2025.02.19.02.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 02:40:21 -0800 (PST)
Date: Wed, 19 Feb 2025 11:40:16 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Wolfram Sang <wsa@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH 3/3] i2c: qup: Vote for interconnect bandwidth to DRAM
Message-ID: <Z7W1EJ7uGsaTZMRh@linaro.org>
References: <20231128-i2c-qup-dvfs-v1-0-59a0e3039111@kernkonzept.com>
 <20231128-i2c-qup-dvfs-v1-3-59a0e3039111@kernkonzept.com>
 <5dr5ps4vb57xj2mfelgsxgoyrr3gg4ggwqggqchff6pda3ffsn@thxpg4h6kgel>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5dr5ps4vb57xj2mfelgsxgoyrr3gg4ggwqggqchff6pda3ffsn@thxpg4h6kgel>

Hi Andi,

On Wed, Feb 19, 2025 at 12:02:06AM +0100, Andi Shyti wrote:
> 
> sorry for the very late reply here. Just one question.
> 

Thanks for bringing the patch back up after such a long time. I've been
meaning to resend it, but never found the time to do so... :-)

> 
> > downstream/vendor driver [1]. Due to lack of documentation about the
> > interconnect setup/behavior I cannot say exactly if this is right.
> > Unfortunately, this is not implemented very consistently downstream...
> 
> Can we have someone from Qualcomm or Linaro taking a peak here?
> 

I suppose I count as someone from Linaro nowadays. However, since this
driver is only used on really old platforms nowadays, I'm not sure where
to look or who to ask...

At the end, the whole bus scaling/interconnect is always somewhat
"imprecise". There is no clear "correct" or "wrong", since the ideal
bandwidth depends heavily on the actual use case that we are not aware
of in the driver. There is also overhead when voting for bandwidth,
since that can take a couple of milliseconds.

The most important part is that we vote for any bandwidth at all, since
otherwise the bus path could potentially be completely off and it would
get stuck. My patch implements one of the approaches that was used in
the downstream/vendor drivers and matches what we already have upstream
in the corresponding spi-qup driver. I think it's "good enough". If
someone ever wants to fine tune this based on actual measurements they
can just submit an incremental patch. Right now this series is blocking
adding the necessary properties in the device tree and that's not good.

Surprisingly this series still applies cleanly on top of linux-next. The
dt-bindings have review tags and there was plenty of time for someone
else to chime in for the driver. So maybe you can just pick them up? :D

> > [1]: https://git.codelinaro.org/clo/la/kernel/msm-3.10/-/commit/67174e2624ea64814231e7e1e4af83fd882302c6
> 
> ...
> 
> > @@ -1745,6 +1775,11 @@ static int qup_i2c_probe(struct platform_device *pdev)
> >  			goto fail_dma;
> >  		}
> >  		qup->is_dma = true;
> > +
> > +		qup->icc_path = devm_of_icc_get(&pdev->dev, NULL);
> > +		if (IS_ERR(qup->icc_path))
> > +			return dev_err_probe(&pdev->dev, PTR_ERR(qup->icc_path),
> > +					     "failed to get interconnect path\n");
> 
> Can we live without it if it fails?
> 

of_icc_get() returns NULL if the interconnect API is disabled, or if
"interconnects" is not defined in the device tree, so this is already
handled. If "interconnects" is enabled and defined, I think we shouldn't
ignore errors. Therefore, this should work as intended.

Let me know if I should resend the patch or if you can apply it
directly.

Thanks,
Stephan

