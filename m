Return-Path: <devicetree+bounces-182971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD97CACEA82
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 08:55:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E19307A6078
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 06:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EAAC1FBE87;
	Thu,  5 Jun 2025 06:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bQPEMzmx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728511F181F
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 06:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749106544; cv=none; b=OPg9pSoJSKHBdsBf1e93Ag8qqgjauu2Tjy+6pbW5jNwt0CKFZuH7/OqM3ia3XWwK9S5ySD/sl3UVaHo/j7TnYrwqkt+yY7V+Wgrya1eK28GAay6MSyNwf4A22EbjVL2NDoIxJONnKDSkH5t19nrYS3OOJM+5jwvV9eF6TeEGvQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749106544; c=relaxed/simple;
	bh=0j5gYjKOZOgxpjecfrLGjbWTh//vv70qPSNPVWr+hWY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=HBVgkfklcVQLxT7n4vqlGA3D/1Rm2blI2jPfXVMglallm1/lvvvOnw0c/rWWnZgy+68ZQId2wFSBSmwnDMQd3fkO90wq/0C9MsUT7PS3eSeSR7oVKPMyFtl+layFTUEAFtO5x8mgEpxa36JemIDU+On0j6Ntw52UHOBoF4s4JcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bQPEMzmx; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a375888197so330570f8f.0
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 23:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749106541; x=1749711341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTgawIlCqa6snL5rle0l3SP+UrYy+5hrMdq2H5aZTbg=;
        b=bQPEMzmxt7JvWAxj9AecUYFR4daTtIaeBimU08YHU7p3GokGadfOko4cP4webaiu4G
         y5Tt77h35icOEQcZSUChqGwxRDNwNUDdMueGnUIWtL/TDcqDORrkZPhVxiQa41CfTZtb
         A7ULEdwp98Dmwo8Us6tcZ310y2NZxM61ygmo5Yt6vpP5kkHmJuuTYzG66apRkgHrqMfy
         skUzN1qCoc1d+QVZTfwIiUf1WR5REZteVoFaeG8c0EZa8nG5q95DZSzECthEHUIyMxF1
         kgYbJ+99m3Zqc8+UfuFgRX4ECLPO709qh2X4s4Kr4Mv8TJ5ON+/rMlyLAEn4vHauRhtO
         NsgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749106541; x=1749711341;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YTgawIlCqa6snL5rle0l3SP+UrYy+5hrMdq2H5aZTbg=;
        b=naST4qszw/FzQL6eqd8N5xswQER0nTkEXPxvT94UHEcybrD4CVJUquc92IXQHbCYo4
         1sxdupaaVhSTN6mBS9WXHAhTC6ev+aT52p4/xQGPIaPz7df8VZpFTjF0QQ5vKK7HfpjY
         dilJc9IIr7wc1LrOK1WzHXQ0ssfiOA0ewsGZhBMsP/sthLTTRDylGWq84tnk5HWCG4so
         chAxD0LNCkX/7Yr0W3PCNeav9OLRRzbpk75P7jWfQJRDbNyZvcaWPbApwHGKyY58JB8h
         faN/pQFD9mBC66Hb3/CFqXpTGGfp/qp/5sut+D5xAi4uQAX9yhOUCKtpI9Vt3SJyWWHs
         HwkA==
X-Forwarded-Encrypted: i=1; AJvYcCVa6MJUgemD8DmFs7y5ZCnCFmGTBsTzaIHTVDKjM6tClCHSRT/tuY1Pvwb545FmcHalsYbyMwZuT1z9@vger.kernel.org
X-Gm-Message-State: AOJu0YxG5oQl955Eop9zcxwyW37WxdiBWs/+iFBU96s5LS9o7dU61cOb
	VykraEMNG+dQXOFSlCCLjvJig8LuA0H6n3cVerOYVtxRTvD0xude2/HenvT8TWMudow=
X-Gm-Gg: ASbGncszf8vjRcLtCSrIfj2MmFV2g5Oo2BmfyAhK/cMT4jW5rpFwsmCtIPuB7+DYfaF
	ZH7ZSF85Qw2zzvnhtrQV9k8LLqEaDja6VB0jFv7tLa+jkKvgbZEA3DEpIbQbzXxlk+ylyw0COQL
	VGXiCYbt0EdKXMI80kD3rXZ9x045S5OnQ/6NGJjntn1tCq2VBdZSRVvbjH+lepCDm40nFw6z1Uk
	yHSh3S2ghnxbK6FQNQUNvunqE9+mzX+RkSFdSNdUyYr9WWO1+mSTFxzn7COpRrRI7+lLTE0siFe
	oNicKHY/fhteMBWGjAlVD4w992qNvqIF+kEB/Bff3G4xYkS4Pw3GNcyLpXTQCvZVkTW90QQt
X-Google-Smtp-Source: AGHT+IEL+6tBVVRvp0xx1uUE5vKVrbbEUAQcz4JgR/37DUDVvCUG2yUMzTiEh2o7sHCW73N+Ae3r9Q==
X-Received: by 2002:a05:6000:26d3:b0:3a3:7387:3078 with SMTP id ffacd0b85a97d-3a51d8f8ff8mr4161811f8f.4.1749106540703;
        Wed, 04 Jun 2025 23:55:40 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a526057278sm1910099f8f.63.2025.06.04.23.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 23:55:40 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Michael Walle <mwalle@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20250520074439.655749-1-mwalle@kernel.org>
References: <20250520074439.655749-1-mwalle@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: add AUO P238HAN01
 panel
Message-Id: <174910654001.1422723.810101462867818295.b4-ty@linaro.org>
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

On Tue, 20 May 2025 09:44:38 +0200, Michael Walle wrote:
> Add AUO P238HAN01 23.8" 1920x1080 LVDS panel compatible string.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: simple: add AUO P238HAN01 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/a3bc2ee00b488bb7a90770447a886c678d64756a
[2/2] drm/panel-simple: add AUO P238HAN01 panel entry
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/8a45632ed3179995b2956cfbf140655701301471

-- 
Neil


