Return-Path: <devicetree+bounces-132624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 809079F79F4
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:59:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B61E18916DE
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 10:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B11F22333E;
	Thu, 19 Dec 2024 10:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kGZnjlu/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB17223332
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 10:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734605981; cv=none; b=PR5aJbUPHSHhfIEgGq9Ws34dnTYDBcedaYVE4QmzFYXBMbWjv1LsxDswIEMZ9Gi1eNMGci3mDVkv61xv1tvdS15RSUpw3+1esrnikk0GjO8xKAQ0suzm3+xuKtdPHQgY0EPY9y5GWDNiZBpCMpv0Bmzr9XT+M/+f9fnZFp9C+EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734605981; c=relaxed/simple;
	bh=hTTzwFkMModi7DHDk8KLH+uFsTnqarhMYEFPjHVKC2M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=krPCejXhimHINWSeDYRD0bYQIPRHQhGoLUixFzf1/qkDQus3KWywDeEerhGWg0796EX88zgAHkEHa5UHX8bvTY89Hq9J5DdMlrk7FN4giv5HkA42EdJiKXibhgtOv9vRh0Dtf9HoBLTWZctxbdW0z1zXGQ7NBV3UnfcXRKf+Vf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kGZnjlu/; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-38633b5dbcfso575221f8f.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 02:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734605978; x=1735210778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cS+nRbp5xUtPRCpEi25EwuCO4ItLuZHhxv5YcNc6e4M=;
        b=kGZnjlu/JQm7EXUYzKd8E4um+nU02blGLkvhKSdPyIYw1AU1cR8dzxF55uiQ/r8I7Y
         G7BtFXAYh/cAbWzqOMPIrN49nhKuzhC3Qn1wXvhsf9upGPvfejaSg80Sep4ONmPqUUUv
         uhxTFnSvoeIUbQk33Zpi6hDpDZdiDPM4KJd46q+yVZjCdmrywO5/dIHOA5uV/hk951Cs
         D1hGcO1uK7Ac/DevrdktiBL1a1Puq/s0SAomKfiJ8Zm8g77yDAUklNVo+GiyprrZSgm/
         CQlJlH1PlCmlDRb4ZJUwp3VOLcLZRxzVfZvox0lblRYLe+YAHE6DcXGvfJuf2+Ka61Gp
         9/tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734605978; x=1735210778;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cS+nRbp5xUtPRCpEi25EwuCO4ItLuZHhxv5YcNc6e4M=;
        b=GEO14llY+bLGc91JE0ClNvKzwDwt2Yz/eYBw4RWZHuYstv7Nyl3rUyXT6HUxogmmG0
         +ym33QMO/Vrwed2S+SkZNgxinTvqb/1VVejnMNdveHZ6EkdFPClNTwHRJz4/ANjPsQKE
         kfPW70Wq8Y8N13TFtnpKGTg+wtHhaIDcyE3rvvCTjoYommmZ2wBJrmdU/nS8YWSE90Pj
         GX88Fv4WHhMVv2cF+RilY3Y6VjO8OwuigyM83iVFdAdUh2idYHn3ipoRKZAZfsTHFWhU
         wudE36PuNlJzXaMKVZIFZqzw61PM8dN87TG5JSOcuFe8lEJRA2/2aBPJ8Ez0C6Y8D8ii
         6jPw==
X-Forwarded-Encrypted: i=1; AJvYcCWGaUijpFK6nPjXRkicz11PswTH2d9Sx0Ju+Mn1ea80ZZpnAwp2ppjxFz/5ydS2YrgHr9kyJiJACMOf@vger.kernel.org
X-Gm-Message-State: AOJu0YytOf2VY25SqzKW6YQHBhRIZ1ssMtgXnIjVOXoYW86yrP8M+Nmx
	aJYbQmrDndRMekdZZN2jTh84fwUYzkHU/StyKHH9oL8WwJ+94jokTf2qiEj5ti8=
X-Gm-Gg: ASbGnctPkUsfDOBWE8ju0wYI41mkmQRf6FC/cXAwOBSVgJK8cbqt9pP/l0KDbvSzgG/
	HvVCeCzVfE6RiwUQOItMJHmx7/86VDLBud+zGxC31bk72S41dHc1FEpZAqg+hvpgKjurtXF8AWH
	y4/DyHCe6blOXH/fgunk3SZ7DQRzMz4Ic18PWOZRV+MMPnAyAc0JV0tpJSNHrTqo+RMU8J28NQN
	03O2vr9GdjTUnzYo71e82j5YenGx+DMaiNnkF3qfy2g4zebKyScyN/x1vju3fhTvSEEHSGW4W4f
	lA==
X-Google-Smtp-Source: AGHT+IENRpTZ1e7nnnS7IIxmPArBgJVUoa1AtaNNn0RO62JEfVFRRCR0Cb6o8qC4D0b/oXcnJqyscw==
X-Received: by 2002:a5d:584e:0:b0:385:e9de:d521 with SMTP id ffacd0b85a97d-38a19af880cmr2997296f8f.8.1734605977659;
        Thu, 19 Dec 2024 02:59:37 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c89e2d2sm1289920f8f.71.2024.12.19.02.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 02:59:37 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: andrzej.hajda@intel.com, rfoss@kernel.org, 
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
 jernej.skrabec@gmail.com, airlied@gmail.com, simona@ffwll.ch, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, marex@denx.de, Andrej Picej <andrej.picej@norik.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, upstream@lists.phytec.de
In-Reply-To: <20241216085410.1968634-1-andrej.picej@norik.com>
References: <20241216085410.1968634-1-andrej.picej@norik.com>
Subject: Re: (subset) [PATCH v7 0/3] SN65DSI83/4 lvds_vod_swing properties
Message-Id: <173460597657.883073.14115671156294694663.b4-ty@linaro.org>
Date: Thu, 19 Dec 2024 11:59:36 +0100
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

On Mon, 16 Dec 2024 09:54:07 +0100, Andrej Picej wrote:
> The LVDS differential voltage swing can be specified as arrays of min, max
> in microvolts. Two arrays, one for data-lanes and one for clock-lane can
> be specified. Additionally, because LVDS voltage swing depends on near-end
> termination this can now also be specified with separate property.
> 
> Driver goes through the tables, taken from datasheet [1] and selects the
> appropriate configuration. If appropriate configuration can not be found
> the probe fails. If these properties are not defined default values are
> used as before.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: drm/bridge: ti-sn65dsi83: Add properties for ti,lvds-vod-swing
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/63f4e7dfef8c1162e22cd25c9a23b125ba40dfc4
[2/3] drm/bridge: ti-sn65dsi83: Add ti,lvds-vod-swing optional properties
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/d2b8c6d5495706eee2347483ea89b5c13f256ff2

-- 
Neil


