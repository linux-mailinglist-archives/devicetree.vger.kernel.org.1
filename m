Return-Path: <devicetree+bounces-138783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D8588A12397
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 13:12:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22DB0188BCF4
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 12:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4BB23F275;
	Wed, 15 Jan 2025 12:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sRATwynI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BEFE1E991D
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 12:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736943154; cv=none; b=A6z7pMW8qBIenNcCpwI+Lf1Nj1cj3IOqVsGvQHFvZGhZcperAh3MyI3QqCSv4N6AI6pdeb7NkjFG0w/ViI5rRgd9Z7j9rqPNSbAtDqQ9Y3Eqn8l2+TdkQtxaFl/NXRUYX0GNPgCqCj0egqYhrEFG/1gRhBF3vFSxPlywVOfztXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736943154; c=relaxed/simple;
	bh=4fCBYRolOuX5rKFIv4j7DNBKyYaxKeMQalVJfvGst+M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OW7rcL/gspnKWj4TvS8S4VeZD1Qs2y8FrxP2u2DW0sTdOKxuwgf/U7B0yG5cPiVi8ZBaU9nQkWgX9b0ByNCroPXIlgFdOiixQGxG7s2QA5YdkYaAZbHYeInS/PgDqQT29hfljOYFas/Bw/4wfCqlPPPzzXfauBL4n6Skas7XhYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sRATwynI; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38a88ba968aso5432930f8f.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 04:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736943151; x=1737547951; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cFKwmVwiS7IFaxPoXvsho9KfAcIhxJ1ZRpPv8inn8w8=;
        b=sRATwynIP6ikdnjAD+8TsQ+twOeCzUUs87D3ICq+C5GG/kfkw0aRMyo2zWiqxfjjCa
         pbIYkThtjvwTHngU//Cg52nDau41sG2718VCAeovMp6CjLrLWpHRHzMSJKSvRT3o82x7
         hLLBM8yeT0xMcbRF/bzEfpbkviZgeNP7c8NlbUDzto/7MDT4JsSDUQiKZiEoEB2O1ogq
         dC0h1718b94r8H2VMUl73ily+hVRcFNhIfeWENkdMI5oKgoBx9Hmi3c//wAwZCOhqRlH
         VKzcN5sPvTOemkw9UqeibXe8xTAJoqpd2nN/n9bj81SSfFyOk2Udh38mFwu+t0HNntMJ
         RBUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736943151; x=1737547951;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cFKwmVwiS7IFaxPoXvsho9KfAcIhxJ1ZRpPv8inn8w8=;
        b=fpl4Z1N/XXuz7o6EK6meqHgOk9gWd3okLJaCK+f90ifw1iGxCtWEdmUf7YmQbfSZTW
         K+r7uc6J+2r2h/9nmpNRs82K0Rl6YboMW1uYx2QFFYCRriD1BkA79VMCKQ4KONYRpejI
         2WBizJBlSYQgotNX04cXVmUYaIUXWI7CeetrLTww3JwD335E98a519XKnINTYeZTi+Y5
         tyzikdydetEckpEvpi/fetfwKH4r/OkjU77zd3iWGcNf1XWrq3tI20vS3emwur4A0QyQ
         U5N/V2IqHcgke4y9HvdkxYjuhq0gSBHjT5jWgGsUhObuOt9VlKNiXK8gTrF/sXouvhk6
         GoHw==
X-Forwarded-Encrypted: i=1; AJvYcCXwCIcwv6oVb48wsmpoAHf+wRJG+fokW9b83a6fOMr0kIudaT1HpUC89cMX3HGcO/0PPZOlEU2sHBNK@vger.kernel.org
X-Gm-Message-State: AOJu0YzzL9Lk4i1MjIU1gsewfy2qgyTgOtT2ELtb3+wRBb1CnnO/0eKH
	krybu0hPh39EWX4R8KsggrqxGouTtKRCElbnsU/KVOuo5A1HyOTA4NU1UXE6Uds=
X-Gm-Gg: ASbGncuManZAF1cnlG7XXDi7pgah9YpJivbXIJNg+RZaZKVBhEuTXK9ox/8d/hGDlbQ
	mPsO4YezfTXhF7QHTgFf4iECmp2TvFyYM1ogHq5BCnxGFe2OBIU0X2ScVU3XUbX4q+dztvYgclG
	AUqH8hhsoJBph5FxmLXzFYzlvCeYDkBoEbWIZwx1g+hTdlGCnmBWpoVA5Su70bLpGcHj0Yh6tj2
	JYfVZLKhpGP0vIAq1h9N5KCPOqIjdxT1coq5hBK2JffGgcLPD8+V6NYkMCfCwB8kVJ7JQJBy8WM
	y1yqBDh2nNilrLbUbdPm6HHcKeOc
X-Google-Smtp-Source: AGHT+IEnq6vo1E5LSI2Qrhm/y3n3Xe++W2QNQ6RQqz61y+rXMn7THrldWxmRVHgfkDHSnoXO9oEzlg==
X-Received: by 2002:a05:6000:4802:b0:385:e877:c037 with SMTP id ffacd0b85a97d-38a87338d79mr24645826f8f.42.1736943150788;
        Wed, 15 Jan 2025 04:12:30 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:cf13:bc18:6c34:e11a? ([2a01:e0a:5ee:79d0:cf13:bc18:6c34:e11a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4c1c01sm17722217f8f.97.2025.01.15.04.12.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2025 04:12:30 -0800 (PST)
Message-ID: <fda131d9-50bf-4049-9e6a-f9cea61846c9@baylibre.com>
Date: Wed, 15 Jan 2025 13:12:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: add mmc2 support for mt8365-evk
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 macpaul.Lin@mediatek.com
Cc: vsatoes@baylibre.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
References: <20250109-mmc2-support-v1-1-9b9d1b1ae35d@baylibre.com>
 <91ac34bf-e184-486d-9af7-f9ddaf8f26ed@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <91ac34bf-e184-486d-9af7-f9ddaf8f26ed@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 14/01/2025 11:38, AngeloGioacchino Del Regno wrote:
>> +&mmc2 {
>> +    assigned-clock-parents = <&topckgen CLK_TOP_MSDCPLL>;
>> +    assigned-clocks = <&topckgen CLK_TOP_MSDC50_2_SEL>;
>> +    bus-width = <4>;
>> +    cap-sd-highspeed;
>> +    cap-sdio-irq;
>> +    hs400-ds-delay = <0x12012>;
>> +    keep-power-in-suspend;
> 
> Why keep-power-in-suspend?

This slot is mainly used for WiFi / BT / GPS chip, which need to keep powered on.
I guess this is to avoid to do full re-init, re-load firmware, lose context, wake-up from it...
TBH, I didn't work on it, all I know is MTK need it.

-- 
Regards,
Alexandre

