Return-Path: <devicetree+bounces-228519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CA5BEE94C
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 18:01:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 608344E977F
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 16:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A0042BDC2A;
	Sun, 19 Oct 2025 16:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I8NTMZQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD0A227B9F
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760889699; cv=none; b=bD20x847QoURMTeYe69dk6fnmzgeypLKOXpx3s3fAEjy+xQqXGrR441iBk/hZEVpU48Mh+3HQQIItSEt6SVJ8Qri1sl+Dbei2JDXRnHh/6S0U9gG/6VAsUzVh4jW4vM3HDJGsHERfQd2Z+4amTpZiyJLSAu0W7zSQk9ajS5+W6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760889699; c=relaxed/simple;
	bh=Y0iJ/9eyYoK3n3lm0hBp7ryvH71Ibi/uouxRKsL8GCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iEzQSZ3ZIAwU4g0790/otkQVNwb/06ikiUPqbTNnPxEGJnye3Kfg6CBuRK446aVk1AEBFCz5uSIum0OsEYLyG16kFmF1dOG5eOBZZSXY+3jsxbDUdCzVhCYULSoMoPdqJBwdOj0G9qPSaonUg46hrLHlNdUkaRwyJXu/2VajSRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I8NTMZQF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JCA4Gf029977
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:01:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7rP7pPU2oH883opYvKMVKA3t
	WKGuHzQFE50XbgQsV2I=; b=I8NTMZQFu5H5gWjo1xihfJpbicuFbwvN+TinEeDN
	Tn3HNQtK/qY7cfH9cEd8lkpZVSYYtOaIER7kdQgUJzerkOlvi3Z+Z0Ridv3T9DaY
	ZQ0wYvJmY/9wDDJT4kvDCaTHzTx98X6xLhujkKoivfVH2oxdVzCWOnuDETP9XWQ9
	22fZqEdepDld91YJBTVKOpBnWb0EPLUxxjJqGqSOdTu+7b5xhmMFInYlNS5Im7CQ
	f5SPwivV6pX3VXlmA58sgF5ffcLHzUSIMXG2Ys+gimr0LYjHaMS3SN2g6RgXytLF
	pidetQtlOHVXfdTn5BO+S5zFHwuqBqxGpPJ3Z9xGHDr/DA==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42k2gfw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:01:36 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-54a887b39b2so7325537e0c.0
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 09:01:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760889696; x=1761494496;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7rP7pPU2oH883opYvKMVKA3tWKGuHzQFE50XbgQsV2I=;
        b=PH2Dje25LqKVFxZkKHyKlhmZr/NKlITZpkgfcYUoX10ZcCTWxxYYJ3yivRxlGtG0uF
         pfPvT/4hOPpRudc5z5gK5TpfkoZV7Et+kMMiHNTzHad42dmPhsH2iROWpoAOlw/allYI
         588FGwUhHozCuGEGe3Y74mSnLWIQbsrkD7M9oAT+UC/sLBxx0Ures+5glkk7OHaulILW
         t6+WmxfxJ965k8BrwHZFAKxCCe+HupmwVtWQzKZdo7CoEkSYJrc8uNNRUY95sp4ndDDU
         fw/uqaC9wY6o4SaKa/twcuj1yy19QhlHNm+HBY2hW6C+dutIyJoohen+xRtyIZYzJ29G
         XCmA==
X-Forwarded-Encrypted: i=1; AJvYcCWQdRHdlzBy/fWzDKUOb+MpN/QogXYxU11i4WiTlP38Nen5LCU/ZZHe5FrxhbEMeDFLgMP/MzkJopTs@vger.kernel.org
X-Gm-Message-State: AOJu0YyN+RlHaOgxdAizHrL81tXaar/2MYNtWx6wS/DI9sr6G30vInFg
	memsLYE3pb9CThmrtf2Z4t1hWIk8rKrFRJLR4hzdqLzoMhMzQu1HxMBrimmosBhLex8DNHPgKbn
	rD9eGX1h3KTEAisxoAbPJUBqShttUZnE5fDQEd+SwlWGjZvwdaSClvpn1CA3pQNa6
