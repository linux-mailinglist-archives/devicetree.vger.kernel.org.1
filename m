Return-Path: <devicetree+bounces-238903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA319C5F72C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 23:00:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6995B3BB452
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 22:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B977332BF47;
	Fri, 14 Nov 2025 22:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N8O3T/Y0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MgvW1MuS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD5D30ACEC
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763157610; cv=none; b=Yie2VFU0R0O2qZyoXBLT6awDVjGej2QQH3qxLD6ybvKz2Ri0z0gyD6+D99lGxmrvHVjcYmUThwDv11PWnzCWp+ROHQrstwZX6iNbIG90JR/w3AHCWY4D1mzxjIPuDdIN77bz/Fj5GHNFNtCEmYZqTzYzL7csWDcJLXOBMfUJvJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763157610; c=relaxed/simple;
	bh=r5s0GfHyjbi+M3Rf/uyY73uI4nivET7Rd7rzMr2n0ag=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tuFndEmQL1kqXk2/jxuYO3IEfFDPb7/UW5QVG29p4kCzleSr4mPVaaib1ZYtXol9cfUwnqCZ4nD/KT9UQklghKX3r0K1IHnW5ro085iD5DBn2DSnnR+E/MdoyvsCfdoX1Em6SSece9YmtnjbFLSvDuNiiDKTLuLijKKJR7uoCFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N8O3T/Y0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MgvW1MuS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEIQCUd380888
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:00:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dhsg9V4O2PfCtEA/vBefinsnYcE1U/mrreMf9u9w1eQ=; b=N8O3T/Y0RR9s8YvX
	wV5QwdkfqjBoxVwBwY+qvWO/gMlx8Z7IOCGumNBh6+EJTfmlPrpYcA0wfhFCHNO3
	oYnZHtStFIXffKixS2VMr2T9J4hfrqnGb95BNT7NCn2wxfXaIFJN/i/m8j05vtng
	oq60dsIwQR7jqjHAzELwrh899VajlPhLQgZHiVCUW3bZ4mBcoRRy9lhQe0Z/xH7g
	yRg7tIRDi4TnT6HdHs38mMb3jL9yXn9YlkuXKX+Fsa6NoBKIuF71v9n4fJp/061U
	E2izXNjvfBVyOMANinzLtXWuiqBSA4C93p9WHUrQkSaYPRsPgUEtk32i++9eEFVK
	XoO/rA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae7qh8xmj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:00:08 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8823e9c63c6so7916336d6.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763157607; x=1763762407; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dhsg9V4O2PfCtEA/vBefinsnYcE1U/mrreMf9u9w1eQ=;
        b=MgvW1MuStcFku93Gep03K53pbR5KHmOEAuiCYtOLAkjLA8rTMDd6PoH7Lja0kguVTJ
         e3RusZEvxOfscZTtW67OAR7Bq+3wI/Gi/ih8Yq540aAT+C7akeGIIk8Jb3WF2+LoVcub
         775Fi/b8A68b59TIFMAcPRdfHNC0nEMrNIKoXcl0BxZjYB8h1g6iJwTbyjPpvRv/+wqW
         RBRUivuepXuFaAz7D4wSIn02o1uBWqyLDb8OckSz50vQHAZdrlPc7dzUxDxiziXYZ9sC
         s8Mxsv1Lqj6MlSiYlj6lmEongI0cZXX7VhY0GV3mPLhWB9oreNw5/1Zs5TDL8BOA/jQs
         GbxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763157607; x=1763762407;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dhsg9V4O2PfCtEA/vBefinsnYcE1U/mrreMf9u9w1eQ=;
        b=s1ocwiEBv+ecKd3ahaX/qWwEgIXDG3rMpAJTHGX1s4YSaz84NsCD2iCYNAPhDYApFC
         WEYdyHN7l1Y/IGz+/+JTmIUsxboS9gJM5T1dGhkW9BoSe8xxPI+Eu96IXn44hIVYPIel
         sIWqlc47ALU4Ct/kOSXwdVokb2MRplUoZ7Qw/Y+3NDeX53tp59YDS3CoZAF2qlZoMx4y
         fyTH7nb1Y5elpVYLj5woO0UdyRTJehVtcHsvXOtwsGzAhpFMWgVH1ECFKcaW7LV70KLU
         L7WMEwKLFSdeXq5ERfSVy46BCwyyevkUEu6mHy0RrDiX0vVBS8XVlAxgBvsyAbrKbzvT
         AkTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGDF1HJ2ZN/ebcsLZT3hnQILLcVSxfBlQ4Mzuv/qaAjD48I5dDEp8/HhdAn43nWNH6HJlnjEz5ME8C@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo9OAR/w7M+TXYhFH0q6vb+JzfaZEuys/DK4YN6cUlrQ6dnu8B
	F63Y5zmHIhRxX300BSPTprrxUZE9GD1oh0qgu3joOLhGD9Sj5jwO/ZmdimXiIJjNqGekRC4bL/4
	2PqEOUjxO0RDlQNZOSz36sijA5w7LEeew/PfwX1xkz1Q+PcWKTH6KuFQIu3yJInCz
