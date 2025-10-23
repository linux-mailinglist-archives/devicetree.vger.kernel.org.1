Return-Path: <devicetree+bounces-230260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 070DAC00F4D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:03:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6F010349E26
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08EA830F94C;
	Thu, 23 Oct 2025 12:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hkYZzssF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57BD30F93F
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761220975; cv=none; b=rWPdYKlS2kfaTzqhzFT08xdGMGb+SOZdKmdlt6xdpgGjPCpC4XquxB4Qbw4mnYma7miLBIqlnFO04Tv2Rc+yVZlzWIp5o23JTWLaqllbrY4hccSp8abpJIfj++d5jvetpHej9w2EJHipLYUi2GNdlw2CcYIAh4uc2TpTmawiSg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761220975; c=relaxed/simple;
	bh=hfHWyxVNGaqao+R4E2QG9ynbPUKwYD7iwQ9NJmtkuN8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sTBagTPTUOrJTsa79P0/N18SoBUJq/iJEvmNN6DopqUdDYr27oQkFn+WMAhO2UWCspUS3Wh5z1GbeFAyBvqbndUMdVE5ozbrUmQa/Pc0+CMK8jAsdSjvDpwGe5V5eQ6eFQEJzUECZnb7HzPj+879n5bfvbeywJobTGV5PT5n5Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hkYZzssF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6m4m0029729
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:02:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y0aZaieSuQfEQiaRXPzHRxz1LHJpL/jxRnElnXAHQ00=; b=hkYZzssFwV2Jk/VP
	Or1UkHDtl+OCssWsyMXSrss8YPIrs8IQNa/xSLaFxmZpL459R13jJTjsil/n4/gz
	qmDEFbNOVKHDFL0zZiduSekArgVsJVv7ingw2y1cM4EMdu8+8ziPdoNH6xKN6zP/
	1qKNWfZEcFQNtNKA1KDOaFxMbg5P9ke3YTC+tlWVVMyDQd7531vcA8Enxm2ElCwY
	8d/hsXzGHGtNMGvBtdGpzHqZjDUCj8TtGVvwUN8pFhcES70OEu6f+hgxgKWXb38Y
	0HK8lhn06ZCpJ7t1tqdsKB/6B4Cdosd6YQU55wSm3w/xWBjfeEBQ7O4n3LANeX2V
	+6F81g==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge898c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:02:52 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-54bba00a238so4790e0c.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:02:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761220972; x=1761825772;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y0aZaieSuQfEQiaRXPzHRxz1LHJpL/jxRnElnXAHQ00=;
        b=Jh9wwy7HBf1aMUvGnWNjl2koFfsP8JcvhUoiu7W9XGwVKkiMU/3tSBMsXRsjk9g5J3
         Sq+dpfcaAFjlxkY8PwkmSF6uuiBvrEpOXKq6xthivSMsbwS62UXpbOlD2QnktP/+4z6N
         W8SlvB8tImNc5KW9JZ6qjn2n9pSs6eNhwhpbm9cbmVrJzFvTLuouUnhpetAnFOHTO0WY
         bymWPkT+rxjAQSO0d1Ucyb71f9lNCbfJB3PURZU9wlgj8KQ6rmpux3jlwykM97JwOCmE
         SIytNCqzYKpBSJBDrfvYGw6TM6DUpRBHNnq4NvmXzkEPJmno+0l1Q6onFpBapB79ZT0Q
         Vmvg==
X-Forwarded-Encrypted: i=1; AJvYcCUkqDJk+hGTcZldbaDaTNzUwUUoYcFCLUBQURD8fUQd4jKN4XGDBMUP29OOcPJ88nRURdLGLf96mrjg@vger.kernel.org
X-Gm-Message-State: AOJu0YxQqBIAfxIKgO+k/N+JzN0HpuVXM3R/rOCx4ejXPEv7+R0+uCCi
	Pa/17VTi8jYbAxBOgmQoX1oMFPy3TZqMki/xkwoUX8uV3UMoYe3AykNEOZKcuheHkw3lHnuQdV6
	zkSG8PDAFFfios61X8poxFqjonuPcCDY8cihV1sBDe0uC2dYePSR0RDJQnDoJw50E
