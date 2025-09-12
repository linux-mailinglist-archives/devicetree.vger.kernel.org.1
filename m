Return-Path: <devicetree+bounces-216307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DAEB54533
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:24:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA956580F77
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:24:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 621992D4816;
	Fri, 12 Sep 2025 08:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dsBYbGeP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C2C23ABB0
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757665490; cv=none; b=GMo33d/wKgWQUWc3BGgJwSWM/TX7WgkwAuiEntlUTFMz+kqiO6Yc83QALT3hxX6zI47p4lTKmmJjc/sAWOsz83kYpAZ/BZb1Wtgjhtg6AEmQGqx/zZxlVpEfEj5aw1iSxfYBQTvu+/NHWzZQ18I5QlldAQO74R8NQHXOwPNl4uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757665490; c=relaxed/simple;
	bh=c7h9Q27UK5y6oTWNxiAxftK32pv1dy5kIKwvdxhl4+c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WzHx7J2kacpTf2OX7Ydp1KLvx24T4I17TwVThiQ3Dm+mIFCRDBSr2IKM0QW/odA+tk5cYkrR8J7inR4GqK3ofqy7VuY/Q8fyGGyXnd2QrnBxushFFlaSYEe5Ccc0vwD9b2Uc1zAjfPnxZSI0EFv3Svpt0zAcHdugZca+X68flZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dsBYbGeP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C8DooS031134
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:24:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4SH0XX3SgsxyMepXQCl5Yw/UL2nASzTn8GrajrDWYZo=; b=dsBYbGePNgHkuQPM
	f7zUDwwRUVgYGuFZ4/e1DKDhPW2/bd9zesRy/Pw2LdaziWFFtZ03CKxkCaM62XHK
	2prDK95B5XIEw8TJAkoPtYI+TC94O7BuTIp0oM1JdVKZzPpa0Z2TyeeoaNUsUmG2
	ctvJI6uXq0Ed7bq8KYcbvR0LMdC3IxT36WR0Vbc5NH+Co7t7gW9At6BRCy3Woeze
	H6V7IR97XIDtj2e99qBlYv/Xo1hotsz7WBQtyDiMM1HM4skiTVmkH96/e5yfzd7C
	7BkZWHaqyHlASmvmb3igsjoUVIehP87VrPVFWhoJRE8rgD9/wm4btua2JFf52CDx
	tNbLiQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqgajwt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:24:47 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b47b4d296eso41192691cf.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:24:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757665486; x=1758270286;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4SH0XX3SgsxyMepXQCl5Yw/UL2nASzTn8GrajrDWYZo=;
        b=FmTi1wjeuYvfpNkctP2VNcSZcQc/RoN4zrWhHLc+qFBmcwc6q8H7feE8r3CaOOMWUV
         x6qG9nr53VgaBRA36wKIEfS+MdvPDm8pTV+0h9cwwClPu6mbD/erhe6xtMvo32fNoEPw
         oBeCyj/zd9vZfmw4dGUlOok1/Kq7KiYajAn1dZGk+Sup2FLgLgRc0je/dt8yY9pJj6Zk
         O/DFzqybhwhlhjwjWGGpC+DUpc32INR3O1HF0V55G4+YBIDbR5Cq83u9yicBBBR0O9SY
         zLvSUxo4m+nZTym1RUFK4svzdKqa3oiL3/vODYa1G/80nWxE19Jo1tiTCg78jmlQE1KU
         v8tg==
X-Forwarded-Encrypted: i=1; AJvYcCVvWpqoQrHsOIzVduNkDFLsaDeAgk0fdlBlsJXEhNvpPsMbLZPqZFPqqbtt8kYDpNoawUInvGt3rUdY@vger.kernel.org
X-Gm-Message-State: AOJu0YwEwgq/Kko1+DvYq8hNyoF1sbsUNInVIlvAAQ3LeFvgCSVyt8vR
	ALDSnk6KVmAD6uI1FvrqNt3DmGioTbscXn+YfAoskvHjw5eYiCphgcEMzCxHBcSNG+QuaHYr5vF
	tVPq4udaWB9TGOFzK75y53IbpK6CBMiPpYH/pqtgfhm9glXFSM7Punyc/TbwtMvQs
X-Gm-Gg: ASbGncv9dolizJM8zQWsTjsrzVyCO/VSxKsZLw6eYuZAcyux+ylIxfNDFpAwTMgSmJn
	6/fAIKFbYu0eTogbVkGWranvkgUTqzUM7UsjLyyB1Yi8tPSKfqRRo1rQO8lk/KJKVKKviJtXv0p
	m0/CIpy+snTFYE9aEaPY5MIsYPRxdlVyBgDnHIDsnXuogsJD4T+ZnGksjaTblKEZcPXjWjh47cC
	EfTTTjs98aHFFPiay3ACdC3bgfK8F32y19/NVZ+EJf+mJ2w0aC5HzesJvr9pwdB09N9JloV/NzI
	vjvWCqM+3BIgWLyhEkKgCM8kG0Rp4Hq5yvovU7lbp/FmnSvoDJdIwjFCxttbDZX2pb8=
