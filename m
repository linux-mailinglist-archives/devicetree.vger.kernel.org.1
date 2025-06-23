Return-Path: <devicetree+bounces-188613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 61099AE45AE
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 15:59:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 217E97A6C67
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 026E72550CC;
	Mon, 23 Jun 2025 13:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DK7GbNpc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D65A254AEC
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750687116; cv=none; b=KX41CFvgSWHqaoQ89GYuh+1GR0S9MJ+Z66/0zZZyVGF3jJxEYwVy3FGjIe5YxJreVfnDwokagX+yVBv12KE7FwABsImkG21FraqyzxRyvO9YjZ/MV1gwcqXnZRr7vvt2pqH97qzW51v07zTniEPdZXCgaFvYvgcn4ZrcAdR3TDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750687116; c=relaxed/simple;
	bh=z7xRW/zHgqmPhcHqJRBygp5qO68gNdSDYBspX0f2XUA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DDdoK6SugyKJDO6QfkxbTXjc9jEFqyFCTf9LOzGKGOi/pM6KjLETdjqpH8m/+d6ww0a5bLKNL/y1gwR+SJstsVsgBvIvxU9p813RW9IC42xb3piaSUY4qoHZFAuP5relXyssmePoTca/mwPBOfCHIPeIMJabFbZoyplx9AG9vNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DK7GbNpc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9BsEo021620
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:58:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gVPZjTtp1XI2FupP4oz954O3iw9aZ3hAniyWNapzx64=; b=DK7GbNpcZaFHiJ63
	1jj2VqudphMJnRJdIYUaxmX7dxhdHWTIY0OS2nDiN4a61RVr8cu89xcRyGdgmRTa
	GhLwq++sMu7DgR70uzwptTFprZjMz/Ah5WaMes+sDFnu9AYuO3BOB8lbeI5dP24I
	RX8mK20MwZDrbp6KsLUZXEiHnJE0PIWQWunUWX0z7klfvXVz7Llg8dnov2KLu//P
	AQA3TRgjUd7dn/XdqX+VurjV5xErBCBM0sCuSEgHXpYH9YVSqtqjcXSwVSgFf6FP
	PHUzxQ2ntcw78aS+p7BIhuDo91BrTmR/Y+yL0JOHZ8tNKYxDh+y8tIlTYIn7ILCu
	Aa6I/w==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ec2632jg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:58:34 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b26e33ae9d5so5242740a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 06:58:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750687114; x=1751291914;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gVPZjTtp1XI2FupP4oz954O3iw9aZ3hAniyWNapzx64=;
        b=nPskitteM3N38XK81+0avfzPvn65AyuVhAlufyCm6Q42Pzyq0bHsyFCrggmbtxE8dP
         YTsnpkZBxAnB6zUceT97iuXIuflCOQfkdC+Swm492U/B+R5LeUWRwUKgzWt0a9a9o93O
         EGbuaurUHvG3GQDHPXeteQ5waoxLLiNG0RZGDvcOrm2QOTsQkCFv3XNrQWJSdH7GNyjo
         5MvfpbiVqwbjGz71TGCHYMbLI7rQnQ3+zfQ2Bj0gNrhv31uOL8AFGgxOZ6V3Oq/lZNDj
         uS0eVO9+GUXWE8VkigXirpG79ROy0xwbPNTaQVI2SwUtBiz5BMbdjVvwt4JEKRXJ609V
         w8vw==
X-Forwarded-Encrypted: i=1; AJvYcCW3oA4MoBICSD63RcaRlUzMojpbBEKe7oY59B+gJ8WtvTyb/1GQ+ufeg7yW25Nb/CGgFATnrajh5bZa@vger.kernel.org
X-Gm-Message-State: AOJu0YzWbyVNcJFcfMQ6awF8/mDMnkuC/A3FH2Jc4+mR4buEwPqZIBqg
	Z4DGLENnedwkmQZNdm2V1U6fJ+s+85ns7Pr79RrPih2OqeSKUNOAHS1VRcvZuJDV4RN9aNHKQau
	AMjzzTj2rcL6/EzW+hGlXN9gn/bngo+P0MId2l4+NJ7hm+7NcJ7g+l1gEXbEevtuj
X-Gm-Gg: ASbGncu52JVuZf18uK53N/gycTseBkTk2kccxLwoslbYb/2UA66/QSkoGZCgq/ew5vD
	Bs7GZ5O2JJoAopR+Elue9cIZUueTwLouRo7yJPE1HdjYluCY+z0NIvSOZmGQrrDWjHBaFu/Z6LD
	V1pa9R7zlChsONaRvbYq55olY0UqkpPUqPwiP3KEMspmR6Gdj9/C9+Xs7+cOgl2uCsMdaeqiUbp
	zkYJuw6s8ddNqebvzquzUEcqfze5Ybk4ix7tT86cfIkzV+0SceLl9pf34D1bqR7dlErEP/2LGny
	B1/53iPP8O3ubiK/64OFyd3TpORJQ/OIxhnXtYzEmg==
