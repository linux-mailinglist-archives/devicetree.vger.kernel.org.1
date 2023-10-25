Return-Path: <devicetree+bounces-11650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9DE7D64C3
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:18:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B7201C20CA3
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BCA71CA86;
	Wed, 25 Oct 2023 08:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="IGZV93eZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FCBE1C6B1
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:18:13 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3774A10A;
	Wed, 25 Oct 2023 01:18:12 -0700 (PDT)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39P89WNw021765;
	Wed, 25 Oct 2023 08:17:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=OjbC0Y/khOjbmahBVRiabHVGi+v24EMW0YesaPkMb3E=;
 b=IGZV93eZ9WaG1ezGg1lmuUGVTHtpR+wc44t9w6hr0o/yfXu/tKj8yXd/OEleX93eV32G
 DWiqNVmAiOLw1arM6Dn2KrywsH4YOYYPltyLOP+KjPOWcgXOf5y9kmzavGmxN5eW4W4U
 cC9qegHu8euKCdRrh7ODCsGgSFGKtEmC5DqmS8SCxSWGuu2BIzlDo3j0pZ+dsRiI8bUD
 zonDEa423hUVNeYx4CxP0d7aho3pIfsYwQSpWM8+eiH7tp8b2Ezgi68rhiB5UUWxtoVA
 9grVa4FmyHgmZJGicUoLND8g1ya1zHnM3QvFOUFwDL+kO6P4XF/qTtkb9ckFR/oGYuKO RA== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tx7r8357q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 08:17:52 +0000
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39P8Hpjd031123
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 08:17:51 GMT
Received: from [10.214.66.81] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 25 Oct
 2023 01:17:46 -0700
Message-ID: <3b1a19ce-92d7-8aad-3ffb-67233a80a7e1@quicinc.com>
Date: Wed, 25 Oct 2023 13:47:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: ufs: qcom-ufs: document the SM8560 UFS
 Controller
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Andy Gross
	<agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim
 Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van
 Assche <bvanassche@acm.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20231025-topic-sm8650-upstream-bindings-ufs-v1-1-a355e3556531@linaro.org>
From: Mukesh Ojha <quic_mojha@quicinc.com>
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-ufs-v1-1-a355e3556531@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: TQw4IWTvyO2zvR-DNJeHmVBctNDAJeHt
X-Proofpoint-GUID: TQw4IWTvyO2zvR-DNJeHmVBctNDAJeHt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_01,2023-10-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 mlxlogscore=999 lowpriorityscore=0 bulkscore=0 phishscore=0 spamscore=0
 clxscore=1011 priorityscore=1501 suspectscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310250070

Please correct subject, as most of the patches have wrong SoC name.

-Mukesh

On 10/25/2023 1:00 PM, Neil Armstrong wrote:
> Document the UFS Controller on the SM8650 Platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
>   Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index 462ead5a1cec..0d136c047b8b 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -36,6 +36,7 @@ properties:
>             - qcom,sm8350-ufshc
>             - qcom,sm8450-ufshc
>             - qcom,sm8550-ufshc
> +          - qcom,sm8650-ufshc
>         - const: qcom,ufshc
>         - const: jedec,ufs-2.0
>   
> 
> ---
> base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
> change-id: 20231016-topic-sm8650-upstream-bindings-ufs-d03cf52d57d5
> 
> Best regards,

