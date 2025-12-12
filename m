Return-Path: <devicetree+bounces-245975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA3DCB7766
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 01:41:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94529301791B
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 00:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 818DD226CF7;
	Fri, 12 Dec 2025 00:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kPxsSGrk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68F0224AF9
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 00:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765500086; cv=none; b=JBKBhFxJ1RFGnT13Vutc83hlbA0l2fwhVBmt3XGpwUNCll7E/AvWOwfRt/sOQkYiwxjjkA1DYdwivw1xaKJGKfBNxjzKsyH7tKpZRQrtmGPWO+6NPeWCeH5ZhdJVUuFypVItsZJHf1NrupZ52k5RXTSfCmtrqGyCNFqcjh1n+2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765500086; c=relaxed/simple;
	bh=DHD/lZHvN8tPqWWfOwqXtmcNxX6Jp50gNz2N0sxd6BY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n/LmMVlOirKZfUzkQXV7oUz6yuzA6+YJ1n8O4BKezEETKE1JRKOL2Y4ZVzWzF+d63mtlWTJPPHBIyFLeICBvtyWRZ7pfIZkJUprrUtV5d3JdLJoeGOvlC5BTTIvVi5TJ6JSnDGjaTbNt2y5I71+ahBK5IAiThl80fdYDbZY5qOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kPxsSGrk; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8b5ccceb382so69475685a.1
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 16:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765500084; x=1766104884; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ITpyggKEhw2+s5AdOrWLt8yqrU4pVMFBZVM7vpDrXUk=;
        b=kPxsSGrk2hrgtCq8L+zd27mOU1I8UbZn9MExxOta19/8F1gomHw47RH6GOyGROfdh8
         7NnDyxDT1H4THnqJqYLQN5SrJCVJfEEF2uWHsJjTU7G0hlid++SHUdAh13ts9Xdu1xaw
         wj8uDc+kaB7Rmwe9Kk1FfhjVBCOi3hRFFLLQYBdd4jTnWZUEnpA5/LpH01LtwSYmqlJe
         JEjMf6v48lh62bgy7zfYp/r5Ec7T0ae2pTL46Yo6FFhhbFsk7vJEqWGskSv4YtufFpbc
         UePg6HV1GVRAhxT97/xyuiCMPyHLMrZEhIHejUXStGAlxqvKfoKFeX8hhB6UCoTyWaW4
         L07w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765500084; x=1766104884;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ITpyggKEhw2+s5AdOrWLt8yqrU4pVMFBZVM7vpDrXUk=;
        b=GWxyBF+nMYIyIcF54wqlFgrB8JN4Q6myUSqWoqTScb36MyDs9t8P+4CmNFXMWw6gGm
         M8zKIIvpAB64AnAe3kTaDLHtl9UvKbMiUhBpuY2kNEXCneXUpYUemGyOzwEeuQ9vX2C7
         qg9q48DrRnNfa/HQn99gwee1lFB8+q5Bwdt++X+eVgpnyQz5kWmqYMcn2alK25QT65qk
         omg99iUL4Y2gf92QABbRnFy3tBL+p+g8t0dyZn6Btl1bua92n4Fsgky62N3k7ngLLLra
         ssyDyhhrYJZX8Rf6lzU3fQAwpu/zy93cYCUApVWzoRujaX70fRJ02UDdhD7EsUHjPEs2
         YS5g==
X-Forwarded-Encrypted: i=1; AJvYcCUEd3oTa6B05hq/9b4en2wmuuSbUhoEz13BlH2VNkLp6m+0OEpV4hKmO+SBpy9KTDuSO2gvXzoYVxL7@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq66PKm6H0GGXVH3aduOztjePz8hyxdt8WO6CEBRkUcKNhjbea
	62Uzwj5GPIFBHARvdQnsmyTwckO59SmaZlUbwScYrq3gaby5BXiLfZNQ
