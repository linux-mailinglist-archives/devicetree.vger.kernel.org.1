Return-Path: <devicetree+bounces-32182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B7D82E91F
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 06:17:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFDD31F23992
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 05:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97EB079FD;
	Tue, 16 Jan 2024 05:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ByEFYAbf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B478820;
	Tue, 16 Jan 2024 05:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40G4LQd4020308;
	Tue, 16 Jan 2024 05:17:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=QM2w54YujREiR/Tp9K8kL25Yj0H5hytD1TFpPECFQOQ=; b=By
	EFYAbfqDsZooPP0vxfZAZUJ+AUasEXvbRCXHdYlro6IoxTxaw4wViYqvp+hZqGYx
	5D4tbRI2+yOGLSy/lwhIsdxLoPIn4+BSUAUweXY0E7c2roP/r0ptk2v1Osi93bQO
	SF3Ndlk7x4NcvCIkJaamERVZaSiXfztjaJRQ+jWIwj6HVXa/jU7vQP7SJY5nQ/La
	h1oVtS9nmiGeoRcf+jpIwxXosAVWPPPeynhS2kK+IJUoB/fJMGXuzCYDrZVUiFwC
	DJUjhSPJQ5S4E0Lawu8Hek/2lGjl8vKUkma7Eis3EC+/Gyj7gDJ1j0rLGSDGz4fb
	5kk+r0i5YuDZsEO1uTvw==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vnejdghyu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 Jan 2024 05:17:20 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 40G5HJv5019139
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 Jan 2024 05:17:20 GMT
Received: from [10.216.3.129] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Mon, 15 Jan
 2024 21:17:13 -0800
Message-ID: <da1945ce-7e34-6ad5-7b9b-478fcbd4a2c6@quicinc.com>
Date: Tue, 16 Jan 2024 10:47:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Subject: Re: [PATCH v6 6/6] PCI: qcom: Add OPP support to scale performance
 state of power domain
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        "Lorenzo
 Pieralisi" <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
	<kw@linux.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Brian Masney <bmasney@redhat.com>, Georgi Djakov <djakov@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <vireshk@kernel.org>,
        <quic_vbadigan@quicinc.com>, <quic_skananth@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20240112-opp_support-v6-0-77bbf7d0cc37@quicinc.com>
 <20240112-opp_support-v6-6-77bbf7d0cc37@quicinc.com>
 <CAA8EJpqwOfeS-QpLVvYGf0jmTVxiT02POwK+9tkN03Cr4DgL+g@mail.gmail.com>
From: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
In-Reply-To: <CAA8EJpqwOfeS-QpLVvYGf0jmTVxiT02POwK+9tkN03Cr4DgL+g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: gl5xLC7oj0X221MSjDMmAPz_nczJoNlz
X-Proofpoint-ORIG-GUID: gl5xLC7oj0X221MSjDMmAPz_nczJoNlz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=999 bulkscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2401160039



