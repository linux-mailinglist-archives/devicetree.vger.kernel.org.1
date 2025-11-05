Return-Path: <devicetree+bounces-235333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 82ED0C36FEA
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 18:14:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C63F318C3A0B
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 17:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E342E33DEEE;
	Wed,  5 Nov 2025 17:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pv4jYy4I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CyyjwFBZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1EC334C3F
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 17:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762362182; cv=none; b=Srn7wfCBiNTYekEhdbYHzG6KCPWSsPAVHr7og1/rSfBYymwvlytUHyk9JxFZ2ajlQViVUQyHyKUAalIzRAot0SGHa4xrlBYeZLBBOF+Idzb01WQ3KpiywLlerDSICJvjU9USJt6AFro16rpcVuaRE+Hh1VqGeEA10BY0QUhlok8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762362182; c=relaxed/simple;
	bh=yp/bnWLHfETEVmldtVZrLCIHTQ/Vp3q+ORHES0tz+Uo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z1fVLH7As72iTEuEfYlH6E/re6EzoLSk1y9qRBQturASgY6N2K/ORA2yq+8LGgtySzH4p+0gGOefigAgkrkQylulWfgGq3pBCdVjfsZ9W05a1SZhdMmbR19eyYPlMXoHeG6DhagpunNZWilyStUhx+sXIjvCh2Frpur7uheg9lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pv4jYy4I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CyyjwFBZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A5DOYhj4011469
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 17:02:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qyYx+66r12SMj/Ysz7zSUgAk
	oAonFWXlCXbOfXMij+Y=; b=Pv4jYy4I3b11wSUZ2im4uhyPzm/y+/stDpujl6ae
	SiNWLdcpi7Q11oQzcyjYzdYjIyNIV9TfBlxMNfiQJ1m+PJN5mUZoWSts3JG93ksJ
	UBkjQ64EkRdw/TMWyHM8bKnHGJJoYMkvYhUUNBWWf2IlinCVSQ6AgGl9KTH/WLF7
	F96b115k6lQXgRqyxp0hHDslt+Jl/+fl++2atmkU2kQFupy8OXAjI0Z1EvWZQprn
	Ktq5855P0EPs5kZjpDbjJP6/SRlwqS5jEsZDAK9b3EtlPjmjjn2M5EPrG6ALcTzN
	sOINubAo76eS/2Ob0dRw+m7S7oEbjs/Ltq6M46oKW84i0w==
