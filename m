Return-Path: <devicetree+bounces-245900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0971ACB6889
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 17:44:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 731423002504
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 16:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5330316907;
	Thu, 11 Dec 2025 16:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d+woqyuD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dE5UXdQ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2E33176EE
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 16:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765471447; cv=none; b=MiN/LhoCLDUllemcBRX3diz1DW/r+Ps+y8iP08OY0Y2PKsdbH4BGqS7M+G9nkTWOrx58EvDjFAenLfBm/Rq2UbmCkQ4KrWFsJ2G5D6/n4LjKwT8ZZjQmrN8tq8HapHJMUXWcxjN2DyFVFbYzeDCx+mKjponNq/gjtpL6kxdBEsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765471447; c=relaxed/simple;
	bh=OTyBKu42+YrTjO99BWnw0fajBinNrpyZL59fGzv9RF4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SolaM4pgbgd1FJp2reFEzAXV/LhBQ/2GbH07gjabpnxi5FbNh1zJzx28mC/CBhRbFxgubJi27WHj2Op3KExdVWR8+ko9pDSJ5DnWGB+LZ/aW0wq1nMAEeOYsYtyCbJrKciwxCRwwyZGylPhaP+vyqE22lPG5lCt6rZ9o5eTRQWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d+woqyuD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dE5UXdQ0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBEP8qv1430503
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 16:44:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tztu8MTIBXFG4TzKiJ9hLxKbuxymdp4FTScUcSbkKO0=; b=d+woqyuDaG3emg73
	+uT0ANtO8v3vQZXZid38Vrp4QByPcvB0+x3iL/T0XeV5lF6BdkCoY8eUj9axfr2C
	QUzolQ5FtjX83Iaj+JJE5Ee0R3yTNoJ00qp4ZQBN4FZ0q5+kBwM3hWIZjwN1GFwU
	HijNwoZluvuGLeRmOUCZBWN7F2qVW04dVeDwGr46Qu4WjZqcJG9eEppvAutqsyoP
	yvo1xXkSQ4ERRzya07fArP6Uwdb4scIi0OHn8nfceseG+0vxfi/BV4kdraiqzF4e
	d7Q4bEgE8RViwfdQsZWyoKja1Hm0DOqWSpI3LPjx9/se2N0fg33SeQnq08P3P6Bn
	yt9Uwg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aym582pne-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 16:44:04 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b90740249dso368240b3a.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 08:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765471443; x=1766076243; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tztu8MTIBXFG4TzKiJ9hLxKbuxymdp4FTScUcSbkKO0=;
        b=dE5UXdQ0eK+egDRIx86MhooNY+t6FISFc32SuRVGZJxqzzzYEjZhlI8jj6PU6w+WoK
         jZ0g2UnUAY01x85uBUYSwrWVt1AyYX2qXR4utMKSkj0ZStkd22lBGDM4VqwH8+BmQ6TJ
         8pCQ5kFVcxkjbzQ7LXPiyarCMKPaidNzrK8gFyb1qpPA6mJeXEiEcc+IaiudMARiGKvK
         qEanOr0JONDQGM1A6CPxWgjYNfvDaPlPUQQs7tv4CLflZ4ST4Rg/A62SffKrLa05xsVd
         0waYnpS+PByodcBWx3ItcHNMpLiK0lWlOhmCmjFvgRrSskXuKAXTKoFPAHfp/nL03eGE
         dA5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765471443; x=1766076243;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tztu8MTIBXFG4TzKiJ9hLxKbuxymdp4FTScUcSbkKO0=;
        b=R15OmyW1/8mUyDLTpH7u9ejGe3whLq3zio+lEzeifM7EobjVwXRjJ7UeCR+Ul1B8cn
         NbKMLooBfvZlyMNFotKsGjwGe+e6ik6J4Nke8TNfOby+/nAQsozSz9Hr78qBs78ZwhxI
         7W+FhaTPBhfhAwiFLaAdhreKUTdjXuXrDT89vHGWcW6yWTjpSkUug36mCOslRQCY3W/w
         /EhN9Ic1w+s2pec5IlkIXxfpfNMuigpiGYrkc7p428j+TTk0uQD2HaIMU7lOtS7VyX/M
         HLSucozVMi5FWVCVBXMmBVTlgbotCUmIJftFTs+71jblKdBIEb2fH28AqIVQBqJZwiZl
         C9dg==
X-Forwarded-Encrypted: i=1; AJvYcCX9dt2W9kjROMp0TNmktsiN7H8Tofbg2nivCzAsSmi33jNg80O8xWTkU2O72UxJGEwbAjp1MZG+LsA4@vger.kernel.org
X-Gm-Message-State: AOJu0YxL3tsqIwKhc7c/Y0ATVi6mIuRgYD5AzBn9U0j2ACLniyjHmsox
	7JMCyNotwoPR1Qg5rjzXvhh6DIVRvKEoHKr8PNhBXxU81G62zStfHQpaQoqgJdTGbWxHWEO8B+1
	Xlcc6Nob3jE5Losx5C58pjchVI39lStbGneFqAwzWVH6xj49UUolfhmFXF1HLtNzI
