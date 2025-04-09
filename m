Return-Path: <devicetree+bounces-164809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29001A826DA
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 15:59:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 433E41699B9
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 13:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9D92264612;
	Wed,  9 Apr 2025 13:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DWToxUgi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC43263C84
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 13:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744207122; cv=none; b=sh17zZvKcaAsIBRU9ouz+5W25a9rnptCR7LHlFoJHZs8D1B5/H53A+tN3atE6o4kB37TsuFwmxWkhJhs1JIhCVyUo/0CT6bK47uMBdU5/WRflPzIHsK8IyWwSozD6PzErQ3Jc8M5V7kLL2fVGqgDn87VMf3D3EEoEnMW0XvLyME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744207122; c=relaxed/simple;
	bh=t/S97uM0OQzmLF1RsSm3zSU9KoV3Eb8EMj9maBmFYT0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iZvwzHemXiZNRwdpisG6f0mBTeAg1R1VeYuyto1ThUkN8g7Azld9FgtOoOUKPKFK97Wm6KYlRuf4BG8CZJbdEbUKIpBR7T6BuS2xFtT7pn9AsxcTAzaqZJnont42WdYEe7dg5iiQKm50KrWgphfjnhwGGuzZIE308tTk6K2q3wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DWToxUgi; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-39c1ef4acf2so4213810f8f.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 06:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744207119; x=1744811919; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7Azu3AUAQUy2/C9fS6Ba25nQGoxL9rV4VIY4SgkwNTA=;
        b=DWToxUgiR+18kCPRp41F6mZiPkpUj8CNiieboDZw7bXfwJA2qJ75YyxQryfK2/Zy/Z
         qpjJSIgbCAreVBFstI/FZ6ErJbCrGpElEi5/ADia3utkjXyG5txqCnLOi2df4rBE+epQ
         k5TvH9sUOdR7bm+ttD4s0T2osWzOExGAndq8QVVfpB5BjYbQb5aj3exdBjPufSqFNMpG
         5Vd7YihIWrG5NmX6WZ+zzkgdMmIx9/euw6UqrSU2gc+SM0EXZRcCiYQmvIklG0YUPEYg
         q1vQJjjX8hZd8wMPUxh7g0lqCxWUDumsXXLmYJoiInFYtOFln3BHJcPEs4vupAHc0WQJ
         jBzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744207119; x=1744811919;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Azu3AUAQUy2/C9fS6Ba25nQGoxL9rV4VIY4SgkwNTA=;
        b=FMMWMP50tOz2hnvBCFhPi2pqwbWb/VnX1NQMDhQLF80+jYp2oJnBFt2wKipDeoaywB
         sBFFyL9gLWXwpNgbVDBqe367RdmV/bN5kh4+P74xed7OItemkGpaqZDwhuAa/ZZrUsRq
         z3KVnkPPHfrm5h7Oi8jbV+66K90rr+ln2TvQTQyYBFDzTXwmK0kufUN8D/qyAIc1ijcB
         xEZdt/slpAUjDsrI/uT5gTOpPtyWkwFKgZKZHzHu4WqCwGU1F91AVp8/idOsX6QeK8ax
         9k4bqU6wH5kDpsA7UKN1emQPxA8REbZ1TAj6MsCbovClNiv6Ryw0hdYPDgM9CO07rN0n
         7lFw==
X-Forwarded-Encrypted: i=1; AJvYcCX3JyZliFK0LpMP2/yn21cksIeYDk4hkhhXrTfqyLvNbpIUlx/cXU9mVRT5S475A9dYwT2X7+r+OV0z@vger.kernel.org
X-Gm-Message-State: AOJu0YyKp/YReyUUVZBA5EiGeYW46iFrk4Z10XhQufrPsmDOV50C22pr
	FeUfWKqm4V4Wds7KIGQ3F9pjIsdy/4dxDJssrz7sKnYGfMo7fPrgKeuhlXRyZck=
X-Gm-Gg: ASbGncuHjlkjWslJB5hyPegx3leMZRK/+l3oIcNAfIE4ggBIqhr9Q2HZM+V61Qtd6W4
	ipvmgUt0gnEXI4prm33H5xIAatlsnSl/Y8rNvvJFhA4ALHFmMQu0vbuTadj/8pDukLnUyNL8BHg
	bzx2Jg3YtVTSKmgNkBh7vDL0YZadwTPPPrpjCOiByz5GnpknuOUjO6cSVXbb4Ou7UCPdYtWa2Qe
	I2wD+j2SHV4iEeNfjQd42QgBNFDNI9RXAVS7ij7RUEWXJ/yeBuTJQGH1w1hXimI8uhSu8y1L+Bw
	Tj+zPdBwxNs7i6IfRePRkGVOqCGDAPaCH+P5zFs8IXpxTC3Zi5QH0PJZ3Q7k7bpAxU84CSHqAmA
	2XrTfEw==
