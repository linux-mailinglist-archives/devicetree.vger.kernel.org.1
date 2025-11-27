Return-Path: <devicetree+bounces-242785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDD1C8EC00
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 15:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C5F54349946
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E19E23112D5;
	Thu, 27 Nov 2025 14:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nBkcTbUP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182AB331A41
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 14:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764253672; cv=none; b=EP1Jd+RXNiXonZUz7lwl//ImTpZCsy5CLAtvZrzyBMcyhXujJOTvbSx6jc7taDAwU8/t20FfWYx6MBowy/H5owDERKXhNcc5rz7+cgjxc6Nie6W3oOg7W+3lo1zq1okic3Q+PaLSXaeRWl9401CugwwZTGVXrtElG8Az+il0x04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764253672; c=relaxed/simple;
	bh=VsxF4F1+V+wVbP+TVp2TXSyzJ/baeBpnP51twMV82pM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pT3wckVmExVxSc7q/W09gY6ewUWkpffx2bqcJg/36nyX1CTcPh1k9LmGlOfltr/NNEVTg9flxsDrHhz6lL4e0bHGAVPbqBIYGoi74svxbUfHbw+OnH9zuztzJaQCtiWREqZu+ag8+uuHJpBmwNgbEi/qLKoiK0W9Z8ZRJLjs6TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nBkcTbUP; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-37a533a9f26so374001fa.2
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 06:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764253669; x=1764858469; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Izu2FHuEoh3gQsex6rJEdJvdieWvoBfp7SLE5TF7nSY=;
        b=nBkcTbUP2ihqDxq4MvLepAdnt/JT0GCIn7YLHvJ/AW0uGqhshu+FT0OWnlxwkXQmGB
         afubwL1lwkjQ2CtJ3gid+B7Lf8sngQQfsWdAH9GNH9/8vVKYmCQHZoE6dHkXbdFXt1si
         pVrrMm0vrK6QaB21bzHGE/Pzji9y3yuLX3afOTzx+ZQ5HrShSG9LYolNzYzyOApfdb71
         y99iCZNYBP+qQCvl50mk+WMJBDmM2aG79Mw2y935/G5t2dOtzVk3bGZGpA8AmRel1f3y
         tD2ZR6K5rq1m0vsPjfNodeE/47Fka93spxNLlv33NCpN2r/4k7uq5GezqwvMc+t7yAvR
         X91w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764253669; x=1764858469;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Izu2FHuEoh3gQsex6rJEdJvdieWvoBfp7SLE5TF7nSY=;
        b=pSGssLb/sPvX3Jq0MHmCWe4PCxr1ZooPzT5b4EdxH8sBm05mbvQdYdykn9e3S2rH5v
         d+gJOArPKo4zaHxWliVIDwYca86v9uAcerdHESc9YogcG3Wd9Xy3MB1ln0zx9H7W2+/S
         ognmN5mQu74SEi3VyNARthET85M9hfDrhylneU6NQ0/E3MPkMqmIUCOtvpneVB8lMocJ
         5seoYWXCnXE8mgg3Hy8fdXUAM+ijy6sdn7O3voEndOSzGRMyIKUQn6ELhU6FuuqMOG2B
         MOZQL/G/ohm7YjCHucgtkqrtXvlaq5/qoIbiwvUoV+iUzMRErPWz+JHQ8+jAyjiGmPzo
         Swxg==
X-Forwarded-Encrypted: i=1; AJvYcCXs466o0bGToYamOdGSxGqqCcSDaXhpd3VfKvAKQQ7ZPuWgDMWIwi3uAjzNhT97BI8VzDdg48/dhebP@vger.kernel.org
X-Gm-Message-State: AOJu0YycT3ahhITk1t8KK8HAk+eT/R3Fk6AtWorKKXsRhnLS0Fn98/Kq
	cRHcXSpjVuv0QajyOk+1r9v4ks0omPtKkt78IVOtM7rZnsmaYFQJgwq0AuSeVLqzYL8=
