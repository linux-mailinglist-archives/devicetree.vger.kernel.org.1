Return-Path: <devicetree+bounces-196558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7938B0616E
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 16:40:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BB4B9205A4
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 14:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 469C527381D;
	Tue, 15 Jul 2025 14:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JIKczXHS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB48D269AFB
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752589699; cv=none; b=fT4CjY/8u9hSJVmcQx8OXwo+LT5QhkyCM3ePWuNPsNs9hXR2gpvYKXYKK6JT+GwGU2PtUKTDq7jSOsdHUEufU0MCEUWqE6ojBqeKqs1mryBXkue+4uFifd4C/yBwayNk9fdt/H2rggwNP5n4qz0+duJ7TkXU2fuVaq3fIXErJTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752589699; c=relaxed/simple;
	bh=TDZRt8vujcFrXp8325zzooIkVrGQbAyR33qzAjuGeA8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kDiAHq3vMyG7/tlLXWEptbYq0x07qTdKbzw1vTQPv8e7xvLp7KRMjdhP+KmyvhdilPTUVzI5ppwqLzXIjnP6OTOonRYBzs8z2eP4tvWZWfdHDQUGtCnyNg1bOvdes74TQvsFi4G/+StttCLfSUtu8YaPr5lfgbkZxn6mvprmJtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JIKczXHS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FE33kV027809
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 14:28:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QSFaumHypqTTcwYiUvNp2N7DCB9NOl0z0cIbJaXbtxA=; b=JIKczXHSlYwtlPo5
	cfnuvh/3aWstmsfCfxtrFNwRlmSJrHb5eHVszCxvCXypRM/xDPbPi+Es7MQTchC1
	GV8K31gkctCkl11tTx8S3GEl3rTOgUVRDkYFQLhD7lX6lriblaOJ3yjofDRJ8VR3
	r55ceWb/LF5YJ0w5VGKRfM8ejWQws5GD3qk8N4cimU1ji3+fDxOp831a2Z0u2efL
	VrXOGCP25xmJMiRj6vIM7I1494tD2QopXMhvOcEkjWxRXtRE+33ADCIMfIQDyndj
	vtp8jyKxYy/PA0G2U3btLeOUluk9q2+I70nmamTxRTE2DVXt1X1CkaYoh4eCi7kj
	DXkE9Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug380nhb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 14:28:15 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e2ced79f97so19340585a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 07:28:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752589695; x=1753194495;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QSFaumHypqTTcwYiUvNp2N7DCB9NOl0z0cIbJaXbtxA=;
        b=XU/0BszCnNchN7MYWjNG7r2HSI99Vj2RgW6m8UZ5CYgErKWEG/4SMqvMf7NHtb5G1H
         ZYo9yHt9cjDtKadms+rSdZhp3kAl1ON0HIgGdVY1wj7Y4X3/5T6q602/NPadIuLHot/i
         OVVRKLyYfFAdELpAYLzEcqEGuC+mgjSGJ+z94YT3IoGRxONo5itmu1Hruz7ESjIPQY5e
         N68O5kR5Nci37dUWXmZGfQ6Ls1WKGvLUmMRfoW+I2HYT8sjZV+U7wKEEc69LPvMXQert
         6oNhkU4So8/fVefBFC4mVsL1XU0AxtNqyT6QTp+lTcYAz7C4MPBqbiFzpftNRhTWAUdd
         RQOw==
X-Forwarded-Encrypted: i=1; AJvYcCXTKUq/E3ORVWfbYUCHyzwCdaDzCr5tWFb9TpkmKBaAwJanf/IWh+Om+3aW6MLTqL8J7PRBKQh3sczV@vger.kernel.org
X-Gm-Message-State: AOJu0YwXHEpGxKFf5nese/83uFHC0GhdmYT44isHbRYjmcbL6ks9X4Bi
	+wcqX20A0Tk2jrtVHdSlYqRn1MsaUGDzp+FE/atSYBYU77Yi9gOc4bCjTpOCFqAIu3Bu2g4Y3oX
	Y33woYF4P9kLWB6nntqUsxt/27TFRZ6x+Hy9JSfXomXPNJLvvHz1Q2ZQy13Rj9ONQ
