Return-Path: <devicetree+bounces-160904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 796ACA7189E
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 15:36:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D83A173BE2
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 14:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CF31DD539;
	Wed, 26 Mar 2025 14:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bucX4Nzb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9372F1C8638
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742999755; cv=none; b=E8WSqZieegQF+WHF83rXeMdAxc1ZQN2JZd/FcOfnN34V1BkLbZzVjDqW9XxlouacrDZN4Uv0v+CiWodWUZBMzP2vRxUIRkz5ufBSFkBRVOOJbWArpw9qfvxT4lN4XKPOAzCQjSkEhzuz9lU5ccJ6hJbX/B1MbhzdNmHrLdIKAdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742999755; c=relaxed/simple;
	bh=uTWEOiRebzK1HpCztN7qLyQNV8AB5yFfQg/jL7Wglms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lEvcSTg+huBguJPja7WJQaUu/0GAQQ5WVHjeaZE8WmFearMjBMwuLDnyICVQwkycrFTdiyn9nX5u+LfVvlOPuz9yTlOm55T/1b8glnAP+Lb0ItDmaH1v4cg4oXop9NNHmhu5TKWJoX/6qUiuU3wMTo3NG1NS+j+wwa56Bu2Vk8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bucX4Nzb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QA1inc025368
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 14:35:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=a3LBv2dL/fjVHNDpQ8LXA7nk
	O+aChHlItG4zFaoX6Rw=; b=bucX4Nzbhs4E4B5QrJ5dJaDhiNM9BgRijA+Pc+bV
	LtOk5jD7GuaoSUEJfM8zxasBnL3L5u3Z8ChYD3inN4DBljATvrM5fPbKXLO1ydcb
	Zuuu+mmy0Tn5y0lvj1GpDqt2wvCQITabvngMEjRtDFx2j7GSga9pQefR0Bus9Ky+
	qgcJFRkvBF/Xg2TLtlq0nM8B3NqaMfmFmyN4v9AnFECMeBcVvKq8FyU3Jtgucx+9
	TKW38q8PFrbeSilfqmoPWeMAEUfoAi55x7gbOJB0v2imXednWPQFF67FQv0n5RFY
	2obZXx+/NJrvWbZwooFIlC4MiGP6AGP4Iyq9BMAWFDaDbA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mffcgr7q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 14:35:52 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54e7922a1so165220885a.2
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 07:35:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742999739; x=1743604539;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a3LBv2dL/fjVHNDpQ8LXA7nkO+aChHlItG4zFaoX6Rw=;
        b=UwA6cLF6mjjkGHoZf6TluJB31dhXpGePymloxlDeFAFi9w9btkvhE7g6rW3kmuvRD9
         5s3bSfyOdrFSz9ICImT7AzGspzxLFYrygGPq1Z0OcTsta5FDKQzS/EObcFB3kmvw0c/S
         C88N6fXIQpV7j3fzl/gyr7ScAbo72DOs4Cyw8doWuNyt/utXsZeDZXD5QBdAtJ3Kf659
         nIjkkz3k7J3ru8cbMCFFyf6xVVCcqQLzmG25ZJe8+brv0yYtcLe5Q3rSfbZ9GVqNQOQ9
         1iGOwTY4D9wL09d6p6ptK4IgSbd31KqsX5ExiM2NmEK6WRQbYVN7qD1Z34PlvtM8UvPz
         JAlA==
X-Forwarded-Encrypted: i=1; AJvYcCUJYkWCWm2/+p9cWyAmQ0y8lhKI5IZp48bd9DSkDBJziVRjmY9gVmLK6hpV4WTyOr9RGxAb3koWHSri@vger.kernel.org
X-Gm-Message-State: AOJu0YyHHEkpxZWKcDHDHYmTpV8v3Smz48HPTnpWN2jHYqm5mD+VcYkE
	ADQwk9+exCLtfIZW3HyKu07HkIL1b9OILU85e9r0Orvnq6DIUm7DraccVWhU91Dj/bgoIE0tLHJ
	ghUkdLPpYFkHx7idUvMbR0RFJLAyVl6SxfaCYeIqDxKLnSzv4oGrjGofuPmiw
X-Gm-Gg: ASbGnct7PLn9gCVCuRujcazUge/AcraC2YUM16eu/iObWyNzjQY3iW7/v65FL7Qe9qa
	KH3sazGj8RCXjc/RRh+QfYfWy4WUVctvDJ/6Si5/KbA3sf426fgF/kdj1A8dseCyBTFoPdORLzc
	6vuRalb9ne+9AG9bbx2IfCK+Ang49WfUllQnNxb8EndALpSHxAVVffaQlzQTgp4fRhms9zVi1Ml
	o7Mp2IpahnziyN8AdqU7pOzT12z5cHf+keJZ2NhMsRDYoXljjY08GMpUNmj8n6wDbfw13DIt+io
	R2Hk8+CNMs+QuAJ0WIfZimKyB3vOjQLRa3BH8T0aPjFuarAgWbUXz0W9HwRIsuW/26tguxYu+a5
	/x9Y=
