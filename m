Return-Path: <devicetree+bounces-230058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4FFBFF56D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:25:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FB963A497D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 06:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FA17285C85;
	Thu, 23 Oct 2025 06:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XR/Kj5zS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5F7261B98
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761200730; cv=none; b=ETQ7JmFAplqFuEc95Nt8JpPJ6isCONDGf1Ecp0HML5yYdhYMZX3eh69m1CEDibLJ5ZHd0bnwAmUBQsFi5yfbSfXoLAoXGXU6sCt0JqAnwTa7QlAuGYvoPBKOMxL78uudIp/5zUBHX6dKT648Daypxsden91L4g21pctF3G0poF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761200730; c=relaxed/simple;
	bh=eK8S6eT6VQaIYZMZfBJ5y9XwVsmR40oqMMGsR0Jy69c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l3lBuXEfMYegUr8WJ8KIr2kB+q20UGOjbPQyA5y7OLm/O5/BVNDy1vum3okgyEJ2Vn+JVaC0Ha9T2j7OztlKTfMRCd+z81zMmLXDB+Km04mbGuKriWR3dkzybSC5rbvVjBc3wtaMV5F8Yf0vDxVjyWHbHDFMPao9LVqmqlZkxTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XR/Kj5zS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MIemZm018586
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:25:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JCRVrM1iV6c8egPBONX4RhP+y7qVy2uAhpWs7p9gCe0=; b=XR/Kj5zS8JpEY+eb
	jdXKc25NhJRYSEc9CSbhPhQb94LG8OoacpoDsk5WceFpx45I10hdEa5/GeIQIS7f
	XuWPaee8yrmO+9YaVsiuTNaM3VgSbLyDM2ggp9OYttbdluwyfcSXMGdx9abM/cYM
	V7bopgx/t3wrt482Egs6vgJ5VRLao4EzvWPilm956zi+/jk1gd5mTB4jcNCUbbNh
	iAXujezxPIX8AZ/gHbBBVU3abEg7COG16sqFvjJN+RiBg8npkdru2MxOX1zvT7kX
	cRMETEIcPDkRtIU2oxUq8luuEbYVM+FesMFdzKts8zE33zLp0AH/TdrWQjBuZRsx
	avjeUw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v08pqg5h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:25:26 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2924b3b9d47so4696555ad.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 23:25:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761200725; x=1761805525;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JCRVrM1iV6c8egPBONX4RhP+y7qVy2uAhpWs7p9gCe0=;
        b=HDN09OBCC45LOOmscY4KQs2g/a90IK+badtdWhpwCmxMWh4Z3Ds/XohawA1I8vYdYk
         ztyxGO7JR0r5dg8+kZPbgyle3ZWL/VsKCnp6xlJsEfjWqMvCZn0pob0aJkUAwwKHYDK3
         m4ONStwlIln0lw4/KU6icCut0kK1ckRD7ospS+WxnkJWAlOJJZp4nVGcenZSx3/L7a4r
         Dpu4JTFPGieHmfQAmTnsriP8JUnNQaIfGBAwfkegY9sVZtUz/aI57I7H8kzhyCp4aZM6
         qlfMFSuiQFyLvTB3Bvx+UzBp2U/3+2iURXmfW1evtYRVU/BaqSgEWYeqzH3R4stZfspn
         /C9g==
X-Forwarded-Encrypted: i=1; AJvYcCUrRzJufg6YN+HhN308wdDhAPD36wpd62ofy7ZLJ7YV2k7na8ApYJo8FVF1Tr+3UxjTDVEUDZ75h3Wo@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6BwxMzaF9cDU7EYv8YNFjEIB2+KhuNejGG59sUPGAOk+nrBVR
	m2zc0gZQpHXqWYM+IfhqkjzEjcMsGOng7PXSZ0uQb8HxeEjyUqDngagqKe2pBhO/Ztd/v74YUQT
	3aoCbHW201Kp0vYo3OqM2hxS7XfwCgkFW6YDAMrdCpOPiJaqKZ/pUpWcs3yQeKYUg