X-Gm-Gg: ASbGnctueuquuK/llFT54wFN1VVq0LuBy2jnzGXb/4Ao4wtUENWR3dGtQjRHEHTeic7
	HzmtVOBx1eNkX2/3+zGE1IzJVOYkva5iH1S+vRBwhiSurYNVE+Xv7ugUZ8jsCXmHDAc6gL36ozs
	jeS1xJtfsC6hsyQoZWoaV3HW4rMjUeYwUJ7SCJ4JSIdPj/kVHAiNoX9ZpyQH5YhM6sBjRePkTJR
	JddhYEEiHuBRmGxeGXxhiF1qP3eJ0ZaDexGe3xgrTCj6aZ8qLv2OuJlRgVarDXmfsu5u6Mwkq2u
	/S4LtP90kSh+54Ut4e4tbdGdsWy/kHMFdWjd6FZlB9dNmBSGK5QmqyFTklNIN3CVhk5hC3dSIAF
	MZ6FMa+twDG8J8xLaJaZEn3JZLo0jTRalhYrjmSf9I0hP/2QtbHKvUzpt
X-Received: by 2002:a05:6122:82a3:b0:556:8d9b:70c3 with SMTP id 71dfb90a1353d-5568d9b7b78mr1297683e0c.0.1761220971153;
        Thu, 23 Oct 2025 05:02:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGI7NlxxiPR1mSCsIzjh6laRe8aVKmqjEwN4VIQypjOlNUn1ZJqRFIU7gS95HufUjGblo+7VQ==
X-Received: by 2002:a05:6122:82a3:b0:556:8d9b:70c3 with SMTP id 71dfb90a1353d-5568d9b7b78mr1297635e0c.0.1761220970676;
        Thu, 23 Oct 2025 05:02:50 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3f322e30sm1526903a12.27.2025.10.23.05.02.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 05:02:49 -0700 (PDT)
Message-ID: <ad906eb5-c08f-4b66-9e37-aaba99889ad4@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 14:02:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/12] drm/msm/dsi/phy: Add support for Kaanapali
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-2-yuanjie.yang@oss.qualcomm.com>
 <omlhiywjr46ik6bj2aiutgcf4aifen4vsvtlut7b44ayu4g4vl@zn4u3zkf6cqx>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <omlhiywjr46ik6bj2aiutgcf4aifen4vsvtlut7b44ayu4g4vl@zn4u3zkf6cqx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX/zunr3YJOrNV
 dlCxmqnV61wqP0mKgf/bMRQZFh80Y6lZZFm9vLC7TLXK0u3sVHKm8a/V/lLRetyLvDgcGhFC0Yd
 G21q3ZPkrxSHlge/BOo65PzN7sCUI+Sn6WoAFSClfYS+azrkMMSYmAW0Jug7KGb4aPk/5YoXAIp
 LOM1A8uY5W2goeSq9RZDiNV1uv1V3K4gWhN9Xm4Qleh0G4wvVyldSoMVSHjFYTi8utpZ6YWAmyZ
 jNUubHVLmCrbXsWqzxDA3pqRB8FS87foN68oLWUC3JOFpWTPtXDTxJkAbTDvP9kxMU6NTVQivzW
 e7+9UyEF/c8Rd6FE1j1W/AgXqXxIXcraaAy/QUxghbKGbR98l+q0QSRO/xUG62BIOGzmH0tVYkp
 oAVvpex4lpvfA5dcj2kZPqskWl9jHw==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68fa196c cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dMqN5BQ3aGG_qev9F4sA:9 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-GUID: OuCi0jLXEFPNNHFtIkNqmYcIPYa4QANe
X-Proofpoint-ORIG-GUID: OuCi0jLXEFPNNHFtIkNqmYcIPYa4QANe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On 10/23/25 1:48 PM, Dmitry Baryshkov wrote:
> On Thu, Oct 23, 2025 at 03:53:50PM +0800, yuanjie yang wrote:
>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>>
>> Add DSI PHY support for the Kaanapali platform.
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>> ---

[...]

>> +	.io_start = { 0x9ac1000, 0xae97000 },
> 
> These two addresses are very strange. Would you care to explain? Other
> than that there is no difference from SM8750 entry.

They're correct.
Although they correspond to DSI_0 and DSI_2..

Yuanjie, none of the DSI patches mention that v2.10.0 is packed with
new features. Please provide some more context and how that impacts
the hw description.

Konrad

