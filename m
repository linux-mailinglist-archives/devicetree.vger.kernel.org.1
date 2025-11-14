Return-Path: <devicetree+bounces-238627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B08C5CBE6
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:03:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C9BA13495B9
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977AF3115B0;
	Fri, 14 Nov 2025 11:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XjjCXc00";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LpzsxiIY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F0930F523
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763118152; cv=none; b=JKfBup8zwazcXDm0TfmUj7+Uo0wK+TBmlhlRLbCK+FQ1AIIM90yPBTOCyCFTsrC2cAiJRv2XZDsVTjdlUoawTQKGm9D19I2ojGnz79n9bpvK2vS7viIhSEbBszg7nUVUgAuZYdh4o/N28NNdnQFIvzd8o4eoGo2Q4HaIEXdR/bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763118152; c=relaxed/simple;
	bh=+4X2EEILwzML/D3ZobGcwRk9lL7wORlBEox14AKg7y8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YpqZOilFNDNIrHFgtPN9XJzunSxQv8d2yWM5jgMLX/ujlusxQ87xh84PCraOiT3lxwMr6k8HhTcdYb67tUijjpbCvP/ZS6l6lwCP5RFSfm/MyuAUBnji1WgldbxHs+qHOH9AC+Tb3tp0NilyPLpNgdLJl4oJoQnlzX8chfXzREI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XjjCXc00; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LpzsxiIY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8UlmK1620946
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:02:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2RR1QJ03Mswmjs+cujBHJS7vnuUVaPQ+K3SVtWWyBPQ=; b=XjjCXc00U1MwFPzf
	8bPPHsWCyQ5uSogsh0zSw2ThKZS76fCn40FGGtJeALNAAYSSKj76lMBJC8u0q952
	5lL3OLSXFGOL6PacJrFI/3RhHasEqtwf6BwHOxPZzcQwyQp6XdTayZ80M0SOwKQU
	vCnLXlZDysKwxYP/xXcuRc3dH6/cjt0Vg15aZyjNEdy0XH4tzDN9Mr+Ftr1FoYnU
	28onChHHLXvVZtjto2OITSKMb74IIeW/8vvtrbKh0xNHC/ehu9c8PUM3yCkUDZTR
	fY1tINRlIjG3VF7IcK4jLY9t6IciF5bqyyxorzMqqt734aFRE35i583bJgpOSGG2
	S4e/Zw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9h1vvr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:02:29 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b991765fb5so2410771b3a.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763118148; x=1763722948; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2RR1QJ03Mswmjs+cujBHJS7vnuUVaPQ+K3SVtWWyBPQ=;
        b=LpzsxiIYiSLS0WLRt2xPaoegMC5lR8LXCagnD4imAHmlWkmEsqpCxh1z991cwfxtfl
         D51M+7KEXgUfHBjjxNS79MrMic+lo2TV0Shq4sutK6yQPyhaU9eF1NeBIlek+cNiwvoD
         VlJxQg5dj/yyqptiiXCV15AeWO62c0GnwyhOTqbzgdKFu3Uyp2hjexLnk6LJYjeh/FiA
         rIi0MJ6YHovjR1Ag0fI3fG5p7JLQlGP+BsfMOIiPQPfEXi5e5SERiElznG9AI2n0l0jm
         4OMivZ7xGWz65TNpLqM+0nuo0+PUOq8Y1bFLkfs1o5gIeTuQGznDarLzMa2fcMOgG4CK
         qrjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763118148; x=1763722948;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2RR1QJ03Mswmjs+cujBHJS7vnuUVaPQ+K3SVtWWyBPQ=;
        b=YUlt+b3KXCTs2n9wr4owNuqqtfzLz308ZeZvYEiWEZXdz3hxjip+Gn06X0+ZmaDgKu
         +1y/34rLPXv9txO1tqyZqRI4DkfE5wDy/23zL89I29It9y947ncLlVHPMBpJkvbwwJwZ
         i27dFQVJWecmT5e1oeZ+00cxrAPEg/mG66DJlTUfykeg8XUcKE5xibjJEY+5S1dgdwfE
         HihDQ13A0poxgslpDmmFSg88iZGg1fwWb/Jp9RqvRxv25Et6eNszDYVfPT+0mhVLtEjQ
         lMHLVe8sKzzfj6iFVGNzFFi1qjmR9RCi8FUUgRkGMb0e7d0UIR9fJCW8AAXUrWJNi4SK
         Ildw==
X-Forwarded-Encrypted: i=1; AJvYcCVHUCDdxCR45DXPxfzoV2N36cVYBPGQHVB30IyO4L701WQH7832l83/XkzxftKQV/ySUBN8BZepwP/x@vger.kernel.org
X-Gm-Message-State: AOJu0YzmMaBF3vZBnSDm57R9vmjUiS5hxcZg7JMXhBkhmBq5leXNWQjQ
	QeANrSnRA+8CvHm+50eQBKrNW2lYxyZ1h3cqIbKygGPFUrpbSDL8nqLtCfvRbhXs5/8at+Ha2eU
	NbbvArMUiPfV3lgfYhBiGeG+AthorfD9NeJoZP1sG1czWqZtTvjX8oskC1JuK67o8
