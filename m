Return-Path: <devicetree+bounces-237474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D10BC51606
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:35:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E50A64E1885
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB002F3600;
	Wed, 12 Nov 2025 09:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M3mRdK1R";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wwi/tjmY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCDCC26CE04
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762939754; cv=none; b=d/hWVl9T18Kz6c8tYYU95h/qkCC88uDq/csNGF0n3GUkISV2RC1IESEdGINjP0Cg15gaWhtJafB5YzUV4mvgjYdfyx81pFBtibsMCLkmWpOd477zAbB6I4XMnm/JW/ka4aJAaR3Yhf0w2mC+iRcnkuxru1J9L6OzZT2GP0i78Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762939754; c=relaxed/simple;
	bh=U5QUgzFTz/IvlVLx3nP30IouyyraN4noTBTIRMQEoCM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R88Vd2UBLAdPLT6D5MufG4HiT6IgYwad6fzVAuwKdbIclNgnUz0jbeztAW8JWLNrsPLiM5sH7LPvVg9k+PKkJ71Df/0AgRciVeHvPyDve2zs+i4eSaQXoaYk5yWpslGjAs+VdqLvo1JIJPo+j34uPhFL6m32etNp/59clN0rtMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M3mRdK1R; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wwi/tjmY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC8sjHW4006253
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:29:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4Z1U6pAv398aa8/5qwHlXbo4iyPjOxFUrccDmf5/HCc=; b=M3mRdK1RR8PQNY60
	GweKj5OB6mJQfS9anE5lEstnPMnkr5UfAh/gaNwnTtqGpmGiCJMT6tcjd7c9qK4B
	n06Npwsl/bcr0LXw40fQGofnf/AHhZzy4R3Tuo9Nrv9nVGG8OyhuFgpjkq/R+UAO
	KzXT50zZ4T9qKdreR4L1xDAObsSajZ01aLywFE2KOmNeIPAZxLAVTeqURbCNphOl
	qWzmmjG2UuQHVbPiA0XF45h6XtmWFTNBcynHdR75QGuTX+UotG+kO2kDbGhw3qwt
	flYPbOPio5XHn4VvNlWJQWhX8hpC1KgIBi30zF+VUTudBNjFM26Gp8qIpij4OZYD
	2+S1ng==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acg5bhbd5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:29:11 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-3c9ac0fb0adso221795fac.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762939751; x=1763544551; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Z1U6pAv398aa8/5qwHlXbo4iyPjOxFUrccDmf5/HCc=;
        b=Wwi/tjmYGKV0e0xDaXFNlg0q/0b5q9Vb0J+ttPM3u/YM3E8AixRU9HAQ4Q21nFfJKV
         1SZJkAO/BQ302jZfZvzfHWCGxfyshyGkNmV5b/zzWRug/DtbIs4LRvleCBPJfeJqsCkF
         tHphy5id9A5lTzJJpQ+DWymvBIHSGNq9hoOvHQ67QFKATa4jGCPB1TVtaONcU4qRX/CM
         nJnO+RBUXM2L1XqcWcU8RTt7Od2RT65i1VWTccKsJ7K2P6UZzZdpQSr8vezF1RBR5fZ8
         5hsyZLOEEwg5799gsZBuI1UXmB5jEJqIxGTGmLlBZB6wEDYdWXGomGeffIxntZwEU6pU
         TOsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762939751; x=1763544551;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Z1U6pAv398aa8/5qwHlXbo4iyPjOxFUrccDmf5/HCc=;
        b=WOed7mujsb+YDbKW8W4Zr1kcFqDY6HqXcRX5vrDo1YdXOzOQgmTXLWWlw0TFTy3VyI
         GViUSebCSfkhOgZAtfAmQ9VLALIXgrweMZa6o2DUk8fz2IH+Ef43VajlTA0uu196iLIe
         UsqcjUlHoZicueHiQP0LgBuKkazo7pi1QlKaHJZ8w4WxU38hRA3FFh5Kv5CCSPoW8hXi
         MuP8m0ZzYx3H2r7xOGsJODuQW6SZKQBchicQb1owisg76ioCU4IzpM/f4oIxnuSUOkOY
         Tz88AercciJbi9g8pYXkkqwsqDWhEq2J0LNR+0Zgorp0aFrYsRTfGrYCao40srW+sK97
         7MCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ3q4JSVmZ0IbnY5YZNMdYhDYyPwMKa+EemqHgPV0CrfqVP+E05/l1uwdof0So7iAr6p2ly06u2n+P@vger.kernel.org
X-Gm-Message-State: AOJu0Yx62HMWzb4RZ8L1twTeUXDOuZbQhU7PGly+K0R1jTXg3Lknb83B
	2TeyEfNXI6sr9fqVsZ+mLhtGR5sBpBqRbimNIqyBRIIxNGKdf9MGStTY40grAch55ZxC0MnNJie
	vA0UVRp6tqjYROOdImVxRum84JisvjiuE9cAfA0FOvSWwhHLDvfyAXVaBofLfrsGW
