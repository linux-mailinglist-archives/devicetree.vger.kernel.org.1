Return-Path: <devicetree+bounces-197249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0DCB0899B
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 11:46:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1CD41893D7F
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 09:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66BC3205E25;
	Thu, 17 Jul 2025 09:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bJJ64sE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9670F1547CC
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 09:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752745557; cv=none; b=rmlxk3LkhN3/ukf8BsGteXrj3hAc6JZFQEtqBwkdTBpQd/HcSz5A01cCjD2RyWPvGwAEytSfNUXaqe/t1cjjT24wXgtXfZuoCyti/TF79zMydCS0gz4HG99voMRuzwYzRJgXkbXD5bOVD88EdE2EJfLiKsL7Vdh7T9yGFaFG/RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752745557; c=relaxed/simple;
	bh=icvA0K1RPNBcWvfLGCmVKRBjbcIiYHmiy0ARHjx5WsA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WPsIGulMQxTgub693A4ZUnvqrf8gJZKGCy4v7MuW8ULjOkvXipShyC4r0H2h3pJxwbgg5YlxcqvZN0wtqWO553td6Iiz4EADH7gpuvxWKq9xdBLyQ+ywne/7B3aopm8+cSa+4w4p16A8y1uHHSYT6x/gE2Wfau5hRuSDZq46z0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bJJ64sE7; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a4fb9c2436so430442f8f.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 02:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752745554; x=1753350354; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4UUb+eCCVRH9h09fVkojxVw36lrz4Ml2/6BK0w+a3Nk=;
        b=bJJ64sE7ElzZf0LGDF+KQU5J3rGT2qjQAZdFWW9zG8CoP4+aKDavgcMdVyKYlV56eR
         Zco96hfKijdjLHY4z65V0XgOZbN2/1NQ1hn9ajJchvY27cMY8Kr2gTRRUUc10dquiwWH
         EIy529hfKMPAeAy9L9i7GLmU2R7MSAqkMV0pmRm/SV43lL14jxoYBb4O2IMgHDciSya7
         +75L3aQS9nuyVIdF9rz/LHQ3+E631Lg4QloQfF0BHD+djy2Yrm4ATaP44c5jFb4rDMLY
         wYMxHDpCZCOpInAJVrzfMN5ru10QWz/H9mGaPUiyouvTiTgF3B8QHIDW161yH7mARoQZ
         XxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752745554; x=1753350354;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4UUb+eCCVRH9h09fVkojxVw36lrz4Ml2/6BK0w+a3Nk=;
        b=SPDyYr7NDEB9DjFYmhMP/eRt/HXBi2jVZ/XX6NkuK+RiY0sTLPLKIEMo2iv9oqmOfJ
         svWsmInn7z0fTIn13tXlsMHYqv4Bq29ViqRlIpQFkHyFSXNaXOYKRjgz0LaVhZn15rra
         7fM9Yih9IsbOIWCiU30bATCb6VzLm46k12sUZwxKi1m2qnxtHN/3H74f/+/m5xFqGaBE
         5ZQSSr1zqS3/5SQteDMdPKg7jG7fAd+GvMqH3C2uP9j+sfjiK9SGSmhXWb3W+CQVD6Vs
         30XdL0pspDAQb/nSRb743WPE3zaRlcgdTVOlzDKtGnJyZ7ZDctcJqxE5oZCYzC33ailz
         h6Uw==
X-Forwarded-Encrypted: i=1; AJvYcCVElRLm5CwYh87jShMhqVyy6bVNuT4UxMvGCrcNSVFESk+rDk+9+0XT99vp13VJW2x12BGv5Yy11W3Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxUywLZyRRn/GBtcATAv//0QznopjF14hbKr+OzPNaZXqjyoBaE
	rrzfZ1jn9R2p0xX37KWRO6TkT9s37Tz0iiuvSDtG8Dn2//KI2yIraAfJeelEYws40DE=
X-Gm-Gg: ASbGncsJlS+ppgPlx4OQ/W07ljv0SfKD9F9O3IBjmeCB05GKiWJNRn80oi+ISK79+sm
	hkaL4VorbfWFBQPmBqyrYMHAAjmZEix1eLPIz1BkpDNslsCEC7exgXOPYoyrlz5VN+7AIffm24y
	e5O9mmUe6q5SIjKMIyl2WW9HCdfIYISm6DIb86BnS8Zd9W30sragMwNpJZDRDBXKvmHLsWeJX/s
	gBqhWCh3xq9/LA4ej4KFOpWwNldlJ+YpCRUzOMjRtIKUdO1/sWeEAYKSQPnI3rAfv7xZ51t+1HJ
	KsGIePJotNiJLxR+PbKMIvg3hqM/Sm1EU6yYT5YbI8UK30gUsxpHrWdARRHnXtjIwBLSn7+4u9I
	7ruzAqimgQ53uvhvGigAtbjYK9UdjsTUVhZsPA6iGoQbPgocD3OMTYaL6i63kv18=
X-Google-Smtp-Source: AGHT+IHP2SvnCCzI3J6cTXMGXPD2s7F8PxV92aFEphVYbHWG+syxiVGQMy54GQ/w+kIwvVDzdKb1dw==
X-Received: by 2002:a05:6000:4a06:b0:3a4:dc32:6cbc with SMTP id ffacd0b85a97d-3b60dd53fe5mr5975700f8f.20.1752745553877;
        Thu, 17 Jul 2025 02:45:53 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc1de0sm20112044f8f.24.2025.07.17.02.45.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 02:45:53 -0700 (PDT)
Message-ID: <00be65fd-2a25-4b6d-8fb8-7a40f8ca846c@linaro.org>
Date: Thu, 17 Jul 2025 10:45:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 7/7] arm64: dts: qcom: qrb2210-rb1: Enable Venus
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
 quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com, krzk+dt@kernel.org,
 konradybcio@kernel.org, mchehab@kernel.org, andersson@kernel.org,
 conor+dt@kernel.org, amit.kucheria@oss.qualcomm.com
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
 <20250715204749.2189875-8-jorge.ramirez@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250715204749.2189875-8-jorge.ramirez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/07/2025 21:47, Jorge Ramirez-Ortiz wrote:
> Enable Venus on the QRB2210 RB1 development board.
> 
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> index b2e0fc5501c1..8ccc217d2a80 100644
> --- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> @@ -711,3 +711,7 @@ &wifi {
>   &xo_board {
>   	clock-frequency = <38400000>;
>   };
> +
> +&venus {
> +	status = "okay";
> +};


goes here

&venus {
	status = "okay";
};

&wifi {
         vdd-0.8-cx-mx-supply = <&pm4125_l7>;
         vdd-1.8-xo-supply = <&pm4125_l13>;
         vdd-1.3-rfa-supply = <&pm4125_l10>;
         vdd-3.3-ch0-supply = <&pm4125_l22>;
         qcom,calibration-variant = "Thundercomm_RB1";
         firmware-name = "qcm2290";
         status = "okay";
};

&xo_board {
         clock-frequency = <38400000>;
};

---
bod

