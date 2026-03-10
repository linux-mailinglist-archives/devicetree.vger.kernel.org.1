Return-Path: <devicetree+bounces-273577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNsnCYY1sGnRhAIAu9opvQ
	(envelope-from <devicetree+bounces-273577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:15:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D2925311B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E430131B6287
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A405397E61;
	Tue, 10 Mar 2026 14:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o6+kh1Ie";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ct0qdBS5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CC940DFAF
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151948; cv=none; b=Pkajb8AX/j/XljRwlWgrXDBFRYv/E3p9K0lWbxLKx+aZyZ+vHcx2BUw4rClze34plOldovXWULJj3dVJhzB/2b/YHJtoQQMBq7f4vcvtjBQPJrt2HAcTMa4XKqmQtJNhJ6HW3WMOqUfAyI26XGSTuuBoIKbGdeyBBG9mc0N3x70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151948; c=relaxed/simple;
	bh=2PX/oH5yfu8GCXF/56+289Sd+rY/wwgXPJOtAlblqg4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AINxk1OMV4dLVMj8FToCQGAJb6/XcBSlfFVHTAOFq4g7McVfeG0UVJtsGwVOANFgf011o+TFgG9llCtHplwAcK7mRFWJr0PHPl4YLQEBbxexKhRGEGOrYBXU7Kgc7k5RgsQS9g5CiRHpb7quuy1LzvVbbGhtezY2Cv5O5Tt6nJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o6+kh1Ie; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ct0qdBS5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaRJP3417078
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/mbyn5v6NwmEdG+6B8c99cOQW9zb8utuqxEPtdWgWeE=; b=o6+kh1IeXIKYzYbk
	VoonwtXepckW+lS4nuu5BwHJlnHejhovgzwOs8H8iTKd1lUj2uOTZ9yO6umltrPr
	v5Ow7QTcZPXW7PuWCRv2sQJ0MTwiOhQzPZA1J4WTJOlUA6DMmsFAHq/zdhJlCvc6
	A0rEaDHekdTZI1NSlVEUpKAnydiBJgeyha7fI5AYC32y0BGwSoiEgapWPDAW/5DV
	7PrqiPrNgYDi3iEXbbzWXlpPUUVrUXI28d08EsBM+FsH4SJJrvkO9Jlt//FhLsZZ
	tfybMKAI4Ahxg4ZhDs2ENHPv/PGHDUnSneRNsQHVCIiUzigpWd+kGdQboHwsLLpg
	ROp53Q==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctja28m8t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:26 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-94ad73f13bbso1834783241.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773151946; x=1773756746; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/mbyn5v6NwmEdG+6B8c99cOQW9zb8utuqxEPtdWgWeE=;
        b=Ct0qdBS5TvI7iv9GE/wpa6HlODtL4ZzGcu08dVne6vosa2KQS8i5rrt+Cz47wD2qbk
         oOScUI2EJePQW9a5JiZDxdsecOfo8OrShryleHnrpMRJ+m8wCWDUCyuD8ZU72GGTU2/P
         wMc8sAjV3iTRHaFYxP+8hLKqQcXG0Zq47HDCEsRr9FZVEbGb3/2xSHS2NkJUmtj2j/ev
         tsTjp5J7VDIDFpCjCz3x3m+uGropHZAoENLwpSGyOrB9ADySH7ISQn40LZT7pcdkGaPA
         246NwpiCvY42V/vHE+TZoF9ZGteizo/ITqf9L7uZmOWxcrwPWM3ll/ryKO0iUWZN9lZE
         rsIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151946; x=1773756746;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/mbyn5v6NwmEdG+6B8c99cOQW9zb8utuqxEPtdWgWeE=;
        b=UZkT9RyQ7VSZcwOVLqMQ++AIy5zNXdJTuIYDzJQqIDmYX2mD8moCmtCohHYqaFK+1z
         mUjCTQ3sNTM7sefbTiY7/7qRLBeRzMGoDgzh2GqxjtR/+PkRp8jXPtPU0Iz91MrBtOcs
         Y/77tJyJbfNi7J5WB63jm0MFDTiBBZfIDQinVWymdRVnanFebeOB5UemP4+GcUOxHi1v
         fPTPqHY9qHr9h1lcDbT8N9WPHZf5Ly/z2oMJ9M7aqiQEB36JJj7MIp7PGTfqMbfL1ko8
         pLRlvhlyfm5CudHTWjdeGTvv5PFj0qyVfoP/dh4jV9R+fkY5HJ/b/IpGtB+QWvaWUklr
         eP+w==
X-Forwarded-Encrypted: i=1; AJvYcCXYxfEZRGX9JurisquBOGYmYpVTNnugxB71NoRskrP0oNl6BlHYUhZSZfkSaWfy4S19/ULak2zqjhfB@vger.kernel.org
X-Gm-Message-State: AOJu0YzwCOINkwjMg7PEs+aS29Gm3hkW88ngvlhKVzvaEHZ3vw+CjKqR
	7N08IS3caWTC2YhNVZE74Mjrhu6KyMrV/ZnWeyrpPHLl8G7FtchfOmBiHDdBYaTKS/39KxNxtAB
	KxJzn2UdYbODHplNklWQ755dEnxHGAvupGLa0KSZ5BedX9mMLZlRBI0+EQJBj2Q9W
X-Gm-Gg: ATEYQzzLvVu5UbDYPt5454tUmdfRp4vifAE/qpM7X8Il5Et9mKwp9aDY6+bTaeKwf2k
	fUO/7l0uH5JME2yrzvHJZZmOULhk7pl74REI4OtCKkC5cArwTPBOMhzdBmrZYHM2N8HUcOjHBqV
	OtEyqDewdzuh0Md7hDVuKvniSUST8SGSwk2KVh6YVz05ToaAq5nJbetjrnv/x2uWJ7J5AakOx5Q
	3fimQ8wEtwste1AwyPoAabPy3N9pN7eRY2p7Uuyi9Q/BPJP9WqrlVWm1zv54YHS6aFiUaR7GiwF
	evY+2FEbTeevPoCmgDoxdfDTsH2kUyQyF9Kan6nKKIno/ofaW0iryQcMhonovkwE5inQ3jtGyEf
	hdUX/PK1JMvid3oNlT7qySosakJEv9694oOTLf39qmSyM9GYUN1clhmmpe4SmmoJzxi/zWX5obl
	X4YdE=
X-Received: by 2002:a05:6102:d92:b0:5ff:c0e8:d89a with SMTP id ada2fe7eead31-5ffe5ba4013mr2497662137.0.1773151945779;
        Tue, 10 Mar 2026 07:12:25 -0700 (PDT)
X-Received: by 2002:a05:6102:d92:b0:5ff:c0e8:d89a with SMTP id ada2fe7eead31-5ffe5ba4013mr2497609137.0.1773151944415;
        Tue, 10 Mar 2026 07:12:24 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-662a07022ebsm1512263a12.3.2026.03.10.07.12.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:12:23 -0700 (PDT)
Message-ID: <7adf07ca-0ff6-476a-8975-8ecb1239a754@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:12:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/11] arm64: dts: qcom: lemans: Add power-domain and
 iface clk for ice node
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
 <20260310-qcom_ice_power_and_clk_vote-v2-3-b9c2a5471d9e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310-qcom_ice_power_and_clk_vote-v2-3-b9c2a5471d9e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=c9WmgB9l c=1 sm=1 tr=0 ts=69b026ca cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=z_dnvKGLtVwtNw_c-ccA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-ORIG-GUID: u7uDo5K1e9evPL_s1wlrsKUu33d8DWO6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEyMyBTYWx0ZWRfX8iRTU7adHar8
 QCzfjyScew74+7Epw5eui3DztOsdgoNzPrKEab8SB6CsLtVzW5ozzVz61LMnJIooZ5Hajdvqxqd
 MiooGQR8//UQ+EY+DZH2A9ewfyJfWfmnCBAqXyabpeUboRQRBHVHcR7mceIR38e8GTli17bYCkI
 L9Qg3yMrNXMwS+ki+u+Q8Uw65FBhx2n78jH6fSPd7jn/fJKWdmv2AwMU57g/v6UafFXEXIw9GDK
 XCw+p7PmjKxnOlnhn5po/SrWQah3q6vTzBLxhIU8ddEVqUvK6154BjilFO98fYFwYSZTRkeBWTr
 +1q8pHyztMxByBH3anmDUsPzWPPqYH4nsOtwLsf7abmY4uA7XL08CXTgWFIO5aj6r9TVL8Bu7bO
 ZSsaBUYctH+X4jrB/70Xi1tyMEh84WZW/LEJGOyefy9zPQKm7BNQIahFLHA057o5xRhKUTcZvAw
 RitWWXHF1Qo32SXxpsg==
X-Proofpoint-GUID: u7uDo5K1e9evPL_s1wlrsKUu33d8DWO6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100123
X-Rspamd-Queue-Id: B0D2925311B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273577-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gondor.apana.org.au,davemloft.net,kernel.org,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 9:06 AM, Harshal Dev wrote:
> Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
> for its own resources. Before accessing ICE hardware during probe, to
> avoid potential unclocked register access issues (when clk_ignore_unused
> is not passed on the kernel command line), in addition to the 'core' clock
> the 'iface' clock should also be turned on by the driver. This can only be
> done if the UFS_PHY_GDSC power domain is enabled. Specify both the
> UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for lemans.
> 
> Fixes: 96272ba7103d4 ("arm64: dts: qcom: sa8775p: enable the inline crypto engine")
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

