Return-Path: <devicetree+bounces-171035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BBBA9D0D6
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:52:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 802D23BDBB1
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 18:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B092921ABB7;
	Fri, 25 Apr 2025 18:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZoZMyAp3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489A0218ACC
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745607076; cv=none; b=lRjF6zkEUpRzDnUbiBCr/xc0eLe59CcE3attTNxOwHo/0S0exjl5+mwGEqihMx29q3B1aAHBr/nd9QmppJOa3XWOYyGdkDWJWOPbZIPCL0Tjv1NL3rty6KIlq4upyWftWxfd44wYjlVsRail/UK66mD1sKog8fLY6Ov6udC8hKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745607076; c=relaxed/simple;
	bh=Xk3Sp6BJoGmDDVZX1C8dwi3cwfy3wAIPSXdwpAs9Yhc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JddSKJopzxeqp9KXnQFWEh8blGw+Fw+ntvpEqYJiQaHEn4pU1Rn5Hnw/uFZaG4G6RmVImP9AJTATeNEcnMoUMZ8yCesNEp8EbuXIdWCHB1fOigXWhTkcZ3m96smDIVTnA5SP2r6Xpt67AO6T72mnSJu6hTc7nEzTmEPSuhtcsrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZoZMyAp3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJwMK000450
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:51:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=v9ycmtWdw1mtAhGHJSYcNQ5K
	fW5PbvOj2z5I1djYv/8=; b=ZoZMyAp3QbpTs1G2QNa5dWk+t0wtxLTj90QwHWzE
	Ah36hsnx/2wV6owXR4Ev7NebAXTosXxKxlut9mUxShTe4Nx6PAeEcgKG0tgOYSmw
	ViTgXURVp+NuvTeOYF4oDlqZTevuYTpAPL28fpVIxoQu6nzWP3ZSWEZ5t7d9puTT
	uvMc97BbPCMMctoKR1vxj+BcUXry4X+Re0Hp3xlWjeFww7XXjwBiJo8SsK7CdZDe
	BxgpSTl0PnFskC/guOAipes8sHkbZ7BpIXUDQGMDjajA66zsYKf4FxSJLFPkcS2q
	85gvO9tse5CJvOuIIsNTAZQyfBWkguiF7XLR8WwWCzV9Lw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3hyxt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:51:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5e2a31f75so793733585a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:51:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745607073; x=1746211873;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v9ycmtWdw1mtAhGHJSYcNQ5KfW5PbvOj2z5I1djYv/8=;
        b=a/yIwtdHGjzxq4w+43k2SIp8gEo4LH4ZdBGw66yPmqjQXDvoJo8PVX7RgjQ3/Puv12
         EDetPUsMXBl5D+ZdXOOC063ESIBvA4Ue+FwcbCTR6wtj+6ecN58zQaOs5nk7VvHBQ/wX
         A/cwQvqp3M+R0WNRDzukpszzRnh3otqS0+e4KsTeLfIOZFD/w/ZZT0LgDpD4ncMlTEaV
         c4RKz3sNrH1RO3PuqBfJ8+UsgAM4qfRSNIQKlBE7iX5sLW2zx0frQ4zgYdWxUg2/YoiE
         4yrGKci1gHlG8PVn6njgd13K3fWnYhurfCtA+vpe0qARLZXMysbndP54C6Vt8xspauB/
         eTyA==
X-Forwarded-Encrypted: i=1; AJvYcCUC+uT5aIw8B/fXdsxl8FlNmj6RyauZ/jW4uYqTMptPNbdOVEwQ8Wo3BshjtCXLgta/wabclmjcp2Pl@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk/yiNBHTGfvo1ZcVbwGmYy5GTdH5B6wxksTI8KxWW+IzsVdWt
	FsyAn2Vm3J++deIV0nmteC3CMTHNo/1mSJHY4Snwt3Xtm7ineVznMbP+tBYZvLNcPNaFR4HvRup
	N6o+TylaGpqkPVHviVInJi/V9z68LOUcA0tpNAsanqXHYgKulPmTB8BQCMJ0g
