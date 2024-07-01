Return-Path: <devicetree+bounces-82145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D32791E922
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 22:03:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08633280FD9
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 20:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 101BE16F8F5;
	Mon,  1 Jul 2024 20:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NjEvE3Mg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617FC16F0CB
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 20:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719864180; cv=none; b=BfMGeKCe+4Wcdxl9kBdLo8dc++iLcz+6RZV7guttz5YhUi7w/A+2c3n+he6tpoXUHndfDbL0pzWE1nMniAgtpe4igipYP9cVXVtUEgj2dY68LcvO01WwNfzE9sfym61NjCo/wb7n72s6PHpacp8vODyMhl554PNQsFZVoY0vIjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719864180; c=relaxed/simple;
	bh=FNR/rmR6vy0+aDEomEh8L5gm+bBQq8dAdbJajJLXiOE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cp5uXuKRcJFtuL/4SlaqEU25XE/Du0uHGVu23f83qJY9qtJioePMRam5fz9XRGl879KE5wuZ6NidDkLRxgCBDXcCNlfd1tbCONu4ZwmE21VfqvqPK2ItayXHbfbKNWvfsPJgJmZlUlUf1it/Ifeds87B846n26ytjqdTuk0d3RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NjEvE3Mg; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52e8b27f493so1494174e87.2
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 13:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719864177; x=1720468977; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PfEsJfsC2ks7CWPYI27j4I38dK3PJe0vgriu9DWaCNI=;
        b=NjEvE3MgDxKLi7TsDaqLi/Ja+Eww7a2zHsUeQPM6wp2wYNUMxTMVJWYqzaSe6sV9Ed
         1tNG3l5FOwwDI+h/D/jH7nzhiS0D4fi5agcjmOqxmbUPJju87QsKXmCdiL4rlhpg7wQ1
         70AMVXKvGLk0Oj9ocLpkrw55Z/45doRGM5kSymyTjrwfebFTFQYH1vvwotYS8i+PULIJ
         yTShvbwcFrLYGkPiRe8B19Adf25GH31PBftCbXdl/Q0f16fatbJ7rS+26AtIpUJHKnbg
         NDbsNeE8mFE1Z1NfE6nLLcbzuGis9W4SaLWp7JMMgtjzzZkVRUk8yGqsbM7jhM2GI21W
         ijzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719864177; x=1720468977;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PfEsJfsC2ks7CWPYI27j4I38dK3PJe0vgriu9DWaCNI=;
        b=rWqt5QBqRdG7T7jY+TXQN+9NFFl4LloETXXIAzuXXvZb6PTrwG5WGIyUbdA1YidDE6
         fApDYGVXqu791frhEiJP+X1J+2ErspRFclqf4Wmwcxol1QAhkUcvuk7Ya6PnIsqtl5RO
         I4hsWC260i0CS5ngEzaqIwYFILwTBxHH9CTYybcE506v/ldZF2CFVWJiQVPBzVlabTzT
         jUMllH3JBOh0yyUnU/RZ4iGL35aF1Kd0elFbcSPsDxq+N9Sii06gE0rLRIBcUzmoDPdB
         eXPlmhVMsyB6SXjDJ1KgHBkuYnLK5vq10f5hS5yAblChdW0+/IikvkgcrACVkYkLe90j
         eHig==
X-Forwarded-Encrypted: i=1; AJvYcCWBRmI7JGPrzD71KfRr8+Zep6r/K4fQVBYy7l9ojtwM1g3F9HhohGzW2kDu3MEdBiqN8mc5Re16/pD3t0ml74YIWFi9ANTpX1yE2A==
X-Gm-Message-State: AOJu0YwZfVs4Nc+zCfe3Fg30JAY7SsWW4CCWwqPAfpp08NGuP3jmWjws
	87ZJdoukMF3xSkMbJPLqfbmMn5Q0oGCtrUQLjgFbaw5NEFL/ACDBCPaQFx7ONRs=
X-Google-Smtp-Source: AGHT+IGsjvOAZG6k6Yrc1aU147z/nHf11R4olGWCpEWKjChOK/ghF1HIDqiNrJy1XLnts3ZhEuDM0A==
X-Received: by 2002:a05:6512:128a:b0:52c:9ab1:a312 with SMTP id 2adb3069b0e04-52e8264c2ccmr5115108e87.4.1719864176585;
        Mon, 01 Jul 2024 13:02:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7ab10269sm1504535e87.96.2024.07.01.13.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 13:02:56 -0700 (PDT)
Date: Mon, 1 Jul 2024 23:02:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Caleb Connolly <caleb@postmarketos.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Henrik Rydberg <rydberg@bitmath.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 5/8] drm/mipi-dsi: add set column/page multi helpers
Message-ID: <r2dalmjcz2egae6uw6zlgr7yu74z5uivigcr2r6zzvyg72z336@agftaxio44dr>
References: <20240630-oneplus8-v2-0-c4a1f8da74f1@postmarketos.org>
 <20240630-oneplus8-v2-5-c4a1f8da74f1@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240630-oneplus8-v2-5-c4a1f8da74f1@postmarketos.org>

On Sun, Jun 30, 2024 at 08:36:28PM GMT, Caleb Connolly wrote:
> Introduce mipi_dsi_dcs_set_column_address_multi() and
> mipi_dsi_dcs_set_page_address_multi() helpers.
> 
> Signed-off-by: Caleb Connolly <caleb@postmarketos.org>
> ---
>  include/drm/drm_mipi_dsi.h | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

