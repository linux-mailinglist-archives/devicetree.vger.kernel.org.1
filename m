Return-Path: <devicetree+bounces-217700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A10BEB58F93
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:48:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 86C264E1E27
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 07:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4162625D208;
	Tue, 16 Sep 2025 07:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0Rp2O3n0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D218277C96
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758008884; cv=none; b=QBaEkN7YEMfmQmeRS3byoNc/51NZmehGn8XYSrP6kZZvMz0EuSb+0EHTaP0t9M+16qSdcZFOEWAlC4L9fDVI4yYMWwgOl1GCZEUOXFPUOcMkG5pJUVcCsWoV4d3Kenb6vJ0fykunqprGnye5rSSKcg5qBWDoQpAuiBbXozyPdC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758008884; c=relaxed/simple;
	bh=0WWtF8D7n7z6bitDlyHOYgL2Gbux8mCWx2KqJJwHlIw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=m+izIIzouxGGWlCJY6UMxxY6ZS9nBsz8dmNkFfE5yRSHMyzguhN04ncsmr4qHuxuOXVUlclvszacdfgVC/h/9VPTGM1DKo8574fpiGEcUnMeoSKtuJ5wIXynxDG3NyEW4QLehg1gQyaD7rw8r4jls+6r59qHb3ZC8LKWK0v2Dxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0Rp2O3n0; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45f2c4c3853so9846395e9.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 00:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758008880; x=1758613680; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dRMshHgr9BfhwP+oJxFotu57YS2EOBaQb6QEmA5pVV4=;
        b=0Rp2O3n0dkInsoVww3kH4/Gb8djFbkwsRucoiJWGTEv+GcBvMHc1dVwpC7bEx+tQxb
         lglfW3/4CJbf+E7Gpd6iKdIgNdDpik8NkRzYkYLQynBj3DgBkJWrsMqife1ueQ4sKpuR
         uB6Z407ckDd2Ukuqo/lIfLHPhbS1qEW2zh2lBHhYAfgrTNn8Y4XZOCgqDY5bK5rCos5s
         rrNmlWTXmGVSg86Pd6eEItxfyNP+8Xp8uPF39l8v9mLM9MfdeH1bIy4SuKmCjR+famGa
         YUUk0RKq8/Tl6pPgnVkX16vjH4iPV/jZScUAycd6gYzUN7SktKZJGIKSzjyf1Q3AXirY
         AwOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758008880; x=1758613680;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dRMshHgr9BfhwP+oJxFotu57YS2EOBaQb6QEmA5pVV4=;
        b=jgp1QrQJu4N7Mh3bSqhlvlA0tqdBtmFKcbigNi98rX8fzQe16x48edl4uI5IwdZkna
         OKFnMermwASEHncqFPMqteWoS1YaIjTYS8gFhaZ504/6T0QTO0dzwol6SUWc9xbVw4bR
         V9SaRRO5ksdhZVaioFKaLQD38JfG1xNC+GVp2q4K7US0cCT+Sewl4SpvBTQ+BC5y8QAb
         mao0hdgy/1ZVRfh1+qz1l787RLZ4xL9HIwJ9an0g874jJjm72RTCGJYAi5yiKNKFtINJ
         FEVu5AxXKOn7bi7qwNWIrcT/n5wpB4KXql8mTByafu5XU6mt7z4WCK9mfMAs8oO+0xr8
         U/nQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaemcvc7L5w8a9oAuXNJH3nuBXwHmxp9VZ6u26l7GPOIcQKe6YLXeVwpAGm7ZKk7c8OSgJaoxkoM3f@vger.kernel.org
X-Gm-Message-State: AOJu0YxyQuQDENfSL1gIwYddz1Df4SKyPpMjkKC72B8xASByiwS/gCSN
	ZgJQ019tCKcXZcyRBckJFDto4+eiY2XsSdFSI7ZiAJnMVW1LEkcK3tehrJAwZwUQ2Lw=
