Return-Path: <devicetree+bounces-204664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F03AB26435
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 13:27:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C608583945
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE5672EF66C;
	Thu, 14 Aug 2025 11:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U8Lzcoi0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE6E2EAB6A
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 11:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755170774; cv=none; b=eNPAJRL2tXbtRjnd8MClYl/bl/tdptyTe8ojPArAUstFVaODEWEU+AvxezFPz++f0M8rWYnTjyq+rxp3eDcfnlz+zaxjm3RtcxkZmG1F/mA3m3/rslw7Bht6pupW0tlge0qNnVP1sMmwSfIdQy7Rpfeso951R70ZZlrMviTA960=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755170774; c=relaxed/simple;
	bh=TXbSNiEB3R/2ieN7xtCoarUmorqxnfg3YNjh0dqu3+I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NJydADI5Eyk66TXUyUcyKCxhM2iB9ZfLA6TJEMFkcDvlge8qGCX/aEu3udXewpgnkcEaabpJS8XrKgXhBArKNsOmWfIN04RFaPF/lJKsurlF43Wf0T9yd7msc+mPc2So0SzSphLiJ8VhUOO18iYHiJFx8Wt9MV7HF31yMyA/Jo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U8Lzcoi0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57E9WXNc013690
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 11:26:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9l5Xf7ay6Os+hJPhNXMLzGQB
	mPfNGIe/A5XHYvxm8IY=; b=U8Lzcoi0K2t2nPu4CVPuCIGWaldrI1vDN/RMfRyw
	6fj6vqz+Ek+TPMf9b+QSMIPbHaW1cZheiHo3aglRKRBiTSdCNEgcN2827vSTNZHG
	j2NiTMCv0Ain6uCeKl5ytRi9zqa/1j0dqwt0jaMWPlFAr0WOcTrCQoxBqamteMNt
	CCyz08J73RhTlx7Jq5JrUuRB1lJUFX9yNttjvu8eRXmPp4V2wgWf9wywfC551VTZ
	M+ClCLiDqKsLT5WrRNXHQY2pzoDqAHkb3ndybAAd9IbUiIa+Nt5605T9NX8CQGnr
	3OmuuCwBBMEeC/VQGQIM88fmFg8xwUtjkupwJsGyQJplVw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g9q9xhps-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 11:26:12 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a928da763so17910606d6.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 04:26:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755170771; x=1755775571;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9l5Xf7ay6Os+hJPhNXMLzGQBmPfNGIe/A5XHYvxm8IY=;
        b=EhHgkcA13C/cAoWgcpa73Zs0Oos/mQq0eSEkt4SGr4JXRVVUQS23EvBfGK8ng4ypF8
         kCFL+Fzo+ZiI2syoGeCxhK99Sx8kgu8eS8Y8CGnSODjqRnEbxz41uGNIRbtAHyp1NaOq
         dV9Fz2+iEpwelS9Q96tbr7V4E04m6XsFHeZ+mPQ29PqvtmABOjFeUuAyKD9hrpSRdtjs
         dHfnhiSA9QjmJ1BB8AfWCF1H2T3bJOG71tc4/whQblanI4bXZ96WUqeTgWUlrc5o/h6B
         iq+OlxLbAHMtIhCcZThVFIh78LXePo2RBmmrK6Bo5RikYfPRSYegRncecSo9zL+vebSt
         W+yA==
X-Forwarded-Encrypted: i=1; AJvYcCWy6J2qijT4RknfLJwUen8b3J6m4Yf8ZhOg34k5C0rRQk9IqqLNpykTRufg9BBgSFG1bhKob6D+6o8F@vger.kernel.org
X-Gm-Message-State: AOJu0YzNCK6OaD+hoNXnSNHQ/YIfNMdQ+5irLTdVLV2MYiM1AR5Flgny
	2PbvV056QUJJQRVX9d5uEP1H7RjWIHMpx1F2I+nyL4E0I9VXwYdbwPPhx6twmuOkeWnA08GtbMt
	cOxsgwrKvOeguKW9w0aT03oHDgNx8JfO36oSLQ03esQd4JcvkvJ9mi+fhjnYJgIBi
X-Gm-Gg: ASbGncusuuLfVpEYIxtWkivz1DXTCctayIZ2xyj18EPWOrK4G3gtLEeuLS/T2SIw9b4
	1+Voe+t7tLNlE068DKZ8hVnvw3TpNi8fC/nBp6JIj+6kQ2xJXhtzO58fSZ7E2j+0e4hN687i664
	U7SFaSrEVKBFWWXoChYyz+G6w+lgf68niwSRCL/oiEl+BuHrGLPGMegp1MaRlIxgHoHg4KDTflw
	cXyCtd6eeKDWvw2inT8XNGcgracbHPJxaA0/gF95Bkc+FM5RWap0bS40R9ZsKLF9bK0WVXEm0x2
	/ZRw7pe8BvS+pgu2fvd6iELfTYHUrMEuDyrTzQR5ONQrVxp+ekVB+HHHtEeaQCx/4pslLhvC2PM
	osVpBAv7EPjN1T3Pe7pWY1J8p6Ee/H4n/kzh9L4v7RkNyDCjxf9AQ
