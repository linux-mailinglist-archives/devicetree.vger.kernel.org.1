Return-Path: <devicetree+bounces-237480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA4EC5188D
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:01:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92C9D3A96BF
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 126D42FFF94;
	Wed, 12 Nov 2025 09:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fB2en+/2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jxxSIL4p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C6A2FFDCB
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762940429; cv=none; b=pAUIBqihScXjIQ4zKsWRIlAOtKcIm5HYgxvAJXfNTkuTP4Gz/ubtFc2RobWS8aiwbYRw3zFMtnVoUBRdJSRXLhsr9R5mQrOc4AYHwhGDdgkCA1n/9afmIwIqIaymIyrl2v5jeugNOhGRGCRRTQSz2DjrIAswpEWSs6lqxZCO1AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762940429; c=relaxed/simple;
	bh=yEpfRnXwpng+YAbKiDkRctzbO6mZ6cOtzRE8XZb0WYs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ib2SOt2Z9qHnLGv0YCB8gK5B/NBEeZoACk3jdVmxuttL0TM5NWUw9Hx5E2OrY3QvebQMFTLA3wwtGHjIfDXYsgkpPN6SbGnWNF3mMzJ7m4KPxjfrvvuZu5JIKYf+xiUAbpmivc6dA28JxJI/elOOIKO4unoQ16YK/9GC8EuSDT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fB2en+/2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jxxSIL4p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC3H7Qd4052806
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:40:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	niMngB1STMCCBtBn00XVFAnSjuGH6D0XJXQ5Yz9BtZ4=; b=fB2en+/2vl1MO2zV
	8TLZYpt+VTsVSs8oGF2+fJ5IeBxHZIQeqigEmA2Q1i8TAxVVKm0NtgwAaEc8OI3N
	Lflr+EdWdg8s1fq9Z9EJvDM1/X5oJhTFoaWjvyFLNuq1J7Rm7mWJcWfZxtqO2Lsk
	LWBqBAKY+mKKt1S+npVQLMvh9PFqyjtgi8pi6iTMln1bNDy9PoSry3UKbcioAW1S
	TJabnXJ82RbZeikCXi18jCUFFhMO1MPyiJbMmZzC9O0M5W5wYtKCKTBXA+5uAA3V
	Xx9AmNP1sp0YLmOjm4RmrGZPCN19FY6uidJjW+MUGY9twyzEecjXDrAMitLkd/XJ
	qvZtCQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acj6v94f8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:40:21 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b227a71fc6so23219085a.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762940416; x=1763545216; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=niMngB1STMCCBtBn00XVFAnSjuGH6D0XJXQ5Yz9BtZ4=;
        b=jxxSIL4pUEMh1IYrt4i3IYXWUNfTS/r/nLy9fkFuaHNQScLLX5NJN33kzx8GqaP2GQ
         WpLnwwzpPylFZthYhlyd1BYwqmlW51wEGnaDC7OZFg1pJx39EAn1aXJrK6BwQn0/3Qc0
         NUBxc1ltoosd0dKlMBfyqqvmuWeD9KojgLWBQ5a0RaZKuxXyPY4XWEs1/7erekNMQKG4
         zIyhFeYOBI7UBbh/qXbFgAZ3hKdeeWatjvH0mVmmYBjzQb03cYXrcWfLo2Oov20Ss3dB
         6vxX5O9EJw4vrvcly1a/SfT4iei67oKz08dp5CJZBF7dzEOt1TMKLWyNUhTVXSj39G6Y
         WZWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762940416; x=1763545216;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=niMngB1STMCCBtBn00XVFAnSjuGH6D0XJXQ5Yz9BtZ4=;
        b=kMyLRWCLX/LVVG0X7iVxUPfK17RAo8I/aUBSLVQwGGI945MqtkfVgNvDA0Lj79ijST
         C3xjGLLHT485bx96PUCksiZIyrWJot19Inu9z3AaxyySNkY6yLcmAth7W/uItzLqhxo/
         cY3dzJY1jJj+3KkNf2oLOMci3e9RZ2dE27OJlbEWSEK6V9O3IMrN+3IzK91yRGILCYQa
         c46Eo5DCPGxPSz12iUONNEiYl455PnC8zmZQABaaNvW9c1GbvnVomz8i0nN4F6xkjb5g
         mG5K5LQJq2uFBvySEA1n3vHNW1cxCxOzSUNYnbgE/40gIrkm0tKS+JeKjkhqOKxJ8zFd
         gm2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXbpY3l8XlmfiPPSA6AGmNJtzWZyY1ghAKxFtLjZD5JVApv+xfx3S5za0YiP0z9ml3HR6xhzSRyPSLH@vger.kernel.org
