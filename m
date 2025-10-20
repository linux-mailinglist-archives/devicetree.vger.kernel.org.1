Return-Path: <devicetree+bounces-228910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1CCBF20E4
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 17:18:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3AA624F4639
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 15:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1ADA2641E7;
	Mon, 20 Oct 2025 15:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YDbUihfz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1547625EF81
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 15:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760973509; cv=none; b=Hj+BENf7m19vUJEIz93bY3ljlrG3UYv9YLrYy2zhqgTSkNPB3vPyixcNYxp6PSIyUE9WFwYJgPHBzATPiLkWAk61x0zi3tdSi0e0wzzVmF7NZWif/wMY5cmv0dBgo4+Omya/fZ75ayHNd1XEegu+RuQMe/H0rrFQi+o0W6PQwCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760973509; c=relaxed/simple;
	bh=Jyxeti9uUZ9Fw4cj51QB7FVlE2BcnZaTFx9SeNp0Vgg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lkN0w7JGK1+7eUCX18K0lsF+Dif3chjn8ju3JQo5JheZZJcygFtEbs0HHWr/NQk7MYaW69zasBQlkZL0YGr99vkyOC2ImouhuSYwdihnEWtet19s9FWYJo02qyexhOJY1DxhxWCVB2s1DkS9CWmdia+8fT/EWEjfKoMDbeVB7AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YDbUihfz; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46e6a689bd0so42274135e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 08:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760973505; x=1761578305; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EIri8gPwCvgxzuVNcP5Ad0/5z9CcdBUeY3ByihuZDbc=;
        b=YDbUihfzJWYcEnhnnGOjlTZPIQ0b78n8R6Nb33BQ+b+GzntxFZB8Cc4gWdyiHVFEdo
         P5W/gANwaDoEpLcZbwAtnhKE7x6vaRB+EARuP5Yy/wXbakonoZP9y19OSVsZgaATGhvH
         j/S3NF0Q8ZcdL7PETl9k4BstmnTBSO5djUxAjYA2F++LoBECuaVJAB5CPyNR2lftt05I
         uIqnIkqhL6bQweXMXKlaljPSqxQpyHIQbMtWvwPvWPHIwevzHVU7hLOXJkRsBibg+Vdg
         +aR+uK8NE7lYWLZVjGFrep2PscOzj+VOkzmKuJGvaW7cs9bxBMGiXQoL+ucX3Usqoirp
         wipQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760973505; x=1761578305;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EIri8gPwCvgxzuVNcP5Ad0/5z9CcdBUeY3ByihuZDbc=;
        b=cntg/fHDBZ2cnYygJeaUz4HDm+2uLNbdnsdcULlRu+ClsLZkIY5AoV77LU9kt3WCT2
         +lnwbAcT5FWVkycgQRI46iZOweVIzc06mFdTLXLsDIkYMo5c2IRmk4DjDGERGlwmdvlz
         FNH339o4M7zUGZrsopiomgDCBs9NGAY8x6TfgFIhSuc3/j1wqt2omDxhes9HrHdDPxfk
         CUBUzIB/JQSAjcxRtd7gdWi2dsw4+SoCg4vLq1+uV2SgDy3/O+o4FWT3HwePQMKZ4Len
         OkOIJeoDlhesO7VmpOqYzl7oLXm/m1vPVP/ec1Ew7gbNlYHbWYmL9Zw1kxKIJzooMxLb
         eSLg==
X-Gm-Message-State: AOJu0YxRkluHw2se3ipAUWXweZu71QgzPjSa3k2eEs3OQeKMKUz1WQxE
	LMiuViFZIvFN+o80PX1aK/svB4GTbV2yxU7zYsqWex+239g3e/xw6VnTLz7VDg==
X-Gm-Gg: ASbGncsDgECETsPEJ0fPm5RpXkp0khz8OIJNwF9NlajDDi04ARxUIbOe5338KfnApMq
	kJCk1588qP8KuTRg0VaNqOQ9KBGiRgDSLRWSjfUFEYxQ9AyQRUlbt6Lgbgb/k4sBBlSADzzrHV4
	lT9eZ3nLyWcz3V1PIcB9kG1snFRZ9O2GoVIojG9kA2UwhOq8hiwJfpVuKpCnsKQkJHC86NZwlDu
	rMIOhcdJ7pIyoCbNHpDAJk9fpggjIyLJxEUaeaK/5krjWIcRZuy6kJNn5SPv8lhLXHFfcG9BU0h
	AzN6xyJ13IgQ5xs8N7YFibGYKAH6oxIovwzpTDLwnenUyWgZStPyK4Ts/HPMB19fZ8vqz6rcb0I
	b82Q8ckiu4AoNMFbZvsrpxRzNEl2WUpgPSOAgSRRHJEgsKOiGFQ+BhEDvA5lnfe2XtB3Nj2XpYK
	qbrLDvkfX6AS6Qjvpk5Z8JPiNqDblYgFexJ0Xwan52oCcH7TtT1LH6t+pvzL7niUDt2GIf
X-Google-Smtp-Source: AGHT+IHQEYoBMcfx1b6Nsx/IivzRuTLpzyAZ455r3ZJisHcjzwPbpeFkoct3AeG4wC3jqAyj6VhBUA==
X-Received: by 2002:a05:600c:45c9:b0:471:115e:87bd with SMTP id 5b1f17b1804b1-4711791c601mr98951155e9.26.1760973505153;
        Mon, 20 Oct 2025 08:18:25 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f00ce178sm15617638f8f.46.2025.10.20.08.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 08:18:24 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: devicetree@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Maxime Ripard <mripard@kernel.org>, Liu Ying <victor.liu@nxp.com>,
 Gatien Chevallier <gatien.chevallier@foss.st.com>,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 imx@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 1/4] dt-bindings: bus: don't check node names
Date: Mon, 20 Oct 2025 17:18:23 +0200
Message-ID: <5930653.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20251020060951.30776-7-wsa+renesas@sang-engineering.com>
References:
 <20251020060951.30776-6-wsa+renesas@sang-engineering.com>
 <20251020060951.30776-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 20. oktober 2025 ob 08:09:50 Srednjeevropski poletni =C4=8D=
as je Wolfram Sang napisal(a):
> Node names are already and properly checked by the core schema. No need
> to do it again.
>=20
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
> I'd suggest to give subsystems some time to pick this patch before
> Rob applies it?
>=20
>  .../devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml        | 2 +-

=46or allwinner:
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

>  .../devicetree/bindings/bus/fsl,imx8qxp-pixel-link-msi-bus.yaml | 2 +-
>  Documentation/devicetree/bindings/bus/st,stm32-etzpc.yaml       | 2 +-
>  Documentation/devicetree/bindings/bus/st,stm32mp25-rifsc.yaml   | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)




