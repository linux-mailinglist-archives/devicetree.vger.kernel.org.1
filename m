Return-Path: <devicetree+bounces-150495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 66825A426D9
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 16:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5FF9916806E
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 15:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1CFC25EFAB;
	Mon, 24 Feb 2025 15:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wA3C80XP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF04E25EF8B
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 15:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740411932; cv=none; b=QnTLMNa24h5c6UBXaTNDEXzlbYh5HPQbsfRNk9lChR848na+c7rAkNlatz2Ywe51uvv8s6KPuStqhv5d+Rp6NLu8+ue6i68Yshb+0a9SqNifBlwuiuHUg7ceyGpu6O2ujpJH82ryDj+z4X5ETvdaaR7+deOIICIFllW7VDbDPp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740411932; c=relaxed/simple;
	bh=2mTtDZAkc00WaJmrF+GsEd2qg3IRRa89CS9NdfbbNJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YleGa0F+ntaEiHp7GwHmsknglKjdcu1GdX+1VmfyHf9gUOE0LO1XuHMVAm2XUYmszeAI3MTa1qjSUv4Jcga3u4PupJV9ktkPvKwZtiYczIVn7yFCV5vXjwrjnDCIcw2EXEVA8JPycBFeCwc/WaU+63EbBXL3FtqWnLCEDVEwAgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wA3C80XP; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54298ec925bso6576596e87.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 07:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740411929; x=1741016729; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wOiNvYc++Zm34fMpFoIDUhcKtWpkYIPTfUzhG4djg7M=;
        b=wA3C80XP1CIPLPSCpBl7N8OLpilRCL/nkj1Vdh0WGEc2v3TV0Znna/nAgENu2S9Zo2
         DXNC3gFUT0rf4Eh/YMykLd4+OyBEFqCSfVISvUEPXWGMr0PIF+N9GSFNz90FOz/NJL1s
         yIKpatb/+AVaxBq+GYZkdM7lP52lnYbY2asbNfoC+GIouqQ67g+AL8i95jGvdIJlWmCE
         S6ammNNwAaaiG3p/0I1Maq0M0ARS4V/DR7ETMNnuMYno+UqR6WZSZ4InnYy6k4HHux/W
         NSl7rUW23cl0C7Wn6gjHGlY+C+jlqlzS9/n0getk0zz8l066YR2FtBEwPye8XlE9rlwV
         3sDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740411929; x=1741016729;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wOiNvYc++Zm34fMpFoIDUhcKtWpkYIPTfUzhG4djg7M=;
        b=O0UbJWo5vY7dKf7XHbu3/tp5w1IvSz19CPxNkPry8Sb1+GuniaFgkaMnEM4m4+qnJc
         8rppcFD++tu24MWqCBfWZp31+GDiMdi96GOW6pHcgY5rTyYve8GxMG+Uh0UQJK78VRcB
         g7EqWBLb+n8ZldcqjRHA2v0s2tTlqv92RgL1M1iRDse+sZIKrcuepaJ561GCXLvw8BDr
         9J/KFymfgBzGqw67sn3PNCk8CuYxWzyUFRDv3GMtWK0WKJXCyuP+NU26PS4Wy8MKWynj
         Xd9U1dV46Cre2OyqnL1FGZ7oe0yqsFeZnChxaVMn8uBlTIkpk8mjJ7hgyWt5Up0R2EnE
         d+6A==
X-Forwarded-Encrypted: i=1; AJvYcCU8Do9XxLiBxgaSn82L08xux81XfAnt1dRc/mMMZquSygSkOGpT2doWyPPh5GKfVK+XjZQGzdT8Rov2@vger.kernel.org
X-Gm-Message-State: AOJu0YxI2+QAkltN2OKr3Rn/p+QvspGC1QSQIBHiGvnnhUOyTrxxbz+v
	BUdaPXp0LNzmoL2JQx2DZN9fC82XBTu2vpFD+R8490KlBY+8X/PDigy6JJENQn0=
