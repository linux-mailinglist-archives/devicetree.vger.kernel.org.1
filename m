Return-Path: <devicetree+bounces-53293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F5E88BD43
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 10:05:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 839A02E71E3
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 09:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F9EA57330;
	Tue, 26 Mar 2024 09:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rQKmnbqd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6294CE18
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 09:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711443861; cv=none; b=jF2qQPetoLz2F/I7ZPeTErjbiu4ehPHb4yjyzywJfjFX+nE0fJ2ntnfZDFv/krHKqlIFCnBovHGyaLiIIBaxIqwNaTWXrhKrxbqXIL8hVnMAiU7b+qgRVXKApHvQvKbwLbWwCy5zY1Ab8nlP7Bv0RzYNpCSEZtVRKNYoOrjuJKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711443861; c=relaxed/simple;
	bh=ZyvDnyVdYW8mApjviyCj1pFwuScQjCQKI2BuXx5sgvw=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=k07O9bhyWgOAuNwELKxWdBX0jM2ZGlSd7A5rG3riy+kGmmtwE7GhIpUrmaUMXJ3JKfUcZ1aSruIUbQmNkGlfV/FLy45wxxOetkXgrcIsUYkBCNIt1nXWjCh+hNMTU5Rd7nPC8lP6b83CX8KweH84i54n810UmTJWUIQs54tcQfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rQKmnbqd; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-56c2787aff5so734621a12.3
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 02:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711443857; x=1712048657; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JUHFACxolYxK4dRg3Sf0j2U2n01l+uu5n940mo+Zokw=;
        b=rQKmnbqdQHO+Fh9QJXQIwp+GKUpps5x6vM70tfJF9zDSFXS0GtRyEgMBkv31/aydew
         TXgih7QesKG83xi49w7ZJUIl9UxoR6RkvRQtDdiRMB4hG/oSm142JKY7UDe0uVlBsnhR
         6OzU9ur+fNWN97qWDcXnsYnDW6ps3qCuW78wagPNtLdbD6q9W6QAeNDitIMCKEULqFlB
         ZW7yX3Z+SZBy9rNIeY2gtYbCKuLBpbvlJWeumLMZoXgDbAGA5cUOryOqQPkQJ337gGCb
         uw5iepJ7qwIdWBRJF6kQXdvPXUmEnQd3wcSdvEC6SduL5WKBr237kCbMRA0El2WWs2Tl
         Mpfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711443857; x=1712048657;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JUHFACxolYxK4dRg3Sf0j2U2n01l+uu5n940mo+Zokw=;
        b=OiQ3cPm7G36snF8QQPlq3i7d/8QRR1aEjBK6FdskxRKAXBFaaEVcm+fKWRGAk9EW/V
         Ei3/UEG2yhYPEMcI1zGgKI7Fyj9YEBLrGYUIwv281dRAt6iCjDdeSZwSErKzKgtzdRoK
         Jk+1Pcn/ng3EwpxVQsDwyOmA5fUy+fXYfjdHhKIeTVCl2Fr/liNpx/zg54PZ5JFImXco
         vR8QPK9FNU0anCaI7U2KCpR4TtE7ee1wzfOEtWBdRepZWzobveNYqIAq8mKGc0EqyiQa
         NUa/BN0hJWJ6CyrJEPHve+3aEOp3Pmqnhq35V497AEW5ZR8+i1qt+VAawl3hFSG9F/ps
         LTjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRPx0lkDkifjpabZJd9L8eOsSy2FA5KavaSjAgffznuim/HUmZlTxohXl//8VhG7AXMwYRup85M8GlEqouDnsqovxt7j66Uwc01g==
X-Gm-Message-State: AOJu0YwLFZj5gt6LFYaDoOVS70k5P5BlzaekEi8N+WRZ89b0+78FlaWt
	UzH/y/h0zT2nIddw93p93AfSR+EnbMdEGE16om2+qi0WjDmrCnLZU+j5Jsj+Wxs=
X-Google-Smtp-Source: AGHT+IEvHcy6UDTsdaGFobIClvyRxp2fSbGk49oVaAThiZZUGAXxspDnmzsU3qZha76m4QuIBn8YEA==
X-Received: by 2002:a17:906:3e0b:b0:a4d:f999:de2d with SMTP id k11-20020a1709063e0b00b00a4df999de2dmr86359eji.8.1711443856748;
        Tue, 26 Mar 2024 02:04:16 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id ao18-20020a170907359200b00a46aba003eesm3973097ejc.215.2024.03.26.02.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 02:04:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: clock: samsung,s3c6400-clock: convert to DT Schema
Date: Tue, 26 Mar 2024 10:04:13 +0100
Message-Id: <171144376244.95623.15251693618331114140.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240312185035.720491-1-krzysztof.kozlowski@linaro.org>
References: <20240312185035.720491-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 12 Mar 2024 19:50:35 +0100, Krzysztof Kozlowski wrote:
> Convert Samsung S3C6400/S3C6410 SoC clock controller bindings to DT
> schema.
> 
> 

Applied with description changes as Conor suggested.

Applied, thanks!

[1/1] dt-bindings: clock: samsung,s3c6400-clock: convert to DT Schema
      https://git.kernel.org/krzk/linux/c/2125459ced054218fa8cf0170a116e2eeaa0f276

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

