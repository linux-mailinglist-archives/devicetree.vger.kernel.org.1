Return-Path: <devicetree+bounces-215143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8DEB50973
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 01:58:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C6801C21E97
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 23:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45BE22951B3;
	Tue,  9 Sep 2025 23:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B07KJqz7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34FC28E571
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 23:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757462294; cv=none; b=G8zdHk7OUePb/H8bvKK/rjIYID5sR3uazW5cA41m5zeSwl5Gzd4CNNWVQDDcTkU3mcMnYKXcUo5yipI6cGK3cyxoWevPDw06QmLKA1vKQt0f+bPc6eHQQXdNJ7gddt+Ohz325UATzrkeN1vWsm3zifaYvmST/sBUnnk3wI5HI08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757462294; c=relaxed/simple;
	bh=fe7Tr8F9drQOnFSUuKLuzNZswkmtaijTbbG1u6UrfTA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N5AwgxFbUfxUktHb8Ey9wmPnBQGfPKfXborplvOEVsk++nDyBhIln3CyvQ8pixEuFrUeG3vJzmMbuSowjgl+jLClDZ59y9GvJjXU2QmaZNENws+L8NwGKw9viAJnaboMxvjub4PXuEDKMdxSG9ZaE8EzzO2SaJzi8dgdg1jLVcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B07KJqz7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 589HkDLJ011055
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 23:58:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BTLfkdmSnXwPfhf6JaLsw/cB
	ZJCDHQaerobrECuqh7I=; b=B07KJqz772Ekiebqkp4BJPj+PnmNyQFPYeAE8AvK
	BqZsy/mET0tSovK8PcmO647bz077pjf4fRRFvkMaSgXNgST+DFXP4oVqJ5K7SzxC
	efzj7zDnZjCpKpTJZbk4JGO0NrXcLRs5SFuyaItdLHRnurBpPaNEgujJUNkYVEl6
	gbDugvBCbl/sHlaV8Cj1E482PV40HKTVXbiOK3ppk+s7JBrJhyXr9LQHsQ/+J2Zo
	7BK3NxOhxK+Uo68GwEDQDAOeqaCapWT8GcpxOPNyleP1k3wkwnW9jCkQiR3ZJQGm
	Zlm73u8Da6x+F7nSzMZ0n/5/SgsPk4kBQkr/ndaQYyV34A==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490cj0syvw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 23:58:11 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-728f554de59so186129026d6.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 16:58:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757462290; x=1758067090;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BTLfkdmSnXwPfhf6JaLsw/cBZJCDHQaerobrECuqh7I=;
        b=SxxrAh+WWan9pcwrA/Gf74YyzmIAB+UG+xe7xvDFaH/z6LZ093FEuoV+Rexwm0AcPk
         d23wXaYdh3npLgSIyvsP/VVakDH8AfymGw88rJ8o5BA2JHH6dL6h4+FI4AQu64Cga86Z
         q2U25DY/QaOqOs+mJaQQ8koAM6mtZUi7O2tE7scuJ0uzbMZa5MbnCOqOWgK7C+746UNf
         6wloHbxVxtHoYRe/VgFZuE0WWvanASCFqs21gnim5VIsZaUFjjkIPodCDTv5Y1kaceXc
         G9/6M+RzPeqdCe1rEm4GvOext/9vxVezSzKX+ZVWguN4Ul3R1vRYKciHpKaPUG7eZqcu
         TpXg==
X-Forwarded-Encrypted: i=1; AJvYcCXdUbXe5LT6WochEokqbEXS/KWFzrjM3f1vX4QZCohyNQjOJ0odrGRmgeNtXm/vw28Y6kGSSGONyAwT@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwgk3ZvaVpPuZ9NrVs3HctWyNNKs2Umd1jPuwsu9tC+JAgYRT7
	ondxUM35Rz5ayUSgMRgn4nk6SNRRg5m1y9pmHRP21s6NlulwoxE8M9nqt2ovPJeWc9M4KmKWV+G
	NNuh9kgDMOC2EZ1DgufAwndIFc4xmQTmC/qIZzgUFHV7WpMdfU1chbc1LnTu4/Qoh
