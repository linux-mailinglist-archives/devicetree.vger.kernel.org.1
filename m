Return-Path: <devicetree+bounces-177892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F25AB9829
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 10:55:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81F3D17C4C4
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 08:55:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96DB122F169;
	Fri, 16 May 2025 08:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="khpKJ/lq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2734022D7B4
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 08:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747385699; cv=none; b=sw9DhpyJtmhRox5TXPFW2ZrSTjkqNwxzJuaj2aYPAd8V7PdbkWXf/Rjm0G3n+j/0bIcJyXOyfNvQkD7bk0JcKK8QmOaHzd70iRDtIJ9oDMIhtoX3wtM8kp6AMgZQwx53ZyyeDlPGd2fyrjnyppD2Ve/TtcmgJ1YzsKgLa/Iyq4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747385699; c=relaxed/simple;
	bh=v5W5Hv6EG33b3s8rj6s91pV8btXw4ms2yGlBx2oMrjA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ngiWq2QrqEOskh5i5iIe58YgQvZHMQvvTABbQ4NXsCHfMz8qPUtrK/01Ai16EynaFNaK2PXa56E/ounTuf3aZUB/BI3Xh61TijOv4fx21Kz6W9slaBf9gxwU9vKNhWhjYjc/UfPcBSCVMDJTN1qyd0a6V4gZU66zYPr5CRXISa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=khpKJ/lq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54G3jRdA024572
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 08:54:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DvrbpxQRygpuRSgHwmLJ2nLox+2T/uM2FR0o6x/entI=; b=khpKJ/lqxQRfvuOt
	ctGZbLkrQ6rPTzNfIdKM00mNtvRAi+i4u5ceeOMbg6JPU8HjoVmvWbT9J77oX13W
	SB4Dcv5ZPw6Lx09pNeQaO57soGBic+c39h1KF897vvEcbqQrklpuFhXRaZhj6xC0
	Rd3AAP3SZXYW73AGhGybR8JgwHbbttc7VSxt4lZzGinH2NApeVeb2PrXsU+gRgYE
	BsssfF9JtNm1NO0Rv0zVDxUUONYUrQZbu8UeVf5iSMSjpzfU9Ra8DwxsH0389Si1
	I7XhCUYAhfJ8flxRzx4q4IfOtEY2urCTwvY2tRR3pdKh1pBR/bZFsK8ExaK85LOu
	p6Q+5A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcp1c50-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 08:54:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476786e50d9so5167411cf.1
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 01:54:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747385682; x=1747990482;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DvrbpxQRygpuRSgHwmLJ2nLox+2T/uM2FR0o6x/entI=;
        b=GZkBbzkHs/1KxvoE5egLmvNq4K+HQyy0/MeETejz3qC78ZGDP1zBvF7dWS2ieTsbQ8
         JhAwTtaViA/mveLiAYb5PoNsPI4o8FJfa2rFHwttngMkMI8ZeS6YfXAYeJu0bvylB3fk
         OeYrewjoO+eSsSmA3RwT5nmUBN7NzaxfRp2LHaN10r70u6gmwm3fH/dB8lgI7/Pkqkx6
         EKfPvKjGg+//DWu/EkqyTwxKvvDDb6GaFl8SKjONdY5v8SV8/S5oBxMTzcs9G9hCqBQH
         YGx36MAc7F7jmmgKScsA1pkjGSstkTqSSl+gT/j4rMUVYVPQRrt/dEFPxF41Mh6C2HCu
         MsNA==
X-Forwarded-Encrypted: i=1; AJvYcCXaf1AT+jQxcDWtI23t4i1/vQTHsiaSdjNQx5I0+BL0jpZFA/jcnJbd/OzZYjXec54tXQMYnUYb2Mvt@vger.kernel.org
X-Gm-Message-State: AOJu0YwmrzY2X8gznERJWO4zcZJlxE+vKrAbi2ContS0u3d5lv1FSOe/
	O5Xil31dj4EuA8RzqZ4HfnkonxmI0+CJ1YKiYWxJY1ZaoQqutSAmSTHb1Td9o7v/r8FkK4D9/AB
	oq9LT52IMX6icDhEhP1gQJnICoXxPBGk4sgtmrayPJQfyW6r/IXdN5VpXYiJb4s3F
