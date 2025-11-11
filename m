Return-Path: <devicetree+bounces-237192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C42DC4DE63
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:54:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AE5994FDC1A
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2542E2749D2;
	Tue, 11 Nov 2025 12:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d3Su+iTk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kZVXO7OZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BBE83AA19E
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762864676; cv=none; b=uEVl8nR0eMFiqjRXBYvZI36O1+tAqK4j5KY8v9qZX+omUFktNf3MWWvLKxsr0/2T1NDmQMicqmaMGyIveTru5my4biDh7a4iKgNP2FhNhVQUqbQ3kGiUGXN00zL92UpVQbxSibiv0H5+0CjTrMlwQ4EXqf9k5YmXNlI06SirRgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762864676; c=relaxed/simple;
	bh=F87/smNyR6Os8dg4MgBs0/IhscooYag0KN2o9H6aHs0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m5oFRxnj9YobXfBjZHAioXyb09P7ppRlhlbSjeH+g/8yco1KSQ0DcymfE7uQ/J/mr5WiRDn7fzVp4EObwbB5FnSvtiRNYPk9JrocnC3oU2YT1GV9ZF54qh7MFUZ4rvhmP4SRcZ4oE2pwX/QQ0aR5n+cbu74fZuEAwevxtAME4Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d3Su+iTk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kZVXO7OZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBGFoO2051440
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:37:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ia4arzq0yyKzPIBuGzO+k/lXgqxrQlfO0SI55RDLmg8=; b=d3Su+iTkvYK2ew1w
	jWBUOujSVltPgR5efWc25takI4/oTNjJ1DbVL1TQsmHoanNvuBC9T30rXEmmUSdo
	D/PkMjbh+9K3OP88QI2vIx1vhuzbxPhI25+sTVhcDJreewlJ9r+nQIHaFv4eIhoZ
	auDE3wCzFFbk7/ZEgVxstnXLxx74DuNwcoEh1H/zwnI5eimK6A/Kbe9qzpm6WF+E
	mDh1KK8Ktv8gp2TpnPktcz8+zrzEyYVY4CvZ072qd73Oco/3ROJV35nYlbpoaAOv
	XIWz/YxzFhZ9Dwg+MPMjbSp3hTNV1jdCwi6wfxUiy9rBkoQoft7aPr00jsIy3JQQ
	GzIItw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ac11x0t7x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:37:53 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b9c1b12c151so1084894a12.2
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 04:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762864673; x=1763469473; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ia4arzq0yyKzPIBuGzO+k/lXgqxrQlfO0SI55RDLmg8=;
        b=kZVXO7OZP8qtR9PF8y/Sj9FHv5rUEGwr7QLfyZhHk+/PE7LEA+GFZPYhcPQbAk7B86
         yG2kmYOtCklIO3VFm9VMFYuzGRTMReGiSdpw2eVV7HWPKLpwkZXPb/IrWS8Mqse0ISwx
         +SqhsToHZicXDWhGRzjDnIfhEJSupmMwJCShNCMZJSfVkwD4AWadcAxDuPat+qltgBjA
         fHTqlv/scLvs2gBvsee8zuspOelUQMj9PI1K8zMs5tvDhy4oWwAB+zc6JBm4MWpu5mZp
         lMqsBy3G1rqHyqM8N4DXXcqUr1AlBjQN7URppv6+5Hx/E8/sDrONDK5QZYEfDM7/feSL
         PRfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762864673; x=1763469473;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ia4arzq0yyKzPIBuGzO+k/lXgqxrQlfO0SI55RDLmg8=;
        b=wi10pLj7AA7mI5k9V4yhwtuTOTZlE7SZznCUZeZoZ/Xy6DTtDdN+JgPZjPA7S4Ian+
         h1Xy/QLQIA36DV6A+X087Lv0+qXez1AhymyY9jshojO4LeZYAAxxP1oIhkCH8I5l0Eu9
         SeoosSOmksoSWlNjMLaoFHc1892Ysg9waRWA/L0KKTB0+FEbqdyz9hJiRRUh11s45fXc
         IXTEhEbEmc0xjpwCeDrl5zS6ZiTCg8zNUnzG9VwA6XbdHVavdw3XT/qXECp7+HKfbGL4
         nKH9PTbhKWzFPCl4ExWO0ixs89NFWmZP//tjuNKi1oX5b2p/n5Y1Ev9AAmmqIfSNC3c4
         GwTw==
X-Forwarded-Encrypted: i=1; AJvYcCWYr2cbmSqZHpkQct/XkBqblnap2CZ8U0yXa5fr33mDurgVMzCJyeV07rL+Gh1mrFXjPDBx3sfxHRlJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyFkG0VSMx8W06ART9pros/0IiwxRHkLhVoSbU1NToNO2wEcugC
	3ChxxjgVrkCwzMcwtgmVquGx82YKMQ5REhNRafDYUBb4t37cAXfVGF41f+13bTdGDBAkChkkVAA
	1rftrpIDdh6Qo9JYVqYJVvtHyOwdr4tdht+R3Mwy6G+gIdY8LOsudiqTU7XH4W1fi