X-Gm-Gg: ASbGncvuPv+G4+6L/put1lYiEap/23G3SYs7CNv5WWYCzyQcBaVlZJFPcrWnMuKo8S9
	Cdk62eoKBt9gzN9CzREE4Waxcdf2ES5nMQfNtfJPeOhkpheXR1uxFHB2Q7RaXa7I1EPXSSS71gY
	PyC+bSu6MCz7vhQ4YSMuNiQ73zpmXNW9+o4vc4h5VeVFvX8/60YFhZoCqTGKRiJF+DyziX0MrXT
	8RC/SfPbAv6+gNB/dUUVhLsJ1f469t9aVKXbwHdwDLp0RNFC6g35OYSGfIJ4XO5m9JHctfMuE63
	JFpypfL6ZhmxN2YqWW+cRMeqYPjVxH8UpWpBNgLgZGtI+okxxTPKDPVysMpjQkbt1XEswElt7nE
	4pZYyeFPLoRd6ujLTp+rcXl1nOTHNjpJPlol2Ec1CG9GELfQepRKz
X-Received: by 2002:a05:6214:300b:b0:72a:4781:68bc with SMTP id 6a1803df08f44-7393f986de9mr142154146d6.51.1757462290490;
        Tue, 09 Sep 2025 16:58:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiKNC2l10D22DB5gczvPewShZ2x/WB8v5Th1kURt3OI/11b/Mje9eWmxCIFjoP8p2aZpkQeQ==
X-Received: by 2002:a05:6214:300b:b0:72a:4781:68bc with SMTP id 6a1803df08f44-7393f986de9mr142153946d6.51.1757462289908;
        Tue, 09 Sep 2025 16:58:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f50bfda3sm42505471fa.62.2025.09.09.16.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 16:58:07 -0700 (PDT)
Date: Wed, 10 Sep 2025 02:58:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: monaco-evk: Enable Adreno 623 GPU
Message-ID: <uk3dkufxok7sgjizgvppcd6oh23fae6sglilqzhytl7pf4rkbw@5qf6yn2wivrm>
References: <20250909-monaco-evk-gpu-v1-1-e14938780411@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909-monaco-evk-gpu-v1-1-e14938780411@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 4z5gBZmAFYqRKbpkh0IvqlHgho3v20CD
X-Proofpoint-GUID: 4z5gBZmAFYqRKbpkh0IvqlHgho3v20CD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyNCBTYWx0ZWRfX37uuPqE4jMCx
 Dl7Zi1L8ISTLkYxi2m05MHJ00d6u7e8jwZ1r6mdU8dEG/gFAlZZycaQrtajuGeDmtFpIsxns4PL
 LaqwXClsbVN06KOjNAIqppuDNVgC310pJSN45nJHOavGaMeGdhzzQgDaBoRbZPYP+e4OfRKaQD+
 ZwQ5Y+W9Smc5HB3oV0WeBImYAZUCjl3XSQloqwBX0aygwKvxWa2J+nbc5RjB+3x5HuKF0rX1S2+
 qNIOpiKgPHyRXQPVtu/sXo+JSbEtdI86qFeSU+BLkj1d8sl++7xo8PwomFGGHNDmYNKvyjmX+WT
 HBsxhdcKU3rG+iY7Kg5FwggEhuJ/4t1+UiRm6pcN8eCvYLI0qttkrK4MFVVLigATnbuZQ29z75T
 H1gKnPOc
X-Authority-Analysis: v=2.4 cv=QeFmvtbv c=1 sm=1 tr=0 ts=68c0bf13 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=aDqWJWFMxCdyT5shlmgA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_03,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060024

On Tue, Sep 09, 2025 at 09:16:59PM +0530, Akhil P Oommen wrote:
> Enable GPU for monaco-evk platform and provide path for zap
> shader.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

