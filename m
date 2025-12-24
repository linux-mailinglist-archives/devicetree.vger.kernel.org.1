Return-Path: <devicetree+bounces-249522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A37DCDCA4A
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:15:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 233EE304B03E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CFC8346A1F;
	Wed, 24 Dec 2025 15:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GRN5Dlpi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SkrAwOQO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8CB30F540
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766589286; cv=none; b=W87KwEK6wf+vlYIsIaJkw4ZCgHc66WsavGuaLUaNgQjeZRM72M+DTe272hsw6u0CdXIOEaZEnxW8z/dm4+2B31E6ZzT258VQguOJEgGqF+HulGNEsf8Nn3/ac5yjkhQNrjIUJ4ygQ6PxlJXY6agNCsqgG01Fnh3ocKhuDFRlC54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766589286; c=relaxed/simple;
	bh=C7VyRgzu8Sv7En4v0737Efe3C7QajOA1haHUuWuktfY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GkheWWAOoDO0UutMscacdtAPKDTtUJMseFUS0s+TwhJ5y5UKrsqcCBWbXjaHUP+v8WqRXcYjQvvU9+4af/rHx7VK3HaHj4cBDUUY9vHe76ce5xGRSUm2UchwxpMgnKZ/Qvowy4Fl/9VKuz6o71KDXaa0+w119BwHpL79510q/BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GRN5Dlpi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SkrAwOQO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO904nT700895
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:14:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KKM+jRWTC6pwMTUDyLDny66VCClXvGBoExeSimYocjc=; b=GRN5DlpiY3hSf276
	jkiZb5F24YTFcTiwK9W9mndw1r2i4LQZIJ9Cd2WyvscJUj+COq72WzZxIDs4JmlM
	2g8EeEvfDwAXG6skn4+hHl+D7/whOTULGz/PE/OmnhKYNHHiRgcK9Il7qXsfL528
	bX4urAidKQTDAgGMBjTttV1g4V4X2tRm4C2rLty4sj8uUEzElKolfSaFpwvZv1sD
	3a2NIUu7ocmJ+qyy009UqA8c8DsKBe79rDcFvKGYyURhOVnhMLtTThH2dmlBxpOI
	csOmNZi/V4bhemV5rnphcPBJ8GhUtUYJN7ecdeOSj1d4pPMDQEmGXvF9GRFScHFG
	2UJOBw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7t7jv173-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:14:43 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edad69b4e8so126651101cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766589282; x=1767194082; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KKM+jRWTC6pwMTUDyLDny66VCClXvGBoExeSimYocjc=;
        b=SkrAwOQOePFkPUap8SPqwjGyn+qdWnyS881ywe453x5FINLkszB1TeaYIQJabIXRv7
         +OWFy/SvOYZ5zMOdQ3rHFqAtPGF9VwNwmMvMTQVMnd9bFzu88QYfXGD/udE4YIxrpUwu
         0Lvm3XbPle6M3IiBmVKbiruvjFliwJtFnogTz3CG+t3fAXOQ8cNCcLR+ygS1P20Q9SFb
         oIheW5aDDTotLO802m5QZ1BXRwD96yxTJToLCaWXf3V8smkHdAPtyi6UGOY1FXFX4PvN
         zJqlAqCR7njD2329hFZiWoqc7xBRqEVjfhjLs4HJb0NvrTNkcg1ItBg2AAKeeRGdtipu
         kYwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766589282; x=1767194082;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KKM+jRWTC6pwMTUDyLDny66VCClXvGBoExeSimYocjc=;
        b=dQlgtvwuwsCEkeTMZL18bVgh6tbAvLPkqm4myyxHwAupX48ZoLzYt9hSliTUR43KdD
         hMNmh5Sit4gAwUVqrHDHnw/vx3SIvovmiNDwMdNIvp6NxT5w+T1apCNp02i+c5yd6xK+
         PY+P2wBbKOItIj8k2oias4cTbhHAxdjxBqj0zVXFdRdfdPx9akYkzeWssCLYp46S1yj2
         2gBEzqJHTI54LgdqswWRV00w588dy/nESFMivNwaN03tujVTDtKXEWKSbcRa58MFIfBn
         xf+ylK+scHcDWIc8bzRCvI7PriOQes2W+dtc6lWx80up7+t+n3L1riMp3dAJXDWrD/xu
         QS6w==
