Return-Path: <devicetree+bounces-184179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5120AAD32F4
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:59:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36C3B18935B4
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E542328C01F;
	Tue, 10 Jun 2025 09:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UPd4HT3b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5047328C00F
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749549579; cv=none; b=ssetAGj+eq2gM0xJWpNso7TUpY52bqxycaHa3y7aVj2VrOlWwg7Mi9m0wFrA/0tsHdK2ZiL+mPt2trnqZxIoWW4P9YtGJstyZQgEnWgwAqYAIPGLXr19Ri2Gaa46TR2NTt3Iq7m/k1QJnkW3MJuusKA+ieKNq8F2FwxjC71JNAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749549579; c=relaxed/simple;
	bh=F1y1TDuWaauSn1I3U/MZeKUHLkrykxmpbfGLjOlvQZg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V639RCrmwMnEK6Xo9e80V676vn1gKbhJ9KdU1P5DaXNZeUx/9Q0KYCbVY14WF6yXPnWA+GevtlSUthlXST87/KCp3ZgcckbITZH8ABe10cs2TInphUbtwFOFlGsBrPrumrhXa2G7O/1RLNuTUtUNBUUCYSUU6N/Aw9XSPBmNeiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UPd4HT3b; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A85csY025339
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:59:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NJO9i/czZYar/OKw/Dt6/+F7Wbhl4a9/21tm9FprFAw=; b=UPd4HT3bLZN+83/m
	PrJMzZ966dXSyLQuH3s5AlWrUuk5O3Ycr4IfsKYXOFODwvk//iHVkKjMtVPYao3q
	PutH2m+mSWkbwD84ST4K4yaxwn0dR0YZMkfdla1wxoip0f7zym7Gw0WQZSWE3d3J
	C5ZLb1+e2kKM5ZiNLioUDVzSE1DOkgVp9/Kg5hongW1TF7ABNcTgTCWXPqwjH9nD
	JE8oLJyRKmDrHgN+e8VaI+jNY/IPI4XeQkdm7Piyar0LHVzxy85Qs7HTp7PpCDQe
	DPQGY70NVNgF54NlF+Gn8AkmMujG1bJOt/NmeOMD8qEU8bfNWn9UOTLki5eBZScC
	PDI0Kg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dgxs8g9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:59:37 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-af59547f55bso2943748a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 02:59:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749549576; x=1750154376;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NJO9i/czZYar/OKw/Dt6/+F7Wbhl4a9/21tm9FprFAw=;
        b=VC2qjCIS6HoGDNYzUhmPZ3sqiRaeVsMDWuAhwPEjKFoUxSQQW382wtaz7SMGzGu5Cs
         0+KntdWWp+/QZ6uBJu338yi4/L0ynPV6g2GQmB6v+G3STvvwLqvXAnPYyU5gtKao56PW
         nQgKuM3oORI+23hXrcWtq1GGLiwiR3V39O81yfQjhK8L9j+Vxbk/oOpJ2g93nh4uW4yy
         hZ/67YpybM6OBjiO89d9SOa3LTFSVtpQuzTUTq6UadjuAcwr4QnW0dkZAAcqeXv8VCBf
         cl9UuDBJCfy7gVyA/FpN/l/0H7BxMF40SXBXv4olICLxCf0P3wTQocvlHjRNRSZD6T6I
         xM1A==
X-Forwarded-Encrypted: i=1; AJvYcCWULMOS0JnEf2p5C7UbDSdo8UUCk1AUZPwGZjSZ12HEWeggJTOs4femWP6o+dWzhdsJoWDiCwsx2OXH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc/jf+fOE3pS+kNy4rwtc67kc8JCdEGrHllWu1t4hPxAK9W8+B
	wBoI1jdZ8H+VQIGrPNHN4v09CKj1Ds1V/yH3a132mldFdbgNaslJVhhtP0dKMAM2LPwApftsbRY
	K33gaDMHzJrGMc6vV/VlKbn/mqC6iWOBKNq2nbdljtUhDJjP4suEvB7f3oGdfd5AS
X-Gm-Gg: ASbGncsUHju/CUqiwOW0BwPnoRszPjtPhAHIEb/lECrcSat6RMLWbh7tjafjmLz3m8t
	4Dp0X5Mr8S/GIRzE5Y5qwKrLxeSGVpWzgBai/qCyihruZLfvpmxBD78mZvNPipEh8okgHETOYUp
	szfZ7Nk+KAB+y7l2cUuzlLhN303mwC2JOeuq0ljQ7z1j9RAjzXEPT7yCzSHxkrH74uykiUUqG56
	l0Vl2LdMLCeom5N0U1M9NmLfY/G3LP05SG9399Jfo/w7MPCpxsSJ1vVJPn6rt2+NkkoU1rQiWFB
	QFenRPOEKN0w6B72nhI3R22ZJXFCENAPsupKD7Rligkr+iUEWSk=
