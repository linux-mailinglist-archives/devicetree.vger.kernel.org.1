Return-Path: <devicetree+bounces-125128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 922199DAC14
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 17:53:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE937B2538F
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 16:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7032A200BBF;
	Wed, 27 Nov 2024 16:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c8ruGZyF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9CB1FF7A2
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 16:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732726390; cv=none; b=tHBP7mgqhVZ3MIQkeZfMWHrGUnYL4pcOY8VoFl+bE81uM4zgNVe47eKKxxqvdrlSRmgIcRCD7MRqnvobUHqmdxTd/uO/Co3KOj+xFt/gshROUBinO3GP4Z1TC2qdmNTSPhICxnGOgWUazIGEZ3ijxXDtTu13p7DV1yzm/MZAexQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732726390; c=relaxed/simple;
	bh=ANjrQtX+FOZpXZD7Z3yfhh/CtDwI28c9VtHVDdzAeb4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ltDyIcocOx02s5OKIm+92NQ4Yr2xI4iNwmxGGP24BWtJZ9GYvsYoBOqf2M8KXUqNG5A1J4M0MSfAt7nFgfkY1rAoRVC6pkOqBBvmIT+00D7iV9U+fRIFIRug1Sb0YbIglF8asvWPUyUwT8Bo2i1Ek0xedEmGOoKYPNAtqB7l7Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c8ruGZyF; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ffc1009a06so57044251fa.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 08:53:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732726386; x=1733331186; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/7v30ajDWU7DkHOcX4MYPBB8oCwa2yjywh2jvuIi8/Q=;
        b=c8ruGZyFm4NSpyKA6tQYvz9U30ZcGc8PpWVxfWlf2AFrVDpKmsrmmnM+OuaQJpBsa8
         0r+0VOqX62+Sw9mPD+cqTGNyNNRXSIbgmL3U8dtbRr5Zk8eOJiJ86/xF/uCEmzjR1Rk2
         F7Fdk0P/8ZU3uhaLTJh01SCPZniscCPr0K4XCP+s38YYsudfpiGvOU6lvBZkslzPs0p9
         zbGyUPa45qxJ/py9Y9BB4hnUdYOcIw2xpR1Lj39IPdSbSh0uuyU3xe4aE7jCkKS9wub5
         TRNtIZZrv1V/XdB2lyzUilHs+X4k0BreSK5IMCYq+FVY/fwmhbe9E16dDuPaewCnJk4U
         QQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732726386; x=1733331186;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/7v30ajDWU7DkHOcX4MYPBB8oCwa2yjywh2jvuIi8/Q=;
        b=b6hWGDoIThA/DzH5mch2whveVM+m8i6BhIfTqhy5oSS3AzxpVh/6VyvXlPtdqr8x4z
         D/r/cyltQ23HpQ9vsFtrh9GOPRG1MBRjr4GkOAhVYuOJTKOPCafvC0/DNH3lcxhBxoVx
         gDXSXGQAsdKP6Gw1uP8t/z2iM7ZZqRMenu9Q8Dof7eozB1HTCRRtCSnDwu801es26UvY
         nCb3nSEGSSaf5ahtTnT84wKEwS5xY/NY7Qd14kC5kIyQYdFDePwkS3/4JjOi7YvIZfqV
         G9wBCvBM4xI/+mgJr9gryD89yxkpbtoCvNqXSrZL7IiAqWa5OiOXEsnoH2FY+c1aI9kc
         Bomg==
X-Forwarded-Encrypted: i=1; AJvYcCXsEx0KAxOC0ghSWAf70DsZZE+uAthjqIIn95j391WEjYDbCYfsiCGxOynnQHw8UJabu2b5o45P5Qrm@vger.kernel.org
X-Gm-Message-State: AOJu0YzFRjgGH3grv3k3ElfoGAO2ZJ1GkaPPmn4ZmRBhOf8l0Xk3kJd9
	w2EWD7AntK5QWodJ9GAk1VfA9LHADSeVyhouyOe/RHf8qBQno81q9Jh2o652m0k=
