Return-Path: <devicetree+bounces-207755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DFBB30AFA
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 03:53:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8397C4E1807
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 01:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDFA01AB6F1;
	Fri, 22 Aug 2025 01:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gvMD08bF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F6A1A5BA0
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 01:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755827621; cv=none; b=Ed4uTVwQU19/a3+10kN+92ECHOkfNqwv9FTJyoaNP1oC1669VYw7imDttsxFqNQN/H/vCFS54Aw5466PaOn09vlPeh93XwF1MVK++Y83txtH8ebgeug9URsJzIw38+mQhPxWNowlPjS62NGMgmv+D7HjgC657++yGM9Fh7Gu2jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755827621; c=relaxed/simple;
	bh=lcRbF4s/PQ23VSgcKM0p1j1KRQGCkTB/i7Aw1lz8Rf8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dK5Kd0JDpI3b0Wod9hOHhW37ywCIi3IEmq66ruo0vQNecH/4d2kIC1B7KSqAUceEu35lAYVya70THaRYR61Aep/L/57EZPNBJYCdiH/wHGMAr310ZsxYnkeuC1UeozvMtuS37VjSeS7XNVKayQEa6Yt4iWsHyMC/BNo51uFrg2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gvMD08bF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57LI9BWt008928
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 01:53:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fQ6jAh+MsWJrW0ys+uDSW5pSsMHNRIQOD8QB3d9ba7w=; b=gvMD08bFuD3rSToW
	SecdwBe6Lj5LswT69wQ/2Tf715JQYvBfIZncY3lXN3AVpABeqNlCmW0mMIrc2/ue
	8EMe+e0Zw+uGiSXhwNl0cEeV/uayB1EfB/kzaXMQoJFqLWiwoRtxeJ32nyPYnlye
	9D1HD4kpSRFh7nRVI/tpk3u3HY6RLPMtaP4SXFuyPaOpoACFeq18GxVD1/jtQPSX
	byYb84Dqsjn9FIEXITDzjxbfFvvj/HhyyZl41ihq6nRVFjyRUrfQtHHlOESst1oB
	2QPZBSZkp4KUNmmFQJtwTQ8YwYRexFbwRhS/cCYKAl1/ZuY5bUl6DbIhi95mBg3o
	VwAUmw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528yd03-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 01:53:39 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-324fbd47789so1055577a91.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:53:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755827618; x=1756432418;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fQ6jAh+MsWJrW0ys+uDSW5pSsMHNRIQOD8QB3d9ba7w=;
        b=kwQPCN5jDavGz5Mm4o96RC8iBZt5gQeXRUy4kTSj7JDVLD4JMEUEdrqWlpJwERwBkS
         MWn1LTQpzwqc+q7g4P7UTLaTNQwXyWmR6vSVUJ2DP9W9Il78QvUVyPlXbbp/qcxXWNNk
         qfeSvzWFqExbCuzAyi5cD4pkNSObxQlsThbdXhDpy8wt6RokegSe7tUdRurY3GeaigGV
         JH3raxl9Pooo2mPLlnnoHVXYyehJJlDcClMX74s+naVMsmrDEnGXvdj/aMLwQ7Mrmp8B
         A9rK/SFAIABX9iYl3HGbCl0O8fS4QNQJ8ihkmLJFYjIKufRJxYi3gHBwmjXbzlW4hYVN
         d0kg==
X-Forwarded-Encrypted: i=1; AJvYcCWYheJy2OOM+ga62u+oUOZskYsHtdT7OWa0US24TzdXpmVhGJ3O3tf7eyyfowbblFS+pj3hQh+LZMlR@vger.kernel.org
X-Gm-Message-State: AOJu0Yydm/2t7JQSruUncXbzlfK957EhG+uiYI9DLyxHvilR8yz4yO7r
	dVZsnt/dyw/LH5m9BCZj528qRZq2V4dLhy9FQO4udl+DbR6K7bmr0cy/Xzt9PqYFryZZMaUjIl8
	FJD2MYC/kJPOWa/zdQ/m6xuV3jgVOtc9Hpq42CCh0ZeyPKXQSv+1olHt12RUHVBdW