X-Received: by 2002:a05:6a20:258a:b0:220:19b7:9d6b with SMTP id adf61e73a8af0-22026e3fc69mr18664042637.9.1750687113755;
        Mon, 23 Jun 2025 06:58:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVl1R1DUJMadEXAlc5CPHNyyosQFNPkLwlX/IE9EL9s6zL6fnh2dV9q0vTc02V0SmdWqoDwg==
X-Received: by 2002:a05:6a20:258a:b0:220:19b7:9d6b with SMTP id adf61e73a8af0-22026e3fc69mr18664002637.9.1750687113387;
        Mon, 23 Jun 2025 06:58:33 -0700 (PDT)
Received: from [10.204.101.81] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a66622asm8539213b3a.137.2025.06.23.06.58.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 06:58:33 -0700 (PDT)
Message-ID: <e8653c35-d6bf-4992-9edc-414309768bfe@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 19:28:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] arm64: defconfig: Enable X1P42100 GPUCC driver
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>
References: <20250620-x1p-adreno-v3-0-56398c078c15@oss.qualcomm.com>
 <20250620-x1p-adreno-v3-2-56398c078c15@oss.qualcomm.com>
 <66094c33-07bd-4621-b49c-b29a0270e002@kernel.org>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <66094c33-07bd-4621-b49c-b29a0270e002@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA4MyBTYWx0ZWRfXz4QJJoZ7VXe2
 YPmZuPYArM0wUKYhP061aLv68tAhl+YC4R756IKsB/qB4PUAt+4FuUMwBKNEvvq/AwUQ6uaAvYx
 7ceMAAEXTcipo21pIeevJtu2aJQ1dIDR9OYCtyA0Xbc2hNDLhdSaRfKUvEYv8AQ3bYnMULv0/GS
 DxvC807UebvRWLvUQ6PC+ADHvFrM+gMpd2rwn5S8y0Z/UgvjJgmY2pWh24pWN/rOhJu7+kGgysX
 4QnUIk77nNmdpMQ4OTxIQ2dWQVg6xhzW2Dg8gko6Aam/ObJb0yh/WXpNn9AvLfmX5mIt5ogWRNx
 EBXQ6G7+6dATaAY/ZuvFgEtxjbbtpEAf4flMqPuGUQTIZ6/Mi7CWwInypaLZ1AetzXJLB8thjL7
 exylL6lSkkPMdDQR6EeNYV2VUGd9OAH7VCKKula6s/bvTpwcxBtwcTVQn1m0f9KovkGIaz/K
X-Authority-Analysis: v=2.4 cv=XPQwSRhE c=1 sm=1 tr=0 ts=68595d8a cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gxl3bz0cAAAA:8 a=EUspDBNiAAAA:8
 a=Od58GZWkWy8WqyN3Zg8A:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-GUID: DS_OvUJjtW6MazlTKQyJsNfWZYAhX35P
X-Proofpoint-ORIG-GUID: DS_OvUJjtW6MazlTKQyJsNfWZYAhX35P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-23_04,2025-06-23_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 suspectscore=0 mlxscore=0
 spamscore=0 phishscore=0 malwarescore=0 mlxlogscore=646 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230083

On 6/20/2025 12:39 PM, Krzysztof Kozlowski wrote:
> On 20/06/2025 08:54, Akhil P Oommen wrote:
>> In order to enable GPU support in X1P42100-CRD and other similar
>> laptops with Snapdragon X1P42100 SoC, enable X1P42100 GPUCC driver
>> as a module.
>>
>> Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Defconfigs cannot be tested really...
> 
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
>>  arch/arm64/configs/defconfig | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>> index 897fc686e6a91b79770639d3eb15beb3ee48ef77..ccd03ab5de495498281175a4550bc73d3e65f3f4 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -1347,6 +1347,7 @@ CONFIG_CLK_X1E80100_CAMCC=m
>>  CONFIG_CLK_X1E80100_DISPCC=m
>>  CONFIG_CLK_X1E80100_GCC=y
>>  CONFIG_CLK_X1E80100_GPUCC=m
>> +CONFIG_CLK_X1P42100_GPUCC=m
> 
> Not placed in proper spot. Don't add things in random order, but follow
> savedefconfig.

Ack. will reorder.

Btw, can this patch go via Rob Clark's (drm/msm) tree?

-Akhil.

> 
> Best regards,
> Krzysztof


