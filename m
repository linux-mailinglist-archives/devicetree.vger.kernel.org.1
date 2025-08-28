Return-Path: <devicetree+bounces-209790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 50731B391FD
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 04:58:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEEA3980935
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 02:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E77302EB84A;
	Thu, 28 Aug 2025 02:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kbi20Lr+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7B42EAB6D
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 02:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756349872; cv=none; b=a9XqV0/HWlJpEbzYWWCGXSzseg2HRVS42NxhBzO/84pKxiEvh7I4TbZil5b+QSrl75ihlWzxS75q0xeKAxIa/Yuuqru+IT44g8n0lTRCloLz1vtUrkf1WY2ZhV3eYeCXyT20mYRHGwTpbLf0g1RD8xDhxtVmQu4WSWV/9aaS8is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756349872; c=relaxed/simple;
	bh=tCept4cbc/MaNNvuOftpkH1x/HrsKm53+aYvSBoxkr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oBgzsnn2bRgMIJVyF1jE9O56m+kzo/eDS8j51yb0ApBSGILy+7ueFYIF7GM20J7IdEQaGLBAMVF874dNLDsCf+eY0d+7CkvPGDIRHTFAjH8yqTqbvljsHw65wW2/qLX7lsv0/fzLMq8XLOLO7GZGLLli4h3FhcGbmTPC7JIRvqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kbi20Lr+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57RG6JGb031409
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 02:57:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JVszMljYD5j4gBrasjeb/5znK9oOZEjvYSTgQBHRx44=; b=kbi20Lr+BaxvV3fv
	HX4n2PRqgU/FATOMnc8aKpUuAqPAeg/2ZWe+vGIuaBASeJeGK2toncdhk6J6RZWY
	I9bnOJbp8gnw8ye1PH2WEQTYz+ypH51ichPEUABM9ezu7Ri68qNmCliSmwWrkLEI
	cfTk0sUpJXhoRXqzIsGNrDFmHWOZxTl9Tauu6hN1IVCNePkNP53ZIxgsQtsNdtXd
	6wQFpzi5fohkpqEbxzbCch2XjagV0cGo7+daIVN5inZtXFwWw/xHj/ZrODTiUcvQ
	aFzwcCjNE316aB6HEWJTKP8uTzOAEHX+O921hlShBYCk2Xf0+zlLwva+D1B1LYAg
	yffWHQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q615pk2j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 02:57:49 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24896af06a9so7057125ad.3
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 19:57:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756349869; x=1756954669;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JVszMljYD5j4gBrasjeb/5znK9oOZEjvYSTgQBHRx44=;
        b=hLPzHIpl5zpfbss8d3CNljCW6KiCSeZBN9U7RNyP6M3knumPWgksHdcS6Ox9oTDdae
         CDkmUgtEtvdkOTEze2h1CuZ/XEsOty8RSp+553vT70VBiAwUnJW3ah6/ZL5LAMK/9OhP
         ubD5Ps638oKGXy2RxpwN62j/prflCdZvyHdsRgI0OP9hVsCjYx6mSiNBvQGkXdVDtZLJ
         RO+rvz7yXOGaNn7350Igg1IUzk0QA5U/9DGxX2MM2l0zPjDE+UWAp7yhqwH/mrj3yMvu
         lMWZUG/ioyCPvzMSiplDjgtA9MzEtxTAsqJuWPkWA+CHXF9TF6hZY4cFcd6fVBcnI0L0
         zm9g==
X-Forwarded-Encrypted: i=1; AJvYcCWngFO4S1EGRQ3kV7wyOA3XryguHJ419tgh5jBD29U14j1Lc3ReZchwATkQp6KEN27ifWHp6PIMgRiL@vger.kernel.org
X-Gm-Message-State: AOJu0YxITOqBqa1biu0x0G2jhKj/34bg7cksizB5x95Q9HcqTDapYUAc
	zHWWCoJz5fNin41sgUOspLmWEMLU3lxFpcx5GMQhw0eos+k3EsoKXZHWI6oAgrLbAo49YtdfQHe
	w6GrR6S9WiQqwPLj5A2/vdEamKP5Rto40whUMOnbal6/htzEWv0K5Rslwlh10uDxt
X-Gm-Gg: ASbGncuZ5bDSyQTrQrMtlloiFEk+XOqhu8Plpt6NXLSRdHlSQPduowZxkx6LmhwI23a
	ogZR8DxybQ6yKwMZ31P9VhpNnYVgjLvoF4TzB5GFofaLYkjN9NRX04SHh11bZwAaKxol0rRetjp
	T9w1mnxISLFA8oL6YgQMfyFipIgZgMHitjKv/FRnvjLCTRx6adqWNk4EDIX0S7tNuJKhrR0zMkP
	+Afz82QsAi63UIgxYkgKF9VbZ5iAKPzKcILQN0Pca9y3zIRbeQTpFSqejWaPkvsh1s9g2yIl39/
	v4WMEXBOAg8OdaORMX7ea4L8yJpRsFrh66ZJzDL5G/ABYpZz42WekWuGgjk3nVrZVNJ7YO5Pgou
	A5zP7MvvDffRoAmlJf5iQS5zdzY5f7otKB9M=
X-Received: by 2002:a17:902:d58b:b0:248:bcc5:d1b2 with SMTP id d9443c01a7336-248bcc5d379mr42830465ad.32.1756349868597;
        Wed, 27 Aug 2025 19:57:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPDTyJMIGDxlyKpgyZ1liFR82SkKrEtzGC4gPqxT5AbPz+li0JlRxHkrYbz7/XOZEMKrf6vg==
