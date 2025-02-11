Return-Path: <devicetree+bounces-145083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0BDA30504
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 08:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E19B16625F
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 07:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADC2E1EE7D8;
	Tue, 11 Feb 2025 07:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T5Uf6EcT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B521EE7A5
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 07:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739260678; cv=none; b=X7z7Q4o9CBzpfoTWdCTqmUOSwigQWgjIPnZYaJso15tY4WB5B/c+NclYCG5KL0njQAlwoCKoYbUgW9ntr4AZYWgpnuiLVkwbTlzUkMKK2cuaNGaxbG0o48wA2jFy6ykuCtXFKpwmp6enDNe+XvjZLMNy6WKRW5BACUKjfN7GraM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739260678; c=relaxed/simple;
	bh=Lcml8aJDBTGKpyIaX4HKBifxt+OxHZQ7x1WL3jIsN4I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P8YMag4Ko2TTKlU2p8p6xB4Es+qjdyIPIZ/j8n61oJHcyCuPKyF+ihPtjonFZ1SPK46wqlIbPDBFAhqoWu8tLUpSsFq082KnxaDy3Jm9Ak+BEegso9cKzQieHthN+xhVfxhCrolIAc90y+yrbSqLm6dThQ3HfRz2epKCincfQHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T5Uf6EcT; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-388cae9eb9fso2693325f8f.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 23:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739260675; x=1739865475; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=42HWzkx6qBwnjJ3MIpdxDc5gSzsxvujl0Un+nlip12k=;
        b=T5Uf6EcT1TJT4QXndH8AMbWxcmsnJtj6VbZvlpdrVjl0dmRYiA8zZQo84XbxrH5Qzz
         M28nK9mnMCmS1LFMsbGkILIwPPDM+kJM4c9umzZDENBzZ995R/S6sFSgWbCocAFWquGs
         /Z1it5qfvRUspfp621pWyByFvzNu4b0OJTD4o0pyqdfylFQLfjOPDUGhJk0x8WdsPYXE
         SVv3X1/Kes1JDlWIgQHA7BZOVBUZxA28ViljpbpOyd//RY8VtJrybP3ORJY1RdkByVOL
         vHcU4EyzQ9nkq36RXeUo9AUi/eAf7bQHeYt/NO2Ra7+Nfj9N120B7C/0wUB3hGD9ycez
         kwvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739260675; x=1739865475;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=42HWzkx6qBwnjJ3MIpdxDc5gSzsxvujl0Un+nlip12k=;
        b=ktAzOqcnFaSo4D52g4Ve/ZVTozQdm1NJ3ho257zRFsRINW0MysR2CWOiRCX2TlVYxF
         Pkrf4qOS1SrIfaXw1d1HkB9buBHrMW+7ygCfOkJlzD5NgRSeFBTOVzmKvj4zhLBVkYqI
         cz4rvVHk36VjWogp/Mw7e4ish5u3WIuV4H3DGdtAerpVOmCcD3i5v/wrt+clw3rW86Ys
         zDq4zNGkzAB8bF2R4DZk8hDfQi4D/Zv5+alVKvZgLCad7OIVOhDy+5E7wcOEwzws/LQY
         Iz2Hxk0YzsGLM4VnkKCvJsxB122gu0JrxWd7j1HYinsAKBuz0m0zDtLgQlKHwwfXuH+g
         fiHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzpWJD5Sx1nbFphKuXQDqrMMMSNnaRHdHWPv/2i1nsQb1P7iKBe8THiAtdDwyWRenYRSXLhlcumCGZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+QeseMYrPC1VxLWfBT0cRlxXCTheTC5DLKErlu9lfhD9qbGlv
	pEFyV4zdl+sLgD1DxfCIPHVB9bs9zc57dct93+1iTo18BMXDmY9Dtv80lkDR2Rw=
X-Gm-Gg: ASbGncuUfHH5HX2h091r5AcJ6HRxvNEMYfbFXngffaRb/V7zfjCGgCwv6TCc0KQr7fj
	zx0CH8oUcnYuRCPMgg4wUNuwknrZt9ACyx/qB75Q4ioKQUaI0lW8WO44ifMcB/eNR86TzuzS8Um
	rjlr90fHOsjXuL6S0aDMmkKIf1TYSrZyZwn8MaZd9Tsbkn5x/OxhYtJW+Icly1HU5ggiCvut2hK
	XFCDlskuG/OKPrTm2wjQBW9joKZBxJFNSX8cqyel1p0eO/ElzeMLrtQssQisFVXz+Hwx9twdEA8
	k3ng/mDhjoGxTOJ3TerL2mUAs+fDPv26OuBNn2jVepBkhjFr3RBhZU0=
X-Google-Smtp-Source: AGHT+IGi7+qfoBcLxF8pRER6rZ/Hk6AG5kphY1zYe0BKOmClMdXm6jxLj1GKveMoCx+zBMawGOCnIQ==
X-Received: by 2002:a5d:5f86:0:b0:38d:d43c:31ab with SMTP id ffacd0b85a97d-38dd43c33f9mr8339431f8f.7.1739260675170;
        Mon, 10 Feb 2025 23:57:55 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4394127afcbsm65781475e9.23.2025.02.10.23.57.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 23:57:54 -0800 (PST)
Message-ID: <5dc4bbb7-71b5-4389-9e99-099e1c93d1c9@linaro.org>
Date: Tue, 11 Feb 2025 08:57:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/6] Add TSENS support for IPQ5332, IPQ5424
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, amitk@kernel.org,
 thara.gopinath@gmail.com, rafael@kernel.org, rui.zhang@intel.com,
 lukasz.luba@arm.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250210120436.821684-1-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250210120436.821684-1-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/02/2025 13:04, Manikanta Mylavarapu wrote:
> IPQ5332 uses tsens v2.3.3 IP with combined interrupt for
> upper/lower and critical. IPQ5332 does not have RPM and
> kernel has to take care of TSENS enablement and calibration.
> 
> IPQ5424 also uses same tsens v2.3.3 IP and it's similar to IPQ5332
> (no RPM) hence add IPQ5424 support in this series itself.
> 
> This patch series adds the temperature sensor enablement,
> calibration support for IPQ5332 and IPQ5424.

Applied patch 1 & 2

Thanks

   -- D.

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