X-Forwarded-Encrypted: i=1; AJvYcCVvIutewDy2Fg6xNHlNSBUCN9RRlfwtly/6ftZPihSHB8c11nBH+Alpoe1TtNThhD4I/Z48d21YYhcj@vger.kernel.org
X-Gm-Message-State: AOJu0YxA1KC4sa46z/Y6nG1Ryt5orO3HiTNE+QhDrLdrPjt+2D313CsU
	RG+luAwOkuwsUrr2Ai5O9KZ2ReDNFhhWZNGln68lgPLj5aJvQG4L1T7Y/CMzC6jDC7l8qcfpOlC
	tlpfSeRnFBWc4DFdsTdgEsnAfrZf29H08QNR4kDPdgsMpD/ch6Q5NnqpNOnmQyHmLj0obbu+2
X-Gm-Gg: AY/fxX7WTgZ1KZMCdrUHamZDYn3AyfQ77a1BJ4QhedFXqfvOm7JqsT5EihINXeATJw5
	dGLh5yhT0qqUwcr+KL+5UQ/IhiPgQR61dvCCndga+ylyxv3q8OsjAFSg7pES6NHUSwBZ2FrxrkK
	9kx02IP986xK2y27XRFHolyhFTxISKhWWv5xdmvtgWhlDwYG7OS9+lGG6Q8WViryYSglTcgsx97
	9US26hXsoi5TiNqTCjqOEhXqA26CA15pZ+PGnKm7/yK5rwx87uxm3bjIoLXhdcoZYVK2k1WR5gu
	qhR6rfqlaO1ivoKY9PPxDZd/qPdQIX4jZWEjeKNytt2vS+GVLmPxzWxVOeAxnNfNsvR/mndjfGC
	2gyn+X4zpyDieaCN6Z/5Ib7QTdliwhW+D1aSAQrz1xYbgQcL3on2lI/xTQG6Tmn3Qam4DH7tYLr
	vDpx1lJ3veJJemedZLQh/1Ss8=
X-Received: by 2002:a05:622a:199d:b0:4f1:af84:387a with SMTP id d75a77b69052e-4f35f3a0267mr291702141cf.5.1766589282091;
        Wed, 24 Dec 2025 07:14:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEM4HWFmqw6RhOyxQti4OTXb9IzWD2XEC7FAdWT2Mo6yNJBTwSWTrYflgNoT+TqWdbIm/XUHw==
X-Received: by 2002:a05:622a:199d:b0:4f1:af84:387a with SMTP id d75a77b69052e-4f35f3a0267mr291701801cf.5.1766589281524;
        Wed, 24 Dec 2025 07:14:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185ea2d8sm4981675e87.45.2025.12.24.07.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:14:40 -0800 (PST)
Date: Wed, 24 Dec 2025 17:14:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: David Heidelberg <david@ixit.cz>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sdm845-oneplus: Update firmware
 paths
Message-ID: <nv3uiez57xmrfpcpkvqitvnfrbs6suuqor3a3trwugpvqxvr2j@6loizlgt5l6b>
References: <20251222-oneplus6-new-fw-path-v1-0-a2d366f9eb89@ixit.cz>
 <20251222-oneplus6-new-fw-path-v1-1-a2d366f9eb89@ixit.cz>
 <a8cc09c0-6acd-409a-a907-c3809b4f4db3@oss.qualcomm.com>
 <17490007-73b9-423b-af49-b89e33ee51f3@ixit.cz>
 <4a3041af-efda-4345-8298-9602561cb57e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4a3041af-efda-4345-8298-9602561cb57e@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDEzNCBTYWx0ZWRfX35mQPyely/Hr
 n1tnoPue7K6OblVQvYTSXa8r4BsVE3uVOln3TURiNcG72ChjTtwqt5vSykXAM0pIOm85owC/YTs
 IHpV4aYSX2PGQSWqVsTyps3eC1CRnkq7sXiSl3uQiAje2488nwgF+bcaUDAA6BUx9bgr9CPTU/v
 kBsd3tR8pW7//k0eQDy9WHhlb16EzkioR4eP94aBd7FtDj8jBcK097/aoxkRy6RnwQUhe/vZPyo
 CbcfNIoBsfpcusXINw1Lab3moEdl0gpFERYhRRvkfhwBZATXKP9gTkEvlN98obfbiYVbWArDunr
 0C8hwvw6WPPE5vgjRoiNnF24X9zusIn0Pt/ok3CqGhUH/hBNZYuoHRgoytatfn2auR/+QtAH5V2
 Yxle+Ux7yc9wdGrX2/qKkJwEwVq6LrFkyreVoZpk2BLDXkmo5g0tv/cVSl0xx+x5HUEODO4KbCr
 L9qhqXfgxGug1k1AJMQ==
