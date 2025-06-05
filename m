Return-Path: <devicetree+bounces-182972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE2BACEA84
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 08:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1B9C07A5D9D
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 06:54:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 262C61FE474;
	Thu,  5 Jun 2025 06:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w12/i1DH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E13B1F5851
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 06:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749106545; cv=none; b=mq3App78Dzm771NgMmxbNcOaVuTka0RTLydPYfOjv2jIdUP6IQY8tb0VHTL6qBtbu3hOtjDR5GR/sCNhH0VGTUFPBGBFneNlPJDCwZUPyYbAPUwxMvb0QtTsHXFzsO+Ihuepz2/zpxsKuPFVhe+r7nUYuRJYxCkE5lj7+v6isvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749106545; c=relaxed/simple;
	bh=2BC9XHiLSiC410VPMSDx+yNsLV04pZFKfGZ1YCBB2mQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=V1imdaoFIau9O0Jf7LBzTMDEsdGl3+Ehbs7A2LeAsx6StCFi5kZeOKayAvXj++UGGNHba63l8pyezFTvgXZ94C1b7bgqsZ/+rY6O+PDFXDxuvLAsEvGi2tKzHWfqvPFYwGROPKwqYEF7OThsY3QtZf6aHKTpYDy/wNMs9GTdqE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w12/i1DH; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a3771c0f8cso324926f8f.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 23:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749106541; x=1749711341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I1cmNoRs5L/SZXtziMOQOBk1cq8IiZkG+yzMUuOZvQQ=;
        b=w12/i1DHUCrmCB72/RZMD1RkNKRCUulEt4q61syXClyeR8Ot/s89L0KZYlZhNCWSun
         rf3TG9gFZKjIj2OiJaqq9/w1/uzkVBU9Ypyv26ZRtKEW/S4UY4uWrqTcmoKGrrTGcmmx
         3t1Aa9blf9Npaltp4Xb71Fm4He1z3goMtuRkWvDpotzqwSzZwbLm9dLKjPiXEjZcalhM
         RNdz0EIyl3MWtkPSTN06ohIN3yBd7/Ah0mYdVIQv2gmBmJueLHoD0C4fGkURWYYQIknZ
         tzeCfAyfLEulJZZrxK237cSrF0WmY3RfY1PKuXFfw1qQb5XgQeV8XAqNvl+6f3nq2dQU
         vd3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749106541; x=1749711341;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I1cmNoRs5L/SZXtziMOQOBk1cq8IiZkG+yzMUuOZvQQ=;
        b=fGEUVrg9VFo3FhmC/BBC1LAJpt1MNBwu6CaFoRfy3d1LWrT+mCj5Sn6ohveeZsDg2z
         5UVh4mXP7OMG/e7cz5DSttPWvNJZfWZFyii4V96ZIwsQPfDdi7ApA9QTYDWgr9Eyc7Pt
         sLDDl0jPi6PwWK5thamV6vpKvEeGRY8tOJEzqAOzFl08sMDsjU8VXj0WmAn0HU7A8q8Y
         KxkfH6Y/C9OI8/2imFsaVeY+ufifm+tmQmQ1YhVy+wuBAM3YN0OioMJWxvaKt7NDf1wE
         WWRXZqqtVBWGDRyO4Tgb7N89Ql/2qvJ/APQj95cG3Y6EE0vjYI+pIQHXyz9AKRzrOE9P
         Re0w==
X-Forwarded-Encrypted: i=1; AJvYcCXVU5Rv+3XQsmbyhA+LmTsGhQyVehLgFzvUV/CcE8E5YrbD8aMi/+JKMEa/e6gr7vdW01nt3HnIQ3sS@vger.kernel.org
X-Gm-Message-State: AOJu0YxORcDkROtkIXPNrm1qYsmNcQ7sNszcp0hAwcv7lCcr76nhSauY
	IyXhcKy99eFVmd7nplSxguV2XBx9+FfHAlgZIvK5Jez7bnDQSEDI5L0YJ9IJpVeCNrc=
X-Gm-Gg: ASbGncuLSigbMmwhYDGSIUno3HnvSUPYvvoyGxd7jm5T3Rx7yI/OjYPplAkboVUYasp
	StiKK56/pjP4tODIhAwqPctW4gemjn1xYpKkdrALuGkWusWMLRZAqsprsgaKBwNQSvLBoHeOXRf
	xAB6WMelodM/izd65QF741i1+vbHNf0QG02wN1OKyuZe8GrpWxaMm3uaHJ63G/4pc/X20nY/Xoi
	RmbN2SHPo4EYKksUTXeqSIOWrf01d/cUYDQ3Zro0PtRyq2l02TZGHbYBZltaKHxPhJVAmq1MIox
	CorghZ18tF+lgiDr1lMgMiHVODBSwmkAGik9F2kPs4avnvXG3WXrSs7URodDRRSIF9KzezswH26
	MzIkzY7I=
X-Google-Smtp-Source: AGHT+IG4qMaCm9ff92XhUazbUDhs+FfvLsC7udBMc/0wwXw4qh4sez9eJKKpj+5LACYOzCSDf4/esA==
X-Received: by 2002:a05:6000:2388:b0:3a4:f7af:b41 with SMTP id ffacd0b85a97d-3a51d91d9abmr5074479f8f.15.1749106541527;
        Wed, 04 Jun 2025 23:55:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a526057278sm1910099f8f.63.2025.06.04.23.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 23:55:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org, 
 krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de, 
 mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch, 
 airlied@gmail.com, quic_jesszhan@quicinc.com, javierm@redhat.com, 
 megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH 0/4] Add DSI Panel for Gameforce Ace
Message-Id: <174910654079.1422723.8534685714859723952.b4-ty@linaro.org>
Date: Thu, 05 Jun 2025 08:55:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Tue, 03 Jun 2025 14:39:26 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the DSI panel as found on the Gameforce Ace handheld
> gaming console based on the RK3588s.
> 
> Chris Morgan (4):
>   dt-bindings: vendor-prefixes: Add prefix for Huiling
>   dt-bindings: display: himax-hx8394: Add Huiling hl055fhav028c
>   drm/panel: himax-hx8394: Add Support for Huiling hl055fhav028c
>   arm64: dts: rockchip: Add DSI panel support for gameforce-ace
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/4] dt-bindings: vendor-prefixes: Add prefix for Huiling
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4d20c1b073e6b501ec82db2d409f27a8eccb2b5e
[2/4] dt-bindings: display: himax-hx8394: Add Huiling hl055fhav028c
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/ab9be0b75af59876727b8a88dfc28d6b59a70446
[3/4] drm/panel: himax-hx8394: Add Support for Huiling hl055fhav028c
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/b837937c0237ea4f17493bc17f8ccd4a5e29b2c5

-- 
Neil