X-Received: by 2002:a05:622a:511:b0:4b1:dd3:e399 with SMTP id d75a77b69052e-4b10dd3eb4fmr18484681cf.64.1755170771063;
        Thu, 14 Aug 2025 04:26:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtN6pLL60KSnafzV8jSq1qMtlj0g/UPMsEkwHvO3oPzQWBiZQja+mqbp1z25h70yy7INfOYg==
X-Received: by 2002:a05:622a:511:b0:4b1:dd3:e399 with SMTP id d75a77b69052e-4b10dd3eb4fmr18484171cf.64.1755170770552;
        Thu, 14 Aug 2025 04:26:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88caf0ebsm5610119e87.154.2025.08.14.04.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 04:26:09 -0700 (PDT)
Date: Thu, 14 Aug 2025 14:26:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Harrison Vanderbyl <harrison.vanderbyl@gmail.com>, marcus@nazgul.ch,
        kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH 3/3] dts: describe x1e80100 ufs
Message-ID: <25c5vwdgrfar6rz657nyijan7ozo5nzyyxb2w26wf5rvxftkvm@wy2fbsi77prj>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
 <20250814005904.39173-4-harrison.vanderbyl@gmail.com>
 <tlkv63ccpnti367am47ymhaw3agjnyuonqstgtfaazhhptvgsp@q4wzuzdph323>
 <57ce520f-a562-471f-b6b4-44f0766a7556@kernel.org>
 <aa0ed59a-4eb6-4f7f-b430-4976ee9724d8@oss.qualcomm.com>
 <433e1189-e2b6-4299-9fa7-13e7994ec89c@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <433e1189-e2b6-4299-9fa7-13e7994ec89c@kernel.org>
X-Authority-Analysis: v=2.4 cv=CNMqXQrD c=1 sm=1 tr=0 ts=689dc7d4 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=4zz7r-QmOHHUCVnHuw4A:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: WJiGjtHp2FNtFljHbNbAk3P0oMIjiEh4
X-Proofpoint-ORIG-GUID: WJiGjtHp2FNtFljHbNbAk3P0oMIjiEh4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDE2NCBTYWx0ZWRfX25s635vkcbkW
 c0ehJjqjlXvK8B1adGqLSn7uoya1lYMRDHopBK5fDUicPq9fbregW/FtDJwDsmIfiC6F7aruaUd
 4LlgavLQkhXJmoiLe1/kB9YGvU+niCnSUHe3P2B4jYIUsWXkHhb57TfVd6wPIVDI7OF85Beygi0
 9Ch/i7s76HzjH0AanXgyZ7DcdIqJr2bS89OrK7bgVoHaslkM8YZp51q3zm0apBeUoK1B8jDMvH2
 5esB7CYpJvWOXFR6xOupxZJuvl7vvQm1vwZMw67KHKvr07GMrJHwzAItq+bKD7jF/kkwoPsAsDP
 cHlBw2+pamIf4CH5kVlfUX1dkRj2O7xAS9InLviSowBM4hnjKF6KabUAuhH4OR/JhPFM+dx31KN
 sPgq4GE7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120164

On Thu, Aug 14, 2025 at 01:18:46PM +0200, Krzysztof Kozlowski wrote:
> On 14/08/2025 11:46, Konrad Dybcio wrote:
> > On 8/14/25 8:59 AM, Krzysztof Kozlowski wrote:
> >> On 14/08/2025 04:42, Bjorn Andersson wrote:
> >>> On Thu, Aug 14, 2025 at 10:59:04AM +1000, Harrison Vanderbyl wrote:
> >>>
> >>> Welcome to LKML, Harrison. Some small things to improve.
> >>>
> >>> Please extend the subject prefix to match other changes in the files of
> >>> each patch, e.g. this one would be "arm64: dts: qcom: x1e80100: ".
> >>>
> >>> "git log --oneline -- file" is your friend here.
> >>>
> >>>> Describe device tree entry for x1e80100 ufs device
> >>
> >> This is duplicating earlier patches:
> >> https://lore.kernel.org/all/szudb2teaacchrp4kn4swkqkoplgi5lbw7vbqtu5vhds4qat62@2tciswvelbmu/
> > 
> > (that submitter clearly expressed lack of interest in proceeding)
> > 
> 
> Sure, would be good though to reflect that - provide summary of previous
> discussions, changelogs or at least give links.

... Also keep authorship and SoB chain.

-- 
With best wishes
Dmitry

