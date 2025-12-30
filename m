Return-Path: <devicetree+bounces-250458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8620BCE9250
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 10:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C4A243003B2D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D17B927F73A;
	Tue, 30 Dec 2025 09:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jy7xA8It";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="baSPipor"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6F9C272816
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767085641; cv=none; b=q/qYlUiCBPfvfdCUheea6T4Xbf+NuRgmJpWt3ZThyINcKZLRMc64x2KLQV5qt6BenuVzwNZ04QKCl6RVS0Iml1jRLi+6sRKWNwd9IIiy/AKE1g/SG3K8EDHxJPNXS1b3tsovokVBRo1lIPgZ9UftupaEKYD2ZjHgGqKyUURzgRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767085641; c=relaxed/simple;
	bh=zfq1eyxsVooAMeImBG6IFCb6YY9Qeqn9UMY7+4KLQHU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RTTBJt1/d7jy7qlaxTGkqEW8PUYYDVMz/OmgkJQY2pJcBkt0t/Xnc3m0QnAwL826iFXqw72lhUZhKbz5iVw8ifswTgQnEXx6fwIp0niaY5ygj48Whw+sJ6F3vmjXdaqmbwjTEDO9Xd81IYMiCZSxdHt8817Ubi+/ETROBfIjGws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jy7xA8It; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=baSPipor; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU0FiQI3706305
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:07:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dTXohy+irUpcd3Gfqd71DWajddDG5EB5SCs8sOBQ6eA=; b=Jy7xA8It9RoiFevS
	kvPy48KeKNKiltFhRGTSaNr320VDQZ8J9q0pzB7GJygHXFLT5/xErERcyGDvwb1D
	dsKm0i54SyZLGGpTH5hQKwv1GHs024IByIu5ps5Qp8MhJPOsJmAjXbpKSA+8U5cH
	lKsTgVMqfaDIOUjTgv1O5figftYo307Gf7tZG+E8q5S0YUDutuucWjtgxdGvwmH/
	vOeE5kdELmRLHY1CZFhp4QMBCcDze685iiLfbL7HLIRT/j4hko/6zJVuLDrrUwuP
	PtjxVp8hXWXmYlDe+xvSVHydfVdqLzCdyaM9KhDWc0e4Hi4xnuEwfYBH0bNxxNT+
	aoj4vQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbc8yv0r8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:07:17 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a31087af17so194131395ad.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 01:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767085637; x=1767690437; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dTXohy+irUpcd3Gfqd71DWajddDG5EB5SCs8sOBQ6eA=;
        b=baSPiporAZtoo6p+J4jn+CI78azi/GRbpiDdohumTUE5G6NTbGDc5EtvZGvzOm44DZ
         uyMnJSwulL1HDE49wh9QOA8B1FVSOW4meKmhoexyZYwxTPsVv0pl+TxQHhHrwPtWTXwa
         /BD4xUZiFJ1sd6/5ur1EWgPmhYzAfYN3R7ebKkw4kRdzYZT0Ml2gwIOI73F5VrRBwELz
         UsxsERV5WNM/l3yUPGc+XAH+NR4PAxmgNetJv5EBkNB2JTaHxY1bUVGF1mtPHMZFYQS6
         3f7vSM1HdahieY+TV4a5YcVx6kJ8UxTR4A0UHSmCrA9LfiEM066x7LG1ZlQMkiaCipX6
         UXiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767085637; x=1767690437;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dTXohy+irUpcd3Gfqd71DWajddDG5EB5SCs8sOBQ6eA=;
        b=bNtizFxRhL5fayFkd2INsuUl90VDGwzyI2aR7m/HappcECQ7NDrBNnicCXMsA5/ePY
         eYWwL/tFxS/mblvPezePWM6ghywrvZOey+HMS0OKGQTOH0KV+AVS9o2UNfTI3XLSq+jc
         ogIhDJwVnviXEqWMIXXAHcZAnxT7u2/m6Ns3A+20zlbgJSnWO0HRj1IBa4KnV4fSIvXe
         aukbUyljs1yzXZ/8/84KqW14QePrNE5jK34iIO8uGxopw3eI6bci+yZxx1t1en0wxgDt
         iNq7eKsTCpcGY/ldMS0ZgVxPnigNVU61G6v4H3ctSZ1Eizp8x7RCQiaN53EN5AleN46g
         F05g==
X-Forwarded-Encrypted: i=1; AJvYcCUjyjaCxtoX+ApOihaWS6sEmAKcwgTZoEZFPSX7nuASr7ycxLcf2lWEziiY6AMhrg8SN69KJ52sNDzL@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu2/cpNopcZJyQnNgmXvwA1nwqGxVM1FTxpj9qEB+UueDB5L4A
	2r8yRmrTJoax3ZtE0IQ4r3IyZNICrzta4FszPZiSYgWqEZcvDRE8ly86akScQq9AtiaGdPqGHcK
	haDWHtIGSSvoi7d7mN4RPYXBJ6PJPvaL+vENNxds4jnQ9JA0D07nHyD1RS48f2ecs
