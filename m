Return-Path: <devicetree+bounces-6123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8937B9E71
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:07:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 449682820ED
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC4EE27EC7;
	Thu,  5 Oct 2023 14:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="lRm5Rg76"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4843627702
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 14:07:00 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D2F45C6B2;
	Thu,  5 Oct 2023 07:06:43 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3950USmP008677;
	Thu, 5 Oct 2023 02:55:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ElSHwRJ9bjoNy4OmLXfQXMRmjlO+jpIuvVPPdPSmrrA=;
 b=lRm5Rg76uYFwjjhY6mbmHF3CH1Trn3MI3Bg7OHwRX8YDAaECPDXFNttyPISfSuRI2h3Z
 jzNk0BlyFs3hZftXfk/j7icx26hvoHdDvgJbDGUFhomtj4JE6RQRZ+6m4UVeEa3kkVN5
 pb3Zn643uCPGfwjOPyGaAZl3z90rYaBBtstYWZ++Hxc1e9OHoY4PlC2AEreuwvMY2XRP
 EFB6qldeJpnevRwyT07Tgns5gb4JS3JNAonJOtaLvUu5xdH1uRrldL2AofuZwizd6mBS
 +jpBvlJaunIZ2pTqXDjW0bXnuYMtVlDRuhnxiDHO+D5QCUlZgRi+SzS0Z+ChjCS/y7F4 xw== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3thj6gg9q0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Oct 2023 02:55:35 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3952tYxZ009310
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 5 Oct 2023 02:55:34 GMT
Received: from [10.50.3.48] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Wed, 4 Oct
 2023 19:55:27 -0700
Message-ID: <b7e1d4f1-9ab4-41ac-9116-7a25186e14cb@quicinc.com>
Date: Thu, 5 Oct 2023 08:25:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] phy: qcom: Introduce PCIe UNIPHY 28LP driver
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>,
        <quic_ipkumar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20231003120846.28626-1-quic_nsekar@quicinc.com>
 <20231003120846.28626-4-quic_nsekar@quicinc.com>
 <959363c6-9ecb-4e5f-960d-65dd23b74ce2@kernel.org>
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
In-Reply-To: <959363c6-9ecb-4e5f-960d-65dd23b74ce2@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: jX0MbaXgmzp8ahUBw58-8kFMeb6bCizG
X-Proofpoint-ORIG-GUID: jX0MbaXgmzp8ahUBw58-8kFMeb6bCizG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_13,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 clxscore=1011 mlxlogscore=649 impostorscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310050023
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On 10/4/2023 1:43 PM, Krzysztof Kozlowski wrote:
> On 03/10/2023 14:08, Nitheesh Sekar wrote:
>> Add Qualcomm PCIe UNIPHY 28LP driver support present
>> in Qualcomm IPQ5018 SoC and the phy init sequence.
>>
>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>> ---
> ...
>
>> +static int qcom_uniphy_pcie_probe(struct platform_device *pdev)
>> +{
>> +	struct qcom_uniphy_pcie *phy;
>> +	int ret;
>> +	struct phy *generic_phy;
>> +	struct phy_provider *phy_provider;
>> +	struct device *dev = &pdev->dev;
>> +	struct device_node *np = of_node_get(dev->of_node);
>> +
>> +	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
>> +	if (!phy)
>> +		return -ENOMEM;
>> +
>> +	platform_set_drvdata(pdev, phy);
>> +	phy->dev = &pdev->dev;
>> +
>> +	phy->data = of_device_get_match_data(dev);
>> +	if (!phy->data)
>> +		return -EINVAL;
>> +
>> +	ret = qcom_uniphy_pcie_get_resources(pdev, phy);
>> +	if (ret < 0) {
>> +		dev_err(&pdev->dev, "failed to get resources: %d\n", ret);
>> +		return ret;
> Syntax is:
> return dev_err_probe()
Sure. will update it and take care of this in future.
>
>
>> +	}
>> +
>> +	ret = phy_pipe_clk_register(phy, np);
>> +	if (ret)
>> +		dev_err(&pdev->dev, "failed to register phy pipe clk\n");
>> +
>> +	generic_phy = devm_phy_create(phy->dev, NULL, &pcie_ops);
>> +	if (IS_ERR(generic_phy))
>> +		return PTR_ERR(generic_phy);
>> +
>> +	phy_set_drvdata(generic_phy, phy);
>> +	phy_provider = devm_of_phy_provider_register(phy->dev,
>> +						     of_phy_simple_xlate);
>> +	if (IS_ERR(phy_provider))
>> +		return PTR_ERR(phy_provider);
>> +
>> +	return 0;
>> +}
>> +
>> +static struct platform_driver qcom_uniphy_pcie_driver = {
>> +	.probe		= qcom_uniphy_pcie_probe,
>> +	.driver		= {
>> +		.name	= "qcom-uniphy-pcie",
>> +		.owner	= THIS_MODULE,
> Run coccinelle/coccicheck.
Sure. Will do it.
>
>> +		.of_match_table = qcom_uniphy_pcie_id_table,
>> +	},
>> +};
>> +
>> +module_platform_driver(qcom_uniphy_pcie_driver);
>> +
>> +MODULE_ALIAS("platform:qcom-uniphy-pcie");
> You should not need MODULE_ALIAS() in normal cases. If you need it,
> usually it means your device ID table is wrong.
Ok. Will remove it.

Thanks,
Nitheesh