X-Gm-Message-State: AOJu0YxHosRrXA9x3M+Zbqd9Vn0AM7swNtJ6Z+0qkKCFtIVHaOp1XRuK
	WRGpn4MfABwRrypi6nl4871dMT6vBfmIcK3Kf9ZtjddmDQR9w+CF4GQG+FSaG99GRsiTuGOpHSn
	6Jwi8zgGS90pqi3qxSXSc/Zo5top5YXzqdzVBFkMjKCVngPMxV44mO4ZV8v/sZ65T
X-Gm-Gg: ASbGncuQJD6TlIrafReQxRb7MUqLpcgHUwQrsHfzJ2pOK0pb8YRNAhRss2qoWO1tF2j
	u8M0ZY/Fhqto8cBAcUse5Cff6gnux4i54HPsNBzOFSFcR1DLJCQiUP4u/od7I2xU+8r7+Jt+sfn
	l0AocUAq2UcWce3Kijtfw235rA8JOpUO5vA6hEujNiow95+gimJNcrrTiIA2/JpyMapJYfsqPsY
	oTW4EAiK5E2NhFzK17nBvhHIbP5tSkR+9dGWZpiaKlk48MHUBG//mWYchbM6V9Onj4Qt7t7TPjZ
	X2GKUfAmdZ4dnfyUbgryYBKJNMqSEftnnAISX6d5d2tznqOQ5w9cUTOEuxr1uCZNX+uS06yN4bw
	C5ashYgZ7kUpwg0v6FLk30esmgR+KTnAxFP26nSI3bb1007JIPWEIN2KD
X-Received: by 2002:a05:620a:444f:b0:8b1:95e2:4827 with SMTP id af79cd13be357-8b29b6c22aemr196980685a.0.1762940416322;
        Wed, 12 Nov 2025 01:40:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/UBVido4T7ElH3fCCu3qQd1JXXvVZZsxAdEl4gufrjb0+yrWlo30YT4rDW3v1gJasBUixsg==
X-Received: by 2002:a05:620a:444f:b0:8b1:95e2:4827 with SMTP id af79cd13be357-8b29b6c22aemr196979185a.0.1762940415789;
        Wed, 12 Nov 2025 01:40:15 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf4fd021sm1539442166b.25.2025.11.12.01.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 01:40:15 -0800 (PST)
Message-ID: <9d296c2b-da69-4b50-8774-9fae6b360f89@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 10:40:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: talos: Drop opp-shared from QUP OPP
 table
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmitry.baryshkov@linaro.org
Cc: mukesh.savaliya@oss.qualcomm.com
References: <20251111170350.525832-1-viken.dadhaniya@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251111170350.525832-1-viken.dadhaniya@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 4sVanIxFe0B-bKWu4kWBG8Z_KkHffNgw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA3NiBTYWx0ZWRfXx8mjDiFf9ybx
 YRIgD8+3ww72q6JaUP+CwGBN1hQqKmXy6WxCVzVxQa0lPeKTcM6irJs5RW8VkfAPPS/RHCuO/1H
 tJLU2QpiJ7eazSbjx2Xtw3+c7t/pa6zbQStqNNTzXyDfzUvAiVNY9iApMMLZ6/Sx5PhTCabI9jm
 H89Xz3XM/aiGnU6sWSm6xENu1T/Nion2K4h1islsiDXUFobMVGXrwZBQa+c/Cduob81b+RwQD0o
 zwUqNTGpzVb/KXcBqPmQRsUUzaejBdPyuzsP3twVysL7jBVq2B+Y8xjOFVxDpSAkmt4BBuWSpLD
 YizF+trLp7ea07xO1Gql9RFLuHTj+eClC6lqhUFjIEfEtApRAYe6+cAxxeZMkRdsIY8bx7Q4+BJ
 2VxkfranFuCftaMZD2P+wkOHdOCRUw==
X-Authority-Analysis: v=2.4 cv=f8dFxeyM c=1 sm=1 tr=0 ts=69145605 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=nWGZzGPzcphSW76LlmIA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 4sVanIxFe0B-bKWu4kWBG8Z_KkHffNgw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120076

On 11/11/25 6:03 PM, Viken Dadhaniya wrote:
> QUP devices are currently marked with opp-shared in their OPP table,
> causing the kernel to treat them as part of a shared OPP domain. This
> leads to the qcom_geni_serial driver failing to probe with error
> -EBUSY (-16).
> 
> Remove the opp-shared property to ensure the OPP framework treats the
> QUP OPP table as device-specific, allowing the serial driver to probe
> successfully
> 
> Fixes: f6746dc9e379 ("arm64: dts: qcom: qcs615: Add QUPv3 configuration")
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