X-Gm-Gg: ASbGncukInp7UjEmjpgkYbvAV7XyaMEVLJ+IVy0Ni7W6GBoGHLFYjbnAXpu6paqfhq7
	6dJAm8mlabNEzad1vlBpJmeVfVVllxecOFMrFlGywipXGWLmeXbLv72E8eSqQ2mbJZg5x9B6u8H
	u/2Nm4JtuIVR/90EBqp4L6lKFxD5TdkB553oIXJMrs4kFB/+GH/FO+ddhldI5PotPykvp+QpVRh
	8pld0Owv1evUm+TVO7wxagHPR7A1ovdC3vpXhKnrrOZEaHxI1UpqtlqlY1hzZ46TUKx6Zh3Lq0L
	TaqeBjq8tiiNM+W4nJhNdpsCJfK96XkALZT6NhJaVruh8YQ5JlVJliYbwsSgXrG/iik6PJ8J+PN
	yOeii8w==
X-Google-Smtp-Source: AGHT+IGwY3q58ljOK6c0ToO8Ip0U2GajA279X5o7qJCOYPYRMwKT1ywz49vgLpLFCtOjKmpLe+ox1g==
X-Received: by 2002:a05:6512:308b:b0:540:1b07:e033 with SMTP id 2adb3069b0e04-54838f79748mr5921069e87.45.1740411928851;
        Mon, 24 Feb 2025 07:45:28 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54619e7bc2esm2609050e87.244.2025.02.24.07.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 07:45:27 -0800 (PST)
Date: Mon, 24 Feb 2025 17:45:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, amitk@kernel.org, 
	thara.gopinath@gmail.com, robh@kernel.org, krzk+dt@kernel.org, quic_srichara@quicinc.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 1/5] dt-bindings: nvmem: Add compatible for IPQ5018
Message-ID: <3lmf24l3retmjcbmzkn7ezqxd7no2dbuwm2apy5vlwgaq7ipnh@ggscdxkgirke>
References: <20250224061224.3342-1-george.moussalem@outlook.com>
 <DS7PR19MB8883591F0D2E21E62025D2D69DC02@DS7PR19MB8883.namprd19.prod.outlook.com>
 <2fcb52a3-7ef2-465f-b460-2f7b565a188e@kernel.org>
 <zygiknq3pldkcdonekzamn2uprnjyc5dip57i75p7uahftekxr@2lqgo3wa6zhf>
 <739acd33-9ce8-40db-a219-26b8ca241d73@kernel.org>
 <DS7PR19MB88839DD16140E0C883257D679DC02@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS7PR19MB88839DD16140E0C883257D679DC02@DS7PR19MB8883.namprd19.prod.outlook.com>

On Mon, Feb 24, 2025 at 05:58:39PM +0400, George Moussalem wrote:
> On 2/24/25 17:49, Krzysztof Kozlowski wrote:
> 
> > On 24/02/2025 14:42, Dmitry Baryshkov wrote:
> >> On Mon, Feb 24, 2025 at 10:19:35AM +0100, Krzysztof Kozlowski wrote:
> >>> On 24/02/2025 07:12, George Moussalem wrote:
> >>>> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> >>>>
> >>>> Document the QFPROM block found on IPQ5018
> >>>>
> >>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> >>>> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> >>> You can send the patches to yourself and see whether they are properly
> >>> threaded.
> >> I don't think outlook world understands the concept of threading.
> 
> using git send-email from an @outlook.com address. But I've figured out the issue:
> git send-email --thread
> this sets In-reply-to and References tags

It does that by default. The usual way is to have your cover letter as
0000-foo-bar.patch and then use git send-email 00*. This way it picks up
the cover letter as the first patch and everything else goes as reponses
to it.

OR you can use a tool which does that for you. We usually recommend b4
tool, it wraps ardoung git-send-email and it can help a lot.

> 
> > True, but note that outlook.com is just provider and you can use
> > whatever email client with it. mutt/neomutt, Thunderbird, claws, Kmail etc.
> 
> correct, not sending from outlook, but git send-email. Was missing the --thread option
> 
> > Best regards,
> > Krzysztof
> 
> Best regards,
> George
> 

-- 
With best wishes
Dmitry