X-Received: by 2002:a05:622a:38e:b0:4b3:741:2e1f with SMTP id d75a77b69052e-4b77cffe1a9mr23797941cf.33.1757665486319;
        Fri, 12 Sep 2025 01:24:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLKAWYVzFXu0VdH8bA6tnAIFRvR1dTjyCMdu8Nq3rWmTeYzlGw2fKQER7HecLgzzIWTjTZCA==
X-Received: by 2002:a05:622a:38e:b0:4b3:741:2e1f with SMTP id d75a77b69052e-4b77cffe1a9mr23797791cf.33.1757665485848;
        Fri, 12 Sep 2025 01:24:45 -0700 (PDT)
Received: from [192.168.68.120] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3e760786c95sm5829984f8f.17.2025.09.12.01.24.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 01:24:45 -0700 (PDT)
Message-ID: <ca8d41c7-fcbd-4c99-a266-67b230ce0e9c@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 09:24:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] soundwire: qcom: add support for v3.1.0
To: Alexey Klimov <alexey.klimov@linaro.org>, vkoul@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-sound@vger.kernel.org
References: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
 <DCPK67SQ5DEI.2AFDVRKZSEWTS@linaro.org>
 <b7a637d1-8868-40f3-8f82-8f5ab0684d52@oss.qualcomm.com>
 <DCQLFI5WVIPR.192CD0VMBLD8Q@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <DCQLFI5WVIPR.192CD0VMBLD8Q@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: iiSiMQZgu25jcbj8oRr2hf8NMbB4zRzO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfXwl2/NoCaJ1bU
 5SAJtRXCmCe/HE9Jwj8viCeU5gxCo0eVCUU1jKhWZmdBrBJR7HGpELFFjMsDnOUHZ+yhfzD5Nsh
 3Ih2KoyB7mk9NNVUKYOgxj+fLZF+ruSJcpNAUhJPwGTInJXe8eK23g43OC/O5y+sckSOZW+BtYB
 3A1b3lmKMcPozrPuvIIDQFSIS79Bu+ystjhsSlntfIp3IPw5ZMTPyDgMhGO2cQ3gfeuNS6fAI3g
 pUqHKotd1uj924y3RYPSCKw39wCEDBxdrAhJ3ni0shr0bX3YqwAYgWHzaD/73RlGero+WLJAKrc
 rIf1fM/JTmHI04EdwXkd4KgAThMxFgRCKnf1zRG2Sqpj9KjT/wgNtCApRertwJi8kmyqoAn6Uh4
 t1Xy5K7u
X-Proofpoint-GUID: iiSiMQZgu25jcbj8oRr2hf8NMbB4zRzO
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c3d8cf cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=OanP7MAFE5n8c4_CNIMA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

