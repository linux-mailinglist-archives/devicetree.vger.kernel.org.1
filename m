Return-Path: <devicetree+bounces-178199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D3FABAFAA
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 12:59:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A10221881A95
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 10:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9045218E83;
	Sun, 18 May 2025 10:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q8BEu6iV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C359217F26
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 10:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747565940; cv=none; b=S7HhGqkzSf17Tcmbo/w8fnVYmQTkmPpANqeSwB9QAMpqp0LoQPySqrLmEWWJFtiSRtfAQfgS9psy8qpyzrOHl83oDKb7y7B5GKqkpy7iW87UGPpHSmJnfXKy2ujYhHbtTEE8BtA5XiDKs08V4+rIpTA9VvesWe+4UHc+bmg9GLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747565940; c=relaxed/simple;
	bh=FykTRlIxjDzbglnpssmAFHjJQauPRAVN3qrxkXgnlZs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jNAIY0YxVKtVjBVd8W9O6ehy9e/D47Qvs7Vf9Z+d/NsvyZwqbIMkSvpMKiM4a3N9QG6rQDP+ffVO+3huIcGjl6LOZwxkx1Vz7WxXZK252E4JHMEBvqa44YLwDocMjWutDop606mc0YLtxdRDahQc9VNd/NikjT2OIqaQWFdr8uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q8BEu6iV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54I5biTK028721
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 10:58:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sIwfs8CMcFkznEmjw0gnSJXf
	PCqhbqfunZv4/U6dRig=; b=Q8BEu6iVn2cGTupwDcG6brPB9thcfs80X4yy55ga
	XvbZYy9LpBdZdqQ6rosTBA/EGH2VVaJeAOQgWUxhBiKzV519AFY/dmR+b/dcHh4O
	eyRrGoRMCIJ/eZq7gLvZMyfedrmRkf7aafCmq3wVD3Xw3FoPIeRLrx3oAk/wETee
	dg8f9qNT39SB33Kt4X6l9qOYparNpTOW4kNZWM3yyaafOTxITkTJ1wCjaX1PFUvh
	G5BdV1C4LxmPun4ZluIPsGsxmdJ0AGfiJEFgsVIiizMTSDu8tacysqGcqV+RDO89
	3r/QNkpYa0ES3tOB/Lr14wGIZh1wjZADHhObj/Hl1nPRsQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjm4svp8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 10:58:58 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f6f2c41eddso79237836d6.2
        for <devicetree@vger.kernel.org>; Sun, 18 May 2025 03:58:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747565937; x=1748170737;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sIwfs8CMcFkznEmjw0gnSJXfPCqhbqfunZv4/U6dRig=;
        b=CvY8b80jFnF6y2yUyd3tKF5m3yzvkvRuCdzDd8dlXUD22S4mDu0oQOaMLOVwlY1KIY
         oykyXfu5tWk1D+slshlo4qJNu8c70wMPyVPLvEFuin15oxIgN7wN6VenYA7SoC2KveXU
         lISaodUvu0+WrKguUQ4XMv8MCZ15yg8VBRhUPl4pich5zdNId8BFIZ7wMfMyrkzVsu/D
         PqXeWB546yKe7Nod9t24xLp6Q7hvFAgo/7iAbUUsb68fvM2uEfCSuX7mzz6H4AyaIjbr
         32LTgJLUSNdbbY73jVvpu/XhkCJpnNlRIOYNbpjk60PjhmAaxXsGfmT7v5lbmu2oHgf/
         qWIw==
X-Forwarded-Encrypted: i=1; AJvYcCXnuB3lq46gclanRAn+4WB+Eu0IXtEVRjHuOsCqfHPYAHyirJy1pfhSAgSKIJ79US46Y6DXHNNMTWqP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8dYcNc5mOYH0AoYnP+LvbW+JTMo4AlkFi0INpLfmH1LnuQqlr
	i9P8gnh/paeiig4QVgc4hhxAF2ddf9GAIwYjFXDypkmnaOH69adIpGzukkMT5ee9KG76P4fLKnH
	6s6uIcK46ebBMReOdcBiT4YsehDZ6b9d9Mf5apjm3V5L1Eg4QgrVJ8VwRfRSfT0JS
