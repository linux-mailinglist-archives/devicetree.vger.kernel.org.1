Return-Path: <devicetree+bounces-252325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 04590CFD7DA
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:51:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 50F30300215C
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45AEF313535;
	Wed,  7 Jan 2026 11:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SlhpDtCa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PiZfBA3q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3366B2F7444
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 11:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767786711; cv=none; b=CUGc2p7HYNEqhcftfYdITEHuebPP+YTZIdH1ol5+4gbiofp2qvm/0csyfQgyGwXxGYwj3zBdhbN9JAPwV7z93aMtIA39xOI423zhbVagFiwVxabwC0nCbWaCNgoUYuUlNWo/AuFhoRl1n4lGBMuzB0p+M7tsKOH0vb2D7GxXjKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767786711; c=relaxed/simple;
	bh=omrmxgZfe5lFu9nOJSJgRLGEBohCtAf5W0pVtFMiTt0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jHCtK9nI/GiFvC0HtSsrDsZe1RNmIuCfXd4qheeYwuhZK9LSt9Si4dA1Nl4MVCfVwLRXb+4gA28UElpSVA2kCPOq2UnUv8hbFVBMfegEndElJzrzSPuzuBzLbCI63rjfD+EljTiKmheJM7ujrKqkkJyoVWbgMbfMOeisoK3gDHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SlhpDtCa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PiZfBA3q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6078e6oq2578359
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 11:51:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ggDNMN0dkYQ6rb2tRP/VG8PVN0A8oDWibi+yTaND32c=; b=SlhpDtCa/pY6GAsJ
	QzFcpJMdlhHPHa07AX49IklB22FTC6vVsPkVaP8WrUHyPEbDvXoBJRTe2dgue+PS
	CrTOHUZm5E7hpIWnlrLNtVExYcwDeo0l6zgG9NDCyu+6dFV3EzGq1pPITph3L5ea
	0IVcMWQs37+d0Q2Zma7smJZ1rMRzRrGuI9FEtiypJcs9NUcqkxDB8QmRfRXgzBcY
	9T8sqow6ssLtkOOesihxqDRJd+mKx0h4ftlIhlKXolgexiaQt/Hflr7lUvgzQhLZ
	0rjHqPcPkJoMxPzfP9C2kK3RFIX4hgCiiV4N/QAJvWA5cBVeOwfLhjZFWAsxdXFt
	Kfkvtg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhm658keg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 11:51:48 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1e17aa706so7986911cf.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 03:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767786707; x=1768391507; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ggDNMN0dkYQ6rb2tRP/VG8PVN0A8oDWibi+yTaND32c=;
        b=PiZfBA3qNPg9RhD2vF7ghYRJaWxF/nG02FhJMCoF5/aqK/lufALI47ktq0YcgzbJ/d
         cAIt+k8xKJX59AI+RtodtZqvj+z3rpAHn5/w08n88Uw0CbNFSG0Bk7DkWi/29A/2sDLV
         2g1xyRafEknQFkbg+16Da2tEdlx1JLCLeZnxQwt0nxbCCPZ/9UOE+rmQfOS5tAQnlaHp
         AE0j4KhM4cybOKMFbGDUwkIMQGnt+WFsdX6CTGzNGGAcDRSf3fTtQ9FM8xP4I83uoCHe
         nNnWIT56tKT57QbwGPTTdkE5QfvbNyIbqQrKJnwo+HCFt8tVeEhCW5oeByQP2Mdh52/z
         6FKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767786707; x=1768391507;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ggDNMN0dkYQ6rb2tRP/VG8PVN0A8oDWibi+yTaND32c=;
        b=ieesRRIslcJ+PMhBuZ83uhtPNK7PUs8MpQuuxbhK6BNfBbkQ/hWP1g/QKP7bVOTYkH
         wfgj238JN7S9WWSHrQQGUe69ZSUPygqpuknvWFXuK9F3w/cLd4E/AAOZ3OrVYxFyoW5L
         NDBGjdg1mjHrg6M2vGv3FGety6QSsTiV8eGoJblq1xvJ87/HsRP4f/rvkRSL5b5wDRky
         BURC9iA41lKDhCysv3XpRk2isP8s5BCf2mu5Qo2uQ+pJPZK3YrhNB40hBT4MlCOlZ+q4
         MZWSGawvTNIOM0imgZj3QNJqyN5uUQhlj3IOA8kvvunvz50SDD7pJj2Wn6pIdx7jkeH/
         LfHg==
