Return-Path: <devicetree+bounces-212729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 980DFB439B0
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:15:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EF121B25332
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 11:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50C552EF665;
	Thu,  4 Sep 2025 11:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S//mWkFt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F0429B8E1
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 11:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756984531; cv=none; b=ngZyKv0rWjMq3kBre2F4owoPS9noTdA+6xxQIYnl4UA3qoIVFooynRGUS5i5Hlbm7ACaTaU5sQyV0a1Qt/ycEuD9dsES8OMBInBiA1WehLDdY3JNjRAy44A4PyYkBfe5fhMQx37AoyFRHwPqHZPO7M3vC54O3AHaEc6XEfLnHuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756984531; c=relaxed/simple;
	bh=CEbnxEFLxlJ6hHhNZQ/AMp/Mbj4cpgb9+IbAllToY1I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=chHMNGB9+Z6LD9lr0W/kC+4w2gHFAkNu0Xh2aw3pmkRLT0JMuxWdX8CCjSKyXkaJX5GlitXo++R672vxcztzQWVVM0vaA89oNykjpXl2XzTNjrBsdP9gToC2Ft+yO2OlR2Lc9NAYS+dRkp/4xtK3tsoRM7FQ92nrTJULhbRStFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S//mWkFt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X8bF023895
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 11:15:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OOKtLhZE/W1bfuEuReYiTjW5qnUa6W0YPOAnKvpNQs8=; b=S//mWkFtDYgDqEHX
	AfSFCDuBgkj4G8y80FCF13N4WmTzvWhpTTvChmkG1RqDVxyKFY7RkR5weSUq9Tzh
	5E0w9RSp8Oas3srE/vw4BrRGnvjZgpEokod86vB4cA6Z/hf+8XIqwle1sOQroOaL
	EjevRNBO4EUVCHkT/Ef/i55BhHQohHW5Qlhb3Y6qv0H1lA5DvohfENNs3uZgPhrv
	VTiH02P3BB4ugz1a+PtgzK3sojB2sYuTwXh9iQWTlpFyqMqzJRlGLJ24BKQX+qP6
	uu6Zru1CJoqDs4iROEkKIvwpICJJ5uczS9OHecwOnUMX25s+SvGlkWx0EesuVe7X
	76fTGg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fq4mg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 11:15:28 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b32dfb5c6fso3095241cf.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 04:15:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756984527; x=1757589327;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OOKtLhZE/W1bfuEuReYiTjW5qnUa6W0YPOAnKvpNQs8=;
        b=Z8EmjBHUBywSrndmIrZIvpfLwo+6ffouqtR3TZ/JFHOQQ+4jQZFBEHsW6tP6jsQcjp
         MM1zezoqrMXPQHfHvxvM1PxA0Pi4GfQw2bpseOdNL7e3VpGfS+ZgXmTQfR+xQN2LIv+d
         BLYWOavX4ofdJuyL4ttxkV1a4D9LP9HBq/MP6gBSHUHA6z07k3ljI2oNadbheKDVsnpC
         1XlKO+eBWvWPjQpMcwaj/OLcByXyCRL3nMl4+YqJxu/+RumBhHWGx07xEf/2N81v1r09
         5RcQuvvQLoqWcY/jbxByjdHkUQzaLHxEwyd91NTq5qBu5JNfloitjCNeUDU+m4SIfDFN
         jElg==
X-Forwarded-Encrypted: i=1; AJvYcCWTvstY9jv4vQkKpDqoepDAHTlNE/nGDiXq1GtEJPXWAEwbixjYKGNXV8x1oF/mCUsBi62BDIz2ivS8@vger.kernel.org
X-Gm-Message-State: AOJu0YxD4ZDyLhpeuP5+/PzDmfwtv+eesUrPCjgJA/fVL9FrFGw0rtR/
	Rzzyr0jug5tMQpM8C0GkMcOqYEnlj+FB+WZ4kE5ftlRE91ikznRqfjGMjtU/x25B4PexO7T/rW8
	ftGDCftgnCh0BNXDI6MgTqrDieLdA+n2tddlMKg4RsWZFKVMydIpXDBxuFa1qjsUJ
