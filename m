Return-Path: <devicetree+bounces-227332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B1CBE090C
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:58:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E0AAF507AE4
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79325305E04;
	Wed, 15 Oct 2025 19:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WVanscR2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF01929D279
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760558285; cv=none; b=Q7GaW3ZTCSUtMzmCvgcIQbKl07nYLWlX0plmLASBGoPwVMEWV3JY89t/LXFVgQ7A0onukHxyhiFX1h0vgTAh8bxxV4i+Vhd2EsFl/AdnC+mUU5BBvBlvLFJ96IKuiZXgYLRGpRrS/34DbzolzBAd4GtxbjEjDaPqi7L02QUWPhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760558285; c=relaxed/simple;
	bh=iBbCAcZjhrqIgbhQqYVKivZiMNzfmlkCukX9J1hV+qw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kJueZuLDiRWYGt26ynmWqu2Cpm/SdZ0OIch9xGrPoN9qp1nzZYdsq+GhEnmb+f/e46vEfdjpD6VJeIZC2dLckTqL81+WuWwVzNrIQ7WHplKXVu8SlXjSG6ukMmy8OrdKSWRbUzeAEuzU0oPgvMKJatqeqHVZU0X1Eh1VZdjy5k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WVanscR2; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6364eb29e74so12312600a12.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760558282; x=1761163082; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X93ngL5NMyRYdgDq3leVhpEnsjXz8ZNeGovlsQr2X3w=;
        b=WVanscR2qQIOyHYPu7MjcziLqHLtqHtVZkRAkqdOtQmZVZMOzFTBQtRjabYSIwUjJc
         M1QkoE2Vc1K/OaPWiToZiLgGnruyaQbw3TFm/7p665StFQRkWWB2tdHalF8zgSReN03l
         a68FgWhr2sIDEthfjdoab8f8qcI+E40i7Q0iInLeJVd51sYVaScrcVhvekL7kxu3yU0W
         uIdwXN2Irw+QvgYLjFYqKfiYdjdNCFq9kvQgWiMGC2rqU23L6jDVYLG4hQ59OBtatbHY
         /02bJPFe1wmMls8B56Xd01Y80NJPtGOLPc88jihshRvK6PmQ+7nzcDh+ugRq6qPBSAvv
         8Csg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760558282; x=1761163082;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X93ngL5NMyRYdgDq3leVhpEnsjXz8ZNeGovlsQr2X3w=;
        b=EA85cbWyg3ilpdLbu0BJS0ETpyAs4m1VJ0roXirsgCteCbk6DllrDDOsPgR7bdVgOv
         jrwPz4Md/weIJAKEDK882fWgsMAISW9SsC5fUKFLguG8XfGY6m+vfZn1be9pLAGUwyxp
         Shp4x0VWSf+63pi8T6VSvBxZibG2FCv5XMS+uaB10kLmqz+oHiMzKeCpYto6hWZWI7n+
         x5flPxZFx2k0A4RcqSCKE1obt+EkhobAiLCO5BVBv5BzDwKP0qGQERbfG+JLXshhlLJC
         HhEQoCVoQ85z/dNt2uqnA+MDYeaO3z5EF+kICzYogDBMRsKwSJAqdfd4kREZxykBSghH
         Lv5A==
X-Forwarded-Encrypted: i=1; AJvYcCUDwYFn51+6YFrqg3PNIn5DQYmH/AwXSCyARwBVBkI4MiQ0OusuThLuA8piPmB7CPZxahYrLzbqD9XF@vger.kernel.org
X-Gm-Message-State: AOJu0YwwfQEVPiPf8YNIdDSsQtjGNDW03hy5dO8QNpIdGejeGA1V5oFI
	/4G36PkT589v8uFfNzsIBNC+gN4YS/2M4T05p3T0fiJXgVQe/0No1ZhlAkTI/VZ2YlU=
X-Gm-Gg: ASbGncvtCDOHnDAliL+4Y7/1VNK3cDdK2oviOxp0Mou+T9gIr0OKbnnN19Iz/Kr+A13
	TRU+/SFn2S+IOWDEsraGYiaiPrZQgQskXlhaRlXRkV6abl5d+2ddEv4nvxzh4rijTkhb0iAvrDz
	Tzm7s8Q35cIFD2yXkTv0+A6yjjr0tysrWB1OJQ0MWjPTtWlm/vtT80RAvjQqKCPh9Xe9CxwGApH
	+xhfvMN1rubvwCGtOnhRv1Utx0jF9G4OSUqAcAtSvlkg3+5p92AMZMr++17o+RSZAqunSM5DkUr
	nCnNyY6KEEP7uKWKDGBb2rwvd0hzO3WPQSofWSYtXZ5fgKcyluM2YLS+4HlrMihCVFzofmJUrM3
	1qRFCY3BA3eMNVgQUfoVFGGZmDoXPICWrHQcfEYUkDQOPvOZ0iZeY3JH54XMm63OaXZRHVlkVhy
	T2FcKDR3d0+ASZd2cTkWdk0A==
X-Google-Smtp-Source: AGHT+IHf2Th1L2XYSlYRjMvRiaQwEPPv0rm4KoRAruPpObpOgoCaczpFuMinqPxSmwcgVKfFpOWD/w==
X-Received: by 2002:a05:6402:23c9:b0:634:c03f:c605 with SMTP id 4fb4d7f45d1cf-639d5c75dbfmr27308818a12.36.1760558282021;
        Wed, 15 Oct 2025 12:58:02 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a52b71443sm13887338a12.26.2025.10.15.12.58.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 12:58:01 -0700 (PDT)
Message-ID: <ca8189d0-a518-4716-8b28-e36571cbba5a@linaro.org>
Date: Wed, 15 Oct 2025 20:58:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs8300: Add support for camss
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251015130130.2790829-1-quic_vikramsa@quicinc.com>
 <20251015130130.2790829-3-quic_vikramsa@quicinc.com>
 <b4207e22-8d9c-4223-8b28-272d2650661f@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <b4207e22-8d9c-4223-8b28-272d2650661f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 15/10/2025 19:49, Vladimir Zapolskiy wrote:
>> +            power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
>> +            power-domain-names = "top";
> 
> 'power-domain-names' property is redundant, since there is just one 
> power domain.

Its a required property of the yaml.

---
bod