X-Gm-Gg: ASbGncuL5UUpSnvbE7iI1Bwo5as4LRLez+7ISwayf171zNt6KkRvY4kz+ccGIVYYGVV
	vDLl+Tbpio6Z+Ro+0UoOzX6h+C8w8HLq00BR+syytE9qtbl4jfH7s3sWwATCdOkvnCt6vzu1ddt
	dk+v8j3AAsqDaw5i0FbJgZ9NiBruNjL4HsZ2dThW+ofEKVY4VfgQIYczwZ89zOUIhs/Mo3pO8wX
	gN50XpWhbnj5ZVmVbNTZEtykheGJ1SGJX3YrKEswd04baM47hNxDGtYN0G98vJFXYgJL9mXi+SQ
	agcB+cCt+uI2nZaoA1lltS6x4PZn/NxiE6L0iVh0S3G4OT7tnKUtJnsalCUE5zLYS5tLU4JN0FK
	5VlaxPURlc/AsJrPLpgKG
X-Received: by 2002:a05:620a:454b:b0:7e1:5c99:28ff with SMTP id af79cd13be357-7e33c710490mr98812585a.5.1752589694705;
        Tue, 15 Jul 2025 07:28:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKtfxTcgBGxnij43dQLyyxr09RRQ186qIQ25P+J4kz26uLidPi1uYyo+f55faQ4w2EfKpO5A==
X-Received: by 2002:a05:620a:454b:b0:7e1:5c99:28ff with SMTP id af79cd13be357-7e33c710490mr98809685a.5.1752589693998;
        Tue, 15 Jul 2025 07:28:13 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c9734c06sm7386643a12.51.2025.07.15.07.28.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 07:28:13 -0700 (PDT)
Message-ID: <6220dea5-32e6-4ee3-ae83-96405362783e@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 16:28:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Remove sdm845-cheza boards
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robin.clark@oss.qualcomm.com>
References: <20250715-topic-goodnight_cheza-v1-1-68b67d60c272@oss.qualcomm.com>
 <f6fb3492-7e92-4893-8088-8e1353905ad3@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f6fb3492-7e92-4893-8088-8e1353905ad3@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDEzMiBTYWx0ZWRfX68bpVyZlmBR3
 q1NknvjYtUch+98og8cfME4WoR1sa186ErxIlMDCQfGMxC42A31Rdk0/4kv9Ve5GnsNyCWLVMpY
 baFpJeHbCIqMSrY24xQpwfwCAxyaU5b4iRBgEFLKvqq7U9TJDTOAYbd0stW1cFWA048T7FxbEYa
 hU73SQ/fOQ+IMDht1WbwiACCDZ1+clN1nu6IU/czDXF1lGw/MBAMB+he9iSC/El5YcmDDwuQBxZ
 /y5WBjk9YVEw13TBZO2AGcVS6cdOZdJsQ/uHrIjd7VCKPxsouztOVcCjwIV064cm4FdwyrubfQX
 mC9+OYuyygbNs6muN8TRwGnCUnlcGNirH2bqc5vmXVYvMR1XD7Xe9Eh6cqE5CY25C5lkLxx/MEV
 BhsDKw2scqYfnp6cAVTeyjzhqylJehXM9jUheAQmLh/OZaYyMGOjV7iLdL2xMITGOtkaeKyU
X-Proofpoint-GUID: TCJNF5EB56aa4gERbZmJGjvneIWq54Pe
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=6876657f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=z3venpNmMx4ABpSws_cA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: TCJNF5EB56aa4gERbZmJGjvneIWq54Pe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_03,2025-07-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=758 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150132

On 7/15/25 3:45 PM, Krzysztof Kozlowski wrote:
> On 15/07/2025 15:26, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Cheza was a prototype board, used mainly by the ChromeOS folks, whose
>> former efforts on making linux-arm-msm better we greatly appreciate.
>>
>> There are close to zero known-working devices at this point in time
>> (see the link below) and it was never productized.
>>
>> Remove it to ease maintenance burden.
>>
>> Link: https://lore.kernel.org/linux-arm-msm/5567e441-055d-443a-b117-ec16b53dc059@oss.qualcomm.com/
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/Makefile            |    3 -
>>  arch/arm64/boot/dts/qcom/sdm845-cheza-r1.dts |  238 -----
>>  arch/arm64/boot/dts/qcom/sdm845-cheza-r2.dts |  238 -----
>>  arch/arm64/boot/dts/qcom/sdm845-cheza-r3.dts |  174 ----
>>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi   | 1330 --------------------------
>>  5 files changed, 1983 deletions(-)
> 
> What about compatible bindings? If this is the last user, it should be
> dropped as well (second patch).

My understanding was that bindings are generally good to stay..

That said, since there is quite literally no more devices and I don't
imagine Google randomly deciding to build another batch in 10 years,
I can submit a removal too, if you wish

Konrad

