Return-Path: <devicetree+bounces-252557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A10B2D01063
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 05:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D6C4302CF7B
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 04:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FDC72D0C92;
	Thu,  8 Jan 2026 04:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ls44GIRT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="diNSPQoz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99892C3256
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 04:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767848318; cv=none; b=mZm1li9w6a1YJ4HAVNmyw7bPF5kv1Yr9rLTWhPy1EyKX2D0QkUWHSSonGdWw5/2kOpelBt9K8xUEeY+6evZzZXyZpkUI7nEpljhrzcyM+hwQQSrgDPZ3V08gSTbQcZAY/98JcuGk1DhspnogFAVuyT1GYQwqFquATGoFvpN5yXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767848318; c=relaxed/simple;
	bh=5/8v1qa7MDZIB7Kys1KfUbhrpgKuhP4L2dEhcrc+Qps=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ucgxTsTnGJPdLgTNALkriFusTyQaA3e1VIGD2nQnDMHbbyvDtch6qhwWHbN0ZMfkHW/UsxQFfYACwUutwsdY3i/Tbc7cODRpBQfRZuAdHx7tenna5wA1M65GtBVJSK8aDDMFNUi3gU6ksnlYFRCa4n4zrEL5knBo/WA2N2xviGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ls44GIRT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=diNSPQoz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607HVHLS3890313
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 04:58:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1oZWKL8WFE/TBScZ84iQCle13ucFqibIGaIK9CHjIWk=; b=Ls44GIRTBwJnmZ2l
	cCVNybIBFEwBR0OmoKChQLF0+FpGPVL6Cd37IN/Sacaz1E17g56Jf4bvsL8ka0AI
	FiV0Iar6JsFLKLlkzztFtZ4MeK7/dVd1qYnuDlA0sFii1ni7yszKQpnzz17DaN86
	Oyj59An+Qx2HqOjTc1893NFKU6+A40TWi+y6SemQXt4+pU3TmSW5YRR9l4gtVUR+
	U/U5s2e8Rj4vxGAP5S8+cU35ut+TqzrQsuguPMos8cEr6gL/6zHWv6LJXUlZQWU7
	993LR8mffu09QuKiCdaAna1hXwcFgt2c23Ho2axVRbQZ/EdGmSB+GPKvN3Z8WKBQ
	FHUkKw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhuy71rmr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:58:35 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34cc88eca7eso3895400a91.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 20:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767848315; x=1768453115; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1oZWKL8WFE/TBScZ84iQCle13ucFqibIGaIK9CHjIWk=;
        b=diNSPQozxkOo9NbpPwJiIWPg1Y6scULfJiA7Eq4KimuMxcJixkwxIMevkzaxr+sxs5
         sR8w/5pWyMQG2Rqlu+zsh+cAGXRAqpCnMW/t7qsrItNCFvnLx6QGhSOzSE+Gm6Qag+ae
         TNKg26lhlNgQm8woWmPQi2/GXTfczBy91kmn3QI2o12eF9VadBIyDIEQdMzX08VgYZFS
         Z4yAVWVuc9PxeGR+764kmr+bnFlOTYftZ/qXJL67IwF0cAofnJdu8W7W82lauykyOMef
         5GJIMsPXtjgsE+7gl0rD6L4ZdcSWui20kG4Q7TFu0a1EZ1VWuLjn5RPGPXv4TplLaZqe
         doyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767848315; x=1768453115;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1oZWKL8WFE/TBScZ84iQCle13ucFqibIGaIK9CHjIWk=;
        b=QmQG1XtNYBHgKOWSW6XHPZz4YSimQMT4N160qwDCO1ln71TzrqO2UcEIkGeDgRgELG
         txUqOy+0Q3ERT9Q6F5p4t5z+g7TnWu7Zn7kPpbS9dTOq60b5U7vcvWSmbEMfAGIxXKFT
         VZNYY0bcODvs39cLAqpBNTetMyIwHNs0LtPPyh9jCLTy/xTDXjMVjQ75DQ3eTR4SaoIo
         9vtbhnQbhjK+hbkzR2ZMXHQNoLNGqfybBPaEwfei1AKrYkIbomCpIWnl0LF0EdVZGrwD
         mX6q//j89UaQFOXKZZOG+nUez/jS0OhNd0+yLt7UACqENiPOkxB5Z2U7GYrDFwZj1dPV
         Jbtw==
X-Forwarded-Encrypted: i=1; AJvYcCUebV/Q/mQ+t4CqtaHgWra0Ok0eo/VaVZHwzUzXwv2VpBQWz2y4ywGErWtDo4ftLdxr4pAnTDhw488u@vger.kernel.org
X-Gm-Message-State: AOJu0YxBCgA/kJvM4OMtxkcTw9jfEAUw0c0CN7QtFoLeJfR6UU2gP6q9
	pUe/Ix8+iWqty9Zk0VWkIf5zIDmeX7mYuCA4NwLYpo11/SaVYj/XHBpEUgW+reFyVh6WNK+Xxal
	FC+7FM16wxd+/TzM1JDK4prwke6FBELgE2UJsF3tppupIyf5fvLKHADNHYGL/M+Pu
