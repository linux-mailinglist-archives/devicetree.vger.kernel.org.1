Return-Path: <devicetree+bounces-159780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF447A6C130
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 18:21:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAB05189D963
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 17:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E72D22D7AD;
	Fri, 21 Mar 2025 17:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dkhnGGp4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F3322D7BB
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 17:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742577647; cv=none; b=ERu/7Lg9yFlSs0U0xHuEaWCJEYmaH2Nd48Z6W0N7inqJbuJmSVGKznvL4SXpgJcvj72EYpD6tNYBfBIYAguOLwwaBQ96LyRz4SOyPMjd0ooYqV0BjIGj3/xDdh2JuS8S5v0YFwQb/S4wp4xZ6ejf7lOfeo2QxUl98/b/3TDjP2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742577647; c=relaxed/simple;
	bh=qmKoCAZRoRbHTTOKcO+4PVhKdKeMHGgyeEZ3jlFoy9E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=totv7mddq7hdY27SbfZeo8vNHj80Rt7ms3Ty9BSVwaP8W/YdTp8EkhcYmTclP9Pm9eSNElIGsHNpUgHnfOJzkL+L+ZJ2POEy3Ym48aANbS/9Icd0RNhdVOe17L3mg1jj/bHYbf29nAlSa0hhSbOBnADCDk2XNOoHWarjW25/5iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dkhnGGp4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LAThS4015854
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 17:20:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uDTpwkPptGdzgbOoxDa8xyDZ
	cduGG5xDhf0EsIsjkOI=; b=dkhnGGp4E36ZPnBzDW9+hVc9fAjGmC5BU860RBm+
	tqmgwsd3pznlFpM5KMgCzG4LH8WN2QOiUj3Ka+fR7uUSB5O4adT7+rVbvjfIWivM
	QfxVz05f3Morlm8DScJyFJMTpuqASsj4lN38RVYxnyGDle+1RxLff7UYYdNMHioh
	FVz59BiX5bQpV0IOEog0kDxHQgL0kKhhIsIYGSB5sNBytRC3EnAeaRtAlpKCJyO9
	y3sF3tv8cnvxbSVfML3YjZ2RH5A0N8q5Wxvr9sIKDp2YgpgiTdSk/nYsfC54o8as
	z5zZgEKLSJWuu5OBi7IiR9X9agyfBVTP0fT94FPIIS7sHQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45gbngnqn0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 17:20:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476900d10caso46955881cf.0
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 10:20:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742577644; x=1743182444;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uDTpwkPptGdzgbOoxDa8xyDZcduGG5xDhf0EsIsjkOI=;
        b=MzdG4ng6CR3DLsDLtfVdd7KOd+gNmUkfJW791aC5tvistAvZgyoVaCTK2RiYaP+4WJ
         QupiAvEFRFB9JkYDwHMM7BN+u5WZ+fne9yR3VA4MNO1DvXoojvXjGDXpbcIijzSD8Qon
         neaUDGzBm4KmkY5Ip9IhtxHEy4pIWIrIRUZGib76H7ldoQ2vs7IKXFXzmeJD2cpAd6LM
         N/ZSm0e4b/2Xtpp3IdioVFEXGLeNwny3zp9JU5FKgq+IMOjpdHvd7kSn8PeESnmQWlyp
         TfVYU5tfEaoS9xP67g6kQytkB8GA9MJZg27LDi0d9No50gsJBvscboiJ+qT6Zx8iQMZi
         /N7A==
X-Forwarded-Encrypted: i=1; AJvYcCW7U19I7Ty+ZTfRcn9wymY4lBsV6E4sZnX+a172f2y2r18JXcP+co7tZZqS2oPSVXiNynUHf9ywUzkm@vger.kernel.org
X-Gm-Message-State: AOJu0YwWjW4Ir2csvbUPCJelB6txm7l3aoJDF2oN1dxn4VqeXDIZaMAC
	tHSYMG+HL5Ws8gaDG0N8ED9ObPP/184XnqkuSrVS1SIe4Li1bvZM3eOW9A4pZt5UYZ0vikJC9sZ
	0/Wop+gl1Qs5DVPsLeSxh8liShLYUQ6+4waWvTGNG0f4YO6BPKgZHrQKTMvwK
X-Gm-Gg: ASbGnct5xU23kdKnwnQlahhDDKNFWYeGwhX1Tho2T7F5rdbqIAnZGpPlGDYgqBizaMw
	rgMdBGhSbOUPtxhZwYyZ3FVwyxxbSf/OkLZCmpzmYa2SIVNkKJKN8jfuHdlj9BBCNuujP2J7eV8
	gNr+NeKzCJkGG4Annspf+96gbZyYWi+XT4yvR+h9xoD0J58yys9SHiQRvnRrWQHManoeXX0VLAR
	evqUr01DQUCrYbcyrU+F12HwgKBqIGaPUnnsAajU2stPWJtc6Ffy9P8/sMbaV6mQLTyTu4MazRC
	n5eDmDmr5K4cffP5f/NtTyGEpjBKorbOreiOrAqW7ZnVi6GrTlsogp/UuLieNp6LGMqT/45i3YZ
	k9yM=
X-Received: by 2002:a05:622a:4d8d:b0:476:a7f2:272d with SMTP id d75a77b69052e-4771de8b4b5mr72699161cf.44.1742577644393;
        Fri, 21 Mar 2025 10:20:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHx0VZLa5EFNdEAjuIa1FS+mTNMST/xHfZhUEXNJJ7m5u9qI7CPpdWYXoz0qNcBgm/3w2c4Hg==
X-Received: by 2002:a05:622a:4d8d:b0:476:a7f2:272d with SMTP id d75a77b69052e-4771de8b4b5mr72698801cf.44.1742577644139;
        Fri, 21 Mar 2025 10:20:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad647c98dsm225951e87.67.2025.03.21.10.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 10:20:42 -0700 (PDT)
Date: Fri, 21 Mar 2025 19:20:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm6350: add APR and some audio-related
 services
Message-ID: <aglvc2n5acln7lnnsnoyzyxega3bttz7qrzmmjn2atr77xsvph@dpzcohdphgdk>
References: <20250321-sm6350-apr-v1-1-7805ce7b4dcf@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250321-sm6350-apr-v1-1-7805ce7b4dcf@fairphone.com>
X-Proofpoint-GUID: qrjm61E1IsTu_PXfBQ7MyKY9IO5c4JoO
X-Authority-Analysis: v=2.4 cv=MJ5gmNZl c=1 sm=1 tr=0 ts=67dd9fed cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=d6hRspmLNtqVbEz1Xe4A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: qrjm61E1IsTu_PXfBQ7MyKY9IO5c4JoO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=810 clxscore=1015
 spamscore=0 priorityscore=1501 mlxscore=0 adultscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210127

On Fri, Mar 21, 2025 at 09:12:57AM +0100, Luca Weiss wrote:
> Add the APR node and its associated services required for audio on
> the SM6350 SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 59 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

