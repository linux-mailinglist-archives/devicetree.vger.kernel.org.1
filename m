Return-Path: <devicetree+bounces-117873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 720849B82EE
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 19:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1934E282B4D
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 18:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79F71C9ED4;
	Thu, 31 Oct 2024 18:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hIylKOPj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797DC1C9EA1
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 18:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730401024; cv=none; b=emtxtj/vskRlrEJSSmPcTzY5/8Hi1JroLWilrrM9c1Kc1nPCg4LRvyND+51xIEJvqXNap4o/fFrndIGXNQZKsI65kt0xNJmnTdgNW9ZY2wFM25P0eGcfIFw44mwU1kcETHhILuGUqzv+E7NsvVajGFp/dmyDyNQR9KRJgDCdRmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730401024; c=relaxed/simple;
	bh=xMu6QWNdKFvJUqlA5KkzFsPtFC7j7Kqh7tHTVasaSCs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YpgHpOYUZeQoPRuS/syBR6TAL9saCKjOXfjLBM039nxhpAu6AOydg13g75i2wDs8orfESH11gbGrHPIpGmacsrK8lEGBEdxxRtJU8908NqHOgpaEwFNp0lBgxad07g4YWF5gOEZOaQs2o2gGlE80tTrClV/eq0WFYmDiNOb6dXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hIylKOPj; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539f4d8ef66so1692015e87.1
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 11:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730401020; x=1731005820; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pJND4kIqSn03jp/YKXMT+NaJTpO4BmVDS9cnPvfoOGE=;
        b=hIylKOPjMMUBFiOJSj8y783Yg2DPFvs5g76aS3jivSGlZwOm0dND5rCzH9Aruwcjj+
         D1C8gNq3igs6zdSPzqWyhMKcbKbKSmy97+6jWM3uRpIegomTE6MZ4cwU8vmMtwLMNOi9
         8aYBWX2OKQd73gNkOJvyEDD167aXn4xdvEQH1yVoDFUeNisRJJ7sRNIR/dEYty0ou5VR
         E2Q8OM22peXdCmtFNNXSD1ejr1W/6aeP8dSKvUMgBcfIt94Rmavnz9+tDrPvUtiPCUxE
         93VaVqA8c0a+1ndHebgW1aq2HeUwrnnxn1IRKpWFXCctQ1y1PxAn/iiHvopFrc+z/OLF
         1Q6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730401020; x=1731005820;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pJND4kIqSn03jp/YKXMT+NaJTpO4BmVDS9cnPvfoOGE=;
        b=UO06L4kW9wFHrtiEg8ox8Saghw4gt2oXMw0FNylga3FGVbUlY7TGPCcs5hh68kg0/X
         oWhN2a4HmfbpZ5GJhqSci1/NnFcHGaauSZJqxQMCz7Kmk2q9BCrH+jGeSnJHxjKHJ1ii
         b2AFOJMAzcvo4Wwx9Q3Bj6dFTzFQ+Hd7h6QRSi9ZcMsLjtkBTY4XIc2SpbnmdUvK4WBK
         BQEd6GlefizfzuGKg9i0h2+KxSAgoqamMUfnUsKeZugs/HKMuq6Pm5EKJYGPVvamliRj
         iriUcEYKfjGK4fb2zj8gYhmknnxbqPXQhiUdyAtMjfV8aN+Jz/iOfSRnQ5QtTWR5zzNu
         bAFg==
X-Forwarded-Encrypted: i=1; AJvYcCXdyDMuscv9smVdUuPsrNFZHbx4oHoKTk3KqkTxc0/LdYqJH6daPunpH1XHDAgvbsddB1He5ek0OX5B@vger.kernel.org
X-Gm-Message-State: AOJu0YzGc+g3Ed9orsH6bosD3ax28FYRg1fNDRslgwkLuHbWE8AFz51Q
	2x2gtwRL4oroVq9FDGg1KQpQmgV54eofcmbnb9wXQ4+iFNwTMhgthS7WKyT2bhg=
X-Google-Smtp-Source: AGHT+IHqyWCnz9PxeWHFvHwzUWmLNPQbCOVNeC8Xy/vaiXFFXbcvmZZ7cUBpzlpnQcRKUtVF/gMlcg==
X-Received: by 2002:a05:6512:304e:b0:53b:1f90:576f with SMTP id 2adb3069b0e04-53b348fadbdmr11024344e87.22.1730401020413;
        Thu, 31 Oct 2024 11:57:00 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bc96141sm298657e87.62.2024.10.31.11.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 11:56:58 -0700 (PDT)
Date: Thu, 31 Oct 2024 20:56:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Odelu Kukatla <quic_okukatla@quicinc.com>, Mike Tipton <quic_mdtipton@quicinc.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: interconnect: Add EPSS L3 compatible
 for SA8775P
Message-ID: <vljb7wwqaaqgdcm6whf5ymhnh4jbtswyibto4qpqmbgwvshudy@unh3jhbyeac6>
References: <20241026123058.28258-1-quic_rlaggysh@quicinc.com>
 <20241026123058.28258-2-quic_rlaggysh@quicinc.com>
 <7k2vnjop6xyshquqlbe22gm7o5empeluvsohfmq5ulnaas3keb@yzomhzi4w7vf>
 <2ac4604c-a765-48b1-84b2-8979f18c29a7@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ac4604c-a765-48b1-84b2-8979f18c29a7@quicinc.com>

On Wed, Oct 30, 2024 at 12:23:57PM +0530, Raviteja Laggyshetty wrote:
> 
> 
> On 10/26/2024 8:15 PM, Dmitry Baryshkov wrote:
> > On Sat, Oct 26, 2024 at 12:30:56PM +0000, Raviteja Laggyshetty wrote:
> >> Add Epoch Subsystem (EPSS) L3 interconnect provider binding on
> >> SA8775P SoCs.
> >>
> >> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> >> ---
> >>  .../devicetree/bindings/interconnect/qcom,osm-l3.yaml         | 4 ++++
> >>  1 file changed, 4 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> >> index 21dae0b92819..042ca44c32ec 100644
> >> --- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> >> +++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> >> @@ -34,6 +34,10 @@ properties:
> >>                - qcom,sm8250-epss-l3
> >>                - qcom,sm8350-epss-l3
> >>            - const: qcom,epss-l3
> >> +      - items:
> >> +          - enum:
> >> +              - qcom,sa8775p-epss-l3
> >> +          - const: qcom,epss-l3-perf
> > 
> > Why is it -perf? What's so different about it?
> 
> The EPSS instance in SA8775P uses PERF_STATE register instead of REG_L3_VOTE to scale L3 clocks.
> So adding new generic compatible "qcom,epss-l3-perf" for PERF_STATE register based l3 scaling.

Neither sm8250 nor sc7280 use this compatible, while they also use
PERF_STATE register.

> 
> 
> > 
> >>  
> >>    reg:
> >>      maxItems: 1
> >> -- 
> >> 2.39.2
> >>
> > 
> 

-- 
With best wishes
Dmitry