X-Authority-Analysis: v=2.4 cv=IvATsb/g c=1 sm=1 tr=0 ts=694c0363 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=_ZC-_fbanAzVBMKBJqgA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: ZsSlXN5_RfZSxY-nCxTBcd7LgClh58YI
X-Proofpoint-ORIG-GUID: ZsSlXN5_RfZSxY-nCxTBcd7LgClh58YI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240134

On Wed, Dec 24, 2025 at 06:48:53PM +0530, Akhil P Oommen wrote:
> On 12/23/2025 1:21 AM, David Heidelberg wrote:
> > On 22/12/2025 20:31, Akhil P Oommen wrote:
> >> On 12/23/2025 12:35 AM, David Heidelberg via B4 Relay wrote:
> >>> From: David Heidelberg <david@ixit.cz>
> >>>
> >>> Conform to the new firmware path scheme.
> >>> Includes cosmetic cleanups.
> >>>
> >>> Signed-off-by: David Heidelberg <david@ixit.cz>
> >>> ---
> >>>   .../arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 23 +++++++++++
> >>> +++--------
> >>>   1 file changed, 15 insertions(+), 8 deletions(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/
> >>> arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> >>> index db6dd04c51bb5..f1c63794db979 100644
> >>> --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> >>> +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> >>> @@ -181,8 +181,9 @@ panel_vddi_poc_1p8: panel-vddi-poc-regulator {
> >>>   };
> >>>     &adsp_pas {
> >>> +    firmware-name = "qcom/sdm845/OnePlus/enchilada/adsp.mbn";
> >>> +
> >>>       status = "okay";
> >>> -    firmware-name = "qcom/sdm845/oneplus6/adsp.mbn";
> >>>   };
> >>>     &apps_rsc {
> >>> @@ -353,8 +354,9 @@ vreg_s3c_0p6: smps3 {
> >>>   };
> >>>     &cdsp_pas {
> >>> +    firmware-name = "qcom/sdm845/OnePlus/enchilada/cdsp.mbn";
> >>> +
> >>>       status = "okay";
> >>> -    firmware-name = "qcom/sdm845/oneplus6/cdsp.mbn";
> >>>   };
> >>>     &gcc {
> >>> @@ -370,7 +372,7 @@ &gpu {
> >>>   };
> >>>     &gpu_zap_shader {
> >>> -    firmware-name = "qcom/sdm845/oneplus6/a630_zap.mbn";
> >>> +    firmware-name = "qcom/sdm845/OnePlus/enchilada/a630_zap.mbn";
> >>
> >> I believe this is considered as breaking backward compatibility. How
> >> about creating a symlink in linux-firmware instead.
> > 
> > See discussion here:
> > 
> > https://lore.kernel.org/linux-arm-msm/
> > CAO9ioeW9=TPde4P=AOcQANvPv90K-9MkcRRgb7HNwe8KiOpFjQ@mail.gmail.com/
> > 
> > I understood the conclusion was "let's do it".
> > 
> > We have more-less 3 consumers here,
> >  - postmarketOS (Alpine)
> >  - Mobian (Debian)
> >  - NixOS Mobile (NixOS)
> > 
> > some of these using droid-juicer, which can be easily updated to update
> > paths.
> > 
> 
> Dmitry,
> 
> How is this "not breaking backward compatibility"?

Indeed, it is a very gray zone. There is slight difference: firmware
loading can go through the userspace, which can provide backwards
compatibility (in form of fw helper, symlinks or any other ways).

So, yes, we break compatibility, but it is documented so and it can be
handled. Compare that with the e.g. updated driver rejecting old
bindings and thus becoming incompatible with the old DT.  This can't be
worked around in any way.


-- 
With best wishes
Dmitry

