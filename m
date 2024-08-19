Return-Path: <devicetree+bounces-94860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E80D8956FCD
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 18:08:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B3EBB28CD3
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 16:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D49D9175D21;
	Mon, 19 Aug 2024 16:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yfXRVL15"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0600C16D4F3
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 16:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724083382; cv=none; b=OnzOGaFFRWTU483X9xYfllPxynJk7Km7uk2nYPL+qEn91Mzba++qWk1VvYswVJQ7x+hkOmF+A7eaQsrjf9tNuvRcsZskfFToHHG0kb+2PFCgiXrssYDqzR+QlOpx1upTxO4hMwEyFRg9vHYY/dLTWf9ukQxnupqTtC9SnxShmV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724083382; c=relaxed/simple;
	bh=bnUBnCqQvrA1i85oD3U8cnHaXF3BzBM72oTbr8bFPPk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=VhwUVAcF8YwfRaF+4VJJySKyUjsu0cF1iJhqeybLCewmKf4aovPht1ad2VEb/WNGCjFlRczoygI/IeE2Zd/O5o5hAnJ70XA+OqkbsKdbqxI8BYW8Ba8rKzjkGrVhNFZr2DVv+vAC3WWcIkEHMBuOuMuEgLvD+5hUGfgiH6MAjFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yfXRVL15; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3717de33d58so2868944f8f.1
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 09:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724083379; x=1724688179; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hPkKW2LvTdv3KmUUw5RUkwnuj7RdV8+FsUA2SiVs/RU=;
        b=yfXRVL15nReb9AM6JrGthW6Qb06WiZHNILwogs4vpEtf6TL0JwGoWiZZAnEJrpR+Oj
         JnXt9Y6x6V8msxroqDYWvQun4h1PZUUv6pNvv2UG3ciilQ0uCu2yBaLDxFuXIBEhr8On
         H9yFTjHpo9x2bfJXT6J7uJI4xoTU871DxZNzptRCYFhJNtxnVuEKx1PHIjjJS3hWGECJ
         6evMRT36hAYwXNEzk6nt4vTpWrpeRAhm3HF6NNzTxm/2NTi5mD9RIwK3788a2j7JrMEw
         v0kDYWEluGLijNDQfEsH8AMrv+2YHoA2pMSDLII/XJ0i2S/iVPwsxSe72MF4u6ZugSaQ
         XpJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724083379; x=1724688179;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hPkKW2LvTdv3KmUUw5RUkwnuj7RdV8+FsUA2SiVs/RU=;
        b=YfGp43aPgUMDu7TSgsAEc5CDegw5k2ZDslwW/b7+sKUxqnq1gE0ChDLk0F5Nrxg+rs
         gfkm8ZFgrs9ayK7x/g/9vo4g12JkvljLsK1BalKURBELSMGGaLrLNnPsiI8pomAU8J0w
         Xf19q9aqXv8CzrnOFitgbCRXlTPbpnvAqUoxSlqtg3rJjU5Ykkcu7byRU17bJA2QhbpN
         D/QG3N445ML0NCq4YX5DtmzrIfggIZN8WJHmC2uKDa5xrg+HR23ezdw3Sutn1hJhV9Bj
         rD1VKhFVrz8R4cqcm1Gq/64TSK/mILwLvmOj5hWej1issKxIIRcVhDtFTat0x6KMdKDH
         L0vA==
X-Forwarded-Encrypted: i=1; AJvYcCVshXPenB4YEjDIvgLlk0zZh8BP8kSLy68TcEl/NMWulB+99TCLSYdfdGM2qdeKC8XoJT/RN1DyJl/GfmW5aPOeqpUm4E8qNkyv5g==
X-Gm-Message-State: AOJu0Yxnrmx7vdpLdG5curE6DuXJ7ffHYztf6xMStG/1Q8iS7R5T29fb
	oVzpF6hfhenYFXwzwSsrN1C3+/+XxaT0a378YW98K0mlPTohnlHNwGceobL5dBw=
X-Google-Smtp-Source: AGHT+IGw6LCgPmvL6ZKIYTJsbQpctLJYo/wa4DHZVvu+Ak/SM6l58kPGLiM8dwDXzvtVr10V3LCUMA==
X-Received: by 2002:adf:cc8c:0:b0:368:3f60:8725 with SMTP id ffacd0b85a97d-3719468fac0mr5564106f8f.39.1724083378853;
        Mon, 19 Aug 2024 09:02:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-371898aabe9sm10907638f8f.92.2024.08.19.09.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 09:02:58 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20240729-b4-v6-10-topic-innolux-v2-0-27d32c766ce5@pengutronix.de>
References: <20240729-b4-v6-10-topic-innolux-v2-0-27d32c766ce5@pengutronix.de>
Subject: Re: [PATCH v2 0/2] drm/panel: simple: add Innolux G070ACE-LH3
Message-Id: <172408337763.1748689.2942378302112499804.b4-ty@linaro.org>
Date: Mon, 19 Aug 2024 18:02:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0

Hi,

On Mon, 29 Jul 2024 09:02:37 +0200, Steffen Trumtrar wrote:
> This series adds support for the Innolux G070ACE-LH3 to the panel-simple
> driver and adds the according compatible to the devicetree bindings.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Document support for Innolux G070ACE-LH3
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/99d79eacd1286bafbf5878a510b3ceb49360872c
[2/2] drm/panel: simple: add Innolux G070ACE-LH3 LVDS display support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/b9d228a5b2ebcb1f1f63170f5b20bc2f9d276168

-- 
Neil


