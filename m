Return-Path: <devicetree+bounces-120519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 056AE9C30B0
	for <lists+devicetree@lfdr.de>; Sun, 10 Nov 2024 04:10:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 32BCD1C20D9A
	for <lists+devicetree@lfdr.de>; Sun, 10 Nov 2024 03:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A7E61459FD;
	Sun, 10 Nov 2024 03:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="cm2HOsUd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E74F9DA
	for <devicetree@vger.kernel.org>; Sun, 10 Nov 2024 03:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731208244; cv=none; b=ilInC96EVm/qJu4DiplYLMqRSvh9U3JNrfw7UBL2dA1QwE2u1561+t99N6jNyjPKgo5bMu6xymEs43hPkH2MpAdQNbnuI+rwl356vWXfD5prP5SaYQx54J9QQNAoJwPdC3/wanYiAYtos1wX0wLB3L8n6i9FAAs9Omjsqg48Cu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731208244; c=relaxed/simple;
	bh=cQlKNhd5NE6RwBmoxY0OcVryhkWPxYxqlNQtOR1DQls=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MOT0bzFizLAicHn+fN3iFfuIMp6xRnNCW9GhUIWc0joCQv1dThCIxLQtrBw6h9l29xNk3lWGy9DbfqhXxGcxgQgYNbamMJF9pKjg2cWOB7/3YL5cR7O+6FO9AJ5DPGvNikJsfa+qV6O/fV+iFkSYAZoTjk+A/tWhrzDKRYFH45Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie; spf=none smtp.mailfrom=nexus-software.ie; dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b=cm2HOsUd; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nexus-software.ie
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4315eac969aso19542075e9.1
        for <devicetree@vger.kernel.org>; Sat, 09 Nov 2024 19:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1731208239; x=1731813039; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zGxEFnmS5fq8tk5sA1fqqLEk9HyDO1wqcsP8ouvekQY=;
        b=cm2HOsUdx85pqUS1bc98v3r/axAU0pzhBo3xU26kafhTwItiHw6oSE3PILQUg1oAqh
         ICtQg4uEgJL8hg1nfrPsY+RwH+wpL2kGL03sw7GGb6arBjU0LSRtafn5SIDI7hrfaNXk
         DORgyH/pJWgM052qdJp2ZOJ3WdE+uFqvPE+AzkJ7srIRsSb+kef2mf6YXNU/q7MQ7AJx
         vykSPbxc7b0HHUB9mVYiTOx7eof1xQy3ZAppBazJvUcKX60k4b+FeWxvxuR/zhVw69E3
         UzmP/l2yhVURF9B0Nqtj+JXznJUBaykZfiGAkAWYDtgU2omngUh7IRS/02VKrzyOuV+H
         M7SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731208239; x=1731813039;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zGxEFnmS5fq8tk5sA1fqqLEk9HyDO1wqcsP8ouvekQY=;
        b=J/b3JaGikat82sn5+iyO6bWA9n46AVKY8/u+68uQOQRDx5e6hpVHED4FlYm05Fr79Y
         AT2Lpnz70fYOXOS3qas46jtv+TakJZqis8LuGgLJYTxTgd4p5rjm/byA6pVE5aIo5Hlc
         uG5hHNL/cUimdBXnDO4RZT1LEZ+vQvqPwpTpVxZxWSeh1L6M9wq+aPH/fYS86Gwdtbyq
         lTX9c/XG7AcVG9NRd7Zi9vvHfp9Eb9/M1AdAnubkZ2dvmskAsfe2ma0Wqln4mWvSvcUI
         CqrotpPo+HASsDE87djYO3z2+B3aPHTi+BPs7iQT0J3NV8tMgFFu8/bRj3T0ls5iBcR9
         Poiw==
X-Forwarded-Encrypted: i=1; AJvYcCVZXX3Nid+YdpZaPq1jPBnf8yl5aqGU5LTCyA3NgSRGaRnq2lWjnzSXGzizTQaxaXsBx3+/e0DX78h4@vger.kernel.org
X-Gm-Message-State: AOJu0YzN6TE/0JpwcYCWn1HaM1+O0wAeaYr0tAJVjIXLYvwaDpstix8J
	nY6h1olAAVGsTtqchf7VhhKRutshSfyoHY2IVY0C4M9izKsA3P/4FrS6NwOZuVc=
X-Google-Smtp-Source: AGHT+IH5aQ8aQ1R+iLcbezixKAMbiVAd6tXCGBPiuHyJUqk5Nwvv+Ivfc/HUeFLxpFg7fJTC26pjWw==
X-Received: by 2002:a05:600c:4fc3:b0:42c:baf1:4c7 with SMTP id 5b1f17b1804b1-432b6858e60mr70055455e9.4.1731208239337;
        Sat, 09 Nov 2024 19:10:39 -0800 (PST)
Received: from [192.168.0.48] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432aa737721sm165333935e9.36.2024.11.09.19.10.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Nov 2024 19:10:37 -0800 (PST)
Message-ID: <841a9469-4fa1-443f-88a6-bfbe11b74487@nexus-software.ie>
Date: Sun, 10 Nov 2024 03:10:36 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 03/28] media: iris: implement iris v4l2 file ops
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Jianhua Lu <lujianhua000@gmail.com>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241105-qcom-video-iris-v5-0-a88e7c220f78@quicinc.com>
 <20241105-qcom-video-iris-v5-3-a88e7c220f78@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20241105-qcom-video-iris-v5-3-a88e7c220f78@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/11/2024 06:55, Dikshita Agarwal wrote:
> Implement open, close and poll ops.
> 
> Open:
> Configure the vb2 queue and v4l2 file handler. Allocate a video instance
> and add the instance to core instance list.
> 
> Close:
> Free the instance and remove it from core instance list.

Its a bit odd that you describe the purpose of open and close but not 
poll, despite listing poll along with open and close at the very top.

Consider adding that text if you do a next version.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod

