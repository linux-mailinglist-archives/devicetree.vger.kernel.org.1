Return-Path: <devicetree+bounces-239381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCFFC6444F
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:07:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 802DE4EB87E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 802AB30E84A;
	Mon, 17 Nov 2025 12:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ec71H1bi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aqzobvzr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0D331DD96
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763384306; cv=none; b=ddsnhBWVgIw5Rh8euOJ97/9XJysgQseo/qa4M1llQgj+ROv6ldTOHSZdlrMWbQheEdUwBb2rFENdEO9fVumYgVrUonxW6KPHZsB3ggVKtGkwMflDnUcQbgOnR1LIHz02q0003AZWKi9n1B9PraMRqxKTk6u2nyfWXDJsqDt6rPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763384306; c=relaxed/simple;
	bh=M/vV13OR5DiGZcbssDcxkDu4hqqj1l3nFnyjuCAyP4M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ummhDPKXdJZifW7k6hlghNWFk5MwGR2TP2mO+1iwfBCjN2wh3+6N8VI1+dIE13IgPM4aNRu0R4Hle0keuJauhIxYjaWRNjVJML/2Js7iqKIOvDivWEwM+YzubbBH+dkwDLEK5sHNJI26cinA/Lh6FsjUXapGlcXvP1LOKmzkWg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ec71H1bi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aqzobvzr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHB9ev02911347
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:58:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8spAh8QNxCgY7oAIc47unleOf4zNEJucX6DkSxfwz/w=; b=ec71H1biUeJNSiVp
	0mpJKbliv59z5ymVBJVkn1Qr4Jn07Opz8g/xCSzlMhrkocU+AA69Dmw9diFFbdCs
	T1Ky/YmB9tgJjyWob12fMuwH7uERMtDx0GNbZeBqojnMLRjW6r1bATuQO4VnzXZQ
	mp/4encYjq9IE8lljNfcD/SGXF1CqkpxBIyP72nPjlJW/m/BL+iFj9QNq/ocQwWR
	uCa6+pTafmh5I6iqWPCTxXi2BX5d3i0kDMEgwrFFXbhWFiE/QM9p/flKJuwbnmRC
	ndJ4LXHH8dwVawb2+Zee8VwhPACrs1sPu0jMLCIITAZfsE+jAk0ngCArf3qHrwu1
	GoAeVw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejgccrnk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:58:23 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ede0bd2154so16108541cf.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763384302; x=1763989102; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8spAh8QNxCgY7oAIc47unleOf4zNEJucX6DkSxfwz/w=;
        b=aqzobvzr0UelIj5KVoANcrI7ZpdgAiRtMNVWiQuUn3CXqDVHxIX3+CYhSvmNXWGY8I
         BWj/4rvTtuG9isPEHwkA9wVHIz7NiYbAtE449e31kZp1Rl/QyhQJPnh7/vkXRVbwZX/z
         AWuBTmCom2Ith5L3gfhZ537Ts0pkRopAvJMCr1KzfZ/Gra9CjhJ6R03MBy9H8G+NqSL2
         XB6BAP/+6vuCBDZV8t2lTm0dPbgOD97yBI39MP/N8BMJ+fZWfAUe1/gBHku1dAaiAY3X
         8KKp+2MftIatEiHs10LdL5js0byhnvwQBCC7Z2+rTfXhG1ZzZQC5ET0o1o+LMHJeRE7d
         Y/og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763384302; x=1763989102;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8spAh8QNxCgY7oAIc47unleOf4zNEJucX6DkSxfwz/w=;
        b=Jt4zZW6mQU0NIT6JeZB6nrf6ArWEmZqv+XGHVsFkOCaVFlcF+hjxXJkBPBlw4bnSU8
         2oj4o3ghdC2bhrMUWLO4R4SRA4tUU2e+BfDb8iXfE/YvaSt3MopJigw7WUDYlyDOf1i+
         KROJAsRAYM3Jl2MixBoCVh0S5MNPAjFeGtKD5EsNam1f6o8L7Jijq/ZqxqZIPvC5VpVJ
         Ul6/+O7zm6rJy1Tt9pz69SFgsRWTxNmvERTTjUXS2U3j+/QjIBvIcW24k0thZkcNF7xB
         Mf/o01P1Ix2AlyfxlGglplFAM2jH/AgYUJVMEx5NWA36Dk2ZZ1feSKQ2hCCrH6BsoUa/
         cPVg==