X-Forwarded-Encrypted: i=1; AJvYcCWRYdASEMCEGb025W35PCEjo7j7k7F7pDCB6QxglapunLq5bEuN5z/QO/NqjW07olC4y03G+TUyGcae@vger.kernel.org
X-Gm-Message-State: AOJu0YzCHOJbN9ewC4CeT/RdvPIzCF1w+7KJ6PtA4EoWdQhTgMDZ/vBP
	eMUd7CNIk1nGLx1H6kcWj6FcyGjud4Cyq5szTjOqWQzi6dJRS9X54Fdi98XkMEcnDEmRiUNnKnh
	NZy1qDOqbxv9jNTiyAYyBJ0/6mrEY7hrAOR3ax8GYiBrYN4s+6vsmRIK4BF73Tx6X
X-Gm-Gg: AY/fxX5dUKBRLhJF7r802ErPHEH1nPAd3OEILkYsR7SZK48CMyYtnDRwqMi2B7YZg6j
	SJ8hlyNdcUDMEc36J/Mw9sx0cuQGcddHFQMWd2MKshc+sIqTeDwPT0GL/VeioB6V04DtBToKovh
	013PvMueCx3j0603G5kyu9siP57pSDSx9wg5q8PKwuhLWFKo269ow2wzc4ktwB0mNAZ6+RL+ENk
	GvZrN6oUb9oJUChPWw/WB4fXKPRApz3epl1OJzvfmkwc2bll5o77Vr3OHS38X3Qnf9v5yGeqd+n
	ylwCSeCLOMswY4i0WOtmLRMuknq1Rtk+lmyWCTGurvAKWHEPhzq7Yf9dD5ezhiAT4hAp/bASIci
	vGLBrY6C291wN47hySNQDciDIAtmN7yY9JXEtRptllRUYw57n8c/+MiRfGLg5IGceBdc=
X-Received: by 2002:a05:622a:408:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ffb487595amr22415521cf.4.1767786707643;
        Wed, 07 Jan 2026 03:51:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4QHfOzO5e2H8yXxP1/FA25p8oojTsuXKqYhEkzq4egd/vbvBMFKsstwG87mx8vOHkZVuqSQ==
X-Received: by 2002:a05:622a:408:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ffb487595amr22415401cf.4.1767786707244;
        Wed, 07 Jan 2026 03:51:47 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4d3113sm484555866b.43.2026.01.07.03.51.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 03:51:46 -0800 (PST)
Message-ID: <61f3c476-6304-477a-970d-9d77f4f2b32c@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 12:51:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: talos: Add camera MCLK pinctrl
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
 <20260106-sm6150_evk-v2-3-bb112cb83d74@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260106-sm6150_evk-v2-3-bb112cb83d74@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XpL3+FF9 c=1 sm=1 tr=0 ts=695e48d4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OD7J8LUZfBhgY_nOwAcA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: EKET-Bk-h8OyWj39mdAmj35dW_E0Hz7K
X-Proofpoint-GUID: EKET-Bk-h8OyWj39mdAmj35dW_E0Hz7K
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5MyBTYWx0ZWRfX5M4RTTQlMz5Y
 hUKNG6F1VevQlfz1Q818H3M23psJSgjc5k+/wE/kdT0+QTwFLIZ9HKKxvtJOxL8H83FAyJ/QCCk
 g2Z5IhKNMJ1pSdbuWESoVOWb9xRoIhMLUDROsZ94zOo7nT3bv0keLcnm0MXKcaFnKBQNm2QZZDp
 wRFRsHByz8vncW+PARZsL9yPMmC1YdTUWPI5a9db3oJEW7/8cH9LZZ5LjkYCMcohZBRng4qh8hF
 rTIXY2XPb9p8Ke6HNr7P8NS2BZK3TCjvJW02JV0kDzy29uaJdr2K1AziEuWX5Wqv+aBO8eBv4dv
 Yle+q1JStl0RhfMRUzuuY9nYhpIoArbAFfayFNKluEae2tGFT0jPvdGO5LEtOYZAFklsNLoRMca
 yp9sckDJGTmGSDhNI3osBtOVGgnwjRftteB3+CcLVP9bU29tsrijq6YDvh1W1QMJtvO4eoWXRde
 ZjXTug5B+N5Wph3KE2A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 adultscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070093

On 1/6/26 10:39 AM, Wenmeng Liu wrote:
> Define pinctrl definitions to enable camera master clocks on Talos.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


