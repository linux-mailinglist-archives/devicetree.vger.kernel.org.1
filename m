Return-Path: <devicetree+bounces-190112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 059B7AEAA4E
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 01:15:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC2E156804C
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 23:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EC0D2264C9;
	Thu, 26 Jun 2025 23:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pYmdYbH0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65DD22541B
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750979719; cv=none; b=UbtfyhiJKiuhaeR6OKIQbHnVWauVMbZsUSM6kWVDtdEeOPXIYykd4u2fx0iLj8rcPQyh5Hm1HCbkI9BuIjPpNpEmx5fnfIprQP4wGZicaXhj1WW0wCElvMef7mwZjgSsixULBFLWPBe63U5HhClCHDR+DREtBoZXLOBd7vtXJgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750979719; c=relaxed/simple;
	bh=G+7wF9yd6vovIyrnA2PHzfa82ugGuBWenVpkTDcIQy0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=kS9lb95Dd0e6G7zz208Fx0VoSgYNBzaAEZHon3VHBiuyctSaQB0mJAGffOJFzs2SPgCHdN0p2gOERyHYCNEvfAPnNwclZOGjkXFugcfGJJkoapg2g+qjG5yWvUpzRzvB2VVIXcR1OcjkzJaK4YjBLgjomfcV87qpqRPTG00b/rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pYmdYbH0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QITggv022078
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:15:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m0YwMxO+jUeFCXEvL4KpijnvGsNmfzPaS3I2nEc0Qic=; b=pYmdYbH0YFfXTLk8
	Rr9gC0YnAwbd0ABqw452uMM9fvyiE5nHtWW381MHIYdL8ZRgTlvCMr/ASLT3k5cG
	zd6dys+dPH5VB83sjh8w3hduoEqGlQP0g53GktULcVS9ohrmlX3GWxBfWmcztRCS
	i4acamPjPT3Ga9m6z6vHXuKOvOdrBo8h9fO7eO1TQZqXxLGPu8fsssOeFyKvVl0H
	GtRctpuy2+lBlPgYXpZ8rdDQ0dhCo5MlRequCmqwPTGzrKcxYkT8xRAwfv5rsHk3
	1RpgydHe8wNBlf2V+COjV3CKx9oONwzZd3SzJ/mgjvjboHj2e8iVCk5juqVLtA/V
	WYvHdg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g7tdestq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:15:16 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-237e6963f70so21003975ad.2
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 16:15:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750979711; x=1751584511;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m0YwMxO+jUeFCXEvL4KpijnvGsNmfzPaS3I2nEc0Qic=;
        b=byWwQ/WUxHEkFbx56AQMhvyao/dOg2ihoG78J+g8EAnWO4NF7xf9tdRaLRKaKDLWBC
         XhQd+hAsIvVta4vGa0zECs56xS/Js0d2omdAOlbQxoIPZrFni2JQN8HWQfOpBPGr9Qsw
         RI9yi38QNtnjgtAGScDO0FRLWKoXQHuNU6If1UKDUsy/qy/aDuVdsymISP5XRKoePUXN
         jczoiYRqjICSoIAheNXexfJqH9/aITsvvRlMVVcM9yNRuR4jnW4rmiziheSOY5Yi2KNG
         EHRjeOreSsLIe46LbHYj+l0z0T9sgI2XMRCdO4uWGs6lIXMuJxNbBf8p7QOxMsD+27M1
         BZ7A==
X-Forwarded-Encrypted: i=1; AJvYcCXqIXcZXQW8P+5dW8YLhKr5NaCS821ntL6kHxTFr+lljyxqb2uSZdvzFbp3t9jn5XgAN0XNqTQK8xJA@vger.kernel.org
X-Gm-Message-State: AOJu0YxjydGev5zVJ9unxoC/iEXAIugkhUHHRcVPuuVB6/wiMfvEVUAE
	yoCIzUEuYfehrPgtgoNB+QKdrWGF4gmcHOyv/rxtK9s9Ux4F4ntjkauSd6x89qmIiUraO76uOXg
	XTQlv/YfUUpq31eiUG+uTj3mgxWW5X5KbUSsjVpVJCECDr3V7LQ8dCfgr+mYXoR4y/5t1vKnu