X-Received: by 2002:a05:620a:1995:b0:7c5:3b8d:9f34 with SMTP id af79cd13be357-7c5ba190732mr2254547185a.34.1742999739226;
        Wed, 26 Mar 2025 07:35:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEs46zlTmPxSPGBWjaeuOLf0lsuPSVQruFQsyK0XBUrWy53Jjrx2JCfX0d2UmjavDBdWj800A==
X-Received: by 2002:a05:620a:1995:b0:7c5:3b8d:9f34 with SMTP id af79cd13be357-7c5ba190732mr2254541885a.34.1742999738705;
        Wed, 26 Mar 2025 07:35:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d7fea69sm21494631fa.59.2025.03.26.07.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 07:35:37 -0700 (PDT)
Date: Wed, 26 Mar 2025 16:35:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Prashanth K <prashanth.k@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 0/5] Add snps,dis_u3_susphy_quirk for some QC targets
Message-ID: <vy62ivsp7ibgotyczg7tzmxtirwwhx7kwhkatsltsprtsoqinb@5ctysskl76rj>
References: <20250325123019.597976-1-prashanth.k@oss.qualcomm.com>
 <ee0848ea-7a06-4f4e-9115-5e3c0ab8bf95@oss.qualcomm.com>
 <7029a455-47be-475d-b429-98031d227653@oss.qualcomm.com>
 <gyeppjlzfpmazj5seohhab75mbhv5kyzdbxh7iqddd33dnah3n@w2tpd5gme2rq>
 <9a4c51a3-ebae-486c-b8ea-44035ae5e616@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9a4c51a3-ebae-486c-b8ea-44035ae5e616@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=CdgI5Krl c=1 sm=1 tr=0 ts=67e410c8 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=-bij7ddDyyIky5GfeWYA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: BcyM6IVQe_1CwVO990ZAboUSKVY8V4Oy
X-Proofpoint-ORIG-GUID: BcyM6IVQe_1CwVO990ZAboUSKVY8V4Oy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_07,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 spamscore=0 mlxlogscore=683 lowpriorityscore=0 suspectscore=0 phishscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260089

On Wed, Mar 26, 2025 at 10:52:46AM +0530, Krishna Kurapati wrote:
> 
> 
> On 3/26/2025 5:51 AM, Dmitry Baryshkov wrote:
> > On Tue, Mar 25, 2025 at 08:31:55PM +0530, Prashanth K wrote:
> > > 
> > > 
> > > On 25-03-25 08:11 pm, Konrad Dybcio wrote:
> > > > On 3/25/25 1:30 PM, Prashanth K wrote:
> > > > > During device mode initialization on certain QC targets, before the
> > > > > runstop bit is set, sometimes it's observed that the GEVNTADR{LO/HI}
> > > > > register write fails. As a result, GEVTADDR registers are still 0x0.
> > > > > Upon setting runstop bit, DWC3 controller attempts to write the new
> > > > > events to address 0x0, causing an SMMU fault and system crash. More
> > > > > info about the crash at [1].
> > > > > 
> > > > > This was initially observed on SM8450 and later reported on few
> > > > > other targets as well. As suggested by Qualcomm HW team, clearing
> > > > > the GUSB3PIPECTL.SUSPHY bit resolves the issue by preventing register
> > > > > write failures. Address this by setting the snps,dis_u3_susphy_quirk
> > > > > to keep the GUSB3PIPECTL.SUSPHY bit cleared. This change was tested
> > > > > on multiple targets (SM8350, SM8450 QCS615 etc.) for over an year
> > > > > and hasn't exhibited any side effects.
> > > > > 
> > > > > [1]: https://lore.kernel.org/all/fa94cbc9-e637-ba9b-8ec8-67c6955eca98@quicinc.com/
> > > > > 
> > > > > Prashanth K (3):
> > > > >    arm64: dts: qcom: sm8150: Add snps,dis_u3_susphy_quirk
> > > > >    arm64: dts: qcom: sm8350: Add snps,dis_u3_susphy_quirk
> > > > >    arm64: dts: qcom: sm8450: Add snps,dis_u3_susphy_quirk
> > 
> > It is hard to belive that this quirk is to be set for SM8150, SM8350,
> > SM8450, but not SM8250.
> > 
> 
> At the moment we wanted to add this quirk for targets where issue has shown
> up either internal to QC or at customer's end. But the issue didn't come up
> on SM8250/ SM8550/ SM8650 so far either from customer end or ours. Would
> like to update for other targets on need basis.

I'm not questioning SM8[56]50, but not seeing SM8250 here is really
doubtful.

-- 
With best wishes
Dmitry

