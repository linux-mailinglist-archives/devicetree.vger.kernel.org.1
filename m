Return-Path: <devicetree+bounces-9843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDB47CEC99
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 02:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F50128173B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 00:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 577AA18D;
	Thu, 19 Oct 2023 00:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="SFCZ3WxO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DCD517E;
	Thu, 19 Oct 2023 00:10:39 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97A17FA;
	Wed, 18 Oct 2023 17:10:37 -0700 (PDT)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39INBi2G013562;
	Thu, 19 Oct 2023 00:10:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=6hQElVCyOOnSkM+Zznfzy7HZx857FhWzEl1qsufSNo4=;
 b=SFCZ3WxOtDkGT2IZD6/38EC1pZOMIEbyZLOg0siVLOIn7mc1eyRbGB9fyZSSdHjtOFhW
 fXe0Qn4yePa6t8JF15Meq2bQi3ZgMlPsF7Xb7lmBXjIsZg+76ay4UqGq6fC5secPEb2f
 FBsGaSG0ZE5iPwYL0O1A6EZvwQ+FNnkZ6WcHoujpQqjfteGCWYWVJQY5MYdyGWbbLb4Z
 zUV3eWuyPNY/3wJwL1CTNLA9dhqPBSvX5r++T5KO/5lzcrUVw9LgmM5HYgThe8jIvJdX
 qbGB6SK0BCuAdXbiLvVCLSO0a8sUv0WJapFvYqBKCSy1t3XkB1HHPDqtTTJ2N4aszXV0 GQ== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ttg82sb9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 00:10:16 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39J0AFLp024950
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 00:10:15 GMT
Received: from [10.110.123.255] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 18 Oct
 2023 17:10:14 -0700
Message-ID: <c57ddcf6-81c3-6be4-a07e-0dbe7e8aa8f2@quicinc.com>
Date: Wed, 18 Oct 2023 17:10:14 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v9 26/34] ASoC: qcom: qdsp6: q6afe: Split USB AFE
 dev_token param into separate API
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
 <20231017200109.11407-27-quic_wcheng@quicinc.com>
 <c6a003eb-213d-4456-bc6a-e07c08c57396@linux.intel.com>
From: Wesley Cheng <quic_wcheng@quicinc.com>
In-Reply-To: <c6a003eb-213d-4456-bc6a-e07c08c57396@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: blhNU9CerJ0mDNSk9ta5Q5PAa7V6Hd1o
X-Proofpoint-ORIG-GUID: blhNU9CerJ0mDNSk9ta5Q5PAa7V6Hd1o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-18_18,2023-10-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 mlxlogscore=999 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 mlxscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310180199

Hi Pierre,

On 10/17/2023 3:39 PM, Pierre-Louis Bossart wrote:
> 
> 
> On 10/17/23 15:01, Wesley Cheng wrote:
>> The Q6USB backend can carry information about the available USB SND cards
>> and PCM devices discovered on the USB bus.  The dev_token field is used by
>> the audio DSP to notify the USB offload driver of which card and PCM index
>> to enable playback on.  Separate this into a dedicated API, so the USB
>> backend can set the dev_token accordingly.  The audio DSP does not utilize
>> this information until the AFE port start command is sent, which is done
>> during the PCM prepare phase.
>>
>> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
>> ---
>>   sound/soc/qcom/qdsp6/q6afe.c | 49 +++++++++++++++++++++++++-----------
>>   sound/soc/qcom/qdsp6/q6afe.h |  1 +
>>   2 files changed, 36 insertions(+), 14 deletions(-)
>>
>> diff --git a/sound/soc/qcom/qdsp6/q6afe.c b/sound/soc/qcom/qdsp6/q6afe.c
>> index 72c4e6fe20c4..f09a756246f8 100644
>> --- a/sound/soc/qcom/qdsp6/q6afe.c
>> +++ b/sound/soc/qcom/qdsp6/q6afe.c
>> @@ -1394,10 +1394,42 @@ void q6afe_tdm_port_prepare(struct q6afe_port *port,
>>   }
>>   EXPORT_SYMBOL_GPL(q6afe_tdm_port_prepare);
>>   
>> -static int afe_port_send_usb_dev_param(struct q6afe_port *port, struct q6afe_usb_cfg *cfg)
>> +/**
>> + * afe_port_send_usb_dev_param() - Send USB dev token
>> + *
>> + * @port: Instance of afe port
>> + * @cardidx: USB SND card index to reference
>> + * @pcmidx: USB SND PCM device index to reference
>> + *
>> + * The USB dev token carries information about which USB SND card instance and
>> + * PCM device to execute the offload on.  This information is carried through
>> + * to the stream enable QMI request, which is handled by the offload class
>> + * driver.  The information is parsed to determine which USB device to query
>> + * the required resources for.
>> + */
>> +int afe_port_send_usb_dev_param(struct q6afe_port *port, int cardidx, int pcmidx)
>>   {
>> -	union afe_port_config *pcfg = &port->port_cfg;
>>   	struct afe_param_id_usb_audio_dev_params usb_dev;
>> +	int ret;
>> +
>> +	memset(&usb_dev, 0, sizeof(usb_dev));
>> +
>> +	usb_dev.cfg_minor_version = AFE_API_MINOR_VERSION_USB_AUDIO_CONFIG;
>> +	usb_dev.dev_token = (cardidx << 16) | (pcmidx << 8);
>> +	ret = q6afe_port_set_param_v2(port, &usb_dev,
>> +				AFE_PARAM_ID_USB_AUDIO_DEV_PARAMS,
>> +				AFE_MODULE_AUDIO_DEV_INTERFACE, sizeof(usb_dev));
>> +	if (ret)
>> +		dev_err(port->afe->dev, "%s: AFE device param cmd failed %d\n",
>> +			__func__, ret);
>> +
>> +	return ret;
>> +}
>> +EXPORT_SYMBOL_GPL(afe_port_send_usb_dev_param);
>> +
>> +static int afe_port_send_usb_params(struct q6afe_port *port, struct q6afe_usb_cfg *cfg)
>> +{
>> +	union afe_port_config *pcfg = &port->port_cfg;
>>   	struct afe_param_id_usb_audio_dev_lpcm_fmt lpcm_fmt;
>>   	struct afe_param_id_usb_audio_svc_interval svc_int;
>>   	int ret = 0;
>> @@ -1408,20 +1440,9 @@ static int afe_port_send_usb_dev_param(struct q6afe_port *port, struct q6afe_usb
>>   		goto exit;
>>   	}
>>   
>> -	memset(&usb_dev, 0, sizeof(usb_dev));
>>   	memset(&lpcm_fmt, 0, sizeof(lpcm_fmt));
>>   	memset(&svc_int, 0, sizeof(svc_int));
>>   
>> -	usb_dev.cfg_minor_version = AFE_API_MINOR_VERSION_USB_AUDIO_CONFIG;
>> -	ret = q6afe_port_set_param_v2(port, &usb_dev,
>> -				      AFE_PARAM_ID_USB_AUDIO_DEV_PARAMS,
>> -				      AFE_MODULE_AUDIO_DEV_INTERFACE, sizeof(usb_dev));
>> -	if (ret) {
>> -		dev_err(port->afe->dev, "%s: AFE device param cmd failed %d\n",
>> -			__func__, ret);
>> -		goto exit;
>> -	}
>> -
> 
> this feels like a questionable patch split. Why not introduce the new
> helper earlier and avoid adding code then modifying the same code?
> 

Let me see if I can squash this with the change that adds the USB AFE port.

Thanks
Wesley Cheng

