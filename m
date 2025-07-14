Return-Path: <devicetree+bounces-195992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C92DB03C0A
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 12:40:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F1CB3A79BA
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 10:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E312459FA;
	Mon, 14 Jul 2025 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fhvsdayl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA952459F6
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752489633; cv=none; b=a0w4Bwnlg0C7sZKyRp6JZ0xNBZezZhhp5Nyau/STwCCUFUbRl2Gi3CA5/X5noJd4dueu3I5eQJQ/K+SsQW9EB+rSFFOXGzN+VURm43Yx2MPCDu19iZIWRRRbU7wEOOe1O5fg4Fr5o0OPGL6BBtPXn2EZTh62AsWUogrYJrdZeRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752489633; c=relaxed/simple;
	bh=deZbUNhBldTby3M4tmLgYzlvbCM8uzYYDc0Bw4Lpp40=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TZbnwCy09to3JJtOi0tHdCJw+3ntG5WeMXDnt7IEbBEo54khDSaWNBSyqE6wLKmcgosQLxKyvD6IC7UzXGgV//xDbkQl78a2ESU9NGhig17uLY1xCXcHEGoLt8centgkxDKZFALU5UwzQsZObcfFd2IHijmV4/lNxb19MkBOqAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fhvsdayl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E7Qmng008216
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:40:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tB2e5ggL3fY/edqtAXsgpHxBwZZ4IBQnGq8lX0Jlges=; b=FhvsdaylWjE9WdO/
	y9Kqvwxd4vIrZXsI0F+phgyrnZ0TQRrAAhf/ecx2QOgtEhGcXx8FtjgdSm3+ABQ/
	m9TK1RSYL64LDGwcc80A0+7g2RQlq65ZDaV+i8Gigb+BvRMWzQMsstWUPWzH7R2C
	iwTFirkgI7kISQwbRFKW4mndZQGF9wuJLNxctbx9RRxH3vrKsKchDgBbHRFE+EMy
	k5IKBdLq9g5TDUvIBdYSIK0SJy1oSp9fHqezROJbd7Yfs4j9X8AAiBLJoAeb/sSy
	4aafdxsrHsQjOZQt2c0bJWcFbF1svbXYQrXrWPchvgxIAycUsdG1sZFvhCmC3q56
	dHj+VA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47vwghgq66-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:40:30 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fb030f541bso15672386d6.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 03:40:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752489625; x=1753094425;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tB2e5ggL3fY/edqtAXsgpHxBwZZ4IBQnGq8lX0Jlges=;
        b=QUqTKtXAk55uMPW/vFsyso+NE4blO1jdyq29qaJrzwCszXnomjFjqQ++iHXh64o3hm
         Y4L+FoGz639BNi883U4BHhSSvSerrRGMUd2Bk83jRVSTWMFcPj2bFQalim9G4gF/LQ7F
         1tO73Q37qJaksUm4FkIPtnB2sO31TKoMtqyO4wDTeqf910M13nG0Lj4mkogqFXE4CGfy
         x9mIOl+l7vBPs6bWzTxS/b4Mhe31zEP1FF6YtesbuAJJ9VbG6X2dvV6EgFkiPFbO09TN
         M13IJHEzqKlcfbvDMd5A3DUMzNBlKgryWTDmT6ibJVVgtXyB5w1dltz+nanZ2urXBxmd
         QlOg==
X-Forwarded-Encrypted: i=1; AJvYcCWQyHP4uKAOgQI217Md8JZooHjpCVltr3/NXEu5W4/EfJjq68jNmZOxDVgY1Hke7++BjzlqFWXRJgCt@vger.kernel.org
X-Gm-Message-State: AOJu0YzIFTKkhCs+Oj17LRaRVcSLijo0CCKi184V9TqqlO2XMzSXP3gM
	EG59MzQEQUm4u+Fa1YM8w9m4yePM4j9CsGyhsQACF4nNlvis8pT0HKTJrU3E0Hh5OKFXIxT9LiE
	TTnxjyTMDUVC1nnTXzuNSMuh8Eb99zvrH8tER45DDaWM9oEYY3SaA8mP8jBpIdHyo
X-Gm-Gg: ASbGncsjuiUHkMwXn+10Q8T/LRhdZhEU8rDTNpDgewdxHUb9TCxd6CC8pGEB5gGPvb0
	weYlbtS0x4w+DJtMUc91zOL3H/eJipdgruHBk0HkgqFbsUJXQqi/IYLoMnVV3VZrGChA3a30eaK
	qLp9InbKsopejD0fKXXRGhO2l26SmLnl6Py1wyiKEPq+O+inIlZ+5Plz/xguKPdXR75PJhXZSrY
	R9zIWLRpz7tNAKYTLuWQ1E9i//LMu2OrvBcfHzl1EoX8GE7ErdTOPjlSEGjFt6CJOWmsBcRtGqQ
	eynnvIoywvDZ+bO7s7EHAEBNdW4vquve3c1ckHzZO0wdq01o25cepHVXZY9XFq6VytvaeEC5mKu
	Zvlh7mBLIgWue59LXPMF0
