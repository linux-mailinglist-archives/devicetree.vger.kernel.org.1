Return-Path: <devicetree+bounces-103691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A8F97BC56
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 14:37:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10BCC1F24C2C
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 12:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 048771898F7;
	Wed, 18 Sep 2024 12:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EMWYFbLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286F517AE19
	for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 12:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726663049; cv=none; b=pHOah9FVik7MsOuVOKUH03NiaR8bh37sNBRy15sCXMWqf9MJ2VmmAahVwEpNqmcDVt6g2Mula3pYvGNnBT+GHzKeLFg6u6zo1154bUnHJ7eqvlF+fIOnj1CbgzIqAdW3cSsPi7aAyQ3Tyf2EZCusvFo5SieFpR5hl15fgV4npTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726663049; c=relaxed/simple;
	bh=qeQMM8Wd0V3o1iMH4h/+ztFrJIMFY1Yml1czY+r0VCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h1plcBYkmdvbE/mhi5CLFYjuXtrsFnKGteRGzGOBEp49+45jg4swti7JTa9dSHzfFesWaWrs9A2eH8cWXXkgQV6hrWrEAs8BE8hB/gFbDIGwYlJUQMhp0VmXLQJoURPZEfBX4e1saC27WKxrmUlI+Oik+RVMhX2GqGX5QeUUvkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EMWYFbLg; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5356ab89665so7697279e87.1
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 05:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726663046; x=1727267846; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pDqNM7mHosRcM8zPnL70V2acHsNvApt7iBMKoxePkgw=;
        b=EMWYFbLg3EhmbTm7s8QI3+2T/5Qocf7dlaC5I4BaJfiz/WO9R2Ymp9wm/kX35vFZC8
         pSZpDHLSN+gqQwYCdsTY9bEFcJa2OgKhgYVJl1N0ussnFS4ejSZ4az3wrcEKlmZocHW3
         9CZUuv2VFq/9lweeGFo4YKtso/4uzDfcRXuKR1bqt49jFW/rY6ysfFttGl/AL1I5HH5F
         YSwKo0jnYvXJVqyaN9yQj8CfpTAfd42vHxfD3+zFPbelA2lmrwKZ0Hll1yzIZyQgTd4U
         rTnFW2ZVrx//3W3CIdCyIa+0difv+uqN63p60O9zxn1OEUa5AtxKQTbnqNpp3LpMeY4h
         OYIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726663046; x=1727267846;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pDqNM7mHosRcM8zPnL70V2acHsNvApt7iBMKoxePkgw=;
        b=FvrUygVpj8Zijdk+Kn7EO2DAhiYionjV/cYximPsnE1Wfa+9AL2tlQ3iG6rhbNPKJV
         iXfN2XNbncsX3wBPeQYuQhS9mCf/RBQ9UVCwUv++Hqo+sid7Q07TPXwmydhQhyNwE3ib
         tE2WZYWIxV/SHaIU1q8tZVHMcRhbk1fyWn0gxkz9wXLOYyZOJdAnQ7e5uhdng817nPtR
         FTAKznEgnF5fPDEpXnbpsUhj5xKuDFVdwLKNUaDa1LZhjz0wHcYKnAoA2g+/rLi0OFj9
         MsCRFQkhqOuFchMtZ/aZIAqC4B2o6hYuLeteFZR00vpvjySlvdiTMhf34feMIX9GMxHX
         pWoQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4QmzeMJY7hhZzkfc9FCOk1sO/2TosAfjJ9HzPr3Gzxo4bNdn0pzdbI4h3CVl9gtBqqgEWq64FSLFk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz07m//gcKE/uqcsSxuJNPd8WGTj9MTw7n8q8ks1FT1nx8pzxW4
	DrAxHFXEQFeLv0ytj8EYsQzWuUM+nk/TL5Cd3J99Ujm2ytMumGWMntCNc+tM1vs=
X-Google-Smtp-Source: AGHT+IFC2Zdmm09y5YnIjyMsIvLGZyaR2o8tST0ToEXrXSsy5qSuhFwc3Wp8ycruRRTus8dd2YhjOw==
X-Received: by 2002:a05:6512:10ce:b0:533:3fc8:43ee with SMTP id 2adb3069b0e04-53678fba1f0mr12239024e87.13.1726663046217;
        Wed, 18 Sep 2024 05:37:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5368704da94sm1508218e87.89.2024.09.18.05.37.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2024 05:37:25 -0700 (PDT)
Date: Wed, 18 Sep 2024 15:37:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Stephan Gerhold <stephan.gerhold@kernkonzept.com>, Danila Tikhonov <danila@jiaxyga.com>, 
	Adam Skladowski <a39.skl@gmail.com>, Vladimir Lypak <vladimir.lypak@gmail.com>, 
	Andrew Halaney <ahalaney@redhat.com>, Odelu Kukatla <quic_okukatla@quicinc.com>, 
	Mike Tipton <quic_mdtipton@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 2/2] interconnect: qcom: add QCS8300 interconnect
 provider driver
Message-ID: <iebfjkoxcbnh3akw2dev7kwj4ae2yazrlhdpw657z53p6exx2f@tj7ol6gix2dy>
References: <20240910101013.3020-1-quic_rlaggysh@quicinc.com>
 <20240910101013.3020-3-quic_rlaggysh@quicinc.com>
 <3xjvx2kwrlruhhxw4aald26qjf5fzikay2ypzr3mwv75mlmf5q@lmn2o64npfg2>
 <40dd23e7-9ea5-4eb3-bb6b-e1952d746958@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <40dd23e7-9ea5-4eb3-bb6b-e1952d746958@quicinc.com>

On Wed, Sep 18, 2024 at 03:10:34PM GMT, Raviteja Laggyshetty wrote:
> 
> 
> On 9/11/2024 4:18 PM, Dmitry Baryshkov wrote:
> > On Tue, Sep 10, 2024 at 10:10:13AM GMT, Raviteja Laggyshetty wrote:
> >> Add driver for the Qualcomm interconnect buses found in QCS8300
> >> based platforms. The topology consists of several NoCs that are
> >> controlled by a remote processor that collects the aggregated
> >> bandwidth for each master-slave pairs.
> >>
> >> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> >> ---
> >>  drivers/interconnect/qcom/Kconfig   |   11 +
> >>  drivers/interconnect/qcom/Makefile  |    2 +
> >>  drivers/interconnect/qcom/qcs8300.c | 2088 +++++++++++++++++++++++++++
> >>  drivers/interconnect/qcom/qcs8300.h |  177 +++
> >>  4 files changed, 2278 insertions(+)
> >>  create mode 100644 drivers/interconnect/qcom/qcs8300.c
> >>  create mode 100644 drivers/interconnect/qcom/qcs8300.h
> > 
> > The driver looks pretty close to sa8775p one. Would it make sense to
> > have a single driver instead? Or would it complicate things
> > significantly?
> > 
> 
> Yes, the target is close to sa8775p. but there are differences in the topology and same driver cannot be used for both targets.

Ack

-- 
With best wishes
Dmitry