X-Gm-Gg: ASbGnct7lCCRvOhdyhoMWQa/+xecGHYC6rSZDf5tDr+02d8gQSXcH0JlVIRVHvW68Ap
	G45844J27SyeYJTt5vx3lYg+qQpP6c6F84ak6c61ZfLPMZmiZVrKIwuExtYoqS4t7+A+eXeTSGY
	qIXhu/aGW/lFl9FlcPXZes3zxOfz3MZO8FVGhQ+3fvUvzR1fGwg4VfU8IgGQDZ4hOOi5j5N0+VK
	aOJZPF3Tw9EUgfhvdO3i2M1ZOumBU+aj0CRcyNkuYTmIXK2a8B7if0uZbQnUMQEXPkv+zzl6H/Z
	S+N+JFcroxxIcuGtTWFCkoL8sXwRU15wRoYiDQNhFnA1d+dPw/HetP5t+8G2klDTpUSOsoGenVg
	=
X-Received: by 2002:a05:6214:c68:b0:6e8:f8a8:83f2 with SMTP id 6a1803df08f44-6f8b0810501mr139946906d6.6.1747565937141;
        Sun, 18 May 2025 03:58:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTF8erBXQAPJwJvLXtjQ40MAlLov7TqbJChJB3wusJADd96rIcUm1Jn0qAxKbMMsnIoK4OVA==
X-Received: by 2002:a05:6214:c68:b0:6e8:f8a8:83f2 with SMTP id 6a1803df08f44-6f8b0810501mr139946686d6.6.1747565936769;
        Sun, 18 May 2025 03:58:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e702cff9sm1407220e87.180.2025.05.18.03.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 03:58:55 -0700 (PDT)
Date: Sun, 18 May 2025 13:58:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sc8280xp-crd: Enable SLPI
Message-ID: <ovohvtb46f56vuwbbeiet7nzoi25nh6c7foz43m3dh4vvcx5ie@zyoxf526jzzo>
References: <20250517-topic-8280_slpi-v2-0-1f96f86ac3ae@oss.qualcomm.com>
 <20250517-topic-8280_slpi-v2-5-1f96f86ac3ae@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250517-topic-8280_slpi-v2-5-1f96f86ac3ae@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dIimmPZb c=1 sm=1 tr=0 ts=6829bd72 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=Da-7SC1wzDm6D55RPVwA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: 6lHhSR1Lh7TNEY47-20IxhgPK8x_mNb4
X-Proofpoint-GUID: 6lHhSR1Lh7TNEY47-20IxhgPK8x_mNb4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE4MDEwNCBTYWx0ZWRfX7yFahEh/q/xQ
 MGeAlgvr/+6qGW2Cjco4vhgpqF1w6gaoSmeRRLULLv1HVAbbQAadDGkDLoRNa7O9UdA3ja8SGE/
 q6w6GKj5J5moW9LLDI367heirPEUAxp/k2qhLprbKxf0u95IAuGsUzaWLMr5+jAICUAVQK4e0Y1
 kttQJuOp6FzHySTq1fc9m0vF2K75Jn7kpMKYJQjYIqd9LpANUUbmcOMTEX0j4vrVs8OD1Czi2hv
 6r4cDoclHuylbh3ExuARO5golAJeGNSm37DsxBygzW9nonGkX3wNfi/9sJow8zfQdehjQ/4Am3a
 pwmu0EVkMFNvHymPpsdSVxKfldra6bpySkq9ykHcdymxz1l07Lp5FCXiY4g3JZq1YAgzdExodVR
 NWwTEG8VQ5DHbnzJRVZAyuGcyr5/AoU7Cwg9WROAc5vHRr5rtlG6f3PCv3aX5pocwqOoDNdg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-18_05,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=639 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505180104

On Sat, May 17, 2025 at 07:27:54PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Enable the SLPI remoteproc and declare the firmware path.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

