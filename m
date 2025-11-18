Return-Path: <devicetree+bounces-239712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8D1C689AF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:43:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A81D14F3552
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8012311583;
	Tue, 18 Nov 2025 09:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o3rQaBj5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J8Gle0pE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5610E29D291
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763458772; cv=none; b=WcMlmE03aFbrANovHvhW+Qy66qhbuU6aPuy5FVyHHet1fU0qW8OXZhEwdNRqE0V+bUUQqylw+wuNXThoefyf4s/QRl09hwduqsaVGnfViwSs7ZCWPZAchXNot9YIO1V5Rsuc9+ztMEv312ARCMOUUx9+huXPlmqsAL1N7pjZOMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763458772; c=relaxed/simple;
	bh=WrlyMU3FW2/XAd/LiX9aSpm26vl+hmVr+VlOf0zE3j4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V01xp10INQjdg3q6aptXC/ZPnD659rhv+8mlGpEwUOj6xTDbiiiORkAt7GYzeUy2fOqKlY+nF9yE4a5//g12lAZkE46w+Vsw4Mkuc0N1PPytOKZpd4XHqj3twFCHzMJQZ4tQB0+JUjX/8VF8qM7kozdBSjG69keynSblHPHJFjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o3rQaBj5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J8Gle0pE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI8VUwt2250242
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:39:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PBmMSKW7dW4ukgSY/vGPXYT23uCuYtGDCP8pE5OXSCI=; b=o3rQaBj5ScL1zN0L
	PHBjTonQzOvLNOKcZC6UVeX14zXdkTIPSgWOjisVnqIpwLep//EgkR6JUdotVUMo
	E6T7T0wFwFhX4wdVWtTq+tZ2W2izSD5R/r9a6m6104ig28ALDUJR9cT98evjB4BP
	SbT1gd0CtDVumpxYTC0pA9aLj5f6kCUH7su7D9px2Z1trceFZ2hRH0DsMJad5d8y
	ZW1giSiulFLiLVtqAONduuiRsr+aKZN7BYOhUxnupNtQ/6f1N9yJMN5tSPqOFQZ/
	on/FtN6S9Qk3tLvrIjIwnkrY3oDXKk2dGFcR5LaVRqIurmr46CS7tNTbez6Ody55
	rIg7eQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agnc5g7fw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:39:30 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b184fa3ffbso184819185a.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 01:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763458769; x=1764063569; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PBmMSKW7dW4ukgSY/vGPXYT23uCuYtGDCP8pE5OXSCI=;
        b=J8Gle0pE1M5TQtw2pp4B7uAqXUhCnwN+Xevon+/Se+A5cAEIUZ9tGuJmJAWcorQk4T
         XP9LH9WnhiC7WPELFl/gehAn1WdkCMUUCWw1rh120rtArDe5Bc3An3sCWMAPJjTHf5gT
         172dSuWPiYxW3ZcJntichbGn58TBb2S1OmOak0yn5xnyQkGFTHH3lJxAPDK9rlXRU7H4
         8IUTOO0Mdk65ZuDI6EJKdrGOa8lIpiZdRZi8AL3SJjdKT/ypEp6K3aeVNkD78JIzgZdl
         KsKgLxX0nWDS5KuQRRFse2reeBG50kE4ckWburdRJZo1b7/OnGLgoYRuC6rEGZXUYBvU
         Z1xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763458769; x=1764063569;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PBmMSKW7dW4ukgSY/vGPXYT23uCuYtGDCP8pE5OXSCI=;
        b=kbxZmkQkPag3/Mr4QLN5pa6YH54Brw4XYEAM8HSKkfQbc9A+XnGuvxzxfypk47+qoi
         ULumyFoDrRyE8XjsIEIPxW2WSE4KF8vNDB0efaBPwx3g/G7kiS7uN7E+Kr/B4lnGPRzW
         bG7oa7BpBX5x8li4ZD3x2ksbGgSJAOPnqFwbzZRrYdr4NNO4A5a+pC+uqTEm/UjsNFL8
         jm8ZcnR5C71JFqTNbQMQvc5ckb4x8FtrIqNeOBJi9PEQO9RVz2Cm49ui4ZtI7WegHOBN
         qtU96xMzF2eRX3+amDc6F5NgFyrb+stlU35mv8cs99xVax3a1G8b4wea86V03hKZXHng
         CywQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdVbM32O4umXmlpDGWXFJ9b2neTDb5KVspQV1ck4/cFyuqEDgFtVG7arAA19gIIStKC5qtn0Eu3c6X@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu2iQAV+2v8yxKfn25xVM+TvU1iAKYFPVOIp/aB+m5BerNKXox
	w5P5lwZ7AHS1Q2hESViRyhMJpM+q+3uHJqTxAnY7dZFQdmBn/o9MMGxugjDt8LnzuV1YXuHxj2Q
	EVxwU4z7ox6eFsYTLmCeLMZUOaoGVTCjfdxOGz8QfKQx2lrPSKUsu26YGS4YU33uD
