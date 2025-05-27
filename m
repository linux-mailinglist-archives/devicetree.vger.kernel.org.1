Return-Path: <devicetree+bounces-180946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BB9AC5BAB
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 22:54:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 026F43A5C78
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 20:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4017D20C01B;
	Tue, 27 May 2025 20:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hnfr5HV4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E00207A27
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748379258; cv=none; b=ugTnPAHruEsAQkGHIl27EcHzDrBbcbKTI/RACtqnzR/F0gJEoSu1bjtTVw+aO0+HNrCSJkOrii3IAGLTtiQVsd6KDF1GbsbSoTHe8QLUIJD6P0j3Wk1xvNU33mwKyj7MTCUMKWWILUGFLLlFheYisr8SDGAPcQDjNj+y+00bcNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748379258; c=relaxed/simple;
	bh=x8NuGzFOSErHZizOdXNvwT7+7fsWsegwkvk18Atp71g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hHqVXOf0wS3ePhBSwsj5DTLwcUfjZSxMBc7NRbAhNndjuiYlkjUJ9XMNZ4hQiaKFwwkN3cGhh403YE/W1kl4ckFu84jPaKg1VsCCncQYo3c+aCCLnFbhh3OfAjtTIr3hzILNhQ7B5JkGCSzLi6H0r/Cb97KYRMtCkAuhC4my/bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hnfr5HV4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RJFkkp013434
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:54:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0MLzjuuVObqloiYcLgpMb9z9bl17fMINDWXVZxXoJGA=; b=hnfr5HV4p5f6kB27
	zMMPvQ+SM2fXgJPx9ZL0sfNCqCfx7/BqdpaU0WyhXFXTGSsc9Tp9QzwrxFHIOSLg
	l4Pxj5cQnjSXi5uVebfuz/hHFhKYa6i8zgVVzXxFs/1LRku4iFAEhIqgiRhC7fw5
	7cX73LATCmymNkmWK3YzkOWByW/6tMlNcOBpItRI4rGiQ3/mu/NiGXKFdlid1BbL
	3odRKH2n0X1Ai9ryDC788zNa3DMlwnhPKMF3Wm7O6J5zZhy5wA4yNngwQf2n6OAt
	fkoVVBBHke1yeBWRfvJvvSb+zgTdOyvJzLVgWYK1vPg8gka9kJo3kfzf7nwaAMUk
	Smi3Ag==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46vmgcvp8k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:54:15 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c545ac340aso43992185a.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:54:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379254; x=1748984054;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0MLzjuuVObqloiYcLgpMb9z9bl17fMINDWXVZxXoJGA=;
        b=k9q1iId0AbNaG3jwEo65c0RIbXHp99uyRhdHzJkrgHKK2YVG4MSEDRC0hIaa9BUu1x
         mGeybJktB6cKjHz7LeRoTiFlSzfZEV/zC1NRhi+Ddop1FyC99qGosx57t7rKBSUxP9bc
         q+4yLKeJkBcsiaUyyV5VHFxqVunJ16W9oaciI1gcL3ExQ1xHm0p/XpsuoUmOdEt8B+nV
         50jBXIvk6b7FuAWkF6w9ArybPVI36ZeXV52/kozsAaAriQxARtb4FS4DI0XYy6WEF4M9
         h9MjT4uPLykIBKnxYDLoKp0TGuO3xWOyb/0/XbTcr/2xtAoZkilPCEokQYOMBnQxbF/M
         +5KQ==
X-Forwarded-Encrypted: i=1; AJvYcCU95WphkXdHxxTHtnpQOa93QidCbLjeXKZrqsqFUN6sb5vcnpqQyOA1qtSaPr4nTCJkOHXiD7GFHAg3@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb4jjKpn6Xl8d2dohSPsEClQ7MHrjiKSF3eoJBGQUt6Y01n6g5
	6NDSoG0aXL3U2XH4TDgJI8zVmPPdLGp/9bYUvh5F+AxtgcUCbIcStDHassP71gzSAZjwqksjgGf
	JNDR/eLka/2bdyEU4krDPugIIL4HLSnIdSVNcuaqAEO/e9kYKhIB3m0Kj/fQ6DgX8
