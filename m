Return-Path: <devicetree+bounces-132206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 627239F62D4
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84D73166FC9
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B355419D093;
	Wed, 18 Dec 2024 10:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yyvKcL2g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7052199FDD
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 10:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734517510; cv=none; b=YOnPETxZXyZ5j+9PN+iv1eQLl1lqEODt7Y6A55x4qa8iJ2BVhjxrynNy2gcc4U4aDckxl1MT1rrdqrEyVaHRdehaCEFNJZRb0PvoYEFUW1AMSgNmQ8zTLZt7qSP6349lFHNF9XNrjEZPmIfUeFEI6Y/PZBkCT8yoFlDgJwZdwtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734517510; c=relaxed/simple;
	bh=N4ZW9z9gQIFMgaZ/yDZ8UUX1EYTCOU3hQ2HXRp7GPI0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=RnGn0TouDRT7aLd77nNlM7CSPOAu9UKBVicZ7iG3lyLdIxt5/MuYjBIx2wBvzgLQkXJANlVorE1Wprb6K4eAxtEH69kxiOyM1vGGJQRrVcUdy78SKs2IFtQVGGFXyzAg2ESwR+70Tz3uPj9JWCp/shyomNxz+uVtyV9I8whQ3dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yyvKcL2g; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-385f07cd1a4so4300037f8f.1
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 02:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734517507; x=1735122307; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QdPVyM78eDgDTmlufV6LwQcYMrHvej2T0RlU1S+8w3s=;
        b=yyvKcL2gapGiNxKzF7UCSNieVrtoROMQ8zO/2f7uv1owNfm/YhFS9whNAJhkTs3y8u
         p4TeydpWpq4lKb9i6dG0O1gruktZfJ61hEDki8bimxcTZS7bgmXYpPDbOHUTxknHmk8g
         +Tvge2i8KG7urGuufw//XPfuixvUCgB9m39OcbHrFS5Wh+6tEN68iyoxFCfYJmEmF78X
         DomnWF/5r57Dt0JuPc5ig5TPevj1vpMXffqFUBNgJ5hSo5K7QQuvkpYkCw91B5bpyvAB
         q8lvxUJKMmOLrnLxICOOI2iZf5Z0TWMPpCZjiX6xV8GBd1RhTRG64TDpdy4zvu3FtemS
         RGxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734517507; x=1735122307;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QdPVyM78eDgDTmlufV6LwQcYMrHvej2T0RlU1S+8w3s=;
        b=eklnYNa53ipwv37queCkiqNMHvsiLjSn3yKgl2uUPn8S+9p8YMzMMoog7bPJZQs1vO
         GiCMxnT7Fz7UVVo31X6Qo5reJ3sucfwbHx5NSlYib47/z0STymG5KsBgbRQk4c+ozwUy
         bCtcN4avNaw6tp6aNQ4SjlX7XHmNPM72IHzN6EDxH4MGFmSrG5Zj7+cajKy3YrW6mh7v
         GTs19o4Uf1zB5Cwe013zoWO5nCW+tycS4W+iAy/fs8eG4yJ/gAg5YUp6EbS0oXtfWqr9
         zR+s5dPwlZdYl5lZvgsi2eR86zkb7cMWp5QkBV840w0fFRdmDRmwTXrzy4ZgIeRCAcAz
         GFig==
X-Forwarded-Encrypted: i=1; AJvYcCWzsxDhxOdbA1bGV5vVxyYmDZr7IIG/JX3lus2/Z0UmdHSpXKbQMS24SfnnYoE3I4xmMZklqHL6NgzN@vger.kernel.org
X-Gm-Message-State: AOJu0YwWBMa6Gq/yW3a3i9Jv4EQw3bDGogtardQc6O5zaNRltV+f7zie
	tao1J5hfOJOVyOxY+51KXhlnaQ/viPJDEGaLzKwxZfKT2BSzWi6jg6E30i4bRcw=
X-Gm-Gg: ASbGncuxMThnuLV+MA9oMQtvt76y8ALtYNFG9KgfOllLrqf/0czv+zIRgRRIqinTgLr
	BveWhjWZwfA1s1WwsqFB5nMQWTJH/3cG3PLIFSu/RyAuFMAoLklNA9DhWMgXcMf3HuUroFLr2Rw
	5Lv6iYeqZY42lPQleJL4QSztTELoJ4JCFY59OPjbv1xYu1wJFFZUdUdgaLgB2ni8VLNbNOOcrzp
	VRXaO7IHr+D+spFkTxLPTqXXh9Jo6fiylaf5+YaB1OSuNSUZ9U0k6m1JZ7j4I00IViQJvS7CkFb
	uA==
X-Google-Smtp-Source: AGHT+IGf1BC2qG7eEOGcS3uQiNkdUuM/G6VbY3wDn4Hg17Nj3k7zspUIygu99ZMQP+yDnDhxEPFTfQ==
X-Received: by 2002:a5d:6e87:0:b0:385:f638:c68a with SMTP id ffacd0b85a97d-388e4d6437bmr1707557f8f.30.1734517507198;
        Wed, 18 Dec 2024 02:25:07 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c80613a9sm13561558f8f.101.2024.12.18.02.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 02:25:06 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, Marek Vasut <marex@denx.de>
Cc: Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, 
 Sam Ravnborg <sam@ravnborg.org>, Simona Vetter <simona@ffwll.ch>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org
In-Reply-To: <20241212122701.25305-1-marex@denx.de>
References: <20241212122701.25305-1-marex@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Document Multi-Inno
 Technology MI1010Z1T-1CP11 panel
Message-Id: <173451750635.2945394.12637582167609538322.b4-ty@linaro.org>
Date: Wed, 18 Dec 2024 11:25:06 +0100
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

On Thu, 12 Dec 2024 13:26:28 +0100, Marek Vasut wrote:
> Add Multi-Inno Technology MI1010Z1T-1CP11 10.1" 1024x600 LVDS panel
> compatible string.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Document Multi-Inno Technology MI1010Z1T-1CP11 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/523092f6891d8652ab26331a9f35dc8329322896
[2/2] drm/panel: simple: add Multi-Inno Technology MI1010Z1T-1CP11
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/958473e7ed69bb397eed816b88be28986f7951ad

-- 
Neil