X-Gm-Gg: ASbGncsXGjr5+VaRNItP2xrrNOGAaew9wvu6MZqi/asZty/0BKUU6J2NUzvhCLw8kZ7
	wRDh97XCbooRk4piN3oCPF/qyISjme573wSNRRKiHyMETQBpy5Fqtmir5nptk45KUXUFVMCtqIM
	uzyCt71mjGl3JsTpj24/Uin+IoHregBGmevAyxFAOYmcNofVhXvu5mOTNo4jOCFWIpwx9yK6nGk
	bkMhLubIu0QA2oQXxQlhDy3aWGAtUgqawSpwLfwuFAvNJhbpMF6k9aJMF1dxBfcy4A5Ofi98+xf
	GFW6jeCGsMVSlZmHcjVAORJwoJtVDaOqcYyTir76TuyJzKv8CBuXJ2CVj0Y95IUS82dHZrMSnyK
	mvpTcLooB1sU6EKQw8QBvB0vsK/HlhDT6pclzH+qq2Zyfb4VQF4ZbNK0THzrRF4bOpAONofpa7O
	N8Vz03syXPiOU=
X-Received: by 2002:a05:6122:3c56:b0:520:64ea:c479 with SMTP id 71dfb90a1353d-5564ef2d46fmr3526024e0c.10.1760889695629;
        Sun, 19 Oct 2025 09:01:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4xGLbXTGWU7Ds5/rjiYwy6R8sjX5nyK0xmuA8TsMBsOkfH3epiqp7Zx0TK0V0Yx3i/1E7lQ==
X-Received: by 2002:a05:6122:3c56:b0:520:64ea:c479 with SMTP id 71dfb90a1353d-5564ef2d46fmr3526006e0c.10.1760889695208;
        Sun, 19 Oct 2025 09:01:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591deea8cafsm1678400e87.2.2025.10.19.09.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 09:01:32 -0700 (PDT)
Date: Sun, 19 Oct 2025 19:01:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add '#cooling-cells' for CPU
 nodes
Message-ID: <itksdoavfha6xnozfrh5jcc4g75gcfyxp7ns75yz7xfb6wruy3@qwkcavvxrljp>
References: <20251015065703.9422-1-mani@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251015065703.9422-1-mani@kernel.org>
X-Proofpoint-GUID: _RZHLvQE_D7N2KQHG9dGDsOAmIiS5kNn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfX0jMgy/AKtv8s
 Hw4QaETy6Yw6K/5LDLrsraQOqq/GSZ5rHboHF4CFog+Tj+Av6Ne9LUDHq5wMxBuFImzQsJsnrDo
 /+iuGuaR42KYHbT+spey+2lcdWSk6FcgPqLqysVBfY334lPluxbbjulzAAxJZnmWKnaLLdMCbYC
 Py2Awc/htMP3RB4FTT7OBWRCuN7wHCX+Z/dbymMCRoYtUkG7m8c9upex4UVV75SxcHbhdnmwVmy
 MCsxZ8HBLoJjOkVvAVlTKU48nVdSM6Aeyons6fSZIqPra+7DA5QOq3fRaODyfjFIAccyw4+qd1T
 IdsovHMCe58pz3+JZOZlZnuBlq8DLp+T1+XNQ4miVxJa3WmBO+OW8/23RP+mdmFXDBUjKtijj4F
 KW3KVGxyMab36ZLV6Pg7JR0+0ywLMw==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f50b61 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=hfyut2BFMVRvG-c22TMA:9 a=CjuIK1q_8ugA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-ORIG-GUID: _RZHLvQE_D7N2KQHG9dGDsOAmIiS5kNn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

On Wed, Oct 15, 2025 at 12:27:03PM +0530, Manivannan Sadhasivam wrote:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> 
> Enable passive cooling for CPUs in the X1E80100 SoC by adding the
> '#cooling-cells' property. This will allow the OS to mitigate the CPU
> power dissipation with the help of SCMI DVFS.

#cooling-cells isn't enough, the devices need to be listed in the
thermal maps.

> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

-- 
With best wishes
Dmitry