On 9/12/25 7:04 AM, Alexey Klimov wrote:
> On Thu Sep 11, 2025 at 7:16 AM BST, Srinivas Kandagatla wrote:
>> Thanks Alexey,
>>
>> On 9/11/25 1:52 AM, Alexey Klimov wrote:
>>> On Thu Sep 4, 2025 at 11:56 AM BST, Srinivas Kandagatla wrote:
>>>> This patch series adds support for Qualcomm Soundwire Controller
>>>> version v3.1.0.
>>>> As part for adding this support, a new macro of_property_read_u8_index()
>>>> is added so that we can remove the qcom,din-ports and qcom,dout-ports.
>>>> As v3.1.0 supports more than 17 soundwire ports. Also due to change in
>>>> the register offsets, new entries are added to the variant data.
>>>>
>>>> Tested this patchset on X14s and Glymur reference platform.
>>>
>>> Well, I don't have any Glymur devices and no idea what is
>>> x14s (I guess some laptop), but I picked the series locally to test
>>> on sm8550, it seems there are some generic changes, and
>>> qcom-soundwire probe failed:
>>>
>>>  remoteproc remoteproc1: powering up adsp
>>>  remoteproc remoteproc1: Booting fw image qcom/sm8550/adsp.mbn, size 8364
>>>  remoteproc remoteproc1: remote processor adsp is now up
>>>  qcom,fastrpc 6800000.remoteproc:glink-edge.fastrpcglink-apps-dsp.-1.-1: no reserved DMA memory for FASTRPC
>>>  PDR: Indication received from msm/adsp/audio_pd, state: 0x1fffffff, trans-id: 1
>>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@3: Adding to iommu group 12
>>>  qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:1
>>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@4: Adding to iommu group 13
>>>  qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:2
>>>  PDR: Indication received from msm/adsp/charger_pd, state: 0x1fffffff, trans-id: 1
>>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@5: Adding to iommu group 14
>>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@6: Adding to iommu group 15
>>>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@7: Adding to iommu group 16
>>>  qcom-apm gprsvc:service:2:1: CMD timeout for [1001021] opcode
>>>  platform 6800000.remoteproc:glink-edge:gpr:service@1:dais: Adding to iommu group 17
>>>  va_macro 6d44000.codec: qcom,dmic-sample-rate dt entry missing
>>>  qcom-soundwire 6d30000.soundwire: probe with driver qcom-soundwire failed with error -75
>>>  sched: DL replenish lagged too much
>>>  platform sound: deferred probe pending: snd-sc8280xp: WCD Playback: codec dai not found
>>>
>>> Are there any dependencies I am missing?
>>
>> Can you pl try this change an see if it helps,
>>
>> ---------------------->cut<----------------------------------
>> diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
>> index a7b6d9ecc3ba..622cc6c31264 100644
>> --- a/drivers/soundwire/qcom.c
>> +++ b/drivers/soundwire/qcom.c
>> @@ -1426,6 +1426,26 @@ static int qcom_swrm_get_port_config(struct
>> qcom_swrm_ctrl *ctrl)
>>         ctrl->num_dout_ports =
>> FIELD_GET(SWRM_COMP_PARAMS_DOUT_PORTS_MASK, val);
>>         ctrl->num_din_ports = FIELD_GET(SWRM_COMP_PARAMS_DIN_PORTS_MASK,
>> val);
>>
>> +       ret = of_property_read_u32(np, "qcom,din-ports", &val);
>> +       if (!ret) { /* only if present */
>> +               if (val != ctrl->num_din_ports) {
>> +                       dev_err(ctrl->dev, "din-ports (%d) miss match
>> with controller (%d)",
>> +                               val, ctrl->num_din_ports);
>> +               }
>> +
>> +               ctrl->num_din_ports = val;
>> +       }
>> +
>> +       ret = of_property_read_u32(np, "qcom,dout-ports", &val);
>> +       if (!ret) { /* only if present */
>> +               if (val != ctrl->num_dout_ports) {
>> +                       dev_err(ctrl->dev, "dout-ports (%d) miss match
>> with controller (%d)",
>> +                               val, ctrl->num_dout_ports);
>> +               }
>> +
>> +               ctrl->num_dout_ports = val;
>> +       }
>> +
>>         ctrl->nports = ctrl->num_dout_ports + ctrl->num_din_ports;
>>
>>         ctrl->pconfig = devm_kcalloc(ctrl->dev, ctrl->nports + 1,
>>
>>
>> ---------------------->cut<----------------------------------
> 
> Thanks. Yep, with that change it works/inits:
> 
>  remoteproc remoteproc1: powering up adsp
>  remoteproc remoteproc1: Booting fw image qcom/sm8550/adsp.mbn, size 8364
>  remoteproc remoteproc1: remote processor adsp is now up
>  qcom,fastrpc 6800000.remoteproc:glink-edge.fastrpcglink-apps-dsp.-1.-1: no reserved DMA memory for FASTRPC
>  PDR: Indication received from msm/adsp/audio_pd, state: 0x1fffffff, trans-id: 1
>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@3: Adding to iommu group 12
>  qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:1
>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@4: Adding to iommu group 13
>  qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:2
>  PDR: Indication received from msm/adsp/charger_pd, state: 0x1fffffff, trans-id: 1
>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@5: Adding to iommu group 14
>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@6: Adding to iommu group 15
>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@7: Adding to iommu group 16
>  qcom-apm gprsvc:service:2:1: CMD timeout for [1001021] opcode
>  platform 6800000.remoteproc:glink-edge:gpr:service@1:dais: Adding to iommu group 17
>  va_macro 6d44000.codec: qcom,dmic-sample-rate dt entry missing
>  qcom-soundwire 6d30000.soundwire: dout-ports (0) miss match with controller (1)

>  wcd938x_codec audio-codec: bound sdw:2:0:0217:010d:00:4 (ops wcd938x_sdw_component_ops [snd_soc_wcd938x_sdw])
>  wcd938x_codec audio-codec: bound sdw:3:0:0217:010d:00:3 (ops wcd938x_sdw_component_ops [snd_soc_wcd938x_sdw])
>  snd-sc8280xp sound: ASoC: Parent card not yet available, widget card binding deferred
>  va_macro 6d44000.codec: supply vdd-micb not found, using dummy regulator
>  ALSA: Control name 'stream0.vol_ctrl0 MultiMedia1 Playback Volume' truncated to 'stream0.vol_ctrl0 MultiMedia1 Playback Volu'
>  ALSA: Control name 'stream1.vol_ctrl1 MultiMedia2 Playback Volume' truncated to 'stream1.vol_ctrl1 MultiMedia2 Playback Volu'
>  ALSA: Control name 'stream4.vol_ctrl4 MultiMedia5 Playback Volume' truncated to 'stream4.vol_ctrl4 MultiMedia5 Playback Volu'
>  input: SM8550-QRD Headset Jack as /devices/platform/sound/sound/card0/input4
> 
> Playback works. Note the ports mismatch message ^^^
Thanks for testing, I will fold in this change in this series.

This is very much the expected behavior.


--srini
> 
> Thanks,
> Alexey
> 
> 