X-Google-Smtp-Source: AGHT+IHCLRyj5tGrglz7jGGJhi77SKkVODo7Bo744HBiNUOuH1yjjm2d3tWnAZzawQD4MlZx8yyBRA==
X-Received: by 2002:a05:6000:1ac7:b0:391:23de:b19a with SMTP id ffacd0b85a97d-39d87ac48c4mr2967406f8f.31.1744207118882;
        Wed, 09 Apr 2025 06:58:38 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f235a5d82sm17370525e9.37.2025.04.09.06.58.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 06:58:38 -0700 (PDT)
Message-ID: <48eb2db1-094c-41e2-be93-e713e67f8cb7@linaro.org>
Date: Wed, 9 Apr 2025 14:58:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] media: qcom: iris: add support for SM8650
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250407-topic-sm8x50-iris-v10-v3-0-63569f6d04aa@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250407-topic-sm8x50-iris-v10-v3-0-63569f6d04aa@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/04/2025 16:24, Neil Armstrong wrote:
> Add support for the IRIS accelerator for the SM8650
> platform, which uses the iris33 hardware.
> 
> The vpu33 requires a different reset & poweroff sequence
> in order to properly get out of runtime suspend.
> 
> Based on the downstream implementation at:
> - https://git.codelinaro.org/clo/la/platform/vendor/opensource/video-driver/
>    branch video-kernel.lnx.4.0.r4-rel
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> Changes in v3:
> - Collected review tags
> - Removed bulky reset_controller ops
> - Removed iris_vpu_power_off_controller split
> - Link to v2: https://lore.kernel.org/r/20250305-topic-sm8x50-iris-v10-v2-0-bd65a3fc099e@linaro.org
> 
> Changes in v2:
> - Collected bindings review
> - Reworked rest handling by adding a secondary optional table to be used by controller poweroff
> - Reworked power_off_controller to be reused and extended by vpu33 support
> - Removed useless and unneeded vpu33 init
> - Moved vpu33 into vpu3x files to reuse code from vpu3
> - Moved sm8650 data table into sm8550
> - Link to v1: https://lore.kernel.org/r/20250225-topic-sm8x50-iris-v10-v1-0-128ef05d9665@linaro.org
> 
> ---
> Neil Armstrong (5):
>        dt-bindings: media: qcom,sm8550-iris: document SM8650 IRIS accelerator
>        media: platform: qcom/iris: add power_off_controller to vpu_ops
>        media: platform: qcom/iris: introduce optional controller_rst_tbl
>        media: platform: qcom/iris: rename iris_vpu3 to iris_vpu3x
>        media: platform: qcom/iris: add sm8650 support
> 
>   .../bindings/media/qcom,sm8550-iris.yaml           |  33 ++-
>   drivers/media/platform/qcom/iris/Makefile          |   2 +-
>   drivers/media/platform/qcom/iris/iris_core.h       |   1 +
>   .../platform/qcom/iris/iris_platform_common.h      |   3 +
>   .../platform/qcom/iris/iris_platform_sm8550.c      |  64 +++++
>   drivers/media/platform/qcom/iris/iris_probe.c      |  43 +++-
>   drivers/media/platform/qcom/iris/iris_vpu2.c       |   1 +
>   drivers/media/platform/qcom/iris/iris_vpu3.c       | 122 ---------
>   drivers/media/platform/qcom/iris/iris_vpu3x.c      | 277 +++++++++++++++++++++
>   drivers/media/platform/qcom/iris/iris_vpu_common.c |   4 +-
>   drivers/media/platform/qcom/iris/iris_vpu_common.h |   5 +
>   11 files changed, 413 insertions(+), 142 deletions(-)
> ---
> base-commit: 0d6ed9e013fcc33da9676ed870454d2a014a5aee
> change-id: 20250225-topic-sm8x50-iris-v10-a219b8a8b477
> 
> Best regards,

For the series

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Dell 
Inspiron14p

---
bod