X-Gm-Gg: AY/fxX4ax36hY4l+WWPLNDs0Sqd5YuWfZSpDNgCMS9itenrECPOHEHRpLZNFug+UO05
	+3dbGOGPHTBo0sAK0j9VLNDQ39CGucV27kyNIbbisW0OfaE9d4vqDBkht0bBnKSlm/zG/Tj98Vk
	cocPZDxRJdmIKVquJeAqOvIsvyRBQHKdjJ1fgXW1wzLxJNuyLfH+F9Yn0gWKWX1hBxhsIIgfgME
	oXM7wZX650O03VsaaO7g5n8X0tR8JG69i9yA6MdPvD42CFqj4pTDDFUCQWoPhy9MdklTYIN2k9n
	U47g8GhlAHU8SbbLs8vMOw/olcu7yjhLpGFmoKcf8+RA9fmEfW0sLDn8elLA+KG3BU12wg8jm04
	+zpGdafyLYSrvtc4cvObTWDJjenvQNkvvFICPdM5FcM31njWTK0YTFrISz3MReFSFYi/qlCeDNL
	5YczObHVJIn5uAjA==
X-Google-Smtp-Source: AGHT+IFqGwlA1Aoece/i0Mb65MshHc5N2WWOb7PZJ8AvXpskJF5JitQBe/NZIOlberhGhCtjhAltkg==
X-Received: by 2002:a05:620a:1791:b0:8b2:dd5b:fe80 with SMTP id af79cd13be357-8bb3a39ba05mr56594185a.79.1765500083610;
        Thu, 11 Dec 2025 16:41:23 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8886ec2ff9fsm35002926d6.12.2025.12.11.16.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 16:41:23 -0800 (PST)
Date: Thu, 11 Dec 2025 19:41:37 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
Message-ID: <aTtkwQb2gOeWAFuv@rdacayan>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-6-mailingradian@gmail.com>
 <wwpqaecvz42jopgaboasbh353ieelctpvgo3yj6y5tnxoem5oz@j5sbx3yxntot>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <wwpqaecvz42jopgaboasbh353ieelctpvgo3yj6y5tnxoem5oz@j5sbx3yxntot>

On Thu, Dec 11, 2025 at 07:16:30AM +0200, Dmitry Baryshkov wrote:
> On Wed, Dec 10, 2025 at 08:48:46PM -0500, Richard Acayan wrote:
> > The Sony IMX355 is the front camera on the Pixel 3a, mounted in portrait
> > mode. It is connected to CSIPHY1 and CCI I2C1, and uses MCLK2. Add
> > support for it.
> > 
> > Co-developed-by: Robert Mader <robert.mader@collabora.com>
> > Signed-off-by: Robert Mader <robert.mader@collabora.com>
> > Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> > ---
> >  .../boot/dts/qcom/sdm670-google-sargo.dts     | 107 ++++++++++++++++++
> >  1 file changed, 107 insertions(+)
> > 
> > @@ -392,6 +420,64 @@ vreg_bob: bob {
> >  	};
> >  };
> >  
> > +&camss {
> > +	vdda-phy-supply = <&vreg_l1a_1p225>;
> > +	vdda-pll-supply = <&vreg_s6a_0p87>;
> > +
> > +	status = "okay";
> > +
> > +	ports {
> > +		port@1 {
> > +			camss_endpoint1: endpoint {
> > +				clock-lanes = <7>;
> > +				data-lanes = <0 1 2 3>;
> > +				remote-endpoint = <&cam_front_endpoint>;
> > +			};
> > +		};
> > +	};
> 
> This would be much better:
> 
>   &camss_endpoint1: {
>       clock-lanes, data-lanes, remote-endpoint here
>   };

I'm not sure what you mean, there might be some typo.

If this is about using the commonly-defined endpoints, Vladimir broke it
in commit dcf6fb89e6f7 ("media: qcom: camss: remove a check for
unavailable CAMSS endpoint"). If I do this again and go full circle, I'm
afraid this could break a second time before even making it to
linux-next.

