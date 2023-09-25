Return-Path: <devicetree+bounces-2887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6ECD7ACD26
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:40:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B281C1C2042F
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:40:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 389A27F6;
	Mon, 25 Sep 2023 00:40:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CB4371
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 00:40:45 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AC2AD3;
	Sun, 24 Sep 2023 17:40:44 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38P0PVRO012784;
	Mon, 25 Sep 2023 00:40:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=CphvyXnWS9E3Psf749txa9+0oNrF99H6MBR6djayx4k=;
 b=G0QXiXHf5kPLO/A08t/9pF/2ea7Pkih5mmHhSOPzaTXA39oj+FkpZUF7ZUhoPz8WC99b
 mobopZxYyjI0kyBcC6D8BOmCLLtG6zQPFRqRp79u+Pthy9yUBBwN98IWNPOz/jILv/rJ
 P3UJ2AYvnRSMRXabNtcvCp2I8pXSRriZco6FNdHt7zO+y/LlXyG0410/wcTym2FHkaJh
 P8PqYxIiTTftgxO/QXAyXEvekwgcd6phqrOFJRiurKdoADU2Nog/be3/wCvPvmmg/sVK
 FL2z4wpRpicX0FFiwUbQBoHx9HCgxHvkHDO+mAkCz/XnUWL2V+VIxfPXev7rvR16N8eZ Pg== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tajapgt1x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 00:40:00 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38P0dx7k020426
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 00:39:59 GMT
Received: from [10.239.132.204] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Sun, 24 Sep
 2023 17:39:51 -0700
Message-ID: <0bf7db81-feda-4395-97fc-97d5a0f1b6db@quicinc.com>
Date: Mon, 25 Sep 2023 08:39:49 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] arm64: dts: qcom: sm4450-qrd: add QRD4450 uart
 support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <tglx@linutronix.de>, <maz@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>,
        <geert+renesas@glider.be>, <arnd@arndb.de>,
        <neil.armstrong@linaro.org>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <quic_tsoni@quicinc.com>, <quic_shashim@quicinc.com>,
        <quic_kaushalk@quicinc.com>, <quic_tdas@quicinc.com>,
        <quic_tingweiz@quicinc.com>, <quic_aiquny@quicinc.com>,
        <kernel@quicinc.com>
References: <20230922081026.2799-1-quic_tengfan@quicinc.com>
 <20230922081026.2799-6-quic_tengfan@quicinc.com>
 <CAA8EJpq1NAOZTOmBUUnkeLDThvxosj=MzNHo=5VAXnRPQci68g@mail.gmail.com>
From: Tengfei Fan <quic_tengfan@quicinc.com>
In-Reply-To: <CAA8EJpq1NAOZTOmBUUnkeLDThvxosj=MzNHo=5VAXnRPQci68g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: I5Hzk02EPVHx-bxgb7ti9ocDyMpwaF8D
X-Proofpoint-GUID: I5Hzk02EPVHx-bxgb7ti9ocDyMpwaF8D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-24_21,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1011
 mlxscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 mlxlogscore=919
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309250000
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



在 9/24/2023 3:12 AM, Dmitry Baryshkov 写道:
> On Fri, 22 Sept 2023 at 11:13, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>>
>> Add uart support for QRD4450 for enable uart console.
>>
>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm4450-qrd.dts | 19 +++++++++++++++++--
>>   1 file changed, 17 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm4450-qrd.dts b/arch/arm64/boot/dts/qcom/sm4450-qrd.dts
>> index 00a1c81ca397..e354bad57a9e 100644
>> --- a/arch/arm64/boot/dts/qcom/sm4450-qrd.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm4450-qrd.dts
>> @@ -10,9 +10,24 @@
>>          model = "Qualcomm Technologies, Inc. SM4450 QRD";
>>          compatible = "qcom,sm4450-qrd", "qcom,sm4450";
>>
>> -       aliases { };
>> +       aliases {
>> +               serial0 = &uart7;
>> +       };
>>
>>          chosen {
>> -               bootargs = "console=hvc0";
>> +               stdout-path = "serial0:115200n8";
>>          };
>>   };
>> +
>> +&qupv3_id_0 {
>> +       status = "okay";
>> +};
>> +
>> +&tlmm {
>> +       /* Reserved for other subsystems */
>> +       gpio-reserved-ranges = <0 4>, <136 1>;
>> +};
> 
> Is this also related to the UART support? it looks like it is a
> separate patch, which should likely have the Fixes tag
Hi Dmitry,
This is related to the pinctrl support, UART support depend on pinctrl.
I will separate this to another patch for clearer.
> 
>> +
>> +&uart7 {
>> +       status = "okay";
>> +};
>> --
>> 2.17.1
>>
> 
> 

-- 
Thx and BRs,
Tengfei Fan