X-Gm-Gg: ASbGncvMkYWvftbhYaSqgIdHEygeeTg2/loDuDgOZUtEEZImGfOuJkZ3k+scGeqSHbh
	PNQfkxjLkUXIpS/tzR+QTiICk3rQbj5+P55B94/HK7yJSBB/PZWiG9ybjfUlrAEyEBK9r+b9tfH
	PNtfXPiJe3QDnTaaIrm64XnmU4gpMgv4Awa0VIwULGjdNjtKe2w1QwcpySxuDosTkKvWrFvihnM
	se4GRI/CWfYb/wC3b6Cnq4hwFHhS0wyOHOMzYTclTbcloLB+orB2zyAF548t6Xxz0468r8epdxj
	iyPlYHpOjc5Vr6obwhCE2kdzOYo2FlJMv8DM0YimKCbjmqe0ky7GR11BmOvrU5GmsE1+i9zFJqP
	bYAkl6SUvQ/KfoZPZbF86WraNSfqYCcS9C9xHABYy0iQly/YfccBQc9z1MuyXeRdZrB27AQO/Qn
	Ol9hqvk6pQysYeiYsfxqaHP4QNLYiQ8ifyYbfwNCvxzLR/gCPXjLd6XvF1keIX5+pTmz4swBef8
	GNl
X-Google-Smtp-Source: AGHT+IFt6vU27xKv/0kuU+d2Qo4LF76uFAOV+qiVtW1RJs/5m+HZGfbtFg/MAFAH3yfFrmgDtBZ9LQ==
X-Received: by 2002:a05:651c:3244:b0:37b:926d:5c06 with SMTP id 38308e7fff4ca-37cdc46f662mr32899781fa.8.1764253669119;
        Thu, 27 Nov 2025 06:27:49 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d236e5ec1sm4034821fa.16.2025.11.27.06.27.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 06:27:48 -0800 (PST)
Message-ID: <d3cccdf4-8c50-4b6c-a29b-5b1388ce2249@linaro.org>
Date: Thu, 27 Nov 2025 16:27:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550: Enable UHS-I SDR50 and
 SDR104 SD card modes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
 <20251126012043.3764567-3-vladimir.zapolskiy@linaro.org>
 <b07b88ed-83a3-46d6-8b97-e8661e2cfaa3@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <b07b88ed-83a3-46d6-8b97-e8661e2cfaa3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Konrad.

On 11/27/25 15:40, Konrad Dybcio wrote:
> On 11/26/25 2:20 AM, Vladimir Zapolskiy wrote:
>> The restriction on UHS-I speed modes was added to all SM8550 platforms
>> by copying it from SM8450 dtsi file, and due to the overclocking of SD
>> cards it was an actually reproducible problem. Since the latter issue
>> has been fixed, UHS-I speed modes are working fine on SM8550 boards,
>> below is the test performed on SM8550-HDK:
>>
>> SDR50 speed mode:
>>
>>      mmc0: new UHS-I speed SDR50 SDHC card at address 0001
>>      mmcblk0: mmc0:0001 00000 14.6 GiB
>>       mmcblk0: p1
>>
>>      % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
>>      1024+0 records in
>>      1024+0 records out
>>      1073741824 bytes (1.1 GB, 1.0 GiB) copied, 23.5468 s, 45.6 MB/s
>>
>> SDR104 speed mode:
>>
>>      mmc0: new UHS-I speed SDR104 SDHC card at address 59b4
>>      mmcblk0: mmc0:59b4 USDU1 28.3 GiB
>>       mmcblk0: p1
>>
>>      % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
>>      1024+0 records in
>>      1024+0 records out
>>      1073741824 bytes (1.1 GB, 1.0 GiB) copied, 11.9819 s, 89.6 MB/s
>>
>> Unset the UHS-I speed mode restrictions from the SM8550 platform dtsi
>> file, there is no indication that the SDHC controller is broken.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
> 
> 8550 has additional limitations. One was addressed recently with
> max-sd-hs-hz (HS mode can only run at 37.5 MHz), but when in SDR104,
> the frequency must also be capped to 148 MHz. I don't know whether
> the driver respects that today.
> 

This frequency cap tuning for SDR104 speed mode is not done. If I
remember the story properly, the frequency cap for HS speed mode was
implemented in dts instead of being a pure Qualcomm SDHC specific
quirk, because it's possible to workaround the limitation by slightly
changing a board PCB layout. Then should this new SDR104 quirk be
considered due to a property in the dtb as well?

FWIW, comparing register dumps SD host controllers on SM8550 and SM8650
SoCs are identical, should HS and SDR104 quirks be ported to SM8650 also?

Thank you a lot for reviews and hints!

-- 
Best wishes,
Vladimir

