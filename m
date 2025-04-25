Return-Path: <devicetree+bounces-170792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAECA9C4C9
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 12:10:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EA021BA5FE7
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D59223A995;
	Fri, 25 Apr 2025 10:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aHCveC6t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F1D23236D
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745575803; cv=none; b=l5vSD+PUY2LPiL5spZ4EzTlQHYejriutnd2qNnFG4vSOCORDNxty/fw+1iNEulpO44TV6zD0Qj9l2qA5hNYXYqMPINUZDsutAvFqLl/+HO+9cB1zbmJqUf0vRVdfoNGp8u+Veswdpj93J71z7xxz4ruZOV2Cqd7vaw1/bpoS+PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745575803; c=relaxed/simple;
	bh=uUOdHxP9f3UpVWyzRUcJfI4yiFWoE1nmlIi1dsKkdwY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FuEMrg6/e9z6F6dphdg1hMzO0yRZ14YCvbYtkKNxfRiBuZrvsVljFs7dZMk4dNC/ccz9su5L0/nvs+nojN08mGTV180rTzMeT7zZrJqlAtzmpSpOZrz6IYcfE9RJcE8qRPQi8KfT1RfcYTbJNTwhYC2D7YGBA2Uu/oXlOiAHM6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aHCveC6t; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8T8eE015508
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:10:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fcR4USsPcIz2SiiDINJ9gwMKUZS84QFhsK3lu2vuxlI=; b=aHCveC6topOtbt/G
	YBAQf5YiMkBmQyKOPASC1HT/Av0IGvmWSGX+WtzR28AKa9JffPh2xfE2bgznn6Iy
	wx5UtTTYpEQdNIKGOgsBRazC47Ch/3Rm+xWgYxuCPF4nJqJjzVWD4eW4/eX0qjcD
	jhhPYLYCQVucAo4Qj/sC7vEfgJiRYTbybafgFDLtF9bak/qWpTMfFPN3YyU56K0N
	2rM4zqZffKm2YcQBocb9dw6Re03sxUAmERCJk+UyJOejzfUfmT38qw3UIFXZQkL7
	TLJzwhksHA1j4sECE0QZDLeyxrpAQYsDd6EC93MjQtM/bIqivQohfaO0qIs+ZoSG
	QI/2Jg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3ghnb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:10:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-476786e50d9so3487101cf.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 03:10:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745575799; x=1746180599;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fcR4USsPcIz2SiiDINJ9gwMKUZS84QFhsK3lu2vuxlI=;
        b=IpDprLUseE8PN2+kIc8GRBUu5y/lLNK+M/38JMsOPfpY+kuEE3n73kdDITDrEU8HKJ
         FScRDA0SU85i0SG0kJLcY+FBrMEkazA1wUjHyMHG43FXaLbeU87WmsNy/X03sxOhLx+B
         +ci3DVotazrXvYK1kvCZdd9ct3lDpM0i6+Da5oCiGG1RAgjGC67RCtdGh7PHj4TX6Qs6
         5+nOttb4bYjJkGg8Ya01Blwkmm7w1TlFmeKDp/Oa00Rn4M5YFVdakUKWSrzWC+yMZolO
         +vNaaP2LnX1XFxD0M8BOXCftZG8XsW6qjxfSdMkGBZH4ch4gCb8ioPvrXhHrNaDSERao
         EXvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLMptY5foQfCyQ01xlO8gB3duqYIHUvo5DmBJtA622+LLGCotxM3PPWPy4IwAK7Y/LHQrDZPyNFYT1@vger.kernel.org
X-Gm-Message-State: AOJu0YwNy8VgVXE8gjSA4hI+om9Jv4otIVqTHVdxs2pmJAY45QT9KMKC
	+mKXqObspM9yUg2PFnRUzR7z/Bfai9SONitE+k/WZETL1dY7trvKp7GRzKRDrdslFnp55fPn5vl
	Kw5nfhCg1csNK6jEmlKef5SZRiq+ZmO2dY45pRA7FvDec6KGWjejvuxydiuIN
