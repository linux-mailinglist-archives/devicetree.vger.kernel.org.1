Return-Path: <devicetree+bounces-60576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE208A9ACE
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 15:04:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B98B31F25EB2
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 13:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACAC8161912;
	Thu, 18 Apr 2024 13:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="aa54c0oM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD73D15FD08
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 13:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713445362; cv=none; b=qbOXwcihlF4wKGKn2mzzh0BceRAdKtJSkbRBFbZxcRNrJj38ODxuv5b4+9eJMolFO7h40/qmvAAY6lKGoI18aNWpf6JOPfYvVYedm+YOWKwQ1RpbfR/YAYD70GOC2+wb/d4mpG0dyriiw3wjhXZqzjOYQ0trAs1W/tM7nPBCQpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713445362; c=relaxed/simple;
	bh=uZrB5vZp14AnyqyXxGpgGZ10yCrOT+gwRlBBTnMyGWM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=shFYf/JbjGZNIbmkfyYeFacLNAdBmcLQ7kzh32akV23waMRUzFF2SZQdYV1DIJtxvtpQALkrlKbuaNM+Va8RoKP2zRLCXdrjb0HM0ww582CFNelKsxdnX18wa1Yxkkx0mOarNyt8V7fIFLQOt6xmgjElUHj2ZUalXENBroguhT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=aa54c0oM; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a526d381d2fso345264566b.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 06:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713445359; x=1714050159; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bVyPUZzpnAkaHf5uIez6yP0jHFtLyERSTeCCJwCmVdY=;
        b=aa54c0oMddNzgGXnJXlwodm/eQ8VoSD7dIeW86Us0U64DoZmx7UxVWEe6E5HKSK93L
         TU1WXGVZ4FI4b8lXTc5btkBlwhwl30BpsNe+DepYByfleYwMn+okdsAlT8/4wFZC/nJu
         geZPxPtdECgMufIpk4EWTo934m05EHi+eKrB/YMcQ00YRWVHX1X+WdYciHa3zz0PzslV
         QDpuguMQdtlycE8dHhpbs4GRdlma6nHg7LYe2pR3ZP/P5opP3mjsKKXOdgGjWGZ4gl5i
         /kCPSxmW3BJMUuqnFykugK7AAjMw0oL+QR/PC7WuBN7ETarS7hNLW3cpjkSkUhhPnAPG
         7GsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713445359; x=1714050159;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bVyPUZzpnAkaHf5uIez6yP0jHFtLyERSTeCCJwCmVdY=;
        b=cvTMnNoMvZe+CfzMn8PmQyOvNIjpFrttcLszvVjLGrhW/rUArbxM7eZVISdGDZl9yH
         1HoqZSn7DmDDZr3xUgBBNfNSpDLw9ylc4fmY3y1+y2Gc4Vp2LjruVpQwAom5wQPQSe2P
         E6xZsPASAWkJab0ifyN6eZ4LoIvQGC0ar2aB5EtqksAlmqnBqhhuTfMPEUoS4dT/XFcA
         y58GxMMiTzvdg1UUt4rv8cjoaBqTPq3d0Hto8kymzuRHIHR29i/vsYSxd+7xkD1SF2dH
         G3o6wfnRV8Kfv9uE2JGxpuZY0nAaG8Y8GtlMRhWsgXE9s71Xms75nD5JPEEVTam4y8ph
         eAgw==
X-Forwarded-Encrypted: i=1; AJvYcCXdcrQstk481JxzXPjHILZYLacx3apXoqzdJHtvO74ijsKb6ur3lXYvG7vd7xZbQG0Vx/wGHUMyaK3zLfBW7Ishx8uzRn6Qrv6+/A==
X-Gm-Message-State: AOJu0Yx1tbdNMnYKfP1ryaSx05/Gdw/tK/3MkKKWs8slVXxL6quULV0i
	qvHJNvoPEEee8wXaXfOFylaOPf/uzNIMneHWCfdg4rDFL+fYsSyHUI26aLi9PVc=
X-Google-Smtp-Source: AGHT+IH0N89eEQyHSFCXfRykybkZDOZuDp2tJqO99tXBPvhuSPwv2IlxEhe/EsNO/07OXybXEnBOWw==
X-Received: by 2002:a17:907:36c1:b0:a55:6135:7ab7 with SMTP id bj1-20020a17090736c100b00a5561357ab7mr2297200ejc.6.1713445359195;
        Thu, 18 Apr 2024 06:02:39 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id w23-20020a170907271700b00a556f2f18d6sm794633ejk.57.2024.04.18.06.02.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Apr 2024 06:02:38 -0700 (PDT)
Message-ID: <57d55af9-33d1-45de-b8e2-ff9ab2e74e4f@baylibre.com>
Date: Thu, 18 Apr 2024 15:02:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 18/18] arm64: dts: mediatek: add display support for
 mt8365-evk
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Jitao Shi <jitao.shi@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20231023-display-support-v2-0-33ce8864b227@baylibre.com>
 <20231023-display-support-v2-18-33ce8864b227@baylibre.com>
 <ee8d0a32-b4fb-4fc4-83b2-300f7453d95f@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <ee8d0a32-b4fb-4fc4-83b2-300f7453d95f@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 17/04/2024 12:27, AngeloGioacchino Del Regno wrote:
> 
>> +        irq_ite_pins {
> 
> Did you run dtbs_check?!? :-)

Yes without error, here my command:
dt-validate -s Documentation/devicetree/bindings arch/arm64/boot/dts/mediatek/mt8365-evk.dtb

Also I've done a "make dtbs_check" just to be sure, nothing wrong on mt8365-evk.dtb.

For you, what is the issue please ?

-- 
Regards,
Alexandre

