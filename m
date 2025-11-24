Return-Path: <devicetree+bounces-241790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2638BC82BBC
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 23:47:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B623A3AB850
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 22:47:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E807926F46E;
	Mon, 24 Nov 2025 22:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j6sLIVRM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616E225392D
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 22:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764024472; cv=none; b=NVhuymO034XT2I3QWDSuPZD70HyeULz5FQe6J0+IIvHRCfEMvGOBQ8gb9deN8laCSLQxYp6yCWVZ7eRlWe3QvwR3n7cZrFXgu79xHWo3c1CKmKqfTDJhPbWw/tO1d2rZwNjO8cfi602B0e+rn5QTG+ttfFwtpxNkzEeXHWLBDJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764024472; c=relaxed/simple;
	bh=aA1YUuC43wocVJj+6NswUWK8Q5/HyZu5I5uveCK5vyU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hU76Z6OLnMCC7bmR/zXPpgCrNpeLwP+cqR1cUT3TgW4uy7rJfHAfNvtv59DToP/HTMiI/DBzexjgfQr4YbtZfIdpAleUWr6HBu8BuRUtjvIj+SnpWuxIDHSWCvfy1W6dFSdc4FEL35JhVuAb1/xDug54LRnStP1OyU+QXqIhRtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j6sLIVRM; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7b80fed1505so5590341b3a.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 14:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764024471; x=1764629271; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6e3N2N50lDJoWd8HR2Vtb36h0pURk4NZSWfVy+aqbs0=;
        b=j6sLIVRMwVa9MaNIEl9vbhIoJHK8k48Vu/GvFQjnyJG0AwrcFlXYGhnfT8YhSQX4YS
         bCI21BE1Z2vmkm3dlGIrILxwpm6b3fIf4OYs9kKQl0WAz5iOFPxrzf+kijjZyn3kcErU
         abnF7E3uZEiXdv7eIetcrX32wyv+HM6Sd9zXc9ZGqq+UUdTClpv9aGeO3AsPzjW5bjKh
         J+UpzlB93JWYAvbF86L/rGolOyehdNvUKGNIIFVqk22weB3upQTkukE48BlY+msHfbDb
         65umKlJyhlsG7WEwDgvVnBRbA/kGCiN6UurfuMD9bNZrX5LW8ecHkKpbbgHSeGuuwQhc
         ZASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764024471; x=1764629271;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6e3N2N50lDJoWd8HR2Vtb36h0pURk4NZSWfVy+aqbs0=;
        b=MjNPcs0DwgLw3b/gqo3CUgIDhs/Ug1ZrOfieDypT5lKfqEBykHfdsWgO5Bqum3n/3Z
         8xCclr4rNAu6gilb++5HujGUED2yKyWmdnRF10T8U84QKqtEyT9/nokhcyPnaFK2HAnf
         R+w0gvANOtWRo1SL1PIMMuwqCC66T4bxrOGdP1GS6JBRgpZWLpI8Wk9B6z3ADJsq/OTa
         mt7effpFaKoqPnrGGCqJScRgU+sfmbdC/XDiOlugs0pA25T8NgbCGApms+uTKvZMrE9V
         rGhC2zo/tSGPROoX5DZodgQ4f/Twg9PzPyxlr7Y7G8wdsPXhZkEA34F5/Lb9f9lGM1dd
         oOsQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3eVG9NxNRqpNtGvtCD1cV97RqzsvGD89DLxh8w9pEU2AUAy46o5Yb7UZ1pc+c49/ZbMzepmcTb+w2@vger.kernel.org
X-Gm-Message-State: AOJu0YxzAcFShlFTNxX6EOlw0vKLM1mhNXR6SXVvM43sPlEXEI2K/O+x
	zG20G/QrVCaVC0n4byMC1ksyutcdpW92/4le+7Cm/RBtLQGeLGos4qCd
X-Gm-Gg: ASbGncvVNdrTJ2bF5+IlV3mXJ277YiCKHEOLnZZ+1eNtkYUo/bihaDRebbi/vbZ9WYM
	tCQ98AS1S0TevLWYfuXdPwI/BDfmnEarabnZc0lro39x6naz9UTuwPR6a03udQ9g96EcLWwTAQv
	cifzqCuFr1jgx0k/JLiYyc4+cZXLKmEe5lc9w/g91sCWp952o5174iYLulIO0a3zxLXT3qgE2Q2
	ZTEiL0s65SHKmNftlONTKpLjlDXP1F80XY00H6zYC/2qYbZD7FXmKakJ14zZH8xiJzbOT2xNIOi
	19MwWbvBgRvQI8dD3hRdK570P6sqABWiTAYN2zyrOJpvY0yFdJuzX2v0TW3S77HLoAh9vRiandx
	59M7Zf4JlkSuDeGjPE9A3/MuyFSwRrx4z2io+KVsHUSYZyw9QGFVT7bxlrTSjW6e22BwGmz4P11
	2byOz3R6uR54j8X1+8rCmt7x0aUfk+LInpWrrU5seFU4YyBTwUhz6lEE13w29vP3fl
X-Google-Smtp-Source: AGHT+IGH6IqlruzANVtCT25Q+8rULkZQZIvff4WTLqlZgY+442DpZenW6IpY+Xhp3eFvitb70kqLTA==
X-Received: by 2002:a05:7022:2390:b0:11b:2de8:6271 with SMTP id a92af1059eb24-11c9d8635bcmr10491404c88.39.1764024470297;
        Mon, 24 Nov 2025 14:47:50 -0800 (PST)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11cc631c236sm1964112c88.7.2025.11.24.14.47.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 14:47:49 -0800 (PST)
Message-ID: <c68cb4ca-61b4-419a-a4b0-b4d9f77cee4c@gmail.com>
Date: Mon, 24 Nov 2025 14:47:49 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] ARM: dts: qcom: msm8960: expressatt: Add
 Accelerometer
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251122-expressatt_nfc_accel_magn_light-v3-0-78d198632360@gmail.com>
 <20251122-expressatt_nfc_accel_magn_light-v3-5-78d198632360@gmail.com>
 <a6b824d8-9299-475f-bedf-c75d0912e538@oss.qualcomm.com>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <a6b824d8-9299-475f-bedf-c75d0912e538@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11/24/25 02:31, Konrad Dybcio wrote:
> On 11/23/25 7:44 AM, Rudraksha Gupta via B4 Relay wrote:
>> From: Rudraksha Gupta <guptarud@gmail.com>
>>
>> Add the Bosch Accelerometer.
>>
>> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
>> ---
> I'm assuming this essentially means "the default settings (no
> mount matrix) work out fine"

I initially thought so... but I recently discovered monitor-sensor:

https://gitlab.freedesktop.org/hadess/iio-sensor-proxy


And it turns out that my testing is wrong. Will send another revision 
with the updated mount-matrix and fixing a driver nullptr bug.


>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad

