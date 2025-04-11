Return-Path: <devicetree+bounces-165995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A97A860AD
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 16:33:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F2E817B67F2
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 14:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 114551F3FC8;
	Fri, 11 Apr 2025 14:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="blG3l7QC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4F71F4CA7
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 14:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744381969; cv=none; b=EyMUqt/caWPbj0+Jr88fQa3NBhDbNn3w5jg2NeZF6LaSUHf0orPx4UegfvEz9vr6w7naHkLqIMVFv167GrNtKNAL4wRTVmJ3LnUjvZ5+LeHEJq4v0HChRox6zvDYg+8tmfT3/AKTMDDkI3ap56RRajpo0VsOsCUsvxfDzITDoFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744381969; c=relaxed/simple;
	bh=eUmuXzNK1ztJGN1pXImhSz/srf9hedFGkl9AM46W9eY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CqHQALliKCZFp7xt7rlqaaS2yGNmXNnftf32bzK1HLbnn3IlRjHGAmoNkgn/HQBip2NrzVXc7u1JV5an6XRAeWz+oNbF6l8PYVVEKWRtjvlNghWo48rzzB61l1fIL+o2Z65v+RREnbcAOSfAfPUjpNdiCOgA3J7yolPlylAOkb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=blG3l7QC; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-39c0dfad22aso1097005f8f.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 07:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1744381965; x=1744986765; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sCZsg9RW77pf5g7VO318qCm3+bDOX2VQbow5YNOLPdI=;
        b=blG3l7QCE+r5O7ODO/ge5UfTh31KyjWPl9t+K8D1YhGdXoxew9388bVCmxeABuaABS
         WQdZzjR+dGJVUVWSHkhpUe7B764GXoF2Jo1n2IoeguhxvGnWnXcfbyWT6PjANJ2WLpWG
         6BdRJGHTHCO0Xznqg2SQLSkCJBhRIVKF+gOCv71//ATgZOtSg7irgRb4e3dZwmJRa29E
         zXQsTdzc85fWSGv30AtzyYoDNGhAyuKKKyp5C3YYmOfVv42A3ZN3ZesXsbM0ph7lnxOg
         HCuBdWGMS9DncWxXvyZzsBaiQllVghL/1hYD+FLS5yfSt0t0cr7LnI8G325Ve6oGj31t
         Q9zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744381965; x=1744986765;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sCZsg9RW77pf5g7VO318qCm3+bDOX2VQbow5YNOLPdI=;
        b=PO5GnhlLVZcqos+Vicy92A3aeh8M8McE4xhtfSFPi8NyHb6xqjre1UwDR9elRkrqWy
         a3VjCWre7CLtDH/qieQwYGdYfguJ5SQVWbuZCdcYNikB9ySN8VPwjyGiYukHIx6ZNlk4
         tn7FxDFaeFLeGYT31WsnoyUlbtOIxBqyZwNnGvDKTFAO/cp/ge+HEmvjWI8n+si0YGLq
         KyccN5OXgezqpoEP/RoMEGiGa1eJ/4SAadj7R2KJpvEmoZWNPEIb9B8p0P8uO5CXSwdB
         uviJuc5fEEFzS8lz7bgV7SEcYYW5gA43mqET5hTVcu296O1FocnbMuCJlF/Tv0s1lyj0
         n4wA==
X-Forwarded-Encrypted: i=1; AJvYcCXgkVFRjfpXgB+B9irDZ+uwyZrVwSOHbe2MJNQMgF9uiNpnw7kwotiqFW74vAICniUFv5iOQfAfdlaQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwPFzHkuN418y4FwIvZD8XO6E6J0qUlMvHCMEQsUfkwimflPElV
	FZ9R6ObSDjRqtoytlhl7tTMCD1AcycsROoTeSU3RINbIbDsciGqzJJxeT21V/BM=
X-Gm-Gg: ASbGncs65ytccIRaID8GGvHLDSax84WzqZ27qunBdHQ7+XVRDixfOF2XRaBoNYuJ7Vu
	2jY782tuXr9SBpfFb08ZS05e0YT7CAQp9IImrxUXGkV2nPfm+5zGbaTLlEvMDhC8IvPGQbNUk79
	wf70XcFZTTbNVdsIZTr5EPYpQGVENOeraEAvj6X28GBVtx2sJqGD59neVe2cfFWkRqpZ7rqrRSc
	3fUsnfdZrW4kXw8Lq7dpBa9Xmmy5TEYpk+1Z15DS5T0L+FwzBPON/sPfrUcfrkZNR3nCvXcUmKb
	Y8YCbMHJN+3JElRbcykAQO617x/E2MUJdkoqZx4E1KbjuRjV
X-Google-Smtp-Source: AGHT+IGbI/+6LhVUYgb8GsMB4ZDA+r9KYyQ1fgtXp9lmb87IP4nw8EMt5GWurVGG66zKlNQ9uZzoXA==
X-Received: by 2002:a05:6000:2d08:b0:391:2a9f:2fcb with SMTP id ffacd0b85a97d-39eaaecdc43mr2207036f8f.36.1744381965558;
        Fri, 11 Apr 2025 07:32:45 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf4458a8sm2234082f8f.99.2025.04.11.07.32.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 07:32:45 -0700 (PDT)
Message-ID: <e34cc3ef-f101-4ffd-bf8b-d06c7f8ead7b@tuxon.dev>
Date: Fri, 11 Apr 2025 17:32:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: at91: at91sam9263: fix NAND chip selects
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>, devicetree@vger.kernel.org
References: <20250402210446.5972-2-wsa+renesas@sang-engineering.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250402210446.5972-2-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03.04.2025 00:04, Wolfram Sang wrote:
> NAND did not work on my USB-A9263. I discovered that the offending
> commit converted the PIO bank for chip selects wrongly, so all A9263
> boards need to be fixed.
> 
> Fixes: 1004a2977bdc ("ARM: dts: at91: Switch to the new NAND bindings")
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Applied to at91-dt, thanks!

