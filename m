Return-Path: <devicetree+bounces-39385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8CD84C721
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 10:19:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF041B24117
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 09:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2772220B20;
	Wed,  7 Feb 2024 09:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tN3kcBJr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F8224A1A
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 09:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707297561; cv=none; b=ax+2nYysjd1DicAOg2G6WPbUwemPgZJNc5vGgpsg5iZTtnM0TVxDdbRwXGMW3YC04AI/dqJTTCXMsWuEoPaRuZoiBuIy8TzIbdke3/+nr3FsrDiTEDaJ2tRcATxhLAOm+EO+TlWiKbE2R1OuEVVzqG4LlrNu7ZVBM/JxeI0Ymv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707297561; c=relaxed/simple;
	bh=9ZMMs3+YX0LVGSGfe6FT47ZvIw1NDwQbqTifrtASZlc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=hSY82+tg5hb4jB5U58VuQaKYhsE/yBrqNoqi7ECvkt5TCaiP7DcjlxGIttiGQZ/4Ak9DydLfoc/95+jeMnc4zWoFLPvQBUFyZHDqg6GMpW8ULXcLq2D0zo9Igm+vNa1ZGSn3MGCFXjX2NT0IZ3R7aqGHvLwlT7npfHmHBuXxBbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tN3kcBJr; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40ffd94a707so3657785e9.1
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 01:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707297557; x=1707902357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3E4sDqzii/6R8d7i8uvIM9PeK0fYlmETkH8H6KbNcjA=;
        b=tN3kcBJr4F62vkw0T9TqqjbaJ1j874GJHwOpWuovseAkRYoBDQNGpEhgYE4S2TAGnQ
         +BGGhn8UNygzS0azRitBup7X2j5YzCSiwyeec16W/SDWCALO69/wkWfwvV+jgy9+wS55
         KtHvPglD9Z6eL0Ab0iJ173shlaW5rAXH1OJvSjN/5ZrLv+8top+FyaY84ITsnq1OYLxb
         QamO5li11f8O056tGs7WzRov/RClO5Z10cY/Jzgb3DkvXv21kQn39olFbR9G50nalNwP
         QeLmqsED9zC0h6dxU5LmMrTAIe2n1qdy+kbqDvYKCYGOyRFkbi2YeE3FB8JBlpQUMf2D
         dmWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707297557; x=1707902357;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3E4sDqzii/6R8d7i8uvIM9PeK0fYlmETkH8H6KbNcjA=;
        b=O0LZqUpTf+12hZ44LV9A8L+JVGXK0LMlu2wMirFxOddRPPl9hzIRSReg7bD6iQiXFi
         u0NhpmO1NiqDHo8g1Wceqtg7HdiIE6QUdWWSb8TzYXRr67kyeMM7DEh+FAesya0ocGuB
         K70OSeV7zYybE/5l7twx2je7PZXEtw2RW+H+ZxBvKB/ggJjFND0EI0sK4w/4NoBKcc0Q
         PeP7cb3KhWdgLKWm6u1ugm6KdcXdpU3KdzsiEdeFE2dc8cHl8zPGqQx8xZf3Bqy7WOdt
         OIbu51xTDCgeT8coT8y0AMfaBWEpuJlWKxOziEHaOQlXzRTxbk/8o+4Fzgu2KGjjR7gw
         MCVQ==
X-Gm-Message-State: AOJu0YxUrrsFJuEg2wUJ+S+TkLr2LYqG+/n5pD9ulnEPRqREFQv6b6iJ
	bwsoXXlvk11JxMv9bxpMlkbz85okBsN7Vv2Yfa48QLSK+DuACRa+PbGdXme82/s=
X-Google-Smtp-Source: AGHT+IGWzAsUTDmBmLWHnB0zSYQvDAlkA/M0ZyEQ9KVtZ5H+fM6jmNNCaOcPYRkzWHOKIg5Lztf8QA==
X-Received: by 2002:a05:600c:502a:b0:410:1d5f:5bc with SMTP id n42-20020a05600c502a00b004101d5f05bcmr7264wmr.31.1707297557602;
        Wed, 07 Feb 2024 01:19:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUs/M/jhqlfqTPEJC9TWo03wE+lL81k14rkOIobGRfNTLxv0PThTJ+BtQKuutnm0kxgX4FMDgJQ0IHyuCD33UsPM9Qxq3PYM+rFgkZMn5IDVREVm//fUXqYkMhNkdAD4ksZyt28tJbXb5paKj0nmDdeFX26/TpWOCy4I5CQXzB3YfZr2lc2Fslb81CxPqZpznSKGYimpvNE4b5YSsZHjLOuANGREgLCvA2+iSSxVUBp4elFleBXjzGyL6u9fLlpxy2TaS0shtyXTb+nuSFh3DFWptHtXhmTt0lAaPRLR8rZNuLvTovJvFsA0gQpCu2wCrNxmiU7nsSkPyWACOR0cTLeguUzKyS9KjofmhqbOE/JW7v+5MCdsfjopyqaHPSksgho4FqUKKdxN2LFHAe9IwmSHa5paMu/Tn0WdFqQ+COOmolv3vO4qq3QnIUSdWpJCb+DjY2H3dp2Y5teYCdPA5HFlcY7I5SpT9oBajGcJZkRgWIPdfgVzEQxMXP4mgQdro4qPhxXz8aM1+09hGwofBjAg5R3KL3vdtvJqGrHWoC8bnD5eEsX0Gt7z6jxnD3EM/ZxRiOrtms/ckzwKP+WrDF3/Tji/p44zCslZeULCOJDvIjNTbUM2MT1Mv5iQRDaK0cEYJyBI7h7UJEesus=
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r20-20020adfb1d4000000b00337d6f0013esm1003490wra.107.2024.02.07.01.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 01:19:17 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org
In-Reply-To: <20240205-ltdc_mp13-v1-5-116d43ebba75@foss.st.com>
References: <20240205-ltdc_mp13-v1-0-116d43ebba75@foss.st.com>
 <20240205-ltdc_mp13-v1-5-116d43ebba75@foss.st.com>
Subject: Re: [PATCH 5/5] drm/panel: simple: push blanking limit on
 RK32FN48H
Message-Id: <170729755662.1647630.425379349649657352.b4-ty@linaro.org>
Date: Wed, 07 Feb 2024 10:19:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Mon, 05 Feb 2024 10:26:50 +0100, Raphael Gallais-Pou wrote:
> Push horizontal front porch and vertical back porch blanking limit.
> This allows to get a 60 fps sharp.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[5/5] drm/panel: simple: push blanking limit on RK32FN48H
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=c9424076d7642bf6e214eccf34904848c8b53515

-- 
Neil