X-Gm-Gg: ASbGncuPF+HPmu2Yj0hz0B4avqhx4RDPMSODN7cXXDtucQCHzD3/E3C2fBFew2GrCr/
	UUD6Mav65mO/YzjqiPlXCx9bmeZa5vji9KC4Ib9hdYqDgzd3r9fAWbPFbQjlctjIIa3i30KSaSU
	UlqdBItkldp0kTIpSZ7W+NXxLbmtRZDesebpvquur3OqfNkPHshX04GymsUEAX6+gZRoPI9X76c
	3RIzxB199a3iigWUUlhMQC8KG6gq39CJbs3tn13YOjNE6yg56q3+YEjoGf/8VL6pm74XLqSJ10k
	VuiitiF7Uuoyvej4xwPmSJRfB51bMf9TrH4ubJ77P1QUDWYYfPoTYgvyTii//Mxit3pXPonkm5v
	LSynaNFoHk9qf9AKaDWpYfF6T9LT0y7+XNDeGJoS9ozGIExHAEzhBaEyTLSuiSk93nQ2ydw==
X-Received: by 2002:a17:902:f548:b0:276:76e1:2e84 with SMTP id d9443c01a7336-290c9c8941dmr293186355ad.3.1761200725250;
        Wed, 22 Oct 2025 23:25:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFd2/d+6gkUf73DA/7Gn22CpH9SZH0kB27SuHl3ZLpVxevmFi2VvJ/lFTT9aCIgsr6cd9Tlw==
X-Received: by 2002:a17:902:f548:b0:276:76e1:2e84 with SMTP id d9443c01a7336-290c9c8941dmr293185715ad.3.1761200723794;
        Wed, 22 Oct 2025 23:25:23 -0700 (PDT)
Received: from [10.133.33.160] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946dda86f8sm12196155ad.1.2025.10.22.23.25.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 23:25:23 -0700 (PDT)
Message-ID: <7bab3dcc-ca29-4d71-8156-7104c4bce614@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 14:25:16 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: qcom,ids: Add SoC ID for SM8850
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251022-knp-socid-v2-0-d147eadd09ee@oss.qualcomm.com>
 <20251022-knp-socid-v2-1-d147eadd09ee@oss.qualcomm.com>
 <118dfd79-f65f-4845-9436-b6be99a5223c@kernel.org>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <118dfd79-f65f-4845-9436-b6be99a5223c@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMCBTYWx0ZWRfX+KmuYPBTgNOW
 hELz3fOVgM7k3sH+EGLs2hjOC0aceXjdvesGQWk3sJBvp/bnp4nkVG30LZ9+ZWyFweLt37X8EbM
 P+Vv+JU7pTmVdj1QSJ/66r4eGPfCkDOP6HinA4OZ4ao+PIA5ppEPmcNSANu4v38rV8/TAs7VSmn
 yW9AxWYVedlZxERIytYZ60EIUGt2GdQ0FJNbMHz/SUEhcMjTF3IdbSEcOqpvS5N2tASuE3wtpeq
 96T7KPq06f3eu4fBwo0BHUbRkc2tGh3zc5ilf2GYuPfrCe0sV+VTp/3zkDNnz8I9v7qBx3mMdgy
 Zr58+q6DM0NAyw5R9oGYVabpbs5s+G7PTiSTL9WPZP6lJXSokFE8vZBan7ILRrHvdmGpax6p6vg
 iIGkbijGHTLdb/v5GWhWIXp07qcykg==
X-Proofpoint-GUID: O7dkepblH_CyNjCllr7be0wpWd9yseij
X-Authority-Analysis: v=2.4 cv=Up1u9uwB c=1 sm=1 tr=0 ts=68f9ca56 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=MmHyG1FtGRAvTinHQCEA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: O7dkepblH_CyNjCllr7be0wpWd9yseij
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180000



On 10/23/2025 2:18 PM, Krzysztof Kozlowski wrote:
> On 23/10/2025 06:57, Jingyi Wang wrote:
>> Add the ID for the Qualcomm SM8850 SoC which represents the Kaanapali
>> platform.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  include/dt-bindings/arm/qcom,ids.h | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
>> index cb8ce53146f0..19598ed4679e 100644
>> --- a/include/dt-bindings/arm/qcom,ids.h
>> +++ b/include/dt-bindings/arm/qcom,ids.h
>> @@ -286,6 +286,7 @@
>>  #define QCOM_ID_IPQ5424			651
>>  #define QCOM_ID_QCM6690			657
>>  #define QCOM_ID_QCS6690			658
>> +#define QCOM_ID_SM8850			660
> 
> 
> Why no QCOM_ID_KAANAPALI?
> 
> 
> Best regards,
> Krzysztof

Hi Krzysztof,

the codename KAANAPALI is not enough to distinguish the id, 
for example, SA8775P and QCS9100 are both lemans but has different
id here.

Thanks,
Jingyi



