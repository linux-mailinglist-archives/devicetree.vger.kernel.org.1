Return-Path: <devicetree+bounces-223796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 48036BBD9BE
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 12:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 653F64EA3A0
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 10:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0707C2222A1;
	Mon,  6 Oct 2025 10:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LbYuWolJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8FD221578
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 10:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759745216; cv=none; b=qY7+wChWSHuPJdZ8GA47CI9PqkMbAYBWlQcpJMPeen7fgYZ14QOtIVdYumbPxgUXrynoWyrCxfGaawR5GdC8P+hZHjyqp0yYNFvg9e9IrdKViWT4gyvXnrZAebqhPOj+kie8BortpzX+qwBS3JEVSPOrUHIrkTELowzho8kypkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759745216; c=relaxed/simple;
	bh=CvVyk63FV1Hh/uDxoHt5oihoELVg2e/crLKj5/XJtR8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TOcf14a6nOQQqg6bSfqotcSZGdayCVJiCeN7L7rB8SpVn/qKZ9u5ACADKVIhdjX8HR3iWCeeqzSN6HdP+dTLDLo3B+Aekvo6Y0vpTODJ0/bGCxnUa69zRsbC+AC5kjR7ibOgRoFGUm1Qlu9Y1wmOVb3WMoRaxfXkDBd2ml5PAws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LbYuWolJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5962Axjm019973
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 10:06:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HGxB3VffzX2B3tPfiQDIObxF
	W8b4BEQXi9X0DSTOgU0=; b=LbYuWolJXZ4Ea3840k5mXG1qEJ9tIBuApey331ZV
	v82jAjeZc/kdYJEoSAh5qLtrTMNRFa+APHDIvSP5n5GUUYOaKm4c6LMMz5m+auAV
	rHihvfPlyZkShciUFF/GF1Xpen2Am7YoI5vZJ0ekcJDlg/BSDaFG1RHKm6P0fBbT
	aqelUg2VxeRUmrmu73xUYW5taPIgmdUqXr64ylGv4W6e78dk2DmQmM1w1u+BuTpp
	CtrSG9u+kmgI2xBtrI0Qeqjo+eWfuLd2fDAWl3CX2KOSqUd1t8oejrIMTnp69wsM
	nRcOpe5VcL/BBozf3oqgQ/phngsh+0aJX0rj+2l0i3PUUA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jrxn3s41-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:06:54 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4df60ea7a1bso97303071cf.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 03:06:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759745213; x=1760350013;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HGxB3VffzX2B3tPfiQDIObxFW8b4BEQXi9X0DSTOgU0=;
        b=s+5+dzFgkYUGe29a4ckdxyTI3skoMJ4WE6e3qzJZuqp00Emcul1mOdJqcX8z3mhYCk
         Kb7oNELWqinbT36IDGMid1q/yF9hXN1c5kfl0NqlW6KM+KXSmocpLMaNk1RgA7rRR53s
         wtwScuK2KFXxy6BPytS0zYNFnlkeybWE6byn3Hka4GsL0tlTChsIVTLeQQSvG29gPFC8
         0gCY5jNVLdLxPDJ0tKlkGobs4JiekqbzocZpiJsu1XbizYa4TgnrM9F9iFU5m8uNafxd
         ysYbW3ru2Rki4TDPmw9XpejedfhRXJ595U50raHfSZOZQSIy9opnJBFhBL+cSsTMk7AJ
         pqDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmzG+i2b9Cwp7dtjS/9ej6zkUJ+WawYonw1V3zbUivZ/kiYd7EfEl7kkiigrc8NbF9g7IvJsOx/KK1@vger.kernel.org
X-Gm-Message-State: AOJu0YxMjMHjwcyNR9t0UEzyiu0etzNd+VJXl+f+jqe38MKDdWWCWMQa
	Qyq0kcDgVGwVrvwAFY1sGzVr8X3PaYZ4Q2dVZfAmB2n9859vVer0hG6/wTa8x4Zzg/IYMso4uqu
	thI/2rKpZXH+ZLi7RyKuBXDUR2uUsw7bm4qtm2FDzCR56GW5PZ3irHZdKJHjvyf1N
X-Gm-Gg: ASbGncuthN1jQeidhDZx2cHQb/YkxalglxIac7N4sWtC6KAdHNAPXwFjc88KHquM30g
	UZic/wqkfbJWPJTKASmgvjnsHVniUazVcgEoK8kOPNg3BTYJLeIbDZW6QWAJOw13RY1EgniDVbA
	T+r2Nk2PZRFKKsn/BwOUNzAOo1X0K3ZZrqNXSvhq6zP82KNWEx6uBKFXn6zoTXzmOltOc/ps2Qp
	Ov4VzZNgatodOG5ngxUqMKuEBMyEFssTFvIvsE4Qm7ARcvffC5Nk/felmXv1FvaZTx3lVzAyGO1
	Te7arEYj0xPDxZ3uwEgAeJPpqOLtOEmP+wjGYrRegQo6g6SdDYAN99jBNGlOt4wjL3QGSjOVgYV
	8qoF6EuAENPTDcRSXzT7NBZKnLq18Vbt+dQdz26Mj6Z3D+NyRXFJwujk8TA==
