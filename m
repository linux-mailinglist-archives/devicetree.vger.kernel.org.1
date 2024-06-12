Return-Path: <devicetree+bounces-74973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F7A905172
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 13:36:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13E501C2149C
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DDB816F27A;
	Wed, 12 Jun 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h42KSN5E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9370916F0EA
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 11:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718192153; cv=none; b=KHVgFrKRSonGlUK66artTPa0lwfdHYIXnIbDVd5dBiYYs0hZuS/NroJVoXn/Rudfxw8CB0TcLvQRyPlDWhRS6/xKoVBtR6blsqhWGVwAhAY9j9DXLsmtkse6if9KaQYE9bOf4Zaywod8a6lyIpihbyJZmXtYLdGAjts+zW87f5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718192153; c=relaxed/simple;
	bh=uAV7pu03cdsdTld9GRHAlXUSpqC6wBVX5T6X/wxpYz8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jZeuXUdCNPCmGAWx5OWdhmsOG3Ij72EIh25jjLf7nr61xlA7m+0089/iKZWcmMnmZemW+AwdRD/NnViwxL5qKdzYTg/0g2wllbui5MFPs4msr62++FY1PaOQVzdH8IWKcIEQFg7MKr5E3oZjZa4NMAJKr+SWmXoKl9DtO7i4dKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h42KSN5E; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52c8ddc2b29so2660293e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 04:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718192150; x=1718796950; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nQwVI29uxjo5lGJS//7kNGCaQXfrdvzJqsc36nrHdgY=;
        b=h42KSN5EYzOzxw705cbxjkWBvfIVkjunIaEr4qYhlYU7gno1gn/jBhNUit+1H4vWgH
         qB8TUW8hHIq8M4BlfiZgNAohd+C105eFo6BEL38hhiiFhkwCr/U7Zs9K4/nei9dEo5ey
         sSdjagtwQnCkxd9XO7Ox/zZbJtJXPPeJhcJLazaLCr83TJkKTbATR71ApPtudtGw95WX
         MlbGHiGO89+q1U24km0deY46Q2NOrtTRJhKGhhD/ra9YpHtKXVFf6BTprovUA9gR38CB
         CkzyHHXmdHDbcwayivtVvGlZ6iUs+upBUXM0SUGYqL2xY+R8KHEg2PwDSxG1vShI/mSW
         AM3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718192150; x=1718796950;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nQwVI29uxjo5lGJS//7kNGCaQXfrdvzJqsc36nrHdgY=;
        b=RNPdDIPDqVCNowWRcje/OZhqQ3D9WnmqGtIZu5/qwJp0LB3TeE//qAQ8G3V2qs/Stx
         tSRl9LcGQi4rBxi1szkJ7cFHlKw0qhlNHtOFr5PhpyS1sOd2onU2gvEpL06VI4AKKFdO
         SnkyswmBuWUAawUE9vhUX51jRAPupSe8emdTq8bmYBRv0XYeL/sxytrdl/3460JLHT0L
         sDphpNkZ4DckGC4AbseKJfWdBsBCkVdIvcC3l/6EVVVTXnWVsx3/j33qC7jMcbPC4hIg
         v2VoTiRiXNY2GgMt1lxN59cspyIkWge5L2rDHomOykwaOr8cLtz/ZQfEvv9+lLHkOaj1
         H3jQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtZUKjGiDyi5RWJjdzyGL0wj+RADXvXJ2jRSgNJRTZaaxLvdRGo9bz4SFB5JFAxZfjZZye4mBl4pjif/XdhvEMk2NgBvSSNpaUTA==
X-Gm-Message-State: AOJu0YxTV9ni/FuOz3YMxOLyiR/TTCqha6ZkklWEKbR9FObYSlUN4vDR
	ItXPbYIfCEFnT1tU2bWGAZNgVSCPei05ft6OpJD3KC+HV5NAepVTbW92xfPFMA8=
X-Google-Smtp-Source: AGHT+IGTwtTqD0Qk99XIZqCL8jugdE4fPr1tzdF1azRF4kFTaCcYTKRcKHu12VaThZ7njalTr6zYZQ==
X-Received: by 2002:a05:6512:2094:b0:52c:8997:fd60 with SMTP id 2adb3069b0e04-52c9a3c6ee8mr1112076e87.16.1718192149879;
        Wed, 12 Jun 2024 04:35:49 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422874e7060sm22909765e9.40.2024.06.12.04.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 04:35:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: vt8500: align panel timings node name with dtschema
Date: Wed, 12 Jun 2024 13:35:45 +0200
Message-ID: <171819214237.104758.13064750929620399941.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240509104749.216605-1-krzysztof.kozlowski@linaro.org>
References: <20240509104749.216605-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 09 May 2024 12:47:49 +0200, Krzysztof Kozlowski wrote:
> DT schema expects panel timings node to follow certain pattern,
> dtbs_check warnings:
> 
>   vt8500-bv07.dtb: display-timings: '800x480' does not match any of the regexes: '^timing', 'pinctrl-[0-9]+'
> 
> Linux drivers do not care about node name, so this should not have
> effect on Linux.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: vt8500: align panel timings node name with dtschema
      https://git.kernel.org/krzk/linux-dt/c/9edd534fc6553d83ac9f208a64d581f5d20214d7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

