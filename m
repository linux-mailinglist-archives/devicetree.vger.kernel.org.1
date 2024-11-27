Return-Path: <devicetree+bounces-125035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 301479DA94C
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:52:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4CCE281950
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C23481FCFD0;
	Wed, 27 Nov 2024 13:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qidVPDIE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02E61FCF66
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 13:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732715521; cv=none; b=CfRtmFHpasbWCa9IYCHCg/PiIP79mw29qu9LZUf35/MSCBo8hnXflTL0tegqFQjt22sgbxRNenhxB6UkJGVLZyAKyDvJl8Wl2Xj2taGCGivqMRNyi75kdDGuzKa7jLhV0MVNxKliVGN+nbpwj/GVXvkZ5GqLAcZpW+vH/vYOJos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732715521; c=relaxed/simple;
	bh=xBsYgLoC7NlLjvzJe9wyiz6rymUCb9R/llzvivHufJU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h+pri4odOQ5KYundtGEkV4SWanfVgaqvWwd6vS7OILHKn+kDgt0s5IqUYYO011VksMlj6bhnz+JfuECqktDakyG4hhHo0HN5RgcFNE+8ifXKLrMnpOVC8xJadz6pOhozIKVFc/zEzl8E1QqvgEj+XGWjptZiJg7Tkp9B9tn6kFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qidVPDIE; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53df19bf6a9so624075e87.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 05:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732715517; x=1733320317; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4oRJCCe2Um5R31F+gAGqkSP9r7+5D01i3fvjJRVsk2g=;
        b=qidVPDIE4lKsyWaJaUZp71g9dxnrwn0hTaSdiKu8F7W+LyByembQ4FrsP4zC32GDat
         AJBPtFbW2ndZmrA7ht1Nl7VVr+HJu2k9TFmvMqVPox4Oh9E/tZv8WBu42a/2hC/YUNfF
         +UnHPqGnqi3/w1u4gSIfZyDyuYH3h8aYRbUdqksHvi9kkqX0//LARdXxKkHBm/yvvvyy
         uqhFn+ssSme/27uqG0FCV8xsoe20eAueTgLwT63hD+SomPleaCL1ufpkp/UH6eJvSb7w
         vMMi8BIL60hbJvdszFbSbb9F0D7eKuCif9mcgzDD7YaympQeC5LQQjRedFamSB90APnx
         rkqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732715517; x=1733320317;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4oRJCCe2Um5R31F+gAGqkSP9r7+5D01i3fvjJRVsk2g=;
        b=e3bqBE/nNXQofuTY/jCgIGl2vBuiY9fZzV8Sxvli2S1CaZ3+hB5MOUTRK1qyMtSmvB
         wdzPuWWDH9G1yC/xYDsmyS7ln0DEcBa+qAozjkTVmUGi2d+EL+dqaEHaoXx6yPwzGZi+
         Oc+U8k/RZCpr8YraZd1Tbfn+PcPqnX+fLAnp6V/SUcMpv0g+BQXNuk4AIyG5TZ+v5hPi
         ibqwn3wFlcbm9dZHiasBld9bMEFislMsfYn+E2MqYiQscT6hbppBfwHyrGKNYKeIxTIL
         tPhE5HEMq7EuicGADav0fy/hkpvp91+fKP2yMQJVgaoXZQqp5nRfETbhNxkmMFw+HowW
         6bMw==
X-Forwarded-Encrypted: i=1; AJvYcCULr2PDq9nSE1vbM0YR7vpzIoAT74IANtguq6KkySlXExyoDHxgF/ISCrhCf5jbGWJSJHubHHw4ihIE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3wGW/OjjMWI0xsYYQYSN1uwlTRRDy15fB1KGQInk7s2iJFgF9
	AFIRTz62fAZRbr30eXxoL0U9+DCz2QohZHQBknFAi5A4HevaSIklQPDlt/ZB1rc=
X-Gm-Gg: ASbGncsTTlGZdWqJhD4q0UwAyYlnvZMkS3d3DyqXbGjqr/PVpEEruF6bzmjpFnw1vq6
	Zja9Or/xZOvLRapfl/7Z6Ebb9nP/N6cSkMFwNocyrdrHpANT8TtH91rOn959M/PBLG+RGy0xuvY
	IapQcjxvUc/OgPmCKoaNMETgbuQtNbO5lXWGU0o8Smwfec4f8hAluNEGDtU1WBgLRXREm3QSCW7
	hELeTBIa1Mcfk36CNFfbdMERknfcuntwAM1nhpCF6IQSTdIjPh+WnQZgAd6SJPPIfjxLDZhq0bp
	dIcUrzImwKEs2gUo+7CGoo+G2tEtSg==
X-Google-Smtp-Source: AGHT+IHc+fYe+1gTHsCImj4rHorU0Xx7j65zTp85QvQyekS90THXiPR/B4iFgAfn3+Ms0AcxbnUmhA==
X-Received: by 2002:a05:6512:3e2a:b0:53d:d431:7f3a with SMTP id 2adb3069b0e04-53df0108f71mr1810535e87.44.1732715516740;
        Wed, 27 Nov 2024 05:51:56 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53de91f1e26sm558382e87.25.2024.11.27.05.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 05:51:56 -0800 (PST)
Date: Wed, 27 Nov 2024 15:51:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
	Ritesh Kumar <quic_riteshk@quicinc.com>, Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/5] Display enablement changes for Qualcomm QCS8300
 platform
Message-ID: <amhqdc6kv6vd66bwwyhozlqptqjzuefddiabgw5ndko3rj2gwv@5choqknbpeb2>
References: <20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com>
 <675c41cb-afa8-4386-8dc9-026a36bc1152@kernel.org>
 <8982d065-9bc6-4036-8004-80b1681eaf3c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8982d065-9bc6-4036-8004-80b1681eaf3c@quicinc.com>

On Wed, Nov 27, 2024 at 06:54:10PM +0800, Yongxing Mou wrote:
> 
> 
> On 2024/11/27 15:13, Krzysztof Kozlowski wrote:
> > On 27/11/2024 08:05, Yongxing Mou wrote:
> > > This series introduces support to enable the Mobile Display Subsystem (MDSS)
> > > and Display Processing Unit (DPU) for the Qualcomm QCS8300 target. It
> > > includes the addition of the hardware catalog, compatible string,
> > > relevant device tree changes, and their YAML bindings.
> > > 
> > > Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> > > ---
> > > This series depends on following series:
> > > https://lore.kernel.org/all/20241114-qcs8300-mm-cc-dt-patch-v1-1-7a974508c736@quicinc.com/
> > > https://lore.kernel.org/all/20240925-qcs8300_initial_dtsi-v2-0-494c40fa2a42@quicinc.com/
> > Above was not part of this merge window, so nothing from your patchset
> > can be merged for this v6.14.
> > 
> > If you want things to get merged, I suggest decoupling dependencies.
> > 
> Thanks for reviewing.Can we keep the dependency on above changes and merge
> our changes after the dependent changes are merged?

Just drop _all_dependencies from display/msm patches. Otherwise I won't
be able to pick them up until 6.15-rc. Use ephemeral DT nodes in the
examples.

-- 
With best wishes
Dmitry

