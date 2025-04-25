Return-Path: <devicetree+bounces-171096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8C3A9D393
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 22:54:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8197189A5E9
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A37CF2236FB;
	Fri, 25 Apr 2025 20:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M2amKR2/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C109721C184
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745614471; cv=none; b=ln1x4FN2wccR2Ieh4aJCiKFEW1153y4ozfbllE2Mkb+NB1jyLUZB5CRhD/+05gJHIWs5bvTzUWuo/ceU1MkHCviT3qDjrGn7z8s/UlS7C9j+jtmtP3NicI7I6IJiE+vsbZBwHnuE/2HCnXy42kLuOa43JK+r5Pok2ds8bYVTjVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745614471; c=relaxed/simple;
	bh=y3QBxpLU4EegLlWms8FmmishWO2g4sGgxJbSZbHeDM4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PjJynFq//MTIwv9HIOYNOXFSvL0wBmp4CmtCCVi993w12uHVb710BTkWAhw5cAELYqL4wogJdbEswIdCalG6Fy8EVxU5DcDVgVLIzHfmFC10zhdhVD2f8COXItUzkSeW92T09wIdeJEojgCHEXnDAtziw9BIqv+vbKgA23/WhgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M2amKR2/; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4394a0c65fcso25649575e9.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 13:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745614468; x=1746219268; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+TU5UixLb/Lcz1sIttj/596FCniYJ8zob+CBmECF494=;
        b=M2amKR2/F6tGJtpCFjAacP/xaUCa+t2COOY1AgwNL/nGUd58vxX+eRU6lCLGakqssF
         9szup/CHN7Fj4vCh2V4dZeg5iiJLs3SxzDTrrxIS+GRYIAjsK3UCydRkvSEXNeIWEBeR
         4tTmw1JVm9NC45hg6vqbgbZNBAL2h3HhWmN+WgTQSy/a85hU7i0V/HPnwYJEPBjZYO9O
         qM+oWpVslVJiMugLazGgBL9x0qRgXvJVR6ewPWSGj8eWXafk+F89U3PKOznmHZWklM+3
         +zRuwDRYGS3YNeFz/o4ndd25WePCKNoUIaV7KwEie5ICrLHcy6XmyLBHXfbg6LlYLmtx
         yrbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745614468; x=1746219268;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+TU5UixLb/Lcz1sIttj/596FCniYJ8zob+CBmECF494=;
        b=h6uJKe2r1dVSjsFLOUescAwXxc1/YKnG/EAqdYWDGMGUr9TkoTnBo0eyDa1WhvfRlx
         CpnkG0K9LbBjGPUPPgsoMCWA1Xo/fbtKawe9/8zn2t5idwOcqhwxjGursHrj/mdnVT+o
         1DTzzdhn/E6qiAUVY9/Tp7TJ+3Zb4sa55FCUOPEV0r6YwdF7aFVlYLGrvAhH1lAV7Ndd
         1/31c5XY1q3EwLsCde1AKsxYTGmsfUUfSCfnZco9JR9uFH6ZU1nJ/v6ksrF5JmOlZ+6c
         N+2cIFLBBlzknbJUy08l1rK5OCZ9ejW5A3d3x/NezExLHDzG0ie+H9tcxiYzt3XCrmwk
         42Iw==
X-Forwarded-Encrypted: i=1; AJvYcCWRlufFoWYxBAYcwsMdKOqRqDQSg8Ziot+mmdBqXPjtMA1s3wUIWQO0iRS/v0q2K0bOQZ5y2/M8CV9o@vger.kernel.org
X-Gm-Message-State: AOJu0YypVRVZEfqZhR/B71Vox6K6BnFabnkdzaBb07rxau7EL53BSN2o
	LYwiKXLzUP2EvErbXLGoGUVslFAXGb2Sty3zeyKXYvGTrb0dqwzBSzyrEz3xA3Q=
X-Gm-Gg: ASbGnct7AeGfsD/6l3F4vqfBL+pbDcCEo/9Pbj4qlnUBhHNW8TluOhsJ8O3b98FNnaJ
	TnHlDLPTyX8vtzre+KOupB2/Z1vGZ7Mc1n3wJCnIcQemNUly0afl5Jn+UTN6uq4q1NyuDa9YLxA
	/IUXXakvHpHwodCvHwPiO/MJCIOSHDoLV7LzjQb1I7JTPIYUWdU2EKo5Tz33y9TtHVSB1/Wz2H0
	HsMcpmgwcek/9UXqaKaH+k+8unezZt/6oMFt/rOC8jpZDuxtE0Nx3UdBZBGBUQEPfdC/IhSoFsm
	NXuqOeZNdkF3qXMIxEcw24D7rWfiC3yOBQnxuW9yyN8OAYTo1xKAvMI2G+vrVA3RfYXcCJZxESa
	sWhyHFe48h9+Xqwqc
X-Google-Smtp-Source: AGHT+IFu4YvGwElh13buW6VpxKA/vVcb7uSB1tVZ6DbnzGwHpLhmj5iIZ9UFBDGGBhtShow69ZiPXA==
X-Received: by 2002:a05:6000:18a2:b0:39e:f51d:9cf9 with SMTP id ffacd0b85a97d-3a07ab89b29mr499207f8f.48.1745614468026;
        Fri, 25 Apr 2025 13:54:28 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2d86f7sm67390805e9.32.2025.04.25.13.54.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 13:54:27 -0700 (PDT)
Message-ID: <a3c4c98a-45f6-4900-972d-379096e8244f@linaro.org>
Date: Fri, 25 Apr 2025 21:54:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] media: qcom: camss: x1e80100: Fixup x1e csiphy
 supply names
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, loic.poulain@oss.qualcomm.com,
 vladimir.zapolskiy@linaro.org, krzk@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250425-b4-media-committers-25-04-25-camss-supplies-v2-0-8c12450b2934@linaro.org>
 <20250425-b4-media-committers-25-04-25-camss-supplies-v2-2-8c12450b2934@linaro.org>
 <ukwt7mxabaq2om6is6smvwedo4nweugbauapeuzhbzj6jsbwk4@5eiksknb2bf4>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <ukwt7mxabaq2om6is6smvwedo4nweugbauapeuzhbzj6jsbwk4@5eiksknb2bf4>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/04/2025 18:27, Dmitry Baryshkov wrote:
>>   static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
>>   	/* CSIPHY0 */
>>   	{
>> -		.regulators = { "vdd-csiphy-0p8-supply",
>> -				"vdd-csiphy-1p2-supply" },
>> +		.regulators = { "vdd-csiphy0-0p8",
>> +				"vdd-csiphy0-1p2" },
> This is an ABI break. Please mention in the cover message why we are
> allowing it.

Not an ABI break as we have no upstream consumer of this just yet.

I'll V3 this to make clear though.

---
bod

