Return-Path: <devicetree+bounces-244722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 82972CA862B
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 17:31:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 689B431108D6
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 16:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C363D34D3A8;
	Fri,  5 Dec 2025 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jt3/1u5k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kh2h7a3j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59601349B17
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 15:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764947313; cv=none; b=nsvtUGLqks2PdeinCiujk39IXlovEufm/eWDByyhbFsyxjkogFflOi9ISHbvShtRKHWePVrYI62sm8FMyl6/EauLFrTDEcF6Vc/AbnBF3KWJfO3UYWRfyzK8hH6QKxuTNf5NLUERXLCfS8thuGMmz2uRdyi98fBgr4kNHRwFm84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764947313; c=relaxed/simple;
	bh=PArCrlXxLaseY6SrjNYTk5/snsyyR1dlCwkDqHrKn9A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NKtnaQjKHL7m7EH5Q/Y32cwEZGZB/hloJQBuMBGSYOaS3H0wTbonOIN584O2R0AfYpsfjkLCQPZyQlklMhTHEPCQiDafi32QbvelPzBDs76IN9EJ8Fvbm0cGI4jK0eput/fYDYxqW39pEHnq2q3ucz1n6h2AKH8f/uQKFcbbq58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jt3/1u5k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kh2h7a3j; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B58LCLP2299106
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 15:08:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JVCH5wvioZe9kiwYzabc8L4MQj09OxUaUi86lSa920E=; b=jt3/1u5kKCzP4Psw
	FkLq7End7Q2EaWwe7mYLbUkcfR/HuCS3D8FsSyvootdGigvyy9fjaW3Wp8jfHLpZ
	Z4RsExXhPOp8tJIKZzW2Hpp1Ccm8Jqp7F0WDReedNeUibVuCIsQHJly6nOBpWZhu
	wwe1sdXTmoYWCHJZPKa9rIjSx/GfXu3VppWgm2OOTbtjqgBlV0HMLD8vgFiuHdAK
	5jW4O6B8pYTSoncuW9RtYZnlRDGiKDWsJVw/3YN7FiFNHMSJw9jdnsu4biYvzOAZ
	e5Ne99yzxSeUSif/D4O9ty2CNGg9avsvdNR26LZHRi45N//1PkjsMfMYhImMleXU
	OuXaYg==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auknfad20-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 15:08:25 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-4510650af52so3031106b6e.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 07:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764947305; x=1765552105; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JVCH5wvioZe9kiwYzabc8L4MQj09OxUaUi86lSa920E=;
        b=Kh2h7a3jIoPzVlkAwqp6ZVbXMBbMPvw7EqnUsgmF/K1rNnqzl4H9X5A0xYkZ4ks8zH
         8gd20WyWyoJEzgS8YfBlBb5cDdp0Emh0LpicCtCqYhifOmY5SAhYsO+p4k6fqWAero29
         Pg+G+pEmaspO34OJAwiQjM4Twh0rQ1xh2FKNAPcxednoE56ipBxAz8wrSlifcqFSShJh
         hRZuFXxgc8Avt37jvHteVbJRwctx6JKc7LLxb217/zncOFoOiD0jN5GaqtFqRqHTyaXu
         Ly4XsD5TXOT4Y3Nl9qSVC9u08XLjbZ9V4AjeENI95ia1mAMFw5IR61Y1XM1Mw+XCIGwd
         Ci8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764947305; x=1765552105;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JVCH5wvioZe9kiwYzabc8L4MQj09OxUaUi86lSa920E=;
        b=joEd0UGr0ODZQdxwrvUUT2y0Mro6VBy4VR7HZIwIHGSFPu8S4OW0pySgBcPZ0VChkU
         XIv61j9chjurS9GFv3lD+/SAbRrUjPpWv8jG8a4Pjqin42NA31578nhU1C9obyr9uXsw
         djQ41LzVeAs2JB/C1VywQb8T8pfn2JvJH/kMqcsSsVg+zf1SLU+wutuDZxqsMcYDbqtU
         6mPfXYjpcQxTnNle3JpaqZfiENae5eenhxh44AyVLAynSpSVyTcbTgg/kuY0Eiy7nIAk
         7/4eFfv3oc78wONh5nheU31gg1N5mg4gPdOOewJhMmOA6ejrsaa4vU/XTvYVK/zOWpky
         70Bw==
X-Forwarded-Encrypted: i=1; AJvYcCUUVGg1PPrQWf1Ba+0TWnfCfU+OHFTRgDkLclZu174IEwtgxvQCuSy2Ji6xwHRJWiDTq+Kn9RctpAvn@vger.kernel.org
X-Gm-Message-State: AOJu0YxIiFAKJTkWgjfbAK+natEzwuDMWkM9d2mqBYFjFZBWiHfrZ9iH
	hB0nWYhohIzM6PUNi9wuUS75kl+CY36uQ12wvPN3mgGD05eovoB2n2UQu/cPPGziTJgNAAF15br
	hvR/0ea9nUi+KGng7qsDFHZ1bb2mE/KvwxcCRsPjkURe+fh42A04JmtI7dzW7vJ13
