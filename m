Return-Path: <devicetree+bounces-161083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AB1A726E6
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 00:12:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B62C7189A8AC
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 23:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BF362517B2;
	Wed, 26 Mar 2025 23:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DjlAS1iH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2B620A5CB
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 23:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743030732; cv=none; b=VEQr1WYJxg84WdepROgxA3NdQpb9bhlVL0G08CVo2byPf+7Ed1dv8eMm+T8DJILSkVyCAEOHtzGqlgga4JEMlzYlaFp+Rmm8LQLvIrMJ4T6BK7cciK6LBcO0yfNZwAOeHXFjOSxyfiQeorHAKXFg7Knh06VL0X/Ct9052Rr/OuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743030732; c=relaxed/simple;
	bh=UCc8rw1bQL615I3M9tiEKJMyEQJf60GHdPTj5eKlWlA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P/y2ZteejB+Z6I7OFtdOAiK+Y2ZjO0cL3GL+AV3MMkbbjCbBRVrUaGLcE6izImDWL8rmbzKE8ZaShMoV893C0MfNGMdPkIXzsQrLfc2eygtWelzBo0TyQU0WkoP0x78t4FpC9bcMh77NhYuihrw7zqslatG71wO6WpzsYhaAl/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DjlAS1iH; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43ce70f9afbso3716195e9.0
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 16:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743030729; x=1743635529; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IZ1oUMJWV5EqNiAudEw/NeW3kJ/2zqRNfZDBi0ZOEew=;
        b=DjlAS1iHihGXnNiwAcKUm6doV6UVKK4ZyN5mPP8mqXVt7oYrmh6mDM7QQIl69wrQnB
         OvD0rRxq+7RxtEyqSNxDUam9LmmdvB99rtbFB4fHzgievX6OdTwQCP+sW55P/tD414Lp
         dVQc0Cq6lTVbckIKFKJeL2vcVhGr7+Vj++d6YjgCXGgnNRBKMPtUr4OxDkqqhT0juJb7
         iYJem9CJtwo/S2ls6EWYsW0Q4Ndi74GTFXMzAeWf3XhyTBOK4EN2XyHEgsBA2c+VJxk/
         2rrY4J6OtB8xxKtSnsBmPKBAENDlbUEsbzxenY7oj0vv7n6EAjh4y5i8novKM30csOK+
         Ls4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743030729; x=1743635529;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IZ1oUMJWV5EqNiAudEw/NeW3kJ/2zqRNfZDBi0ZOEew=;
        b=wZwPMjTGcQlz3FY0FR975WVySu0yVrGrXT8gjxhjhafISpiTRKNo+gDY1A8FTNWuJp
         31jqxEItlxUgZa6AGFMNNiwUrMgahSx5f+bGtion8J2P7pIXAlLumuWM1RYEDKw3syDB
         yDzQyJtnuzm28+BaCTnFEWml4N+k2T7dpxTdR2dfzY7NSLM1O+oLYxiWFe8+m5cCOJFS
         7aoSjVU+dJEqKpkWdauVFi49zJiCz/nhPmoqb4hL4dRRUQdY5UemJFfYW0AleU7L5y7f
         C+3QV88tEq+kyR/xQz/pp9rLpuK1zZ7FinLoOykrBTjkTiupnm9GzRvubg2QO/Nd50Ib
         Dhxg==
X-Forwarded-Encrypted: i=1; AJvYcCVS/g3q3d5u4DxWUA9cwWn3/jraF0dbQzXNPXdWWDn2bLHHYcFhgzrlfh4O7MOLJ6hNKyf+vyx5Z7qb@vger.kernel.org
X-Gm-Message-State: AOJu0YzRpMmhF88bYWA3GKYO3tZiBcKRLj0xek8RceoDcv02DB/DFM32
	Yr4YeFSa1lz3TZviaOT0F3H09qtKPSd6A7ujTmUgYY8eABbCWt9fOIaPyVRHFMw=
X-Gm-Gg: ASbGnctdVKANi0MLilif4Zf8xbHckw4IbqIpJUKobMtWMett0BPx4S+7j9U8qv4u9Y8
	MDLUWJdUtz8OR/Rya96dIMwn6JvYmGN4H4svlGldmq9kZ66pQDDW+ovE6ZhFCMwi9PbKJK7vvvd
	5udppm9hAItOsJIN+3qKqg4q8lO4XgHEcNF2J8cFXe5I1d/ze4wwGFYWoF+puQhRKXaXnbtpUuj
	bO0iSqxwdQHFbbcI/75im4tdc52yUaqcCHZKIFaNhJWVBE203YIpiLM+rjkBhNG4GdDIh5m+Kar
	18F3xv+lcJLswLBVKPgQvY9Cnp8DSXEOCokEqhnRq5aQLrOZ7NMCq77Rt3EIuZcO/Xuompf3+xE
	1mnDv473bKg==
X-Google-Smtp-Source: AGHT+IGjr+qreA7JSvrEvEPOD9T+3iZQfV9rj1gGSrk8rCjB2ZOO0aPA2mIB/U4jI8TMPQySnNJDkA==
X-Received: by 2002:a05:600c:1c03:b0:43d:4e9:27fe with SMTP id 5b1f17b1804b1-43d84f8bea1mr12243585e9.8.1743030729169;
        Wed, 26 Mar 2025 16:12:09 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d82a041d4sm18764305e9.0.2025.03.26.16.12.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 16:12:08 -0700 (PDT)
Message-ID: <2a9df021-72f7-4bcd-8c93-634c2b77dfe1@linaro.org>
Date: Wed, 26 Mar 2025 23:12:07 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 8/8] arm64: dts: qcom: qcm6490-idp: Add sound card
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250317054151.6095-1-quic_pkumpatl@quicinc.com>
 <bmCbxi-K3naczb2RWmUcQbkKEJgSGyXXi7LGAlqE924ZfgXs-H6O_xhcHT-7pWOwA3eoZcxNOwvpuPQPA_DXUg==@protonmail.internalid>
 <20250317054151.6095-9-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250317054151.6095-9-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/03/2025 05:41, Prasad Kumpatla wrote:
> Add the sound card node with tested playback over WSA8835 speakers,
> msm mic along with wcd9370 headset playabck and record.

I think as a reviewer I'd like a better description.

"msm mic" doesn't mean much - please specify the number of MICs and 
their type - "four digital mics"

MSM Mics are not a meaningful description.

---
bod

