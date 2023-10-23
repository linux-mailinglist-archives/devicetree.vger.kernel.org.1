Return-Path: <devicetree+bounces-10754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA45B7D2A28
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:17:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26DE21C204FA
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 06:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 596FE63AF;
	Mon, 23 Oct 2023 06:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="mmzrr/ss"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BB5568E
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:17:19 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBAB9E8;
	Sun, 22 Oct 2023 23:17:18 -0700 (PDT)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39N5NMs9031328;
	Mon, 23 Oct 2023 06:16:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ht/BR9gUXrHDmhFYdhjqfpClO6lrVhoHwN0AJOzQmH8=;
 b=mmzrr/ssIRm7FADAw7d05wGe+RG2x0RZAT50iMcrPmMuLVJMx9nh+0+X+rDp6NFULP7l
 VMlW2KaB/XJ4e0L/jQkurpDZLzq3eH5Qi4BJw4TWbCeN7jFEoJy6phAeZD/zt31GLRR0
 221iCJ0JjW12EkRMerVqWslVZi5zr0P7Ryo1myiQCB93VVBBs7RsYXaCi4jA7AwiRv3A
 cK42x3ZTc2y3JxnSvUrgwMMVd6NQIXzBTNd+VCnCbTYDImXtsEyJ9oP4H36X11C8bjny
 hLa4WMNPtIPy1b4Gs20TJH0DAFwAH0wtCgH+y7NLfXKdv68J6UIbhWnC5LYeCnOU/3Ox Lw== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tv6v8un0c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 06:16:58 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39N6GvNh014166
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 06:16:57 GMT
Received: from [10.216.48.174] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Sun, 22 Oct
 2023 23:16:46 -0700
Message-ID: <3889137a-593f-4ed1-7a91-205829b7548a@quicinc.com>
Date: Mon, 23 Oct 2023 11:46:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 08/11] dt-bindings: iio: adc: Copy QCOM ADC bindings files
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linus.walleij@linaro.org>, <Jonathan.Cameron@huawei.com>,
        <sboyd@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <quic_subbaram@quicinc.com>, <quic_collinsd@quicinc.com>,
        <quic_kamalw@quicinc.com>, <quic_jestar@quicinc.com>,
        <marijn.suijten@somainline.org>, <andriy.shevchenko@linux.intel.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        "Daniel
 Lezcano" <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>, "Zhang Rui" <rui.zhang@intel.com>,
        Luca Weiss <luca@z3ntu.xyz>, <linux-iio@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pm@vger.kernel.org>
CC: <linux-arm-msm-owner@vger.kernel.org>
References: <20230708072835.3035398-1-quic_jprakash@quicinc.com>
 <20230708072835.3035398-9-quic_jprakash@quicinc.com>
 <730fa9bd-560f-e91e-d0be-3e73f9e56999@linaro.org>
From: Jishnu Prakash <quic_jprakash@quicinc.com>
In-Reply-To: <730fa9bd-560f-e91e-d0be-3e73f9e56999@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: _7FEqxvv39iYtwsDrMp1c75ML-p4HNkg
X-Proofpoint-ORIG-GUID: _7FEqxvv39iYtwsDrMp1c75ML-p4HNkg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-23_03,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=983 mlxscore=0 phishscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2310170001 definitions=main-2310230054

Hi Krzysztof,

On 7/9/2023 10:55 PM, Krzysztof Kozlowski wrote:
> On 08/07/2023 09:28, Jishnu Prakash wrote:
>> At present, the QCOM ADC bindings files are located in the
>> dt-bindings/iio folder. As they are all specifically for
>> ADC, copy them into the dt-bindings/iio/adc folder.
> Copy? I expect moving. Either description does not make any sense or
> your created a lot of duplicated code.


In patches 8-11, the intention is to move the dt-binding files used for 
QCOM ADCs from /dt-bindings/iio folder to the /dt-bindings/iio/adc 
folder. I was not certain how much we could do in a single patch here, 
which is why I did this to avoid breaking compilation. I think I can do 
it in fewer patches.

Thanks,

Jishnu


>
>
>
> Best regards,
> Krzysztof
>

