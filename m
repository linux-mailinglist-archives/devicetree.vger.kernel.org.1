Return-Path: <devicetree+bounces-249312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 98437CDABAD
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 23:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C2E43028DB9
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 22:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39ABA313539;
	Tue, 23 Dec 2025 22:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YFd29TVw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I87AxJ1+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA7F22F5479
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766527654; cv=none; b=S+xJOez9agOStkNDp+IvTDJ79y8jy7P5dILeK5typ7sUHfYh+oEb/wtMqzK4mIJ02i7Kmxz34w+vuwJbtOKaW4scM6shxN5GIZojGBaskN7fd5CnzJumK97xzHDKlWgTh27TUUgCXyPdpHu8vhPf6rK4ridJZW5xJwNkN7WTOgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766527654; c=relaxed/simple;
	bh=kJ6A9Z6HvMZEUHbr7Q7XTfu57spQyEQe0OVGolSuK7w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kfwmrmsjv+KaJqAp7DMmbFzHNPmuq0Nk4PRZoqNmn/s6DpvxPT8AKA0x1mkMSQOomnJ2BlOM5Lcza8b2882i3/PVOW0k3yZ39nCN/Tml2uG1kq8mtyEzBTg0n+G5FhmwD+XgofNmauhGxaa+MnBawih9K8M7sYkwerZfN0I5Xsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YFd29TVw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I87AxJ1+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNJCpsA1056165
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:07:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LQuCfX8+rEyo1RCxaU925wq+
	S7hu1DiBkGOsodIaURU=; b=YFd29TVwTeNuJGTXNIMgMtmLe6Q8yt1q3nzThlPX
	8GDNoKAz9oXMTbACn2bUDLys4zoOHi8KUVVOQ9gBysj8r4kpnvbpGuOp4jnTULQZ
	Kx5IKj4mquEUcJ36ap83/BUDFZmn/JOKVUUjaVCG+CYYTNkHiaBDNibThNKpn1Dz
	nTEZnVihR1VgdEzxulRgVgtUtgKY95xLCTlKw0lqBo7g7aFIw4qTxiFeCl+ZpjpC
	5m/wDdJT9jEElJOQ7IHOuPTitYUza/opO6/TRBbYSeeVmepmK6caj6XBM3oGYTpJ
	2vS0mk14lqKk96/WWCYJwP1ATNSSyt7VbOxD4SiqsMvCSQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b811v0jah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:07:31 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5dfc0924912so3347943137.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 14:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766527650; x=1767132450; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LQuCfX8+rEyo1RCxaU925wq+S7hu1DiBkGOsodIaURU=;
        b=I87AxJ1+dOrDg/imcZuxA5eDg2LDRd1QYtIsrcpeecTcRhkBf/o4O26uaP+ALCc0nm
         Me/XHiReYGA2cF+3t/xP/ssl6UsUPU9+EMfnUAVL3jRuniqZviEjyY0pNf124GiNaA99
         7EeXhICi9/EH76uGP/zB8OFwaoBsS9fqenmavPVmC9S7X7Whjfgr7y2f7XkHyZqy7WN5
         2WTEJ19IyVhT1+h0IC6KBFlXL00E84L+fGj77Q8ztvbMLdVUY3t9X0XzQkQdLjsJLVeb
         +OJO/qXcpmqU2PR2zE9SkuVhGi+UYfZ+fOV+Aj1GJ3MfPDehb0E9WnrvhcbdcCJa2xhk
         JBug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766527650; x=1767132450;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LQuCfX8+rEyo1RCxaU925wq+S7hu1DiBkGOsodIaURU=;
        b=ly6JxeR23HyvR0e098nZFKR6BPMg8d/yZ1P9H+KY9BWbjHSYkeJy/DEeiFTKOcJ8to
         6FSMSKwGg4zwiOR9Th4rJdij7J4o04lk982DBF/8apsR3/rIDr2LUNo8HW0uEDECP5m7
         j2t8XyKhRFLXoGoWX3fQhAudGKvUfCPdxV9Aydr3dQSYwus3eUH9QrDcXicU9L9tcF6I
         sK8lhebeaO0bcAWVGf/z/P982/QbPHcewy6xaJtpkuKnm6o0gwaPM13UzHQWIPkEN2cy
         OhPhcUSmUNzsZ8STqBCAtLnB+Cq4XEQYoTU2mwqoLKvh8xnEynL1hhgTJ4oxdePEWRPq
         8HbQ==
X-Forwarded-Encrypted: i=1; AJvYcCVD6xmdmJvE+RLMCsovuMpOiHuhjn6z43bwB8FRhe8poCSeL1XFFfQsOMuquolaFcaaT03y78u9Jn/l@vger.kernel.org
X-Gm-Message-State: AOJu0YzJEylEHS7z1PriybRIhq55NCy4KZ+MPClOEBoECqCodSCJhWuH
	Ra68Eggdc2aJaoEgNxeVmOgDpay7UjnCp/cCbQJDDAfyeYjhFjTrfyGhl58QDa7086rffAevm18
	5564d22fgJYIQDvMC7tAmMrWI5L7cIoMYkYs/CPp+r8ZjBvADN/ZZo3MU4+TW3kDVZna3AiT1
X-Gm-Gg: AY/fxX7vCWaJWEpo4Qm4stIy/396rK3nPfypCpIUtmg4+gyG2efSM7XOhVaOJShf7KH
	c3TbxmpKHxkaVfI2vYOD+E8+V5pEUz0hYTNdoazpPAqctkk1JnP0PprvopL5MFToChhmQ2vuLij
	ciRv81rzBYX9Z9zUJ7bIKJ++cjYjKjxby6Dob/YnEhJ4aG1W4r2QDmpHQIUhiSBBobksK7++l0Q
	GY7MkeJMytp9Hlf+qFgWM3MB3rai3lD4PP8GKDOA6dKfSAQLdERBtE0kCatpcRz9/7fu1l9+wnh
	7YxCTuoCNgx3BQ75FNc7QdP8g8H2QNWg56hZ4NGcZeXhjZpy/I8GU7zcqWp+NUgRfHNh9TErrv9
	oGdd+ANPbn+ObxMEUm6hBVZuZWZyzVWTlg+eKDnNPHOnyQCfyvILzQ55e9SsI4B8M8TS7Lx2Wpd
	zl4DC+BB0UvOuHvAnWvySTV4k=
X-Received: by 2002:a05:6102:f0d:b0:5e4:9555:8968 with SMTP id ada2fe7eead31-5eb1a7ff4dfmr4609667137.29.1766527650063;
        Tue, 23 Dec 2025 14:07:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHu+G5dBnDuhFvzI2rn5XiaQBY0vWWn4SzQu+3LHZShFfiM4GYL5ET6iXeBx4NgKCbF+3iVrQ==
X-Received: by 2002:a05:6102:f0d:b0:5e4:9555:8968 with SMTP id ada2fe7eead31-5eb1a7ff4dfmr4609654137.29.1766527649584;
        Tue, 23 Dec 2025 14:07:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812267b184sm36534601fa.43.2025.12.23.14.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 14:07:28 -0800 (PST)
Date: Wed, 24 Dec 2025 00:07:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sdm845-oneplus: Update firmware
 paths
Message-ID: <vif3wnb5zbfsz6hpy3fcesiuav2hcc2cwflnzxjk67ysfiuwfj@sktqfukjjuog>
References: <20251222-oneplus6-new-fw-path-v1-0-a2d366f9eb89@ixit.cz>
 <20251222-oneplus6-new-fw-path-v1-1-a2d366f9eb89@ixit.cz>
 <a8cc09c0-6acd-409a-a907-c3809b4f4db3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a8cc09c0-6acd-409a-a907-c3809b4f4db3@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE4NSBTYWx0ZWRfX7V9fnapT4Yjj
 TgLa/bbs5Q9eicwpC3rauCkUq2/+T5HQBv29vh4DozH5lMowgo++RWUXCr+76u1MQeUfBNo6v2h
 OY61zf0MNXLBcooLZJM8GRN0H+B/9T67Wbxu1eu56e7q5Y/1B+KBRs5dwGMvqf5oNqFPxA/0cqV
 cQAJR4ZpAOCiZPTg6+iFzJFqw66BZlJN5AEaHshlc4Q8ZGm8L+aW05Ny4gNbY2t5e6XTbiBKWci
 xz3kSgAcM1Y6HAt/bfJZSKqcqyhPaFTVQJdM04lFhYE8xGmkgFPqEb8ckteW/Cdgts+bds6t8vp
 c0nnVa6G22Xs1GQ0f+Ga7DYRFiZrdM3D9/iCgtZk3BkBFbluAVYm3R7rII4f2R7cPk7Uno13y4K
 +lM+fApPlwFVKPkvdo/P9cjZN4P48e09rPYgJLrAtX1Bt6yXENX8VBwQmtH1zK+9GNlW1+Rvs5m
 Od5HjS5cb9CWZHylJkQ==
X-Proofpoint-ORIG-GUID: I-R6Y9HxganrwQ3XTnK4E62V87OIKIiw
X-Authority-Analysis: v=2.4 cv=WegBqkhX c=1 sm=1 tr=0 ts=694b12a3 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=P4tgLtp6-QdJW8cC12YA:9 a=CjuIK1q_8ugA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-GUID: I-R6Y9HxganrwQ3XTnK4E62V87OIKIiw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230185

On Tue, Dec 23, 2025 at 01:01:42AM +0530, Akhil P Oommen wrote:
> On 12/23/2025 12:35 AM, David Heidelberg via B4 Relay wrote:
> > From: David Heidelberg <david@ixit.cz>
> > 
> > Conform to the new firmware path scheme.
> > Includes cosmetic cleanups.
> > 
> > Signed-off-by: David Heidelberg <david@ixit.cz>
> > ---
> >  .../arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 23 ++++++++++++++--------
> >  1 file changed, 15 insertions(+), 8 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> > index db6dd04c51bb5..f1c63794db979 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> > @@ -181,8 +181,9 @@ panel_vddi_poc_1p8: panel-vddi-poc-regulator {
> >  };
> >  
> >  &adsp_pas {
> > +	firmware-name = "qcom/sdm845/OnePlus/enchilada/adsp.mbn";
> > +
> >  	status = "okay";
> > -	firmware-name = "qcom/sdm845/oneplus6/adsp.mbn";
> >  };
> >  
> >  &apps_rsc {
> > @@ -353,8 +354,9 @@ vreg_s3c_0p6: smps3 {
> >  };
> >  
> >  &cdsp_pas {
> > +	firmware-name = "qcom/sdm845/OnePlus/enchilada/cdsp.mbn";
> > +
> >  	status = "okay";
> > -	firmware-name = "qcom/sdm845/oneplus6/cdsp.mbn";
> >  };
> >  
> >  &gcc {
> > @@ -370,7 +372,7 @@ &gpu {
> >  };
> >  
> >  &gpu_zap_shader {
> > -	firmware-name = "qcom/sdm845/oneplus6/a630_zap.mbn";
> > +	firmware-name = "qcom/sdm845/OnePlus/enchilada/a630_zap.mbn";
> 
> I believe this is considered as breaking backward compatibility. How
> about creating a symlink in linux-firmware instead.

OnePlus is not supported in linux-firmware.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

