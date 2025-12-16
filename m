Return-Path: <devicetree+bounces-247024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2764ACC496D
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 18:12:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C2598304017E
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 17:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B0A136213F;
	Tue, 16 Dec 2025 12:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HwUXep0Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LZRyWKf6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BA9362130
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765889517; cv=none; b=u7XDukrT6rMuvE7pUMpfXcEFSbEFsvHPV8QdJk9vPZGE56P7eV7ko5p34iT9MODs5iACJND512G/5Ne/CcNUh3kbjRKDGS3tnYUF01/rhsN6X1LBJaQT3PIfUvx55iCPzhfNza5gJP1f0XTqkjWdRLnlXQ0XLQ2g1ncD4uk4Xbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765889517; c=relaxed/simple;
	bh=tRIiMKhp41BqNNbfl5X2OReBMjJipqr3xIlpiTiWNOM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TBIP5iokIClbaoI6PmtOQFfcXxH/yt997ks6W4IcBAmFGY8p2mKAKgBXZATyYikQizJr/+731e8eAPJ4Muvujuvsz4bsXY408/uwTa7W/wgYWpNgBB7P/3rPNN8H4oE76rUEr3HiIK1WjWM5Ktj2qB/zVHtKIhnrvgUpAnFV9tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HwUXep0Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LZRyWKf6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGAXXsJ3598203
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:51:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jm44wihhj4RM4JHsScL7TVMZz6bYHdf3D2hcC/pTJlM=; b=HwUXep0ZwRa790rw
	RQVnnanb4E0hNzX+R0ewehKdwjjmSD4cWXpDSoiSkmrOT7mH/2v2TexYkj0/YYei
	h9FSWukOmL5O4Vt+j9W7rCL3ixuNQOilBn7zX3vpPxdspXryU+M2HGAms6+BjEeM
	H7ae2AUWMJf9xC0u9H6QzCssXmnIIaHRU5+MRib352wfXfWUrRFfgDunHZOdIhFA
	zh/zQowC0nuOo6eaDus0H/fmWpkjE3w+z0PNcwpKxYmlZOC7hJxv8mtZkZcUDCLU
	G4AUHVrj4PKiOOfc5ZXluNYwYLO5usBA8krzRFhXws6iuZTjkhNWZA+D9VQbGZw3
	50joYQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b35se0f6e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:51:54 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0d0ae4b1aso7699945ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765889513; x=1766494313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jm44wihhj4RM4JHsScL7TVMZz6bYHdf3D2hcC/pTJlM=;
        b=LZRyWKf6EGXrCiZ2kP/rhgy6cj6ugN/oH/VFr5imwMvOCkPpSBZtFiueqjt6aJhdtQ
         LHcjhT8Nvyd9ReDNi1HP2MXV7mxjOMFtwXk4A/uImGBwtiKP0lCBAQDIP2jsMc/5Ua9k
         mnKX8P9SeFcnluf5L8+imXKDg0+Yi6jBbJgaITtdXEuIsQnT8CeA4sBCIkmObGfuNqEE
         EeXUvFwNZW2s5u0YY92NKyZqQ7Wev/RWuaxysqDQc0U2BwBWsgTJYAre2GC+VGHaQUX8
         NXP7G4R+lTNNn5jhDJUruVSlCdjzs8YUiVy/Z3HVYgzvgcK6zMwztucr+M/EaH+amIxK
         VRvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765889513; x=1766494313;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jm44wihhj4RM4JHsScL7TVMZz6bYHdf3D2hcC/pTJlM=;
        b=lvuE/aAbBIoA2i6kDM3Q4aZwDUpdXCuFcQPRXkryMbqO1l6TvTcK3It4e92T6g7mOA
         Agn1ZoHbGU0+6A5nMccAYKITvgp/PTZ8q1yit1hm379Phh3/HOz19q66Jg97D9H1bOnr
         ADoijPBGcN7ETPkqNTjrT4yDJgZBiXWcFRYBfyvT5gLKeEcPqQYMMItHG+AwCznvkF8T
         WkNlIBlAjyOqIY0Cmh3rho6eubJRu3KxIoFiIMDeZvG8gtx2r627QCkz5jNs66LDSn+w
         JpottIyPkrv+zbcUxCFW9JzL9JilnHcOGn6AG4rrb2U3dYoxBiwrd9uvzIuDMlMcA5Bd
         kHkw==
X-Forwarded-Encrypted: i=1; AJvYcCUBb2UQm8g/61pZ5Ys/GreQZ7n2EFng8CPFRrC/p/wloZUI9Qs1qgAtsoetPG80nIu5BgtQ/dnBcuJT@vger.kernel.org
X-Gm-Message-State: AOJu0YwAwEP4yNmtJR5fl5YEM+8NSHb/TDOJ7UndEYWM9yK+6kjslYkS
	jjTJbuWem4onRdJo2T0UNA9VNFxCTW1HN7TxwI2grsEKuxnDgxH/HndwAdtuuqKvBGihG6v9N53
	MIWOVxAC30pJyLGYNOT1XlvLg3uErAjnrzNiAAQBK6j9tNFP2jmyLmJeG7p0ehMAp