X-Forwarded-Encrypted: i=1; AJvYcCVkX7LxKW5SBzVMZBbMseTuSIosZl9FZlRiPT8h5d3+fKGFgHKk9xI0hIOXimb8hZx84t80HVa40fwD@vger.kernel.org
X-Gm-Message-State: AOJu0YwGR/F8lIdvlhcZtMtVfNCafNUVXyXzwGl7jCUCaq5kPt0WhW1k
	QjVWTEJHdYsj9Xbp0Avgij1inqTkasi/2RjsmeQiriIR5wqWFxzPWFXFUtEOW6bIV3swBPpOlMe
	UdJG7SbUk+lzRq/G2YtIl/5f0XkeQmTdj+dWKpaw4nUpetU6O6ZD4Rv9SOLVcWEAE
X-Gm-Gg: ASbGncsHYHEvTwKASmcG2Dow4OPOmrOhrzUtw6LUBcP4V808+e3gxJgMhE+NePQucoA
	AdSQYsTmXNHneMmUenTKBusQ4+bgjAsyuitzJiWpcAtgwLBrf9iBvgojOLcvVEjg/K8uOl18nsM
	/M2HXGRYH8MzD0YodJVxPbFG4IsdZVfuaQH4s2mB7UOH7sWt/PWmLYJTadcLqjC1z1Sukbk5T7k
	u//h3L+9Fz4++1kZJB04YdMi1sIgUzPKkeAmdrCgnzfCyQlo9H89fI7ynqkv1jDqLMElkVri4dR
	I/VF7MVIXCWWV3Db/0kqOmJHHP3SyLM9UPQbdkO50hekXkBga8SL2MiSxKg235irT7aR7Bv9xQU
	VmbF586KUdg6KEq1z7MBjhPkbVaQG5QdiCsh+/1fo9R1VjbvwAjBCoZ9B
X-Received: by 2002:a05:622a:4f8d:b0:4ee:87e:dedf with SMTP id d75a77b69052e-4ee087ee1c8mr54870381cf.8.1763384302480;
        Mon, 17 Nov 2025 04:58:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGIuOszFQnEdTG6xywYiSMgCVRX7PV/UsWoBbUQgI2HNhYueQciRMR7ZQumion8Vv8iYdd1bA==
X-Received: by 2002:a05:622a:4f8d:b0:4ee:87e:dedf with SMTP id d75a77b69052e-4ee087ee1c8mr54870091cf.8.1763384302086;
        Mon, 17 Nov 2025 04:58:22 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fed9d38sm1086600966b.67.2025.11.17.04.58.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 04:58:21 -0800 (PST)
Message-ID: <5a0c9cf9-6f93-4216-8f98-7a492dd20f51@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 13:58:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: x1e80100-vivobook-s15: enable
 ps8830 retimers
To: maud_spierings@hotmail.com, Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251116-asus_usbc_dp-v2-0-cc8f51136c9f@hotmail.com>
 <20251116-asus_usbc_dp-v2-3-cc8f51136c9f@hotmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251116-asus_usbc_dp-v2-3-cc8f51136c9f@hotmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Sj-uahWdncke_Ez5Hba8Ykbva1DJJbe5
X-Proofpoint-GUID: Sj-uahWdncke_Ez5Hba8Ykbva1DJJbe5
X-Authority-Analysis: v=2.4 cv=PJECOPqC c=1 sm=1 tr=0 ts=691b1bef cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=69EAbJreAAAA:8 a=EUspDBNiAAAA:8
 a=ucDlCoAaIB5v6D95Jc0A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDExMCBTYWx0ZWRfXx+Xq8H9EBz6G
 PK/1xDMT2z3tc+FfUJXet7aMrptKjwIqlczR9nhWDDzc5ZO44xZuv8VlTmPtoE4A+HW5aqa9n+N
 kWABN9Z0e5eNTudagf0R+tCRD+o82U6ijm8aqUfaXX8MrjBr5luvSl0btIF+PcKlCG1560RLY19
 gTlN6URgjP+5emsLDqf/cN58xoQO7CO2Xc5zhqAP7zBlOlfFLmkhozFVaUF3uhmGSv1tjvtism1
 FvDlYzwVBaWdBr5gDwi+s+O8LbmIDLDy7q6PY/CPAb9vXT19YBtZg7Ee/5+2i4/Op+Y7OkcMjOf
 C3JqAdmxI9rtYC6Bp1soB7jNnJ9bNzKc/Oim/N6IgbHezCGiaH3dSIYflBIXooN+BW2Lsgr8LVg
 xVKuvqBK5W9mZ1r3rzNxQwMwXQciIg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170110

On 11/16/25 11:52 AM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> The Asus vivobook s15 has two usb type c ports on the left side, these
> use parade ps8830 retimers like the others, enable them to also enable
> dp altmode
> 
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