X-Gm-Gg: ASbGncuyX/V4wzvkAx72rc7UgWr/bzCB/VRuTX5B/dnSNOTG1bEBKRUkJBOK13WnNNI
	n8bw4GP82OxujqZo7Z9FdgEBqOCQFo6fChDjDqgyJa2CNR/IPd4mOXhXaFZBsiZFl/6iWuniYyM
	YcrtYB+FqH47+m0SkImxYquYpOO53Z6TdTOgtqHcp1h63bO7ycHgeK1LLkWVSq1BttlFMfWYaSf
	rUL2wX9lJ5IsD0b7GZPoGidy0SvuhBJK+al6Z1kU/63NobajkBu1E5aHM3njJjx+Gi2C5I4w4EE
	LI/KBRegtrXL7IqPDGIahvPF/ZFwf1oUWgk+7jolyCTDaiagrxMB4cEdIwZQ/4j63TXO5Zb5AaA
	=
X-Received: by 2002:a05:620a:3914:b0:7c5:5f38:ba59 with SMTP id af79cd13be357-7c96684b108mr97522385a.3.1745607072877;
        Fri, 25 Apr 2025 11:51:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgCfAsOCyq06CGmOi0+/EEgnPyEjUIBFlLDUeeOlp0nhMgAvTxmeVrtGr4SRpqobWUin+HKQ==
X-Received: by 2002:a05:620a:3914:b0:7c5:5f38:ba59 with SMTP id af79cd13be357-7c96684b108mr97519085a.3.1745607072590;
        Fri, 25 Apr 2025 11:51:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb258c2sm706677e87.32.2025.04.25.11.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 11:51:11 -0700 (PDT)
Date: Fri, 25 Apr 2025 21:51:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 10/11] arm64: dts: qcom: sm7325-nothing-spacewar: Use
 q6asm defines for reg
Message-ID: <hr3sg23xifgebofy64l2zsybelsbl446c5e63i5s3f4bhotae5@6tl35nmeqkx7>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
 <20250425-q6asmdai-defines-v1-10-28308e2ce7d4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-q6asmdai-defines-v1-10-28308e2ce7d4@fairphone.com>
X-Proofpoint-ORIG-GUID: Gjgvu2aGODrwGK8HjSoJn1jyG0XyDYwZ
X-Proofpoint-GUID: Gjgvu2aGODrwGK8HjSoJn1jyG0XyDYwZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEzNCBTYWx0ZWRfX4EE0Wb2l5TTX OXU5CDpgKX4eBFLY8+OPafJUd8/nWy/QfrocwiNQV2DzaAEEaI0tZ5KEU/va8MK+iJVh8kHSsZR G9DyR3GiR4KWIvkNPqzrkUkPpBp1DWvkmbcCHRTSNyIlK7BYBNgP6yApIFLW769nq2hknwjLRz7
 cgpkdwR9SU8a6JmSRkBj6kNC+9mzB68khuHkyuqGr8caLZcvljo7DFIfnjuzxQwnEPCDbgqXbvs 2ueS/aYwgo5B9Q72WGN1VXZFVKh/5yOHb2AcUvmY3qF6h5q7o6yOCslF9UgCViFBrskq9mbXv26 pVHh6H0tEC10E6bbydA2CR2umDJYHC2csbdW26+aQz7VNfCPfAk0NWGE6iVFxHI1ueaa43EY9lj
 /beyTl+9kLO92K3w9c5NQoxDDc/OsqOwnwU8byClGbo30mT6tTJdsDIpVb7dYEVkaYCHXlop
X-Authority-Analysis: v=2.4 cv=Mepsu4/f c=1 sm=1 tr=0 ts=680bd9a2 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=0uHdMyS-I8ESt-gxu3MA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=534 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250134

On Fri, Apr 25, 2025 at 01:53:49PM +0200, Luca Weiss wrote:
> Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
> readable. No functional change intended.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

