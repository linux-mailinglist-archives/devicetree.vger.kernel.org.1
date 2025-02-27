Return-Path: <devicetree+bounces-151925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B24F5A47839
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 09:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F254E188FABF
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 08:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25800227BA4;
	Thu, 27 Feb 2025 08:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R/jKbtlL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF21227B95
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740646219; cv=none; b=SM7PZdYmnqiyQ0i+cZ3HO+6HP3ZJ2Ue+Q8qRdfXenfA+2lGChCzwF8TDr0o+Tm0i5nJvyw/6hHgKfhFBF40kkdbi0OMKauVgE2hlAdsZWURpOrJ5BDMqBWUWMcQ0/eVJ+E1FxMnEIUrgxKV2sIxsfEGI5YAz3MMOfeLTa0/JunY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740646219; c=relaxed/simple;
	bh=xBApqaUI1fas0skLjIlCRV6uzzbgvHUkCsETW+BTo4g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=oUxrF9jZMm8obiVwIkAJnd94EUq7sMIo/TigOsD9Zy1172VgRbyVAryrbUGsHbSkj5RjFKBbj9VVveGD+2Tu+o+8reTXpc2ptaGDIxPVnH6IHeGuKyblxBBBcLX5Tufk5t0ijVYX2/cEaz1hvVFcIdD5zU5LSGqJM5obfZG5ZuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R/jKbtlL; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-439a331d981so5967905e9.3
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 00:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740646215; x=1741251015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4fVljM5lUPad0aLITzXtfYe1Ln/EMXDK6r/779wBRag=;
        b=R/jKbtlLodC4kjxpnFpJuP8zEL4tMtNs77Dz1wnXixKiacNpd2Z18HFt7vtdEA5A9a
         hDsy9Ptxy91mHMBoHrDgrHgQnnxUZWTT5LRee1aFDUVbPnPlViY6DmfZ2/UWjnSQGkeH
         MDSMNbm3n3I3I8S56e0r/MeiE3FsxXQJf5EA3GRdIbTgk9QHQDUuIcdMZNDH+foSFGCA
         46Ny1x4gpTeg1ZTjgItQaQJPdtt8URfAekky2qQa29DaY4xhazzlHwrx1z3yVDbAAnRh
         frc/GuPmEhQq7DxUGZP3CP6TVFS6wQ6h4p2vaF/CdEUQ+niBYupo/St5HfACEA5tV43t
         VzSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740646215; x=1741251015;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4fVljM5lUPad0aLITzXtfYe1Ln/EMXDK6r/779wBRag=;
        b=ORIV+zqUxcdQNQwqkektmziiV1bW81x89fkTYXLHUlJz4ZIrdv1E2dJ4iKOOn0/7z8
         tohXf2vkaJAsXwpPP/CC80r+mnRUnziiVqggM4oWRJIls0aWpotDBGauVk0Am161VSFX
         NywIsORSwmN6HGEHlfXGW63GSZxLdai708Y5bmp2dkW3RP2f8UWy/7Qk6c3yAR76i13B
         pqJsnpLEwyXLIodWVyfRTs0XK2CsweCh7cdHtMuM6ejIoh/CzFoJtAuSh6CvfDGkT4k0
         Ph0bI/ficxw2YPgH8pEbOFMMnqB12d5Do6UlSVPsmMjZmbAuXyEZfx9kMoVFVn+nk30z
         Fe+g==
X-Forwarded-Encrypted: i=1; AJvYcCUf/LbipK4AT6OzpXrjblqVNrmgnyiRKGp53+Cs1TGsfDwSUw/pHxk1DU6yv3oXzMnXmxncZDeJuo+/@vger.kernel.org
X-Gm-Message-State: AOJu0YxIAAmxn35pFuuCnpAwyPW+onlaAeZ4wi/vzVEPW9kOjgxwNKFo
	75hN4OlIAQtSGKzxMty54XvfypaX0kjEmvGCOLhQai2xsSoJwfJSyTxg9SATb5o=
X-Gm-Gg: ASbGnctXNNwgdPOLpqWPT5RSosBSiYEQWPIIaFyPNKZR0dBZAzu19eOr5+E8TzDNF5Z
	QnMxciVhl2kHHguNLIt7BKc3kUrT5gBT0C0lZyNOVQwuqOf1ODQJSTDcOA8+AKEQLkEcsgSfVQB
	/B03LY/sFL5g/wMfLvOSF1vvst07EvQNxIe3U+NHLXGt4NEf80j6RqVP1E/7Tzsv4acTqbQJu2N
	IIzpWmyQMmHpppMbhtBoc5G5RroAKgwA5XsTNBa8ffVvBgk8kdW4i2zZFoOXo3g/Iz0xZlCpBtX
	3EcJD+xuP7vNzrdlQYEqQ5iDC5Id1MluLXj+fZ1afRtoPD8=
X-Google-Smtp-Source: AGHT+IHgJ7gnu7GiG/3pZ0CxcgYJtAbBL49zZDDh7KkKOwpZMMmtSzQZz3LVjqc8sD0Hf7mvNSwo3Q==
X-Received: by 2002:a05:600c:3149:b0:439:608b:c4ad with SMTP id 5b1f17b1804b1-43ab8fd04eamr52036575e9.3.1740646215468;
        Thu, 27 Feb 2025 00:50:15 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba57145esm46894535e9.30.2025.02.27.00.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 00:50:15 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Yan <andyshrk@163.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250225-raydium-rm67200-v3-0-d9e1010dd8ab@kernel.org>
References: <20250225-raydium-rm67200-v3-0-d9e1010dd8ab@kernel.org>
Subject: Re: [PATCH v3 0/2] Rockchip W552793DBA-V10 panel support
Message-Id: <174064621466.3904283.4217314365714846185.b4-ty@linaro.org>
Date: Thu, 27 Feb 2025 09:50:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2

Hi,

On Tue, 25 Feb 2025 17:07:58 +0100, Sebastian Reichel wrote:
> This has been tested in combination with the series from Heiko Stübner
> enabling DSI support for the RK3588 [0] (DSI controller support has been
> merged already, only the PHY support is missing) on the RK3588 EVB1.
> 
> [0] https://lore.kernel.org/linux-rockchip/20241203164934.1500616-1-heiko@sntech.de/
> 
> Changes since PATCHv2:
>  * https://lore.kernel.org/r/20250207-raydium-rm67200-v2-0-1fdc927aae82@kernel.org
>  * replace upper case hex with lower case
>  * rework final sleep in enable and disable callbacks
>  * return drm_connector_helper_get_modes_fixed result in get_modes callback
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20241210164333.121253-1-sebastian.reichel@collabora.com/
>  * move additionalProperties below required in the DT binding
>  * collect Reviewed-by from Krzysztof Kozlowski, Andy Yan and Jessica Zhang
>  * improve Kconfig help text
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add Raydium RM67200
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1e432a419047094cf2ee0325d4530ddde537f974
[2/2] drm/panel: add Raydium RM67200 panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/a50ae1a2fdc71985e9bea25d1b509ce5e2b224c9

-- 
Neil