X-Gm-Gg: ASbGncs7RKyLwFtnLWhIQ+YMatD6UtNOBe+2PmFIdor6CVz5bkwL/+nym8MOqGyDwxO
	5Xzu2f4btK2fwAQlcIGH2Y2Xi3ztKz3UjVVsGF5jwHQQxvcAYZJxh1py3dgX636xiJ+CGd0Q+vC
	yR+E2EwrMwtUXYyEI12eng8yip0/tBIuEGYPUUHwZJYm9UxBq/0I/paO+WkVyngxPZ5UXwNWRKC
	PvvvCQJ7botWT6NDQyTzmUu1W0+rXxk0AaKlkOgv+TCZGCBOLQhOMP9n16gpwiSjRdphki3nWsP
	hvIHJ2SKht/dv1BsvP9laitgCIMoZVi1DmSdesjZ+vKFHk/VxbXIfRFgp1uWDY1N5o90CoPeMF7
	pH/txZ1TseNiNTJ+DeeoQVlTyoA3riBEhoVs6JRZ5L8ujdfL6/4Z7Uony
X-Received: by 2002:ac8:5808:0:b0:4ed:a8f8:307b with SMTP id d75a77b69052e-4eddba75ee9mr19582931cf.0.1762939110381;
        Wed, 12 Nov 2025 01:18:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4l5nO38ZbTUUbjYXNEyin+4V4OUbwvGEdR+rVes2WfMKu7BFS5vDlEA3PIIQEduH3Cw7aqg==
X-Received: by 2002:ac8:5808:0:b0:4ed:a8f8:307b with SMTP id d75a77b69052e-4eddba75ee9mr19582781cf.0.1762939109964;
        Wed, 12 Nov 2025 01:18:29 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d43bsm1618141566b.45.2025.11.12.01.18.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 01:18:29 -0800 (PST)
Message-ID: <a0c267b3-535a-4f38-9a9b-d7b141b8fc64@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 10:18:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: xiaomi-beryllium: Add firmware-name
 qualifier to WiFi node
To: David Heidelberg <david@ixit.cz>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joel Selvaraj <foss@joelselvaraj.com>, linux-wireless@vger.kernel.org,
        ath10k@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org
References: <20251111-xiaomi-beryllium-firmware-v1-0-836b9c51ad86@ixit.cz>
 <20251111-xiaomi-beryllium-firmware-v1-2-836b9c51ad86@ixit.cz>
 <wxvtfyfdso3ngqvnhvryeo2w6udoolfp46smv2r3qny2cl7n4o@iawxfnj7qtrw>
 <5c6a1434-1f43-4434-b6ed-0c5b98ee8d2b@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5c6a1434-1f43-4434-b6ed-0c5b98ee8d2b@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Azexk5G0nYwR92ER7mbMlvUjINcsHXL8
X-Proofpoint-GUID: Azexk5G0nYwR92ER7mbMlvUjINcsHXL8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA3NSBTYWx0ZWRfXydvUGEIFxF2y
 pTZud5su7rAP/fFUayNGrO/vHXyvNUxhn/9kFh/AAErG1fGA5jFtUwJGjvzFsVhMWIZrBdTAScF
 P7MkxbpnmunD+MAv7tcj/7LKdzC4RM0EvHgzjQMiRX1FCGI9VR8T5HQIqfjcrNJeqCfxoi+uVmj
 BkmAGNRd58f79iwWmPGpT5FKUlCA/0sXZ3XTBJ8FnTteMHaQqJVbFSMgVSRjlQ/9ICf2+Vtk935
 NaZeG6n51dPSVetSe/U1jhIf0KCZXdrJyFIwi2SqLhdK+njn6spf+0J8DIb4TZNH8phy+uhQB+c
 MMjDtdWtsjVw9rrWz6uubfdp6TDsbBfhqJw7CyRJBnMbwWmDgk1/X1gT0NpmCuZREiC56a4AFdy
 UanL//0geNly2TClem0aksXIg2T1ZA==
X-Authority-Analysis: v=2.4 cv=YYawJgRf c=1 sm=1 tr=0 ts=69145367 cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VEnwf-grGjUPgLEjvqIA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120075

On 11/11/25 3:23 PM, David Heidelberg wrote:
> On 11/11/2025 13:46, Dmitry Baryshkov wrote:
>> On Tue, Nov 11, 2025 at 01:34:23PM +0100, David Heidelberg via B4 Relay wrote:
>>> From: David Heidelberg <david@ixit.cz>
>>>
>>> Add firmware-name property to the WiFi device tree node to specify
>>> board-specific lookup directory.
>>>
>>> Signed-off-by: David Heidelberg <david@ixit.cz>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
>>> index 785006a15e979..9b0b0446f4ad3 100644
>>> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
>>> @@ -631,6 +631,8 @@ &wcd9340 {
>>>   &wifi {
>>>       status = "okay";
>>>   +    firmware-name "sdm845/Xiaomi/beryllium";
>>
>> This wasn't build-tested
> 
> Sorry, I wanted to send it more like RFC to get initial feedback, I got user with Foco F1 who is willing to test the changes, so I should have new version with T-b until EOD.

Nothing in this thread seems to suggest this still awaits testing :/

Konrad

