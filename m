Return-Path: <devicetree+bounces-228498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 80417BEE4AB
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 14:14:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13A63189DFA4
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 12:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D2972E7637;
	Sun, 19 Oct 2025 12:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="En65Ngbl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F035027602C
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 12:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760876071; cv=none; b=EC5OQGsOK4ZG0L1r2H44+DvAAPC9sn+nGRkh1PlRdkCP/lapIS9kaXLrx9KOTP9wBg9sa+Dcy8mq+Z2vNm9rq+SJBZxPKICYt0y8EwwR0JR77vtcpl48Bvu8N7A7bH+AuiOg+IeAUBTfkYt7syFFbTZqkbDIMI4ems32i5fQCq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760876071; c=relaxed/simple;
	bh=ukqOXoH0B8Rm/K0oOmFS3+X11r1F7wE1V9gnidNhdI4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ULj422a/1BhKPtEjuP8U7ZKuZP1B5xAgtvkckcrwKAlkh1xGGdGP9kYnoCzXmfEeVkDnqjZDVNLMTWmDJ6tXkl4xWECjzAkMZJUFBvC21bKs2+3RHltUExaDp6lq/wuyvoOtEcVwmRgToBiAD97pYi8kuDZxBhe8Es5rf9LOg5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=En65Ngbl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JBq3au008560
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 12:14:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	puNPrhTEXrfqnZblxaqGqUil1ruzTr+zCkgmrxJ5Bek=; b=En65NgblGY8NIrNy
	BjKP5KUK4ujMB3MNse92ose8la5TWB9nGsRowsVSqd47vWUpN1okqFrwbLRbe/Pe
	FNXx2CSQ1X00JbGgoIsnH6KHLWY1Qolrujvn/NYfSUhBI4uBbBj3taB/vAEKIjMg
	G+LNq+UP+2K3EqrMaLSzL+a9/fwmXBc2Vc95pgWrtnRnurCCfm6AZnlgQNC/gZv1
	RIiZAK7ux1qSlEfc63GcdYqlW9InQamQsiC4mUnRhK9etJjKT0GL+cHeJx6Kjb/s
	cRb/ARXhJ2FMsgtGx0SoulEaH3RtZW1rxb22UtmhV6SMakH6axSzxO6MljqW6bs8
	EtMyZw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w7tdsq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 12:14:28 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88d842aa73aso405032585a.0
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 05:14:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760876068; x=1761480868;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=puNPrhTEXrfqnZblxaqGqUil1ruzTr+zCkgmrxJ5Bek=;
        b=DzFuVotrvrQLbtSthRZAMcXDYgEGr0f9lq9CGJygyFSGSYYlne8/hvM6dXpV7WsCv0
         +dHBBuh6p5dNkG+KjklS9ZVMb9AVKRPdWrvopZWVTIIcHJzZ8jqeD51GZwHunjVXfpgn
         oJrNh9l8jRw5/iSnhV+qIg8ApRUbKbKAMJlrr5B/Bz7BVTG1ZJNnobZOuwq5QdtMe8Ey
         x/38MKKexek6qFtz0KUudWkE0If35wNSF9R5O8dawlE8pTRNVKFnwXML3xcXPqfTm4vi
         CFU67vJFNuFpOwQQUAt7wLUyeMLxv1qEd5lfwdJvSmVoIZ94ArqjBiRWnWPhIsh3Tsrh
         zFNg==
X-Forwarded-Encrypted: i=1; AJvYcCUmYCCDicZ5TVnCC14/Hggj/ZZdmIadRM4cPvyKEbUnimjB1rRJl89r1qG53kd/uA5xQ0AzvNtmeiSv@vger.kernel.org
X-Gm-Message-State: AOJu0YxyN1lGncV3wPIBw76SA1ON4004ydrsSKfSHsPY5EEELjcL8sDP
	/+iVhoAsy6FTUlNdbqOsARtYPoRGwM2+DHEGU7bH/Ojzp7tre8kAsH+4jCd3crQo0AXcKdjLuWY
	7sh3wBAf7s01vhCKCWTbSlF6JBWtnLfxYg1I9z3TkwaqNd1fb3gLLrvZkwn2CrWef
