Return-Path: <devicetree+bounces-199376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FACB10714
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 11:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2EC74563BDD
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 09:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49204257453;
	Thu, 24 Jul 2025 09:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="DIhshwtA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987CC257ACA
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753350949; cv=none; b=ki/vF4Z66keb616CzQZXZdJqDWWy0c4qpKPbt3jIuRm3YCk2QsDFrjIedTRCb38Tw6hq7JcmYiuzDf0T/uTnsmLAUt7Hfz7V1jakJMxLhSrf0V3gOOFMshJsmFzZ8/2R9EwusaMt+Uc8rjxpSCwmlUX4ueOrfILhETO3vHVWcN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753350949; c=relaxed/simple;
	bh=T6z/JcKCr3nrlWauYV3AJcOoEaGVBeYh9OPAnzcSIV0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kc8tZICpVxMeN7UkaXZKqE9qv1pEX4A89YlX1lxNlekCpJjiX6ic3ybrjAIflo3rdX0TsR/IcqDxq6Nhf2wHrmPKyzU6FBaSOORm2XBzxLznYTv+pmm/SDSwqDd1e4BUUJ5oPly1hwDniB6KG2sQGizB0i1DJLWzvEib5Qo+wYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=DIhshwtA; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45618ddd62fso8353205e9.3
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 02:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1753350946; x=1753955746; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkXB2c1oP/E/k06GcTgcZXpElzLoIFNZDVG4i5HTvOM=;
        b=DIhshwtAZ55KMcQMYusrJpUWFhyxPh76H4UOO0xPXHCwnEYEFNIPC+lGNgxLtcINLR
         yEdbPFoPmW6AOR5vF6Vs8DXXIbdi/WkHVhB/DdN2UhwzJJk14V54OhaRdiwcfnaUUBjD
         BoK/qcH93Vw+GdK3E2ToxAaLZ2ZV8Rzs0aQZUqkJUmu1gdupJQ7Esu0rjw8bBgFv3DlZ
         Ms1OYTg8ll9/5lwGD66wRAJDl1HIzFzoPdr4Y/WNLYYhuuZ77VDtxmi2AJP+Oi/PuBz4
         vM0Yh5FnNHTDxwudx+IfQ+pypSIiIb7vPFQPdveCQptloCOzjjSvuPsarNOpZ8pnoEve
         B8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753350946; x=1753955746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hkXB2c1oP/E/k06GcTgcZXpElzLoIFNZDVG4i5HTvOM=;
        b=O1uDuPFovG8kCBEdphSe0HhpreKBOvaAamv7OGj+EYVFACZ0yfxzTSByGFFlcUomNZ
         MK/xNHUj82Te1Ee+kJQZX4DE6O0RSW2ePfaefUXHdQqHXkoX4N7ZJN+UqGdGSkUNuVjv
         /YxYEARvUdG9y/c9N6063UJKyUXf5KUVCFY8pW2HkalzSdarYiWPvt/dIuy4sNfVQ/Fb
         5T6MGEBTjiwTep2R+XTU5GTAAy14jauaSHMTdc0vNJzny3CIq53aHNOWES41Qk8SDFax
         M1FHNC36UcOmasTNpQ/9w2YhHNykRL+mLSPtEB4hQy+TAMjQRFv5+tvF72/qlMQAYNKE
         jwfg==
X-Forwarded-Encrypted: i=1; AJvYcCXOpPSh/BsbNzC8CLYFwhHHN8hdlBThtvWTLoPB4pg78iQqoa1pkO+/A93Y36wEv97grYvz4f6YMg9n@vger.kernel.org
X-Gm-Message-State: AOJu0YynffbDhiGYhAlXEHXKOQFWbnamW7EWqZms934tgXSAvchrOBAp
	us04YHZXhCNxjQ4UIxzxgrAWnauY3DFZ7KtxHBX2uM99gMPKjuM/nrtXCioKuahdNs8=
X-Gm-Gg: ASbGncuP+LIa8Z/vjjUBjy+kYIBFIljxI1R1Y7RcOojEFB4fgmc9vy8Xxkjr9rA32cS
	SrtbTJaK6KBLV7TbFS+KYHs7LQcoYSxZyLh4PP4NOgqLvL3+b63yBAT2+O+c1ShpBW2Um1LDEBM
	rV3A/JK4QOB5on9QCT/eEgAZIlwHczQcyREU75J1kZVq02tFu5KDuWjunJTielp6lF0NFi4EK1w
	Y0uJYbDwZPrSaBDfOiwq7KjKRYvYh1gMEzHea2MA1FtePewL68qjxVYk9yxyGUwLkSLPjKPqPJH
	SyGj5B7Gq8/9o1N3SQWUf2y6pjImb3qlu5nmwL0tba/g2PcQiFrDo3zpNtbRNkdT7tWmRtMgXQp
	CWsXu3/YOsMbBTsl3sFGNUlI=
X-Google-Smtp-Source: AGHT+IGRP/pIwNEZN/YSf647P0VBiKuokrllq5cryuGfggOfcoyMAvsAeQOTeSXR8LCaWYe+gmrK6w==
X-Received: by 2002:a05:600c:37c8:b0:456:cdf:1ecd with SMTP id 5b1f17b1804b1-45868d76755mr53246535e9.31.1753350945830;
        Thu, 24 Jul 2025 02:55:45 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:f44c:20db:7ada:b556])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4586f88cfe3sm10532965e9.0.2025.07.24.02.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 02:55:45 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/5] rockchip: Add power controller support for RK3528
Date: Thu, 24 Jul 2025 11:55:43 +0200
Message-ID: <175335094187.68378.6716301267666015992.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250723085654.2273324-1-jonas@kwiboo.se>
References: <20250723085654.2273324-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Wed, 23 Jul 2025 08:56:42 +0000, Jonas Karlman wrote:
> The Rockchip RK3528 support multiple power domains, one PD_GPU that can
> fully be powered down, and other that can be idle requested.
> 
> Vendor kernel flag all power domains on RK3528 as always-on, this takes
> a different route and instead tries to describe all devices power-domain
> in the device tree, even for controllers with unsupported runtime status.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: gpio: rockchip: Allow use of a power-domain
      https://git.kernel.org/brgl/linux/c/cc2f156a33278d9b23b5cf8f738c55c842d0f225

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

