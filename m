Return-Path: <devicetree+bounces-227557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10163BE2906
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85A7B48540C
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38F2A31DDAF;
	Thu, 16 Oct 2025 09:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JoUTjwmf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3947D31B11E
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760608354; cv=none; b=PthZXdRZ3NGn9H3zHPgyTeGqh4tkI071uXSsSeS5FrmiY0hkd7hr+xXzVkR3IxTlkANrtM7FN/j2EspkTMVg+oMKKzSoAIEd3uqW5sh8L5PzfZurl/uvrx446nXFyn5JI0pBSxomhY++adnPTaEVt9ueaa7LeuV+RoC5VrATAXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760608354; c=relaxed/simple;
	bh=jE2GoX19eyhmDAzyJNkgxtQN6Hq02Z1VjLQd8iVTPAM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YRZB6VlEwCjNAThCaO5VsQNfVce17QusKxgRkcOa+03ggg5TpDDVS5r/2ILWak6vg/fW85xCKQ3p+MWhVnwnXU4A9jDINAzHHPqaU7bjSJJsEDl0lzKq4BZkWh6PyGIRKtt2He+pmQXyVQTwmWJPONAtek692X3CvAeZWLvTrO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JoUTjwmf; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-58b037243d5so113489e87.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760608329; x=1761213129; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jn4dZoKK26RuIY2MUwW65nuRqIMdpVV2Qu/kLcTzIEE=;
        b=JoUTjwmfP6jWMtxLJ31VW4DUdqWdZAzEXyHedVQHXPHsvLhmcHEG0yM24AU81jCq/B
         n8mL2ghF4Jv3j9zz4d7Mn0cDsFu5hNthEpWimSV5Cjhkh0Rlu9GQ5vndEzxk7yAt+t/V
         BLvpONm5VTDEF0JCiswwbsJdl8usxQK/A9hBwa9s1zKY+NmU8jXS7lcNZIHnUizeKErv
         LAS3gAD1Jtt1yMmJ8O/lsfTLqctnY2SEwiweOiEPfHmQjn8TdEtNpUE03zRhuY63U4P9
         HPJuXx3etp55tQbclfZVDQIX91ZbroaFSeqAMHqDhdG4J6B0tFXPz+OoASqWYKhQrxKy
         4R+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760608329; x=1761213129;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jn4dZoKK26RuIY2MUwW65nuRqIMdpVV2Qu/kLcTzIEE=;
        b=PVEepl7WZjJx8AY/drxlG5a9ePbhIpy4k+NvXxp7qlo6L0WzYhOzqvlvLG5dvLraqV
         fK4WzDTPfcEuTyzNwoinskYAZ+5ueY0rkmxLuqelQgA54QO8qcQS6wVJadM2uq8OHP9s
         YUtCvrLFIhyudHp7OtPeQDftzNkO4FMA6eTYoVQRm91bNTpT3SaYSViLyYII+XjfgOQ4
         /Q9eiQhXSRpkS+o+dluwl+PFq0SuNgMtYTEYS8EGlFSklzCtTcnWKaFQvH7rlc0blDjW
         r7H3JvYX1tJ81KfzVNi4FW3CbGQHPhmtgr3NggZZ+VAcg8LnkPQORUgt7w4cD2Qon+0l
         ZI+A==
X-Forwarded-Encrypted: i=1; AJvYcCUWhVzBULzowjpyI0Dqr6VDWiFse1yK0qGi+N5XeOiogyFWH1BiGe7PdzJDALf6ysgPFZ3vgX2VUvO1@vger.kernel.org
X-Gm-Message-State: AOJu0YzU67bJMPMF6Um6114TXhLQ/W+OITQv+cSklSCH724oDHHbHUT+
	W8gehEa6YHVH8JOvGF46wgBbjbjWsZUWrmKsQUci3XkSFdK37Ij83jaSiG1uSmYwEyU=
X-Gm-Gg: ASbGncvfWVpgBjX+YBBFz41Qnf/Uebkx/OF/F4aJXSHNQO4Mtp20OEzDmat53kopMBS
	KUa0TtP4YUNkmR1Ir991Vrksc8pcde2t/m7LKeCRhUy2veOLjDnT7ieu8wYGULKCN9dbli88/WB
	sSQQEFRJ3S8yGU+EeDpM3WWO3bGMAmd5Ag8ka+kgK1XZEd8EhntjDMxXy3GGGdkoFQG+nvz0YJD
	pYPlcyTq6uIXxPy0xHxlhXAmyQGR4uNAfDAVU5+VDDm4LU3UQ5qtrMF9RqIQzyuH0ffQdN8Q7ik
	2fsInqc6vV8w/fvKKAOyTrYvBX97Y/uoK7eM2Eht2R5+3p2KunsUiQ+4b7fP0F0NsTfSSc8KAU9
	m9KzmdmPu5PH48rw7rqjPQsjoOlU3xZn6d+6Q7WsLwHceQLLtyb/QoXa+oAdmHMk9RgGVDcHFHr
	HGD44lEjiiEkF3ZlDYJul7QpJxY5ItZvsH3C8YqhIbAI+w3b+cyVL9abYYezk=