X-Received: by 2002:ac8:5f4d:0:b0:4de:c683:441a with SMTP id d75a77b69052e-4e576b079c0mr176285441cf.58.1759745213352;
        Mon, 06 Oct 2025 03:06:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8lMXLpbpaW8qgeVwOmhaoJD2KaGNc3MogkehGsf1brzqQQ416JOW9/yzxpzpBq/+gSe98Zg==
X-Received: by 2002:ac8:5f4d:0:b0:4de:c683:441a with SMTP id d75a77b69052e-4e576b079c0mr176284821cf.58.1759745212680;
        Mon, 06 Oct 2025 03:06:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0119ee99sm4898508e87.106.2025.10.06.03.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 03:06:51 -0700 (PDT)
Date: Mon, 6 Oct 2025 13:06:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8996: add interconnect paths to
 USB2 controller
Message-ID: <jaepvhr3zwgiaievndntfpcopzinfp3psktd6anl5ovzxl7ekd@enamcy4e6puy>
References: <20251002-fix-msm8996-icc-v1-0-a36a05d1f869@oss.qualcomm.com>
 <20251002-fix-msm8996-icc-v1-2-a36a05d1f869@oss.qualcomm.com>
 <7ef8ba74-4e9e-4b19-998e-40917d997ca8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7ef8ba74-4e9e-4b19-998e-40917d997ca8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwMSBTYWx0ZWRfX1sY0MnzEfp+5
 knDAdwbpTj8jVQZVzW0ZUavgOF5uDbYKQfuwE9/JFc2a4AdmlbDFVMgzGOTkbMol96IIOsL5rz6
 J1DFWe/apUwyUnf7h2pTxj+0viVc3ZYUtWGKuYdyG942/K9Of7PsV8I8EFtmVCWGuMkne5CWIE2
 /UIuP4q4sYMDTSDpmmZTwTY5EaaBM8Q+VKNwDc61vUb1EHtXCQjwGJJHIC1rcFF7nKBqaL7lHll
 4SX/0kVzWvwheQ1D6IiFnmdxk5XBeIKwDSW5GZrnfdHhM9hG7odzDpg8KzbOe36DvViz4+BQ+wR
 GpEVNj2LHM+fNqXErm5sSRArtJXqfvmg8XpmXtQ4KDKSf41jf33R0c8XnwE0yYKYEPCqojt5+Df
 ODceO15DIFHrNGkuaBJ85pXD75Jrng==
X-Proofpoint-GUID: mikqDRpqGurCTXTvnM1UZBMcwfpsN3Gb
X-Proofpoint-ORIG-GUID: mikqDRpqGurCTXTvnM1UZBMcwfpsN3Gb
X-Authority-Analysis: v=2.4 cv=EqnfbCcA c=1 sm=1 tr=0 ts=68e394be cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=nBxtwQxsS3NGOZXr17YA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040001

On Mon, Oct 06, 2025 at 11:30:52AM +0200, Konrad Dybcio wrote:
> On 10/2/25 10:53 AM, Dmitry Baryshkov wrote:
> > Add the missing interconnects to the USB2 host. The Fixes tag points to
> > the commit which broke probing of the USB host on that platform.
> > 
> > Fixes: 130733a10079 ("interconnect: qcom: msm8996: Promote to core_initcall")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > 
> > ---
> > Note: without the previous patch applying this one can result in the
> > kernel stuck at booting because of the EPROBE_DEFER loop. I suggest
> > applying them through the same tree in order to make sure that the tree
> > is not broken (or using an immutable tag for the icc commit).
> > ---
> 
> There seems to be syntax for this, at least for stable patches
> (which we should probably either use or add +noautosel):

This syntax is for stable trees. At this point I'm more worried about
those patches being picked up correctly. If the patches are picked up in
a correct order, they can be a subject to autosel (provided that it
maintains the order).

> 
> * Specify any additional patch prerequisites for cherry picking::
> 
>     xCxc: <stable@vger.kernel.org> # 3.3.x: a1f84a3: sched: Check for idle
>     xCxc: <stable@vger.kernel.org> # 3.3.x: 1b9508f: sched: Rate-limit newidle
>     xCxc: <stable@vger.kernel.org> # 3.3.x: fd21073: sched: Fix affinity logic
>     xCxc: <stable@vger.kernel.org> # 3.3.x
>     xSxixgxxnxexd-oxfxf-xbxy: Ingo Molnar <mingo@elte.hu>
> 
> (deliberatelly added a bunch of 'x'-es to not interrupt the maintainers'
> b4 workflow)
> 
> (via https://www.kernel.org/doc/Documentation/process/stable-kernel-rules.rst)
> 
> Konrad

-- 
With best wishes
Dmitry

