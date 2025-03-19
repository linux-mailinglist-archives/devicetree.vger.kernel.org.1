Return-Path: <devicetree+bounces-158835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD50A68426
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 05:17:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CEFE3B9630
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 04:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D799C210F45;
	Wed, 19 Mar 2025 04:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="djqIU74c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A37720C03E
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 04:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742357831; cv=none; b=PDFjs645PXa5gW3JmbGIZFeumAf9bvCSfIs7+VRIpKHPa5LvpMle65IFVwNSMHAPPIHQoiXBfQP7HXKqs5hduObSQU+un16hT8ISCg3uIGimRggnVW1ABYHDPKGeJ/2B9hI2M0uh7s7Z0uCMvqpswmZHmDTPtYPBKyQCVHS+Q0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742357831; c=relaxed/simple;
	bh=qZN1BAH0i4cCOVb1K3r1yUu2wfYtbm7OV3dX+n3+X2Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uJBmP+n97cNORS4EB75bmcrpKAu5qcsds8HgM0eRFCKihatp77i7UkeOyJYpq5Y9QeorUUCanrqbEGVk2+4qWPOEFMuLZEsFtALLfTFcwHfuh8pvZ39wyb1YyYOzPlUGFiLoSbeB0aThlpOsTD0A2STkBG6+H5mKEBCE6LID2hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=djqIU74c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IInA10029840
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 04:17:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hjpICs2XfxuOUVdumFWXYVzyYb5hofcnf4+bty8z/OY=; b=djqIU74cfcSftdds
	xbzM3KRDIb47bGntZJY268Xh8LFqUacc3OFuiiGvoouggEwOt1azYazyk8QmDKJw
	GunOzm8ur6U/EVHrWS+qAewZU3oVc42/gBy9EnqiAxJ3QsPMjHJPdTN4xIoW6xXD
	g8y0Y5Wzk+B5Vr0ZmCBDw3CCgiPrsf9Ry234pl5EHiswIR6SrV+owiCDWbeVC8P4
	kv1kUUhKHIt+VjQdBHWSCRlUImVjr9tdZdsV4QJ52NyfyBDjUa+rKM5hKuebYJs/
	8ylVLmiXKmlgnRQH3Q8BTYUD6FnwTvkj9rQQErM4Z7X/M2OBOOFu1B2xTUZscmJA
	QP6Tkw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1uu2atj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 04:17:09 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2ff6167e9ccso9711751a91.1
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:17:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742357827; x=1742962627;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hjpICs2XfxuOUVdumFWXYVzyYb5hofcnf4+bty8z/OY=;
        b=KZXtrEi91ea5s63bvMdphw8uSan37Tds3nztYXP8826Yfm/BGTkSertGm/OyvZqap1
         8CTnz/tOaf8qk90IPnINZ6dMUrl1OIPnU1xZKzfyITDB8IKc6uyzeun3D7MjD7iGvDu5
         ec9iXChSwfWXEivvs2GoImxLn/AjGKojo5q8kBRpHuaodtPIyj+My1A7Tw9sAoNnNdG0
         rD1wj+/Qdsp94MvBAUFfqNAwB07A4V2GcdXA8fBzgnr6Baoow7C3dcOigrk5tTKjDCV6
         IJUWCdngyT7AQxP1oDUiduL/5Pq4oRNaHdzfb01Ooz4kIGD6BXN9LEqTmbf+Df6UrZHK
         3Mug==
X-Forwarded-Encrypted: i=1; AJvYcCWX8FnyhOS0P7PJZtBI0px5zjxFpeZZx1BWWeo6NgzSG3MiiWdpH16zo4fdJP80r9i5zg10WTNUeKmr@vger.kernel.org
X-Gm-Message-State: AOJu0YwVuiEIpLfGXwXLpwFjuL2nkhvROUtUTI0MVwh0T1+MPEDeU9GP
	HCvti4NpxJtK9M3idqqMZpyY6263xiOn7Zd2coAfGOI3d622ylobhPePNrTos+n54zUQq25+Gtl
	DHJBwdfpGccgmToMFGklNM16cnjTfmfldlMZLP952i+q0WIOweGm9xNKtq8lnzZ8exLh7
X-Gm-Gg: ASbGncvqS2pCt/g0pu6g+OIwnATGDdRX3WW8hc/BvBTCxpLrBJe/lNSrWgdnnsTSdAM
	BruYZUcr2vyZ7pqNXo2aJ6nnr2b480tb4CkpXqBKUhDxLlJvoOmyT4vzEnbLPk0r63TzL9YzTDi
	88JDwYtUT+RDpWge13UXaMHej6an7Tz5Kxv0bfJZRfBGAixLrdCgaSrY4DZ1abxqTI+iRzpqWHg
	7F4dJgAX15pwrdxcpAvKamjzGL6RRinQ4Ew4y1YS75++Cmj98sP1uX2PUCNFQvWHKiVPzFoF5wF
	H0vQiv/k0ZrAV5A9jgeZF0AzHAwzKLf9tCLG3aQ2+vJqOeM/edliN6no
X-Received: by 2002:a17:90a:dfc8:b0:2ff:6fc3:79c3 with SMTP id 98e67ed59e1d1-301bde5fc40mr1788284a91.9.1742357826934;
        Tue, 18 Mar 2025 21:17:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwNKEYllphJN6ZLzsFCOike+d+DjF4hTYhMKZH09eLwIENTWzQC3Jrz0zHXUmOsOC4gRN+0Q==
X-Received: by 2002:a17:90a:dfc8:b0:2ff:6fc3:79c3 with SMTP id 98e67ed59e1d1-301bde5fc40mr1788249a91.9.1742357826539;
        Tue, 18 Mar 2025 21:17:06 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c68885acsm103557585ad.32.2025.03.18.21.17.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 21:17:05 -0700 (PDT)
Message-ID: <43eec351-4e1b-492f-8717-be2c479edf43@oss.qualcomm.com>
Date: Wed, 19 Mar 2025 09:47:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: ipq5424: fix and relocate uart1 gpio
 configurations
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_srichara@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20250318064939.3638381-1-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20250318064939.3638381-1-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H8Pbw/Yi c=1 sm=1 tr=0 ts=67da4545 cx=c_pps a=0uOsjrqzRL749jD1oC5vDA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=LlwDK8VgIywOn4IyDEAA:9 a=QEXdDO2ut3YA:10
 a=zgiPjhLxNE0A:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: YhJAb49hcof8YKNDSdAts2UDmLsbDKKy
X-Proofpoint-ORIG-GUID: YhJAb49hcof8YKNDSdAts2UDmLsbDKKy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_01,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=698
 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501
 mlxscore=0 suspectscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190026


On 3/18/2025 12:19 PM, Manikanta Mylavarapu wrote:
> Update the bias configuration for UART1 TX and RX pins to ensure correct
> settings for RDP466.
>
> Additionally, move the UART1 GPIO configurations from the common .dtsi
> file to the RDP-specific .dts files to account for differing bias
> configurations across RDPs of IPQ5424.
>
> Fixes: 1a91d2a6021e ("arm64: dts: qcom: add IPQ5424 SoC and rdp466 board support")
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Reviewed-by: Kathiravan Thirumoorthy 
<kathiravan.thirumoorthy@oss.qualcomm.com>

