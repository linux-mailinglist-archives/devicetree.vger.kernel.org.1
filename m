Return-Path: <devicetree+bounces-179743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B5508AC1535
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 22:03:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47E0B7AE93A
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 20:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63FD222332B;
	Thu, 22 May 2025 20:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C/wBmMOc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31A02BF3D2
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 20:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747944206; cv=none; b=cAi23D/9woRPQQtbxSg72pXHxzLR5Lo47tQCNw4x4nw0qEdYU2Thc0RCaKfg1I6l7XL8O5yuTrKh6bJFDHTtg1C6Kf3KTmk08slrrL21zZymvErka99npnG85ZNT1oKEw0Gqy+DAJk0mXGvTauBW2GKiGxspo3hduxVniOUgvrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747944206; c=relaxed/simple;
	bh=ld5qaH27erwn+v4cs4MEC0E8uCca4+YFeBxOrd0fjXs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m2ZXccTbT1Re1bXJsky32kNZL9I9hEirgCacrEl/mcJBL3guDyVQCxCgoBk7QIrxVfdyulj6Titespp4+xy3bBptZ4qGDluZLtnOMoOQgk0kOkEqZPn/oZaIpMsJsETYBc3lDJEefFgkLSMN58SC3Ddej7dZWMpvCsWZJ2jhUwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C/wBmMOc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54MGFo2S016529
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 20:03:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Cl89gNM5TIzVL4bs/l1Go7+vsZRrCb5lIMeR2G1ea68=; b=C/wBmMOc0EaTf82X
	Hkwa9K5RpXrO8NvvPOqi+yXeIkOHEOBUO6SvSq3qIqH2ftW89TWV+1EPTk/CfXIc
	A6PQIWlVF0YXyMHJJsQLH3wwxHvESvQJ0bA/+ioTQC+WaqSaLDDZsZZPTJNm6kpp
	Le+zwfBr8gP9K8dsvoFF4DwYzatUA+HWNV8Q8y2CA/+aQu+o94onRbB9VVMbQsRS
	jREeA1PvcpdZD9//f5poEmetxz2tH46W8HD0TurP1HSsjTUhvjPJA44s/6RIPJok
	vmp3g5pkdbPH0rQypJV+RofaugKTeADLjGQtLp9F2wFbhDb5i3iyc1dQ7O5bo6Ur
	yuiVfA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9yk81-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 20:03:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c552802e9fso206265885a.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 13:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747944202; x=1748549002;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cl89gNM5TIzVL4bs/l1Go7+vsZRrCb5lIMeR2G1ea68=;
        b=di7tPhTwYIxpVp6WQQiq5QpnTkQrMXqxAohsMCI8+Kcs0cUPD3wv/1Ey/PsIzzwciL
         BO0rcQpNzZVPtS/gqP65l94ENX0Nd8iiwL/Kapuxf5iQlB0Y/ZgIMf3gzXVmhCgOpuxX
         HSd3mgYk9R8DUZd+BUKeIpSpl2sRNoOvJXkn1Yt5FbJqxquxSVKk6Lrm1KqUAw35a9z8
         O+Lyr5Fi9CANPr7poGnvVj2/FR7n1/iW0dL/b9dOYdQo8fuP7jBpZVPULKQQXF5Kgz/1
         8xkZymKejUSVRdfmlR7Ed93y2vftARqKUrYD1jjqb7qbFmQqeFu5kE1DRkv3JyEwTxyp
         vIMA==
X-Forwarded-Encrypted: i=1; AJvYcCXMkSg9peexT1NzS4uzytoyqxaWA+sscLefhlnOSOZDI7at5rZ75V+Dbv9YA/mZkYuTzox5+NvUHgpU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz208GJQTYUBTAKERo8an8LCTLhzaUWRSZEpozZ/ZO8gWRrM6VV
	j4YzbhfzXQZnIXbPWZDDh8D5wclvldLk5NlrRewv+GsITZjjAazigz1fJdmvMFrXcYXyOblo3hx
	SZRXRaxIsWb+dA+7NaSReIHz1f831PiLfp7jUsMlp9zKPUV1dNiq+mhi/bczwZXNr
X-Gm-Gg: ASbGnctRjjnsP2WNn9dYM3UeuWtoxpUo3YyWQ1FDRWH1P97tJRoS9qzxTTneZ707GLp
	6mCYFUES6VIAFsGhFNjkWVCnX2BI7WjQy5tXWwGL6euCC7VAsEe7MGgwCPiiGD3oKc/yq1VtHz1
	pt35aGaaMxUqy7enMTCzdpwQ3lRje2iuLYyuTkFnEPtMXBOvIFgZMRPZXfkFijJrZNi9CGpUidH
	WS16ezOYUfp/8cqxQiNtMpMQAquhmbOWhKLjhWn25kInCVgrcf2uUPUwo700oOlIJy+YXg2RvGu
	WDeMD9s8lEURKaPh2QWLEr1BiCky62gNz0xp/uSJ455A/AGUbnQtE+mbnuAcpBT+0A==
X-Received: by 2002:a05:620a:1b97:b0:7cd:2992:9f43 with SMTP id af79cd13be357-7cd460ae593mr1598392385a.0.1747944202594;
        Thu, 22 May 2025 13:03:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdPVBb/3dMa+Oth0RFZpbRe4D5jwSzHxL54HpR9/3qg8beQB+fbLvxl1KJ7Gfry7w44GjJvw==
