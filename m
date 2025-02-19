Return-Path: <devicetree+bounces-148411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F2AA3BF55
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 14:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B35617993E
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 12:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9361B1F3BBC;
	Wed, 19 Feb 2025 12:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VwnG13my"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63A01E377E
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 12:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739969778; cv=none; b=YHc0MljU68R5fn/K2Ja7yXYl3x6ZqNQO6vXJaiuGrYuyjBYk4mEk6mhHCXUSeyL5+OetcSmmhVaW8nbR5xTPQWZwK7FqMzYRYkiiMsdl36C0WIQnA8DltlE/SOj5q9ev5WQCitBq3xFSXeGGgaqMdHsSDSHEOR32dCK8g4qVaUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739969778; c=relaxed/simple;
	bh=qIlOQDKp2BMWAKpyHevexXikoqaAwH0jROBx3zSA5GI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lxS+ob8ZOm3Sr2Amvmopll0uCZiX06ce00Zs+DWyq2FRmSauPYqUpdR0wutrXW2prj/NPdkDoK6nCpDAbh+LUfmTHJeDAKLnNn1iPN0GkJutKLslb8Y4tSGKzvG4clgnW/38odaFaDFrGwR6rKgbabynNorxiBXq4RnybJqF2FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VwnG13my; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54605bfcc72so1009096e87.0
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 04:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739969773; x=1740574573; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jpdeNF19DgfEm3H7/Uvp6T3atcP8vyt6RGMBKgTt3ic=;
        b=VwnG13myL5E8RvtV3/GNi/KFhM1Yj32853h7dm9ZAv8NvY2ZgGQk4DQl8cx9ek9oNJ
         ezFmyupxKMBVohKCOc4EtKVO5ypQRmGfJvkXEHZpK1hwASHWB5aJlrnK2hG3cSg9TRbv
         cC3gO158jT8s/3zsiflHnBlbk85XNTXt8HRkyNop1ZzikKEC8YZsx2ftw9QSxxSVrVrg
         6W1rt//5ygsiqMab/jg5qpQxDLOYN7aWyKIqjtWjxuKfilVlwBIzQ5bh90YTaam/f9b5
         tqa3SE9nsQ9y3loJfBdbiUDZLib7uv9K5nKJRH+uHp/trevoIv5dtl7B6Oze18PK4Qqg
         XMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969773; x=1740574573;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jpdeNF19DgfEm3H7/Uvp6T3atcP8vyt6RGMBKgTt3ic=;
        b=AGO5hdkm+iCbrpZVZOIXkGuXYCBuAeUrEAUD+2118uS8tzPUNzTqEA7kmhstVtwUHm
         hcm9JrALpgw2/BXL+HK9DY+EK+ZD+KBp9o0+uwABj11DDF0VaOcshMh79RKO1uCcse7I
         Xcpr3zQJio/FXOpZnWy5EhkJ5XewhoB17hlqANbAO8nP0UdD8CQksCRBPLmGnsrj7GxC
         B+yFargYFGZNGbzRDotJsbmpV08mSK1dENrOfr41tpMGzZpsDDif/PeQQ7y2QkyWtehV
         3ayuY2jIiYx4sHlmgGtBJtMRKQB3uI5NF2zky+YZtuivDA5ATALMCfaLmhhox/PPs6vz
         w2Bg==
X-Forwarded-Encrypted: i=1; AJvYcCX+FYhiJjLqlrwns+mX+Z8S9CG2y78pm0BNA1uJ3nmR5tzreuvWW3mhxUq2Ob0L8Q3/RKzAJV21+fJh@vger.kernel.org
X-Gm-Message-State: AOJu0YwzOHAOQTkvXWE2r8L5JO22TGfUBXWJkh7YW3RYHJfjgetQIPvy
	2mssQCAEq87Zxg98s44Xm7Frlvf9RLIY78kWs9AwDmMhZbYOSzqPxxO31IEQCZI=