X-Gm-Gg: ASbGncvNOLGCghJsX4FFrf6QGr0EXLNpQr35U88InL1MiQra7g78udbmvQFdo9dGhOk
	tevcYhSErrLKcrjBMqHv+0iIvLxQmLmmDiP8QUCopdcIUEkilxxvWR7rtCHeG2zZrWMuN0t3iDN
	zjmKMlFBU4G6HdLh9VtfifyM+ryiuyN4sFGI7U97f0annUJmic4iIJArJA2Ypjx4ATMEsr3CJ5m
	QwNP52+1hpPbs2bzOADCqSi/zaVpvOTUtc3N+fPn+86nNSXvp+CI/0d5VpRaGh2OxxyF4N3Bdu7
	6frPCppMg2B/U+m0fKlo6O5LQOI7X/WZv67D6ocj5RvzFBRXoVKCr0A+IO9ntSKkoWbNJGXypOT
	DTMMiAOw6Jv13Ww4=
X-Received: by 2002:a05:6a00:198d:b0:7b8:9d86:6d44 with SMTP id d2e1a72fcca58-7ba3a0be249mr3282001b3a.9.1763118148345;
        Fri, 14 Nov 2025 03:02:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExFNYt2MskO3W88XzfwFL4ANOFXf0FsrBkggPFobNWhKgZWFcTDPQBJLVYzM5f0k3sKC8ZFQ==
X-Received: by 2002:a05:6a00:198d:b0:7b8:9d86:6d44 with SMTP id d2e1a72fcca58-7ba3a0be249mr3281959b3a.9.1763118147841;
        Fri, 14 Nov 2025 03:02:27 -0800 (PST)
Received: from work ([117.213.102.44])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b9256b8824sm4884070b3a.31.2025.11.14.03.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:02:27 -0800 (PST)
Date: Fri, 14 Nov 2025 16:32:15 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jeff Johnson <jjohnson@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
        ath11k@lists.infradead.org, devicetree@vger.kernel.org,
        ath12k@lists.infradead.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] dt-bindings: wireless: ath: Deprecate
 'qcom,calibration-variant' property
Message-ID: <fmumja63j3xvbvfxlmtnkfubgw4jwo5f43srrpfgqrxyqknrj4@izsqazgbiehp>
References: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
 <20251114-ath-variant-tbl-v1-2-a9adfc49e3f3@oss.qualcomm.com>
 <b9b4f1bb-45ef-404e-b75e-962e85a557a2@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b9b4f1bb-45ef-404e-b75e-962e85a557a2@kernel.org>
X-Proofpoint-ORIG-GUID: a71AGyllLTgJhGb0jsQS8nyYbnX1mzbx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4NyBTYWx0ZWRfXwGE0qgURtVgq
 dw3cJPUOzr6LclC8UP57Fq6BtusygqwtuBVINkAOe2klkO2boe+Ngkl178Mmw4awy5oZ5AsdxO8
 Ky9pgjxEKimGwgnWvTN/ADQzfcHtIJQzPEWb+XKG4ws4QYGWQKtf90A/9iLLLA/G4+q7w5jLajB
 D2T2Njg/tzS2ned/uDaf3VSCbh8OIOr4wkQYRVMHIEC3VF7JSUcnpk6agufq2rI+UMlRp/E4LDh
 fwjgSPdE6tG9hkqRkCAixHHH7yx8dpkMX/Efo7LwcKnGaUA4m8Tav8Hip5oEcZfUktuuuRjWcdH
 mkPANKqTZfxI8vzN4953E1arLMCBNTFvYw/j+75oUPsrLLyCEISdHQBMH8JipXk2uiOAx8NHOX/
 MxjsQ4hRD5iD7xB/n8pU6v4N3TWo9Q==
X-Proofpoint-GUID: a71AGyllLTgJhGb0jsQS8nyYbnX1mzbx
X-Authority-Analysis: v=2.4 cv=V+1wEOni c=1 sm=1 tr=0 ts=69170c45 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Nd/jlyMbCgud2ZEcqXkYLA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=iIcxu6EjtSR0Qi8y410A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140087

On Fri, Nov 14, 2025 at 11:47:25AM +0100, Krzysztof Kozlowski wrote:
> On 14/11/2025 11:22, Manivannan Sadhasivam wrote:
> > On devicetree platforms, ath{10k/11k} drivers rely on the presence of the
> > 'qcom,calibration-variant' property to select the correct calibration data
> > for device variants with colliding IDs.
> > 
> > But this property based selection has its own downside that it needs to be
> > added to the devicetree node of the WLAN device, especially for PCI based
> > devices. Currently, the users/vendors are forced to hardcode this property
> > in the PCI device node. If a different device need to be attached to the
> > slot, then the devicetree node also has to be changed. This approach is not
> > scalable and creates a bad user experience.
> > 
> > So deprecate this property from WLAN devicetree nodes and let the drivers
> > do the devicetree model based calibration variant lookup using a static
> > table.
> > 
> > This also warrants removing the property from examples in the binding.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> > ---
> 
> The problem - visible in one of the examples here - is that one board
> has multiple WiFi chips and they use different calibration-variant
> properties. How do you find the right calibration variant for such case
> based on board machine match?
> 

I suspect the legitimacy of the example here. I don't understand how a single
machine can have same devices with 3 different calibration data.

AFAIU, calibration data is specific to the platform design. And I don't see any
upstream supported devicetree having similar properties.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