X-Gm-Gg: AY/fxX6zaK5MzHMugK11aPdPJNpkWUV/e8E+W7LDQHCpESCD5EDjo4EB9/0WjS2ug6Z
	IbHhMsp0qISybtGwTPLdYERA/mm8yEJvHzrml6Ie9OrNg+JN484cO/dvns8r5pAdZgLDKC/6z8X
	XMe7iPmfClw5+U8m6lCwTcui8NFBPEHvIdOMCvrHOFZ4xEC0x96xkLdKBOiwiQwpPDUj8RtCcdM
	X2XWeldSKAJu6rB8p8a/gozckfwNw7CfcsRaDn0s9fHMngh8pVELDtJBixB1YyYKKhEBvwfoVLs
	KuqITwIX9XqqtGowtzuK76qGnMS02vW1ePDPfw4rJBZ6eDv+4eNSZoo8cfe5ujE/Z+02GOdoa3s
	mvu4P6AAa3IU4bId3BKxRew==
X-Received: by 2002:a05:6a20:3ca8:b0:343:af1:9a57 with SMTP id adf61e73a8af0-3898f9dd1d5mr3728904637.56.1767848314628;
        Wed, 07 Jan 2026 20:58:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFN6TScipKb3lPetOYRKbU8aWMIDLVoyDaluyKREQZEFcX+18m2Z804vQAWuMfyQ/M0fOsdmg==
X-Received: by 2002:a05:6a20:3ca8:b0:343:af1:9a57 with SMTP id adf61e73a8af0-3898f9dd1d5mr3728874637.56.1767848314031;
        Wed, 07 Jan 2026 20:58:34 -0800 (PST)
Received: from work ([120.60.56.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f6b7a5a69sm1638678a91.1.2026.01.07.20.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 20:58:33 -0800 (PST)
Date: Thu, 8 Jan 2026 10:28:26 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V4 2/4] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC
 compatible for x1e80100
Message-ID: <tg2eahc5pf2pqvavihtptbxn6hqftdd6euhhap3v4kkffzgasb@fyq5mxlsu5py>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260106154207.1871487-3-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260106154207.1871487-3-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: dSbYIQyf4SOsrcx7isUvt-v9Y-v-nh6t
X-Proofpoint-GUID: dSbYIQyf4SOsrcx7isUvt-v9Y-v-nh6t
X-Authority-Analysis: v=2.4 cv=DZEaa/tW c=1 sm=1 tr=0 ts=695f397b cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=RufU61fwOX414azV3ffNTg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=drqrqwM6pU4QfT7bHcMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDAyOSBTYWx0ZWRfX9NO5Il7g6CcK
 4FaBvxs2yoJWqngrxFVo2C9jT8Sh2w02HOAym4oJ9GFSSYYaLe9BBNbLeE1nlTgVp0r28+YzhEp
 Ph2RtlfIVVGtZ1ho66nyuTwocEaKiRXjkM7lp9AqTSuH95wTz7bVKOrKxWtBlKm4i7ExpIxzmeG
 IaMjzXcFeH/EPNOhYLtJ2TVUXU38V9My2v4BsWdROQTaNYDpXpSOO8HM8XY0/kIaFyU9hb9fzz4
 DovRryp6lS0DAqUSvDW+3gDADsvCuoxfFy8F/a9bwJ0oFZhl397S5UTxMOhFRWPxj9No3GpgOyf
 bTpc7xQqz/BjDTrAfsWmh/t/iEZCLR/QafNAs5XeSNjMTD9actg32ugKBuh1PcgmZ/gygy8a86B
 7Korp3s7q1y6ol0A2CuBK6HwCx2X1sfsfuHZgy8UIIx6L8hIcqxyQt1nLqatzwlTYWuGmeCaGHp
 6dhjX3HhMHe5EP9D8vw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_05,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0 adultscore=0
 spamscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080029

On Tue, Jan 06, 2026 at 09:12:05PM +0530, Pradeep P V K wrote:
> Add UFS Host Controller (UFSHC) compatible for x1e80100 SoC. Use
> SM8550 as a fallback since x1e80100 is fully compatible with it.
> 
> Qualcomm UFSHC is no longer compatible with JEDEC UFS-2.0 binding.
> Avoid using the "jedec,ufs-2.0" string in the compatible property.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>

Acked-by: Manivannan Sadhasivam <mani@kernel.org>

- Mani

> ---
>  .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 36 +++++++++++--------
>  1 file changed, 21 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> index d94ef4e6b85a..fe18e41ebac7 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> @@ -31,21 +31,27 @@ select:
>  
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - qcom,msm8998-ufshc
> -          - qcom,qcs8300-ufshc
> -          - qcom,sa8775p-ufshc
> -          - qcom,sc7180-ufshc
> -          - qcom,sc7280-ufshc
> -          - qcom,sc8180x-ufshc
> -          - qcom,sc8280xp-ufshc
> -          - qcom,sm8250-ufshc
> -          - qcom,sm8350-ufshc
> -          - qcom,sm8450-ufshc
> -          - qcom,sm8550-ufshc
> -      - const: qcom,ufshc
> -      - const: jedec,ufs-2.0
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,x1e80100-ufshc
> +          - const: qcom,sm8550-ufshc
> +          - const: qcom,ufshc
> +      - items:
> +          - enum:
> +              - qcom,msm8998-ufshc
> +              - qcom,qcs8300-ufshc
> +              - qcom,sa8775p-ufshc
> +              - qcom,sc7180-ufshc
> +              - qcom,sc7280-ufshc
> +              - qcom,sc8180x-ufshc
> +              - qcom,sc8280xp-ufshc
> +              - qcom,sm8250-ufshc
> +              - qcom,sm8350-ufshc
> +              - qcom,sm8450-ufshc
> +              - qcom,sm8550-ufshc
> +          - const: qcom,ufshc
> +          - const: jedec,ufs-2.0
>  
>    reg:
>      maxItems: 1
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

