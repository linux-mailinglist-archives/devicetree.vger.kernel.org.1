Return-Path: <devicetree+bounces-255415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BF8D22B9C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:09:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 24036300E8E9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29EE8326D43;
	Thu, 15 Jan 2026 07:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="goc+EG7p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UG/DDc/w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FAA51E9B3F
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768460988; cv=none; b=hLfGl/dSdQJpNTzicgryOutCbu3DXNXY7W5JKO/iEwWb9wx+5v/QtjtrjtA0ZswOfzGhY/NWDXEYWaIHLjSwmTr+B/ACkZLaiVlr8bdO0IROC0nrGAtHIbIxCpmKqG4PV1yhx5ivmfu1VPLECKJlmgjBx2q3sHkXwVyjbICRir4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768460988; c=relaxed/simple;
	bh=Eu4SSC9UnFJ0um+/LUAHOao1I8rBQ6XMZgYBCIagHdE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B4+lnesxBJIW4yZJXpwe+S/3b8H7B+LYFVGH9BfwOanX5CO+/mFHMev/wIlha0NHF+vhYJi5ieGDMTEXthv8bNyahWJq9ck+aWXdgheMwUActzTcY8ZGKef+G/FHYGqnjQk7YXv/2srQuyOxovXzjKIO9nMuAWsAIRBupI0b65k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=goc+EG7p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UG/DDc/w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fZeV606105
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:09:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/asDblb/TtKldHy+Wfrk3mjETafhWJ/JkfQAT52LXMs=; b=goc+EG7p7EFJk54i
	pzHAHC8TyWeCLBTXHddaP7z3ijRFeN+c5/iloHhATiLamHu0RG6o518DbCYar5VO
	wWrsRB1B0Eata9y6Cb7PMW6/qzVrB5YwzSw7aJf9oYuqiplPdOMX8gxL2ymC1y55
	aLO28nfdh6wDI6ZDX+SCCPFYX/LvCtTX2QYl9Js1dAEwk2ktcO8CJhztR9AUYXmF
	nRB3Ga3W7Ahep3dBl5BjuDyaGHW6/kQ0D2HeCIWmMLIzPydPD3cq8HDB6PD01Bps
	PrnDjPgd8MUaE139P3tov+IYZTxNphuAlu7zfWCPaI8J7hCdn6L3FFE2/Xj+UpR1
	e83ZKw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bptna04vc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:09:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c1cffa1f2dso463704185a.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768460983; x=1769065783; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/asDblb/TtKldHy+Wfrk3mjETafhWJ/JkfQAT52LXMs=;
        b=UG/DDc/wV8Y2O1YuVqUMxv0cwtSCY8pkYQrGNjo0j6AipjYV9jFu+CYMVWRSq2Ss6Z
         YrytOLvfrGapj8ON+Ma2PcTYehuBHbl53KmOKeZdPt3Qg6hsT1q3Vk1Slp2LDutLrPFZ
         h+x3Eu+XDlw6BVs1wovoaJTc1SIdjdXl6w35J058gzw65uqauSzCRSSQ57d7VvOuQ3AM
         l8CC2ZBasEzAa6Sm6VGvexErofgf8uTlfTYfQxYrMgk7RXXkGNNIfCkUhBZxLhV//Sf0
         vzbrLa5YGvOSY3/bKitxmmOqQldfADYsLuTY3G2gGhyuBO+eJYNReXLtMOPfPvQg1RWa
         yQbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768460983; x=1769065783;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/asDblb/TtKldHy+Wfrk3mjETafhWJ/JkfQAT52LXMs=;
        b=IVpnr77RGNLfMLIPusSVEA5nKZ9nNkFFCc4ePVszULG33udBFj3CGBZIZaRS/KqQto
         xIzCxVrDJLhbV60JrPuRFSr5gr8WX4O00lM+fv++NHA+Kxqxr1NHMXUT6dSGd+9P+iX6
         BZop0gWGhETeQrTVYzBiwEfYpg0k6L/b2eu+P2VhJ0Np0mVVGZwTPo3VXin4sS7KPxTe
         EgaO1OLLEwBrk+hkl2cOb3NTIss6c0tUlYwwD+I56EyHRntPGWwRpEuOtMQB8NmGRprK
         HLM3gFkzNAdnJwSTcVQfPUEz9rQ5spV2wOrOC/vss5FeZxq0SoeXlCozI0G7pSG72/NR
         vefA==
X-Forwarded-Encrypted: i=1; AJvYcCVabsM/ClwpgPn4ypUMpovijmIPrcmEbewiPUTSZ8FZhKNHc137AYOPerqWimS5v7LRVrv7sSaC4U3V@vger.kernel.org
X-Gm-Message-State: AOJu0YxBEtinBxwjjYRLjI6Wywk0BtSrNzz5DeWGe+5YO44q4LU9DLDi
	rirbbJZNQxNT/eJ++fb+Y6x1Qn1lRI1jT82gVhdCHZDOBAmanlM3du4RLFYZ/6+s8O0TGhP7bEG
	KqhTUe8BawoNlBR0L6AwVgpU0KhE3VKhBSBcaiWUb+Rj+fez7520J1w55sC1WvCgO
