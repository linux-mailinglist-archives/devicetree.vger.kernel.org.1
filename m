Return-Path: <devicetree+bounces-156962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 613E2A5E190
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 17:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1582F18862C1
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 16:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B68A61C84CF;
	Wed, 12 Mar 2025 16:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E5TmNG+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1AD1C5D50
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 16:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741795965; cv=none; b=AJxx7IFTrKw726mu2zvSbk1rr+Kjirw4Tlx08OgGKwVFXd8Z2mfhDiqF4f27b3390Gu1962IDONj/qvmHY8eE1c8Wc44AIWRTTj7uNBFGyp0KCWX21kmnSHOAvjh552SIRh+ONuqMLdFI8v0LDGgDbEF7jCI4cvzI2Elb9KRvUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741795965; c=relaxed/simple;
	bh=6hd7rxQEJBRWkVWtNZOc6NGDa0MS+r/N/ofCsnrZ8og=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XMlvt6efHDPpUHGEqxks882qxWjY3kV3qxPPNLNhy/1/ojh9APa9hufrWO1+UAkOwhyQcFZ9BRF+LNMaYUhdARFB/RMMrywe9Ijtp1CqhiBqkLyARJ5MLpZ/fo0ja7R3njscUCDcMPxHG36T7NynrB06CJqpkZMsYnOp6Ut8sv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E5TmNG+C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52C9ua48013284
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 16:12:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5/1RpKzdOYchhjQaev+P+46NhEzCeI0XyMwDm3zJ9dY=; b=E5TmNG+C6u2U1FYE
	+CQ4/JBMxaC6/1/IOuySdpXR7Fovbga8ccSb734PFH6QFPCEZzDGC3GC713ZzDX4
	USIKR4tVqNaUypum7kLfdLsqIoUJS1UWdm1DhFRwqiJeiNNgD2EYIwmYorTnfOc5
	h2E9lVNkkxsI94lg8WBXQVjjTbd9HnLlrzhntl99fmIBWtZ7y4Az5qUioCf/1Kyo
	JJ5VSbNQgnw7bMElp/e7crO+FIqKgthgOu3D+SMAaewWTivYLe6HXifRhlxpkpvR
	Xpq+gcdptdXcX13Q14wZNKaS//AxiEFUDp6CadDqWryPMlAjfkcuHUHugx03cvq/
	UIYGag==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45au2p304a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 16:12:42 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ff798e8c3bso69814a91.2
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 09:12:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741795959; x=1742400759;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5/1RpKzdOYchhjQaev+P+46NhEzCeI0XyMwDm3zJ9dY=;
        b=IyW2ICfdZqUJ5vvbeszEBk+L3F7CrX9B63++OKUgaNRZ/AoyF5sQstWKjKuEyOkIje
         Tl/E8W0z56eejYN3cnKJumhe4dpGbgWT+Gz+YteyNLd/+7VnARq6ommaRNgglbqDvSy5
         xR1UMfYPa9o7cejARWjjyqV+47PU2LunGhqwMkgNxMURQvVhdN2aj+1WED4spb5sbyZm
         hZRd+X1CM1Vgwkz/6kvOGoLTRBBdCyWVEUUcYtzPsJbq96qxkh+LNoSZrxJ816lxfKQd
         xN+Vtfx1YlKXO/ea4tOXAM3Hu5pQdEvf4rGeO1H1aT+Aptj0ArB7LCKAwEMBv/6xb+ZX
         0R9g==
X-Forwarded-Encrypted: i=1; AJvYcCUrvPftKZIdponNpcGy/MXOBWIxz0Kf3OwsJidW0DUMf6gicUzPKCwYdjxIS8Qz1kS39EvSeS6AXCHx@vger.kernel.org
X-Gm-Message-State: AOJu0YxIJXYwFFUaiu0z2hjEde/kd4uG6PhxIMQ5DLNICXMGn5Cv4uuS
	/wg2YIjiCGrrPDO228FnAse6Mfrn//Bsix66cRYb0WFeUiz1vzEPRb0Mm5O+/p7AGenV2tF6gyy
	zSVpcJgi/MUgBM2ZT63kl/ds4G81LhtDtF4h4Mh5M6iaR6mV4tyuX7G1UY+40
X-Gm-Gg: ASbGncv4HtkD9UlOcWqX9Nx/mYpYHM27LW3tPZ5Pj8Gy82ADO4cYEBu45ZUsEp1Cyxt
	Rk+LlSRZ7/4xZWogaBRabTuz1iBOnBS8a9KkTHOuN8xP8OZUt75CBjUDznNlwbolit4gbrIyeR2
	bc/amhmKJ1g5hcsDUUwu642feEpruy8tfStxO7quKDyTHUTWPnk/Ue7ResMdKkvvWQpfqryW7C9
	26v7hoJOTpyM5PQo41S/gHeOe5JMiLC7/idrJyctU08x88NyF453SvDKMRf/5+iyyui6qv9+SPQ
	T7uuUpxqYwPwBbGI32IzRV6wD+5dTOAxnPVrKDaRVdhQvIob5khbF6guyg==
X-Received: by 2002:a17:90b:38cd:b0:2ee:741c:e9f4 with SMTP id 98e67ed59e1d1-2ff7ce8e5dfmr33019605a91.11.1741795958665;
        Wed, 12 Mar 2025 09:12:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsJrVBVvsHyhb69yiGojX9yNVwRl1fqH3O7J84B34D/C7flq2CKu0AwOv2Jv9wq0SwKWnDCQ==
X-Received: by 2002:a17:90b:38cd:b0:2ee:741c:e9f4 with SMTP id 98e67ed59e1d1-2ff7ce8e5dfmr33019572a91.11.1741795958249;
        Wed, 12 Mar 2025 09:12:38 -0700 (PDT)
Received: from [192.168.29.17] ([49.37.215.201])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-301190bbd78sm1984931a91.39.2025.03.12.09.12.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Mar 2025 09:12:37 -0700 (PDT)
Message-ID: <282f1470-bab7-4f1c-8ffd-a6037736489d@oss.qualcomm.com>
Date: Wed, 12 Mar 2025 21:42:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: ipq5424: add reserved memory region
 for bootloader
Content-Language: en-US
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_varada@quicinc.com, quic_srichara@quicinc.com
References: <20250312094948.3376126-1-quic_mmanikan@quicinc.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20250312094948.3376126-1-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=HP/DFptv c=1 sm=1 tr=0 ts=67d1b27a cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=d+lWxUpqeNYAcJEdQAshKg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=9vFMFxKz7TJhonvdC4kA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 9lZjn2GmaxtGLN4skT73vYm3cVmgraRk
X-Proofpoint-GUID: 9lZjn2GmaxtGLN4skT73vYm3cVmgraRk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-12_05,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=473
 clxscore=1015 priorityscore=1501 adultscore=0 impostorscore=0
 malwarescore=0 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503120111

On 3/12/2025 3:19 PM, Manikanta Mylavarapu wrote:
> In IPQ5424, the bootloader collects the system RAM contents upon a crash
> for post-morterm analysis. If we don't reserve the memory region used by
> the bootloader, linux will consume it. Upon the next boot after a crash,
> the bootloader will be loaded in the same region, which could lead to the
> loss of some data. sometimes, we may miss out critical information.
> Therefore, let's reserve the region used by the bootloader.
>
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Reviewed-by: Kathiravan Thirumoorthy 
<kathiravan.thirumoorthy@oss.qualcomm.com>

