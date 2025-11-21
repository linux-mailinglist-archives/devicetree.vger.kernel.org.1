Return-Path: <devicetree+bounces-241123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 373E3C7A137
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:16:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 21354342397
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BACE52E8B9D;
	Fri, 21 Nov 2025 14:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M152LUcN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gXaXuOYh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5A02BEC3A
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763734209; cv=none; b=Bgcsa5121jdnP94d0rb8NwrEBeeRbZz8zBWkvRmHOQamQlQLEvM66xRZALUxjb84zgKtKeJSLbYpXDLy4UtgzD/3r3/7Qs0Uv9ROVMnVjg52OoqEy/Z1bwWUlyF/WvT6sWm6eiitbARhpQd4SjIfXhyVEk6SC2F+lGloloZ9dMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763734209; c=relaxed/simple;
	bh=6WN4ZIJl0lRELuwbSIqU7ln4I62i3h4XdJ/9dMuU6oI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=le1xUk0T0zacTwmClMX+WZMBz8LaaQ3Zw+iG/p5GC3klDS8Tu9eGGlHwobw4uWkVwTyNlLcQJMOqTasFq8EgQgdBGPcMUc0uhtprPdPvDwfGZEFhm/5D92+SSA1JWw0Ti2dxMnRhOOnjqj8h+VjMEgmgMMd//I1+NzBfGqdsGlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M152LUcN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gXaXuOYh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL7fmSX1390819
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:10:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QN28f3FLg5vS5u7Mdk87weqjFDrtVo88/sfbbw07kTA=; b=M152LUcNRFm/E8nu
	dBFqJd7gL0fnf9gx/J5lel5+IX6e8BMOJb6O2T5/GQJdvV25selQykkUcX9MeWjh
	vTyODMdCDa8uXHmmtzyloCJJ5NKQecsFl57eIOVTWPaTTqy9Tz0VtSrUm2jo6qRW
	ltJPTT49Z1Xu1hoMoVjtnm4usXy4T+mysQNc7VWWjbvnWl4DYqYLiuN7kXhp/bWS
	06cXKGYz3SJhwj1Jc02NUXg6ERC2qsS3x8cp8ljqb9N/8AWuYkKK3OZyPCb/zhoo
	0EC/5suqU46OoBsNQjDSoN6zzqyWJzYGRe/K6bJR4ftURwXzCamAGmFfGpDtgN5D
	6S9aLw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajb532qun-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:10:07 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29809acd049so43378755ad.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763734207; x=1764339007; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QN28f3FLg5vS5u7Mdk87weqjFDrtVo88/sfbbw07kTA=;
        b=gXaXuOYhuLHLdR5lg6WbmRHv8vvrkRimEDmil6BMjyLSNiLO4njrM//VLhkvC/CMYJ
         6zSTsvx4XFW5SuFWMbkMnufZ1eRJdw1TPlnbNqRD114gnGzzgKLauWrXcXbvasgb4yAG
         wVcRGTGkmapY1CWrlqxmTNHWf6JwXNvko9j3I1T0lm44kRl/WNduhrVph860e1vG/NAf
         hBtCNQa2MJ+LEEchTTt1ygv/ynug3ysiOyfpV9SbekzN332kOoZ8bji6/zolfayT48s6
         cVbcVkeSx0TjKclng2by+/6cxiFnCszsXamXmMfA4ctEiW7lDk8DHZ6D7hFW0s/UFikz
         S2pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763734207; x=1764339007;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QN28f3FLg5vS5u7Mdk87weqjFDrtVo88/sfbbw07kTA=;
        b=QzKWobNEQxryQAe0474v4SpwGa9U7Z6JWl6Qr3IZHqvs04yftx9gFHlxVkxuaBWGk4
         d8ZQNSktu1Q9mO/a3BiyO4xiijJ7lQOgxfmADQ05VMssdmOeyxNilU6sbDWx/ihbminZ
         4p31qkZYdWmNJO7LD8R4SaNbCHhDtV5KS2lyeFLEL35maj0swf755XQlUTgJnnKGq8Bi
         v8oasZrlHHf3CGH0h5K5obBXbSrbrZjIPOxmG8bY/lppDFdrpvsqUtDm5Wh1FbxpwRC8
         SjJAQvYqi9Zd6+sp8MquIVt8+Vc7vr0Jjns7wBuQ7U50/Bxn6HlQMs/eMQAvkMvX/TyC
         4mTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCGGhWediQwez54zYKfdvDBpx06VSRJ7ynACDzO8FD1+ue8nEDkSnwjxArQMRDCTBolrB3iZK/pq9X@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/V6FwySctRY8++r7VgQq6kF/nJTbSgZWcr1VUmnanddGXbDTn
	uH+s3Xmyt7uIYGC9SZQ3Prw4oUvYspyrpn1H5g3xrazGzY10aA8kHBOXSLB5cG8e5myXWlRqF/A
	oc/nvZiPZ3DEy5RBpFNV8QJP/4CfcTazmLNFb9cAMbB50kkK2dnl0ZbXIP16QPcUX
