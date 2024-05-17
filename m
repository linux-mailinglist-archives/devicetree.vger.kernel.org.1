Return-Path: <devicetree+bounces-67422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AB48C816D
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 09:29:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4A5B1F22002
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 07:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4ED171C8;
	Fri, 17 May 2024 07:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TZOKghux"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D66217C69
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 07:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715930975; cv=none; b=fpFYH3DXvh4gu5161w5H10syh37OAMLbiMvkdHbvPSdx9d5eFGdSttgb9Am2fg20HQdsVter6eJCtEfvrEALsHbdh7WHqH0LQAxGq//O+r0KnoGRGNZtt1pvHOL6tWT3yTq8reVwbZMtR5f+7U2TVvI4aOCJP2nw7sSySGbpuXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715930975; c=relaxed/simple;
	bh=+Pg0O/D237pnHiq4isGBwa5AyXb/leHcwbgwIJQhawc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=RPdBtnUmdgM5WdFM+XfhpjPJXYV0GmmBZNxo2ojAZM1O2Th/PiQGe3QwWcLZzTOfm4+Otkavalq28SdnZ8rg2+1wIGvRejyfIfpmWhQrKvXlRkEEmkHa2GDt6tIuFNPQd5Zl90nknDzX1VH+Vj1Rk2mHwut48EDLvZhEAdKsa1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TZOKghux; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5231efd80f2so1757958e87.2
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 00:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715930972; x=1716535772; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aVPPHFIivYXuI34xT6IINY7pJ/j08GTAqcpDxWlNso0=;
        b=TZOKghuxqy4rMGzhePvO1U5v2bIZ6HHSkFap4hLvu6XhH3NTWfx3dqrdWuujW+ws8M
         2BQd6oLhEpuVmRyHTTn1qd9FGh4UC4Jo4eEntB1ewL4IpX6Tvdn74YtbCS7p6xgjV6dD
         wPI55Cgn7IBc7UBJgdBkorzBBbFjao3t1e+r4294X/1Z5wMdkorkeMaVr0lE2gt8tCJl
         Xzw6JqJRqJFoOL7n+K2QJKYdzFE4+D0DFscLaDNYhG9vea/H3l0VDF9202+P38SIUsg4
         0I084NSwPHDIa/MMg315OTX5eKoIbEMVZblYmr/Ie8h4LJ0ChkEnZnAaQMD6tYhVwoJz
         4PWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715930972; x=1716535772;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aVPPHFIivYXuI34xT6IINY7pJ/j08GTAqcpDxWlNso0=;
        b=m8zGmFyyuBIYqcdy1lnOQVupVx1rLZ/3PVsaFsdTcUF2LnQm0iJ1v/xbzYy7Ch0FZ2
         Ry0IHObnX+bCWDXVO7da0DUciZ0Q4235Y+8g301BckUDCPccl/nN58+y+08BBXVqTVU0
         4iou+2UAVMPsBQBR8xN/38WFAsHnEh/bbH1/Lak8iKU6CoXNS7/iCM9mxUsdeKMua0em
         yP4LAksjpVGNhiQdcTQWfkSJtdEVih0JylF+peo8vyR75dFKf0O8d9mtmT0qoJg5TIFS
         UeqX2rcUMOaXI9PWCjGmFs/TOKjNrsNxQc6zzWrzFuIb2fxrl6cMGMAWSZ8HNABIe/Mw
         iZKg==
X-Forwarded-Encrypted: i=1; AJvYcCWW2c16zAyaXW+yBLRhVtslW/Jz9K19QbkYCRCBd7vc50SbixX32jlkhrupVXAvoT31m0d7Mv3zdgw3whKb7WuYLm9T7Cip82z6aw==
X-Gm-Message-State: AOJu0YzaypBJSWDjDYsodG4p0rcbSOmsr6QDZpHX0gDTqN+Y0VSpR5RS
	ffywil4csDYKXpOw6+WNqHSATk16Z9UqR/0KONjpmMzovtydHLknb/pkn1Wtcgs=
X-Google-Smtp-Source: AGHT+IEByhpEBP2/NAYzx4xA5Xdb/FpCPkawAti9cQxu7lP4ASb8NBnpce6OPIRbtXOTo5hO+WcPeg==
X-Received: by 2002:a05:6512:2201:b0:51e:bc4f:ed2a with SMTP id 2adb3069b0e04-523d39f8176mr1966362e87.37.1715930972165;
        Fri, 17 May 2024 00:29:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502e5e0b0esm20746461f8f.26.2024.05.17.00.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 00:29:31 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: sam@ravnborg.org, daniel@ffwll.ch, dianders@chromium.org, 
 linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
 robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
 Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 xuxinxiong@huaqin.corp-partner.google.com
In-Reply-To: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
Subject: Re: (subset) [PATCH v7 0/7] Break out as separate driver and add
 BOE nv110wum-l60 IVO t109nw41 MIPI-DSI panel
Message-Id: <171593097129.261191.6486205696755307663.b4-ty@linaro.org>
Date: Fri, 17 May 2024 09:29:31 +0200
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

On Wed, 15 May 2024 09:46:36 +0800, Cong Yang wrote:
> Discussion with Doug and Linus in V1, we need a
> separate driver to enable the hx83102 controller.
> 
> So this series this series mainly Break out as separate driver
> for Starry-himax83102-j02 panels from boe tv101wum driver.
> 
> Then add BOE nv110wum-l60 and IVO t109nw41 in himax-hx83102 driver.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/7] dt-bindings: display: panel: Add himax hx83102 panel bindings
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/eba54e9c4483b585f6e2b9dd2472eb110417331b
[2/7] drm/panel: himax-hx83102: Break out as separate driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/0ef94554dc40fbdb7e57ff90cd1e7fa71e1e89fd
[4/7] dt-bindings: display: panel: Add compatible for BOE nv110wum-l60
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4fd07f679bebc432c72fc2c5cea23e39098e00c2
[5/7] drm/panel: himax-hx83102: Support for BOE nv110wum-l60 MIPI-DSI panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1173db117634b42383cf5d397ddfd4d4860ae20b
[6/7] dt-bindings: display: panel: Add compatible for IVO t109nw41
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4020c15c0fcac8d66818dceae7f39736cf9f16b0
[7/7] drm/panel: himax-hx83102: Support for IVO t109nw41 MIPI-DSI panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3179338750d83877bbc491493032bdf192266ad9

-- 
Neil