X-Gm-Gg: ASbGncv+BlG1WS3zfDgLPkS2MOgh+HG2utkjfmJ4IX5vTDhNtDQZHNzWQzd7bhzMnpQ
	iQCvX81qigDl8yhzS8ZtOJ5xoc0baI/BFFLmNoSEkEN91J5CTssZIxrhxjLeEUoEMoKbDvYLp1J
	nNnZ/XXuZCv5mq5rhexVvTbAj5M4nv25rJ5BIwKDKCf+sMC1rbMbW6kLxijkiM6rZD/ZzgBTwzv
	Uu83T6iNYNj95kzIh6vtfk6COHGmj8qaroWTKkN30Ru19usVPriiIeegaf8fdxQsZ6tVtnGdUHy
	MduKipEKT64zD23hiMwWVUcfayXOJgzbQibHQaIBLQcemoZMHZgTEmylw45azuC78bSJpoa8+I7
	WQQvWezjmPPrjg40CLdJ2gcZWN3BLFazjgEV9+e0CusoC1PDM0CQzzQWxMhQajihpz7xSixHjqd
	u5XgAK0XCCmRg=
X-Received: by 2002:ac8:5985:0:b0:4e8:911a:2af1 with SMTP id d75a77b69052e-4e89d3625e2mr152707211cf.46.1760876067814;
        Sun, 19 Oct 2025 05:14:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8+CZ0NJ9bBoZZ1GZiXuCbYiL/YP/qmggrLH+uJV7bA2b9ganhGBoaFnRrleOl3gY/Yk+zFA==
X-Received: by 2002:ac8:5985:0:b0:4e8:911a:2af1 with SMTP id d75a77b69052e-4e89d3625e2mr152706601cf.46.1760876067319;
        Sun, 19 Oct 2025 05:14:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591deec0b98sm1528227e87.40.2025.10.19.05.14.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 05:14:26 -0700 (PDT)
Date: Sun, 19 Oct 2025 15:14:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 0/3] Add edp reference clock for lemans
Message-ID: <ql5ps7cv7x6hz3otzz45uv6pbr64x2hdapa66vq2jtnt6l536h@kbktvupxpf4y>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <7jmk3txdrnit6zn7ufra7davmomggd3graizdu6wqonp3lljza@mfnxt2owpknq>
 <4bd619e7-e9ca-44a8-9d36-10c18d7a8157@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4bd619e7-e9ca-44a8-9d36-10c18d7a8157@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX8XlRdC1x9NFs
 ZXlsJ+ZKH94ZRFO1PBHfj5hsMvRx+yo0h9zcsyIZunv/MGqRpSx5pnCGHDXp0HuPJf60vQV39m7
 fvukM88RX0cLAVpTjF3oc60DZzS7SI4NMyzwyyrbKt3rrSnOrzsrDILJPrLxVDC06HA5CHB1RZa
 ztFr7dOJk+L0MiMWXOBnxxsYqNTYqMoEnrzx+u5TuKANEThej/+8ix/J59Ta1WvFmWfBf9m38o/
 svLDa/0yHIF4XN+IV50kTwb2hYTeJGuej8yvpRCytl1YH3AMe48nzAZHEk9UJb5y3WadVHa6B21
 sRw4l3dNnL8MSSxUJcCi9hlyBMowtzGTvQAkOMYRvMSGxpbxNjMCjR9zoB1WyowALC/Gdl65YY7
 mo6c8wbKpWaF/rODdGgYJk9Kz9kIPQ==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68f4d624 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=FYAu2dUYg65mSESSDlUA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: xNKJfP1y9rDWAKMPoCGu5pYCoYdhEe2l
X-Proofpoint-ORIG-GUID: xNKJfP1y9rDWAKMPoCGu5pYCoYdhEe2l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

On Wed, Oct 15, 2025 at 02:49:08PM +0530, Ritesh Kumar wrote:
> 
> On 10/13/2025 6:04 PM, Dmitry Baryshkov wrote:
> > On Mon, Oct 13, 2025 at 04:18:03PM +0530, Ritesh Kumar wrote:
> > > On lemans chipset, edp reference clock is being voted by ufs mem phy
> > > (ufs_mem_phy: phy@1d87000). But after commit 77d2fa54a9457
> > > ("scsi: ufs: qcom : Refactor phy_power_on/off calls") edp reference
> > > clock is getting turned off, leading to below phy poweron failure on
> > > lemans edp phy.
> > 
> > How does UFS turn on eDP reference clock?
> 
> In lemans, GCC_EDP_REF_CLKREF_EN is voted as qref clock in ufs_mem_phy.
> 

Ack, please fix other comments.

> 
> ufs_mem_phy: phy@1d87000 {
>     compatible = "qcom,sa8775p-qmp-ufs-phy";
>     reg = <0x0 0x01d87000 0x0 0xe10>;
>     /*
>      * Yes, GCC_EDP_REF_CLKREF_EN is correct in qref. It
>      * enables the CXO clock to eDP *and* UFS PHY.
>      */
>     clocks = <&rpmhcc RPMH_CXO_CLK>,
>              <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>              <&gcc GCC_EDP_REF_CLKREF_EN>;
>     clock-names = "ref", "ref_aux", "qref";
> 
> > 
> > 

-- 
With best wishes
Dmitry

