Return-Path: <devicetree+bounces-77094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF66190D65C
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:58:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 668EB28818B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B17A713CF82;
	Tue, 18 Jun 2024 14:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BnRwdUwZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F029713C684
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 14:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718722070; cv=none; b=giUEtlqmJz5/Pgh07mHev82h2xeOGSph14OsGrfDF2ZryImK+5Flq6uLSndDhqMHEdlJZLdM1KTigrWsb/aokYr+YRRHD9i5NTaurdYouQ3tM36CUw1VUTT8PLBQaE9QaNKcppaF96kq2LJeLxtC0QoW5Sa3W3WLasgTKesDMvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718722070; c=relaxed/simple;
	bh=IZZnds0VRHrm2Ii8hE6YeOS6qZ0PTeuu48RLJyyIyXc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AlFLK+CwomWouaakCpF2t1mvwzza7UYIdMGC2KvWWuLVRiTE7kf31zY2Rpp+Tt7ENQ5vl3yokGNRv5mMWwqFGDbZr5m5K/xU2P5JcnjG+GzeUIjj21tg8nO3WxEW9yPEYEo75V8US2Gs9B4/pGFkXWdD5mP7B900GL4w/FUx2mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BnRwdUwZ; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42165f6645fso44802925e9.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 07:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718722067; x=1719326867; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DJ3dYX4GpJ/TRHjWJ/CxptBXzc0wGdknCikvdomgmWg=;
        b=BnRwdUwZXP15wxEg20PWKAHy7YAHMEC79MGx1WtVO+EaUbqNxDsSISxVmj3b+tuY9t
         Zgx2suuLRXNgi6tGDp6yohZYXYET2of0ZI8qS+rBoCBm92DtNIG0mO7nMQv9SR196lrK
         2oiGVVDMdXvYZ/uFZzRAwcf50xSYZxW0db2qoDcDeJDti46NlaW+4CnNG6zzUKhfIB/A
         2lzlNrq18ztrQwzFtdYQhwL/QCqYY01IPCbkkDev8gmaX5RMWzq3uQ47/A/AyMt86xMe
         82ibvnyD3pYEMaDzXXssJ8rFDVftyUTp/g+9RrhG9nX8cnatIGAPnACUGalaCrd7HJ2f
         cquA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718722067; x=1719326867;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DJ3dYX4GpJ/TRHjWJ/CxptBXzc0wGdknCikvdomgmWg=;
        b=DtpuscAmobzdu2KUAgfkQfb9/mOASQrqBQ2AQQBFiEUmhB9vAAqt1l1dBly4niDcOu
         IcfvskZjtvO/IuUrxOnbhvtK8BfMRHh9XeMG5juun/WtvK+EoUxImXkMAcPI/YfzEHq3
         WirscxZPzmtoFSGh1MC2VNjdU0tb10ncN8HZzBD5sZhXaQHF6nS6nr6XbrtwxJfQFWTQ
         FxhQdWMjckhUppsvyHzbq/qeRxCJrSN95w2luCqolrFC8bzXSOXgx3z8ci2X79ctIeNC
         PIvzgLrn94NKTqd6UUy/amEC4F5cpUTVr0uTlOVRfla1j9d9wJG2sGHQI6mq9KH1BWd0
         OVAA==
X-Forwarded-Encrypted: i=1; AJvYcCXE5WWaJDliSU4wo+H5E/mL3k+GrZcuU3jh2GfKou9SUXLyo1YcEXYUbLeap51fkp6V/MJa6kHsw3FrzQAfS8uRIYEUwk2mKsMzbg==
X-Gm-Message-State: AOJu0Yz3oak1dM2zgRoYDH3hhb6oV/GVn/iE2USxHATg9prVHUPXZjNx
	dUGcxAapNkn/IiEO/socVig8ncUmPMLy4GXJ147xntlSeDRvXd4qBer5fbx4yvs=
X-Google-Smtp-Source: AGHT+IH7I/dhyj73BogJTxO5E8ag28pj1oQQCYT3fMmsc47p/80bkTRhwGBL+ram+v9dMFIqbI5/7g==
X-Received: by 2002:a05:600c:1d8e:b0:422:5443:96aa with SMTP id 5b1f17b1804b1-42304827573mr106149055e9.15.1718722067337;
        Tue, 18 Jun 2024 07:47:47 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422874de63asm229867065e9.30.2024.06.18.07.47.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 07:47:47 -0700 (PDT)
Message-ID: <36687425-0be6-4616-a3b0-9870bb187e34@linaro.org>
Date: Tue, 18 Jun 2024 16:47:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/4] interconnect: qcom: icc-rpmh: Add QoS
 configuration support
To: Odelu Kukatla <quic_okukatla@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Georgi Djakov <djakov@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, cros-qcom-dts-watchers@chromium.org,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, quic_rlaggysh@quicinc.com,
 quic_mdtipton@quicinc.com
References: <20240607173927.26321-1-quic_okukatla@quicinc.com>
 <20240607173927.26321-2-quic_okukatla@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240607173927.26321-2-quic_okukatla@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/7/24 19:39, Odelu Kukatla wrote:
> Add QoS support for QNOC device for configuring priority,
> priority forward disable and urgency forwarding. QoS is required
> to prioritize the traffic originating from different interconnect
> masters at NoC (Network On Chip).
> 
> Signed-off-by: Odelu Kukatla <quic_okukatla@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

