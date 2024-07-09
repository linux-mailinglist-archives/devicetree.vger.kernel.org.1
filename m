Return-Path: <devicetree+bounces-84258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E88992B9F0
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 14:49:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24B201F2263E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 12:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F08E15B10D;
	Tue,  9 Jul 2024 12:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HvDFbFxi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80965158DB9
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 12:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720529389; cv=none; b=Z5Zn02FqMWRJRVY6I8H46c2qtG6nKlX3I48PiI1RSOpVGm5GuymT+Esv39QfWBZmhezDO0aDbjJO+hOPsiN3b0GHlmf++l3qhteKxO86I476cQf1n6UcS2TJwxHXjjJ49KtO07m2cZIOFrRVbGrwwykXmia/CHObq1OnNcyyVAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720529389; c=relaxed/simple;
	bh=xLQj80Ax5A53kCDIEH0CeRwTcjiAv44v06SljeueDKU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=BhQPooALOMSfz/rpV+tGjXzFJlSKTy789B9h8jXCfklqmaAYu0hIOtuL3FPqX8ocjfudzaGVDvUdVTCLS6EuWR2IoI7d9IX2MPQfTXKaI6NBvuF5xTHAldYm/GrYiaFsDIcRBIatvUlfZDJJwFSbtc2+2lchZgp8dH8zjV9sbJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HvDFbFxi; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ee9b098bd5so43895071fa.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 05:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720529386; x=1721134186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nvRk9NRwvi4Sad8kAKb8C0nIgxvEumP7Jqs1X0zsqU4=;
        b=HvDFbFxi7UC41GCMxLhxNtKPuePF21BrkQkASHSqoLbDrG198pbknZQnSLZAcLXsTl
         ikGTEhACuIZgClzS4affS5VVsEHHon3sgET7kW5bQNIjSKSaYDgVJ68nVLiH+J+eEBtX
         lou8plpjH7hI6yyvf7vWYVoetg/Acv11VVZyOQ6UZKHUfOg03eH1MIv32DgOoY8MDuYb
         ug+rGkdfUCX35leKDnNkr0ATqmgKJM1M56XVPwDvNs6AIODoRfChjLvccI8zWHaMgUQs
         GQWsOymE81dfK/2akFaMP6ZQZkSuBRjsQFEiSnRoP+vAB/gm1QdKnDg6QwpOOU/IIdOy
         BSuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720529386; x=1721134186;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nvRk9NRwvi4Sad8kAKb8C0nIgxvEumP7Jqs1X0zsqU4=;
        b=OtYP5wm5w3GSdAkChb3lt3JKR/YE03/oxU7vtcd4b1g+bvunWuUxGdtKRDNi7Foshj
         eC+men7lJilcJ3v65G7Zm5uBAKd1v88wKsIVBcErUl53vzqdO5HXXpGY+VvrFXJlSrg8
         mxxDwKeTmu8kemvFGJgHK/LOp2J2PWOCybSDAaHssMQL5wuoGL5VESAKiDx/Ic1D7hjt
         /c10IgTRnM3JaNff9T6ZbvKmqGrEpRV8w1x+xT7WS3QQ88N81OcSMV8m+y4Gh2QysXlE
         hJRV2eBXEUrJeI56vLW4YOy7heUwwoO0Gr298LixSCHfedKxuEHVTyNyp4LnvNpCUdc4
         DoTg==
X-Forwarded-Encrypted: i=1; AJvYcCVMkHaKadsLpXs4RjqvtJoW0A2L4++uoMjKc+dSOxN6o9TRMxklVV5cWrxKwqyPRgr2A7cMFcSUKcvvQGSkyXo1SFYqFjIdE0fYGg==
X-Gm-Message-State: AOJu0YxsTTVyy9NJqNz8TR5bv8YMFGRSrd3pu8y+OCfDutlNE9I7r6mY
	kP5SNOCWR0pek8UzmW1OJozUam/svyBZpi2oFtEDr5yEmC8j7WW+0ks99MM+xFJcER2h+QkQjH9
	kxMI=
X-Google-Smtp-Source: AGHT+IFzyDrAISLmyfMTkD2U0CnOaEiWNNhOh8Yt33K2jGcGj4upmTfOI84CZT5z68/EAKIkTu9l9Q==
X-Received: by 2002:a2e:a612:0:b0:2ec:5668:3b93 with SMTP id 38308e7fff4ca-2eeb30dc16emr19340391fa.12.1720529385501;
        Tue, 09 Jul 2024 05:49:45 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f6e9666sm39540095e9.9.2024.07.09.05.49.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 05:49:45 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: sam@ravnborg.org, daniel@ffwll.ch, dianders@chromium.org, 
 linus.walleij@linaro.org, swboyd@chromium.org, airlied@gmail.com, 
 dmitry.baryshkov@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
 robh+dt@kernel.org, conor+dt@kernel.org, 
 Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: lvzhaoxiong@huaqin.corp-partner.google.com, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240704045017.2781991-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240704045017.2781991-1-yangcong5@huaqin.corp-partner.google.com>
Subject: Re: [PATCH v2 0/3] Support for Melfas lmfbx101117480 MIPI-DSI
 panel
Message-Id: <172052938462.987180.17478336258755727379.b4-ty@linaro.org>
Date: Tue, 09 Jul 2024 14:49:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Thu, 04 Jul 2024 12:50:14 +0800, Cong Yang wrote:
> This series support for Melfas lmfbx101117480 MIPI-DSI panel with
> jadard-jd9365da controller.
> Add compatible for melfas lmfbx101117480 in dt-bindings.
> Break some CMDS into helper functions.
> 
> Changes in v2:
> - PATCH 1/3: No change.
> - PATCH 2/3: No change..
> - PATCH 3/7: Break some CMDS into helper functions.
> - Link to v1: https://lore.kernel.org/dri-devel/20240702130138.2543711-1-yangcong5@huaqin.corp-partner.google.com/
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: display: panel: Add compatible for melfas lmfbx101117480
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/e7305ad465b50deaa7a9f3a97dde3b22cbd00474
[2/3] drm/panel: jd9365da: Support for Melfas lmfbx101117480 MIPI-DSI panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/c4ce398cf18ae2859cc9930a9486b576ce262de9
[3/3] drm/panel: jd9365da: Break some CMDS into helper functions
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/533ca79cd9f734aae56814445e3f1e6cc1a50358

-- 
Neil