X-Gm-Gg: ASbGnctV+bzDDCFTtwZL9mEb4pM4xqwuCuJc6mDzv6voM2SJ23Br0srpprWEIKnFRN6
	atkdCeSEcxQObpltLktZQiRr56Ml2lxVA/xkl6s6A/rg4lJWp+E2WGcqIXPEiddLiMcSvFd2kP+
	7R3kwxm6Vxihkd5xUxnnQgx0WzwkwcIM7CNG+OepS5CmGKXSCwNrwuFtXDNSZlmmkxe8UMFwtdm
	JUIzZMUFgoMJ22k2+lMNEewRx1d+AUwTr/7shKVSzTkC2n3luGz3Br6+raf0voUsrArhQUiWwG3
	8J3aVllIACuKGbsqRq8yCT7lTsDoZnW7davybDfA/XoCStp0Z1FrvxXPMtGS89QBo/UjaJGg4To
	sj3Z9UDTrdCfAl07hGvPL1fsnpkNoc21TCFxaYS15YZPM/wmQLWaOMmAOOCRWakwq162bpQ==
X-Received: by 2002:a05:6808:1927:b0:44f:f73c:d779 with SMTP id 5614622812f47-45379eaa3aamr3805870b6e.57.1764947304935;
        Fri, 05 Dec 2025 07:08:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETLiy/34xkKwIyuudaaUwJxiY+2SHi6tv4ZnQaCOh/kwQ2rd9DBrDLuwAeduheHE0MduqITg==
X-Received: by 2002:a05:6808:1927:b0:44f:f73c:d779 with SMTP id 5614622812f47-45379eaa3aamr3805832b6e.57.1764947304500;
        Fri, 05 Dec 2025 07:08:24 -0800 (PST)
Received: from [10.227.110.203] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3f50b510088sm3526487fac.11.2025.12.05.07.08.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 07:08:24 -0800 (PST)
Message-ID: <73508b26-bc71-4661-bf2d-cfce0eb1df13@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 07:08:21 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] PCI: qcom-ep: Add support for firmware-managed PCIe
 Endpoint
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        quic_vbadigan@quicinc.com, quic_shazhuss@quicinc.com,
        konrad.dybcio@oss.qualcomm.com, Rama Krishna <quic_ramkri@quicinc.com>,
        Ayiluri Naga Rashmi <quic_nayiluri@quicinc.com>,
        Nitesh Gupta <quic_nitegupt@quicinc.com>
References: <20251203-firmware_managed_ep-v1-0-295977600fa5@oss.qualcomm.com>
 <20251203-firmware_managed_ep-v1-2-295977600fa5@oss.qualcomm.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20251203-firmware_managed_ep-v1-2-295977600fa5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEwOSBTYWx0ZWRfX+XNcqD4LLUS6
 Kd4+dAy40IJ9ZTEJbs6QquUmZgzbaOIFK09CBA02HBdgvNmiS3H/UUpEkXtIBkY+BufZgN9KGjc
 iLSI0IbB92nL4Qkj42HCnH6Szzy2aUbtLqVYdzrSeEgNDMFklBD39vQfXuYP54ja88Y4q+PrABO
 Tmp0HkzHH0GLYuFR2i0gHIypsQlUthyWOrKmIwHWBEBRiYXX2W9R/1825rWCX+BpniTfWIqWl/A
 ofqbAUqVgcWYJvda7sGwR/JUFTFBoFM85l0hqsbz0M1A1UfTwR0A6nV41X1qBGUVEVOp4k5Zy+I
 6b9h7KdKxneddbzTZAsxt7zmIaZZm3zAIANMMECIDkm9guP76/+KkiMPq447hcoQcsR1JMNbBGC
 Xm3BiQhxlNBpTEqp2K2VSsWAVbPGPg==
X-Authority-Analysis: v=2.4 cv=P/Y3RyAu c=1 sm=1 tr=0 ts=6932f569 cx=c_pps
 a=AKZTfHrQPB8q3CcvmcIuDA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=YnIKxIlAgHF9ygR4tIEA:9
 a=QEXdDO2ut3YA:10 a=D0TqAXdIGyEA:10 a=xa8LZTUigIcA:10
 a=pF_qn-MSjDawc0seGVz6:22
X-Proofpoint-GUID: vxCVmHCoXVcfUiaDQdmcjC8Ok57wo2up
X-Proofpoint-ORIG-GUID: vxCVmHCoXVcfUiaDQdmcjC8Ok57wo2up
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050109

On 12/3/2025 5:26 AM, Mrinmay Sarkar wrote:
> Some Qualcomm platforms use firmware to manage PCIe resources such as
> clocks, resets, and PHY through the SCMI interface. In these cases,
> the Linux driver should not perform resource enable or disable
> operations directly. Additionally, runtime PM support has been enabled
> to ensure proper power state transitions.
> 
> This commit introduces a `firmware_managed` flag in the Endpoint

please review:
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes

"Describe your changes in imperative mood"


