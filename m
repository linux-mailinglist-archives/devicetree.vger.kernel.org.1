Return-Path: <devicetree+bounces-68780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A40488CD936
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 19:39:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 41144B21160
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 17:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43BFB6E60F;
	Thu, 23 May 2024 17:39:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93DFF2746F
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 17:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716485941; cv=none; b=pTXFOozkDEkx25w1tsXU+4yF2fa9rYuHch0GqLq0SYuqSITvgtm23wBcwg/O70A4J7cEOKiz+UIpx+FaYnf0LLzUuyDh4oc2CxNrQHlIt05n/kZ3Tw7syCdUyHgD+ERMXZ0MDnD1cLwnngD755ENwbP6ha1gfWhKMG9jPQRk27A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716485941; c=relaxed/simple;
	bh=ykNO24/LLYJ1KpMLjZ7s6/Y6hamJXVNHx0AD5j7rXO0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=TJSaTnRmoUdSnO+4g37IJhnolo2ql9cdKLG7XgkFutCd/LKyWBo/lyxy+rqNy8SErRiPzuz4pOlk2C08wOqhCIqn55KHfo46qqFQ5W1cfFJ6+8ZUzp0PpPmGGXrtLp/uIA8GoLqmYIdBwVBIxphSYJqiYWnkYGLEeVn3vBZJdOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1eb0e08bfd2so126047215ad.1
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 10:38:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716485939; x=1717090739;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L/W0Vntg5VnIMxSV71l0bmPcwI99/cfB5C3Aav0qviU=;
        b=sCOVQiRBMWp7P3GJtDoPH36atBotpyJ9mxufGhU2m8p8aw12w+3z3jp4m10vssgXm3
         MdkiiT3BJSsr0Ue6Cm1gvOrrdHOHZ582x2pGT9Yzqht74upecuXTHjeAfnhbNv4o72Rw
         Oy1LQso2GbLkEJf2tymHMup/DDoaE9W2jaMNEu9b27qlfSYWKtZoVuOWB0x71LWiiMpi
         kIWTc27olZOp5lrowHt+H/H2K8a3jmiTaVJs34d4PeZF/X90BiThYu1uW2ZxFPd9RU5t
         aRbQ3WDon9GTEh2pGsuoxEdMvLMV+jeMccIJKEdAxN8tSEThjSzSCNRQWDz/f61K9XZy
         4hpA==
X-Forwarded-Encrypted: i=1; AJvYcCUi0zW9cAvSM47/rXn/DRNNd+m+GikocnfOPlhy6EP3AAoiUOxdsP6dp9q69SrPaYmCuDdR7ptTjUCuTWgIa/3GdbEHSRbjBaxYjQ==
X-Gm-Message-State: AOJu0Yw9Y5dhMSMEUwRH04CgI5xOGjNl5wbEkgOZMTnkbd7PWnoOHr+k
	2o5YXDfPQjkyWr5NAVjGHQOG72VPPuIMNrK67DwEtw+CH1sapJ/7lXs4AX+kxM4=
X-Google-Smtp-Source: AGHT+IGNADe/wyzsEZ266Ywm0cLtpbI9AmZBl0HV71wuiRh6eLHpIL1UEb3u967JpeQEc6fSHcuJww==
X-Received: by 2002:a17:903:228a:b0:1f3:1482:60d with SMTP id d9443c01a7336-1f449901aa6mr6505ad.61.1716485938797;
        Thu, 23 May 2024 10:38:58 -0700 (PDT)
Received: from localhost (75-172-111-169.tukw.qwest.net. [75.172.111.169])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f30358e6d2sm71520115ad.93.2024.05.23.10.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 10:38:58 -0700 (PDT)
From: Kevin Hilman <khilman@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Arnd Bergmann
 <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, arm@kernel.org,
 soc@kernel.org, Antoine Tenart <atenart@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>, Benoit Cousson <bcousson@baylibre.com>
Subject: Re: [PATCH 1/2] ti: omap: MAINTAINERS: move =?utf-8?Q?Beno=C3=AEt?=
 Cousson to CREDITS
In-Reply-To: <20240520074013.9672-1-krzysztof.kozlowski@linaro.org>
References: <20240520074013.9672-1-krzysztof.kozlowski@linaro.org>
Date: Thu, 23 May 2024 10:38:57 -0700
Message-ID: <7httio2zta.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:

> Last email from Beno=C3=AEt Cousson was in 2014 [1], so remove him from
> maintainers of the TI OMAP platform.  Stale maintainer entries hide
> information whether subsystem needs help, has a bus-factor or is even
> orphaned.
>
> Beno=C3=AEt Cousson, thank you for TI OMAP contributions and maintenance.

Not sure why Beno=C3=AEt is not cc'd, so adding him now so he can ack.

Kevin

