Return-Path: <devicetree+bounces-57893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A01F089F250
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BDA8286892
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B76E1411C0;
	Wed, 10 Apr 2024 12:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="my+Ci1EC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA7A69DF4
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712752421; cv=none; b=BXsXfINVYlx3rDGNTCCf3f8luXj61qGQBaQAl33k/vHLEFEGn/QDJnexdFGuvDDYkqFCM4FxtsbPtU6AWSyKOL82+FLanHt9rj3TYJYef7K0avP5hAWC7HsLmeQvyCUZK8Wlyher2+jETMZ0khJAx7hVYa9b/+RTNMoD3ue3fjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712752421; c=relaxed/simple;
	bh=kc0dZ0e3JBP4lFFSI4x6NCpdXrRlKfuJR7I+rUGURhM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hHIKuqSZ4kWtbCcOsD0doWvHUmCDS08BOTv/hU7eGyaeRi4wUQ4cFyr9C5b4UAfjHxdyfE8Wc9zMNdBbQQAh6hakljH9/69dHimuePO4vFdtmKUUm4uIUtHtshA2UzGzAJOszGFonB5akwcOLGfbIrmU0q0rr87JQhWAZCcSxi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=my+Ci1EC; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-516d2b9cd69so6332224e87.2
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712752418; x=1713357218; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MDmd9nV27QdHdemsMkqkYQn+1GeM6AqMiOUOo3y6Fjw=;
        b=my+Ci1EC6LFP1uNlc+2L9Q7QG94FJ9VneXVizCT5QCKFlmuzMsiz/cSSHQ2qROw4X5
         z1YYWQz/bAJK+bbkmipK9Ry9eFIL9n+Cp7vWOfap5+W91fRBb9pfaxTsY6SGu0qJQfut
         GxItmnci9XDh1ug+p/VWWe8uM70NR9LG+IPtNIj7PvnaQQWf5b5B8MJOcsgImfzlGUK6
         p0LmjzUwotV864u5ItbNFNqVVp6CgeI+/5A3y0hOMEAhgHy02xQokRnO2NVC5a+limFW
         oZhqguAv4RhIKxwS2w7cOoJfQogMHZOhm6H4Nxz9RyObmdTTHGRRNZOMcVYz3310YHCl
         r5tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712752418; x=1713357218;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MDmd9nV27QdHdemsMkqkYQn+1GeM6AqMiOUOo3y6Fjw=;
        b=iD3kbEkFf0T/qZa87BV2yHISead/mAKa0QZ0dpuqHFyOL9k7T2zqVGuTpdRlqR+M1K
         hNBqZJPJ7znXA1zbS06GmK8N/JxufiI8ZPjxYITJETWFb4SnX7NZL0kPmh00Z9B2XD+P
         sWcN9zkljw208mzbXSW43s9ZTXLtwnefZdz6Ve8LGjX3P94Quuo17ZY+V4WhhrzRssoM
         fo/EhWcy6uRJDm1F3TNyp6JJ6F7rofTHxDGxHgy/5c/A4V8+EPGlXzV+Qt7FMN4/O2S0
         oXUkJ6hr1Mkj1X6mkfbuvU/TPXKvCGBQ90v+WfYjUY9Ywp+LudtSHNg5U9QiKNPXMb1K
         B9KA==
X-Forwarded-Encrypted: i=1; AJvYcCXBv9c2SSamdK2PkdHjlwpCD1ac2aXnD9NaBy8J+dotY/3ZMrGN39G5Zl7Cip6rYb1cZROHLy5HDh4YSaPevg9mVjcOA/EgcsbPcA==
X-Gm-Message-State: AOJu0YyizQB/S303azghEAbcOeVPfuRSOLGFOo/K5Dqz7Zq1bA0zzYXH
	4zK+vElsAvnGOtdbggLl4xfWcwDSlk/sU1/EaQ6Ys3uXhf9vDT9DIFAhkagMxfc=
X-Google-Smtp-Source: AGHT+IFTii5izHkTaj9l6tWb307f9H7wWwEJ+dZ19x9pLNKHm+gaZZyS5VFsXUAMjzM4j2enKnHtww==
X-Received: by 2002:a05:6512:484d:b0:517:b2b:6ca7 with SMTP id ep13-20020a056512484d00b005170b2b6ca7mr1521768lfb.59.1712752417721;
        Wed, 10 Apr 2024 05:33:37 -0700 (PDT)
Received: from [172.30.204.89] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a3-20020a056512020300b00516d63a315bsm1737647lfo.104.2024.04.10.05.33.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 05:33:37 -0700 (PDT)
Message-ID: <17b279d9-e353-4d72-8606-0780ef7194cf@linaro.org>
Date: Wed, 10 Apr 2024 14:33:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/9] arm64: dts: qcom: sc8180x: switch USB+DP QMP PHYs
 to new bindings
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
References: <20240401-typec-fix-sm8250-v3-0-604dce3ad103@linaro.org>
 <20240401-typec-fix-sm8250-v3-5-604dce3ad103@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240401-typec-fix-sm8250-v3-5-604dce3ad103@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/1/24 22:33, Dmitry Baryshkov wrote:
> To follow other Qualcomm platforms, update QMP USB+DP PHYs to use newer
> bindings rather than old bindings which had PHYs as subdevices.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

[...]

>   		usb_sec_qmpphy: phy@88ee000 {

This unit address also needs to be updated

LGTM otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