X-Received: by 2002:a05:6a21:6481:b0:21f:5629:5b9e with SMTP id adf61e73a8af0-21f56295e60mr12309224637.12.1749549575808;
        Tue, 10 Jun 2025 02:59:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCod2Fos0MENsVjz0hvMb9ntW/mBV4cNNsa8Hp9NfSIBo8DRdOx2IIYdOL0IuztGqHPPqkWg==
X-Received: by 2002:a05:6a21:6481:b0:21f:5629:5b9e with SMTP id adf61e73a8af0-21f56295e60mr12309205637.12.1749549575443;
        Tue, 10 Jun 2025 02:59:35 -0700 (PDT)
Received: from [10.92.165.7] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2f5f66adb6sm6521748a12.48.2025.06.10.02.59.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 02:59:35 -0700 (PDT)
Message-ID: <c4a5fd70-1d72-4945-ad77-fcb4f3a0e20e@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 15:29:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Flattening USB controller on SM8450 QRD
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org
References: <20250610091805.2997546-1-krishna.kurapati@oss.qualcomm.com>
 <7f5b7a49-28a0-4923-bbf4-8b0afdefe571@linaro.org>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <7f5b7a49-28a0-4923-bbf4-8b0afdefe571@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: QusIU9q2GvaAD2-a_79PW6qPg3YfMbFa
X-Authority-Analysis: v=2.4 cv=HMbDFptv c=1 sm=1 tr=0 ts=68480209 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=YA6QX4G2g9P-5r4Gxh8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: QusIU9q2GvaAD2-a_79PW6qPg3YfMbFa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDA3NyBTYWx0ZWRfXxr38JVPb/xwi
 BiOu3Vin/kEFKzRqeBDlJk1Tl6qsC1QIMAsun2OlmV4mas5sUa+kBfIsvD0OGSOh6MxLmnwWoec
 RIYTZqw7R/qnS8DPGzi3kwjLaLCiT8x7Ut7/pOlHY0KmegInNR76PXxVcdgOdFnTcfGtgUVyu1Z
 g2N9A8CFUZh/3TjADebVsrmtTQ2JwgMR1Mcg7UxFxn7cUE7H6OgDINBqo4M69UrnNAbEt8dt6Gb
 dVAt8JFl7vupDCfveGdGgjj72oK+XLpdo4+cWcGJ49c3qAWfxN9BPwkGqv947aTKeT99zVc8COh
 pWd+V2mn7deREcKaViCmKzrcb6ca5RfTCtCWn1kvaqupZVfHKQoD0bNO5iJHCbysZEOaTGgrXnb
 YhJp3h62QWMYg305dRgCHn6GVMgjl9pfDNIB61RtDWK0/I5CqcNMv1Esd+aiMqEb4w0XxWJn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_04,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=785 priorityscore=1501 impostorscore=0
 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 adultscore=0 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100077



On 6/10/2025 3:04 PM, neil.armstrong@linaro.org wrote:
> On 10/06/2025 11:18, Krishna Kurapati wrote:
>> Flatten USB Controller node on SM8450 QRD to move away from legacy USB
>> Qualcomm glue driver and make use of new one. The series has been tested
>> with driver changes [1] to enable runtime suspend/resume during cable
>> disconnect/connect scenarios.
>>
>> I was testing on SM8450 QRD and hence flattened usb node on that platform
>> only. If the community suggests to flatten all platforms of sm8450, I can
>> do a compile test for the ones I can't get hands on and send a follow up
>> series.
> 
> I can test on an SM8450 HDK, so please flatten for all the boards and CC me
> 

Thanks for the support Neil. Will flatten all platforms and CC you as 
well in v3.

Regards,
Krishna,

> Neil
> 
>>
>> [1]: 
>> https://lore.kernel.org/all/20250610091357.2983085-1-krishna.kurapati@oss.qualcomm.com/
>>
>> Krishna Kurapati (2):
>>    arm64: dts: qcom: sm8450-qrd: add pmic glink node
>>    arm64: dts: qcom: sm8450-qrd: Flatten usb controller node
>>
>>   arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 110 +++++++++++++++++++++++-
>>   1 file changed, 108 insertions(+), 2 deletions(-)
>>
> 

