Return-Path: <devicetree+bounces-113679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0899A6955
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 14:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F13211F2572B
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B543A1F7090;
	Mon, 21 Oct 2024 12:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n2JKhJiM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D1C1F4FB9
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 12:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729515548; cv=none; b=idCc7lbrBQD/Kl8Q10xNa3rJOi1FNj/EW+nmwUt0XMYwh1g+w6Efd5rd4EZ2lutUEgYMdNCppDMLGtZf4xgHtpuXS64J8XcQi6E5zM3AfdCOBWiaOTvlHQm1CMZ1hfL/l8JyvfN3dFNj6lG5AW2R+jOdpCHNeC4xW9PSu2av0L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729515548; c=relaxed/simple;
	bh=Vjhg7gca7YhiLzw2WAxTGMU+8oJpt8lE5jiECjRNVLo=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ld5IiYJUKpg69MQznsVIjysPG0P30B+n5vWwXtdcJU2AMNyLWz8SxD7VsR75TD81O/mjPsa/+0n8gFTdzC9SDlravEo1mwfoEAiBOMg3+FbrUtg85ePyG3lvworH0yQqFRdofyU5cFCZtlO+/FkUlC7LM01bcgFZO9E24bBI4G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n2JKhJiM; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4314fa33a35so45630525e9.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 05:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729515545; x=1730120345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lExjalvfmMpq5gwOfsIudp0zxSzrAVtFOo5di0TIink=;
        b=n2JKhJiMST6R5BLVxpqyrcDDXkhImyFYELNjfh/PdfvIJrSS3l8L0QGqKdqnkj6L/a
         57m4Lyw7mFPXDGT20kDyo17ybpGsqCX8jv624y4iSdGwU+sucdEHIPvtlavWd1HYaABq
         CZM79aUzmmDrl0N39Vckgc2/ifzXSRVoBHqPsu4sS/CJ0e57KKZhteJkO0I6yMmioTDu
         BQ0Q++rtwP73v1L/leExYLfAhfhbT3P7iv8OJVBWGo13mQmWyS6RZgPgYT4Yz/jXHVnL
         Xt3LU4ykbu7To2c1DqFakR1oFI/QCjHKlrXlZ+hQMcPeDaXf9zTrtUWEM67f+2AQMGpH
         s0Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729515545; x=1730120345;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lExjalvfmMpq5gwOfsIudp0zxSzrAVtFOo5di0TIink=;
        b=uyNsTwYGFh+mhung2jwzMGjEBuhyLq0WkUt54ADmx5fTOOycqrzuAgE6rdBpUa1pnh
         In6zlKflp9RtoWyeUO9Do3nTIHaKbhMBqj/R0HvBePFQyc53eyr0dxF+U/2+ywPRrRRC
         Z2JdFnSpSOEiZYDoD6E071uX6ZwvEWd+DpTLP1V47GiaxdPsdEk5cQQdp4K5972tnopX
         ugb0pMulpxhGbnbSWjbfl4+8g4XQha2CrlVfkOpN1BYSXy9FJ6myzv5bD4Y6Vwhd/hn2
         kB3kv1ql6MKg+jY2fIbRF8Xhx/52FNgR5auJRzu5TXlncfapoJ9PRdlyNEku1GGI4ydm
         4Yyw==
X-Forwarded-Encrypted: i=1; AJvYcCXL6qHHSHF5I5zkn0APwbpBvtM6SIrRBlWKZ4lbS9fzfIQNDs+Zu2RHdVOEe1NcbPj4EJ4U83h+dNAP@vger.kernel.org
X-Gm-Message-State: AOJu0YyIzLHPh9EhoIMX0voiI2R8BeTYpxDggYCSJomzqO1gAmNU2gxX
	MoMD+9GjPPQvg4l5z5PgH3ojjUViVU7UWvAc5Bf44U+JStb0oe/5wuV8c0R0O0Y=
X-Google-Smtp-Source: AGHT+IELOxD1yYGmtKz5NVs7Cif1bPDnq58GzcXrZcoKhOuT3MoVscto3WdxUTfJOlW5oxtkimx4dA==
X-Received: by 2002:a05:600c:1d8d:b0:431:55af:a230 with SMTP id 5b1f17b1804b1-431616977d8mr85207285e9.33.1729515544800;
        Mon, 21 Oct 2024 05:59:04 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5cc4dfsm57452995e9.45.2024.10.21.05.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 05:59:04 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Ujfalusi <peter.ujfalusi@ti.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20241003133904.69244-1-krzysztof.kozlowski@linaro.org>
References: <20241003133904.69244-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: tc358768: switch to
 bus-width
Message-Id: <172951554381.1240386.8857314666442848881.b4-ty@linaro.org>
Date: Mon, 21 Oct 2024 14:59:03 +0200
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

On Thu, 03 Oct 2024 15:39:03 +0200, Krzysztof Kozlowski wrote:
> "data-lines" property is way too similar to "data-lanes".  It is also
> duplicating "bus-width" from video-interfaces.yaml schema.  Deprecate
> "data-lines" and use the common property.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: bridge: tc358768: switch to bus-width
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/d704a2fe530caa7023949b513b8d1c364b5832fb
[2/2] drm/bridge: tc358768: switch to bus-width
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/bf7c079902c34f8b16ea3484de080a7bb4ad0367

-- 
Neil


