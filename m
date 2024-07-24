Return-Path: <devicetree+bounces-87747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE2093ADAC
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 10:01:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EFDC1F23115
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 08:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D590B13C90A;
	Wed, 24 Jul 2024 08:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NAvkcLlQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0E013C673
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 08:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721808007; cv=none; b=JnbzMX9H9vKttP9rvQYOyFY1+o1gBrxmNuvzdMQIUTkso8NmoMlKvIg/7C1CiR6JiDVFabsTyuA6iX6rqnOvsN5v8sF6i7/nt9O9GArAvl/ICOxVG5H6/Od6DzGvJuFm3PF1Atm5AuxRkGl481OkCCQRIH+Dtq9wM3NoW6T2ujo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721808007; c=relaxed/simple;
	bh=yeUAH0g7hbkF6iaezGVTf57lSZ0SBToumjcqPoEGYUI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WEAV/II69qChd/IWyq7qsr1y9J1GiVjYL55ZscklfOmtJQbVHXZrZf6r5LcXyC7s/UNDMJC7W4CKEY1YSmzWXFVbvNZXXm+wsc4jWSrANb/QF3Hk7QVXExvYbycHbiRfWb6vhTky3XOIc5WBQ/Gwcf8hX/LXTN/PbY6WnMme9os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NAvkcLlQ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-427d2cc1c4eso46223925e9.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 01:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721808004; x=1722412804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9gksPNd/8mTl0AswME5OKgNNN/KzZPdsYR5KlLDDwAY=;
        b=NAvkcLlQTks6wCv4cTo79n0S3Yo7YFCXrvl9IanQOfMuhAlUQS34gQyxMlveGbZrJQ
         9/xsXVjqRH5DOKGDWtxvLbNLZKIQg6VObApg3nXDvl4obk6VL8dzrtIa+62jQRPmmlnJ
         A9gZh5yNkmfWhsNgh92xmJXfSItWMD6orZdE9eN5OXop2AqkeuUhGtdHu2J+TS6Vj4Ge
         HDDUk/J90qvE79x0bQnaHUFnTEltFQRJNti7+GPTAh50MAe56W087dvnHuh9IKojtski
         3iGwDlHqji6e+BoCgmxwIoJIgdirbYWKNT2reEUdxd033PeZmLKK/UArVwh50SZhc4dK
         2dXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721808004; x=1722412804;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9gksPNd/8mTl0AswME5OKgNNN/KzZPdsYR5KlLDDwAY=;
        b=p14dxAAoWWD9YIISP3EKh260IsAtK+By22MnmuYyptr1s6B+VYIItu/+ty78QF+chg
         i0K0bK7EoWK9IXVVCu/9OZGkwbEoMbDqDwuwlzwl/vkyQpuVLPIzAIChVSVYsTOG1Z/Q
         2gFFgmFg/ApBfbDM3GsyprCLdO2QRUpPygZKtlkML0wFDan8zE0VAfwUPLgYt9Xkt8mp
         IYdl3GFOp45/lmMpuQhQQuMBRcS5yBRINUdUBtq7WlDwqQptHvpAD+dDBRzSgT4IzX0C
         MUENucw9nMvurihs9tzbEM4iQjuJ0tF1/njZxrDh2u/wT9yQowEwjM2KMjTauW8x9G6E
         nZiw==
X-Forwarded-Encrypted: i=1; AJvYcCUOyY8JF6CittIqj0RVA6/WBCaa/NAYCSqt09Sd07NYIHb+USimUDugIX/InUNSgXHDQiK4jgofSP2n10vSW15H3yD7rHEDJVmXKg==
X-Gm-Message-State: AOJu0Yzw3NSONdDkUDG+PgLT5cBQURbd0tJ1YFDmAl+RE94dS+6F/25X
	sMYKxedUYB0z/3kemIT4iO1PZXP2610T1SB2zp4AaPhBp1rCsJOTbsb+L7Oua/A=
X-Google-Smtp-Source: AGHT+IH0/YSxaGFFUnlIWu+/ToSP2Peo7hMQ3mRiuobNjGX5FoeFex9AY3X59ni2+Va2L5RP5LR6yg==
X-Received: by 2002:a05:600c:4746:b0:426:6960:34b2 with SMTP id 5b1f17b1804b1-427f95c1e5emr8646555e9.33.1721808003111;
        Wed, 24 Jul 2024 01:00:03 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427f1f52b8dsm33884015e9.1.2024.07.24.01.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 01:00:02 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: quic_jesszhan@quicinc.com, sam@ravnborg.org, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
 dianders@chromium.org, hsinyi@google.com, awarnecke002@hotmail.com, 
 dmitry.baryshkov@linaro.org, 
 Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240723062615.14796-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240723062615.14796-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: Re: [PATCH v4 0/2] Modify the method of obtaining porch parameters
Message-Id: <172180800228.4044086.14282905036923611293.b4-ty@linaro.org>
Date: Wed, 24 Jul 2024 10:00:02 +0200
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

On Tue, 23 Jul 2024 14:26:13 +0800, Zhaoxiong Lv wrote:
> The current driver can only obtain the porch parameters
> of boe-th101mb31ig002. Modify it to obtain the porch
> parameters of the panel currently being used.
> 
> Also switch to the drm_connector_helper_get_modes_fixed() function
> to get the porch parameters.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] drm/panel: boe-th101mb31ig002 : Fix the way to get porch parameters
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/c60ca14bfd2d399a66f7164e044b63991c6a5a82
[2/2] drm/panel: boe-th101mb31ig002 : using drm_connector_helper_get_modes_fixed()
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/708899133615bdb8087cafa129b8e24397d0c79d

-- 
Neil


