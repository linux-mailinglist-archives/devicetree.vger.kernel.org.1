Return-Path: <devicetree+bounces-84236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD1E92B86D
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 13:37:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F7EA1C22429
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 11:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D398B1586D0;
	Tue,  9 Jul 2024 11:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="czzGHMBw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201F3157485
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 11:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720525021; cv=none; b=cJjuAosyGPyBsgnqRyqJz2Za5ruw8sdbtzGo23BiAbfXLeHchcIzymijtyapIoipkfS7HXevIMq5QyQVPLaNszVzChk9DkD8No/6V7vVY1UKiBJjv/TeyVDwYS6TYzD/QOepFyYTXzQawQ1WKLC28egL7JeGTVBJ1XarrxxNxLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720525021; c=relaxed/simple;
	bh=ZtNRV4Jm6sPuWpuKQi5CEZcuR4lAkjSRolFdjhONrG0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DauWST2guCPEWQfzxDbewD0g8NoO4mRWE2OUN+AYcHfUfpv2bLogE88ugI0HMLw9y5RBUaL+djIsKVQ0bTEFMy1hzD/um6f0L7JAlqoT96GGh8c1IsfRDdeh3KGf9Oqe1W+hrYwMJCrSv6Vzz3iLrUaIUgBMRx4Z6S57uTabT7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=czzGHMBw; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-58d24201934so7900074a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 04:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720525017; x=1721129817; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rgLuI4zwg8PxbQKXHmtny45se35KRkb0hnsunMD3BTs=;
        b=czzGHMBwWjuaOF1ty8wTai1ph/sUDGef6bACSO3A/SfNG5pymKrwwKtZ49NsJ4HUQD
         UG74jhSVMmyika83JTs/uSz3VIl2bZLRKDvflgruEVMyIegew7e6E+YZ3T+svGgGC3hQ
         q67CluVdkcOzf6IncFJfK2kGUWxAwhRG+pVgmBz8ULS6vuzzq5evUsOuMP5LsziYNi5q
         o5WKUrJPSMkRfeuig4D8/c3O7yFAth8lLtcbnun4lcKNnta4IJiawKCL4hdK79mMjB+T
         PcIIIC92p6WSgCjI5YAYxp84GhG5LL6Qr4z38QDX+aKqil534VEAlp471KXYGOfW//SM
         nj/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720525017; x=1721129817;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rgLuI4zwg8PxbQKXHmtny45se35KRkb0hnsunMD3BTs=;
        b=OeuPIWGvDJ7aoi1WPiqg8L/UdILaTfPxGFcVsSZuOj0R0RIDHLtJHUKhI11vjYZmUO
         iurw8gsSGau0wVh6aJXTNsJGW7S513H/Debm8u2xPBCsVvyvrPe9Qdb1aCPXcsQpIfdI
         NTKpPy0nZHwlWVMb2BvJ6Fzl3DWDMXr2wYabEYSDjH+gKvO8gcUUak03yqDtJHrk+fp2
         1BgukwWNKFTTuAoAzlkC++KBm05oO6d63phq2wb1MHrccxf3dQxfA47WBdHsLJdg6t9L
         gE0icW29DKWA3Obir0iy5grGFpgK6Ev5O+feIC+/Ml4jM5lMuTwmJF/HR5gzhG/chXwa
         CInA==
X-Forwarded-Encrypted: i=1; AJvYcCWngQ9eLmE0zT5McmSNLRxo4qY9ONcObhixlhRd83P6/WDTD2Od/w7rie9h6SLuZePsB00qP6E5pin9wkKyH09EJ+UdosFGGwmPvw==
X-Gm-Message-State: AOJu0YxX4Fs0K1NZbHtvEAKVk5+hahrx/ufDJyV4Ta561oXiAs6H6oKF
	B6W5NlI26wPmYGQxEIAD7biwsuBC8qA8Cp92uuQEa17v1wcBUh3K6s29Yiz5uvA=
X-Google-Smtp-Source: AGHT+IE6gJHtpA9KuKJI2l0zj/TFNL7ZuQMOTPOeH2TreABUUNa4U1aLool/MPDIRPHLPPPCuG3FgA==
X-Received: by 2002:a05:6402:5157:b0:57d:6bb:d264 with SMTP id 4fb4d7f45d1cf-594dc4ae2bamr1597947a12.1.1720525017302;
        Tue, 09 Jul 2024 04:36:57 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-594bb96062bsm970232a12.12.2024.07.09.04.36.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 04:36:56 -0700 (PDT)
Message-ID: <0a1a7b1e-1088-483d-894c-19ab4dbb9ce1@linaro.org>
Date: Tue, 9 Jul 2024 13:36:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17] arm64: dts: qcom: sa8295p-adp: Enable the four USB
 Type-A ports
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Johan Hovold <johan@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, quic_ppratap@quicinc.com, quic_jackp@quicinc.com
References: <20240707085624.3411961-1-quic_kriskura@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240707085624.3411961-1-quic_kriskura@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7.07.2024 10:56 AM, Krishna Kurapati wrote:
> The multiport USB controller in the SA8295P ADP is connected to four USB
> Type-A ports. VBUS for each of these ports are provided by a
> TPS2559QWDRCTQ1 regulator, controlled from PMIC GPIOs.
> 
> Add the necessary regulators and GPIO configuration to power these.
> 
> It seems reasonable that these regulators should be referenced as vbus
> supply of usb-a-connector nodes and controlled by e.g. dwc3, but as this
> is not supported in Linux today the regulators are left always-on for
> now.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---

Looks reasonable, thanks for taking this all the way through the review
process!


Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

