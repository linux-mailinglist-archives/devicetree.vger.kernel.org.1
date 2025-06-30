Return-Path: <devicetree+bounces-191173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 461BFAEE2E4
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 17:41:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D62503B042E
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 15:41:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 512A528FAAC;
	Mon, 30 Jun 2025 15:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LqIWphc7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794D028ECE3
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 15:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751298084; cv=none; b=OSn5IKUygWW8oLRetHCzYWjiliEqG0jb+7xb0/9T44/J14fjiUhl9GPTwu2WcBVIsb/5Uhs41oRe986KUwAEi81OrmpkikEeX27zVHao43rAk8p961/rZ5R145bkNyeNGwauyCd1vPRXNXeqfP/FQglEMVv8ah9hI7MEyl2LGRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751298084; c=relaxed/simple;
	bh=46wZXqrVAlM8DzG3Fc7YjqDTGNq4EVFj7pqtyU56Opo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=qg9V4F4d5FxKZRFcOmZ1bH7Vn8j7mOLhGn7+qgmu1dME3FbYLVd5fkFvIt3ezV9I6ubYEtyorb7CeA5PRR+1ruGw9Rx/rkDNb6JOEPrLp0DqPHLbPDBiPfHyMFq82LBkZNRs71+8ko05c+UPruK7QmgvCV76rpt7a5lbqRp111Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LqIWphc7; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-450cf0120cdso23416625e9.2
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 08:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751298081; x=1751902881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4E/kjT2ltjbIwc2t5rBywTAc8OGpGOaC4vFH3C1Q88o=;
        b=LqIWphc7U+jpnEjiTOSvqJNPe+yJbbR9CfnpWECDJh/K3OZUTlDACRwizP8cyzfbde
         Kr9JriMm9PmvcdR6BVHhiv1xHygK6zUkhXPntWf8GEJuqMICJNn2wnUPc+UmEkqllIWh
         wik/QzU0QQeGWsV7l7qfO+/W9RyNP81Mnc4SET+DHaJpJPlz6I96ITNzNXS0aOBLbc7c
         rTIWKKwTbjkGbgqFKSzoB7kTRHlF952LUzkBH+WJHKEKfJvqfHOSxMSqttJ++vRS+HKD
         EgzayYlUfk5xHWqdDRH0sHU/7SMQIOlo3WagGioBc0NdUHgsuuAulzqvM4WblLSuQNa5
         t+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751298081; x=1751902881;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4E/kjT2ltjbIwc2t5rBywTAc8OGpGOaC4vFH3C1Q88o=;
        b=WM2RD8aDc0idHF9SePnTSblb/6exOPBzKtsiRHlDesKcXKzRIjYM3jnW13nYFpe2oH
         CiovTHG+zX2PrVqYHMoUCL+iUyMK2JziaB3uPDUyyXlpDJVB/xm6CtxHEPX5DNpmGXBq
         H8RVjx6gWUaj31SGjgxiI6RhmilyE4yF/B/lj4kdeD2znO62Fc95BFvCIXl0DGWR6U+T
         NcqhlycEeIUrWDqLQAAhMLbFyOu3Uxtg/jIsqFxy1FF6dQ8Zvv42cCgbxEGt5rlAt3qC
         WfoJEzNwKCeA9Z1OlN9oozQokldM1Tb4KilMbhLQ0Aj/sNR5qB73+ZZm4kmN7JVaStgj
         C7MQ==
X-Forwarded-Encrypted: i=1; AJvYcCVo81A1FvdVYGgSTN/ySR36asF0CjKKQtuGtoM4JrHS75k43W2G79Heoj9KXMhj2BZrbUK42CB1d4qU@vger.kernel.org
X-Gm-Message-State: AOJu0YyH2I5z7+dSaNL2YCPugsm+c7eVb+fdSLHlTr2Wm2BWaz6o2vMf
	z62PMR8FevrqGYvkFV4SJLQ0U6Szm0NwEiBTuwnbIIeOE4K4leNjCNvncGAs6WJleEw=
X-Gm-Gg: ASbGnct2KpPu/stnk60jmah8ScZdGVHLgzikJFmWFLF/w6KYEJ0Qf1YdoxeMHZD4gyI
	D6ORctxjY+nH/Bqp+dnHRvVGWd7c1oDgBT6GF+ehD2yFZ5YAD/B4VZhKBxiMtNl2REZxdnFkw8y
	l80WrXt0Xw+fdXV4RgOvfgdTjw+fFnSyoQXMNLEMunr8spKFFoDh1gIAonn+lEjuT7W01MyUDSy
	n0M0klgnPYhTz7LQKAQ5oScUwz3SCC/0amUBm7NsXMLhkKel+RhvnV7Icwnin3EEbhhuKNWL6PF
	t5Ki840R7kumypPiLrX42kQvbzh0VWiAzRALyHQKfcFIclEsZtkjdd9ifB8tCdsoMQLaiMb7gNM
	PZPaz/5Y=
X-Google-Smtp-Source: AGHT+IEuT9/EiUwKESon6ClV7CJktQo+yFrFWhG+bJtZTumFOvoppPXGadHx2JbaoBOarca6MzKDRA==
X-Received: by 2002:a05:600c:1913:b0:453:8ab5:17f3 with SMTP id 5b1f17b1804b1-4538ee837e3mr128984475e9.22.1751298080673;
        Mon, 30 Jun 2025 08:41:20 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453823ad01csm170270975e9.22.2025.06.30.08.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 08:41:20 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: conor+dt@kernel.org, quic_jesszhan@quicinc.com, krzk+dt@kernel.org, 
 robh@kernel.org, sebastian.reichel@collabora.com, tzimmermann@suse.de, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20250616070536.670519-1-andyshrk@163.com>
References: <20250616070536.670519-1-andyshrk@163.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Make reset-gpio as
 optional for Raydium RM67200
Message-Id: <175129808011.2286551.3854555524045172494.b4-ty@linaro.org>
Date: Mon, 30 Jun 2025 17:41:20 +0200
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

On Mon, 16 Jun 2025 15:05:16 +0800, Andy Yan wrote:
> Although the datasheet of the panel module describes that it has a
> reset pin, in the actual hardware design, we often use an RC circuit
> to control the reset, and rarely use GPIO to control the reset. This
> is the way it is done on our numerous development boards (such as RK3568,
> RK3576 EVB).
> So make the reset-gpio optional.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Make reset-gpio as optional for Raydium RM67200
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/7513437b42d3ea682967e8fab113e20e558ecbc8
[2/2] drivers/panel: raydium-rm67200: Make reset-gpio optional
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/941461216c8d96b2c8b91233ba71483e011f78a3

-- 
Neil