X-Gm-Gg: AY/fxX67G4oy+RjjS6TK0sdf/1wuerHsRK3u2JL00f5/s2mIBgBOpVHcaabxrTWIMdW
	4uLX8fNHpDMVsJTrmGzOutsFRdpmz7ylvo9g+fF9xSe0jYgZ+j3qZ3J0V0efLoowJ+9UGXYZ1f0
	zxCfuKVb/HzuSYYW/4iIo0zbY8U3iHZpt8EWSjlOGn9PcZuOI9GpSqZk9ms+qYsFYYBWOM2egs9
	sQYcW1QtMBm/i8tExsCXSODLe4Tznp0C/MgzxqO/iZOSnBqNTUG6izo2Eeig8E3TMAdsFA1zpPr
	03LYzuFt3ZHNgX2bqPBCAwDSdFDbLxFGEHMaqmOFKNffN03RENZiimrgXqgwwHOZyrK9rOy/mPd
	XYcyUm1BbX90mhuqAEYRI13qTrM+fn71dTihhTfCSwyJXtFNpQUXCXikwX5/UuTSnwFfy4VpaDl
	B5KyAHk54J0ZxlkRWaAuYwr34=
X-Received: by 2002:a05:620a:4482:b0:8b2:eea5:3325 with SMTP id af79cd13be357-8c589b979bcmr306248485a.14.1768460983092;
        Wed, 14 Jan 2026 23:09:43 -0800 (PST)
X-Received: by 2002:a05:620a:4482:b0:8b2:eea5:3325 with SMTP id af79cd13be357-8c589b979bcmr306245085a.14.1768460982633;
        Wed, 14 Jan 2026 23:09:42 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba101bd2fsm1454874e87.11.2026.01.14.23.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 23:09:41 -0800 (PST)
Date: Thu, 15 Jan 2026 09:09:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: Re: [PATCH v3 03/10] arm64: dts: qcom: kaanapali: Add TSENS and
 thermal zones
Message-ID: <4c44mmkpsnj4cn2eh2xzraiw73xmhtx4qm3xiyhecm4vyou7os@skyj646r63d2>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-3-a6cc9e45de93@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260114-knp-dts-misc-v3-3-a6cc9e45de93@oss.qualcomm.com>
X-Proofpoint-GUID: 1A4xpO0VLhSHDSeurkoJMS1K2BAIZeI0
X-Proofpoint-ORIG-GUID: 1A4xpO0VLhSHDSeurkoJMS1K2BAIZeI0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0NiBTYWx0ZWRfX5cPzM/eS1kDg
 Z1XW5KfOasdQMU2mZNtlkiIj9voAlTtpDBLgl3HB5iPJgLm/rCgNRq1kKd30a1NE1pTx+eE6azi
 0bYN6tpqySgJKTPv3RY7G6sNtXD/ZbIyANbJBA6ZRtYJiiCGNppBeklfiOn1arFDoSIu/eROKJK
 U4MyRhxgAVfvSFme+pmui6OrJ/59vWk0DsV7oVs8+/yeSPB7dJdxAgPAWRw/iwS16yvFjE/GxpI
 lZgHHG6wsgBFhwkuff+5XolYAkP6DhsGTBM9so3Dn9acBfT0jeXVWizY3gVE5FA0nPwPjTwOWFg
 rt330OU1bi4jxBpFYt5SI4qKN/G9fxy0LoCR6k7UrQdeTihofOXUqaeqgi6qpeiZdTNXrCEq9v3
 4mERpsPJjNw4ac5O/qzAclpVNAGy8t87AI84C59WSFbMETy1XBxkT1hv6vliYwHh6wtO8J2GTl6
 7ichb4GNwlHHaoRUO9Q==
X-Authority-Analysis: v=2.4 cv=fsHRpV4f c=1 sm=1 tr=0 ts=696892b7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IgRqWzm8WD52ZFsVCEYA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150046

On Wed, Jan 14, 2026 at 10:49:05PM -0800, Jingyi Wang wrote:
> From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> 
> The Kaanapali includes seven TSENS instances, with a total of 55 thermal
> sensors distributed across various locations on the SoC.
> 
> The TSENS max/reset threshold is configured to 130°C in the hardware.
> Enable all TSENS instances, and define the thermal zones with a critical
> trip at 125°C
> 
> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 745 ++++++++++++++++++++++++++++++++
>  1 file changed, 745 insertions(+)
> 
> @@ -4795,6 +4879,667 @@ pdp_tx: scp-sram-section@100 {
>  		};
>  	};
>  
> +	thermal-zones {
> +		cpullc-0-0-thermal {
> +			thermal-sensors = <&tsens0 0>;
> +
> +			trips {
> +				cpullc-0-0-critical {
> +					temperature = <125000>;
> +					hysteresis = <0>;
> +					type = "critical";

I'd really suggest having several "hot" trip points at a temp less than
125°C. (And 125°C for critical looks way too critical for me).

> +				};
> +			};
> +		};
> +

-- 
With best wishes
Dmitry