On 1/12/2024 9:03 PM, Dmitry Baryshkov wrote:
> On Fri, 12 Jan 2024 at 16:25, Krishna chaitanya chundru
> <quic_krichai@quicinc.com> wrote:
>>
>> QCOM Resource Power Manager-hardened (RPMh) is a hardware block which
>> maintains hardware state of a regulator by performing max aggregation of
>> the requests made by all of the processors.
>>
>> PCIe controller can operate on different RPMh performance state of power
>> domain based up on the speed of the link. And this performance state varies
>> from target to target.
>>
>> It is manadate to scale the performance state based up on the PCIe speed
>> link operates so that SoC can run under optimum power conditions.
>>
>> Add Operating Performance Points(OPP) support to vote for RPMh state based
>> upon GEN speed link is operating.
>>
>> OPP can handle ICC bw voting also, so move icc bw voting through opp
>> framework if opp entries are present.
>>
>> In PCIe certain gen speeds like GEN1x2 & GEN2X1 or GEN3x2 & GEN4x1 use
>> same icc bw and has frequency, so use frequency based search to reduce
>> number of entries in the opp table.
>>
>> Don't initialize icc if opp is supported.
>>
>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 83 ++++++++++++++++++++++++++++------
>>   1 file changed, 70 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index 035953f0b6d8..31512dc9d6ff 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -22,6 +22,7 @@
>>   #include <linux/of.h>
>>   #include <linux/of_gpio.h>
>>   #include <linux/pci.h>
>> +#include <linux/pm_opp.h>
>>   #include <linux/pm_runtime.h>
>>   #include <linux/platform_device.h>
>>   #include <linux/phy/pcie.h>
>> @@ -244,6 +245,7 @@ struct qcom_pcie {
>>          const struct qcom_pcie_cfg *cfg;
>>          struct dentry *debugfs;
>>          bool suspended;
>> +       bool opp_supported;
>>   };
>>
>>   #define to_qcom_pcie(x)                dev_get_drvdata((x)->dev)
>> @@ -1404,16 +1406,14 @@ static int qcom_pcie_icc_init(struct qcom_pcie *pcie)
>>          return 0;
>>   }
>>
>> -static void qcom_pcie_icc_update(struct qcom_pcie *pcie)
>> +static void qcom_pcie_icc_opp_update(struct qcom_pcie *pcie)
>>   {
>>          struct dw_pcie *pci = pcie->pci;
>> -       u32 offset, status;
>> +       u32 offset, status, freq;
>> +       struct dev_pm_opp *opp;
>>          int speed, width;
>>          int ret;
>>
>> -       if (!pcie->icc_mem)
>> -               return;
>> -
>>          offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
>>          status = readw(pci->dbi_base + offset + PCI_EXP_LNKSTA);
>>
>> @@ -1424,11 +1424,42 @@ static void qcom_pcie_icc_update(struct qcom_pcie *pcie)
>>          speed = FIELD_GET(PCI_EXP_LNKSTA_CLS, status);
>>          width = FIELD_GET(PCI_EXP_LNKSTA_NLW, status);
>>
>> -       ret = icc_set_bw(pcie->icc_mem, 0, width * QCOM_PCIE_LINK_SPEED_TO_BW(speed));
>> -       if (ret) {
>> -               dev_err(pci->dev, "failed to set interconnect bandwidth: %d\n",
>> -                       ret);
>> +       if (pcie->opp_supported) {
>> +               switch (speed) {
>> +               case 1:
>> +                       freq = 2500000;
>> +                       break;
>> +               case 2:
>> +                       freq = 5000000;
>> +                       break;
>> +               case 3:
>> +                       freq = 8000000;
>> +                       break;
>> +               default:
>> +                       WARN_ON_ONCE(1);
>> +                       fallthrough;
>> +               case 4:
>> +                       freq = 16000000;
> 
> I expected that this kind of detail goes to the OPP table itself. Can
> we index the table using the generation instead of frequency?
> 
In the previous patch also we tried to use index only, but problem using
index is we can define only GEN speed. As we are voting for the ICC BW
voting also we need to consider for lane width while configuring this
path. It is difficult to use index now as we need to consider both gen
speed and lane width.
For that reason we moved to frequencies to reduce number of entries in
OPP table.
for example if my controller supports GEN1 & GEN2 and MAX lane width is
2.

for GEN1x1
opp-2500000 {
};

for GEN2x1 & GEN1x2 as both use same frequiences and bandwidth.
opp-5000000 {
};

for GEN2x2
opp-10000000 {

};

- Krishna chaitanya.
>> +                       break;
>> +               }
>> +
>> +               opp = dev_pm_opp_find_freq_exact(pci->dev, freq * width, true);
>> +               if (!IS_ERR(opp)) {
>> +                       ret = dev_pm_opp_set_opp(pci->dev, opp);
>> +                       if (ret)
>> +                               dev_err(pci->dev, "Failed to set opp: freq %ld ret %d\n",
>> +                                       dev_pm_opp_get_freq(opp), ret);
>> +                       dev_pm_opp_put(opp);
>> +               }
>> +       } else {
>> +               ret = icc_set_bw(pcie->icc_mem, 0, width * QCOM_PCIE_LINK_SPEED_TO_BW(speed));
>> +               if (ret) {
>> +                       dev_err(pci->dev, "failed to set interconnect bandwidth for pcie-mem: %d\n",
>> +                               ret);
>> +               }
>>          }
>> +
>> +       return;
>>   }
>>
>>   static int qcom_pcie_link_transition_count(struct seq_file *s, void *data)
>> @@ -1471,8 +1502,10 @@ static void qcom_pcie_init_debugfs(struct qcom_pcie *pcie)
>>   static int qcom_pcie_probe(struct platform_device *pdev)
>>   {
>>          const struct qcom_pcie_cfg *pcie_cfg;
>> +       unsigned long max_freq = INT_MAX;
>>          struct device *dev = &pdev->dev;
>>          struct qcom_pcie *pcie;
>> +       struct dev_pm_opp *opp;
>>          struct dw_pcie_rp *pp;
>>          struct resource *res;
>>          struct dw_pcie *pci;
>> @@ -1539,9 +1572,33 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>>                  goto err_pm_runtime_put;
>>          }
>>
>> -       ret = qcom_pcie_icc_init(pcie);
>> -       if (ret)
>> +        /* OPP table is optional */
>> +       ret = devm_pm_opp_of_add_table(dev);
>> +       if (ret && ret != -ENODEV) {
>> +               dev_err_probe(dev, ret, "Failed to add OPP table\n");
>>                  goto err_pm_runtime_put;
>> +       }
> 
> Can we initialise the table from the driver if it is not found? This
> will help us by having the common code later on.
> 
we already icc voting if there is no opp table present in the dts.
So I think this might not be needed.
Please let me know if you want to use for some other use case.

- Krishna Chaitanya.
>> +
>> +       /* vote for max freq in the opp table if opp table is present */
>> +       if (ret != -ENODEV) {
>> +               opp = dev_pm_opp_find_freq_floor(dev, &max_freq);
>> +               if (!IS_ERR(opp)) {
>> +                       ret = dev_pm_opp_set_opp(dev, opp);
>> +                       if (ret)
>> +                               dev_err_probe(pci->dev, ret,
>> +                                             "Failed to set opp: freq %ld\n",
>> +                                             dev_pm_opp_get_freq(opp));
>> +                       dev_pm_opp_put(opp);
>> +               }
>> +               pcie->opp_supported = true;
>> +       }
>> +
>> +       /* Skip icc init if opp is supported as icc bw vote is handled by opp framework */
>> +       if (!pcie->opp_supported) {
>> +               ret = qcom_pcie_icc_init(pcie);
>> +               if (ret)
>> +                       goto err_pm_runtime_put;
>> +       }
>>
>>          ret = pcie->cfg->ops->get_resources(pcie);
>>          if (ret)
>> @@ -1561,7 +1618,7 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>>                  goto err_phy_exit;
>>          }
>>
>> -       qcom_pcie_icc_update(pcie);
>> +       qcom_pcie_icc_opp_update(pcie);
>>
>>          if (pcie->mhi)
>>                  qcom_pcie_init_debugfs(pcie);
>> @@ -1640,7 +1697,7 @@ static int qcom_pcie_resume_noirq(struct device *dev)
>>                  pcie->suspended = false;
>>          }
>>
>> -       qcom_pcie_icc_update(pcie);
>> +       qcom_pcie_icc_opp_update(pcie);
>>
>>          return 0;
>>   }
>>
>> --
>> 2.42.0
>>
>>
> 
> 

