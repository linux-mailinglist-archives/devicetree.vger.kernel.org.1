Return-Path: <devicetree+bounces-160735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A9804A70E2A
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 01:22:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 451C8188E4D6
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 00:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E1C1376;
	Wed, 26 Mar 2025 00:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vx4Z2QF5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E418C1F
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 00:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742948517; cv=none; b=tPy9RkPFUR6cftI7LCD3kBG3I8y9aCdXeWzEhL+I50AO+FaUpBHa2UGdXGKw7z/6iBCzLqqN4NkDTTHdrr94E5CB/jJz6vfNh9mRCDT4P/Sl5INWaa7WbvkbZbLLuUnPeZJDQy2mECbd9OMrFIJQLqOnuTpSKpe4A7tHHIb7+BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742948517; c=relaxed/simple;
	bh=8GP4IzSOCGS6nnfKIL0+g3kJ16Co9iuSGr213dDwyYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KVTlvFr+woiOCq07xRSl2Rqi50y+0yo84fpkPmCBmUu50rv4fBSHSMabzhBd7Cgn3MdtUbGNhjGlrR4OebWIYyl5wrbRFlxn5WcfU/m2soh96DKbbfKH6rLlqbJu8cNnEnVwyxnHJ1bz1fvgCSVAket5vLLyF1i3M8pT7IN2Qo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vx4Z2QF5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52PGb4Ka021037
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 00:21:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RfhzzQpQZQ+16YcL/C6rQJz9
	e7WatbDp8WM0fqCpczo=; b=Vx4Z2QF5wXrLoZG39SR2F7mKOuLdtoYkXcLpZhhe
	QvDQ7CFzntnKcdMEVQl4poQsezmWXAEh9z39FmFH5YdZ76R4YugXIFVDjz8FvBzR
	RafPodOvYOKt3bFl+YcLCa15EAim0tN+Fm7ZG3rc08xT+okf+otT/pXn/SiqV5tx
	Fk/26yJa5XQi11jYccfXzqa1YU5lbkFRYqBqw3JwqcxB/7vsQ+khTD0vKtlR04EC
	rPcmYdIOjSk6FLvMnszGxgR1MY/svTHPWhECVmo0U6aaKI6/+qnUCo1wJz7iYD8D
	o4wnIon08y+gpxVYfoywgW8ny9PeBDmDy0ZRDTggerNgLQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kmd4k6er-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 00:21:54 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4768d63b1dcso5737881cf.1
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 17:21:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742948513; x=1743553313;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RfhzzQpQZQ+16YcL/C6rQJz9e7WatbDp8WM0fqCpczo=;
        b=pcn1MPGva4sSPK3R0a9C2CqE5jrklhS78HdBk1tPCyGMuFKvktBtHE6Tj0JnQECIIy
         1IgmzBBl+P5KZzKiuAYjlcaqbliNlaokfm4vnZ8ZVlz7Dfi+su0l16T78ODMIlzS2YCz
         DKgQ660e9UkZuKoo2AKpyXwocMWgRWqRoNLHwTHBmJ21e6OHzJPdvcEGQPOHS7trRCBJ
         swYQaDAAPNzz9NlA3hN7o608nmLZl2A3wswgD8oaKZiM/M3q17xeIKmY7Soa03tbzaVA
         Nfl+Wm3jzxqpI512NsIQkrS9U85Ttv98/5PdvPGrsImj7PwDuoLGUUC0id/XweujKVma
         /DEQ==
X-Forwarded-Encrypted: i=1; AJvYcCV27rnsljhv3OvxddOlOMrHljOjVXHtcNDC7SyRhNpfIf49C2uOLSCxLJfXlg3DxwOuW/9afDHo3iLY@vger.kernel.org
X-Gm-Message-State: AOJu0YwLtccifAvfwgeM9ntLycfzyGcbI2zf6rEVNXkkdkqvn9n/KpUZ
	d7UqygeDj5lc6D5S8Gk1wXjgonzXdzmU8z4TSqYugBusTXb92HOczg90Ys9pJ+QyTHfd0mqfL7e
	j/jqETxjwbX/ShClDgk+25dztW5m+dXP1AKNXJIZKUfUId4MpUhG35tmIoO6U
