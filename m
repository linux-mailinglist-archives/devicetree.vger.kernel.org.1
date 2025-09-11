Return-Path: <devicetree+bounces-215752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C27AB5289B
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 08:17:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4828A05527
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 06:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2225A257841;
	Thu, 11 Sep 2025 06:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cbUarncB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550363F9C5
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757571421; cv=none; b=qTHM7+64mSuKNSIakBzn1763Am/UtjwOEiB3iptbG0W3vnySsFdaqYMj+Vqq7ms5pTExlfuy8HpnTTyotWmPkoF6fRgor9c9B5QNHOh6X/zZWsHqjHkFsPox7si+hQIKPmjlfAJgLiUylPIdnGBToKxUg5i8vS/tiJFTUkw9NMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757571421; c=relaxed/simple;
	bh=tp9gIEhkm3nPQ5lAX6WNJ7qKAMdj7t76MyO8kgCsjIk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jH0uaFKukZKDZ9J+4w85vr+Xy0tK6nflPqMV80k/+iqURxhGM8TyybDdOGhB/ngV0YBNd/lE/Xm+TZf/8DESu1j/tHF9Y6Wbq4q8IQca+uxtbuiH3rfI+TFy/eNCwNBhuZTNyURUT5+HFWOeImzSsmN5WHdVo0dHe4T4FXofZ2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cbUarncB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B2IYtA026069
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:16:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xUKV4tzeMZk7PUXMYsNdlnlxveYGyatPAuyxc4rrGtk=; b=cbUarncBVC5HY7uG
	b/p73x8K0vfbV3NpesiEFwEmVMGNc0LwifZ0Jfp/g5n3vq9N/qhlbKElqJtJtmWU
	oCQoRb6RhbZ3S1E4J+ITBx6uUSR/XWwmI/Xrj7fmKXFfCwP2oghmhxsj4JcZE2Tj
	3jwgc6q1gN8ob+QEWJeQmGxdFPBgGejCj/09cNYF0xSTaWPF5HXo2Lg4i674n3Z1
	l8EG7mNl1wtloNpoWbZg4u5mZmlUkIZ1eNZ7hAO3G1v9Ja2swHjEfla/tQjwoX6t
	YmTn7dKqTqDvgF+jX6l8cUK/5VukpUHmaPEkSNX3wcM127/Ao2sboTOPCJPWmC/f
	kNS9oA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490cj0xe15-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:16:58 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5e9b60ce6so11399161cf.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 23:16:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757571417; x=1758176217;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xUKV4tzeMZk7PUXMYsNdlnlxveYGyatPAuyxc4rrGtk=;
        b=Wwa8H9Vd4wrY2JglXwcsl/Uk78xTzRkbjUosU8Ai9qO+5+21Tlb9WQsPjQ0+ToXtHt
         PuY0mwzLfuvb2tKooC8TtA5x5yWPZcwdf5k5VB+Oop3DVYnBK9gyxNeTAdlk5zNLnXI2
         PMv5USrrIio20+JoBwAUd4c0VpxAz9t/M1qAav8wddsLdXUwsTdp7bByyBsmwk0vEvz5
         6EVE+1uliMPiL06zCUnNJHgPWUudNdHf/b+/PxYkNUyB+h5kX8e0ep02wNMvSx5gPGXb
         uv989QdS2Lp/yzq1HNzxFBFlec+iT+skx1ZPA0AirUKH6Mjz8Q3+SONyUEN76WXBfele
         ZPOw==
X-Forwarded-Encrypted: i=1; AJvYcCXMjSLxfIKB7Dd1EVm1OY/GQNfHjHVb3i1sAlFvXGU1Gd5oC8R7WYZNRSzdH2SPfvylnajzllJLk2dn@vger.kernel.org
X-Gm-Message-State: AOJu0YzdC7AqN2IBnTOhm2j9gORYMJzsB+eLglBDOmzuilmVoGzr/mto
	3BJMqvp0hJ7zRpjgD8FfA8kyrbVtCO1GsaWgW6ZUbB8txOS+l+Q/fPjQyeSsUWHpQ+jGtp5SOgw
	AOcqqCzudCbOoUCF8uHXHexrwUqh8knSCPOnGxzKUlOC7+3I4xvhwYHT5Yg/2KM+7
X-Gm-Gg: ASbGncsp6vYBrOI522/9jjAxBGEk+MLxlaKqUJmWUry5h4hBuDLOw3r6yY+32/CZEAQ
	bWVvi1QoDAH99875mDmQUJVuom9AKWBG15JH1va/sSJso62s213krVyWgNxW+dtvVwDTtZMuarr
	51j5hGmJ2x0zBmaIJVDE9RMANPw1A+b4N0jGoMv6uBJTZblmfUFCq6XFSsYr+dYd/iC7PdCzXIh
	5VY6pIlr+D7nIr3ixGJYAtdArwA3lqbgVgEIYqcgYJMU1aHSQ9C7eM4IqaWRAOmmsLE9XcZnZFY
	YJsBVr5ZnNIvhLGCOIA97nyvt1GC7azHVWJjwTDue5tICJZ9B1okohFxaWW0f5kOn7E=
