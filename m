Return-Path: <devicetree+bounces-224974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A369ABC954C
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:37:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 624AB3BD40C
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 975702E88A7;
	Thu,  9 Oct 2025 13:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RngzzyuI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FFC2E2EF9
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760017047; cv=none; b=FRdoe/SPm+Dz3BaDZcxoPWXEjOhDBJ5HLwuHyeqrcx7/+DFz5tA1YRlhDvMQ+cas1uHLhCqIdJlnTXhS19jIKX2WiyryQhv1soGtE9RriFj+I2bdtPeKo2KXib+vAYUeJksaN1Oov85BBRkk+R5URaKGkXT7lXrYRa8NtV8NEWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760017047; c=relaxed/simple;
	bh=mDYDlD+MEj5MwUVmU5NuaLpTKU8yZWPjWxvcEYawWcY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oJKZUTm1MdsU+5HmK7ZIGT3QRWtjdU4fEAlkZNbkl1+aYvm8SNaTUDtdYc8TAmFXbISETXuhkYst948Fz7kCorsjicUN5yOIy6G15hnw3jQwxY6Kh/6aCFlaIPSiNrErRzddk3uu2ZNGDLtlIOaCWfIkZ3stdxf3PSyz4f9IcgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RngzzyuI; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-46faa5b0372so6606065e9.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760017043; x=1760621843; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dq7MfAZyGGxaYmEOpM20FMo+OmujRRkMe061xLULkak=;
        b=RngzzyuIaoez2cuI/KJq8yraoP1kWdrKQ8s1q7g0UqLeag5G1Bh4Tfwve3niLLzRBY
         0FlfjlertMydQFZo8KDNVnzrmcEM2KDLSYKKih56aTCRO2/kvm1eqDAlvbuxWb+m0PhM
         uuHLqbnydb7bzjc6BU35We1YHgJYXijwnHco/Uxn2bH5KLfAUymBwFDa9+scmzJWXxDs
         UKgWa89Sckdnfk8+ziixXFQrUn24megJ/6sZ954+ne32OybHd1b4LIaB1rooG3gmg7Z3
         IZPXirkA3gTpSuJucp5pVBT+ILQRpxdfamhwKD/8qm2Eqa8q0e8BB64u33RKpFCzIjeh
         P31w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760017043; x=1760621843;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dq7MfAZyGGxaYmEOpM20FMo+OmujRRkMe061xLULkak=;
        b=Ru+nqCkgugNVuu1XGj1IRx/s4/ZZUX0+vCn0EGW5ift5qkE4mrx5HFIy5tbS3veUgG
         70RrmVnOMdk1otD0I6bSzpKi35PNUAROExZaf/JTwsfUZbL3sYc9JoeUCTT6JFUccxAB
         vAFaNUnaViyeozswj/4E7xaocfYXpSUvYBXO1QdW/CPd2n9f1BPGvKjg1nCE5+1ZQ06u
         fJTfgpSLPcJuyOpJb/4TKje8HUPkBlLuaj/mScCNjH3kqcQf6iP/2e5ZnX5kp4phUh0R
         X4Q3lDbAVYsWJ4Dx8e8JQcn/bLgwjbh4hCviNPKnSG8ggioi54Bb5PQainxQtQO0aW2L
         7onA==
X-Forwarded-Encrypted: i=1; AJvYcCVOqmPwcVQoCRyOCD80vwkQImG7qY2nd4yCYy4HTb0C1sY6IoYCNdkrqIVXvU5qAX+IE4ZTKe7qXFnl@vger.kernel.org
X-Gm-Message-State: AOJu0YyQIGXeK4FSvXgwR3pQJD4VyxGMwLRDpkVKJgCApjyDm6Pt5qDE
	g1cKUrpeokiuAy/octdV4ECbN3qBQWguaaiyHeMXQNh9on0DaXlzeGoeIjNkPmE6HQ8=
X-Gm-Gg: ASbGncscAoe4F5eNEYLgfn+qUFBgFXcM97pFpukIU+uMzOKumH+IeW+XXptsGCZNiwL
	mVXusxSbXIgH4FCHcedqPoES+mIWDsfq88K1Duf4ZfNJaQkFbxxVhMiF1cEFq3Y0tQXXi2JYUAa
	042p1xU3PBExoGC0j2TSw9IUXYkU/8n6iNjbpgckUrYch4fl5OW5DZsHlmW/72+n2ogZuiv4aKh
	eQ+x+ZUpoM7YaifxBqiokf5h6awfZozPYLLk0lonceMkR4yEo01ZxHJ/LEQhWJ6SgjrXg1X5EvX
	PS2traMmeH03bvXVrLQ8znT8ERFAik2PEvPET6VFp2ArTJ02GrAf72IPLqiEP8rT1LHi0oWSVh0
	2cSUEsO1pM7/8jQm4NBb+wAB+5LfPdSccz3noicthOdBi6YQ=
X-Google-Smtp-Source: AGHT+IFYabcVFHaPLEaZdWVgfaLIPcYjQXcICeP9Ed2Hj3ZjwMcQN94p9RtEMitSp/6LIwax0gqTng==
X-Received: by 2002:a05:6000:1a8e:b0:3ff:17ac:a34c with SMTP id ffacd0b85a97d-4266e8e46b1mr4959913f8f.59.1760017043056;
        Thu, 09 Oct 2025 06:37:23 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8f083asm35033794f8f.43.2025.10.09.06.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 06:37:22 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:37:20 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Describe the full 'link'
 region of DP hosts
Message-ID: <yblmrllwwincbchnjcdmsoty53dogkzptmap4jcupnnoqzbqn3@7hc23mopnplm>
References: <20251009-topic-hamoa_dp_reg-v1-1-4c70afa5f029@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009-topic-hamoa_dp_reg-v1-1-4c70afa5f029@oss.qualcomm.com>

On 25-10-09 14:59:18, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The regions are larger than currently described. Rather inconveniently,
> some control registers, including some related to USB4, are in that
> left-out chunk.
> 
> Extend it to cover the entire region, as per the hw specification.
> 
> Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

LGTM.

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

