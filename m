Return-Path: <devicetree+bounces-82829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E4A926006
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 14:18:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19D8C1F2394A
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 12:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 138DF13DBB1;
	Wed,  3 Jul 2024 12:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OmgufdRZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B54613B5B2
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 12:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720009104; cv=none; b=kk5TptY6zKrTkzpfHadlgUz7JccKedCcVAdAxVcxnZ/LCrU6k6D+Vnt/tGEmp/d3IC7yfcuPAvMsjl9VTvPALMCGaknClqXDhvb1A0c+DvDDIx7ngMJliQ9+dPyh6uG2FnBS73k4OysDiuZahPSJWm/11qo66pcmGpdTS2FHre8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720009104; c=relaxed/simple;
	bh=XgdosjBRqkQTXp1ha49Wlp3RG2IB2Uzco2I5tgAcKAU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ENMOd06WLbtxXsMdS6xPB5iZStOgvR4lOUTdBpLQKp2plfn5KCoJns/V0Z0MhmU5dwkHwKHjU4uMMtByBC8ou4l5OKv1aven9jTQWndUTbpIrqYCeAyTaU8ThmMAmnlXwyq0naJ/XaHdb2WVAL6leD4DGRgFOU9g1p/WmzXBoX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OmgufdRZ; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ee7885ac1cso18138831fa.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 05:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720009100; x=1720613900; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LgHJFby2LzdImu320rlJPfWBMWru8nRY6MLO4xb1hd4=;
        b=OmgufdRZENy7ouaBCJl+QpcAJcd0jnc8SVfbSVn5cn5i4t7YE6kPf8Wc+4d5k0lcch
         dD7Fn7LZZiJBtSofg0l79Z2HQjQroqEFjLco/lVcmYFDLCbxYmGY41/Yn5xgzYKE1gGo
         LjL7n4ooGh/BZTleRAj59JMsgncWsGIrtrnQkJBlTMNhQQchBRZ6kzn1SF5uwrR8oSX1
         XTE6FF6Vq9+jFgqz43m/1wo8+Vf248Z0FXdt/Do4VjW7seOk4vjzaJ/mfAiVomHprHef
         6XmMwwQU0JWmFQF+gzSRhSenFs/tR6rJb+xzb9Jb5UotOPVah3FQIW4b2pKwHiczr8po
         QGgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720009100; x=1720613900;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LgHJFby2LzdImu320rlJPfWBMWru8nRY6MLO4xb1hd4=;
        b=CsV1Q22nC3Ft0vi3U/ZXOcxdocpnsvFEUIfMJIahgpec4X5jdFGDYlDvXSTV928+db
         qMeC2bujNdyzcKmEnfaF3KUwNgAu0wGFgMTvUnBDaM1HrfSB66drzmyjy0bgCh5ytQX9
         tUsAMwlGf4x4cdS0qgK210bOnhwJjAizXBVYmlTnwxDTlCx7DOCVcKvFbhdxJwo54v2L
         vPdq+gh0Q5ZGzpmNmUzP/+42xg2xXuKv1R8J2EBHvBnPALBJP7bkh04pP3JvKGY40x5i
         PEHf1lw7v4D7ZgrfRGCcdOpEq+f0B4P8jAPdC8zueNFBAlLHIPpe2hJdw/dz8TJmKtnN
         MM8g==
X-Forwarded-Encrypted: i=1; AJvYcCXCWlGkpMM0uU+IG057eKgdGzi39YG6btnqTrf/6b9+CmvIOY1gH+oVZE0DsSffQudIHutRRiDLHcgm6a2OXiCrywoezj9NLe+ycQ==
X-Gm-Message-State: AOJu0Yx+jxuo9cDpe6gRdrxAo/bjm/Td+/4X7yTZIqm0GGmxVfFqSkKQ
	BidjcWwpKN62tAjcxiIun4VK+kdanFS/NEnDCD5UhcnWytGUCHrLTopA3p1TDXQ=
X-Google-Smtp-Source: AGHT+IEjGsBMxoRHAZ7YHSdxE7y8cRZSXf71F35XhVDwQL07Fl5bM8ZK6wuOJtrpoZrLIbXNIZBuEw==
X-Received: by 2002:a2e:bc0e:0:b0:2ec:5061:d7d2 with SMTP id 38308e7fff4ca-2ee5e358f94mr80680961fa.18.1720009100335;
        Wed, 03 Jul 2024 05:18:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ee8842b920sm764861fa.39.2024.07.03.05.18.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 05:18:20 -0700 (PDT)
Date: Wed, 3 Jul 2024 15:18:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Hironori KIKUCHI <kikuchan98@gmail.com>, 
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH v2 2/3] drm: panel: nv3052c: Correct WL-355608-A8 panel
 compatible
Message-ID: <d6bruxuhguyzvzqx62sr5pkbt43xui3sywp6q5sqhehdlpkqtz@gt2yov6oxyu5>
References: <20240703103710.31169-1-ryan@testtoast.com>
 <20240703103710.31169-3-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240703103710.31169-3-ryan@testtoast.com>

On Wed, Jul 03, 2024 at 10:31:45PM GMT, Ryan Walklin wrote:
> As per the previous dt-binding commit, update the WL-355608-A8 panel
> compatible to reflect the the integrating device vendor.
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  drivers/gpu/drm/panel/panel-newvision-nv3052c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

