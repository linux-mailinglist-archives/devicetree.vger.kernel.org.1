Return-Path: <devicetree+bounces-136977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F7DA07281
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:14:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7EA5167571
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E2C3215779;
	Thu,  9 Jan 2025 10:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1pI1sDPs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC761FCFF4
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 10:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736417666; cv=none; b=WM8BEwRYWatzg6oGFWKXa7J8fubr8hpDPHzEW0lhVw9FXWztmJV64acob5labzc9nf5YsHBs/l9w44r7mHV2On4xuzMXjVOZPjtptTKNTV7QJvfHJJw0SHOcKX9vHtlr/jlwmhBYnlJm7cNvMwyyMAIfVkRIAPjuzxj0E64yIvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736417666; c=relaxed/simple;
	bh=lvHf92+G8xEuEKFb2dKrADT5q7ubkYRJdDl2KlUpcuI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ILwR9azmVuczE57LGnYgL+cvr+cuBjUIeZwZTsM6rlHIymL9JS3z7A4qNxj7v3mUIMKQCgOm5iLNHw9vYBdaN20pHBlF65bbhwuKz4UJKy4J0i50qhHh5ZGUSe7jwkPBGjs52DtCC0UJisCVjVzN7z7VS2BwYs047yeMQAHHHOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1pI1sDPs; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4361f664af5so9111195e9.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 02:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736417663; x=1737022463; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K/237DEZbmH5wVGbwoVnyMud2QLf/nwVGF7QU7PyuRI=;
        b=1pI1sDPs6kYEK0CUMUkbL3kwzl4Zk9VM5wcpKk+/IKY57yH9RKD4qPFYEgrxqPpr/J
         ro1wJc21zavh34tKDhKcj8bJb9DWiLcIhTmMaf+fUPRikO33i+aGxUKuFy0cchR6lnCh
         NPd6RflokARnveCZoanpj1XDOaocKfSXClSDt/v6tQKpqhvzPfjPG5itLsiBXl+zAgiu
         lc1VvMqLOnAS9NOFf4gk1GymaNyNgNp04RFFB7gnNEZo+oDVlY5cxXauRybbcqZbXYpR
         bw4awokgr18nR8mudEG2aS3u0hJ5uiatUaXFM9fh0ooR1LBeDl8XrlgTauHZpnzZhrMK
         u7Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736417663; x=1737022463;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K/237DEZbmH5wVGbwoVnyMud2QLf/nwVGF7QU7PyuRI=;
        b=ejRf5lKXg0FGzRVK/WYvwCrnExQLjlaWjXfkOnqjO8/w3XmQ8PGsdie4/dbPjyUUoO
         Yc+8ESEGxVsaRE6i85nkRNHmqiuwtpIIiRkXkyMLXOPUyfZ7coh7jTz8WTTCjhV7F8cl
         bmz0ZRu/W0D04X8EC+5D+Q7zpZqiinb5w+H1NbDbMRivR8/CI4CPf0Ia3sTVBa8sGTlb
         Wlwlq2yVFjPdEel9D5039sYRwGkVu1RUIQR5FGP92AlaHLJrAYE+XG7howZMr80Iq1BH
         Ln4nnpuYeMw/sWeiSyK9eebXEwMdv3B7K9vxIh4TbjPVI4AKptKBsRWtExGRELb5rtml
         CG/A==
X-Forwarded-Encrypted: i=1; AJvYcCWB5Jtyc8+nMcnbBiNA6u0n3gCoD+GdwlYFBHQ0u4w3TX8yUzXKuVc7usNCeMJ+AGTUJffwKhr+zMAM@vger.kernel.org
X-Gm-Message-State: AOJu0YytoCNlVKlZxXeTX5ZMt1JXgqaTmBif7cvs5wMTywtVOhjkng+G
	sZK6goquBW5FBHMUhlNpZ/tJvcctwYG9QSoZdqP+pQJNF7Gnj38BijX+2CHb/pQ=
X-Gm-Gg: ASbGncuNkPxQ1TVxgs4Egg37WHftT23hoL4g9K0U8TveDnN7AsnsAlJUnVSge18vZ00
	3P2qGsslwABDUPuSVe9BzQxyan7Aoi7TKeYtfyRfTC3Nea2Sg2xwCqE6nS5SVjOusgP+PN3QS1i
	MIOHbph2uRvPSiiMuE6tHxT+jI2gvvxfAdhpSKqcAXsosq5UZ3rgimSewxHxYpLxisXT7PXa/rB
	KK0HlzmaMu3eXuzTi1QZN5VB3nu33JL+jB1LU24CZIzFR8z/flHnHPRw4Lv0+FOez19oZQGj9yW
	HJPUWop1d+AkT0snvAyz4AZdAg==
X-Google-Smtp-Source: AGHT+IEa1wvdA0r/Kzit2T66VOFD1pdDd/5gF4arR5cyzXkaJB7nZQwlEb/rszXxagpeRJrAJKWCbw==
X-Received: by 2002:a5d:5f85:0:b0:386:3213:5b9b with SMTP id ffacd0b85a97d-38a8732c132mr6080751f8f.43.1736417662676;
        Thu, 09 Jan 2025 02:14:22 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:125:358f:ea05:210e? ([2a01:e0a:5ee:79d0:125:358f:ea05:210e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4b8209sm1384847f8f.70.2025.01.09.02.14.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 02:14:22 -0800 (PST)
Message-ID: <5b891e04-be1e-490c-aebc-84c0ce2e3611@baylibre.com>
Date: Thu, 9 Jan 2025 11:14:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/7] arm64: defconfig: enable STARTEK KD070FHFID015
 panel
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
 <20231023-display-support-v5-5-3905f1e4b835@baylibre.com>
 <00af138e-4e00-49e7-945f-9c6e489208b9@kernel.org>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <00af138e-4e00-49e7-945f-9c6e489208b9@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks, fixed for v6

On 09/01/2025 08:54, Krzysztof Kozlowski wrote:
> Squash the patches. It's one logical change to bring config optiosn for
> display on your boards. Not each change per one symbol.

-- 
Regards,
Alexandre

