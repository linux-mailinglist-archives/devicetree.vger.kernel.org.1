Return-Path: <devicetree+bounces-21309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC37780324B
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 13:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96C3A280F6F
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 12:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5142376A;
	Mon,  4 Dec 2023 12:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="QNzaK9z7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F86FF3;
	Mon,  4 Dec 2023 04:16:18 -0800 (PST)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3B4Ao31S031010;
	Mon, 4 Dec 2023 12:15:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=xDq+Ff8TGz7bw184PacTkNxf4WD9GYmXfhIgC+ojrTk=;
 b=QNzaK9z7OLHC8sqx3psN/vrijwKdWG8nOS+q8FygQpHValmYtlmfZQbFmA9jei0pjCQj
 jQsr6Jd9XritzBGg8rzZZ6BDGov/wcwntqIq1pRHR2Bf7HEUWT0Yp6SYDIbfNhe279Y1
 vGPprfUTGv9DHJxM9nWKLGGjRwUkJ/kw+CmE7bP5rWkDrJ9SEd3AWMd29jGwd5SnqGXs
 sZLwSA3sMb3dQ4peJfHeJVSq6gdeBGHPNIVuPmcudDG92arDU9Nkc0X5JfjheV/i/3Pt
 La5rnh2uuuF0c/OeRflC9m+MVAn5Qg1h0+paKGYrGBin8SskS/qVMOTYo3kPsTFUrccK 1Q== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3usdbn872x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 04 Dec 2023 12:15:53 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3B4CFqPr003485
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 4 Dec 2023 12:15:52 GMT
Received: from [10.50.1.19] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Mon, 4 Dec
 2023 04:15:43 -0800
Message-ID: <d4752e50-a1b6-2464-8bf9-6820e7f2d995@quicinc.com>
Date: Mon, 4 Dec 2023 17:45:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v5 0/3] Add UFS host controller and Phy nodes for sc7280
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "Alim
 Akhtar" <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        "Bart
 Van Assche" <bvanassche@acm.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        <cros-qcom-dts-watchers@chromium.org>
CC: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>,
        "Bao D. Nguyen"
	<quic_nguyenb@quicinc.com>
References: <20231204-sc7280-ufs-v5-0-926ceed550da@fairphone.com>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <20231204-sc7280-ufs-v5-0-926ceed550da@fairphone.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: qtjPx6qKih98TZy29aEHWCzIaild6RaK
X-Proofpoint-GUID: qtjPx6qKih98TZy29aEHWCzIaild6RaK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-04_06,2023-11-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=999 phishscore=0
 lowpriorityscore=0 mlxscore=0 impostorscore=0 clxscore=1015 spamscore=0
 malwarescore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2311060000 definitions=main-2312040092



On 12/4/2023 3:54 PM, Luca Weiss wrote:
> This patch adds UFS host controller and Phy nodes for Qualcomm sc7280
> SoC and enable it on some sc7280-based boards.
> 
> Pick up the patchset from Nitin since the last revision (v4) has been
> sent end of September and is blocking qcm6490-fairphone-fp5 UFS.
> 
> ---
> Changes in v5:
> - Try to get patch tags in order
> - Drop patch reordering clocks/clock-names in dt-bindings example (Rob)
> - Use QCOM_ICC_TAG_ALWAYS for interconnect (Konrad)
> - Add missing interconnect-names (Luca)
> - Fix sorting of ufs nodes, place at correct location (Luca)
> - Provide ufs_mem_phy clock to gcc node (Luca)
> - Add missing power-domain to ufs_mem_phy (Luca)
> - Link to v4: https://lore.kernel.org/linux-arm-msm/20230929131936.29421-1-quic_nitirawa@quicinc.com/
> 
> ---
> Nitin Rawat (3):
>        scsi: ufs: qcom: dt-bindings: Add SC7280 compatible string
>        arm64: dts: qcom: sc7280: Add UFS nodes for sc7280 soc
>        arm64: dts: qcom: sc7280: Add UFS nodes for sc7280 IDP board
> 
>   .../devicetree/bindings/ufs/qcom,ufs.yaml          |  2 +
>   arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           | 19 ++++++
>   arch/arm64/boot/dts/qcom/sc7280.dtsi               | 74 +++++++++++++++++++++-
>   3 files changed, 94 insertions(+), 1 deletion(-)
> ---
> base-commit: ce733604ab13d907655fd76ef5be55d16bbd0f8c
> change-id: 20231204-sc7280-ufs-b1e746ea60ed
> 
> Best regards,

Hi Luca,
Thanks for updating the patch. Posted a comment on 1 patch.

Regards,
Nitin