X-Gm-Gg: ASbGncv94TYLD3NJcsi4I53Cl7aW3V/42mDdu0zfuumvvhrei/GVbUT9FDC97PjCIuY
	6MblT+Q9WwajIR35zArlbaa4z7eMgY/4awaWibrEqw72U5cqISylULyA5j3idImyHN8m2u37UjQ
	+qaWrGcTDjm2u0owlbp7Ka/QDaK+ILwPYKCPuJpKFw3W9xmlL2cwLjwKv7ML9f8QS52MQ8yh6hS
	XsfYe1ymC8YAs/epv3Fl2pp0kCF6Vtqhq275jN3nuz34O8sPGi2tPcIgOeyJT0zVpEvdOKQhs+n
	r28qJ4yHzsLVis7/c1uq0wczDWwTCycMQKrZr0/6ZREOtlDCMS7HI1iSBWM=
X-Received: by 2002:a17:902:ce8d:b0:236:7079:fafd with SMTP id d9443c01a7336-23ac46527ccmr17456545ad.36.1750979711542;
        Thu, 26 Jun 2025 16:15:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtxZAT9RsuczoF4qvzPiB5OMo2NIectyuJIvyMQ1qsmF4ZT12KS1G8XG4t/QvX9V4JDG5Znw==
X-Received: by 2002:a17:902:ce8d:b0:236:7079:fafd with SMTP id d9443c01a7336-23ac46527ccmr17456035ad.36.1750979711051;
        Thu, 26 Jun 2025 16:15:11 -0700 (PDT)
Received: from [169.254.0.1] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb3adeeasm1548105ad.156.2025.06.26.16.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 16:15:10 -0700 (PDT)
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20250522013444.1301330-1-miaoqing.pan@oss.qualcomm.com>
References: <20250522013444.1301330-1-miaoqing.pan@oss.qualcomm.com>
Subject: Re: [PATCH ath-next 0/2] wifi: ath11k: support usercase-specific
 firmware overrides
Message-Id: <175097971004.153431.2672795252438495643.b4-ty@oss.qualcomm.com>
Date: Thu, 26 Jun 2025 16:15:10 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=CPYqXQrD c=1 sm=1 tr=0 ts=685dd484 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=ZHLDmf7C8hvfDcYlofMA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDIwMCBTYWx0ZWRfX5INX+ct2PudR
 C93qt0LwEWrNh3N0iZeRYn9vIPx3VT0YIonivQBn1Xp03/VWPt6KR0wwQTs3voR4K7zbGMUfQe+
 v6xSu2TCwW4zsqvk06o++s79mnUPDnaN96t7Of3UY9dHSC0uMWecoXZlRGkDprJpOBYDsXspNlJ
 +pZfBC/RM8CjyMRDA9BIfk9kS2YJvoGB4pzcMIoNa4/22lXeP0wwpMSqlXF10szck049mjZ9/zj
 O2CXA+5nHSJImr/UxRy6RRB79FYTleF2961Pp/Kucw4Sury/tkXcKp+da+gKz41KrSOavvsZqpl
 oFmCDIRozxKH9c6li4zTRHVw90kPIi9ikZH6vc1uGyFlO4i3li0HJcF6spJ7vB/ovcPWQFUv6Rd
 mlbSqLkFHotO+CVWCg3diiOfm/kQus5m6ph2CsOvhcltLNSr9g1+uhjou1Bc45CcnzXie4cN
X-Proofpoint-GUID: y7kORzoAMSlxbLsSwuwqAmJqSlNKQDUM
X-Proofpoint-ORIG-GUID: y7kORzoAMSlxbLsSwuwqAmJqSlNKQDUM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_07,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 mlxlogscore=818 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260200


On Thu, 22 May 2025 09:34:42 +0800, Miaoqing Pan wrote:
> Introduce 'firmware-name' property to allow end-users and/or integrators to
> decide which usecase-specific firmware to run on the WCN6855.
> 
> Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
> 
> Miaoqing Pan (2):
>   dt-bindings: net: wireless: ath11k-pci: describe firmware-name
>     property
>   wifi: ath11k: support usercase-specific firmware overrides
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: net: wireless: ath11k-pci: describe firmware-name property
      commit: 02dcb6921b8827782e51e26593d4a2866576ab63
[2/2] wifi: ath11k: support usercase-specific firmware overrides
      commit: edbbc647c4f36e8a6375d07ecb5aad8e8b90de5e

Best regards,
-- 
Jeff Johnson <jeff.johnson@oss.qualcomm.com>


