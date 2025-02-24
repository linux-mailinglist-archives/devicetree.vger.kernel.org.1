Return-Path: <devicetree+bounces-150458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2296A4230D
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 15:31:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52B757A98CD
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 14:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAE9523BD1A;
	Mon, 24 Feb 2025 14:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NIDdInz1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE162194137
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 14:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740407321; cv=none; b=ihDF6eJCxXfxNqPLAfYJG/h6Tjs9N9PMobaZzMHb2lhxiwJo2GKMzTXsPE09QDRF5IjjzwxUzhNPk+svv4+0vxOwXX7qhEMp95+8VagKgQ2u5xjUw+clIwXALuT6cyrontnFIHGxAxjNwm75c6gYmmnLIdSAtmp0OzWS8/LxUA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740407321; c=relaxed/simple;
	bh=fi/ou784DQNSO56UkdVWMsq5LgKy3w3Myno9NribxME=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hyvVcE0R7Hy0wXDlJYrZzlG0RhAm55s9CPSYTpZwQsuhONvD3AuULYqVtfuvLpMPFhbN2f8E5c1rw7i6n/h425/pj5lPq9FoC4aS5FPSHQEyTmWVRVKSDy52BAstaVjAU3Ig5zvG+yx+243e4/abpv6yAKjOIFgOVRjDSyMS8YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NIDdInz1; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38f3ee8a119so2197252f8f.0
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 06:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740407318; x=1741012118; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+7myiS5YDjg48/Ag8fwVJzAPYwjPP2oihtGPggfyt3U=;
        b=NIDdInz1gySZ1Peryoh6lvdI8W996Kezrv9/7HCTbwKmSstoUQr68X4wrRHBJJpJcs
         plB36mCAiTPd1Alt3WP0piTZ3J8JX10Fx7o6t13HyAfWrBBpZdTyMzy6C5ruHljTI/1U
         vo69mLrkkPbfexYJQ1BQd0CwkdpFZbj0Ds30e5AeBQwoZLjRg7uf5YWPi+TutGPjTR6D
         dt3PKthzCl4CLiC5UovTZjmJ8SYmFD7z/rIwu3dEf0f8heMmCC2H0uoONOMvzvECD6yk
         J2aJWTUXbK7Ysa9sCh0HyagbBuIjIcuQ+GBGKfaSdxmwEyZFMt1pw/3quFS7lvX+jXTM
         rPhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740407318; x=1741012118;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+7myiS5YDjg48/Ag8fwVJzAPYwjPP2oihtGPggfyt3U=;
        b=weGd8h8i+4WX5BlzzJlXLSDkOAkrpG3el7zfXcDmyrdIlccz9kwHjYS1IdWDYXSF2F
         RMdD+hG5Kicrh3bZ/jVsmh+nTSDbLb67WxxtVNo91TtOGbKVabvB8VzPPgZKni8niVhq
         PCGXMGnmLX4idmEaMyshGl/LsOSDntqKrJD9pCvQhMmvHOk1jzAX9tpjOzMRMcSIJYiB
         sUDClpOXooKRUJkW2BKX/XOy7DLKlyITnoELa/veJQ0CJYsMshKuyaMyNS3PCFYeg3sy
         /JTfour0PyuXPC7ZHwuGEBfuB9BeBfOU7SjxMmPY0xZzMF+D8lEe8eVvFnkjZqRu/KAy
         pwIA==
X-Forwarded-Encrypted: i=1; AJvYcCX82IzgMs2T4T3iPEap6OVZUCMaTwOM/V5d1JmGNDMBTXSm92pdnzWujMsAmnIjDNP0KsOW9l1pObzo@vger.kernel.org
X-Gm-Message-State: AOJu0YzQqwRqQ/IHdoZmYEx31F9gS1dY27CzwJUjGUiQRoTkBVVe47wq
	OQKwYhswxtDiM3dyYyj/AxOAUs53NH23F0CNdI0Hopl22gw8oJywwUbLLKaWvHo=
X-Gm-Gg: ASbGncuRb76q0sdPyG6GN0322NxvA1TnlRa++JBDAL/257+ZlpReb3kvs4OQW69gtdw
	K2d9MVTs3fPUz8UUQfJ03Lf44MH4L/uaVNbfELwknkB2PYw8rluxE/xr0C8WNqaPI7rcZN1W/E9
	AxCOxQvLif4jc1Ao/fAgy6L7kLMbOd0s6ZoI1DRwTvZ115DjR0bXb/Tuvv6Jn4pP5wHol3ETRFf
	LMkUJs/RvIgLG43PohiN7Fe3p7G44D5vbojp8fogP26+5m37kdOuWZFCJ4VC1ij5TjOzjAQofWT
	x6bt9+AiRG0I5R8ykqGz1t5tnQ7S3kjOWtmf8HHUgr+T1ds/WnIYFmciOrDDSJxuiYcB8Nvxig=
	=
X-Google-Smtp-Source: AGHT+IFgTjY0B9Q+EBdWo53fKYf0MGWnVrcQoJfE4mJdhQbgBfmM6+4xRs286ajDlhlvB8MLPAk/3g==
X-Received: by 2002:a05:6000:4014:b0:38f:28a1:501e with SMTP id ffacd0b85a97d-38f70772b46mr10667747f8f.8.1740407317886;
        Mon, 24 Feb 2025 06:28:37 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:ce53:5813:dc8a:b123? ([2a01:e0a:5ee:79d0:ce53:5813:dc8a:b123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259d9be9sm32217076f8f.79.2025.02.24.06.28.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 06:28:37 -0800 (PST)
Message-ID: <43d23c40-09bd-46ca-840f-4724a42946a6@baylibre.com>
Date: Mon, 24 Feb 2025 15:28:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] arm64: dts: mediatek: mt8395-genio-1200-evk: add
 support for TCPC port
To: Macpaul Lin <macpaul.lin@mediatek.com>,
 ChiYuan Huang <cy_huang@richtek.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Cc: Bear Wang <bear.wang@mediatek.com>, Pablo Sun <pablo.sun@mediatek.com>,
 Macpaul Lin <macpaul@gmail.com>,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 linux-usb@vger.kernel.org, Chris-qj chen <chris-qj.chen@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>,
 Yow-Shin Liou <yow-shin.liou@mediatek.com>,
 Simon Sun <simon.sun@yunjingtech.com>
References: <20250224114934.3583191-1-macpaul.lin@mediatek.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20250224114934.3583191-1-macpaul.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

On 24/02/2025 12:49, Macpaul Lin wrote:
> From: Fabien Parent<fparent@baylibre.com>
> 
> Enable USB Type-C support on MediaTek MT8395 Genio 1200 EVK by adding
> configuration for TCPC Port, USB-C connector, MUX IT5205 and related
> settings.
> 
> Configure dual role switch capability, set up PD (Power Delivery) profiles,
> and establish endpoints for SS (SuperSpeed) and HS (HighSpeed) USB.
> 
> Update pinctrl configurations for U3 P0 VBus default pins and set dr_mode
> to "otg" for OTG (On-The-Go) mode operation.
> 
> Add ITE IT5205 (TYPEC MUX) under I2C2 bus and configure its properties;
> also add references and configurations to 'typec-mux' node.

-- 
Regards,
Alexandre