X-Gm-Gg: ASbGnct1odJSdE/w43LRfkzxsrMWBiQWSb5KAJyhrQXB1myVm6hb/VHJOhC++dqTBPs
	KgDpvE/QXFVl0nx3eqqxWyfnwaCDrJbzPJkZJCfWDJ4TUEnRGBLuyA2iCrp3MdKdDJm8rVgkNkc
	RTVA4r7dAqFLNrRLaik68HnIr+IpGTn94+sd4Fgj/qomIFzmlLu4BTCYpSa1Xj7glu0oaysfWQm
	pUm2K+mI3OsJVr3H2+hvKX7f8V7O+s6iw6mM+JAUmuf/Qfy8pAtbJ9UWimw3cowHG437GRAddWo
	kNHJ1lEPn6y8y54eD64BDNI3vfDVZgqdA9wqz68FgIFPID/O4oYVf825UhpZ/u5lFCz7PbRNPJx
	sYJ0T6K9igbi7XNN3q/jJ
X-Received: by 2002:a17:902:d490:b0:25a:4437:dbb7 with SMTP id d9443c01a7336-29840fee954mr19743345ad.4.1762864672959;
        Tue, 11 Nov 2025 04:37:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0q+p3aApFgfFXqkFESOn3QG4Gvbs1jnstOAi+s6mYdXc9o8PALRvTBIKDC6BrvFmGzWhTuw==
X-Received: by 2002:a17:902:d490:b0:25a:4437:dbb7 with SMTP id d9443c01a7336-29840fee954mr19743165ad.4.1762864672475;
        Tue, 11 Nov 2025 04:37:52 -0800 (PST)
Received: from [10.233.17.95] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651ccec04sm180165815ad.102.2025.11.11.04.37.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Nov 2025 04:37:52 -0800 (PST)
Message-ID: <a3d1c1f1-ef52-4c68-b3a9-8b394da32208@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 20:37:42 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Enable Bluetooth support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, stable@vger.kernel.org,
        cheng.jiang@oss.qualcomm.com, quic_jiaymao@quicinc.com,
        quic_chezhou@quicinc.com, quic_shuaz@quicinc.com
References: <20251110055709.319587-1-wei.deng@oss.qualcomm.com>
 <lr6umprjjsognsrrwaqoberofivx6redodnqwnuqtpp47axhiv@nho74vyw2p4e>
Content-Language: en-US
From: Wei Deng <wei.deng@oss.qualcomm.com>
In-Reply-To: <lr6umprjjsognsrrwaqoberofivx6redodnqwnuqtpp47axhiv@nho74vyw2p4e>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDEwMCBTYWx0ZWRfX1/rCqLojpWFQ
 Ib9r+mysF2qEpuIjRM0lrY8Ym+Gooc9BRZ08jImUUJzDx8CDJH2uHu42y0Mvbz/9DDE6EFgE3id
 Xm5AdCbza18xsIJGiLrywPb5Lvur/4WxHT6J3v1oNt1LCr6DdIMMRWEhl+L//PBkw6d1u5jQWCy
 0Fem2eKp9if3tlWwvoRj2grk7KY619EElwa2vfSEnfSW/nsBKPHbfgnChT4cW+q4U/8aKbJy+li
 SxvTMUY2mqnEf6X9pbiQjviwtHP14buU0bUIvVOimTNtqDUN+k7P4j0j9IKDJ1ZzN0qaj2HQ/ge
 psCCrjxFTC05/Cw/tjx8Ar3S+DteMSTbYyjf1xWFQmmg3kv+71puNLPvu1P6xb/tB/LbyQ6EPrY
 DDM3lOT1qJV5TLNdM68ScJS91hoZpg==
X-Proofpoint-ORIG-GUID: KPrsS38zZRQW0EfhRU0QipZ8crnMvf31
X-Authority-Analysis: v=2.4 cv=L94QguT8 c=1 sm=1 tr=0 ts=69132e21 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=F864Gg6nNBeLBzAGB4AA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: KPrsS38zZRQW0EfhRU0QipZ8crnMvf31
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110100

Hi Dmitry,
Thanks for your comments.

On 11/10/2025 8:39 PM, Dmitry Baryshkov wrote:
> On Mon, Nov 10, 2025 at 11:27:09AM +0530, Wei Deng wrote:
>> There's a WCN6855 WiFi/Bluetooth module on an M.2 card. To make
>> Bluetooth work, we need to define the necessary device tree nodes,
>> including UART configuration and power supplies.
>>
>> Since there is no standard M.2 binding in the device tree at present,
>> the PMU is described using dedicated PMU nodes to represent the
>> internal regulators required by the module.
>>
>> The 3.3V supply for the module is assumed to come directly from the
> 
> Why do you need to assume anything?

The M.2 interface provides a 3.3V supply, which originates from the main board’s 12V rail. To represent this power hierarchy in the device tree, add a fixed 12V regulator node as the DC-IN source and link it to the 3.3V regulator node.
Will update commit message in the next patch.

> 
>> main board supply, which is 12V. To model this in the device tree, we
>> add a fixed 12V regulator node as the DC-IN source and connect it to
>> the 3.3V regulator node.
>>
>> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 115 ++++++++++++++++++++++++
>>  1 file changed, 115 insertions(+)
> 
> Why do you cc stable for this patch?

I will remove the Cc: stable in the next patch.

> 

-- 
Best Regards,
Wei Deng