X-Gm-Gg: ASbGnctzKmL1KUx3z0erYyBckYEHdslwq+/oBF5l8nz1okPLsS7jY1oyqyFJYIkqfkV
	pb4WrcFOHPdjkTzGtltABMETR2LLNiiGZ+SMSnCM9vBEfea2HU4h5cImCFr2rmMxUx74qvT+Jlj
	yjkbD4XsFX9oqelLfetCMGkCFN5CTcy4zUOatH9RepJwcFOF15dsIuYPc9ZkI4/UqjXjvQJaftw
	o2WDcW2jr1mXLohyt0hiTf6Y/wsjNlKgYlVpcDIaP37lU6SP1feCZ4NzDvFmmHVsWUC4ZqrbyDh
	Oxb4chBrej1P2E/2fBP0SZSO+af4ykaiKG6Y5gVtrZn6s9mybs5GCkIFVejW+sxR/MRjfoQjapp
	ndYEf11dyFFiz32/YCICMmUoozS+c0Jeok3JK5N9ydri8GJU8yxsRW7sQn7fPR65H9H4=
X-Received: by 2002:a05:622a:1353:b0:4ee:1eb0:fbd9 with SMTP id d75a77b69052e-4ee313e7788mr19437551cf.1.1763458769325;
        Tue, 18 Nov 2025 01:39:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFpkWYRcH6Ic3hvyodSbScOYYm2d46nVwKpRacD79DGZMCLmGeLtZKUSf4TUfGF5y/FZ3a/2A==
X-Received: by 2002:a05:622a:1353:b0:4ee:1eb0:fbd9 with SMTP id d75a77b69052e-4ee313e7788mr19437361cf.1.1763458768906;
        Tue, 18 Nov 2025 01:39:28 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fdac50csm1305346366b.61.2025.11.18.01.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 01:39:28 -0800 (PST)
Message-ID: <1599d0fd-ad93-4b74-8954-37a754907741@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 10:39:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/5] clk: qcom: clk_mem_branch: add enable mask and
 invert flags
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
 <20251118-sm8750-videocc-v2-v4-1-049882a70c9f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251118-sm8750-videocc-v2-v4-1-049882a70c9f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gny5yXU0it1uPjhStNAd59_xieuk9-uH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA3NiBTYWx0ZWRfX79lgV04ZT1qL
 0lD7Tr/SKYJbShmlj8kD04AA8rO8TqwiY67Y+5yChLLjWwzy8f0wgCsznYEadD1/qQegzLNQpwk
 XGOv7R8SxXq6UdW+U90K2dH3Fh1vOACAopkpDSRRK/wB7NejJI+wpqkmpMDmYit/6dDdf0vHc3Q
 LhzfDRaQbnxMjict65lXyl3gqP638ZtBl9yV7NWh51Tgx24Uar7KLss9eNIOSRPNLgkrBU5E/NW
 bK+eDwlIAwbYS3WgkEsl6FGfobA8OHmUAiIkFrEFmzy57+W5ptoAj7PS66qB8ZVugLhdfoH3BLg
 AekHB9emRFCNTNg7A2JZNt9hsnxQbc/fPqVnBOiVINGXrWIvOZw5UmOEmE0uV4vMhJ7wsxJ1QMa
 5zCoC8gIup5gr9yBn1GsUrGym18yaw==
X-Authority-Analysis: v=2.4 cv=BYTVE7t2 c=1 sm=1 tr=0 ts=691c3ed2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ryDgvqaYVM-mru2dUqoA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: gny5yXU0it1uPjhStNAd59_xieuk9-uH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180076

On 11/18/25 8:17 AM, Taniya Das wrote:
> Introduce mem_enable_mask and mem_enable_invert in clk_mem_branch to
> describe memory gating implementations that use a separate mask and/or
> inverted enable logic. This documents hardware behavior in data instead
> of code and will be used by upcoming platform descriptions.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

