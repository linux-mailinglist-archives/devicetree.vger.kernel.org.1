Return-Path: <devicetree+bounces-223569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75849BB812A
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 22:17:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEABD4C48FD
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 20:14:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D5C23B61E;
	Fri,  3 Oct 2025 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ctDr/41q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F321230BDB
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 20:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759522473; cv=none; b=U82/oW24XN2vNfdFLnnVHDsl0VFeYgPXLYJxSyud4RNv/5glKPYpQ6vXCinJ+qsor+agaPcNWTp89BNm5p9nhXfQJJfjtIvIIy9k8kVjUSFmhYUsf2Pqt+kiMq3/A4wQ1M7czlifsoHD60veND/u6AxZjOsyNuYdUIcDVt0XQ58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759522473; c=relaxed/simple;
	bh=fD8n54ZX9M0RRQRWUXO3tmRnzc0ewZjTWlfVmwaUwfE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=icdf+bCpL8/J05GeiFsRygVf/j2Lr1ypYs/AGDQemMmeXe8d7jWcKfOyE8XKNYIDJlbwuR4gyFz0omWUWP/0C3Bmz7EPhK9LZ3zy2OWVGFhQDxu5juiocW1MhzMs87bVVjGnmOni+CtjINC05Z/UGOUDSfmxnMgos8M/LRceAGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ctDr/41q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593BUhOo011750
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 20:14:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3d9SzCzSMJIBbQowA9w6QpPw
	22iAr4U27ZeiUZsWKrA=; b=ctDr/41q1epOH8JmCATKNMFwBQJA361qEiMbkHGK
	Vu+8JQ3OS9BLn7HIKjNVx3K45tPXip9z2SKTlASdb69+mpI0zQEeuZ9+BP+1J75f
	JPc1phAtYdf+uAGL48vI0aJEl+d7LIteaJHTzoNyzBN//KgHtIMZ/PzhLalDrOxA
	PsysQPT6TtqgrLmC9D1xSjA4kFm/1xFTAao897ajXeC0LiJRQHT6z/T9Sme+H4M/
	VPhD/POypn3o8R/h3W83hZ9E4MZwdWsOqcjTApMk6JGM05iCntwrgXmfRtvLYFA4
	f9ANutiIlJ0c/4v2KvMpM5gwKAXTebEM4X3UxzImI/thfw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93huhbh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 20:14:30 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4df60ea7a1bso54696821cf.2
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 13:14:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759522469; x=1760127269;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3d9SzCzSMJIBbQowA9w6QpPw22iAr4U27ZeiUZsWKrA=;
        b=bHJoKv8U7v1jktibpl03su6RZDQDkDkGCt/HjV3nhUpnwzhgSnhyGwYV/EKLy1CKAU
         fvIe229c20sFMwObfjfntQItndk8XjIzp58U/+9KhgsCelk/LzB+fBZCGHE7zTnu0xEc
         dKEoLJnD+3QO+OAUCel2YtzY+34OLkKDn5YTxjT7gr8L0Z+tIf52cBIPofMJ2of+3UO0
         xCT5L0j81JnNLOSrdaTGLGodio/XRHpg9yiGbDffKcKQGGXjifJduA7wAUSr0mwVvDZK
         0FTR/d89xmJdhwEJnpw3yuavUHj9i3olIhg8eDDdCia0dNzbL4cbmN94qj3qKDjjenE5
         Vr6g==
X-Forwarded-Encrypted: i=1; AJvYcCVGJnNUXSSIx7B0L1mrMGdnkU3HShNfeUdVD2pXrcAnGj1gKHxjOslv6RZ3XktxKf1ypyEJRG9HO60N@vger.kernel.org
X-Gm-Message-State: AOJu0YzUEwNkwLmbxjJiWhqYPrSttX+AMZlZCh4clwQopidYLCVSkMz4
	HNTbgTRW092t28iviEiWGkpyDTMbhalKF3BWWw/1By4AUXgF6sOYY4cWeB8NbKOqGyVlqMH4LTC
	3RHj9+6Lj6QQDwit0i/fIkogjL3TJ9gb+aMHzoSyr38fPgVv8V3kfDVCCjLTSfsIN
X-Gm-Gg: ASbGncuwwbuV5TzD3JULMywoOcSschitZMafTgFKqZ9jxf2CXoAGOgwoU+7/U7iTm29
	GdvZC1VZnXdfzJJHGW+GI1oqcTr7BWrAXo6rk+VZPbAoT4pl6Aoi5qdoTUWK3VQjcNDZbnjBceh
	/9pJhL3ZLDCOI7k8Lyd2K0/e5aIWyc3NQsW0yO0n219c3QKLMT9a0elCXWeezFyp5tF7ZFfrfJ/
	utsjWcZBKUaQszIQX41jrDQK0D+Lm2Mm0owOBhYJ7wqXR29K7bLo6VWC/KP/ONqEmgQCWwmnKRw
	bweks5K7WM294eFYw6CE5uyqSfW4C4RoQg/BtsbOFXViBvcIjCDcZMZ9Djsvx0QlBgOBWSPZmhr
	b86m/PtZyILjMbpbDss1M3IME02XijWEnhiq+AOJZcuvM6jIotiBtKB7RsQ==
X-Received: by 2002:a05:622a:1482:b0:4df:1196:f56f with SMTP id d75a77b69052e-4e576b43357mr58964001cf.83.1759522469037;
        Fri, 03 Oct 2025 13:14:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqQgFtCLDGX+O3PJbNb1GIypKvYOnVxRVaWG1pkNYoNTcWC/bmJvu3v1drdtBBMjl3H1gE3g==
