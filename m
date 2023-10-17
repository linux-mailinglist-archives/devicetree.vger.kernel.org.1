Return-Path: <devicetree+bounces-9147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E70A87CBD51
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 10:25:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EEC4EB20EFA
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 08:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A243E3B282;
	Tue, 17 Oct 2023 08:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="RCBaenzL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DA1381C6
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 08:25:15 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC4DC93;
	Tue, 17 Oct 2023 01:25:13 -0700 (PDT)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39H7nOBv026221;
	Tue, 17 Oct 2023 08:24:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=abG+EPXB6BECKL9u/q4R7dYvCyUAXCa41Z+B12FQpWI=;
 b=RCBaenzL+rR6YBrLmsSg4vxUSATLQJ/Sg5Xb7Ae5InKPVzHqOIlfngfTP+8iJ648PeQS
 D+nkejQy1s2aNm+dtOD3J10fTpY1IHK1cfvlBcxSznByCZAcG505MMEEyMmJaSFcYq9e
 6FB9NDNf7kbHwholG4VPzd4pKmC0HKCC3THaWB6E0ZUpwMa4FNXcDOm8UbXTLC5tII9L
 zZYaKSeH3VBv7SmkMyY7Vwbon60uuzm8AI8veBG5B4NrOWhrZw2jc6D0Q2G7ubcOUU1a
 LYaBQSFO0d392/152fk5GmPBqHa6jkvbRG1Y7mCr9Q3FwKFEDwxVv+GDuzyQMJiG9liO gg== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tryn1387n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Oct 2023 08:24:56 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39H8OtIo022458
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Oct 2023 08:24:55 GMT
Received: from [10.216.24.217] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Tue, 17 Oct
 2023 01:24:47 -0700
Message-ID: <f12cb246-e7fb-44c4-a17e-0b395a146325@quicinc.com>
Date: Tue, 17 Oct 2023 13:54:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/11] firmware: qcom-scm: atomically assign and read the
 global __scm pointer
Content-Language: en-US
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Andy Gross
	<agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon
	<will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Alex Elder
	<elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20230828192507.117334-1-bartosz.golaszewski@linaro.org>
 <20230828192507.117334-4-bartosz.golaszewski@linaro.org>
From: Om Prakash Singh <quic_omprsing@quicinc.com>
In-Reply-To: <20230828192507.117334-4-bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: NZoJXFrXHLjPD7Z3Hv_EfwVC3o2YEwqT
X-Proofpoint-ORIG-GUID: NZoJXFrXHLjPD7Z3Hv_EfwVC3o2YEwqT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-16_13,2023-10-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 mlxlogscore=999 spamscore=0 bulkscore=0
 phishscore=0 impostorscore=0 clxscore=1011 adultscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310170069
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 8/29/2023 12:54 AM, Bartosz Golaszewski wrote:
> Checking for the availability of SCM bridge can happen from any context.
> It's only by chance that we haven't run into concurrency issues but with
> the upcoming SHM Bridge driver that will be initiated at the same
> initcall level, we need to assure the assignment and readback of the
> __scm pointer is atomic.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>   drivers/firmware/qcom_scm.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/firmware/qcom_scm.c b/drivers/firmware/qcom_scm.c
> index 980fcfa20b9f..422de70faff8 100644
> --- a/drivers/firmware/qcom_scm.c
> +++ b/drivers/firmware/qcom_scm.c
> @@ -1331,7 +1331,7 @@ static int qcom_scm_find_dload_address(struct device *dev, u64 *addr)
>    */
>   bool qcom_scm_is_available(void)
>   {
> -	return !!__scm;
> +	return !!READ_ONCE(__scm);
>   }
>   EXPORT_SYMBOL(qcom_scm_is_available);
>   
> @@ -1477,8 +1477,8 @@ static int qcom_scm_probe(struct platform_device *pdev)
>   	if (ret)
>   		return ret;
>   
> -	__scm = scm;
> -	__scm->dev = &pdev->dev;
> +	scm->dev = &pdev->dev;
> +	WRITE_ONCE(__scm, scm);

In my opinion "__scm = scm;" assignment should be done at the end of 
probe function success so that qcom_scm_is_available() return true only 
when probe is completed.

Other changes may not be needed.

>   	init_completion(&__scm->waitq_comp);
>   

