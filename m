Return-Path: <devicetree+bounces-9855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3234D7CEDA9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 03:42:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D0CF1F2227F
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 01:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE8C4396;
	Thu, 19 Oct 2023 01:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="XRx+e2fp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D3938C;
	Thu, 19 Oct 2023 01:42:30 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4005B9F;
	Wed, 18 Oct 2023 18:42:29 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39J132Sb017678;
	Thu, 19 Oct 2023 01:41:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=JmLobK+FUz/CjlAbQ3SocOsnFlEbnUpw2VUID+SlFqU=;
 b=XRx+e2fpwY+o6my+UFFGKjZ4w9iqcLxfmSm+ESmzw243b4GqYBH9RqlklpVqdjwzHoXx
 audNlsLH6vKaRYA8snKkJvo3eeoWOTk1PmKhfgYD6lL5JEmcLi3wFqxFWBM1iJ+IDro0
 WQxIImV7/BJgLirr3nCiwk7AjUATO0rncwpO2W1Z/1YeziMnnBUyPDvAhcQH7B68+tC9
 BSTE8PzWFD0tekbCSe0gqg8TGU0o37cvdZ/zVgd5uHeV/e8u8+1kSewue2BtH/PM0Ibo
 L5sV0aXbQ1Ewzm5Z6RCgHTuswW/d4D61kJ4LkInKOOyTE73rpTNs9jlBBBIE0r+JSMoB iw== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ttnnagjmt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 01:41:46 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39J1fkTt026830
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 01:41:46 GMT
Received: from [10.110.123.255] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 18 Oct
 2023 18:41:45 -0700
Message-ID: <c9c5f13f-b3e7-6591-f277-cd86162152e4@quicinc.com>
Date: Wed, 18 Oct 2023 18:41:45 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v9 30/34] ASoC: qcom: qdsp6: Add SND kcontrol for fetching
 offload status
Content-Language: en-US
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        <mathias.nyman@intel.com>, <gregkh@linuxfoundation.org>,
        <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
        <tiwai@suse.com>, <agross@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <srinivas.kandagatla@linaro.org>, <bgoswami@quicinc.com>,
        <Thinh.Nguyen@synopsys.com>
CC: <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <alsa-devel@alsa-project.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>
References: <20231017200109.11407-1-quic_wcheng@quicinc.com>
 <20231017200109.11407-31-quic_wcheng@quicinc.com>
 <92971bbf-b890-4e41-8ef1-9213e15d81b2@linux.intel.com>
From: Wesley Cheng <quic_wcheng@quicinc.com>
In-Reply-To: <92971bbf-b890-4e41-8ef1-9213e15d81b2@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: r88HwueC7gBxxspnCMLJlPg1rg9lw74V
X-Proofpoint-ORIG-GUID: r88HwueC7gBxxspnCMLJlPg1rg9lw74V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-19_02,2023-10-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 phishscore=0 adultscore=0 malwarescore=0 spamscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=275 impostorscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310190011

Hi Pierre,

On 10/17/2023 3:53 PM, Pierre-Louis Bossart wrote:
> 
> 
> On 10/17/23 15:01, Wesley Cheng wrote:
>> Add a kcontrol to the platform sound card to fetch the current offload
>> status.  This can allow for userspace to ensure/check which USB SND
>> resources are actually busy versus having to attempt opening the USB SND
>> devices, which will result in an error if offloading is active.
> 
> I think I mentioned this a while back, but why not add the status in the
> USB card itself? That's a generic component that all userspace agent
> could query. Having a QCOM-specific control doesn't make the life of
> userspace easier IMHO.
> 
> 

Will take a look at this based on the comments you had in the other 
kcontrol patch.  Seeing if we can move it to a more generic layer.

Thanks
Wesley Cheng

