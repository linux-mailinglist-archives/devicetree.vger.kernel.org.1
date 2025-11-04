Return-Path: <devicetree+bounces-234602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D0028C2F2BA
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 04:34:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F28B8189CDEE
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 03:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D466528DB52;
	Tue,  4 Nov 2025 03:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="amsJfX58";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YYhrYa8k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771BA289358
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 03:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762227273; cv=none; b=lbCY3aStz4EbQ0wRNQx26wixHF24iFNVOAihYwL5T6XIVQnnii4ci1yQFE++1ydpEtjNcZ040O65jXGLYUNiQx0v1m6p3AfZW+zUzPAHp+wbaH5rekTFkW9MASmMbWDO2VyWSGkurIdhPealF7jxX/Lb+31jSCMS6ur/6LkzsnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762227273; c=relaxed/simple;
	bh=n8Ub7A6S+7POEG43DijZiuTWeDWVwra2iLpEtrebeX0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pxS6C+8qLkVL3IFCOVX2J707jOeco9n576t0ZbrTTPEG4S5xNdyUuEs4j36GiZOabNld6TkH/vK6l3jnCPV3vmCnS+CmssZMzHmlh7nni8Ud92uILwHW+n1iD6KsZ+q8LtxUVVoKh7S0lcS/f8OoRvJ0ulPFWjQTMepkUvoK1Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=amsJfX58; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YYhrYa8k; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A438Fga3616827
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 03:34:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JM0VP2lHokmO4GTbs1/cjjHRzdy9AEzcgNNOnuSZRy0=; b=amsJfX58KIX6FUyP
	LqMDwk9l3nmRs0igWE+QrZ/vst6sIpJF8ABZcKL8CI4Fk/cZGTmspxiUIDPP8Ovw
	lwS01swr8VF0w2RCAzXP7zIVNJuT+/je80Es7oETnOurae71GUZj++Zp7bNTqpGW
	6Z2207gId8lNynfDmBgVo9QlZ47Q9KdxVxDf3SIaiqKt1WjSDpDECtSiHUpvC4mr
	ZTLojlYVwK/ub+nFZaBKaUqWu4ibg/aJh0bWVGlzCRNBe7gCj3vx0CRPPOvB2/Ct
	Kv6bvnlBrZsIoh5058SwCCzJPm7AGzQ3kmk/eGENmdiA1HYj90TZUrX/OVlRewsq
	ryMCxA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70fhsg9k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 03:34:31 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33ba96c9573so1640016a91.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 19:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762227271; x=1762832071; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JM0VP2lHokmO4GTbs1/cjjHRzdy9AEzcgNNOnuSZRy0=;
        b=YYhrYa8kSA2gJtk3toMaLnU9S+bXSCLQb+m+A9F4pzjuPs1+b0j04DSntHnmBQQYi/
         tjaJL+t09nITn6YQK8JJEgSmPzF2qwNAJRt+q/jdWmdNFn8omC51Vdb7fqPjSReQAMzH
         sUZfcaUNwBBDpSaJEg9xQQbSK56mM0lz50pHVG8Rn0nWRjgBTBW7XlPvNb+xE4GP9ZAx
         CljCOcQM89A0dXnrOJxlgqKFg3SJlUfPtill+CkKTjB4ded1EHOnpJGE8eujuEPeRkTx
         XA2/G6aSbkOeX++FS+2yFHFSEv140D9pe0vzOVw3lmQe1iiTqvOKrBwpZic6lWfef3vk
         jxCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762227271; x=1762832071;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JM0VP2lHokmO4GTbs1/cjjHRzdy9AEzcgNNOnuSZRy0=;
        b=ZDHqyEbS4geb3vH/H8q9rXDAP9qfYQCEO6XWhojF6MhhNZ1T9/C1SOIQ3bu4sIHxbm
         3w1EOQQIS/SswP8UvsK10KYNuZeyBuQ6pRhplIBNHEge+JaW0iZWIHNcA5+9bWnE+vk+
         pP/RVlIuKZ2FonD90A5oeDlm+1Lzn3hhgSMvnTwmlq0GcQ5JYXWMNU6hpOdNYocxlKVm
         8c1Zq4bOq3KF9DnGF7DWw3GgZGVloFAtIFDD3+f3dy1ZQliqiw78K9tlzBmv3//aXcM1
         GkmyA5Ll5OOLm2RJgC/qrMtO+qGqV+Qd4T9pQ+vu1P/laecg3YB4bCaq7TERgWHdL4Qp
         pFXw==
X-Forwarded-Encrypted: i=1; AJvYcCXFA4f4Of8SA+BWCR4B6bc8/vdgNGuSVlipmoCzx0KU+iHIhpSMOMjHpHN9Ny+wInxdDENX8vk3Zk+T@vger.kernel.org
X-Gm-Message-State: AOJu0YxR5n2cyTRo6BaOrCGsMBMAovGqypyifXurwsRDS5EHMQyKYW99
	4Inz+wvhct59NON73nTRoExuXdiAkqWYCSs05rFdwxcTzYNmACFg52mEknm511+1XkrvvqVng8i
	h5ljRLD5TrCqmoQs6aek4Y1YnznR86fI3sgXKS823fe4gUjOP9L0moaEnAZgp+gPP
