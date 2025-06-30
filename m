Return-Path: <devicetree+bounces-191172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B9BAEE2DD
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 17:41:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CDA1D16C4ED
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 15:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 621AE28F92E;
	Mon, 30 Jun 2025 15:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l/bvYIwT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A789F285C9C
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 15:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751298083; cv=none; b=kmgTB5CCfs56fpC83+btgNNRx+4Zq1lqFYtNSKLOwQLBzW22zNDHXrlbRK69JhIKfqefbnvhAWW+7dnukHx2nrKPtCYuU1Qac3O9ip2hOQGXLSd0wZGqO8nvlLLgeJ50APNJ7ns0+cn+sWEqZxsoa5bz1eYX9vuwSoGWZ5MTyB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751298083; c=relaxed/simple;
	bh=TxdOtgVn7aBHw3u7r5Eza56bp9saXogFpjFjd1vydaA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WbHuqul1WkF9VIrTir87SYjoLeBn4xDsodnJTmrTQDlowoilPjBulr2RZgS6T0grw5HZ3tzicoxi7UirjWZCjte853SbLrslZPAfSfibxLdq4ewQGy4UDltbdX7FmueGCXwDlg4OMe9BaVNJAg7CNl8LLmJKp82irSFqoj7+WbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l/bvYIwT; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4530921461aso30401425e9.0
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 08:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751298080; x=1751902880; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wIBoKnvqHm7jPzDveA9hy26/rZ1VMnuhsibGyxt03cs=;
        b=l/bvYIwTLe+P/YxQ/fVthVLj/wfTXaueom7iYq9pGA7+Bvd4VgzG3PwqZ+lxILFWH7
         hEGMmAd6MnVHwua0SxlkMHoKunanemfIY9O2nxdZD4SKsPBoDLP8YMsEG2jOiOzlE9fa
         cKhdz14FkEtQen+0ydDmPnAYuzh/U3efxThxySe1s03BGkRizYEbjO3adrhWTZq/ruq5
         vKUATi+Y4/8s0Hmk3OjrJr7FSvexq4nzkv421HRr1Gh6lA0kWpqgakO9qtJaXLbuzyph
         BhFQ/jocYNXYRil7QSzNL7JcTqWIW+NhSK9PgAu7JeYdB8GPV3ztkB7N07npA+xLorDc
         TBDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751298080; x=1751902880;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wIBoKnvqHm7jPzDveA9hy26/rZ1VMnuhsibGyxt03cs=;
        b=ZVX7p1GDj6VQqMo6akyLxBjR+6o25seDkRE16hjRFN2NpJKZuKVGcB0wAap8t8/zK2
         9d2CEWW6+QsoIqsPQQH70teXaCDR6zUuYW9LH2IcfY7N73S97NsZ5e83UrGw6CUHp9fK
         nEzwTUDJeRtggQuvC/ZF5yu/s2RgcHsIONpwz7gnH5ZS/1vw0g/GZQ3fK0B/8T73V/k/
         ZLfaODrA3U/CNfy4XQqtPnpbTIyFSvkX6qiVHj8QTRw6HDCXLktXZc5GSG9bW3ryConv
         Z0SjrJwXj0OMamxqUMGgnkHfnGnFoTNumbaHHMeFfTAC7lEYxiFbbDjnImkbPlbQz3Ww
         dFkw==
X-Forwarded-Encrypted: i=1; AJvYcCUse0sK7ji1QUDEi1ZFDZ70ogVR47vN2HuED8DfMk6cMneDY//0h1Sh67CxcNChJKY0LzalWN6xX6F9@vger.kernel.org
X-Gm-Message-State: AOJu0YxGi8zkd5V3rI7fVu/HNhUKy2VqWChY4lk6zMFb/FfL2vBGipkJ
	4xsVdzrOENZttOJ3kK5CMJgTlTtS3Gu59OWMbbPdgphmhWollTk2xXr3RolBt+nSPCE=
X-Gm-Gg: ASbGncsanuofmovVlbVpJrfvStMJYiSdykythiX3K6WpM4vdywuCRQByVFEZ/yT15az
	8TTA1+JZZjH97VeK1uxhOqgQD1x4mroZAeWE3GpWVjR5PBZjXAaVsHtgx20jXwb7w/dRk881RJU
	K6nlzuasm5hLz0DArd/Uo7gl0zkBVboG8v5AgPrTTabJyMRdCZAK9BcyS0Ryb0zE+1IN4kZ2KiL
	cjxaFWN4xJQwUeZZnLIMLl09gqvvD/x0RQNXnBWdh/5qZlqW+Zm78cKQPQxZntFgX1jIAlKuI1c
	4AYemPNzvSNzL1tdp9lpUff+IDuedq2KAWUSN2NLGV9mm11tXe0meUSo9stiwo52ECLKqTOc11J
	DYi6kIW8=
X-Google-Smtp-Source: AGHT+IE4551ep9ypNSyk+kUT7ORHBKsH3ZNJO70PmyyYi6i5YwLUZhV22aROUA+T9WDlUEHG+Ihrqw==
X-Received: by 2002:a05:600c:5392:b0:445:1984:2479 with SMTP id 5b1f17b1804b1-45390bad330mr126646345e9.5.1751298079968;
        Mon, 30 Jun 2025 08:41:19 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453823ad01csm170270975e9.22.2025.06.30.08.41.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 08:41:19 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Luca Weiss <luca@lucaweiss.eu>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
In-Reply-To: <20250611-fp3-display-v4-0-ef67701e7687@lucaweiss.eu>
References: <20250611-fp3-display-v4-0-ef67701e7687@lucaweiss.eu>
Subject: Re: (subset) [PATCH v4 0/4] Add display support for Fairphone 3
 smartphone
Message-Id: <175129807911.2286551.14063311790282968036.b4-ty@linaro.org>
Date: Mon, 30 Jun 2025 17:41:19 +0200
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

On Wed, 11 Jun 2025 18:33:14 +0200, Luca Weiss wrote:
> Add a driver for the HX83112B-based panel, and enable it on Fairphone 3
> to enable display output, and enable GPU as well.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/4] dt-bindings: vendor-prefixes: document Shenzhen DJN Optronics Technology
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/978a84297371ac33a15c56a7d31fd1b125427dac
[2/4] dt-bindings: display: panel: Add Himax HX83112B
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/54bd1390e98450a2c1cad99da3e2594e92c41a4c
[3/4] drm/panel: Add driver for DJN HX83112B LCD panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/df401fa1b80775109e2a52360fcb0b2b2300525a

-- 
Neil


