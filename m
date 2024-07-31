Return-Path: <devicetree+bounces-89754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 070A2942A4E
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 11:22:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1CF5282408
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 09:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B2941AC42E;
	Wed, 31 Jul 2024 09:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yAGAlv+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777561AB538
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 09:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722417684; cv=none; b=FbnvHuICqUjGLH1pHeOR+ehTuTn68S4IwPHVsggTDSbCMTb8XSI9urRJigk5N7RVDhSHEKMvyno+/dSmxUUzjGjI6HZYSJF2yrs4EQbWFD5zunCWYRDVaP0isK8WpvppcTamYqn/b45rG8bLNjLKdICmk43OQdStOy4NAwH5gBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722417684; c=relaxed/simple;
	bh=xj0mCD2QgttQlP9ZbqYxOvfeB8gbnbRMMgq5AJzeUXI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rdcNc2g/FYOglAeeshbkZLVKX8/vCddvrYNQmYI9mM4tUUvnp1qgt0Ck4mKAwEltMhHvpAG4Plj9RtVIJ4iYgVRWqhqEowkVpbWwklfiZUDnXbklf3fSK0Y/19ZJyZCcTtIOhITKM+brPjPs1xxMfEbflDxtFeA3/z3T/2Kax0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yAGAlv+v; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-66ca536621cso39521277b3.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 02:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722417680; x=1723022480; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DnUjBn+/d/YDX4qkQNOkPARCeLeNJpUfQHIds6ii0e8=;
        b=yAGAlv+vdeFhsJ7dOOMvx6PMFyQhT9eVuvSa56gxjBSLkZZ4AbmGrLdUM69LxhW2IW
         DX6gtVaSfPrBrIE4XxI0OfK3DNxlHy4EPHLGEpqQ27X7zz2g3Z/Z4y7mVaO9m3kajzWM
         qkta2pU2IgOw+18VQua2AKtnC+CmIoYIYbItlxRc82Xtwgmur8WJajchZoAq8enWBtID
         uqB4wFaG4xtiWnDm0L8KNPmo76Gmyo98JfsdiU8mhqya/x7ZQPOL2jltxGgkkhZb6vw5
         2vkdlzh/YuyoTDh5YeHFOmt4SawejplqwsYK/hk0cSHuWLMDf1KH8vhUEL7DdbG5Y7Vk
         Mzig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722417680; x=1723022480;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DnUjBn+/d/YDX4qkQNOkPARCeLeNJpUfQHIds6ii0e8=;
        b=nNBJaOUqhoOK4AIcP60UWqfDXMfNiF7Y1KcAxunth7140ButvLnv9vOcZCn0FI6JFY
         r5GnWupWMKSfmvWULzD8GInd4VU+OQ0zh+mzWt1Or+mW2oi8OlKuvsm695nDrxG6huwM
         t1BFJn/iDyBE3KJxxbu1gU+XMUTJr2yTlEdsjsb84oChseWT/yXYRRTjpv/CJwFCPfZA
         B9ZpNyrFQQ81EM8VxoqanJgDIGZg+bu30NOSlcrs1rnSWpiHggUEHYw5DoJK8N9uII3h
         2V5O6ji094rzIi8+pODcn6nWOprU89v4qihVSqOpOvXV5Q1TbiOG4+zA8rek4PiTSexM
         3HTA==
X-Forwarded-Encrypted: i=1; AJvYcCVQ7ZZkLrO5uiUtiDAIFk5VpynUbkW+XT+Mbp3S3P5S1yIGMZ+kqBaxWGqMnupOyM4mlN+yM2ssUfnZGSqRZj47yKKIqd2Iz2OpVA==
X-Gm-Message-State: AOJu0YzWZdO9ziU0uTLmm9ZeRG53gGeq29uRAVkaDZVOc7f9UdmiHMp/
	ItezP2PiguAk7lo2ePs32Vx29amhBPgF+If1umaEDMUAMCqGmR5N7plbEc4fi8DLjMhNxgdSyIP
	pZKHA3Uv3UG44mI2YSEHPfKWSX5J7261hLBxtyg==
X-Google-Smtp-Source: AGHT+IE5XcOpPj6iLzHjSTjIuq7B9+/rLrwh+EhDwGDUkVmfRrx7PTZ9akE/hgDNwQb6oBXZsZmh7/DDfnnxh+twdkA=
X-Received: by 2002:a81:c302:0:b0:64b:77e:84cf with SMTP id
 00721157ae682-67a09d5e528mr135046717b3.43.1722417680503; Wed, 31 Jul 2024
 02:21:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240725-gcc-sc8180x-fixes-v1-0-576a55fe4780@quicinc.com>
 <20240725-gcc-sc8180x-fixes-v1-1-576a55fe4780@quicinc.com>
 <g4etw2efnugdsv73ejbbqfxmumy5m3oqzkpeqexzpgzlxsms5r@u62f5jcskqfd> <ea7fcbe4-1822-eca4-7492-55f1f2895605@quicinc.com>
In-Reply-To: <ea7fcbe4-1822-eca4-7492-55f1f2895605@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 31 Jul 2024 12:21:08 +0300
Message-ID: <CAA8EJppJR=sDj3ae2r9_QvcmG8vr8_GEPdiFcEit6L=-regXrQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] clk: qcom: gcc-sc8180x: Register QUPv3 RCGs for DFS
 on sc8180x
To: "Satya Priya Kakitapalli (Temp)" <quic_skakitap@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Taniya Das <quic_tdas@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 31 Jul 2024 at 11:44, Satya Priya Kakitapalli (Temp)
<quic_skakitap@quicinc.com> wrote:
>
>
> On 7/27/2024 4:24 PM, Dmitry Baryshkov wrote:
> > On Thu, Jul 25, 2024 at 05:03:11PM GMT, Satya Priya Kakitapalli wrote:
> >> QUPv3 clocks support DFS, thus register the RCGs which require
> >> support for DFS.
> >  From the commit message it is not clear if the patch fixes the issue
> > (and thus should have Fixes and possibly cc:stable) or an improvement.
>
>
> Actually its a fix, I'll add Fixes tag in next post.

Together with the description of the actual issue it fixes, please.

>
>
> >> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> >> ---
> >>   drivers/clk/qcom/gcc-sc8180x.c | 350 ++++++++++++++++++++++++-----------------
> >>   1 file changed, 210 insertions(+), 140 deletions(-)
> >>
> >



-- 
With best wishes
Dmitry