X-Gm-Gg: AY/fxX6qeIg8O58bbLVPCZg5fyjInl7E8MZoguZztVXwro5oDBQ2SyDwMyOpwY7hR5N
	fdpLUyV3QtSPakN3TU4Gn+5XQH7/zVmxmN442lAD2T/q36HEoL8RCb4teNkJo3MDVSvDXFb4Kt9
	IJaBBmk5tpo0/bhQX0/YjPpWEwfsBv+GT67t0dI+785Xg1PgewPFf02kij/nsXlqgEEs0T7vE4Z
	qS7wGd9ZtU/OzSKCv54psgN9lKafMPkSNkcLnGT2BsE48jIJRAw9KNywHtfgyOKLRZjW9DWgN+U
	PC3+SyrM/PF2XrBfIpTVtd2LHYZNacOoC7r2FBW7BZ+y873cmY1zU0wUbOeh2nVMBxG4hvvCohK
	kp9/RWK9m0ceUDDukXxmqMr+B6MeahRybldA5SlbWuZ5K93oLYEg=
X-Received: by 2002:a17:902:e785:b0:2a0:b467:a7cf with SMTP id d9443c01a7336-2a2f1f71a56mr303644055ad.0.1767085637247;
        Tue, 30 Dec 2025 01:07:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6XImN4KSFStkKAcNcJ17xwNN80501uVV4sZa67kl35qoIIEyl2/FUSFpkPjlHz3ujxp5wCw==
X-Received: by 2002:a17:902:e785:b0:2a0:b467:a7cf with SMTP id d9443c01a7336-2a2f1f71a56mr303643905ad.0.1767085636726;
        Tue, 30 Dec 2025 01:07:16 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c66629sm297173995ad.14.2025.12.30.01.07.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 01:07:15 -0800 (PST)
Message-ID: <37253691-f164-4aa3-9199-4b21e9847349@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 14:37:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 1/4] scsi: ufs: phy: dt-bindings: Add QMP UFS PHY
 compatible for Hamoa
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-2-pradeep.pragallapati@oss.qualcomm.com>
 <5c97bac1-d796-4046-9450-65cc99ef7469@oss.qualcomm.com>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <5c97bac1-d796-4046-9450-65cc99ef7469@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDA4MSBTYWx0ZWRfX+hnUWNPtp0eS
 w/f/BQVpPP8TcHqx/xEP1cKAVNt5G+YYaVLFTzZjYX9aUPhBvp1tuYnDtlZrwzR1uA98RCBj5uC
 +uQsPT+i/1IjTu+k6R9vdURTaBRaUOfRfzV7YTnSVUp6uYwAZYRZT9ECNFw0ypFH0YCvCxB8UcH
 n8biAqPnaDcrmm2Z+ho1/ANRHzpgcX3Rf1J2NoSh+u/RogFiyL18RrwbVJJvc5zIZa1msntGbcB
 wayOFxJu3UH70QiwsBnSQIYnfniVhcezr3bQddVqWMAHepiY90U8aTyPYHSwGRbUYWiQVDV5HTS
 wl4v8OuTvN1ONurWUcHKOu1GQraPKcJfsuZS1+9NRffx/jX0dPNZcJ2Uc19WgFiY/DF9s5I62oy
 tjFqMAoCUoIWuspmk9hFhP66ol75Ekz1cj3SQYpgov9A5LkquZO/l2/9LoOWggErahGGMZlyNQa
 Ou4jk6hmtO6CH9beOkg==
X-Authority-Analysis: v=2.4 cv=cP7tc1eN c=1 sm=1 tr=0 ts=69539645 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=N2xpj-L3_XMPhEp0_2UA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: qPzHcVvKNC11tEaazpLfy-GeeEJ536jp
X-Proofpoint-GUID: qPzHcVvKNC11tEaazpLfy-GeeEJ536jp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300081


On 12/29/2025 5:56 PM, Konrad Dybcio wrote:
> On 12/29/25 7:06 AM, Pradeep P V K wrote:
>> Document the QMP UFS PHY compatible for Qualcomm Hamoa to support
>> physical layer functionality for UFS found on the SoC. Use fallback to
>> indicate the compatibility of the QMP UFS PHY on the Hamoa with that
>> on the SM8550.
>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> index fba7b2549dde..b501f76d8c53 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> @@ -28,6 +28,10 @@ properties:
>>             - enum:
>>                 - qcom,kaanapali-qmp-ufs-phy
>>             - const: qcom,sm8750-qmp-ufs-phy
>> +      - items:
>> +          - enum:
>> +              - qcom,hamoa-qmp-ufs-phy
>> +          - const: qcom,sm8550-qmp-ufs-phy
> For platforms introduced before we were cleared to use chip codenames,
> let's stay with the numerical identifiers for consistency (i.e. all other
> compatibles in hamoa.dtsi say qcom,x1e80100-xyz)
sure, will update with x1e80100 accordingly.
>
> Konrad

