Return-Path: <devicetree+bounces-136980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B71A07294
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4588A1889E06
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B5FD215045;
	Thu,  9 Jan 2025 10:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XcKxE4rn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7117E21506F
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 10:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736417751; cv=none; b=M4hjPOfzniHGWWxyqtFdVaAn/YKeaECpreiyqEV+h6DFoUPDUl6ghASAKccy/bYVpWS3KP/5K2A6DHpnYdYORUejuchDr7Ww9BxjeHc0BzgQkyn7esOypXHq1fShwd05xQGDpHjRJ8w2++xHPOM+M2O3avN9vvsDZOKp0JLEYj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736417751; c=relaxed/simple;
	bh=iBaPJwq6aKFn3Y7y1HBOE81zJAUUSgTlaPaVnOTLIgE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a3x0DLJj4UXj/S7QcZQsElPAtKuXQMMSGaUNU6U2I7iFgTugcmvBqeMb0wS4DDsEyvBtFTBK3eiwJyld1HJwHeU5Dd0HUPJJ9xmV4VWvmUNgi3K4CR6zWLb1nkuqWXmA97bGEDcRHoiJWOFbY2dlttMQqF74zzqOmWLp1cuewNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XcKxE4rn; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-38a8b17d7a7so373065f8f.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 02:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736417748; x=1737022548; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z6RS4xw6Ub9a98zJR5HGgMwejTw+vHzDAwM6dcDaFxo=;
        b=XcKxE4rnfRF/l01nff3a9tNAbyRhM/CbX6Qs5wQDynrOl2VxkDWo1ij8j2IwXt1eth
         f5X70SW22KEgnv8dXiZc5Rt4z3cDzZZn455A8tfp0uiMpB/wy2UW4yyLdq5OH2+N7Mm6
         GLX7xwkg0y+Ld/uJacg733ke2LWIKDsaw12bRYX0gsK5vYPvjbXL8mPALbbfLty0tKk2
         OqC5yq8wX33D84Ayv1k2iVlkRYiUQk6GopN8EWAKjuDJ3lIW5C+u5Jk6N5CRIs0s9ORF
         3kaPApMQ+5y33c5NiYuyPb4qA+vKSM/PMZs8Rt+B6dLoa7wrxX71WRKTzX/WKVVQMk+1
         z5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736417748; x=1737022548;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z6RS4xw6Ub9a98zJR5HGgMwejTw+vHzDAwM6dcDaFxo=;
        b=YnD9sRPL8fhFXvq0mbSLPVTMjdKbYELBrdDWkcUlOWYiLyZKw3h6UD+NxmQQE++TF9
         URpbd/hdxx4TuT0GJ/j29HsdwXzS0QyVuDqxQcxKof216f/puOHQRElM5rjaxlRMYP1/
         S77MuwdZ951MsE/vp80exom6zWp+jNW0qhBifoK81Se8TstZDY2eKGaYv2iYlTl3BE3N
         y3gSSJ+VFu+XAhz0fXu0DaOGhSCCSGUSmbP+3ZvrlIBTs5i5/9sgYlDTzCr1pJJtAljz
         HRoPLcACHxYkgxViGrusHiJf0wczRqcgQOtV2Np9IO5YguufJLkK6kOGF2gV/7yg2c9j
         gqjA==
X-Forwarded-Encrypted: i=1; AJvYcCWf1Ibi6+9IFqm5wPaexrUAoNaEX1/OhjT7r9hPMNB8j3dX6XA/0Ew9nPOdu6khIvpo4OSAA7qsorcv@vger.kernel.org
X-Gm-Message-State: AOJu0YzY/fRG1vAXi1hnt5T/QSTGSGofDdZKtj7VrzIwj+EoCkY+1PDW
	TAZk5onvR7OjDel/MAy1RZW6cpyPdP2Y/2rReSpyq1K9hIzP9Z1wyUcMwqbU/38=
X-Gm-Gg: ASbGncvisx5P+geDcRNKLavu5DXOYExDTFU1aggB61ovHCCDkdhaes58SdWvTqa6dCC
	VmUrploSZ6VcxCcW7LKqpCYSnsGEvuMin89x29fGNV6NFWTxcCVE3ynLvid1CePHsa3/7jgb5IH
	+WMQODYhDGRIXvZxavt9LtHIyUg8ypi+Yhtmnuq+bbJQMMbuVen6N7nwujfcMiddNpt4aZc162C
	RiErpJYu4LjeXM9/SK3kBTgFe1WzI3k9NCC9whoLIHvD2q6X4tZMz/vdnA+bcYsdVaiS30Bi2a5
	IO8L2oVR4X673/ZRWhTSk7IgpA==
X-Google-Smtp-Source: AGHT+IFDFX3nATWzt3JJXgsFxlH2455Ys5367JQMJFp3tUUCUzhjUi2qmO4yXeOxwH6ju4OueG0nOg==
X-Received: by 2002:adf:c08d:0:b0:38a:87cc:fb2c with SMTP id ffacd0b85a97d-38a87ccfc17mr3463841f8f.18.1736417747781;
        Thu, 09 Jan 2025 02:15:47 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:125:358f:ea05:210e? ([2a01:e0a:5ee:79d0:125:358f:ea05:210e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e385026sm1389541f8f.42.2025.01.09.02.15.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 02:15:47 -0800 (PST)
Message-ID: <3506d2e1-d7b6-47f2-b2b7-edc208ad45f8@baylibre.com>
Date: Thu, 9 Jan 2025 11:15:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 7/7] arm64: dts: mediatek: add display support for
 mt8365-evk
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
 <20231023-display-support-v5-7-3905f1e4b835@baylibre.com>
 <325c495b-8e5a-412f-9974-3ec7ab15b479@kernel.org>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <325c495b-8e5a-412f-9974-3ec7ab15b479@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks, fixed for v6


On 09/01/2025 08:55, Krzysztof Kozlowski wrote:
> compatible is always, ALWAYS first.
> 
>> +		compatible = "ite,it66121";
> reg follows.

-- 
Regards,
Alexandre

