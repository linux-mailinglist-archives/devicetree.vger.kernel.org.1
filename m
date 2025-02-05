Return-Path: <devicetree+bounces-143257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E55AA28BB7
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 14:33:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09DDA3A1981
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 13:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85215126BFF;
	Wed,  5 Feb 2025 13:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D/h9YaiL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD841078F
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 13:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738762395; cv=none; b=rIEu+35il81SuDtni9A4ST3n44HNRtA6LYjvOJDUXMPGw/1VHGOL7A+b3WiQnJMUslsJnFotUZ64UMBQfPcZmuccdhO/pevpSfcbjLlm+rs9kp0YX/caPgRA54x1ucDQxbTs+Ef4A9Gk2u9asytyFWGBt1IBzsd3bKyS5nPrrE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738762395; c=relaxed/simple;
	bh=B0Av/YhtNfQ8E0kMwjFAVjEJd7htRepp1Cm98Y8Ac3c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xn443KSw7JflK8tAxsEdZEdr9aP/CO7Yruj5vmSJUmeCqA28XyxhjV0myiive6oduWkcQdLUb/tZvaImRtqyCIV/C4EhDi6B3ftEvHNrgUXxIGfI2QChF2JPeTt1Oj2w0s6ntUQSzqjdD70hPBtHe1HD+htQ1sCn6RGJzlsryh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D/h9YaiL; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30613802a59so74423081fa.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 05:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738762390; x=1739367190; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kdXlLzfvrhdUrBoR/jxzwmgrOFkrXyCts0ZtQTKixOA=;
        b=D/h9YaiLASMrgQi0qZD3LVsfQbgZpWv/WtUUTM/8yVk0zJuXIQ5MV39cOGC+yecjn7
         9Noo1dopHi2CsysaVktezpNFkH4afReROmfEHHteXi60hxw8p/1gbKlCnbbvrTwcvLd5
         e1cuLiqSBLbpG6lpuTMmgrCIUaqVlAB2yqtVNMmvaMSarMyVz0Luvyv3XAJo6zLwxXnI
         uMS37RcdlJvX1LYLgw6sxwrTk52HqbGubZdBXCjrZQUwqSnsJ8rejVLVNqbWIxYuRrTn
         /P4lOPqEkL32qN2DjvVUGvQMCVuFFxYW0EWeSn+LcDIj5AOybgr13UcuD8UgxcWmERiA
         ocwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738762390; x=1739367190;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kdXlLzfvrhdUrBoR/jxzwmgrOFkrXyCts0ZtQTKixOA=;
        b=guu+Url7Ps20TPAiQmEr7FtpUTaqv4CkxeU8M4qwDfQcDdrkc397X3IMLqLGOjGwwB
         oAX0w1tyeez7NLnvz8lP6yJV8pwa5Pj+pZJcyUdnX9pcZTN5YI/r8iO51i/LcsJgt6/m
         dDQirN/jKIVAHcWMD1DBjSAkmnkfyNAUaAGGEV2CiI8F4r4VbJp+pZRfWIWg+v53dbS5
         dKoOBT8FaqBQTGgY4nbs3Vy66WVr9sJdd4tED1PWNuhXWwefsygjSNsTZGqjartgBFP9
         KCSZffN3fw0tlNG9riVJSVeer5Xlh80tsmGOs46hJOIbPpKU8FRSbirwyEUws7bbbaqU
         aFYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBA+tTk0Z6s32UKJ/JmZu12KHQRzHoonLP2RlDL+uZFATQLk1FLtuBRTI6vCyWQLlAama5urvKbdVy@vger.kernel.org
X-Gm-Message-State: AOJu0YzAxl50xk6nONgkCJfY5g+H7BsjM44TpEkVxkf+RqMYUgsu+0GQ
	CTt+nFw3yIeLio+eLA6zWz4TlDBH8sjw2+ypanlXDNr2QVHTOzGvBsS0/6Lkfpg=