X-Received: by 2002:a17:902:d58b:b0:248:bcc5:d1b2 with SMTP id d9443c01a7336-248bcc5d379mr42830225ad.32.1756349868142;
        Wed, 27 Aug 2025 19:57:48 -0700 (PDT)
Received: from [10.249.30.180] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77054bb0c46sm11600288b3a.41.2025.08.27.19.57.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 19:57:47 -0700 (PDT)
Message-ID: <0c2a4877-d63b-4650-b7d4-a06a2730c73c@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 10:57:41 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: Add display support for QCS615
 RIDE board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        xiangxu.yin@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Li Liu <li.liu@oss.qualcomm.com>
References: <20250827-add-display-support-for-qcs615-platform-v7-0-917c3de8f9ca@oss.qualcomm.com>
 <20250827-add-display-support-for-qcs615-platform-v7-2-917c3de8f9ca@oss.qualcomm.com>
 <yutyrfb73wbxlweoq3mc6ezyqr56snzmznw3k6mcbc56fpfayg@3h5jwymlo3ol>
Content-Language: en-US
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
In-Reply-To: <yutyrfb73wbxlweoq3mc6ezyqr56snzmznw3k6mcbc56fpfayg@3h5jwymlo3ol>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzNCBTYWx0ZWRfX6rlVFtOALlkg
 amdMH4A1Ug++Fb6TScltHI/4W1VzuTb8cs1LlEJ8o6Bw1yQtu+xPWx2ZdokYzf8M/sbUTyt915i
 H0+7Zsq1kwjm9d8C9GUdqjcDvP1vHvhe9T+e6UXYhKSPRl1wfxX+x4BWUw7X3b3LOz5b/PdmbOZ
 0puDcauJdq8h5NZqLbp95nGlLVjGkplkC9GR0YcLDMPF3v1O/EK06imPxX0rDwIzAc34Ld1qv5y
 mMmBEQ42SEAKrFtLOz3XdvRK3TCZiP1gWZQbHhA/ulrl9p6ytl5FFv4LlMqVWRi8d5iYVTjk+Y2
 E6cPhRqlxSBBxEQetSC2TZC10Kw2bpc2uV25p5BYtEjXw/0z+rtYOUoOdu8iGVk1u9e8fMxUFD9
 /CsO8B7W
X-Proofpoint-GUID: IEHE15t8D92tL9jVrTODIEPUXWAmlxM6
X-Authority-Analysis: v=2.4 cv=K+AiHzWI c=1 sm=1 tr=0 ts=68afc5ad cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=qAPg_OCVEOE_nEQcmFUA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: IEHE15t8D92tL9jVrTODIEPUXWAmlxM6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230034



On 8/28/2025 4:01 AM, Dmitry Baryshkov wrote:
> On Wed, Aug 27, 2025 at 09:08:39PM +0800, Fange Zhang wrote:
>> From: Li Liu <li.liu@oss.qualcomm.com>
>>
>> Add display MDSS and DSI configuration for QCS615 RIDE board.
>> QCS615 has a DP port, and DP support will be added in a later patch.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Signed-off-by: Li Liu <li.liu@oss.qualcomm.com>
>> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 150 +++++++++++++++++++++++++++++++
>>   1 file changed, 150 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> index e663343df75d59481786192cde647017a83c4191..f6e0c82cf85459d8989332497ded8b6ea3670c76 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> @@ -39,6 +39,76 @@ xo_board_clk: xo-board-clk {
>>   		};
>>   	};
>>   
>> +	dp-dsi0-connector {
>> +		compatible = "dp-connector";
>> +		label = "DSI0";
>> +		type = "mini";
>> +
>> +		port {
>> +			dp_dsi0_connector_in: endpoint {
>> +				remote-endpoint = <&dsi2dp_bridge_out>;
>> +			};
>> +		};
>> +	};
>> +
>> +	vreg_12p0: vreg-12p0-regulator {
> 
> I should be more carefull when doing reviews. I thought that it was
> pointed out already and didn't some of the obvious things...
> 
> First of all, the nodes are sorted. By the name, not by the label.
> Second, there are already regulators in this file. Why are the new nodes
> not following the existing pattern and why are they not placed at a
> proper place?

Initially, we referred to 
https://patchwork.kernel.org/project/linux-arm-msm/patch/20250604071851.1438612-3-quic_amakhija@quicinc.com/ 
as a reference, but its node ordering seems a bit unconventional.

Would this revised ordering be acceptable?

...
+ dp-dsi0-connector

vreg_conn_1p8: regulator-conn-1p8
vreg_conn_pa: regulator-conn-pa
regulator-usb2-vbus

+ vreg_12p0: vreg-12p0-regulator
+ vreg_1p0: vreg-1p0-regulator
+ vreg_1p8: vreg-1p8-regulator
+ vreg_3p0: vreg-3p0-regulator
+ vreg_5p0: vreg-5p0-regulator
wcn6855-pmu
...

> 
> 
> [.... skipped all defined regulators ...]
> 
>> +	};
>> +
>>   	vreg_conn_1p8: regulator-conn-1p8 {
> 
> Tadam! It's even a part of the patch.
> 
>>   		compatible = "regulator-fixed";
>>   		regulator-name = "vreg_conn_1p8";
> 


