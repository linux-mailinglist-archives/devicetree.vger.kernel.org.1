Return-Path: <devicetree+bounces-227520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA825BE23CD
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BB0D3AC984
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D0B330DD02;
	Thu, 16 Oct 2025 08:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J7jC1FQs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA6B30C36B
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760604939; cv=none; b=P7E7lRrBJPiGhZoZFf3PQa3j0uTTtzqxN8IinXq3V1uqDQx9fRsyvarJ7KJnbdXRO188lNL1T/nSg4F1gkKwqcqWQcIqf+kN7yIITGpvGsTVZvez8skXtz3rmGaUhGzxpW+d0rlqioKVBotUSCcPlsZBDg6gu+E0vZD6HSh11Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760604939; c=relaxed/simple;
	bh=VnQz3tD5fL1+HIoA2SNYDkA9Yt4wrKPvx5cxJ2QaVMc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nx2NtKlzaKgFIDq/CE7ZICHT5xe9tMcUBj/gIPoRliSvzlFw8cX8n5Vsr6uowQJnXBLIWP4p/PTW5C74znde6XoFVe2bHt9kDgAQ7T6lqMTVRbDO2qdfZbGEG8IsXvNysTRLNdBSxdzSy1bncDZuDC3cGOkPeDNBCKhtnMZhFH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J7jC1FQs; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-421851bca51so381391f8f.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760604936; x=1761209736; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LsrVJFlpunpde7Grn4QhbslhAz4SkbZMhPQmJfh5ifo=;
        b=J7jC1FQsia1Ozl10hqIc4820I8fK2dmnbTgS+4izjsjoPjwS5UO3BL9sjUqxqk95dp
         aZVcLB9coP7RrbCVwk54KNwcIfy2cN6qp2i7VYPPIl4rPWMy/whg1PPNxHkR3gNcvLfj
         5JHylF32mCMprnaAODuDTxI78uuHmmDI1g+3UI3Iyq2ObVGPRqkpMpqdf9s9Tsi4NfjK
         wyI4bMYfEufYtV7ors4pkCCG7niU/PigtohpPCG5Z7E+z5aUIds4PDgYS7EJkXPXT12k
         156b5v4PjEO+cbrVC9ONZFlO+YhNyn4MyfW1LK0Q+jK1M4T3VmxXEuoufcsZ4mGBgsV7
         WEPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760604936; x=1761209736;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LsrVJFlpunpde7Grn4QhbslhAz4SkbZMhPQmJfh5ifo=;
        b=avLJJujc61nhre+wbXMNMbdg2607r6KdINX3Or7Yn/l4TvsvqXghwGQpdOLdSe4iws
         m5t+KaZAVzTSzUy9zhVeJsJgiHlJW90a4sTkYrveXf8rwcCZkC31Xng8+AQGnx3zOer+
         HHI1KopbzfkBDQUlvNFli87BwXBtw7ahFl+pAZWn9i1L6EH9YjhfdpFhGKZWLZwshBXj
         QSO0ZOEZ4jtnHVDBhkiN6DrLBcXSga+R7qA6EcrwBC2ezScdx533Am7w5celhJo6d14B
         Rr0qDCHFqPSvRplhHax6gjy/kbAhcLh7Zqx8aC3N21yL9kmDtnPulypwmApqlm5BKvS8
         lFNg==
X-Forwarded-Encrypted: i=1; AJvYcCV7GAarfZhmDr6u1oshX9iXSYb1Qy5F4299zFHdayziKcw2RcCJb5M5cfz28SSce2RokXD+JSKVOCqk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4KZjVq7wzyIRv+JjhXbEPTAX4S/QqOP3QV4vinpsw2+uYpV7H
	b5n4lsP2/vvTsA4vv6F/xUmfsUxx5D2PfJ0M36tj8oTUHjJUC/fivGlRFw/IsADI0JY=
X-Gm-Gg: ASbGncuBimRkwQ1cou4yAykmwUtXYvijtnQ2GxsETP3Jt8kCXXBFw3jxS3cXuV01Wz1
	FYrLENH+fULGMMUzPyK7RA+kXdSD9qCymQ3DcMYn6tKJtdjYzXPL5WHgfFfL59bcQTI7zuNQ45U
	5F8Ifd64RAgDOC6tPtweSOw/RawO/DylfH57ykL3d0P516mYFMkhR+vvs0q9HXQP35Cy8J9TDrc
	YaJhkXP+3oZL/Oxbi05P3mmybess9Hr8lF7Y1j6vgqy2l/O/2Ol/YO4fdWjXHzdgrvzB3YNtPkd
	WlGF2J7XlpMltpgBziCxmieGugIngVtBm+I24ObsTroUiOX/IF23OGxatEJBQTL/Ci1Pa7Ya3e4
	WPGDB6BN8tuhoekbwiuTlqYKf2RMcuOyTbaigcM9A2aQx9kUxiUaM/OQQlnfz6HgGFqKBmmYq1F
	E35FrJub6vR7Y/6DgAltLsj5ykzwjM5tZiiytDyCw3mgA6XbnielZlOnEw
X-Google-Smtp-Source: AGHT+IHAmY3cKpb9sKauDzAPuMRSBw4scaCwVsJY6UgUsWKiz8av6DfzkDhrWM75GsjBU5op+ncafw==
X-Received: by 2002:a05:6000:2207:b0:426:d5ab:789 with SMTP id ffacd0b85a97d-426d5ab07a9mr13486191f8f.53.1760604935890;
        Thu, 16 Oct 2025 01:55:35 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e8141sm32874494f8f.48.2025.10.16.01.55.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 01:55:35 -0700 (PDT)
Message-ID: <0fe25ca8-8dd4-42c7-a818-a803a256f42f@linaro.org>
Date: Thu, 16 Oct 2025 09:55:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] media: qcom: camss: Add Kaanapali compatible camss
 driver
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com>
 <20251014-add-support-for-camss-on-kaanapali-v2-3-f5745ba2dff9@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251014-add-support-for-camss-on-kaanapali-v2-3-f5745ba2dff9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/10/2025 03:56, Hangxiang Ma wrote:
> +static const struct resources_icc icc_res_kaanapali[] = {
> +	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
> +	{
> +		.name = "ahb",
> +		.icc_bw_tbl.avg = 925857,
> +		.icc_bw_tbl.peak = 925857,
> +	},

Looking at other implementations I realise we've been adding avg and 
peak without too much review however, wouldn't 925857 / 2 => 462928 be a 
better value for the average ?

---
bod

