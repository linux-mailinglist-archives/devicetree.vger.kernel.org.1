Return-Path: <devicetree+bounces-175169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0D8AAFFC9
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:00:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC45B7A2E4D
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 15:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3495C27A904;
	Thu,  8 May 2025 16:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MKVgbcpR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4A81E3DDB
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 16:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746720006; cv=none; b=GpBVSCkG3ECYeErcifJHAU+hbIgDXgE3k2MDVKbMONYiBdSmSwJV9eULYf09LIDLsWHJyVtoK3Fsry6YA4FYuHghLLRYLNYWCvKTKpKDjCTgP6ZxBsaLGaAGAyjq9loRmxmye8m476yHRPXyaU4X94RCsl+QEn0iH4zWk1JlKic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746720006; c=relaxed/simple;
	bh=Pg/ij7OhCm2tYpKU5R0gaI7jIv/pNM6ggm2h6aZ7CS4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=UtI5CcWsj/FlI9+IRLQtwd4GPbIjtx1sMkCOwJUBU+fQWamjrMGcKc3aXlr4fkT9aNBfwJxybQD7dg8puy6pxta6z5umIGlj74Mv98NK13knsGTW/hds1NCAMalJLNbPDWm7XOeKd/xZw8lBnAGJbw6KyE71OkgVZUKUg8gtiYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MKVgbcpR; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cf58eea0fso5868235e9.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 09:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746720003; x=1747324803; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lto75e4LcteqoafW12Fg61u3EViZNOc4137QZAwHJ4Q=;
        b=MKVgbcpRPhCK8PnsWhVH55YnvxCPGdZiPJ+om7sr3lKnTmQlhKx/IRWY8LwsitH1UE
         Yz2a2/hugaJZe0iT9Drt6AITZTCG5xZf/vLrms7HcMCM3apWV0EOHa7Ih+tQ+huNBtlh
         86JBDCLq+t27785tA797BIerrwjPbPbfB8VEe45RIaVPfin9SL2PL7/caqv0ly3/5OLH
         2Urk5F2m9hbde4HGfXj6RlP0IdnYVoIMNxxRcJjiSaZlabwtwtH23miIXtU24mCc1Qyk
         duiJsHra2UxftEfjERM05yxEvWBlo1uhsec8OxDF844RHHpH9j13VXyaM8XfNIwBSMIl
         XjpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746720003; x=1747324803;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lto75e4LcteqoafW12Fg61u3EViZNOc4137QZAwHJ4Q=;
        b=hr/0ni58s9NNBZjzkdT/HTRSI97hwElnX2bhQ/LFua3ksipKyu717I3wbubqDj1tkZ
         EiPpFjA9qyhIViQhX7z98VKbGZbrLnXGPsZpZuwS+oSgvpHk+66OLsMDUEZncZMCMNUk
         kW73r6sFY/bhsrrlIjTsg0tfHAHJSyE8rgNwIU/Ipmvw57bztDBJSjqez6QBypqLK99e
         lBR2nZwKu+zLDAIcdLvkZqhJXTzPwbEVg6bmyMXXzF/IbBUZVQnBZCilAzXvl3DogZwF
         1XtGA2e0SbjHdMzTyBWDi3sYvZ3ddlf3axHmTPM4Ecz6miqomFnweUyjR3E0rCRuySL1
         Xo6w==
X-Forwarded-Encrypted: i=1; AJvYcCWgazDWzCNTt51lMm+I5jwHmdvY2gFPtzHSTGCjInZduO4roIDP7Z5YwzoKbQC4F1erkmlNjmi2VHsD@vger.kernel.org
X-Gm-Message-State: AOJu0YzAY50D3y4hyujQun50UBdYGP+Dx8diVzYo+kPCkLR470HtAwiZ
	B6BmBTlpS7QcMRfqD/Ayg18sY4BOXL0uO6dmGuVpmQdldM3hwdeniD4AQV5Z7js=
X-Gm-Gg: ASbGncsj6E8GJPlG0V8qjk3idWfN0Yz5T2BewzF93ZjUH7WqEPyCQI0cW4L8YgV7xdY
	EELp3OZ6KDCaAS0IN/h46/Af+jaX7t5VrPiJiOvZOcpDYwNytxXhN7m9ls7Fz7OSOj6ipIJpTJu
	I6bxw4gnNVxOegQK0yt9AhYCWSoKj8JQBgMae/YmwYdzQNECYFJiuPd87caZF4N/S0pHrpWE7zY
	OSLjxzddPjmigabRwEI+eSD4jBX0QmetvDbwXuIGeVaNRqUelIH01gl5MNh8FCQay+Rdg0pc5j7
	v0oOn7vsoe6BsQndcQqD5GYScpG+29GEYIJ0r7V9LH41tsGiE4914LXqGX33Gg==
X-Google-Smtp-Source: AGHT+IHGh7pry40R1R5S0vzwYBv9QiYLXrctllxajG/Law1YVfbMcDbFKmJfKNCqz30hlRaA+hAD2w==
X-Received: by 2002:a05:600c:a413:b0:43d:49eb:963f with SMTP id 5b1f17b1804b1-441d44dd4a6mr61912635e9.24.1746720002650;
        Thu, 08 May 2025 09:00:02 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d676ef1csm43535e9.0.2025.05.08.09.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 09:00:02 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
In-Reply-To: <20250508-sm8750-display-panel-v2-0-3ca072e3d1fa@linaro.org>
References: <20250508-sm8750-display-panel-v2-0-3ca072e3d1fa@linaro.org>
Subject: Re: [PATCH v2 0/2] drm/panel: Add Novatek NT37801 panel driver
Message-Id: <174672000196.3610792.15233043209666142507.b4-ty@linaro.org>
Date: Thu, 08 May 2025 18:00:01 +0200
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

On Thu, 08 May 2025 16:34:46 +0200, Krzysztof Kozlowski wrote:
> Changes in v2:
> - Use devm_drm_panel_alloc (Neil)
> - Add novatek_nt37801_switch_page (Linus)
> - Add Rb tags
> - Link to v1: https://lore.kernel.org/r/20250505-sm8750-display-panel-v1-0-e5b5398482cc@linaro.org
> 
> Add driver for the Novatek NT37801 or NT37810 AMOLED DSI panel, used on
> Qualcomm MTP8750 board (SM8750).
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add Novatek NT37801
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/0311e0fd07919b4b8ea651a632eedb0e3f9f540c
[2/2] drm/panel: Add Novatek NT37801 panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4fca6849864d78e55f005115c143257e6566c89c

-- 
Neil


