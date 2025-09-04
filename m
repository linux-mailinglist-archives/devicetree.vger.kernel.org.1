Return-Path: <devicetree+bounces-212907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E093B43F9F
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:51:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 819351BC4FDE
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9F7214236;
	Thu,  4 Sep 2025 14:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bw25kJ/C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED242433AD
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 14:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756997452; cv=none; b=o17uGORInDDdmRhhmATX8vviRx3jx4l4rmBOnmPfPKG6pEiVXllGPXoaS+Dq14XPxDT8FjaZCVEo9RAlXMLcJUe4NVvVPLhckdH7jCdmpo6HixKgHiRYF5hsduif7+xSsrdrmQVEB0wZ6y8ZjGQNkBUMozH1vWpRvItMjavg1Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756997452; c=relaxed/simple;
	bh=znzKzzYB/tVt/N9X6f5BwkJ3eba+TE6AKbyVs41GZMI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bs2/zuWYlE9ckBKRecTk7011SGUmAJtETzcwkZOKXeMR9/aU8MQkaBoLPuRute6CYIugIg84w13eQ/qg51ApUvcQI4h2+anhybowBM16hBUEM1v/o02FM/Oo9S62fWTlyNttlao3lvJoZsjmD6wC/NB4sMpwCC1dfRVJNnlTNFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bw25kJ/C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X70G013476
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 14:50:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	znzKzzYB/tVt/N9X6f5BwkJ3eba+TE6AKbyVs41GZMI=; b=bw25kJ/CriesNdcY
	ZTuBEAUfqn1gmDXvZlNBpPY7rRCLXOgawoUnHOf6XhyPPTFS3xvIc34NKSOeJ4/f
	bg4ASMUFy8yZPRhaVJ8JRPLM7otf51uqGlSH01SA50t/wOvjaxHjV2145tAlxF4F
	vYf8mQpipXW3uwmOsiPVlfWyNmDUlkK7MK6yTlLmIG+x2HViK9rh+OZA3rVvtUGN
	4UFZJ7VtfuewMRdU8X1l8r8NQVeC/vi60EElkB1MrbcCx6SFypUwttdxgKjmUu7e
	FgNVky/qIHPNlzKLtFsywLf2e6RgwdF5eTlZM1lPq4PCDyZKcRD9eHWQlYv9Wc+A
	xQmN/A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wybrd5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 14:50:49 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b31f744865so1856831cf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:50:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756997449; x=1757602249;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=znzKzzYB/tVt/N9X6f5BwkJ3eba+TE6AKbyVs41GZMI=;
        b=AFrmbz5zA4twwefD/59g3ihvN4F7Mc7tcY0aMbKrJ4NjP8OFIuCxqL7+5RnfNB5Fsv
         nGtNuOiVc5LpLenAS05UKMlX7V2/ch+xfX+okErwfmLqKx7HST0kaIojFde+yoYIbCI2
         Aqo5jDhOY1kmu4Zz3sfrPqKwuboHJwmamg6PsSEjaRQ5VAD6Y+Q0rpOLLoAYKEqKWXlK
         xxYigoh3kk/KOot/q5pEwvMS+jgNqiUeRpsiNNoDO2i93XSVDhsjxWW4eY/EuTK8gK7I
         4vf1pgCOXlo5RmzWUPj2KANVeXyBsdQSzFadb/sRc0kzAvL8dtlPSJHamPGQxRkpDxB4
         9GFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXka7iBTHG/XuJNTJmBHfTOAFKa7txOJBM5u+xOAKIryavSIqqPHh9fyJ/oPBEyb9813s1iGvw8XJB9@vger.kernel.org
X-Gm-Message-State: AOJu0YzZFjeGAzFLUSKKZgWuz5s+9OBEiutFaKi1kin0J/LZE9ZfF1Ii
	OHASwtNuN+sHpt7vdo/CCwCl2d5Xmb0qKuRq3q0+6mH6cIfrp8KDzfof8kaWksirL80ifZJ+ZUT
	lt7mRdOZKTslchMNQwJ9oe5FVSlIma4oZcL1eeKkWEmWipI7CO0hOkF/m7+sVJ//E
X-Gm-Gg: ASbGncttH0GjcSC3TZwE7gEiqqhhqwYyYTVx4kmmRGgZsY1STpvb39Z3IS8Im/OuV7i
	ovCR6N6AMWnC0lYXhhcxvwh+y1Q6sOdEjxeGTtLpAc/6r6VnGJ4eVnsd7VUXiFuX1SIC5/V3EjL
	uUu6weEqrHoOGymOu97XEuxu6oHsLJInqY0058hd+WhplI0jGv9JUYiWTdMdDhFUjE59++PqIHH
	7MJMycyZBlj0PWE7yo2hX6lxyo4tBZLtpfQckolB8+vRlVjU1Ag1okRiHJ10PZP6oA2tlB0zdVg
	bFXwfxsaJaz6RdNgf4xwpuDNSQuVIapPLH9MmA3Sr/uzn0u5OmKmJNBM19AnPI6Fv6F9N6KKTJu
	YYjNFUSB3B4/CiHjQLPGmww==
X-Received: by 2002:a05:622a:1a04:b0:4b4:95d0:ffd3 with SMTP id d75a77b69052e-4b495d11860mr40733841cf.1.1756997449091;
        Thu, 04 Sep 2025 07:50:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEirBU+zW87hGRQx6CbcPFRpL0Sni5GXvXTKKD/RZcQRjOUfiQBrFmsWOwLVI0eNqk4lg1AaQ==