X-Gm-Gg: ASbGnctsA3jAsoVtfk9fFkCmK6FFpKGDbaSFqTSwyzig0h0xiAGIRn37Vnptyn66Ixn
	igQCNZyJdangqTDe6DCQk1C/3kjpdEiFbWX4Cc7DDtFg+iejKhi7xplrNRyA28Nx8slLr95lLrp
	/hUvNnNHKrPmsyyjf1PJ0JP34tfFEnogJjTjw67lNCH1/LVA3hfKqSWL5Xcye5W3pIlaWpa9/0f
	lvmyrtoHevgfeYhGF+QGbpbrhEmu2IuTU9vs0Uzk71Gzkk1PjZrctHjChiM5ikB4b7p/4FNPEPJ
	EEK/CsN/BgrgBs1uy7e3veKAYT2doSrBlEch9N8dsY1m2iK3eqX9YTvLkriCRq0JTw8t+Dg=
X-Google-Smtp-Source: AGHT+IH0YmAtnjvMy5+btGUvGsvhy9fusmwBi9HtyhuX25OtuhvvQajrAtK6BmKWaYMSFy6bf3k0Sg==
X-Received: by 2002:a05:6512:3b23:b0:545:550:83e6 with SMTP id 2adb3069b0e04-5462eaa1f1amr1151645e87.5.1739969772537;
        Wed, 19 Feb 2025 04:56:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5462c60f99fsm421664e87.118.2025.02.19.04.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:56:11 -0800 (PST)
Date: Wed, 19 Feb 2025 14:56:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: display/msm: Redocument the
 dp-controller for QCS8300
Message-ID: <yjt6wwzrufigpuotsspoolnnonkueyb6evk3gtrtb6zpceuinu@em3ry7pufabw>
References: <20250212-mst_qcs8300-v1-0-38a8aa08394b@quicinc.com>
 <20250212-mst_qcs8300-v1-1-38a8aa08394b@quicinc.com>
 <wyd7i47pkafa7n2yjohuvlh4btasxle4rw5xm55h4bhv24yvah@pfo224xz4xfl>
 <b4008932-ce56-4cc0-9b53-2253051514da@kernel.org>
 <CAA8EJpoowyKcwDQgbWy4xGHzngNQOcWt_z_Xc49GFB1qYjYO6A@mail.gmail.com>
 <0171746e-1d3c-42e5-9cde-7dcf2708ffc3@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0171746e-1d3c-42e5-9cde-7dcf2708ffc3@quicinc.com>

On Wed, Feb 19, 2025 at 05:56:14PM +0800, Yongxing Mou wrote:
> 
> 
> On 2025/2/12 20:26, Dmitry Baryshkov wrote:
> > On Wed, 12 Feb 2025 at 12:54, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > 
> > > On 12/02/2025 11:41, Dmitry Baryshkov wrote:
> > > > On Wed, Feb 12, 2025 at 03:12:24PM +0800, Yongxing Mou wrote:
> > > > > We need to enable mst for qcs8300, dp0 controller will support 2 streams
> > > > > output. So not reuse sm8650 dp controller driver and will add a new driver
> > > > > patch for qcs8300 mst feature. Modify the corresponding dt-bingding file
> > > > > to compatible with the qcs8300-dp.
> > > > 
> > > > NAK for a different reason: QCS8300 is still compatible with SM8650.
> > > > Enable features instead of randomly reshuffle compats. In this case,
> > > > enable MST for both architectures.
> > > > 
> > > So the original patch was probably correct...
> > 
> > I have no idea. I'd let Yongxing Mou to comment on this. It would be
> > nice  instead of getting a lengthy explanation of obvious items to get
> > an answer to an actual question: is QCS8300 compatible with SM8650 or
> > not. In other words whether they can support the same number of MST
> > streams on each controller or not.
> > 
> Hi, in hardware, the SM8650's DP controller supports 2 INTFs, while the
> QCS8300's DP0 controller supports 4 INTFs.In sst mode, only one INTF will be
> used, they are same, but for MST, sm8650 supports 2 streams while qcs8300
> support 4 streams. Thanks.

So, they are not compatible. Please use separate compatible.

-- 
With best wishes
Dmitry