X-Gm-Gg: ASbGncsnH2qqOmoOGDiZb4WT7V2yKnnj+Dmw9WMKaMKxtz0zISkMGDCU+i47ulRtDmy
	JeglgwV6LG2hzMAQJYDLBYWKZpvr0aKE1/wzYG4YaAzPNB3Lwh3IUwaqudPOt2mVX/aPSnAGNt0
	YsC0iCjy3Gh/T0044bRAB/c1NdcEj7VeUFPBD2s36Ba1/PcNmIXrtVZY7M0tMdPB0MSkSRxAxNH
	rXN/sNCK1vjOUkr+Vz12rpUmOqtsq9rpo6tWbrfLBv0G6WVmpZt10/Kgq2Q8Xf17iUnj/LdBGo4
	vPEf0g5vVdkM5smoPZB43zcXqVIILEHfy8Vf+bbH/kVlEOuacUCP6BkzB6k1z9E8Ug==
X-Received: by 2002:a05:620a:440d:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7ceecbdfc9cmr770966985a.2.1748379254576;
        Tue, 27 May 2025 13:54:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzG8DcC9twuv8rHM2dj/oNwnD60Hpxn8j63dRlP2mWIaLz8ggRGfIMDRDyo0xryvLC/8IxuA==
X-Received: by 2002:a05:620a:440d:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7ceecbdfc9cmr770964985a.2.1748379254085;
        Tue, 27 May 2025 13:54:14 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532edeadfdsm25975e87.80.2025.05.27.13.54.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 13:54:13 -0700 (PDT)
Message-ID: <9b6de058-d3a5-4cf5-b91b-0593f7e32950@oss.qualcomm.com>
Date: Tue, 27 May 2025 22:54:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: Add Bluetooth support for qcs9075
 IQ-9075-EVK
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Cheng Jiang <quic_chejiang@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_jiaymao@quicinc.com, quic_zijuhu@quicinc.com,
        quic_mohamull@quicinc.com
References: <20250526054228.221095-1-quic_chejiang@quicinc.com>
 <ecn6rv7ase2h2q3qjseunu5unftgicynvvrshd23j6ctxzd43p@bge5fhiq3cps>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ecn6rv7ase2h2q3qjseunu5unftgicynvvrshd23j6ctxzd43p@bge5fhiq3cps>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rEuCjkgowx-tBTcQPw9o4dAnVfoZhWTT
X-Proofpoint-GUID: rEuCjkgowx-tBTcQPw9o4dAnVfoZhWTT
X-Authority-Analysis: v=2.4 cv=Ws4rMcfv c=1 sm=1 tr=0 ts=68362677 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=e1eoD7e-lMPM1RtsuzQA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3NiBTYWx0ZWRfX8XKm9j4eBh7K
 PnK7Snvn4XRTmdo9v2xjVNAOZ+kU6s3wfQQ0nwTGLaPhba17oDfwHi1QeGYnkDe72sG1eyo3Ysg
 X+Cgfv7OymnCSsMVfcDdoi635x1xC6turn2ufMzStBGQLn8QP9YvxFvZlwm37yEqUrCQD9gRi/F
 xcoL3juuyBAo2gA2sl0sL6/4ggu3J7m0kELNpUZVlltmzyjDjLZ8xJ4P0B0oQIyKHPXMh9QU6C4
 9363bHfhMsxT5JdoZEWbb6ztoCyMH+NVkJxtOS3OPeyb+b3XnpRvFV76fho+t7Dypw0JDlnEOcX
 jYc1kBEBNasiFCGww/EPCcIENKTfUqCZNpmKdV0sJnhlZHmhX/9igy1A9eiRGVAIM35A4UecuyS
 BDUjVICEWcEWTGi6F/ej8XuQKZHZb4shDgfjQ21alRVHr4Q7YtlkfF3J1VbAbLHdbVWYMAgi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270176

On 5/27/25 8:15 PM, Dmitry Baryshkov wrote:
> On Mon, May 26, 2025 at 01:42:28PM +0800, Cheng Jiang wrote:
>> Add Bluetooth support for qcs9075 IQ-9075-EVK
>>
>> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
>> ---
>>  .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 42 +++++++++++++++++++
>>  1 file changed, 42 insertions(+)
>>
>> @@ -273,6 +300,21 @@ &uart10 {
>>  	status = "okay";
>>  };
>>  
>> +&uart17 {
>> +	pinctrl-0 = <&qup_uart17_default>;
>> +	pinctrl-names = "default";
>> +	qcom,load-firmware;
>> +	qcom,xfer-mode = <1>;
>> +	status = "okay";
>> +
>> +	/* HS UART Instance */
>> +	bluetooth: bluetooth {
>> +		compatible = "qcom,wcn6855-bt";
> 
> NAK, missing PMU supplies. This wasn't tested against schema. Please
> read internal docs on sending kernel patches before sending the next
> iteration.

Moreover, the above properties depend on an unmerged GENI fw loading
series

Konrad