X-Google-Smtp-Source: AGHT+IHGrMqF/SxK/b9Eusc1EmuTMX1oF3LiG7gqz6PSDdypVz3evm0d5vIiv9I+NCKFDiLfXQtkSg==
X-Received: by 2002:a05:651c:2224:b0:36c:ebb0:820c with SMTP id 38308e7fff4ca-37609e72b63mr40963831fa.7.1760608328682;
        Thu, 16 Oct 2025 02:52:08 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762e77ea1fsm54348501fa.3.2025.10.16.02.52.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 02:52:08 -0700 (PDT)
Message-ID: <ad05ed96-80fb-448a-a264-f4b4befc5d30@linaro.org>
Date: Thu, 16 Oct 2025 12:52:07 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs8300: Add support for camss
Content-Language: ru-RU
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, bryan.odonoghue@linaro.org
References: <20251015130130.2790829-1-quic_vikramsa@quicinc.com>
 <20251015130130.2790829-3-quic_vikramsa@quicinc.com>
 <b4207e22-8d9c-4223-8b28-272d2650661f@linaro.org>
 <8966ddaf-9c10-4626-a4cc-36efd3fc93e2@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <8966ddaf-9c10-4626-a4cc-36efd3fc93e2@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/16/25 08:59, Krzysztof Kozlowski wrote:
> On 15/10/2025 20:49, Vladimir Zapolskiy wrote:
>> On 10/15/25 16:01, Vikram Sharma wrote:
>>> Add changes to support the camera subsystem on the QCS8300.
>>>
>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
>>> ---
>>>    arch/arm64/boot/dts/qcom/qcs8300.dtsi | 171 ++++++++++++++++++++++++++
>>>    1 file changed, 171 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> index 8d78ccac411e..acd475555115 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> @@ -4769,6 +4769,177 @@ videocc: clock-controller@abf0000 {
>>>    			#power-domain-cells = <1>;
>>>    		};
>>>    
>>> +		camss: isp@ac78000 {
>>> +			compatible = "qcom,qcs8300-camss";
>>> +
>>> +			reg = <0x0 0xac78000 0x0 0x1000>,
>>> +			      <0x0 0xac7a000 0x0 0xf00>,
>>> +			      <0x0 0xac7c000 0x0 0xf00>,
>>> +			      <0x0 0xac84000 0x0 0xf00>,
>>> +			      <0x0 0xac88000 0x0 0xf00>,
>>> +			      <0x0 0xac8c000 0x0 0xf00>,
>>> +			      <0x0 0xac90000 0x0 0xf00>,
>>> +			      <0x0 0xac94000 0x0 0xf00>,
>>> +			      <0x0 0xac9c000 0x0 0x2000>,
>>> +			      <0x0 0xac9e000 0x0 0x2000>,
>>> +			      <0x0 0xaca0000 0x0 0x2000>,
>>> +			      <0x0 0xacac000 0x0 0x400>,
>>> +			      <0x0 0xacad000 0x0 0x400>,
>>> +			      <0x0 0xacae000 0x0 0x400>,
>>> +			      <0x0 0xac4d000 0x0 0xf000>,
>>> +			      <0x0 0xac60000 0x0 0xf000>,
>>> +			      <0x0 0xac85000 0x0 0xd00>,
>>> +			      <0x0 0xac89000 0x0 0xd00>,
>>> +			      <0x0 0xac8d000 0x0 0xd00>,
>>> +			      <0x0 0xac91000 0x0 0xd00>,
>>> +			      <0x0 0xac95000 0x0 0xd00>;
>>> +			reg-names = "csid_wrapper",
>>> +				    "csid0",
>>
>> The list of 'reg-names' is not alphanumerically sorted, this is a newly
>> introduced sorting order pattern of CAMSS 'reg' property values.
> 
> Please stop inventing ad-hoc or fake rules. There is no such sorting
> pattern for this property, which I expressed multiple times. Last time
> you claimed there is some sorting by "values", now this.
> 

The sorting order above does not resemble the order present on other CAMSS
devices, which is the alphanumerical sorting order.

The same order is supposed to be kept.

-- 
Best wishes,
Vladimir

