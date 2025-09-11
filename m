Return-Path: <devicetree+bounces-216070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC00B5389B
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F104F16643D
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 881D33568E2;
	Thu, 11 Sep 2025 16:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hOKFZT33"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BE934F46A
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 16:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757606619; cv=none; b=pE9fZfeggXIhDOY9dgP8FJ/y1VbuwUCr3T4XRrcFBBhgzWp2m0g1/xgEIG6xTrheAhXmXip1XLr4FIQ949ZTV+2GxcFFpK+QlIow6s1wa7C7jvWTEkoX0wAI8oPqMVxI7mYVZ/E+NVldtZYDt17bbFIZGTVGOiGEx3XfJSOIagU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757606619; c=relaxed/simple;
	bh=Py8tEk0Ei0y/z+n+ilOScm0a5cfD6f4JKLzbyJg3JSM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jumys7Gfd/ReEZgMhkq2RmAHSDFlf81gcCLC3fxHr0AHALjo6LHtaos22d13a+FLP6UTGVKHk6HqZnlvIm4LEEJH1hEmx2sb8pnCrfAt7ordxGnqXTkvB+L7JqxrVR8W1sZF5MCTMdtTQ4obdFaLig/fqZ543wZW5+CxijGuUIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hOKFZT33; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45cb659e858so7109735e9.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757606616; x=1758211416; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=juu37p0WD4XpFBvsQ98g7XcnhD1Q0GfDFr2izWwlv3E=;
        b=hOKFZT33G5qwUdS2bCdUveD7GF71FSAQlw1KjHOQCIvwLPgsjxR/RRFDS0thplWyHD
         puu6zfKlwzB3DJfXj0HBjhVOF+1uq36WYFDI1HB8es1CJ30FR+5OfSksFmtgqqtrFcbN
         Lrl1xViQ8qno31TnG8wsu/sQ1E0Bi2c6lCSO86rZRllp89kw5vmHUZvEHdsW2LyqB/vX
         xEFrSrDQ2jDgzF6yWHSGCFmR+mEhQSBoaQY136QULQsX+iRCKVDUJ6j5gZ++OhJzVTlS
         6oMG3mRYU5R86Cc0BqvMbu7pfcvDDuzO2WJzbSfNt7b+9kVlIGabXdgu9+WOOZweUj9V
         R1Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757606616; x=1758211416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=juu37p0WD4XpFBvsQ98g7XcnhD1Q0GfDFr2izWwlv3E=;
        b=W0Jo63NUDyJ7JPPopu8TB6l6NqwwKsNG0q9QJ55UxoAQQ+vcI8KMa7HrNKQsKA3DGF
         OFFb0d0bh+VnbwTzvjA9LtS2hkgMQqL3JIKe3Rf8DAj8oNscqucjSkZm5TIVnBPnFqoc
         JuzIfRvjtu8EW068yKFwwwHbz25Jxra7jPkDJbScXuzg2rVXIO1gPzRi49Tq9Xk8NnXe
         zbXJ4QtbWnU612A+DhcFx7kAwXrwXyWU41Q5GZXzZwl/Mm3TziOo/5DeS1k2ObokM2eq
         Pr0SlIqEbZPst9SM2kSPJisEedcLEo3i2AxCRhl7oWwj68w/F59kBnABYVl9qVN4icTN
         bWYg==
X-Gm-Message-State: AOJu0YyUxb5X6ajaysIeJDN/2vqiSfLeHaw/CdFIeJoP06zPpmZfXKJ5
	dmc/PU9CR79uULvhyiNZIl9jz7qj6rJDRfTvEz1PiY8l7EU8MPGZ5Tbo
X-Gm-Gg: ASbGncvgSMuRiiDaI6TR/TTc+npNa9px9NaNRdcWNuUGkLnBATkvmsZuGzPjE79Fw9R
	xoGffOYUP3BN7fGPx8dnzWJiyb1Wg/5zCH1oYBnUerSX14lO5jH90WaTU4C3NPEO+b/Wi/7bN8i
	eF9KqnlaEPMS7PzAc2snFT1SvgTT1HQqmraisdMhuUIY0W6uQd/l8BrnrWBo1kjfWb8DhiptfWG
	hObip+1wRSCxsTKWq1xqfbNmdyDczilcI0LLKpN91uLB/eII3rRuVYE2bZaaPiH6HLr3rCOmOw2
	cOG9RsNU632VBAsXQ861T8clJcB75aPkOW2Lbif/iq3cptOaNdF73v8cAB+9FJeFRbtKTxwizPA
	wJGBv8nRbAAz7GSFiIoXWqdpOyj5o87jt+S0cw1hhp04oTCCrN++vA4DrOe0TGO7+MrJB+8WSGt
	c4qPbcDClxsZR/Sjcg4Q1U8ytb
X-Google-Smtp-Source: AGHT+IEZsAWaysBc+OQ7PsOUMO9De4gX+5mEaMPhifkhw2MfJOEeCsTWH6E3dD6f9tamKPLvBQt5VA==
X-Received: by 2002:a05:600c:1387:b0:45b:9c93:d237 with SMTP id 5b1f17b1804b1-45dddeb93f1mr166508065e9.14.1757606616075;
        Thu, 11 Sep 2025 09:03:36 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45e01baa70dsm31874215e9.15.2025.09.11.09.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 09:03:34 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: Re: (subset) [PATCH v1 0/2] input: rmi4: fix RMI_2D clipping
Date: Thu, 11 Sep 2025 18:03:29 +0200
Message-ID: <175760648466.2794963.11623532624737227996.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250903161947.109328-1-clamor95@gmail.com>
References: <20250903161947.109328-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Wed, 03 Sep 2025 19:19:44 +0300, Svyatoslav Ryhel wrote:
> The physical max_y value was overridden with a clip_y_max value. This
> caused problems when inverting/flipping the screen. Further it messed up
> calculation of resolution.
> 
> Jonas Schwöbel (2):
>   input: rmi4: fix RMI_2D clipping
>   ARM: tegra: p880: set correct touchscreen clipping
> 
> [...]

Applied, thanks!

[2/2] ARM: tegra: p880: set correct touchscreen clipping
      commit: 2fa1118387295b9fa6d70a48011b30184348abd0

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

