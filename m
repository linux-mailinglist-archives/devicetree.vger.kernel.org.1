Return-Path: <devicetree+bounces-48584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6E9872924
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 22:09:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73FA8285327
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 21:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CFFD12AAE2;
	Tue,  5 Mar 2024 21:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zV7ArLKA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA7BE5491F
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 21:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709672963; cv=none; b=CTS789+9r6dKqJdMZvu/lF7Qp7YA1pBIB0/0JwVW7lsuzGpNa8XdjAnq/SRVIsI8oNu0/ffHAG7X0WOmnXRJJkCkyJRdZ5l3n1kFxO91+9a8p2XHd/GUvQCwYBso1wF3W+ByrLlH9D/TPpFIpJrBg7mAQ+0QwF5K9VZLR5Y84HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709672963; c=relaxed/simple;
	bh=jJZTR3ZQLE6TxtB1On0qTLLClIpP1eKZkTdZYogVliU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=SNTJHwvfcCWZqVKxiGxEvSKDXW4RW5SKAqHx1RV9u0QV65hN6a1NTKwqyYLqACNGU3M04/ZyLjRIMUhKNvNokuGGynKh58WBoGyy4nwV8WdKVRW4ZQ+epbrkhDPcP05K4obrKq2vZLG2UZ/Li3FW4aMaTYmPJb00x/Rw9ZHhWfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zV7ArLKA; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-513181719easo4351682e87.3
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 13:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709672960; x=1710277760; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jJZTR3ZQLE6TxtB1On0qTLLClIpP1eKZkTdZYogVliU=;
        b=zV7ArLKAoCh5MB0KLgHepIpJFsdn8mIHnoOQ40I7AzejVd4ym49pD9XQ7Fc3mHqGOS
         +1wzK+OqvCGQiioY4RvV9Je5IZkKD2dxV6F+8RPKrE/PiEX4fad5OZ/OBAaL0KW6e/Ob
         o5xXo4lRrdNc5vEvXYK/242jcqiM3A3C6pK/mItwibqcy/L1OcCgtLU/pBUKiXKLGxdB
         KMqoE7Mwo+Gl2mvKuVz1J2no/McpmM+Y70BvqBtJnjfOKgFCOSJaQfybA7XbZyT8PdFD
         /xy0/3/6C9H7NzVReln8j//BTeNXjfp32pXRsetvZ+9Sfz+9AN/SWfLwvTJqe8yeTi0a
         3Kdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709672960; x=1710277760;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jJZTR3ZQLE6TxtB1On0qTLLClIpP1eKZkTdZYogVliU=;
        b=uTgU16KxWW9uAw5txcXCTCU1QIlfnriLsvs1xYbCmLJCme5N7rHQ7T/65Ln2CkmCtn
         GAr9+pf+6N9Uyr4XkDXbj0C1KlaPW6Qd5eJ4H3WD8j+JfbtAJUDL9r6jZfr7XceXmRpb
         k9tI3Ch6OxEDiR+siAQkywccAJkbaKav/fwqcjNHSzwIqxaGf8aVjZVMsQviCaexpn4U
         IvURPX2eAD6PcWmAt4Zgu+8xmPuV2ZPZXsPKJod08kWEYVjwVtQzyVbrZP98RkUIL8NE
         Whp632//ggWLh6kOyhsC27Towg9TlrymHiVbERdP9LRBEYSN/lxRo7l6w8m6RMGorRPR
         BhOg==
X-Forwarded-Encrypted: i=1; AJvYcCWE4Pl0h0L7L5KGFLfRS67N54ZyaM51gZE/D7jdbyx/hJqlNt/aTw4hn/2SsKKaxwbzVG1rqzszib4qQrn4aL7C7kl1xo832KsBiA==
X-Gm-Message-State: AOJu0Ywu+aRRKL+DunA2+h8ERNU1iT7oENZg8tp1Qf+Z6UWWULocDtQC
	0CSoCvet0ErG/mG66dZrp3pTsPhtCZIP/HPrpwk59oEkTsjJbJPZXCM0C5xOLsk=
X-Google-Smtp-Source: AGHT+IE8CGigUxA1HCYfZiHbYBgeAldb7dQWGONv4ACnT65GTfW31N+bM8GawaFuCe4uzmmOQ4YDwg==
X-Received: by 2002:a19:f803:0:b0:513:3fa4:3f22 with SMTP id a3-20020a19f803000000b005133fa43f22mr2145235lff.35.1709672959846;
        Tue, 05 Mar 2024 13:09:19 -0800 (PST)
Received: from [172.30.204.154] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id g13-20020ac24d8d000000b0051316ccc5besm2300433lfe.269.2024.03.05.13.09.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 13:09:19 -0800 (PST)
Message-ID: <1697b03c-56ab-4e8b-a268-f9ceeed91c31@linaro.org>
Date: Tue, 5 Mar 2024 22:09:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 0/3] Enable firmware-managed USB resources on Qcom targets
Content-Language: en-US
To: Sriram Dash <quic_sriramd@quicinc.com>, andersson@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, quic_wcheng@quicinc.com,
 Thinh.Nguyen@synopsys.com, p.zabel@pengutronix.de,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, quic_psodagud@quicinc.com,
 quic_nkela@quicinc.com, manivannan.sadhasivam@linaro.org,
 ulf.hansson@linaro.org, sudeep.holla@arm.com, quic_shazhuss@quicinc.com
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/5/24 17:57, Sriram Dash wrote:
> Some target systems allow multiple resources to be managed by firmware.
> On these targets, tasks related to clocks, regulators, resets, and
> interconnects can be delegated to the firmware, while the remaining
> responsibilities are handled by Linux.

Aside from the comments you already got from others, please change
[RFC m/n] to [PATCH RFC m/n] so that your series isn't filtered out
out maintainers' inboxes due to the missing PATCH keyword..

Konrad

