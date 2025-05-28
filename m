Return-Path: <devicetree+bounces-181226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 754F9AC6A29
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 15:18:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3C289E1ECD
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 13:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02EF0287514;
	Wed, 28 May 2025 13:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xDjHDgkj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065192451F0
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 13:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748438264; cv=none; b=mu6lkDQw6V47pEDbaHnqo6vvx25p4uicokPqBCvaWHpIarvUbkT1qDafKmQu/4uOO8vZ+GvS+ASaUYA5PbR0tRhxOzWjE1GMaJxoKD2GKJ/eg3jh3n/tvV+pVesQExylQGNQ8PO7qLXrugSP920nBYi9EEBb00LAVECUsUGmdgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748438264; c=relaxed/simple;
	bh=+8JeJ0WuWhzvAWlP/eWg/yGnQ5jEOIHa1Vy8lkmwQAI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Woi7P6QazbDJAGWuFsQEg+QNrSl6TSV+YUOX/a0tq3thkLF928Ph/ogPJvHoCdlYlj9n1CY4UR5J6LRkaGLi8y423nPYMrGsLZSCBsBA2Ul+5hWB1WWvBv636avrieJqHx6tt+02WSl5JFZ3aqvE0kHgm6ScWORloycsNwPDz9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xDjHDgkj; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a4c4e6a0ccso3367503f8f.3
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 06:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748438260; x=1749043060; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=etuOIVUU4x5SySaTzeLNRaqDZ3hUnhSaZPYuWZNFHOo=;
        b=xDjHDgkjiAQIndoaIzHn1Uc+K0cJAoizjAHQicY87NOfQD5c0YoHvu2tbGQdjCruNx
         7juAQuxEPoyLd5uIIDL50t1opayQZ0DtZ66rjInnvEqIAIEQoGY0124sRqZVh/cwfdMv
         1mUS5lWPJrrfAiBIBaOKCjq3crMOSgV8Sl65fmW4jabg6Grk40B3m0cOvA7Ox8AL/8j1
         FRnuOdWsBfMooh1W2E5LlShZsquGXCuxCw4j+LWxBx1qtA+zsGzcKaeEfcezWW7Vzhpj
         FSvM8A5AiuVALahUlTILjAC1SEq+rwfKfQ12arGDcIqsNGlb/g4eQEb6U5nKraJQPQXE
         oQnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748438260; x=1749043060;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=etuOIVUU4x5SySaTzeLNRaqDZ3hUnhSaZPYuWZNFHOo=;
        b=mZ40fVF4Ck0OSFOpEMLgW4L0tYi0uXapUrwG/0JDZBVrVA7TZ5fMRBMPMm1V9hKLFm
         yyBL+Gt+Q3pZNXlIiG51Xsathq7YzfiP1rrFknEO+AafPgIsKqKLTeP1HRHCmTPjFtoK
         WwxCrqRr+lLHFvFIhBhAmjtmPLzEYgM/nPmV5FKibLsFYXmyO3ilM1o0Eond1eOytR9m
         hOfzTLoa+nJrY2EMepR4vg8w9eH1eeFCfzYbWtTSrmfn/jzsVsX/pR1QyXoUG2WZXuvg
         50XXealJXeUOa2EVzXF/4AN9u5Q2mV0H5csMPVeX0awODxW2VS4ALSD/2Zjs8G8N/PnH
         702g==
X-Forwarded-Encrypted: i=1; AJvYcCUXy7JThn0Rk2Pu74Wud1374ELQq0Bjt5+KzbFQkb1ef3blE19YqgzgOWEqVxfl+94KDmIwqlNYoprf@vger.kernel.org
X-Gm-Message-State: AOJu0YxIeN3lHd/oTLhyg9sQP/NQ7JJa5IHW92ye0hfOEtBQmy7XSBNL
	FlOkifOUFTF51nMkebgrsW4ziRM0RBWQZiG45RQuQVXKqcgDZfac6aN5Kak965vU1eo=
X-Gm-Gg: ASbGnctEZnbftHapelaooPFTizisjK2vzYvVw7+AysOwIBdI8z/2diC8L5IVr6lk/D8
	mWME7u5ya/uVVGRZM8SDA6AzScy24g/JwTTfLDvQwQdQTZojPCjG/VP+DB3NcUHWu7pdxNnbMGE
	9ju2L9WKZUwRB6pSNuNmFR2aXBNLpxQuCfXpWbwQe73P3UwI7DyeNGtI86//FM4Ep3wLxS7LiOz
	u315lPafs8s+QWNZYVjAl5Ax4CTmFtSQUc2bG9eHwM0dZBj3duEm8GfHhXe5zi8OWvHaMwkDP1g
	RdQuR/MjW6AyLFWfHFNg6VZTiv65eWYx5kKfvz+I0lGm9XQe594MSkOMKBrX5Y4MKiB+2FzQ7qW
	ruCXx38XH/0doWNVmS/B+cl/ZXg==
X-Google-Smtp-Source: AGHT+IF6k9N6RDrHL9CWqquYKN5znltPLRFbYrRqu24xJR1k0tX7fObXTd2EmsKCVpIINagQQXmgGQ==
X-Received: by 2002:a05:6000:4308:b0:3a4:ed1e:405b with SMTP id ffacd0b85a97d-3a4ed1e40c4mr749522f8f.46.1748438260235;
        Wed, 28 May 2025 06:17:40 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a4eac6ed4dsm1509868f8f.17.2025.05.28.06.17.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 06:17:39 -0700 (PDT)
Message-ID: <a6d64948-e713-4a50-9d4e-6de02a550d06@linaro.org>
Date: Wed, 28 May 2025 15:17:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Add the NXP S32 Watchdog
To: Guenter Roeck <linux@roeck-us.net>, wim@linux-watchdog.org
Cc: linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 S32@nxp.com, ghennadi.procopciuc@nxp.com, thomas.fossati@linaro.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, alexandru-catalin.ionita@nxp.com
References: <20250410082616.1855860-1-daniel.lezcano@linaro.org>
 <650c336b-a698-42f5-ad59-7dcdf24667f4@linaro.org>
 <2a8e1ae7-2a8a-4cd8-b699-c010019c766e@roeck-us.net>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <2a8e1ae7-2a8a-4cd8-b699-c010019c766e@roeck-us.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Guenter, Wim,

On 14/05/2025 20:09, Guenter Roeck wrote:

[ ... ]

> AFAICS the patches do have Reviewed-by: tags, so this is just waiting 
> for Wim
> to pick it up.

I fetched the watchdog tree and saw it was updated from May 23th but I 
don't see this watchdog series.

Is it possible to give a status about it ?

Thanks

   -- Daniel


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