X-Gm-Gg: ASbGnctYTsbiiNfQ7bzCw5El+i18a/KD9BThBykfMFluoZ9+1T0N3V9P+MrZqkWOSnk
	Yk1QwTOVh+DNwtcPRoeaDu2KFWIMlGqiqYjtUVbfSwykLC9fgYBsn5RLQlx6HUMbC1ezZ8ZeEPp
	7bCXXITAuYnOO8fjCBKAFSKDjqX0vLrv12FJ5OGk6T8QYUXTNpMYZuMq4tgBPhA1kX/XDM8M6zs
	OFaqagSraQJoz9hA/oCQK7ieklDOmWcADbM2avQ9bmXUBR7rpSTSMCy0VjwSj8UTHW5s93ULDfi
	4s9/WQNeIDQu21iEYHufi3p9yH2LG5rzSFNGKQIBxTDR7FJay+hdaoFP7LwiOWfHi3fRvnar5SY
	vL9So67kRK+ZxbNt/5BDgC2O+fXvA5g==
X-Received: by 2002:a17:90b:2ec7:b0:2fe:85f0:e115 with SMTP id 98e67ed59e1d1-32517b2f78dmr2092811a91.26.1755827617885;
        Thu, 21 Aug 2025 18:53:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9I9vJOh+MwLycDuGMJzFuq4TmcBJ+szXaNAIctyyZVVpI/P68vxK3Jv34spYw+h3HbRLGtw==
X-Received: by 2002:a17:90b:2ec7:b0:2fe:85f0:e115 with SMTP id 98e67ed59e1d1-32517b2f78dmr2092783a91.26.1755827617441;
        Thu, 21 Aug 2025 18:53:37 -0700 (PDT)
Received: from [10.249.96.170] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-325129aa68fsm1012282a91.7.2025.08.21.18.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 18:53:37 -0700 (PDT)
Message-ID: <74bbf915-23cf-46c3-b9f8-48bb43ce9c56@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 09:53:30 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
 <20250821-glymur_pcie5-v2-4-cd516784ef20@oss.qualcomm.com>
 <bm3cp2vyw4rpllkwoxoxwrvsjxrtolcroqwx76bkpwmcdvx7ag@b6hvybyouq7m>
Content-Language: en-US
From: "Wenbin Yao (Consultant)" <wenbin.yao@oss.qualcomm.com>
In-Reply-To: <bm3cp2vyw4rpllkwoxoxwrvsjxrtolcroqwx76bkpwmcdvx7ag@b6hvybyouq7m>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=fpOFpF4f c=1 sm=1 tr=0 ts=68a7cda3 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=AsWi3nSQ2um4y-UoW74A:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ue--VbxW6XDZ2gFkBC_z24PJnbeVGnAd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX+ClzKD4GFQ0A
 cX0aeAiU/krwLdhsb4tx48M1eNk+HeKK82fW+YHVlfvssA7TFcMLkh+qw/Aa1qWXt8uu8TSe0SL
 4iX3Jve6QwRzDe0kBsxotJ/J7eGcQFxb6N1mxaMJ1SuNLuGS/1ONi5G4Bn8DRsNVRfcXXzuMCJa
 +bf5YajZrE1xhAKfuxbg9BKcAYwX6oHgOgGVioCABwdQFkfwhwcFAB70+k4NVR3V7KNobfrrlcp
 ZJGpFONTZLKzOnLykH4qM4fYF/XcgbgmUenqfGXFiCuUBtcfU4UZpPR3Y0NU/R8k3R9LmAFIaLE
 pEgdKiISpPYBzfK5mEzlfsCmX54PyUk+V7odyBhhkCA9bJZFyPO62WZPA/YTHspMz3r5kAB4XZ3
 XPQwd+8OkYXrLGQhmHdj2S8CWTc3CA==
X-Proofpoint-ORIG-GUID: ue--VbxW6XDZ2gFkBC_z24PJnbeVGnAd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On 8/21/2025 5:57 PM, Dmitry Baryshkov wrote:
> On Thu, Aug 21, 2025 at 02:44:31AM -0700, Wenbin Yao wrote:
>> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
>>
>> Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.
>>
>> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
>> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
>>   1 file changed, 32 insertions(+)
>> @@ -5114,6 +5143,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>>   	}, {
>>   		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
>>   		.data = &qmp_v6_gen4x4_pciephy_cfg,
>> +	}, {
>> +		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
>> +		.data = &glymur_qmp_gen5x4_pciephy_cfg,
> Please keep the array sorted. LGTM otherwise.

OK, will fix it.

>
>>   	},
>>   	{ },
>>   };
>>
>> -- 
>> 2.34.1
>>
-- 
With best wishes
Wenbin