X-Gm-Gg: AY/fxX7J+R3xtmVkLBHLWxM5WHwnS5CD8H33ZsBbK9crSiiuikl+R7+DZNqlACwwciK
	1p0enmg6us7Jfmz6fkJDSjgH1iraCLJr2yAg0zqdKgtCW9IqI8Mg3ejdO67cmKErsbJ/w9Ue2e8
	wZzwDlSPH8dI7eN8sK68VYSPKwdVM10S2iRnZAXwBu234rsTwyWNPp7pHDdF/Tg4+O58igUce7o
	2gfcG8qZyjH4RP5+w717zIJcbgDvSf6s4ZI2JEu31SmkeOraTTL+6J+bUzTYMjJ+xKCxbPYxowN
	bg45rhknhY7rfYI2AmpR7ZM7/D8CEJiva+4CcE0le4LDtlEjnKVIKPJotJ+sBBqmqGiqfUX9vJl
	YK+naM0JThtQ9AGQKRb7YX5etXLngUvwrhx1hRUfN2gwd3Q6mJequrIo03WOPeITrXQ6xNw==
X-Received: by 2002:a05:7022:503:b0:11b:9386:a3cb with SMTP id a92af1059eb24-11f296d3091mr4753896c88.44.1765471443362;
        Thu, 11 Dec 2025 08:44:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEgdzo6qnoe5tg4DwQZAjSr2PiHeHaStQv2xagD5QxoaxfQkFgfxaYLW5CJjRkYp+TPKHhc3w==
X-Received: by 2002:a05:7022:503:b0:11b:9386:a3cb with SMTP id a92af1059eb24-11f296d3091mr4753862c88.44.1765471442731;
        Thu, 11 Dec 2025 08:44:02 -0800 (PST)
Received: from [10.227.110.203] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2ff110sm10048865c88.10.2025.12.11.08.44.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 08:44:02 -0800 (PST)
Message-ID: <f60bc80d-a947-4083-9e14-000a937de412@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 08:44:01 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH ath-current 2/2] dt-bindings: net: wireless: ath11k-pci:
 deprecate 'firmware-name' property
To: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>, jjohnson@kernel.org,
        johannes@sipsolutions.net, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251204071100.970518-1-miaoqing.pan@oss.qualcomm.com>
 <20251204071100.970518-3-miaoqing.pan@oss.qualcomm.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20251204071100.970518-3-miaoqing.pan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2SUu1V6DCIJ6BMbMsmMehakd5Oo49cA-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDEzMCBTYWx0ZWRfXwPiVmsGl0kog
 oBaQ/wvr9LCncWMg156MGJioU56shBHYztBKbr2CjrpdxUxyOlxu382FL+AGgdyuqRN+kdolPLD
 Bml2jrvkLT22x+AHmyFLs+om5t44CSKHKZx2DKkpxtM7R7XdBUTJgI7CbesEddqMOgDfjHGry8M
 43LBJ2RcJHGiv1xgd4x1AvX4vTyYzCH7RgUB1PyoMEx0uBDn3m4l18huKxOoIfIJN3IpiHJ6A31
 sTRzbbjMN9rMBoudc1C1hQuE4/13ExcX9ZYMJ7aLKFcZzBAiXo9/qEzrs105lPQIwp5Nvmff7KJ
 FTtVH6qChnf1ykuuysupwPKeBD2krNZ5D79esi0B+6sGZJKsk3G2EDulUr6E1DEjLbxiltxbC6h
 NXnzpZtIEoLWzNMhrTj0iC0kr1CDCw==
X-Authority-Analysis: v=2.4 cv=FYU6BZ+6 c=1 sm=1 tr=0 ts=693af4d4 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=nPuZL2kYLRZDsrc0ShUA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: 2SUu1V6DCIJ6BMbMsmMehakd5Oo49cA-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110130

On 12/3/2025 11:11 PM, Miaoqing Pan wrote:
> The firmware-name property was introduced to allow end-users and
> integrators to select usecase specific firmware for the WCN6855.
> However, specifying firmware for an M.2 WLAN module in the Device
> Tree is not appropriate. Instead, this functionality will be handled
> within the ath11k driver.
> 
> Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml        | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
> index e34d42a30192..0162e365798b 100644
> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
> @@ -37,6 +37,7 @@ properties:
>  
>    firmware-name:
>      maxItems: 1
> +    deprecated: true
>      description:
>        If present, a board or platform specific string used to lookup
>        usecase-specific firmware files for the device.

The driver patch completely removes support for this, so is this really
considered deprecated? Or should this actually be considered obsolete and
completely removed?

Do any DTS files actually reference this?

/jeff