X-Gm-Gg: ASbGncsNqOfobRgsOjaRz19FUO1GtXz5GxS+kFzIh/hBsBu+JPq2oMXgYtutkIamO11
	g2vWwiUN3tsPYFj8XQ4F4mKKRoY8EnNMce1woMBj9nCn8lFBBff8oJCof76t0Qz5f40oXzgr7Kn
	ooKo76ttTs6DvdxlI5leq+W+RA2A+4JPmGitx7H9n3ToH9FKTNHxvtQ9o31ptmvEVtyx6the7vV
	aph/Qh2Tq2iGs9Uk/7jtxYklCKP51+vTNvLTKLx2xvT+hKCtCR+gCC1xeJ8hICg12/AYpl5Qu8D
	QObqcy7Wp2QYL/JiAA2I4kKdZvq76XRLax7SsiZQ4BMl7oBZo825nui7k0V78ELLW68n6JuGT0V
	1zfQ=
X-Received: by 2002:a05:622a:2615:b0:476:9763:2fd3 with SMTP id d75a77b69052e-4775f313c5emr28141201cf.14.1742948513224;
        Tue, 25 Mar 2025 17:21:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0YdvvHUlkDEyAPMb+g5ms+1NrLHTgcb+KKkKkHlmUnjl3OR6fK6cClq0k4439q/Sg4ttffg==
X-Received: by 2002:a05:622a:2615:b0:476:9763:2fd3 with SMTP id d75a77b69052e-4775f313c5emr28140731cf.14.1742948512762;
        Tue, 25 Mar 2025 17:21:52 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64687e5sm1643472e87.18.2025.03.25.17.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 17:21:51 -0700 (PDT)
Date: Wed, 26 Mar 2025 02:21:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Prashanth K <prashanth.k@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 0/5] Add snps,dis_u3_susphy_quirk for some QC targets
Message-ID: <gyeppjlzfpmazj5seohhab75mbhv5kyzdbxh7iqddd33dnah3n@w2tpd5gme2rq>
References: <20250325123019.597976-1-prashanth.k@oss.qualcomm.com>
 <ee0848ea-7a06-4f4e-9115-5e3c0ab8bf95@oss.qualcomm.com>
 <7029a455-47be-475d-b429-98031d227653@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7029a455-47be-475d-b429-98031d227653@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: dAkWzXED3H-9PXDDLTPnl-ZXPVecSmwC
X-Proofpoint-GUID: dAkWzXED3H-9PXDDLTPnl-ZXPVecSmwC
X-Authority-Analysis: v=2.4 cv=QLZoRhLL c=1 sm=1 tr=0 ts=67e348a2 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=ZqfHA1wz_kCA0izwLYQA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_10,2025-03-25_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0
 mlxlogscore=960 mlxscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260000

On Tue, Mar 25, 2025 at 08:31:55PM +0530, Prashanth K wrote:
> 
> 
> On 25-03-25 08:11 pm, Konrad Dybcio wrote:
> > On 3/25/25 1:30 PM, Prashanth K wrote:
> >> During device mode initialization on certain QC targets, before the
> >> runstop bit is set, sometimes it's observed that the GEVNTADR{LO/HI}
> >> register write fails. As a result, GEVTADDR registers are still 0x0.
> >> Upon setting runstop bit, DWC3 controller attempts to write the new
> >> events to address 0x0, causing an SMMU fault and system crash. More
> >> info about the crash at [1].
> >>
> >> This was initially observed on SM8450 and later reported on few
> >> other targets as well. As suggested by Qualcomm HW team, clearing
> >> the GUSB3PIPECTL.SUSPHY bit resolves the issue by preventing register
> >> write failures. Address this by setting the snps,dis_u3_susphy_quirk
> >> to keep the GUSB3PIPECTL.SUSPHY bit cleared. This change was tested
> >> on multiple targets (SM8350, SM8450 QCS615 etc.) for over an year
> >> and hasn't exhibited any side effects.
> >>
> >> [1]: https://lore.kernel.org/all/fa94cbc9-e637-ba9b-8ec8-67c6955eca98@quicinc.com/
> >>
> >> Prashanth K (3):
> >>   arm64: dts: qcom: sm8150: Add snps,dis_u3_susphy_quirk
> >>   arm64: dts: qcom: sm8350: Add snps,dis_u3_susphy_quirk
> >>   arm64: dts: qcom: sm8450: Add snps,dis_u3_susphy_quirk

It is hard to belive that this quirk is to be set for SM8150, SM8350,
SM8450, but not SM8250.

> >>
> >> Pratham Pratap (2):
> >>   arm64: dts: qcom: qcs615: Add snps,dis_u3_susphy_quirk
> >>   arm64: dts: qcom: qdu1000: Add snps,dis_u3_susphy_quirk
> > 
> > Are there more targets affected, from the list of the ones currently
> > supported upstream?
> > 
> > Konrad
> 
> My initial plan was to add it for all the QC platforms, but wasn't
> confident enough about it. Because we have seen the issue only on these
> targets and hence tested only on these.
> 
> Regards,
> Prashanth K

-- 
With best wishes
Dmitry

