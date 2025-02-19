Return-Path: <devicetree+bounces-148530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A9EA3C5AD
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 18:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A70E4188D222
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 17:08:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E7B521421F;
	Wed, 19 Feb 2025 17:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c+8Q81fa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983351FECAE
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 17:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739984905; cv=none; b=C+o72h3p2XYkUlEEeYvTqBcMd4iR1hQmGZVduIeeyrZLz+lgf+045RRgJmOwGVlJnrKgw18DXBlT7L0w+dK0ZDQyPq/sMxaToaqWv+0zS8tw/yKAy7rZJG2ePieM83+4rMpQANB1z3YQ0K8qnjhvPHQEunZv3LDsfsxK/LzsvyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739984905; c=relaxed/simple;
	bh=sOZKv/GYH/zrpTdWa6jU7obP6mXkamoFJmgPvi8CMoo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O4atxQ3S6i/mKI85NsHzmtdy8N8ULJuSS1XO6vtSHqwBUUe4S6h90alFEuWPXp39d9/7ZOATfmZ2qMkPrD8f00YcUmB4Wk7FguE9ETRVq3YcgP26pj2JVZ6uFTRAALKXude/WdDTfduwvvTvcKSIM+6uFMOyksxL1ok6DvrKExk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c+8Q81fa; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30613802a04so73903041fa.2
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 09:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739984902; x=1740589702; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AkbkUwNAuEhe/BbhZNs3/ygs+aQHipW7xTCFebXTARI=;
        b=c+8Q81faprSiRkyHSG6AVEc5QlcLcljPpbve79OsHuxKkdWqh2nRiAmUAVm9FyF1kO
         bLpbzSdFBctuuUurD6K15ITZmPIaoc9gvAO0OlriHjIFsxC5/0obU1RXINVylt2ddZje
         RGXTOicNcXZhRhv7ehMLd/acC4q8vcxgw6C4frtX/saDCIiXqSRbzOKIGcMx2K+Ycgf/
         TTbj0NEKd3qJhTdas0V3AaUFqxqkVKiKkprxsFijGDVvvHN78bJQU6h3tp8V3Dy1SDCM
         Q5kh+RERTvT5bCdZu/IQxKxV+n+EGh83/JnSnmRgds/GkAgHimL9a0q4sAPItlHM5rW9
         63sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739984902; x=1740589702;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AkbkUwNAuEhe/BbhZNs3/ygs+aQHipW7xTCFebXTARI=;
        b=j4NTF8ZEI8cjsmMfSTnNFnetO/K6Cvc1ZSuSxJbkiMtug/Jwj2lGnUZfV8ecNftPds
         VshugbptdF2Od5D7/aipRfdQU5HRBVs91AtUwiYZjfdr5f3eBqcPS/Y8+HvfQ6/7vRZR
         JbuqYFkCZ2kejuIeEjQDg2blSsFUZEDIwLQyu5IwUGVK1SJSGTGK6f8EMqlWfHqzt6M4
         RgjSKlqUcVRTWytb8s5bfyH0yrZOEr9AXE+6iXH0XA9iQuySEwHj59ssG5XNVKt3vjPP
         pDmHiWJAnPe7BB/eOFSCZkvXJIf+fvZj3yRwvQLSO+qb5CWriO9JHvjW8jROYvL1YW6z
         8haA==
X-Forwarded-Encrypted: i=1; AJvYcCUY1TsqM5RzVjTvl1rD0300m9MpzOHAPnoQq6I5b4v7d4dwmAHN0RvUaE9KgN5pNH9OUFmddFlYXucI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1kFI+LGAKpiIAlkC7IlRI9K0/RhHBMJNP41RShv5HQIHD+njQ
	JnJmrJUlEyn6jVMDRAGJgRhPr9wbGmP+u54PDr4mQVxfT0JOzkPe+OrHwJ8atHk=
X-Gm-Gg: ASbGnctBND2sYSN1HPQAMJwCr09xZNMFQ93qedN5BZhj6P5/rp9jtPF33mvU4DJmhm+
	/j7xRyME0gm5vg97jnbOAwXu+9jv+Xrj5tMg7xp+6lalq3eBXf8NlnbAf9vf92w65OI07rqYWuE
	qstPha+cUoj66dD+5yGQmh5PHyIkQa9PBOotlFYw4jZFu5NRU9OWwml6m6NcCwLnw9IlNbKedJ4
	XcSu5Uh52eFQbsWGn95rjLnS0s1Nr0fT2Phzpj+gYdQEtaezjrhjof22/pqT+rEUECMSCeStjMH
	VMPw2bF1W1GahZ9nkfY00AWLnGu5A4/GX2a4PMpBGDOtezommp8Ffc/yE4JbU7YZhrjvvx8=
X-Google-Smtp-Source: AGHT+IHte1Sutlq3pq+Edaji2NXEVszWbf8srrzfEIZM35OvWAtnBNuKusfR7DVo+dFSq5pnZtpuNg==
X-Received: by 2002:a2e:9dc9:0:b0:308:eabd:299b with SMTP id 38308e7fff4ca-30927a2e076mr43465961fa.7.1739984901701;
        Wed, 19 Feb 2025 09:08:21 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-309216aa863sm19127271fa.98.2025.02.19.09.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 09:08:21 -0800 (PST)
Date: Wed, 19 Feb 2025 19:08:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v2 05/16] dt-bindings: display/msm: dp-controller: Add
 SM8750
Message-ID: <h2shpen65r7v4in54avsez7qtlwojbt2cthyomqrsgs5ewprwb@bn53suqrzkac>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
 <20250217-b4-sm8750-display-v2-5-d201dcdda6a4@linaro.org>
 <aqpuik4zitdfuk4pahn4wyzxdvxldy4dcqjs3mhr6fqtxpoxhf@ssfzzbfce2nu>
 <2dfe466c-ad94-4683-a2e9-a49e77a61f4f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2dfe466c-ad94-4683-a2e9-a49e77a61f4f@linaro.org>

On Wed, Feb 19, 2025 at 06:02:20PM +0100, Krzysztof Kozlowski wrote:
> On 17/02/2025 19:58, Dmitry Baryshkov wrote:
> > On Mon, Feb 17, 2025 at 05:41:26PM +0100, Krzysztof Kozlowski wrote:
> >> Add DisplayPort controller for Qualcomm SM8750 SoC which so far looks
> >> fully compatible with earlier SM8650 variant.
> > 
> > As that became a question for QCS8300, does SM8750 also support exactly
> > two MST streams?
> 
> v1.5 of DP (starting from SA8775p , then SM8650 and SM8750) support 4x
> MST for DPTX0 and 2x MST for DPTX1.
> 
> The DP in SM8650 and SM8750 are identical, according to datasheet (v1.5.1).

Hmm. This also means that QCS8300 is compatible with SM8650. I'll let
Abhinav comment here.

-- 
With best wishes
Dmitry