X-Gm-Gg: ASbGncvWxZk8xQUX8h9q4oAZRox0ftiY1zu57TnvG5+lE01Voa4IIuExuvt1UUKzpnm
	HMhSAXAekgbEGwvE/xPmRQGjep1cNtlVM8hvOISAzX0AwYNUQCzr2XPojUtCw1/LS6eICZKaiTZ
	Z2iMNCL0W/xr7DKuwqolhkbBTGcq1Jni6B8nEQPDJThb1BRO3WbQaMfCGxPywaD7FZrltfBNkAy
	BBHnztNyH1RQ0tmFSVBPXXnLImjR8bp2rCjBEhEWG0wG5O3Jprt68zuRiOKvWdaz/PB9dn8a0Oh
	pRsbk2gmfNM9VPNeZN+rUTtBbZ/OsoZ3kk+v1iz1kjt7EZMP9NKcSXDlrYLJd26mvjPl6yLJKN0
	ZvDHylVSzEuHTLiQuJeZLDxJVZJhN4ajRTA==
X-Received: by 2002:a17:903:f8b:b0:295:6d30:e26f with SMTP id d9443c01a7336-29b6becfe11mr30968445ad.22.1763734206590;
        Fri, 21 Nov 2025 06:10:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFhMkNwTjEuXCFQAkklm1We2RzQjI9waYIa2+4BnDOkaT2nfUYxYNCNHYeSYsK7tWprGQYgCg==
X-Received: by 2002:a17:903:f8b:b0:295:6d30:e26f with SMTP id d9443c01a7336-29b6becfe11mr30968025ad.22.1763734206057;
        Fri, 21 Nov 2025 06:10:06 -0800 (PST)
Received: from [192.168.1.7] ([106.222.235.192])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b2a155fsm57992545ad.88.2025.11.21.06.10.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:10:05 -0800 (PST)
Message-ID: <83e24ca2-44bf-4f8a-a6ed-32f37e0a0a2d@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 19:40:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: nvmem: qfprom: Add sm8750 compatible
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251121-pakala_qfprom-v1-1-9d16485e540b@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <20251121-pakala_qfprom-v1-1-9d16485e540b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fAjPaUJF7fXBRtSdA2NJjBwNkhht1BjR
X-Proofpoint-ORIG-GUID: fAjPaUJF7fXBRtSdA2NJjBwNkhht1BjR
X-Authority-Analysis: v=2.4 cv=Wugm8Nfv c=1 sm=1 tr=0 ts=692072bf cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=1VMsAEDrMo3f5NIhEus0lw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7woQoRguKzc_0ZjhR9gA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDEwMyBTYWx0ZWRfX6fHivooHcd3j
 i+2BStI+tSOCzsrXs9YFMExGJougjUb3e1jG2HOcs9WQ/VPOPDuNMgD30s35U4SDoondW2EIinH
 sO5t1VbhHVkbdYVM2xY7qcKwtlZny6lr8wMHTmEk8+kG7ZTHUxLWBW0KLyl3+4/K4KTqMs70oZs
 yLoduDGtq5N/ntpiS2cFLza1VvleF6DXG/b3JUvonHBbTYqF6YjsmDDorUPPWCyP2NWg2mZ/Tw4
 jrrJKKVDMkjdCA4/Ijq0k0CNapxHwKw1Bv8gLp00ilal1xYSL/DecQ0Q1oNAPyoKQkF5A/ieUyk
 jSPJXBrWYvOD11yhT50e0QRnO3mMjpAcg6J2vT6d8qMa/pKmCYM9lLc5tc+ZafOz4d1a0UafOlN
 yDx1UxGgM8OspJqegXHRKBhHrdivHw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210103

On 11/21/2025 6:36 PM, Komal Bajaj wrote:
> Document compatible string for the QFPROM on SM8750 platform.
> 
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

Reviewed-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>

-Akhil

> ---
>  Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> index 7d1612acca48..839513d4b499 100644
> --- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> @@ -55,6 +55,7 @@ properties:
>            - qcom,sm8450-qfprom
>            - qcom,sm8550-qfprom
>            - qcom,sm8650-qfprom
> +          - qcom,sm8750-qfprom
>            - qcom,x1e80100-qfprom
>        - const: qcom,qfprom
>  
> 
> ---
> base-commit: d724c6f85e80a23ed46b7ebc6e38b527c09d64f5
> change-id: 20251121-pakala_qfprom-bdb2e49baa20
> 
> Best regards,