X-Gm-Gg: ASbGnctwvW7ESk7tFe2mwJhpeJbcRsUDimrYtcTyhMMqtwEBsHvsbbFziC51KyMXIFd
	DLxTODlBaVywr7tTG21hr9gbEi/LRX4L7mQO/l0j4b7X2+5HPcF7eN0qEJHGbvRZ4q5GDYoWr02
	t8TfcTrMZSSfkX4hjnVQWIT7xMh3/XV58ph6tk4CkmIaJYnXl1sqj+8EzYlKPP8B4nI5xU92+yV
	XpIrR+Y8fRaTAF1DECmFbjYgzMYMPvPQCNAzxCAiPdnBJT/3GFMb0um3Kyr/0HdeGF9YCOjoDlM
	hUNG12sggaX79MBUWe5p96acPT5X+oz9d1KcgyZjwGZ/d+lgQ9C6Kt90sxCBlss+
X-Received: by 2002:a05:622a:58b:b0:474:e664:691b with SMTP id d75a77b69052e-4801cb74fdamr10232121cf.8.1745575799391;
        Fri, 25 Apr 2025 03:09:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpVqFMJCg1cVOFVOb6wfjoxuCAz/gvhlpNlvEb69gxUneWgwsWMVnTYY2fOlK2r1AjnFI+ZQ==
X-Received: by 2002:a05:622a:58b:b0:474:e664:691b with SMTP id d75a77b69052e-4801cb74fdamr10231981cf.8.1745575799070;
        Fri, 25 Apr 2025 03:09:59 -0700 (PDT)
Received: from [192.168.65.5] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecf8f3dsm108180966b.110.2025.04.25.03.09.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 03:09:58 -0700 (PDT)
Message-ID: <e8db59ab-9832-4d48-af53-8586ce828c1e@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 12:09:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: x1e80100-qcp: enable pcie3 x8
 slot for X1E80100-QCP
To: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, quic_cang@quicinc.com, quic_qianyu@quicinc.com
References: <20250425092955.4099677-1-quic_wenbyao@quicinc.com>
 <20250425092955.4099677-4-quic_wenbyao@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250425092955.4099677-4-quic_wenbyao@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: dEmhHx7KbGC_F9--vPTocP2gsIJLmR_z
X-Proofpoint-GUID: dEmhHx7KbGC_F9--vPTocP2gsIJLmR_z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDA3MyBTYWx0ZWRfX2rE5Eb+ozf1g aukS6URAvqOXUesJIjdCfLUHkKuXh1qmrG8kckK0GBsCQ0bkUP9R9oM1C8AXYoYhn7tTIbxxkKh poZKytXmSiyWCPBBfOk2qPeIblBzoe+YW1proftj6sgv34dCjs3WOwo9/EwYj16rOEMB3CHDK4j
 HohA03ahb8ribrsU4mm6wVtUe0PlbQy09Ow54NEDqPCiUbKX1X9aq0gw1BpCNI873h9WdVDZ9Bq awSHeyAM6Xx+taPgwT/Px+PH8/iMHVR0x/eJ8o5AiP6BB8rRFACvN8+us/n42vGGsKRuKTLA7kP mAc+6mQDzbIlVjF6fBuU/qMiyuLIYlfdiXc/5LxuWx1MeqCfI2kBQ1PzE6OxbxgiEdqIXLbpbEx
 nsyRz0F792Wy07jg9mDV9Ya22yzbHztD7sgczD8YHuauFOdHrylqw+enlCgwZGduTAagCrhR
X-Authority-Analysis: v=2.4 cv=Mepsu4/f c=1 sm=1 tr=0 ts=680b5f78 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VUPiE-F7cVA44BgGhqEA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=967 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250073

On 4/25/25 11:29 AM, Wenbin Yao wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Add perst, wake and clkreq sideband signals and required regulators in
> PCIe3 controller and PHY device tree node. Describe the voltage rails of
> the x8 PCI slots for PCIe3 port.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 118 ++++++++++++++++++++++
>  1 file changed, 118 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
> index 470c4f826..88dfd2199 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
> @@ -318,6 +318,48 @@ vreg_wcn_3p3: regulator-wcn-3p3 {
>  		regulator-boot-on;
>  	};
>  
> +	vreg_pcie_12v: regulator-pcie-12v {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_PCIE_12V";
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +
> +		gpio = <&pm8550ve_8_gpios 8 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie_x8_12v>;

Please keep the 

property-n
property-names

order

throughout the patch

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