X-Received: by 2002:a05:620a:1b97:b0:7cd:2992:9f43 with SMTP id af79cd13be357-7cd460ae593mr1598389385a.0.1747944202183;
        Thu, 22 May 2025 13:03:22 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d0717c3sm1134397266b.65.2025.05.22.13.03.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 13:03:21 -0700 (PDT)
Message-ID: <55a85622-fe33-4b5f-81b2-4a4270fab680@oss.qualcomm.com>
Date: Thu, 22 May 2025 22:03:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] phy: qcom: qmp-pcie: add x1e80100 qref supplies
To: Johan Hovold <johan@kernel.org>, Qiang Yu <quic_qianyu@quicinc.com>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        vkoul@kernel.org, kishon@kernel.org, sfr@canb.auug.org.au,
        linux-phy@lists.infradead.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_cang@quicinc.com, Johan Hovold <johan+linaro@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
References: <20250508081514.3227956-1-quic_wenbyao@quicinc.com>
 <20250508081514.3227956-6-quic_wenbyao@quicinc.com>
 <aBxpMuFGKgWrw1TV@hovoldconsulting.com>
 <5fd4abe7-3621-4119-9482-de823b247b0d@quicinc.com>
 <aBx9LB_qQIvA0bj8@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aBx9LB_qQIvA0bj8@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=682f830b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=zitRP-D0AAAA:8
 a=COk6AnOGAAAA:8 a=lzpFBSrVIYugpwGNuwEA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=xwnAI6pc5liRhupp6brZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: ADh6g7kf9-Bpr6cMHJEwek_e98SiSnQZ
X-Proofpoint-GUID: ADh6g7kf9-Bpr6cMHJEwek_e98SiSnQZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDIwMSBTYWx0ZWRfXxKB9+sPps1+v
 mhk8R8AhKciVXvsvdcgL+wZajEIgdQj+Qcxkgx8T3DbG7+Vuk8clcqP8dtwYMDR+PMHVeW8HrOi
 wZVyPAgxInGOiUvQXV8E6nTmbWC4Lgat9724OUIfzGXHyX+9fMGWn3hrG3VbiHJg2t97MVHIEK4
 7Uj7bN4Zi75ew0+V3r2dpxKaCRbsxc5bueuV9mus+In4CJRSkiKRSLB3v4N9A3VO7qFSK7sdrho
 qRpCMsG2k/NPaqgHRCKV6Ztn5eFBJPgA1MxugXFRoODRQO0WuVesxJQVY3QeXt7mqA2ZLriuxJ0
 IfCTjmuTel50gu+DjC+IFrytK3SxTzaisFE2HHZU5Cq+cXTpSytxPdZqgOt5cIcb0j0G6Mt9F/J
 wNeNR0SZ5iz66lQxw/Vu57Rt0mZNHjZO53GJUndMI9ILJOLrlxbDV+nWKzyhQSoIw8+MRcrq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_09,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220201

On 5/8/25 11:45 AM, Johan Hovold wrote:
> On Thu, May 08, 2025 at 04:50:30PM +0800, Qiang Yu wrote:
>>
>> On 5/8/2025 4:20 PM, Johan Hovold wrote:
>>> On Thu, May 08, 2025 at 04:15:14PM +0800, Wenbin Yao wrote:
>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>
>>>> All PCIe PHYs on the X1E80100 SOC require the vdda-qref, which feeds QREF
>>>> clocks provided by the TCSR device.
>>> This still looks wrong and you never replied to why these supplies
>>> shouldn't be handled by the tcsr clock driver that supplies these
>>> clocks:
>>>
>>> 	https://lore.kernel.org/lkml/aBHUmXx6N72_sCH9@hovoldconsulting.com/
> 
>> Sorry, I thought Konrad had convinced you.
> 
> IIRC, he just said you guys were told to add the QREF supply to the PHY.
> That's not an argument.
> 
>> If the TCSR driver manages these supplies, would it be possible for tscr
>> driver to recognize when it needs to turn vdda-qref on or off for a
>> specific PCIe port?
> 
> Sure, just add a lookup table to the driver and enable the required
> supplies when a ref clock is enabled.
> 
> As I mentioned in the other thread, the T14s has the following QREF
> supplies:
> 
> 	
> 	VDD_A_QREFS_1P2_A
> 	VDD_A_QREFS_1P2_B
> 
> 	VDD_A_QREFS_0P875_A
> 	VDD_A_QREFS_0P875_B
> 	VDD_A_QREFS_0P875_0
> 	VDD_A_QREFS_0P875_2
> 	VDD_A_QREFS_0P875_3
> 
> and it's not clear how these maps to the various consumer ref clocks,
> including the PCIe ones:
> 
> 	#define TCSR_PCIE_2L_4_CLKREF_EN
> 	#define TCSR_PCIE_2L_5_CLKREF_EN
> 	#define TCSR_PCIE_8L_CLKREF_EN
> 	#define TCSR_PCIE_4L_CLKREF_EN
> 
> That mapping can be done by the TCSR clock driver (which would also take
> care of the 1.2 V supplies).

So we had an internal discussion about this and while it may work, it
would only do so for some SoCs, and maybe only on the surface, as the
wiring behind it is rather peculiar..

Plus, not all QREF consumers have a clock expressed in TCSR as of
right now.

Konrad