X-Received: by 2002:a05:622a:1a04:b0:4b4:95d0:ffd3 with SMTP id d75a77b69052e-4b495d11860mr40733461cf.1.1756997448479;
        Thu, 04 Sep 2025 07:50:48 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0470f11088sm327758666b.111.2025.09.04.07.50.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 07:50:47 -0700 (PDT)
Message-ID: <18092427-3a4a-4fb2-9f75-675de98957d4@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 16:50:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 4/4] arm64: dts: qcom: sm8550: Add max-sd-hs-hz
 property
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Sarthak Garg <quic_sartgarg@quicinc.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250903080404.3260135-1-quic_sartgarg@quicinc.com>
 <20250903080404.3260135-5-quic_sartgarg@quicinc.com>
 <6deac56f-e21a-4447-bfa7-a414084676b8@kernel.org>
 <be87fb2f-7036-4039-8ba2-63d54a9ae732@oss.qualcomm.com>
 <23c29fb7-c0a4-4519-9b8d-e68255b83a10@kernel.org>
 <a304ec1c-7364-4926-8763-8c731e461eb9@kernel.org>
 <d12957f0-f8b5-4b29-967c-576dadd565de@oss.qualcomm.com>
 <d2d9d5fc-27c4-4a5c-8ece-0f2e8b7030e2@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d2d9d5fc-27c4-4a5c-8ece-0f2e8b7030e2@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b9a749 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=c_I0RgxThugTXrF3K4IA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 5xb0uh8t9o3Jxo4cKNy0kQHu9SKus5NH
X-Proofpoint-ORIG-GUID: 5xb0uh8t9o3Jxo4cKNy0kQHu9SKus5NH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX62WmQmV8gNfd
 E0SPkXHZF17D9PiYsgM86ZfxwttiOfVu8zjCQLFrFjbIfOqJvzElgeJ2W0MY89WDm9wRt86Af3y
 ETRtJCEG23HyyMdw27WVHHeyxyoQ3Gi2SlgNt/MmpHCg03GrHn8wpyqMyaysNbZIgP8rTON1mNj
 QKin1GhuRaQBU1HSyCwRqRw1wpX8RuekTdVjye6bfbT/lcuzzGyJG3QnBAIb4GqSufah9cNmfs6
 MLQLFMHQypmx4LGDBZf/Ep1GAQs0mW3DTr20+4xV7OMCDdTsZGAi3NyUJsZ3Q8UT3OtmllCTOWC
 o9EXbjsDVTKa7glh1MrecFLFAgPJG9WiFN2ZvWU1+J4fE4H9uchdUMOY63wcFmUKTjXF7gvdz4c
 fMgNycMT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

On 9/4/25 3:07 PM, Krzysztof Kozlowski wrote:
> On 04/09/2025 14:27, Konrad Dybcio wrote:
>> On 9/4/25 12:52 PM, Krzysztof Kozlowski wrote:
>>> On 04/09/2025 12:51, Krzysztof Kozlowski wrote:
>>>> On 04/09/2025 10:36, Konrad Dybcio wrote:
>>>>> On 9/3/25 10:21 AM, 'Krzysztof Kozlowski' via kernel wrote:
>>>>>> On 03/09/2025 10:04, Sarthak Garg wrote:
>>>>>>> Due to board-specific hardware constraints particularly related
>>>>>>> to level shifter in this case the maximum frequency for SD High-Speed
>>>>>>> (HS) mode must be limited to 37.5 MHz to ensure reliable operation of SD
>>>>>>> card in HS mode.
>>>>>>>
>>>>>>> This is achieved by introducing the `max-sd-hs-hz` property in the
>>>>>>> device tree, allowing the controller to operate within safe frequency
>>>>>>> limits for HS mode.
>>>>>>>
>>>>>>
>>>>>> Probably we will now replicate the same discussion... And it will be
>>>>>> happening every time you send the same and not reflect it in commit msg.
>>>
>>> Just to emphasize this - it will happen EVERY time.
>>>
>>>>>>
>>>>>> Bindings say board setup, this commit msg says board config, but the
>>>>>> patch says SoC. This is not correct.
>>>>>
>>>>> Both are correct, looking at the problem from two perspectives.
>>>>>
>>>>> The bindings description mentions board-specific limitations (e.g. because
>>>>> "the board's electrical design does not allow one to achieve the full rated
>>>>> frequency that the SoC can otherwise do, in a stable way")
>>>>>
>>>>> Here the author tries to argue that almost all SM8550 boards are broken
>>>>> in this sense, because the reference design did not feature the required
>>>>> passive components, making most (derivative) designs sort of "broken by
>>>>> default" - and only some (if any?) vendors decided to go with the
>>>>> additional components required to lift this limitation.
>>>>>
>>>>> This in turn makes it fair to assume the developer experience would benefit
>>>>> from having the SD card high speed modes always work (with the slight speed
>>>>> cap which may not be required for the 1 or 2 designs that took the extra
>>>>> step) without each board DT creator having to track down this property
>>>>> separately.
>>>>
>>>> And then if you send same v3, I will ask the same. Can the author
>>>
>>> v3 -> v6
>>
>> So, would you be accepting of this patch if the commit message was:
>>
>> arm64: dts: qcom: sm8550: Limit max SD HS mode frequency by default
>>
>> Due to an implementation detail in this SoC, additional passive
>> electrical components are required to achieve the maximum rated speed
>> of the SD controller when paired with a High-Speed SD Card. Without them,
>> the clock frequency must be limited to 37.5 MHz for link stability.
>>
>> Because the reference design does not contain these components, most
>> (derivative) boards do not have them either. To accommodate for that,
>> apply the frequency limit by default and delegate lifting it to the
>> odd boards that do contain the necessary onboard hardware.
> Yes, it is an excellent explanation.

Sarthak, if you believe what I said is accurate, feel free to copy-paste
as is

Konrad