X-Gm-Gg: ASbGncvGVRXXxHWgcurFjKS/vV8xBdGyqJQUyl5FOT8mKKNJrCC7tbPDizR4gmolMOC
	/V4BIHIBPV7Iso/h14wNGS7YxRD3TQ2rWCCbT5UO0IEIgn7eKLqZeBCC5AXBqMiNy/U+yZ0xr9+
	caFYco5/ZmOARCq62TsmlSn+UY5L1A20eGYDicyJTJvJX0wflvGGZYhIo6TMqxnryQFwOMBo03i
	UXnKDOZtDqYGFRCWvlQwzMvtyPt1dN/5EMBnzXjpdvVsF6G1tRo8JaA+iQQH09h51z1XeGX7BbB
	imhb15jCIOOG/qQQyxKRuDHfY/XDCe/UvrJQLFOPEKjt/maGWFYViXscO9oWcgEmnQZFyfTuqyD
	WCsF5A0IOy/1ZXpv99aIYNH3W8D6VBzqV3p0vWUxWOKOU9ro2GUekh+9RpH+4WX9frw==
X-Received: by 2002:a17:90b:1c92:b0:341:8491:4734 with SMTP id 98e67ed59e1d1-341849147c4mr12395a91.8.1762227270971;
        Mon, 03 Nov 2025 19:34:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHd8JmAcMLL+Rmd6Uz3JK4OYIq6Oe6mWlkpZ82eB97YJYJVgpYMsEMN1V04JblFPOYjHg3YqA==
X-Received: by 2002:a17:90b:1c92:b0:341:8491:4734 with SMTP id 98e67ed59e1d1-341849147c4mr12373a91.8.1762227270366;
        Mon, 03 Nov 2025 19:34:30 -0800 (PST)
Received: from [10.133.33.149] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3415991d381sm2726626a91.2.2025.11.03.19.34.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 19:34:29 -0800 (PST)
Message-ID: <b623c7f6-f28f-49ba-b6f6-25084117a6b3@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 11:34:25 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mfd: qcom,tcsr: Add compatible for Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-mfd-v1-1-6c8a98760e95@oss.qualcomm.com>
Content-Language: en-US
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
In-Reply-To: <20250924-knp-mfd-v1-1-6c8a98760e95@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNyBTYWx0ZWRfX/HLPJpWoHtH/
 heUwiGJVQBEo78YwDQpDMRRyepAdVSKg4/1MHbgA6gyiDjVdS7DuQIBPS+lkgn/jOIGUrogc7vS
 VCJFhORI2sbWrsW+FZSbztl8bDhfI63ycQy3JW1vMuTxNy+G7hF3SUyW26wuaRkvD5MCrGokx1M
 V2slGJRllrpy69lcqYhM1VBI+kWkAz0x/OptjbSDMozR/QT6FOfikD1WRRyCDum7WjbLyTN5Osn
 d1+SbyexkAtoOegS2XVQrEzBG5u3dwK18/KMoX0QXQof2WVgQoH+YNeYKyzT5OuT75OmZIzNC9u
 AsOYWdiXSIqDsnmPSvSimIlnUagKNM66+Gf0i5eMR0Z5Ik31pk9o7GYszq3IywK+UzTeqRr0iBJ
 QE5jJKxLbGBdNW0H/9BVkdG7369nQg==
X-Proofpoint-ORIG-GUID: C-yfGeuncrlCKoFw1eZpFx2m6bBMvxGd
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=69097447 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WMZZJdeCZ7IOBlX-dNsA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: C-yfGeuncrlCKoFw1eZpFx2m6bBMvxGd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040027

On 9/25/2025 7:23 AM, Jingyi Wang wrote:
> Document the qcom,tcsr-kaanapali compatible, tcsr will provide various
> control and status functions for their peripherals.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
> index 14ae3f00ef7e..ae55b0a70766 100644
> --- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
> +++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
> @@ -48,6 +48,7 @@ properties:
>            - qcom,tcsr-ipq8064
>            - qcom,tcsr-ipq8074
>            - qcom,tcsr-ipq9574
> +          - qcom,tcsr-kaanapali

It looks good to me. Glymur didn't have this functionality verified yet.
Remind for review.

>            - qcom,tcsr-mdm9615
>            - qcom,tcsr-msm8226
>            - qcom,tcsr-msm8660
> 
> ---
> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
> change-id: 20250917-knp-mfd-4dd3c81e6b9b
> 
> Best regards,


-- 
Thx and BRs,
Aiqun(Maria) Yu