X-Received: by 2002:a05:6214:485:b0:712:8b65:d37a with SMTP id 6a1803df08f44-7393d42bbcbmr202002716d6.43.1757571417157;
        Wed, 10 Sep 2025 23:16:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHSNw8Su7OR12obsrdfm5Y2WPxrkPUqoNEP+Q/mONDJZD/GLYsP/1z0hTN+IDLz+fH4C089w==
X-Received: by 2002:a05:6214:485:b0:712:8b65:d37a with SMTP id 6a1803df08f44-7393d42bbcbmr202002486d6.43.1757571416658;
        Wed, 10 Sep 2025 23:16:56 -0700 (PDT)
Received: from [192.168.68.120] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45e037b922csm10587475e9.15.2025.09.10.23.16.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 23:16:56 -0700 (PDT)
Message-ID: <b7a637d1-8868-40f3-8f82-8f5ab0684d52@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 07:16:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] soundwire: qcom: add support for v3.1.0
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        vkoul@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-sound@vger.kernel.org
References: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
 <DCPK67SQ5DEI.2AFDVRKZSEWTS@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <DCPK67SQ5DEI.2AFDVRKZSEWTS@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: f8SDPbVU2pmOaNja66nwpc3MNGnBKTPO
X-Proofpoint-GUID: f8SDPbVU2pmOaNja66nwpc3MNGnBKTPO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyNCBTYWx0ZWRfXxlooU/veQ1ql
 jAzBUrlpDBnZwuXm2wWPBk5t18k5C3lluMgDvN0T3NrpTEi+4fQddeTppwsQeY0PRffIOwSSo5A
 2IKlAclP51mVlIw5TEtfg6xjQAPwasY/pZTqnAj5DBcdO+najH8Fu+ZmsVzhVrKvI0dcPnG2Mk4
 b7SJ9MdIfmBlmqat0duyfkvLuXdWPhJCYtWRPU5ZcznyhblEG8chMh+VX9zAehb+KLVvLSmRyAS
 OU/MsEnLxppXgfDlaeSnzMUhqeiHuUCImgJML5TtN4DezVkADEsORH/vdm1ymP86WwzYsg8b4YQ
 /wnZQdpQIhPOb6OA2PvUuDbS1q9TNr4B6DgOE/inA636iEjgoTeatUCxIDyRqiFvn7A0yWHMx4Q
 7S+I0uNu
X-Authority-Analysis: v=2.4 cv=QeFmvtbv c=1 sm=1 tr=0 ts=68c2695a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=ctXafwwC4ABjd9pVO5wA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060024

Thanks Alexey,

On 9/11/25 1:52 AM, Alexey Klimov wrote:
> On Thu Sep 4, 2025 at 11:56 AM BST, Srinivas Kandagatla wrote:
>> This patch series adds support for Qualcomm Soundwire Controller
>> version v3.1.0.
>> As part for adding this support, a new macro of_property_read_u8_index()
>> is added so that we can remove the qcom,din-ports and qcom,dout-ports.
>> As v3.1.0 supports more than 17 soundwire ports. Also due to change in
>> the register offsets, new entries are added to the variant data.
>>
>> Tested this patchset on X14s and Glymur reference platform.
> 
> Well, I don't have any Glymur devices and no idea what is
> x14s (I guess some laptop), but I picked the series locally to test
> on sm8550, it seems there are some generic changes, and
> qcom-soundwire probe failed:
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
>  qcom-soundwire 6d30000.soundwire: probe with driver qcom-soundwire failed with error -75
>  sched: DL replenish lagged too much
>  platform sound: deferred probe pending: snd-sc8280xp: WCD Playback: codec dai not found
> 
> Are there any dependencies I am missing?

Can you pl try this change an see if it helps,

---------------------->cut<----------------------------------
diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index a7b6d9ecc3ba..622cc6c31264 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -1426,6 +1426,26 @@ static int qcom_swrm_get_port_config(struct
qcom_swrm_ctrl *ctrl)
        ctrl->num_dout_ports =
FIELD_GET(SWRM_COMP_PARAMS_DOUT_PORTS_MASK, val);
        ctrl->num_din_ports = FIELD_GET(SWRM_COMP_PARAMS_DIN_PORTS_MASK,
val);

+       ret = of_property_read_u32(np, "qcom,din-ports", &val);
+       if (!ret) { /* only if present */
+               if (val != ctrl->num_din_ports) {
+                       dev_err(ctrl->dev, "din-ports (%d) miss match
with controller (%d)",
+                               val, ctrl->num_din_ports);
+               }
+
+               ctrl->num_din_ports = val;
+       }
+
+       ret = of_property_read_u32(np, "qcom,dout-ports", &val);
+       if (!ret) { /* only if present */
+               if (val != ctrl->num_dout_ports) {
+                       dev_err(ctrl->dev, "dout-ports (%d) miss match
with controller (%d)",
+                               val, ctrl->num_dout_ports);
+               }
+
+               ctrl->num_dout_ports = val;
+       }
+
        ctrl->nports = ctrl->num_dout_ports + ctrl->num_din_ports;

        ctrl->pconfig = devm_kcalloc(ctrl->dev, ctrl->nports + 1,


---------------------->cut<----------------------------------

--srini
> 
> When I reverted the series the audio started to work again.
> 
> Best regards,
> Alexey