X-Gm-Gg: ASbGnctysSrxmlglmvwFOgfo0Q3DVYgzUld3EnzL9pillAGyCcXS170DPvJLK6LpQuY
	bA2U8VVI6hiAKa4XrkIGbQ1fnqSzmLCQhE0ncoJBN2TKJZKDHKsODXWNEgbO8Eq9wV0HypzvjZh
	ZbPRUF+GecBmencEy/Pl9ScdNtkwele4YlQ8iFev6VUx5NPUa//KbtMkF0S0lMZ76Ensf8IckVI
	TDNtj+o746yAHDxKAZnKsKw7CGOuSyCrNy99Y63B6iGt5HmuSzw/HNsVQqe6ePg+jKgneJIq0sv
	pomMBbkWuP/4a0Nkti9P1gI0V72urg==
X-Google-Smtp-Source: AGHT+IH9+UmAn6betfIOs+qsqlgP3V0EyfCx7dxI/UYHXIvmC+OteQf/W08K+APQntKbnIIC9qhNXg==
X-Received: by 2002:a2e:ab0a:0:b0:2fb:3df8:6a8c with SMTP id 38308e7fff4ca-2ffd604aa06mr29609471fa.23.1732726386324;
        Wed, 27 Nov 2024 08:53:06 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffae685041sm18160251fa.48.2024.11.27.08.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 08:53:05 -0800 (PST)
Date: Wed, 27 Nov 2024 18:53:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>, 
	Georgi Djakov <djakov@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Odelu Kukatla <quic_okukatla@quicinc.com>, 
	Mike Tipton <quic_mdtipton@quicinc.com>, Sibi Sankar <quic_sibis@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V6 3/4] dt-bindings: interconnect: Add generic compatible
 qcom,epss-l3-perf
Message-ID: <zchtx32wtii2mzy2pp4lp4gdaim7w56kih7jcqes4tyhu24r3n@dagazlsdgdcv>
References: <20241125174511.45-1-quic_rlaggysh@quicinc.com>
 <20241125174511.45-4-quic_rlaggysh@quicinc.com>
 <20241127142304.GA3443205-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241127142304.GA3443205-robh@kernel.org>

On Wed, Nov 27, 2024 at 08:23:04AM -0600, Rob Herring wrote:
> On Mon, Nov 25, 2024 at 05:45:10PM +0000, Raviteja Laggyshetty wrote:
> > EPSS instance on sc7280, sm8250 SoCs, use PERF_STATE register instead of
> > REG_L3_VOTE to scale L3 clocks, hence adding a new generic compatible
> > "qcom,epss-l3-perf" for these targets.
> 
> Is this a h/w difference from prior blocks or you just want to use B 
> instead of A while the h/w has both A and B? The latter sounds like 
> driver policy.
> 
> It is also an ABI break for s/w that didn't understand 
> qcom,epss-l3-perf.

As the bindings keep old compatible strings in addition to the new
qcom,epss-l3-perf, where is the ABI break? Old SW will use old entries,
newer can use either of those.

> 
> > 
> > Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> > ---
> >  .../devicetree/bindings/interconnect/qcom,osm-l3.yaml      | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> > index 21dae0b92819..e24399ca110f 100644
> > --- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> > +++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> > @@ -28,12 +28,15 @@ properties:
> >            - const: qcom,osm-l3
> >        - items:
> >            - enum:
> > -              - qcom,sc7280-epss-l3
> >                - qcom,sc8280xp-epss-l3
> >                - qcom,sm6375-cpucp-l3
> > -              - qcom,sm8250-epss-l3
> >                - qcom,sm8350-epss-l3
> >            - const: qcom,epss-l3
> > +      - items:
> > +          - enum:
> > +              - qcom,sc7280-epss-l3
> > +              - qcom,sm8250-epss-l3
> > +          - const: qcom,epss-l3-perf
> >  
> >    reg:
> >      maxItems: 1
> > -- 
> > 2.39.2
> > 

-- 
With best wishes
Dmitry