X-Gm-Gg: ASbGncujEdo+1qGb3kO6pwG4/vByVUMQD2iLJh0DJ+Sncsgod+rdVafp13Nd5/Hqb0t
	a+jHOvKjDluHhXsWiDsULUTcxP8jblOe7y9pewOODs2Qm0qzAX6zg2bbZBCbS7l4+D/Jj/axCpb
	s5vhyn9t12xei/oS3zFuuwXMYNdmMZ+dwaYEUQN5DESfxvjK1AgSMQZTnxAWVJ2P5LjL/ryUnRj
	37+5axGmJWxBFEyd9s6n04fKdp6UIkYjs0MQOOYhpizB4olU7Nfmv1X2VKvR+QykrDLJNm4LwMw
	z1vYJZ4Omlhz4OXA0Op0Kg9qrdE2bneFzd5x59fWBz4YcUqmst53SRqOicEHu+OkhntdcAzeo4p
	dseRyDhSLeYeEva4l5yOi
X-Google-Smtp-Source: AGHT+IHLQv5am8Q5PjXuyp6eiNrR5bsV8vHLUkJ1Q6ondFRjcGxSGd7COuqKP3wd8LC/p4RSW+zhnA==
X-Received: by 2002:a05:600c:3b87:b0:45f:2d2a:e323 with SMTP id 5b1f17b1804b1-45f2d2ae5d7mr57197665e9.0.1758008880401;
        Tue, 16 Sep 2025 00:48:00 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:a6cd:21af:56e0:521])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45e037d741asm207326335e9.23.2025.09.16.00.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 00:47:59 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
 <sboyd@kernel.org>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,  chuan.liu@amlogic.com,
  linux-clk@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-amlogic@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>,  Conor Dooley
 <conor.dooley@microchip.com>
Subject: Re: [PATCH v5 0/2] clk: amlogic: add video-related clocks for S4 SoC
In-Reply-To: <20250916-add_video_clk-v5-0-e25293589601@amlogic.com> (Chuan Liu
	via's message of "Tue, 16 Sep 2025 10:06:05 +0800")
References: <20250916-add_video_clk-v5-0-e25293589601@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Tue, 16 Sep 2025 09:47:59 +0200
Message-ID: <1j348mj0sw.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Tue 16 Sep 2025 at 10:06, Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org> wrote:

> This patch introduces new clock support for video processing components
> including the encoder, demodulator and CVBS interface modules.
>
> The related clocks have passed clk-measure verification.
>
> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
> ---
> Changes in v5:
> - Add Acked-by tags from Conor.
> - Remove unnecessary flags as suggested by Jerome.

The request was "in an another change" ? Why was this ignored ?

> - Link to v4: https://lore.kernel.org/r/20250909-add_video_clk-v4-0-5e0c01d47aa8@amlogic.com
>
> Changes in v4:
> - Add Acked-by tags from Rob and Krzysztof.
> - Fix compilation errors.
> - Link to v3: https://lore.kernel.org/r/20250905-add_video_clk-v3-0-8304c91b8b94@amlogic.com
>
> Changes in v3:
> - Rebase with Jerome's latest code base.
> - Link to v2: https://lore.kernel.org/r/20250814-add_video_clk-v2-0-bb2b5a5f2904@amlogic.com
>
> Changes in v2:
> - Removed lcd_an clock tree (previously used in meson series but obsolete in
> newer chips).
> - Removed Rob's 'Acked-by' tag due to dt-binding changes (Is it necessary?).
> - Link to v1: https://lore.kernel.org/r/20250715-add_video_clk-v1-0-40e7f633f361@amlogic.com
>
> ---
> Chuan Liu (2):
>       dt-bindings: clock: add video clock indices for Amlogic S4 SoC
>       clk: amlogic: add video-related clocks for S4 SoC
>
>  drivers/clk/meson/s4-peripherals.c                 | 206 ++++++++++++++++++++-
>  .../clock/amlogic,s4-peripherals-clkc.h            |  11 ++
>  2 files changed, 213 insertions(+), 4 deletions(-)
> ---
> base-commit: 01f3a6d1d59b8e25a6de243b0d73075cf0415eaf
> change-id: 20250715-add_video_clk-dc38b5459018
>
> Best regards,

-- 
Jerome