X-Gm-Gg: ASbGncubc8McoyaRSGLKSqYyvjajEAGOO8r3oRMFrA/E5OH/isXNRPSROcU/Rj1bTZ4
	OARBJ+xklbQgyqnkHJyChGLF3m7IqsY1/yNTtfVmIsg4LV8vxZAq5u1zOVqja//YemVRpPPji27
	g8NRbvOsNRkXJ+o0Xf+XkI/3oe4Ru9yl9ETAxnC7/pVKbpPJN+FXWeUBpNbwG6tvrOqy8fKg27k
	rPuFlZvZ/4wqVdr9kTvboOPdOlYReNk77OIiV6rJ1pyIzB3DWPJCRx8Qm5tUwk0Xq0Xl8t9x93z
	4Yzev+y9806N5edPqr/deYW+/3lVJOHT+vDty+E+CRX4kvZCoWoM5nbDUDF5XqwuzA==
X-Received: by 2002:ac8:7656:0:b0:473:88e7:e434 with SMTP id d75a77b69052e-494ae421a73mr10063311cf.14.1747385681570;
        Fri, 16 May 2025 01:54:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFN6TMEprtqTIgIm9y8KSJgwK28VEXNDOCDzXjdEPd9k8rvmTwL9YSHZZ+WWoKFUrPTxZDFcg==
X-Received: by 2002:ac8:7656:0:b0:473:88e7:e434 with SMTP id d75a77b69052e-494ae421a73mr10063151cf.14.1747385681005;
        Fri, 16 May 2025 01:54:41 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6005a6e3ca0sm1091649a12.42.2025.05.16.01.54.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 01:54:40 -0700 (PDT)
Message-ID: <b74a28d1-2dc2-46b7-848c-a62cdde27779@oss.qualcomm.com>
Date: Fri, 16 May 2025 10:54:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] arm64: dts: qcom: qcs615: Add mproc node for
 SEMP2P
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Kyle Deng <quic_chunkaid@quicinc.com>
References: <20250516-add_qcs615_remoteproc_support-v3-0-ad12ceeafdd0@quicinc.com>
 <20250516-add_qcs615_remoteproc_support-v3-3-ad12ceeafdd0@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250516-add_qcs615_remoteproc_support-v3-3-ad12ceeafdd0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: HxdiTQijmczIQaP7Ea8ZT2rWNdWlueAW
X-Authority-Analysis: v=2.4 cv=D8dHKuRj c=1 sm=1 tr=0 ts=6826fd60 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=fxdFZpXxXALc2YyWw2UA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDA4MyBTYWx0ZWRfXwEbo2viNIhOw
 q2y1KMakPVOmTWBoYI3aDr3CTHCPz2+glGqDY0hzzyyUWbLhPR0SwdGPli8Qjt5yRN7DrtOYjn0
 wD+x0pqR/KtE+Dj62zACEgjOD/Dnwyt+G4PSZzuGNNiXMLmwIjm50YvMjkFiHgGPbaqvg0XSQWw
 n1sv7oxPbAluz+HS0th2KJ8YgOvGQPFQuVdk8L6grslzl5JBHZTINtYW1nQrwKymJoMlNo4u40F
 QrDVfh8O+Pgq/Otr5PPdW5aJ5lWwB34faY1LM4MSHV6fH0vdMaBgL9DoMnYZTYjt0wsQnI57ACL
 yXw852/+R9LVYm6yvY3vp/o+6gaQcBcLgjsEVLq9mK5o5xIWvO6MVLcPXOOvqe8wiWGpTceyQTM
 gqNMnm1f+M0gYAXlQHKkEWVijFwAsC6AAvrQBbI6cHbN4APyZ4cMMxdZCKbQsByfpV32pcZn
X-Proofpoint-GUID: HxdiTQijmczIQaP7Ea8ZT2rWNdWlueAW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_04,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=723 spamscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505160083

On 5/16/25 5:27 AM, Lijuan Gao wrote:
> From: Kyle Deng <quic_chunkaid@quicinc.com>
> 
> The Shared Memory Point to Point (SMP2P) protocol facilitates
> communication of a single 32-bit value between two processors.
> Add these two nodes for remoteproc enablement on QCS615 SoC.
> 
> Signed-off-by: Kyle Deng <quic_chunkaid@quicinc.com>
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

