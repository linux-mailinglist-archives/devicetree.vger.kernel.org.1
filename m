Return-Path: <devicetree+bounces-212630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28787B435EA
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 10:37:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6DD75E313F
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 08:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 636202D027E;
	Thu,  4 Sep 2025 08:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wI96XdEJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79B62C17B2
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 08:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756975040; cv=none; b=keZ911o+rK9dPv8MStgaWdf484xrMb8RJSHL9xTUDQ6EGIYNVL3aWw66ymX2oiMxmznjD3bzFfjD38ixOpwuA1uFKrU+fkeu2agskEa8FQV+rd5F2I8y1AcHUFt0MsAULke0fQ27lg5kIw3kyK/BEn0Nh0wwGBlSGD1lSe+SQjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756975040; c=relaxed/simple;
	bh=aAVhOAy0/IwEfcSAPp9ppgHMCgG8/TXN+Krhcl0WPdU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c9uc5jSyxxWVRKnkJvwOpR3wWePgXwJSP05hdfHh11eOAiZCEt8LQt0PbVQshiq+LRBvrwvy4wQD6zIlL96n2cab7S+HCSPphONWIPrVKwzNYmHeI+UNGt/2lxZz9/ob2l8rCRCXPeFtz7oTXUebMA6pHwoIIj9NiMsR8iqkv18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wI96XdEJ; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45b9814efbcso13069005e9.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 01:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756975036; x=1757579836; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8TvpDldbS6p0mFVJOieeQjela+t5WFiWiQauN+gr6YU=;
        b=wI96XdEJBSIB2+O5feMmRh+gZvt9ZqBXzQ7I0eCmuZHDM4KG4g10fpOxxfgyhre4qN
         00r4z3ABVe1Te5pIVV14k9z7D+cNsMYxc7Ir4MMb77NRu2sQ0Ms1+lRoqiJEkF76FPY3
         6q+sQW55IghcXq5jJCRHRBcu2NKHXtWtmpus9yMEkpohAI4Kl/bSdg49sqM06LfoRkXv
         n0KAue08z7cDbbum4UCubeIrYKrrKxw2hixnuvOl7DqwAoeQ3NEhrnM+DSSd52pVEatL
         FBbNv3r4Ao8DjpU2z1BwOjn6CkgXUExYZPAC9c20lxQkws9lxNAYNDP7SEWOA+DPnQQd
         c/9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756975036; x=1757579836;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8TvpDldbS6p0mFVJOieeQjela+t5WFiWiQauN+gr6YU=;
        b=C6WhH+GfFyVflOwOYkgU3lStCAd+NsxueUMFFLzggLWe/5dSSzJCjClKOFOyjgF1Fd
         FHqJ2xK1xvsuRZiLveceUnbwjG3nbNFU+LZpulHMR96A/bSw5UL04XQ+hJECeDrI8vBt
         xmaigOfFxjYbdTkZwWuH/l7p8ZST/1+KqhAKmeybXan+zhJHvab6CUnjH7DMfaQnSJoo
         jRnc4bgprAZVJr0x1mG2UX+jedLawPdKlwcKfwYvfssLiUtbhjdq350CZrcaBco/+PqP
         YaNLVs7RsyzGWQAlwBS/fXTUY3ysDWcSCfmE7S99yvppnibKvcQq4/5e5/dA9Lw06cCb
         EHKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcPnmcHhPSFtYitWOW1B6o3Uon40SVojKTtoPurWZalgYJxs7Adj2z0aJWRO7fEBPsXJRM6dRdrbyY@vger.kernel.org
X-Gm-Message-State: AOJu0Yybua5Oyy+qvGuzAHIB5hCqf3lNhH/1VgtA07trXYb/tHmF0meu
	th6KMp8EIR8miRlSBhST2EYJUI5+uBuD5tJvVH5FE9e8N1R013MBuBQlLCaKlJE5oEA=
X-Gm-Gg: ASbGnctaoIqfYwpL3KKmW47mfpn2tyrv/rJoPbMclFSikxQQNjddgpNVnyqPcSOHrMl
	bzV+oRSOUZzTdWm6ZI0OhVVCzlDbHucuc5ua1uHYXulP7QZx/SDx+UoOmPu+4VRSBlR4nk+MTYK
	f+YToo5La7kDDCE5eLZTolJNLmGoyuluqWSZi7eO05GUvhPVJaPrmNCnXxBRiriX/CwIA1vDM4i
	bGmcbwz+g8gtEneqEYH6H6Z8RLn4BJZhS/pTmJVXmNzCkn8TVvSFJWdw4XuxN9I1eFi9W3kGAGj
	Jj3+Mw2gvzcYH9RtKHoZEi9ZFBWbIaONYYH+XenkEWR6ZJuJAGAem3SKYLGJ3HyTd4A/eEHd0Z7
	5n9pBMI3hABAH89UjBloqY8FL23IITs7h
X-Google-Smtp-Source: AGHT+IGYkXiZRUXlOQf3empsPbLwkG2nRtYg4Fk+8qLi58TcgS/9+AaJQqZP1jo3HcduMoYVw1R45A==
X-Received: by 2002:a05:6000:1ac7:b0:3e0:854b:20f5 with SMTP id ffacd0b85a97d-3e0854b234bmr1369457f8f.21.1756975036044;
        Thu, 04 Sep 2025 01:37:16 -0700 (PDT)
Received: from linaro.org ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6f306c22sm362172195e9.13.2025.09.04.01.37.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 01:37:15 -0700 (PDT)
Date: Thu, 4 Sep 2025 11:37:13 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <quic_sibis@quicinc.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
Message-ID: <5dqyfunemo6jcj3c3nwmhbazfbackja5dpgsmu42sjzaxwbfok@rdwj3k7nsm2n>
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
 <11155d6c-cc11-4c5b-839b-2456e88fbb7f@oss.qualcomm.com>
 <20250903235138.GA3348310-robh@kernel.org>
 <1b92fe18-67bd-4fda-b7c2-952ed96aaa61@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1b92fe18-67bd-4fda-b7c2-952ed96aaa61@oss.qualcomm.com>

On 25-09-04 10:11:26, Konrad Dybcio wrote:
> On 9/4/25 1:51 AM, Rob Herring wrote:
> > On Wed, Sep 03, 2025 at 03:37:25PM +0200, Konrad Dybcio wrote:
> >> On 9/3/25 2:37 PM, Abel Vesa wrote:
> >>> On X Elite platform, the eDP PHY uses one more clock called
> >>> refclk. Add it to the schema.
> >>>
> >>> Cc: stable@vger.kernel.org # v6.10
> >>> Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
> >>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> >>> ---
> >>>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
> >>>  1 file changed, 27 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> >>> index eb97181cbb9579893b4ee26a39c3559ad87b2fba..a8ba0aa9ff9d83f317bd897a7d564f7e13f6a1e2 100644
> >>> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> >>> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> >>> @@ -37,12 +37,15 @@ properties:
> >>>        - description: PLL register block
> >>>  
> >>>    clocks:
> >>> -    maxItems: 2
> >>> +    minItems: 2
> >>> +    maxItems: 3
> >>>  
> >>>    clock-names:
> >>> +    minItems: 2
> >>>      items:
> >>>        - const: aux
> >>>        - const: cfg_ahb
> >>> +      - const: refclk
> >>
> >> "ref"?
> > 
> > Certainly more consistent with other QCom phy bindings.
> 
> That, and the name of a clock-names entry ending in 'clk' is simply
> superfluous

Yep. Will fix in v3.

Thanks for reviewing.

