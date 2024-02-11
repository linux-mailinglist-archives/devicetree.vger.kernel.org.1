Return-Path: <devicetree+bounces-40536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2AB850B68
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 21:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5153282BA4
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 20:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 290BC5E3A0;
	Sun, 11 Feb 2024 20:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ianwbWhW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911C25DF3D
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 20:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707682610; cv=none; b=a7MDDvacQbnKfFRru2ThcLAdrats391f1cpZfTD4zzITyRjXqnsIUqxWJ9QBvxQFq4HoZNhqadMwdZNXjoqZUZjyFy/lYLq81gMVPJqFhDCjFEem4At3o90orYDuAvSwrxLm2WHG2gRzRH4n6wZl66XRMlbfkFfFC+Ly8iSCLdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707682610; c=relaxed/simple;
	bh=yxRao4uBYry2U5T4G+MjUlh5Xhgm8RGZPUf+qeXm+Dk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GKKyUImwPNzQOAgm/jXIi9mTvagQ3vsKAtzhJIZvLn3HGBAoRD+JrDjh65J3pGzmrfg0m1u0P/DW/Xhqj7/HfnXwgUQyVMv/JwlbfvLYo5KRJIfApEdoMAnGFj5rGC2W1pb21C1gYhsLCWyLZD10EA4OVBqWS6cOtJ6HEUAnXUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ianwbWhW; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-33b66a7f859so840447f8f.3
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 12:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707682607; x=1708287407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lc+nQZIXeqEFwx7GhHkvsm16lQCpiV5jZf8qJAlMEGo=;
        b=ianwbWhWUsnNmjBICuec7UPE34scW7ejgtrlalXS+OE/QgkcRtyeuoP/6IXPEL1lxF
         xvqvQnHXqs23YK4C4ownGFm10TSvYUYWmrEBBcof5LiGgRWmkceh11jdJLnxMiKl84Ry
         gUqhWfR1Z5AvYVpmitWjTlAeMh24fQ0ZI7U6NJe9vK9uxrZ44Ad77C+Gdn0brxuWwUql
         7rZlsskOqY3XIFJiuJDrir0ghrHRgmLKLOEh82nVHpl7WNqksKXYs1GBuL61XYVbUeYC
         4Zm6RpoQ/EQ/Z82K6EPyg7hmJlr6Vn312FArki5DiDbHg28AFWgtl5Ajo/FKKIhkRe7m
         pL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707682607; x=1708287407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lc+nQZIXeqEFwx7GhHkvsm16lQCpiV5jZf8qJAlMEGo=;
        b=CkzrSljR6Iowj5hTKlaK1Ee6BU/171nui+8LYnH3BTGGfSqFRdidRp6Gx/6WmrHMSq
         ioBU6tVEFGU+n1yWJx9IgnQdTjyi2yZTWE75c31FAcAh5V8jWQs6mi0Sz1LGtwtwLuSX
         KaaFqpLSonIyQ+ZiKFqFzPXwLllwy7vw3O+hTExubEZ1kIyNQdFy5oKlKp4dFUdGb3yi
         1/Ogi9HeYKRHBZQBuYXgbfRphHHRC7ci45Y+Cx2SZ5rs38qGevtDz6D20lI/yDkQeWdB
         t3kKyr8DyQpoJWwdvgWzVlTZeu6zUCdYGZaYSWDYNTBP6Thztv6nvpPwb9jNZFH2I/t6
         Nmcg==
X-Gm-Message-State: AOJu0YzShwHbCRxPx/Gp+c16ERPf55yWF8IdFMtbdfJwxumHgOTK4gbl
	Mp2X9AnBWXIFcwHwDalUB4SfPhqOVUXrfuRTbhbhuEwK0UrsWHWW
X-Google-Smtp-Source: AGHT+IHS+97AymsPnKdtMWID7TXaZcRWhzwS+j09lzzKIgOvLCc1BcxN4AqdRVjwl3wGM921sHo6NQ==
X-Received: by 2002:adf:f30f:0:b0:33b:3b96:7ea6 with SMTP id i15-20020adff30f000000b0033b3b967ea6mr3570746wro.18.1707682606652;
        Sun, 11 Feb 2024 12:16:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUt6mMhEshMzvwp1Ctt877EA+SoqSVAhiMtfK1uijSYk4xoLTtuOzm3BMiMpmaAM0TikUYhYBB9wWK1yLDPHDRbnqbBcJ57Df+9qFshTcRPTwi9GnV2bGrbG89upBiuGGy8SyANqtsridfHF1eHEJ5u33DXwK8qP63JXrnRFgGQ4qJx87+LXfCfd2CEkYvkMCBNmfEpivzAHfRCcO7uiAkdeADTP2ujNxKS6WB8X6T7NIl577THXC/87UcnfZVimVTG7afz71I8WyYoGSmWxYWVBUjEuWtyRh5Bvf4HXl30mAjt85bFB7rJ4VurGsI5AfWxZPRRnb6ZlySSdRCIyg==
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id bi11-20020a05600c3d8b00b00410d41f1d96sm988249wmb.34.2024.02.11.12.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Feb 2024 12:16:46 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Nick Alilovic <nickalilovic@gmail.com>
Subject: Re: [PATCH v2 0/2]  arm64: dts: allwinner: Add Transpeed WiFi nodes
Date: Sun, 11 Feb 2024 21:16:44 +0100
Message-ID: <10418022.nUPlyArG6x@jernej-laptop>
In-Reply-To: <20240209115759.3582869-1-andre.przywara@arm.com>
References: <20240209115759.3582869-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Dne petek, 09. februar 2024 ob 12:57:57 CET je Andre Przywara napisal(a):
> Hi,
> 
> a tiny update, see below for the changelog.
> ======================================
> 
> This adds the WiFi DT nodes for the Transpeed 8K618T TV box. It uses a
> Murata module with a Broadcom 4335 chip, which works fine with the
> mainline Linux driver, given you provide the proper firmware files. We
> found some in some LibreELEC repository.
> 
> Patch 1 adds the pinctrl node for the 32KHz clock fanout pin, patch 2
> adds the actual SDIO WiFi node.
> 
> Please have a look!

Fixed order in patch 2 and applied, thanks!

Best regards,
Jernej

> 
> Cheers,
> Andre
> 
> Changelog v1 .. v2:
> - add /omit-if-no-ref/ tag for clock fanout pin node
> - update commit message to avoid mentioning Linux or driver
> 
> Andre Przywara (2):
>   arm64: dts: allwinner: h616: Add 32K fanout pin
>   arm64: dts: allwinner: Transpeed 8K618-T: add WiFi nodes
> 
>  .../arm64/boot/dts/allwinner/sun50i-h616.dtsi |  6 +++++
>  .../sun50i-h618-transpeed-8k618-t.dts         | 23 +++++++++++++++++++
>  2 files changed, 29 insertions(+)
> 
> 





