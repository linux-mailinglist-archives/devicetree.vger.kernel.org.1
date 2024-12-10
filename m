Return-Path: <devicetree+bounces-129549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F139EBFA6
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 00:55:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C821167E21
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 620DC22C365;
	Tue, 10 Dec 2024 23:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IWP+8Wkj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8702922C35E
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 23:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733874943; cv=none; b=eyODHzYBxXM12yACdzZDvEwzl3Xa8oRxH2s3gNje5+/v4dtSSm1JC2P7iklxiq9BIjZAFYuo9E4QRt+Vq85WsIDvgzaxaoCYqjzPqLCBJ/AnM4c7NleBsRbrJ0iQnkli/yrf5F3xMqgiMTnTkwTuqHfOCleNgjX+ISm8BLVIqdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733874943; c=relaxed/simple;
	bh=Q39/uuM60p2kxsPp+I1UPBqTH4q2J3WxmrE76ksQnz0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MYUzbVY27xvyvyl6apYd5OrL8sv0pyDEO3BRK+puCL6C5Tq4zwIRW+fKowokPm32S9Y7UoOdvIajbhJdVdYPPDktOsxmoJaWBx9/Qo97Ot9Y6DlijtdeD/xrrBXklY5Ogo9CskRjQg8BIVxzj9DtHG1b/xTnNB0WuJ1hrdJ5XA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IWP+8Wkj; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ffd6af012eso65373951fa.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 15:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733874939; x=1734479739; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QaZTccrFdwBnijOAV+VQJ0MabSTqdmlDkCUExpbfNic=;
        b=IWP+8WkjEuE0vChARPsKfkzb/MsgWyCGr1uyzX7igbvkIMbU3jaRhVPuJxvqOBnpXH
         G0NmFciIKiH21CLgW1NeldDgNpFO486v824q05KOa5r2H4FzjPleBH5FBEDA/PmYTz9N
         S7EqhNjrQgIfj0u+HzDZmoTBx1jrmX++yz3ARub2uViE/6Wn3LLKPQYk2jHzEKxO/0hg
         0j0om4xWfBfgEpbLvHIi1QepreLP3aADQ9fZ2PiJmzrbodPy86yEpzXfsNqPAJN9/COy
         FUpC28sOaIcq1zy+9C4idU7YsrG2Cvlm9KG2nQgsKFfmRiljb9huIdk31aqXTwOPOLwU
         r8mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733874939; x=1734479739;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QaZTccrFdwBnijOAV+VQJ0MabSTqdmlDkCUExpbfNic=;
        b=mbxsvMqjbKjvI2BrMjpml01hi7PMyxAha6/bH4bMRH+Fk0/IjOifU2oUVsJPw+Qe0c
         noC86/imVcRq496tpOInttq0mF2ulikqgsqGM86ykDMo/XjjwOQp+2dttfSmRogpIe3n
         j0mRnkxjEM4iWE9FnbG0/87pToB6i1h5qhwbi+UDbdXdBXjn/Yl7nPT8HqIXRRk9YcGm
         lPEWiLGf6hh1/ra+Xzn7Cdn6HttSuoq90qm+lySdXpo+nybqa3KM4XU1VYjC9dFaET/y
         5WoAhfOFsKke3AakQPvyI/Ih2yw8F/xNgiNF6on2rxvtVqTAOCAsAI7o8ddYXzZF8hA7
         +yhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFPG1cGM7dyB8mZUCw8sTcq/zOcgrnCF7aVrZ4VxAF601AyeUiNY5X+0x17y6AoquiuJVYKUHpw8Xj@vger.kernel.org
X-Gm-Message-State: AOJu0YyCG/rPJNcNqBFSomnOvtZKGGtQoojIZkkAfRNwrCoPjmfR4uR4
	mqcm9fiUWZpreoUUUgAuoZUXiPqseY6XNYTEDgH8QybE1xrzA9K57Uj/N+4xUU8=
X-Gm-Gg: ASbGncvxjp1+KCfz+7RYfPROvvAgwBmO+fyA04E6L1t71sfRK6fjt9OY4r62I4r06fw
	uh+oquTdhq0dFeUeakZ+ucPslg2wF9GuQE4p/fRBwXsA/n7zGYMMdwK6FRxm1L5FNZ1b7NhlCYi
	h5Vvxcwvcc9PBHOHNYUymFTpDAqJnP99MbUZxv0N//zoLUIzb2L5XiMsvRMssf7Z+26Okihu4iO
	u/9yheUNl647M9UTITRSq3aODiQ7LuYHAr93qy6d1iyVB/ZYQeo3G5OGiZ/jg+A+AB/hv+Dm2NX
	ExQohcHNWrYyi4FjCBR640hVer/IjZ1GbQ==
X-Google-Smtp-Source: AGHT+IEqR0S7rTS9VZY7JOisSWbtpL7N6GcbvhCke9+P/tEVld1+jhG0IU1pO+4oYFJYfFY5K9gtWw==
X-Received: by 2002:a05:6512:ac8:b0:540:1dac:c042 with SMTP id 2adb3069b0e04-5402a5d6c4bmr171539e87.8.1733874939550;
        Tue, 10 Dec 2024 15:55:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5401a5360bcsm1065405e87.174.2024.12.10.15.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 15:55:38 -0800 (PST)
Date: Wed, 11 Dec 2024 01:55:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre ARNOUD <aarnoud@me.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] drm/rockchip: dw_hdmi_qp: Add support for RK3588
 HDMI1 output
Message-ID: <vpy4foezirdhci4nvl5j4e7gf5dey3swj7xxzuzazzj6uhqnls@iyyhkpukb7yo>
References: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com>
 <20241211-rk3588-hdmi1-v2-1-02cdca22ff68@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241211-rk3588-hdmi1-v2-1-02cdca22ff68@collabora.com>

On Wed, Dec 11, 2024 at 01:06:14AM +0200, Cristian Ciocaltea wrote:
> Provide the basic support required to enable the second HDMI TX port
> found on RK3588 SoC.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 119 ++++++++++++++++++++-----
>  1 file changed, 96 insertions(+), 23 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

