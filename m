Return-Path: <devicetree+bounces-144663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 558DEA2ECD6
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 13:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ACC70188403D
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 12:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4226081741;
	Mon, 10 Feb 2025 12:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="cs7gRFf2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8E928E7
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739191883; cv=none; b=IXwO6ohbtJumeUP2SM48q984UhQHahqSklTFYw16V10bxVZo5XgnwNphC3HVkfg2+mKTQm8vfOZPkPOrWyJeugxkmBM1VEsaSj0SDKIQt8lsX7J7Wyk6pJXvNnza/TusUVGIHQbw1vNgjiH1u9uY6gsit3a9BMFIi5lpzfvS3jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739191883; c=relaxed/simple;
	bh=+Yb0AWSvzWper++L7lRsz3UWuqSaAyKs/rjQB9+IZrI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gTCYGQBDcQ/ybjyMcT+0oyUbpsNWFOmysIWLD+Z9mwm3HozTu6eTLpQ67AP8sqcaXeXALyYCeXZ82L0l9pv7WWftaaBqzdDwt3VoIcTvkGTk6vixaiK/tRm02nWZZjfnNHaCEqNxfTU2nMUvGn3gw+DNxHb4RW99FMhMp7REzzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=cs7gRFf2; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2f9d627b5fbso8149935a91.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 04:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1739191881; x=1739796681; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+Yb0AWSvzWper++L7lRsz3UWuqSaAyKs/rjQB9+IZrI=;
        b=cs7gRFf2uL5yc2KxduSkQzXuNvizWLKmwqdiUmqGEheZNFkhzjD6B6Clo3TFG1qO4X
         /mHCrZ586rnEQPZBocUfd5aFqOc3SYDWJCxnLonUN4++biqHHJyxsTyI0VWvRD9gPbM3
         a+wiL8NtAbhYn6V+YnGdGZWWYiVxFpMYu1OiRGMeD7uwJo4L92/cmjZDqu4k4c3z46Yk
         oIquIqFXJ/Z7w21Qk915L2fbonVQK/OJKjiOdYB1QPUXm39YxBJn0qvgBPQDLrl0/jah
         vaLr7/1rFw9eH9SgNPpym8bsN+XutS+KSdBvjiTcmdkadS/Jo7ZqB3AXtBQCnbJkWo/l
         BF1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739191881; x=1739796681;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Yb0AWSvzWper++L7lRsz3UWuqSaAyKs/rjQB9+IZrI=;
        b=B5dXMTQrzsA3XNRhgKgYPp9iRkXvZRvjs+YWOTPN+UswTHFFmrL4LdICdy3F8t/7wd
         l1zkKkGpmwAo1Zqug4zXhNq4XjbJKBJTPEwXVXvGOAg9dQnY0PS+sW/3X2ZuY8howHyU
         o9/HCdV3/bk1gUa/b/xkxC9QXaY/lovDnGWkrI0xhX+UoUkr+FsoMOhWTZfYlRNcsFGm
         BDzr2SuuDIttLxfzw/rSSocvi4H5iwgRtrdfnBCcucgNV3bWnck6Mk8I0uYjof+a8DHI
         SLAUcIv2h/D2gmH/vHzxIzgTKMAZrINRuzKMHwMkBASSj1vwqp5cGZev4/KSx8p1jaNM
         Z1CA==
X-Forwarded-Encrypted: i=1; AJvYcCUyuQueifqEnmlrwrU4LRFh9cR7ygaQAEKC0KBQ/6Nq3ENtkIUZAp3qimb0P2oxGgouXhqR0zWjaMOQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwEwdOyml3uQruEUGzJr++9ypdeXGhuCoWqd2MTdSOZUlFtnywm
	cMWW21BA4+Jj0o6J4lzOLWQhlFkoeILeifSVURba0J0QhvtYJdYsmVXKvu3AQiivDFFnDoiOp7n
	AZ2LL+nLq57uLsZz9paY5161u6tFJK9KzZSuxkQ==
X-Gm-Gg: ASbGncvLBL0J/qmoe5Tv7f/g8+P+ClTszeOuSpwD0hJUQe5Kg3mTCdAAGLjHn2hpIRc
	pTOnXtVE6rgYE7jvZMJZjcVyHsSEBrbcykTdrPv7XsoBAaERlh3BijoodqW8pVLMXVHR3Ujk=
X-Google-Smtp-Source: AGHT+IH/HUfs/WQDH9q7eIfT/iv1s0BqbEiijgGJB+xtMIiqfoSqIhTiQ5xQmT4IYeIt4YgSchZ2PjkqSmXBwPFV2cU=
X-Received: by 2002:a17:90b:19d8:b0:2f9:9e64:37b1 with SMTP id
 98e67ed59e1d1-2fa243e9f80mr20290354a91.28.1739191880824; Mon, 10 Feb 2025
 04:51:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241227132936.168100-1-jagan@edgeble.ai>
In-Reply-To: <20241227132936.168100-1-jagan@edgeble.ai>
From: Jagan Teki <jagan@edgeble.ai>
Date: Mon, 10 Feb 2025 18:21:07 +0530
X-Gm-Features: AWEUYZnHRH8l6chZJLn_I2J6MTRIWUy3X4w0l00WsZj1is2NYfhDUvOTFAqvwXA
Message-ID: <CA+VMnFwHEXWP=d_X0T0E9fHFDCkXHxpvgML6jAHNfh9ikXTZWw@mail.gmail.com>
Subject: Re: [PATCH V2] arm64: dts: rockchip: Enable HDMI1 out for
 Edgeble-6TOPS Modules
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Type: text/plain; charset="UTF-8"

Hi Heiko,

On Fri, 27 Dec 2024 at 18:59, Jagan Teki <jagan@edgeble.ai> wrote:
>
> Edgeble-6TOPS modules configure HDMI1 for HDMI Out from RK3588.
>
> Enable it on Edgeble-6TOPS IO Board dtsi.
>
> Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v2:
> - Rebase on top of Cristian's series
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com/
> - Update hdptxphy1

Cristian's seems merged, please queue this as well.

Thanks,
Jagan.

