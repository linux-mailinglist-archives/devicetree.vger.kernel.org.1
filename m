Return-Path: <devicetree+bounces-226404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BD3BD8643
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 11:19:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D1C61923427
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 09:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF4A62E5B13;
	Tue, 14 Oct 2025 09:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vju3B45/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3669B2C11F0
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760433559; cv=none; b=LOHbH+8eIk7rngCqiDT1oJDDAdlJl/As40i1ZkNYteYP68QMMcWu1+si52eM1lxbhlCltS4/xub1zFhi9rZUSwtDj1I43rkMf1ie4pSCW/AHdVNzuV1lT8bdsxvos3lixH4WN0wgoWeOJYY0v4UvM4B0mZbCOt6IC2SvLd6SWyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760433559; c=relaxed/simple;
	bh=KCXqlj2/eMDCK2VlI2slSyknIFjdtmFTDQyXloiv5ME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Me2e6/cFR0JYs+qooBrMYez71TXrBKJDTf2mA4x1LnfrKPp8w3zDdOuzQk9015vBfGKpFFUu5GV8hMRsEgLERKK1quaSJIsU4Gmb1zuNbBYUugfMozGb+ZYfTcteVH1x1PuS3tlE/1qWMdN27o3Z1yUzMe6edJfpOqQmyvdfhv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vju3B45/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87LPa025916
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:19:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/M4+9qjbR0xmZ9AUGWwlamLg
	Bh7AibV8Qv6wfylCGO0=; b=Vju3B45/mSf52hBqT0GENjluUCDiOtbOR2hShHAR
	BcJk1V4XprO6TdfMxVoQMolPrcpWikbRccTF2XTe/aPr9dkq10/7H6n3b1n8X4NF
	fFkCyHEKD1v3gwT9UVs0LNGGqc/uySAoxA71KPKW80lOwiEJT6ydGQv4aOLGbbgA
	ideY2iQsyPOj9sDoQt4yZvoLWbLAEIl+or1dOB/8T2NVGhoNfeQLSDpOlEEQYhHs
	rcatz2WUT+eM9xAbkiJzlJNwXlwekkWTNvuCCoRwFLAaIFdIBCuPr5ntVPQ8Xb5a
	PCSfkuykNjcai38qTdQkegbwlpPr10Mj5xeSIHzRYWAkCQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdfyrub-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:19:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-86835654255so4723274885a.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:19:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760433555; x=1761038355;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/M4+9qjbR0xmZ9AUGWwlamLgBh7AibV8Qv6wfylCGO0=;
        b=BvkXIUb9ViNCFPdvqVWciEKB9oK+82b+kUaiDoRUg5bLcHRb9vaJ/7Wn3bJMkDJKbS
         dQV3dubEpO7s6SsUkoJNYDI+RuJz6HRXUwPMzad5Bhk0aLPwMu1GkWfw3bpo9ttOim/V
         RKanHC3V66F98Z2H2A4/+k8M4NxyxSmiRK8qIjvBZNlWXN2w+6AEdgMTXD0/aMva+1gP
         zOOTmDvMSb+x19klyW2TRFATnsjRhQKe2YwGBEyYFaRJzgicrqpdu5Rut9WUcKGTluv1
         yEkBTa/W9wwi8Qor8vTmEaT9/kFpg6e5ecHxagquYXfcOE5Pp+AHie/h6WEHcDVzdWSm
         /KqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJiiSwftjgyIQF3iVTya1+6eAgVfBYJyv5OPSnvl4/+XxbUQlNBCADhWJ1GfUPq8EY4UtjxX/CKddT@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc0pSZ8p7zK9jvtK9BlymI+y7GAJV7c8V0rRpRYG8TBjm/xpnr
	/XMMHJUDNBiNprLPeNdlkltG7rJ8FmvfVAqa1rXJqtKJ5WHwHT4H9o4LDOW865y5dGhPdgzfYdN
	3LXd/t0WgQ0+GyktCrMjiTpPZH0V/zWv+NUQBxVS3D2IVS2odcV7wDHVEocSLA7R1