X-Received: by 2002:a05:620a:472b:b0:7d3:b0a3:6aa7 with SMTP id af79cd13be357-7dde9953e8amr669329485a.3.1752489625137;
        Mon, 14 Jul 2025 03:40:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGX6K17hMp2/ulIBMK4DVmm1PgjYLwQeegXlJ+Ljh38oeuRNcCU+4bDQLs8qGgRUtnPnOjJTw==
X-Received: by 2002:a05:620a:472b:b0:7d3:b0a3:6aa7 with SMTP id af79cd13be357-7dde9953e8amr669328485a.3.1752489624756;
        Mon, 14 Jul 2025 03:40:24 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c9523b5asm5919012a12.23.2025.07.14.03.40.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 03:40:24 -0700 (PDT)
Message-ID: <03b0d4ba-a1ec-4196-90bf-0ba38d620815@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 12:40:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] PCI: dwc: Add ECAM support with iATU configuration
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com
References: <20250712-ecam_v4-v6-0-d820f912e354@qti.qualcomm.com>
 <20250712-ecam_v4-v6-4-d820f912e354@qti.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250712-ecam_v4-v6-4-d820f912e354@qti.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EbLIQOmC c=1 sm=1 tr=0 ts=6874de9e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=CBJoKf8DjQ7nWtifRjsA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: -tO9k_3oxzkpy-wxCRFYfNsChAhspKe1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA2MiBTYWx0ZWRfX55rVeYrv43sC
 gmg2dEbHo/2BRE12IcfyRdveIvygTieNEM/OBCMLRjsQWofq+7OqhRlyQ/RFQpLWN5piLnIKGMy
 aGLzbzJRDde6lUWzFhOOncXLL76joaRAB0KqUDcfWutHry09Z/TiypsEeJxAjmdONt2o/I9hB19
 8kTUxgBYGaLLIs7oUKaSSKluXfDKtMmBaFZNZncSiRtT6SPLLZrLbDXAsrMgHzbc1KOAMYzENzj
 1n9wig5fXFRdwfEJrdj1Ptj5wu+3LThQtac4eLC8uSO2i5SO1v/yQT47L0p5hqxGaBnkmcpW0HI
 ccpfS52r+g2mPLUB7aWzd00X3h5oAkHWs7mthHLJyVjhnct616Ku/ic7t9+l18s9/Gq6jA6R7Oo
 UTPrIpytiHgO/cAW+hYGzjdpeqiaYMsgNIqDfs6wu11N6tWwbAFeeYcr8Ih+tcXEdpCerzrl
X-Proofpoint-ORIG-GUID: -tO9k_3oxzkpy-wxCRFYfNsChAhspKe1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 bulkscore=0 mlxscore=0 suspectscore=0 impostorscore=0
 adultscore=0 phishscore=0 mlxlogscore=999 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140062

On 7/12/25 1:42 AM, Krishna Chaitanya Chundru wrote:
> The current implementation requires iATU for every configuration
> space access which increases latency & cpu utilization.
> 
> Designware databook 5.20a, section 3.10.10.3 says about CFG Shift Feature,
> which shifts/maps the BDF (bits [31:16] of the third header DWORD, which
> would be matched against the Base and Limit addresses) of the incoming
> CfgRd0/CfgWr0 down to bits[27:12]of the translated address.
> 
> Configuring iATU in config shift feature enables ECAM feature to access the
> config space, which avoids iATU configuration for every config access.
> 
> Add "ctrl2" into struct dw_pcie_ob_atu_cfg  to enable config shift feature.
> 
> As DBI comes under config space, this avoids remapping of DBI space
> separately. Instead, it uses the mapped config space address returned from
> ECAM initialization. Change the order of dw_pcie_get_resources() execution
> to achieve this.
> 
> Enable the ECAM feature if the config space size is equal to size required
> to represent number of buses in the bus range property.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

[...]

> @@ -430,6 +433,8 @@ struct dw_pcie_rp {
>  	struct resource		*msg_res;
>  	bool			use_linkup_irq;
>  	struct pci_eq_presets	presets;
> +	bool			ecam_mode;

nit: 'ecam_enabled' or something? I don't think it's necessarily a "mode"
of operation

Konrad