X-Received: by 2002:a05:622a:1482:b0:4df:1196:f56f with SMTP id d75a77b69052e-4e576b43357mr58963591cf.83.1759522468538;
        Fri, 03 Oct 2025 13:14:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba2b79e9sm18024371fa.16.2025.10.03.13.14.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 13:14:27 -0700 (PDT)
Date: Fri, 3 Oct 2025 23:14:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH v3 07/11] arm64: dts: qcom: sdm845-lg-{common, judyln}:
 Add wifi node
Message-ID: <wudkpzky5sqrhqjfm3utrd2tcmtalszmyw3zts246pop4a7aj5@oro2wyqhtwaw>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-7-b14cf9e9a928@postmarketos.org>
 <f58493a9-6def-4610-9c3e-d6a877dc23d3@oss.qualcomm.com>
 <d38801bc77ad00442b1669ea252ae30a5c6af5b4@postmarketos.org>
 <7661d9d9-eca3-4708-8162-960df0d7f6c7@oss.qualcomm.com>
 <ad721948b83a54eaa34f367e12564fe6acc222a1@postmarketos.org>
 <gfbvgsen75w5h7afyo454pvdfslkeprqyuycuok6syinbza7vx@crapzdo33re7>
 <b9285a2e81ca992b9fc560c78ae03921000e388e@postmarketos.org>
 <budxy3xza3ieykmrp2anpiz3gktq6mc3pqohkf6ew23jun3po3@jv2em5mmhjts>
 <4db4f0d411cb250db2d513690c93f0ff5a6dcbd9@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4db4f0d411cb250db2d513690c93f0ff5a6dcbd9@postmarketos.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfXyeqPCachOr+w
 4HfN5yTST/uxesY1uq2h/1naHJv8Bl53bwEaVaL6aE/Cx0SF4pp0kTE378ylolr46RDKIJQV+ky
 vwpN5fn2J3VS7l98NrIfs3yjotnqnmtHit2QuJvzLgXDAFUmopYXnTKgtVOusTaJYjkUMgLK500
 ooOa7hqwFItsbFzaMEffA2MCYaTjdUjaOYe3zA7J0BgTuiRYFufr5kLaGaaIbndJ5rx/W7FA77R
 mGOIB5W/2o/4j+xdpJ7/k0GN4FPWsmcj2EUreMjdFFo4Ew+paEN0IWs58GFv6d97phGUbnvN+2u
 EZx1+6fAywx3nf8MSXY8ZwEhFWsLf/fvZ5JubuYIm8EzntG9D8EA96PmlQFMJ+J1PVh1f8Djrse
 Nyi7yRQVRzsjhkH8bHVAkCWGbwYPWQ==
X-Proofpoint-GUID: CqBEoZc9QdkucMjEeDA2yvMDXD4tslI8
X-Proofpoint-ORIG-GUID: CqBEoZc9QdkucMjEeDA2yvMDXD4tslI8
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68e02ea6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=p0WdMEafAAAA:8 a=85DtlbXH99wPiBcwuMQA:9
 a=lqcHg5cX4UMA:10 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=poXaRoVlC6wW9_mwW8W4:22 a=pHzHmUro8NiASowvMSCR:22 a=n87TN5wuljxrRezIQYnT:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_06,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041

On Fri, Oct 03, 2025 at 07:55:21PM +0000, Paul Sajna wrote:
> October 3, 2025 at 7:36 PM, "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com mailto:dmitry.baryshkov@oss.qualcomm.com?to=%22Dmitry%20Baryshkov%22%20%3Cdmitry.baryshkov%40oss.qualcomm.com%3E > wrote:
> 
> 
> > 
> > On Fri, Oct 03, 2025 at 06:52:03PM +0000, Paul Sajna wrote:
> > 
> > > 
> > > October 3, 2025 at 5:13 PM, "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com mailto:dmitry.baryshkov@oss.qualcomm.com?to=%22Dmitry%20Baryshkov%22%20%3Cdmitry.baryshkov%40oss.qualcomm.com%3E > wrote:
> > >  
> > >  
> > >  
> > >  Regarding the MDSS. Is it being solved by adding reset to the MDSS node?
> > >  Or are there any other issues?
> > >  
> > >  Yes I'm referring to the reset / pmdomain issue. Joel Selvaraj is looking into it in the sdm845 tree. He said he tried doing what other SOCs did and it just got stuck in a reboot loop. More investigation required. Currently he's reverted the pmdomain commits in our tree.
> > > 
> > Which pmdomain commits?
> > 
> > -- 
> > With best wishes
> > Dmitry
> >
> 
> https://gitlab.com/sdm845-mainline/linux/-/commit/002ebddd695a53999550e241b71950f1aa0e1ac4
> https://gitlab.com/sdm845-mainline/linux/-/commit/09813cde376d9d8f30eaf761534532101a0a7755
> https://gitlab.com/sdm845-mainline/linux/-/commit/0e789b491ba04c31de5c71249487593e386baa67
> https://gitlab.com/sdm845-mainline/linux/-/commit/13a4b7fb62600e1c0738fdb0b7176555ff05aadf

Thanks for the pointers.

> 
> All got reverted in the sdm845-mainline tree, I believe related to fixing mdss
> https://gitlab.com/sdm845-mainline/linux/-/commits/sdm845%2F6.17-wip

-- 
With best wishes
Dmitry