X-Gm-Gg: ASbGncuzeJNSm298vBEyDErXoJ4fpg5gXGz8jfjpHLLPi1zhaMXoCI3B8QH6jJJdf7S
	jCUg8ldHIEfYAHqUHEiMST9RPwanjO5GKWPKlG931P2JigvEcIOGWN3Qfiw/Cx0ugBPBJo7jlVu
	jUxQmVXGlHu87/fklaIxgNUxE7o4BwA3gg3kSBhE6BaKZZvtL7XoPAedzn9FlgVgzp50YZ5XZgC
	wo+nAhhlVRWeNfRMkhyKmIiwJSK6H58wwUoLreX/KP/fv0HvdVQPo8iCc0yYrLHwYFAh0yXD+8H
	sVLr5OUWrMtqmJ5xQhL/QtR8102A9hnC9du5KTHB8Vx/hfjs/2+lSLyjm9hI/EOThxWCmWEsUcC
	CEK7NNh3Rip2JaHXTMUeHZ4nTxbHxuA0B+x6KN+PLTIGu9O//JKpV
X-Received: by 2002:a05:620a:2a0b:b0:86f:b068:32c2 with SMTP id af79cd13be357-88352ba768amr3441610285a.65.1760433555023;
        Tue, 14 Oct 2025 02:19:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJ0Bdv9ZRjNQZJ2bun3sNcAh/K42pzla7s+n3DhqMnWjW0vg5zZPO+f31pSNhVt7Buy9t+Hg==
X-Received: by 2002:a05:620a:2a0b:b0:86f:b068:32c2 with SMTP id af79cd13be357-88352ba768amr3441607285a.65.1760433554567;
        Tue, 14 Oct 2025 02:19:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea11d19sm39716781fa.37.2025.10.14.02.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 02:19:13 -0700 (PDT)
Date: Tue, 14 Oct 2025 12:19:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: qcs8300: add Display Serial
 Interface device nodes
Message-ID: <v6cvbds3fsbf7ebfi33mpkrgbrrb4oxubgpshzjn4o75j2jzcn@nnaenoukfu2n>
References: <20251006013924.1114833-1-quic_amakhija@quicinc.com>
 <20251006013924.1114833-7-quic_amakhija@quicinc.com>
 <fsqytqhe72bgmloyzm6khoprq6bysf52ufz6oi6epos7uadyho@wg4rxs6f2xyl>
 <374098ea-23f1-4d1a-8f70-313a7e384f8d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <374098ea-23f1-4d1a-8f70-313a7e384f8d@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfXx6Sy66paYUbK
 b37K5IPCu6EMu9jI7VaFuYE404iaQK2iDIYU3SiNr7TLsu83awQkZk2+SXzAV6a3eDF7fLBQkGb
 uLeMEYS4GmJxdBBB7LHib3Ojxncmg1pMhq7rWu9NX7febiwE2zzb4neS2CRHym2hS0tPxcuwmq5
 Ug3YTzIGrG4rwovpelz8FqWihk3BRAiR0Ib1DiduyAF6YCmkciTWiXQ+3gVRdpqErUjzJi5nmzm
 7ttnDWl58y3cBn9vSxzwMm7xOL/fGa1WOi5MlI0qzcIlryDtu7xb3IIqKveiahPUbxvTJOW+EJp
 FMruYsla+QDLJGi8PSUI3C4hdOYHeCUdo6TDFWlyhTKhwOxI0ppJD1cJnGwAe11DZ50RgQ/LYNa
 Asblh7lVr3gmcGzfOazeQJ6yUNNP/w==
X-Proofpoint-GUID: sVPqWSq_M8dmNnpYJL1NaHd-55c8fYm5
X-Proofpoint-ORIG-GUID: sVPqWSq_M8dmNnpYJL1NaHd-55c8fYm5
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ee1594 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KBoXMGrBdGQ6yHO1rqoA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025

On Tue, Oct 14, 2025 at 11:54:31AM +0530, Ayushi Makhija wrote:
> On 10/6/2025 3:44 PM, Dmitry Baryshkov wrote:
> > On Mon, Oct 06, 2025 at 07:09:23AM +0530, Ayushi Makhija wrote:
> >> Add device tree nodes for the DSI0 controller with their corresponding
> >> PHY found on Qualcomm QCS8300 SoC.
> >>
> >> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 98 ++++++++++++++++++++++++++-
> >>  1 file changed, 97 insertions(+), 1 deletion(-)
> >>
> >> +
> >> +				mdss_dsi_opp_table: opp-table {
> >> +					compatible = "operating-points-v2";
> >> +
> >> +					opp-358000000 {
> >> +						opp-hz = /bits/ 64 <358000000>;
> >> +						required-opps = <&rpmhpd_opp_svs_l1>;
> >> +					};
> > 
> > Does it really support only a single freq?
> > 
> 
> Hi Dmitry, yes it support only single opp frequency, I got this information from ipcat sw for monaco, similar
> we have used for LeMans.
> 

Thanks for the confirmation.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