Received: from mail-yx1-f71.google.com (mail-yx1-f71.google.com [74.125.224.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7ynwsyx7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 17:02:59 +0000 (GMT)
Received: by mail-yx1-f71.google.com with SMTP id 956f58d0204a3-63f55de5312so104785d50.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 09:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762362179; x=1762966979; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qyYx+66r12SMj/Ysz7zSUgAkoAonFWXlCXbOfXMij+Y=;
        b=CyyjwFBZR8CJgkYbX9pRCeQMX0RvebEVsZ3DH/vNCsUr068EOIC6CYNQBW2htbfQX0
         OTmYjeAY45MsNeGFHexNF2Qoq26YYm4RuHLQLyvTEnSHgykRTsSzJ0TVnKN1760nY1ek
         tYoav20WxbomSu7nuSZ5xkQGmcKFO4A47oIcyJGp0VT32RFyET+t4wQgmkJlhfnfrl/R
         6fgwufYKQBTg4VJ0P5CAM+z4KNW+dSqsTqfZa+ns87ZUzrUkvoGw5/d4lQfBD3Oc8sRI
         hJlUw7jJKjXm1zNkR0BX5uhLZn6bGCTLYn/WSqBUbbWpCfozuMA6cInpPfY6TLeIo7uj
         HQiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762362179; x=1762966979;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qyYx+66r12SMj/Ysz7zSUgAkoAonFWXlCXbOfXMij+Y=;
        b=TUf89eRI/tH8h/weIzwpRmZhqW4q1qOvyibbtpPNlPrT2bhfKNYZl8h91xkQVI5UAN
         8SjNFH/PBHvCYXUjvTJzxbsKHd/Sd/8v6QO799/7C2eWBXabzvyz5+az9pyMlCtycHec
         lMLVPYQzf+TyZQSwciHi3BfuwEJ9n7exOUxaEuhQOadQpcort8UxymC0Ra1DxkqDhaX7
         OcD4sGzDqghkYhQ1pXmbjlETw08/cRIm8/DnR6kkBy4wrqFx/zqnHd8ZxTBsFjv30xyy
         6uYW5bwctyDi/N3j31ztpQWsdgrarb772UMAljS7YgP6uAJx42E2APoW+qYQ1qVXQ03C
         JHkg==
X-Forwarded-Encrypted: i=1; AJvYcCU6aImX/ap2BewfUxLTz00otrKC8BzfnrWLsVkEactLesLGckHnjPQIvaJ8qgw/VECFc2WHmfwhFdR2@vger.kernel.org
X-Gm-Message-State: AOJu0YzGAbt5FmURQMwDpGV61JpYWTEqCkpVqGPspikBRSYjche/p18N
	Ufs1gFsHEjhrBgiL6rGJ/XUuLmJ7t3BT0BE3ufIng7K8VwuZiDxiM3hMLgQU2+xQpeRNGPYQ0th
	HWiFy74tv63jvF7Z8UKqkDLJ+/E5NltXodu1axUZ7BLP/J2KoQ1Vbhx5sBUoCBfQi
X-Gm-Gg: ASbGncvkohUdhIE0+OnPfM0/4KsORo3zV4aFlKQ+mFwIWO+NLL9ybK5mjb2a2oZGVM0
	s5GKzeMLk4emBM1fSu9gvm9KUqGbeosmYuMLnWhSFVbjsShuH8fp90yvA6v5mO6j0n4tJFOrjBe
	1LoDOWmSYl7lZHudc5BenisES2Z0rfjswrukQmPGt8Q9nZT9W5XStEiCbCQvWWrOFO/m2sv8dgg
	FDStub4vXa+vh3pX16MS9PtBy8K2Dg1Ziai0PTVZ/Q90EpGSOl/TwIlBs2O0UBX3EKRpgDfslSV
	2UaGfsQctJoxMPdtNlRm8yal3blwRYhpIfuB1pmtOEtWP3yed/rYqkVKUchGHlQ29KX1/Py3wbU
	3BAnGWU8b3N+1KyJYtPzKw7iiWtaEe6X9OO4zkgCatF+xUYwXilujlJbcmpTpg1jt++iyoKg/V5
	RTFE0EdEGCYDRO
X-Received: by 2002:a05:690e:c43:b0:63e:3099:fe7c with SMTP id 956f58d0204a3-63fd34c50f5mr3160689d50.16.1762362179175;
        Wed, 05 Nov 2025 09:02:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTAmyohmCTXGVTToGXMGdUogTSBLrIX4kz1aq4q66xM2USJqaQ352zw9xnhAw2RV1nJjCJjw==
X-Received: by 2002:a05:690e:c43:b0:63e:3099:fe7c with SMTP id 956f58d0204a3-63fd34c50f5mr3160583d50.16.1762362178181;
        Wed, 05 Nov 2025 09:02:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-594492b411esm34691e87.105.2025.11.05.09.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 09:02:57 -0800 (PST)
Date: Wed, 5 Nov 2025 19:02:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v7 2/5] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
Message-ID: <motuct5ezykbkta2wz7ek2vwnfaamphrl7b2wpv2bvu7qnnbmc@4j4aurlva4iw>
References: <20251105-a663-gpu-support-v7-0-1bcf7f151125@oss.qualcomm.com>
 <20251105-a663-gpu-support-v7-2-1bcf7f151125@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251105-a663-gpu-support-v7-2-1bcf7f151125@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDEzMiBTYWx0ZWRfX+KKhcZDmLq4o
 Q4/Kgy6bkO+KaZ4G6ky5DAPjLX6CpwOLe30UL2c+QGCeQG57QWflieiv6eAmmeYI2LWo+KOFB3t
 enJi/S6AB41+b9/VbXSavyc0+ykSrJJRvAxMW7C1vO+tYxkv6XD9XCUhwgREh9fCgg4Q2kGxs1/
 gVsegLJCBwqB2S8HGpCch/3+y2ojMpJKyaQYOx+3YZQueHHrxXH2vfml/ul4uSNtwPPBtB4Slh4
 HWJA2hwcR6VHG8SQcafAXiB882b1wXDR7hAGjyYwovoj2RZpAns4IFFrMuYTTNo15cIFcewCzlL
 H2ojzDMyYUS72EuiAULilMHg7/qJGg4qXLJV42VirZ6AHSdff4KsZOjfucfVhwaJcwYHYOt/osp
 9Fr251g+DNpVBK9cliLrZOCPmIL7FA==
X-Proofpoint-ORIG-GUID: 0cBmEcy-VlkZLgxP5H_OvwNnvuKEj3--
X-Proofpoint-GUID: 0cBmEcy-VlkZLgxP5H_OvwNnvuKEj3--
X-Authority-Analysis: v=2.4 cv=IpETsb/g c=1 sm=1 tr=0 ts=690b8343 cx=c_pps
 a=ngMg22mHWrP7m7pwYf9JkA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=UQAiW8fk4jwks4S4FoYA:9
 a=CjuIK1q_8ugA:10 a=yHXA93iunegOHmWoMUFd:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 adultscore=0 priorityscore=1501 bulkscore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050132

On Wed, Nov 05, 2025 at 10:15:46PM +0530, Akhil P Oommen wrote:
> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> 
> Add gpu and gmu nodes for sa8775p chipset. Also, add the speedbin
> qfprom node and wire it up with GPU node.

Technically the subject should be updated to use 'lemans:' instead of
'sa8775p:'

> 
> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 119 +++++++++++++++++++++++++++++++++++
>  1 file changed, 119 insertions(+)
> 

-- 
With best wishes
Dmitry

