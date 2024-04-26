Return-Path: <devicetree+bounces-63185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D037E8B3F7C
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 20:39:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03C27B22487
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDFFE4A23;
	Fri, 26 Apr 2024 18:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qH4hxjX7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792C663B8
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 18:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714156737; cv=none; b=M13FYlv+SHisUsvAai9P+MKGMgBvv7zWtCtrzCZ9hRYWcBgE4o0A91zUTfqIwdH/qZh03WyBo5B7IvU66xvTm6F2WA08qPLOQSAR9Z9ZtAaJYOfRxUwIsaWxpuJtEWcN9JvGoVWeWU7DNTk4yUeG4zNzdX9z7hMtNZ2M+EfKkiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714156737; c=relaxed/simple;
	bh=FOisfRur5zgcKB27eKdkujvgE9ZnTwtO991LBci8F90=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ja12Iftiph50w7d/jz2uGVeZlCgnR646qOG8sGIoVNBEP61YUCBFLOFygD4S1Ot9xWQqeyTXGtXR9bcBdochsgosyaz1uTIxG+R2iAT4Oico9F/xhl+urbUIsCZj013HcK6pRRq6p0oqyswQmajS5h0HuN3I1vVQI/vYLPQwqdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qH4hxjX7; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-de56d4bb72bso2896757276.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 11:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714156735; x=1714761535; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Gv1XMYqj7FlbfLTbilE5kRRG0y9JWfghI0WKM8XxsyY=;
        b=qH4hxjX7zCPXSrAV6w7OxC0WetPo5XtM+MwnzqAzm6iR7KKLpEDSJbSXEmi9zCGtfw
         hbpypuPDaFSXdQSrA+ZvRBk0LOSqrefba2xJwWecrK5GJWTT++SS4zPuByNnP1wXDtZW
         87qy1zDvC51sLkCDIJUX0nxjsJw+F6ONUm08MphshG1s0wPY3Ha4tV0pINttrMsWg3UV
         sGloAzbbNJ6kbV0TzCgU9FXY+MTqH1XU8lrZV14+ekvNkm6eXmeqd/xJ1RIT+FKPz0kp
         JAdp+I9+zuJipLhsNcMZJCpwU65c0msdCUi/fKC4EqQYxpUjH7Cn6Cjcd9DymOE3UPWz
         Qojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714156735; x=1714761535;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gv1XMYqj7FlbfLTbilE5kRRG0y9JWfghI0WKM8XxsyY=;
        b=EfsID1eulwfGSmv1sXfdaKxwhEIri7pNmqatbsFS6tAqZGNYVywJRflwBOxX9mahzM
         0REbG11iUlJHc8MTcdhpwBZL/lSQ0BW1yaVe73d/ORCRXaY2o+PqvUGuWugZlmVyp/1n
         puu+3wwqCXxGgVWj5AlfINbGvpf4SUNTjVardT/KT9mlokTzl+scpEqbdiL4UV/lXIUY
         fWZfFdhmU3Rw8BDr+OQos9cP/GBB2sfsPrSDlnGFPlIWFXrimA0MXelZ33esKbJONdeW
         etNiD7snTLFvQve24mLcc5/iA0mxHJ7L3F2Y6ADQsZlL4JjRjK65etsZOR1fN0vDMlpI
         BJ0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVuZP6Gvr1bEk3RG+PQeSssRbm98tdf9NvARVApo4nT4CX/htwoLMWjEY7jxZMaAlnLhmNy1Qo2FaODVDerYWJJq0a7A9J+bhE4UQ==
X-Gm-Message-State: AOJu0YwegoFemRvvHWWODN8t1syKJwTgD+NMzofG3lAMIx2FQq0V4Xxv
	13gmh/9726v0MMgIW5mEZrjIJcXv7TjVtPJgjcCv4uSAfyw3FN4s8FM3EjaY2mBkxOAsuXy+KWl
	AOBZSHtxrg4LOWTMatDGDcEsYCij4WkQuKjRtmg==
X-Google-Smtp-Source: AGHT+IG3IsyEOycBc7qulLoEu9IiRmWCqVyqNrLDpmeg9cQ457zZD8N3srGvP0qs68zCmdPTZI0p/dKAsd7wuoQG5rc=
X-Received: by 2002:a25:83c6:0:b0:dcc:6d85:586a with SMTP id
 v6-20020a2583c6000000b00dcc6d85586amr3741728ybm.49.1714156735527; Fri, 26 Apr
 2024 11:38:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240426-a750-raytracing-v2-0-562ac9866d63@gmail.com> <20240426-a750-raytracing-v2-3-562ac9866d63@gmail.com>
In-Reply-To: <20240426-a750-raytracing-v2-3-562ac9866d63@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Apr 2024 21:38:44 +0300
Message-ID: <CAA8EJppoK4XAt1ARugvKvW2mYjuRJcuvJ-bhFh+cQMr3zmvx_Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] drm/msm: Update a6xx registers
To: Connor Abbott <cwabbott0@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jun Nie <jun.nie@linaro.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 26 Apr 2024 at 21:34, Connor Abbott <cwabbott0@gmail.com> wrote:
>
> Update to mesa commit ff155f46a33 ("freedreno/a7xx: Register updates
> from kgsl").
>
> Signed-off-by: Connor Abbott <cwabbott0@gmail.com>
> ---
>  drivers/gpu/drm/msm/registers/adreno/a6xx.xml | 28 ++++++++++++++++++++++++---
>  1 file changed, 25 insertions(+), 3 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