X-Gm-Gg: ASbGncvDv5ruHUFbwMFaqJ/imXgUqqRXUV6E6pTrNQSWQ0oTSsBNqDm8ImpiNktfhAj
	0HnZZi36x3uk6tmOh68zmNHayoL9WFil4jjJZGX6GlctpSiS8VjRx6jV2d0qUtJ/gOgqCeTa+u/
	y16l04mmqZ7VUk6xfivSrERQ6Mb+uL0FtE0gICoz2iCIPS2rix24LxZ4nrbjAGjUniIur8MHDF/
	AD0DMXR4CXNHQFZR5jKhzggRg3BEC74+Rpn3oFyY0n4vsC3Y5+6e5SNohxoY57Oi5YZv2UgSHHf
	AAmqZ828gDsPbRMW6FtsMkQ9EazVqN3jVQYOOj9U3IVVmMG+/aMQqoPMV3hFwjiywNvnbDg=
X-Google-Smtp-Source: AGHT+IH/JpYkjPT4o1aH6hbWn4YaPtyuTEBB++cHyhx+jQWDgamHA0JZbGwRwQNMWS0IvcKLXactkw==
X-Received: by 2002:a05:651c:b06:b0:304:9de0:7d9 with SMTP id 38308e7fff4ca-307cf3146a8mr9900901fa.21.1738762390160;
        Wed, 05 Feb 2025 05:33:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307a30a522esm20942871fa.60.2025.02.05.05.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 05:33:08 -0800 (PST)
Date: Wed, 5 Feb 2025 15:33:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Harikrishna Shenoy <h-shenoy@ti.com>, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, 
	jonas@kwiboo.se, jernej.skrabec@gmail.com, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jani.nikula@intel.com, j-choudhary@ti.com, 
	sui.jingfeng@linux.dev, viro@zeniv.linux.org.uk, r-ravikumar@ti.com, 
	sjakhade@cadence.com, yamonkar@cadence.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: drm/bridge: Add no-hpd property
Message-ID: <h24gpx6cxm4s6gzcunjnswubtvqask5dewi3udulmntsuieklm@w3pw4ig3t7gm>
References: <20250205115025.3133487-1-h-shenoy@ti.com>
 <20250205115025.3133487-2-h-shenoy@ti.com>
 <efd89cf8-2f83-44fd-8bdf-aa348d4d9659@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <efd89cf8-2f83-44fd-8bdf-aa348d4d9659@kernel.org>

On Wed, Feb 05, 2025 at 12:52:52PM +0100, Krzysztof Kozlowski wrote:
> On 05/02/2025 12:50, Harikrishna Shenoy wrote:
> > From: Rahul T R <r-ravikumar@ti.com>
> > 
> > The mhdp bridge can work without its HPD pin hooked up to the connector,
> > but the current bridge driver throws an error when hpd line is not
> > connected to the connector. For such cases, we need an indication for
> > no-hpd, using which we can bypass the hpd detection and instead use the
> > auxiliary channels connected to the DP connector to confirm the
> > connection.
> > So add no-hpd property to the bindings, to disable hpd when not
> > connected or unusable due to DP0-HPD not connected to correct HPD 
> > pin on SOC like in case of J721S2.
> > 
> > Signed-off-by: Rahul T R <r-ravikumar@ti.com>
> 
> Why are you sending over and over the same? You already got feedback.
> Then you send v2. You got the same feedback.
> 
> Now you send v3?
> 
> So the same feedback, but this time: NAK

Krzysztof's email forced me to take a look at the actual boards that you
are trying to enable. I couldn't stop by notice that the HPD signal
_is_ connected to a GPIO pin. Please stop hacking the bridge driver and
use the tools that are already provided to you: add the HPD pin to the
dp-controller device node. And then fix any possible issues coming from
the bridge driver not being able to handle HPD signals being delivered
by the DRM framework via the .hpd_notify() callback.

TL;DR: also a NAK from my side, add HPD gpio to dp-controller.

-- 
With best wishes
Dmitry