X-Gm-Gg: ASbGncvNXYjrSum7mRXTDRLiJ5U+LxJ8WqskyhCd1mOIzjaNc7EsYn6hVrLiNzmNFAx
	100D91xLtGzUVE03ktvXKbZnBsy/0eVlE+yzt9VHh9/Yo0bBB1/XpvOw2Nt7YXO2/PJotzlKfwA
	jC9VPiMAnR6p7ELgrCdvjXu70/lAe6Rr2nuw6uX0kFa4JG9AnY/skRIS61/CeValzCdTl7m0yo5
	4FGY7OjvdoeU/A4Ehehty3POjr0ued/kmJUX8fDNWlqSPt+TCqDWL+oOdqlimsnFCem+FWnYIpW
	IeDDK2Hxe6VSRXjIQvkFKQyWOB8bztITPrMlL8gB79h+K4JYSX1wNbsgptbx5ZvD1FgG4fIuKZj
	i/oqUO+MxDQEJFQx0VF9oCSiysiaRzh52pWJlrkRIkFCmMEc4SfHILSsZ
X-Received: by 2002:ac8:5888:0:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4edf35dc331mr45441431cf.3.1763157607398;
        Fri, 14 Nov 2025 14:00:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGfo14dt1ip4UnFu2BOFMlQYOjuaJjdF2VfxIKRu/T8WfaaD4L+TUnaO0BZykHk+CqTg3rWCA==
X-Received: by 2002:ac8:5888:0:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4edf35dc331mr45441061cf.3.1763157606896;
        Fri, 14 Nov 2025 14:00:06 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad48dcsm467529466b.25.2025.11.14.14.00.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 14:00:06 -0800 (PST)
Message-ID: <cf2dfdba-bb1d-4255-9db6-7aa6125265bb@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 23:00:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: monaco-evk: Enable TPM (ST33)
To: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251114-enable-tpm-monaco-v1-1-4ed566838698@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114-enable-tpm-monaco-v1-1-4ed566838698@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cIvtc1eN c=1 sm=1 tr=0 ts=6917a668 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Snsp7wKnPOk6igoZdcEA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: fVLCIsVb_SLw3AtV74cu93H_0ZlJZDzS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDE3OSBTYWx0ZWRfXxHDaHRT4apFT
 lC8hQRhKfLSKSlgqQHwb/CZtTDF2pU81Alomcl2dTB5svaqm8xxtfuiR7lgWY47HMYpwLO2uCy6
 fSo4Dzas4QYafUVAXAInEJOmj3+wgkUC1LPYt+sp3pIdtWtt1w8+qqc34tTT3tS1B0VQsUw9BqK
 9n73qS2hyTfS1AkCnTHnSsYm/WUmkV6My7oGZB18SN8yUlUXgUv2RY06QLZsUb6IYxxUa8kSr0v
 5rOxUfv3dH4sVBmCrc9xmcn1CNQ2aCJZwCCip2/FoeAknZzZitoTvIB+h4YtmiZo5bFdUzVx8Ul
 rlNa/HSJAUuW8ktscS8y28ThpJj8mL8MoqqBxCcyom7ANWGhmehW0arxQE/zq4tjXMETLP/rj4l
 2Mtf/2tG1kUT6TGBDTYpfBYzsfk5fg==
X-Proofpoint-GUID: fVLCIsVb_SLw3AtV74cu93H_0ZlJZDzS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 malwarescore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140179

On 11/14/25 11:17 AM, Khalid Faisal Ansari wrote:
> Enable ST33HTPM TPM over SPI10 on the Monaco IoT EVK by adding the
> required SPI and TPM nodes.
> 
> Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