X-Gm-Gg: ASbGncsIEd8/97BddRll/sgFzOubBHY9EMafga2Dxi6DxCTE+QhDAGByAGFp2IYYCIx
	VVZvmxAoeYIlwVP19BDdjq6KwJctP94EG0PrUQARTl/rdNc+8NgIgzzKEBBOM6z7mib1MF7cqrw
	GK4MSwGDE9EoKs0pfva9puycNNLwqBJ6pBlwCw/vM3Kz+Xl53undWnQcth8YHamNwql1udzLJ/K
	FqhPN+MS5cHaKW9bCXyOP/YkcY1Au3Z+mJJZ7ZOlvgqOvG1ZyLbXUFwRZCNF1s0izXE4YaWvF9D
	0AVzgkp5aJg9yo+tkKHtkLnpYSzlB1l45fq2vY32plPGGFfPsGX3QM2ZgLaEPk0US6DvSadtgah
	heJz0lcyVJ/IoeEehhrGjyQ==
X-Received: by 2002:ac8:5710:0:b0:4ab:723e:fba7 with SMTP id d75a77b69052e-4b313ea00camr179595091cf.7.1756984526921;
        Thu, 04 Sep 2025 04:15:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7j0pS6IjjhSGlZj35O8i4kEMXE/eC6FnHTO0eI5oav2a4taNUJNhPrFFvhieF/D0b0vfiCQ==
X-Received: by 2002:ac8:5710:0:b0:4ab:723e:fba7 with SMTP id d75a77b69052e-4b313ea00camr179594751cf.7.1756984526426;
        Thu, 04 Sep 2025 04:15:26 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04110b94cbsm1185570066b.93.2025.09.04.04.15.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 04:15:25 -0700 (PDT)
Message-ID: <46ea9ff9-f119-472c-ac5a-b91e36fcb226@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 13:15:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom-qmp: qserdes-com: Add some more v8 register
 offsets
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>, Johan Hovold <johan@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
 <20250904-phy-qcom-edp-add-glymur-support-v1-2-e83c6b9a145b@linaro.org>
 <bf5e7ea2-9f0f-4d83-a567-028ffbe184bf@oss.qualcomm.com>
 <6nhnerb5yooodw73ku6yxtp7ud3irwhfwd5zxjwcwbws2q5y4x@7fj7dck2cv3a>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6nhnerb5yooodw73ku6yxtp7ud3irwhfwd5zxjwcwbws2q5y4x@7fj7dck2cv3a>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX9KFpXs98PA1+
 0cFFmRakK4bdlvYFLj3EbnqQZLr5hKmGknCrbKfr18sIQw7w+8eOmbda/rynKjJJZ1Z0m2r3nwz
 TdIMyULzQg9Hfwm3y+qAlH6PJajfTYU56xFeb/m7409B33d1IWNLsdp9WGhfxfpyJcXIIB0a3w2
 kHDxq5AHTwfOe8JeQsfgTTgz/Bw7spT+o0qA1xhRiTFW9XnG5AY99U9XmIbP915FhPd9h3bn53x
 /sR2TDFIGLfYdnYS2hNgtjPb9TOz6i36czodxeXYI35ucIhkBUXx22xR38P+x1TCduiyJuyw6Kf
 UvN4niaGOFUIRfniReKBzBgeNrSOTrBvRynPgRJ1Lnb0Mo37mUmy74408Mm6+pc8yzZpT9zZ02/
 WYbnVkVv
X-Proofpoint-ORIG-GUID: yniTKam_dQKhaYM2ekFplBA5WK8URcOb
X-Proofpoint-GUID: yniTKam_dQKhaYM2ekFplBA5WK8URcOb
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b974d0 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=zjWQaSZ_NnQgvzHGnUkA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038

On 9/4/25 1:13 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 04, 2025 at 12:47:43PM +0200, Konrad Dybcio wrote:
>> On 9/4/25 8:55 AM, Abel Vesa wrote:
>>> Add the missing v8 register offsets needed by the eDP/DP PHY driver.
>>>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>
>> + a couple folks that I talked to about this lately
>>
>> Please create a separate header for this, Glymur contains multiple
>> "v8"/"v8.x" PHYs that are not identical to one another (or vs ones
>> present on different SoCs), even if advertising that revision
> 
> Is it about v8 vs v8.xx ?

No

Two (different protocol) PHYs with the same revision data (rev_id
register) may have completely different register maps (even in the
COM region), both across SoCs and in (at least) Glymur's case, on
the same die

Two instances of the same PHY (e.g. 2 usb combo PHYs) will not have
such differences, just to make it clear

Konrad

