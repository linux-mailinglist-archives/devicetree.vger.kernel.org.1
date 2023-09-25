Return-Path: <devicetree+bounces-2994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF227AD146
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:20:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6FB632816D0
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 07:20:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFA3E1094E;
	Mon, 25 Sep 2023 07:20:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73BE61094A
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:20:15 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD699DF;
	Mon, 25 Sep 2023 00:20:12 -0700 (PDT)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38P4nxce013442;
	Mon, 25 Sep 2023 07:20:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=c6f2BxdBF3vgTPlNcikKDgRPEjUn6m3A1J3kOzNzU2s=;
 b=X6IYW0Y09DKBAmALOibTF6u/L4fTNK1gx3InbYyPxa09erYXPDRc2F8Q+XV+T2QzxE/W
 PtKhirohsFPySR7eKQvfXnQYfSIFMP1QAd608+uRj67QWpJin8XfQtQaGU8qfMqnZu4M
 2Im36qzXMpV54/lytAAfo+bj5p0oEeEtBYFEu6wlJcIJELfWn+ulPyD77OV8FzO8Ti+V
 Qiq+ivf9q/PWcj/JKSivwDFJl+AUrf/WFvMgJ6DuiDhXxdvwlZhw/rjWy+HjloVmBsAQ
 sn3ufd6g/TrS3VbLV9r6OA2blbgkscIOQh65gHEEbFK/WKrQAxd2KzvQrlIfD/E+VhrH Dw== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t9qbpu5w3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 07:20:07 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38P7K6iC004414
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 07:20:06 GMT
Received: from [10.201.2.48] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Mon, 25 Sep
 2023 00:20:01 -0700
Message-ID: <ad1ecbab-f138-45fa-9faf-2b27c0f6d536@quicinc.com>
Date: Mon, 25 Sep 2023 12:49:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH V2 3/3] arm64: dts: qcom: ipq5018: enable the CPUFreq
 support
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <jassisinghbrar@gmail.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_varada@quicinc.com>, <quic_srichara@quicinc.com>
References: <20230922084303.4164046-1-quic_gokulsri@quicinc.com>
 <20230922084303.4164046-4-quic_gokulsri@quicinc.com>
 <CAA8EJpqpQkFLm13cf=4tOakCV2q1-FZv4vzBmfQURXNi5-do7A@mail.gmail.com>
From: Gokul Sriram P <quic_gokulsri@quicinc.com>
In-Reply-To: <CAA8EJpqpQkFLm13cf=4tOakCV2q1-FZv4vzBmfQURXNi5-do7A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: qXXd76zv6FHWdI6Ogd0D5PpPmH130Pl-
X-Proofpoint-ORIG-GUID: qXXd76zv6FHWdI6Ogd0D5PpPmH130Pl-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-25_04,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 adultscore=0 mlxlogscore=889 spamscore=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309250050
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On 9/24/2023 12:45 AM, Dmitry Baryshkov wrote:
> On Fri, 22 Sept 2023 at 11:44, Gokul Sriram Palanisamy
> <quic_gokulsri@quicinc.com> wrote:
>> @@ -181,6 +203,24 @@ v2m1: v2m@1000 {
>>                          };
>>                  };
>>
>> +               a53pll: clock@b116000 {
>> +                       compatible = "qcom,ipq5018-a53pll";
>> +                       reg = <0x0b116000 0x40>;
>> +                       #clock-cells = <0>;
>> +                       clocks = <&xo_board_clk>;
>> +                       clock-names = "xo";
>> +               };
>> +
>> +               apcs_glb: mailbox@b111000 {
>> +                       compatible = "qcom,ipq5018-apcs-apps-global",
>> +                                    "qcom,ipq6018-apcs-apps-global";
>> +                       reg = <0x0b111000 0x1000>;
>> +                       #clock-cells = <1>;
>> +                       clocks = <&a53pll>, <&xo_board_clk>, <&gcc GPLL0>;
>> +                       clock-names = "pll", "xo", "gpll0";
>> +                       #mbox-cells = <1>;
>> +               };
> Hmm, no, I was too quick to R-B. 0xb111 < 0xb116, please change these two nodes.

Sure, will update and resend. Thanks.
Regards,
Gokul