X-Gm-Gg: AY/fxX40OJGH/uo7WlEY8NCnnUYZlBonbN3tgc9VrYSw43zw2p6w1UAvmznDPcKoue6
	AimSwOHvbFl32rtnlZEU44Q0+cc8g+I73zTMtuQHe4aCK6R9AX88xD09SQ/Myhr+KDYythGVgCN
	6/CiESynmE15vR8R2PN54eLbaj4aA5PCBLLsylAwwucYluM4utNerIowD8G1YvNrHILNFnmLQG7
	wwEaxB75fUnkx2knYENY0NMzivWq1HK7UmlBb/86GcDV/ki6726g5QDhjtPx1Sp3NDpQXrID5wN
	lhYK/XU1QVmq9pVpiqyF6cun1xfdcJ/VDOOxaYrkKPIeV8LanLWdRDANO9RfPO/qW0HF0lTgQ9j
	liC3ejRUB9fqW7hMUZP6fpH+ITdz0FkNQ23IC7zaycLO/Bq/rQychruIvYr7yTJx+9g==
X-Received: by 2002:a17:902:d48b:b0:29f:2df2:cf49 with SMTP id d9443c01a7336-29f2df2d160mr87575715ad.5.1765889513389;
        Tue, 16 Dec 2025 04:51:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFH5R2IJVmgwrckoOlvC7HPib4GBK2WycjnU4NfhH3i63s5yLgs2JnL5r/sqPg8D1ibp5y7Og==
X-Received: by 2002:a17:902:d48b:b0:29f:2df2:cf49 with SMTP id d9443c01a7336-29f2df2d160mr87575495ad.5.1765889512887;
        Tue, 16 Dec 2025 04:51:52 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29f6cbsm1705679366b.5.2025.12.16.04.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 04:51:51 -0800 (PST)
Message-ID: <be83a344-4345-4417-aabd-39565f76dc00@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 13:51:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFT PATCH v3 0/2] Adsp fastrpc support for sm8750
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Ekansh Gupta <quic_ekangupt@quicinc.com>, vkatoch@qti.qualcomm.com,
        ekansh.gupta@oss.qualcomm.com, chennak@qti.qualcomm.com,
        srinivas.kandagatla@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20251209-sm8750-fastrpc-adsp-v3-0-ccfff49a8af9@linaro.org>
 <DEWCVSWNA1MN.10IT82HICKO8K@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DEWCVSWNA1MN.10IT82HICKO8K@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fNTiK90xP2xuxw7s6xxJVMf2mMDJU97e
X-Authority-Analysis: v=2.4 cv=ar2/yCZV c=1 sm=1 tr=0 ts=694155ea cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=BYvtZF8_egfN02wk1QEA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: fNTiK90xP2xuxw7s6xxJVMf2mMDJU97e
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwNiBTYWx0ZWRfXxh45KeiXTSQx
 Jl9XB785hNjWCcI6Et27iZygBAcvare3rwy1k/YNc1S3hE+YKBvhKPCYjD7a4KeYTBFYZgk24YN
 onnHTXkrE51oHTUiHs+m2sVTOTxku7AZ8m8eByyCkv27scbS6nxzXGlUQBbyf33OVP7OveY6mHo
 LtnAHAVYomxeZq+jneaR7W3TFLFEDtobvWeWVxKEDU18vAqWpdtVhQScjRkqnYFNJijsZ6Em6q8
 SwtIVEPSX6uqIMFYofCaIorPibGDZIb3X6HYanSpOVm+jE3IilUrsg5D27lzArmCAfzJta6e0wa
 J0Aeg/5ao2jxLF7/ByJiSg1eiB7kJ7LC0UnEDGn0NLRjAa0utNLWvdiRY9FUQm4HtP4F8nHe/I7
 Qgc+dU1Yx3/HFIL6UCtq8gYJ+QbNHA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512160106

On 12/12/25 4:50 PM, Alexey Klimov wrote:
> (adding more Qcom folks to To: header, who asked to send this as soon
> as possible)
> 
> On Tue Dec 9, 2025 at 7:37 AM GMT, Alexey Klimov wrote:
>> Please test these changes therefore RFT tag. The fastrpc testing
>> application under linux doesn't work for me but I was told there
>> is a setup available somewhere in Qualcomm where this can be tested
>> (perhaps android?).

[...]

> ========================================
> Test Summary:
>   Total tests run:    3
>   Passed:             2
>   Failed:             1
>   Skipped:            0
> ========================================
> 
> RESULT: 1 test(s) FAILED
> 
> But the result is the same for CDSP (was it tested prior merging?).
> The same results are for v75.
> 
> Adsprpcd works with audio_pd though. Maybe Qualcomm can help with this?
> I don't think I will have enough time to debug this and narrow it down,
> also very soon I will lose access to the device.

Please open an issue in the repo with the above details so the FastRPC
folks can hopefully help sort this out

https://github.com/qualcomm/fastrpc/issues

Konrad

