Return-Path: <devicetree+bounces-201853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E459B1B030
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 10:30:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D96EF3BB57D
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 08:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CE73253F3A;
	Tue,  5 Aug 2025 08:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IZCCYivz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D23253F05
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 08:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754382600; cv=none; b=PGjVPqXWMzpEzI3TJMvEcCMfKLIdH0+cbjAukeF2GRQadlKLmzek+OHfeO+DedLiu4KOyl28Nt+kTqU1P7zkkTpD36jeHF/doy6UezX+EvrNY0ty5AoTkZlY6IO6MDd5uVOhzzzb6Kq2pCBww+mg9uta3X5RXNrJ//DZff798QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754382600; c=relaxed/simple;
	bh=vwzQhfg01r+binZbgcr7a/QRd8jw9d+nqmk4LD/Ao7g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nnGDW3swVfkRIjJyVDf5Kof6NCZOIGlRiRXWiBvYPsqTs+y2pscoKfPJQhSBqelrd0zpte5Vwf+fs2fEWkWXLlpJLAUGDkoq6+yIRdoOiF10UOJYUR9EAtdKlqsCCvBd4HTN3bShx0BTu9RHpLAcY4HRFG0C/cDZQPHbcOApvsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IZCCYivz; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a6cd1a6fecso4482614f8f.3
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 01:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754382597; x=1754987397; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LyLVSQpb0tLUDxNzw0tajIN36UwJANGlESlbNcPlm/w=;
        b=IZCCYivz1UdBYRbyqXOFsSsdBD+OVewZ2mq5hBYhG3Ysk4YBNTV8sTXheoEQ7WccX9
         0p1QNCnqkUZ1awpVfCwbDdmD7Gx1MHFIQ6rKdeZlZy/JsiZL4HMFpV+GKt4atwHu+hwj
         tHtdzZ3pFFJ7rrBGj4AkirlShDMOaOWqQmUzv1vvZPzmx+2zowDn8Gtziu5dSwIql7DF
         EYTg/5E1vZnYkFv/KRWjoukykaO/P1H6jOwG6U46ubKnXR33QCUVeYEBOkUe2/QD4ZsO
         V1BfJK/0HXhtaS8h/X+GophK3v23cg9GNetIO8xAc65kI+YcSf/gKhRtwwFxUYxKm7Aq
         ra4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754382597; x=1754987397;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LyLVSQpb0tLUDxNzw0tajIN36UwJANGlESlbNcPlm/w=;
        b=Lv2TTog74zQ+g4GVDIVBMWl0HcUXsUYPFUTyWP2rwy+n0iMtY6PQ1hwefnjv64ySYM
         M/lK72+emxoOa24aLbnzyzJsIi/u5Fo1WAonPAXedOIvfTIXhECVCvqe2loO+mNcEhGT
         U6pp+oTUSW3z7iTAQG7B+HQCtYjZb80brKkp11DssLsPl0TAU0s/t2hiiyJaf7VmWb4f
         uxNlG1TU5wa4/ERUnT1LZNWDcn0kpTYTF0tsFU9c5WhPEaKNYzha4k51DAXXZcfZn+2+
         4ak1S/xIDlliNAlSZVw7liHVWrnZnZPOjYvIQmR2cR7vtQVK+kL8Vpkp79nDc3za07KF
         juDg==
X-Forwarded-Encrypted: i=1; AJvYcCV4DNTOa0GaXOnrQpxmKfPfhHCKAKIRmg7fXoyClJmlXQaiP5nWRBlARO3+yxChgE0RyZ13c+68SkxM@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd/y7HmwZRTRlwESZcRdfJTQz38APb6Cnf4j7XGqDoUmG9muzw
	gk7brcj2nXOHZMoaNz8+yXhVZriIjluNboayYSBmKbGppay0t6HFR061IsQxwpcjZqY=
X-Gm-Gg: ASbGncvj0KAYkk8O0uAnWxjCV1iexpkCuzxOwA/qLp6Hr2++RYqk+Akkov/KmT8TMKw
	UZLD8a2tK8DmpxZm1Ij7qkYP/ZMrflTvz6qS4aGBhiv9ueiacEWcViN00KaiVjupz9ORViS04aj
	8JfB++pFVrkJ0TzZnIFScaemdCIDWnFZjGXfBMyfdNMc+EK1fnoj2yWrgzyyo/pZJjipJFHV+pa
	8n2nCcgyFU7hbyI6J2rBkSWwxsprXGmNh+UPi2RfSFtTD5eh1J1eKLUTaVJ0NtI3iqJjnSHBA7i
	wLtZaPhwltSy20U4syk42T4Vgks5hBM7PBpxigg7SRkHxov2ycMwjCEhnIVlilvdcqzy0iIYEmi
	+GGKi1YSG5KlNRO/srfdRbdBNCxM5NJ5Z0P9pkBifj9QMjVUI+OZj94D06nGQyExckcbvUZ2Ceg
	==
X-Google-Smtp-Source: AGHT+IHxXn2yLf/O2bw0wSVQuR2yrp3qNWp/lca6o04wzOt6BocP+pKYn0NEJrwyp2gbNHx+3bV2CA==
X-Received: by 2002:a5d:5c84:0:b0:3b8:d79a:6a7d with SMTP id ffacd0b85a97d-3b8d947167fmr8598420f8f.13.1754382597141;
        Tue, 05 Aug 2025 01:29:57 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4595cffdb28sm98597745e9.32.2025.08.05.01.29.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 01:29:56 -0700 (PDT)
Message-ID: <a5c292ec-e59b-49f0-9681-a990128cbdfe@linaro.org>
Date: Tue, 5 Aug 2025 09:29:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/7] media: venus: Define minimum valid firmware
 version
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
 quic_dikshita@quicinc.com, quic_vgarodia@quicinc.com,
 konradybcio@kernel.org, krzk+dt@kernel.org
Cc: mchehab@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-3-jorge.ramirez@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250805064430.782201-3-jorge.ramirez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/08/2025 07:44, Jorge Ramirez-Ortiz wrote:
> +	if (!is_fw_rev_or_newer(core, ver->major, ver->minor, ver->rev))
> +		return -EINVAL;
> +

This is the sort of error case that deserves a kernel log.

dev_err(dev, "Firmware version %d.%d < minimum version %d.%d\n, etc);

If I were to try booting venus with an old/unsupported I wouldn't know 
why the probe was failing.

---
bod

