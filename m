Return-Path: <devicetree+bounces-223715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EE6BBCCE8
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 00:05:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4A01234855A
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 22:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4A0423B61E;
	Sun,  5 Oct 2025 22:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d/byXwH0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F31535963
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 22:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759701932; cv=none; b=UaSKrOy4SAlEFa39cIJ0tH7iEhtzD+BNGRpp7yM+H9iE22Bugv+5eRaYJ+gHnpPgeEPZdJcGit6XSwMSf+I6V8JmM7sJxRHdS9/WJIr/eWBk+8BOnL4c+pUnT3d7kfc3Jp7mLXEfjI3DSdTeoUTXwYRz7au7LBLdgYeI+4zVH2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759701932; c=relaxed/simple;
	bh=hNTObQJ/BsZJoxgMmd3qjo8J7+vl7iZP+T7OGKXxBws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jnstIGgY9FIYwW5jO9shWmvHXLbJVNBgQHRmeVBQ1dCM2jTMNqgc9e18NnYcIZuKmKwNdMUmdD7r8vPa0QfbSVCP4YiI/ivQQErYRlzb08Xf6oHBF39nf4EGlCn5DDGlNT37ECe/OSWnkv+8crRtXhz3Xec9nLkhWvOfmLb953I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d/byXwH0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595LoxVn023896
	for <devicetree@vger.kernel.org>; Sun, 5 Oct 2025 22:05:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YLLQrA8gIYr0kPOAaAByOZtF
	67X1Nm6784e/ECSQZ0g=; b=d/byXwH0rt2gBEvULpARCyoIDJ+xBd4zhMhY6v8Z
	mGvY9TUE4CvvErwk4lmK3H0v9Ohce3hgeaiScWNWJgw/zZkUM8bk+rC46QCU6fiH
	VL7zkpa7+ivBgvMkK4O2baqaS3TECTkgzf1Ej/AJ+xUNqr/NFPZoO5kBleC/Rbry
	PyiV0NnRu4Z/25Ygr+oRJp7k4C1TItIlu5ev3paHsiCqIS+l/PcpmBNAzciwdEbB
	R0YkAvo2Hs87Gaqf/ZbGbxxZkJc9mdtB7hNoNbVNIItj0dW8IUa5oFHtH/K2q9B5
	HtKaPgvf0tyxdiumJka5CngyCHRrldYFIPfhw2h++13hRg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49ju5xaj4p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 22:05:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d602229d20so80923121cf.3
        for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 15:05:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759701929; x=1760306729;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YLLQrA8gIYr0kPOAaAByOZtF67X1Nm6784e/ECSQZ0g=;
        b=B07XmkXT85IBp21Eaoqq6/BjhgcONrIN+BHbrM7UsIOIYzkGd+ooWe5SF+YszbaNw1
         YwPysB4HNVpTJo8BN5dBtiW6YFO8psrGGIBQM5JoU0QC3GbLlZWZSJA3t+3JkAuUtj5w
         osKBEQRVGD4Lxg1TEoQQQoXfwE2eDz3yYp0DCwUga/ECCJBmGCOWThg51N0IseGSIPGN
         475mjJa3OMQI/lPNDM4hdH2EVCXwM2oxz2dIXq67rxsnVPqGNnwtTe1LnsDk3X6AITGE
         /75P2LuVinVBd8f3v6CcLQ5nkZYx3IdjhmaBe2y3fgev+thJ+XXFyerpKEzbiJM6cr0R
         6X1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUJJGMO2+gb7o7fE+gEOHb5oTcoMi3UmJIrFDo2NbOSLnvxjI05pjzY4I2lUfI6u76IAEiIbWe3AWeJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5kXURXQ0ZQRppjlrZZP7Z70DgrZEWaC0yVzTc7l3N6MFSz8Qg
	mcnuIsnYdSQFbqcv8o2w5xOY9XawM9pynLzWmQ1QTwbUBxQmdohC32/gWzLx3NBetdEq3+4QW0P
	Pr5EC7OIdFHJwhXsQWSmqIj4jsLro5LxvRLC+yDuEXcXhMONqXfL4Sn0NE2zS5ebU
X-Gm-Gg: ASbGncsAA0tzvalfFl2pbvbc5gzNXszjNnWTRRbScPwVD3oJlcK7flKmOiiiqLzAm6C
	GOtzn+hrZecvAFRCSsShljLzKn3tA+cFomHLYSQIJ91xCTm//oFgn+nKYasKPc53Qe/6/FHNZ7b
	vuBskTRAw6cMZDZLzttgxudidAt0jfgvEmrBvY27WfeiM7Erd9+zlRNkiPmLTrlMme9YsXIZMFd
	Zt9m+zbfr5MpZRs+Su00KYU8oLnEHL3jWqrwnGQRZApxRkm9/OqpE97ubFhhq+TUolWuoA17Skr
	uGEo5YW5oXV1hK05YTHqqzb/hB+0dAKe9V59t/O0j72pT27bGsLTeNhEyKyExV0Lx3KGUPKY5GL
	uMImpdBEt5XoVlH2c/G1Pf8CNWT4sxxL/HUPMyDUI9m7XIPhgPWd8JrX+3w==
X-Received: by 2002:ac8:5aca:0:b0:4cc:9fa2:f3a3 with SMTP id d75a77b69052e-4e576ac38e2mr124543691cf.60.1759701929018;
        Sun, 05 Oct 2025 15:05:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQaaH27LewBBN8pAy0wFq08LRB80W7t0WvFe+8d8xPJGr7fWp+GYQfzyZVGrPGj9rwvYf3Pg==
X-Received: by 2002:ac8:5aca:0:b0:4cc:9fa2:f3a3 with SMTP id d75a77b69052e-4e576ac38e2mr124543361cf.60.1759701928549;
        Sun, 05 Oct 2025 15:05:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba444480sm37768201fa.30.2025.10.05.15.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 15:05:24 -0700 (PDT)
Date: Mon, 6 Oct 2025 01:05:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingzhou Zhu <newwheatzjz@zohomail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add support for Huawei MateBook
 E 2019
Message-ID: <ysmkpdicoxuspqe7emzqbbdvigs7yorawgmc3ccebghahlyfr6@z4b72icdnp4p>
References: <20251001142107.21860-1-newwheatzjz@zohomail.com>
 <20251003131925.15933-3-newwheatzjz@zohomail.com>
 <pbrrkfjrqoyj4qspdrordksfueyqejxcsz2oxqctczeoll6ywn@ixpaa6v4mwlv>
 <5021717.GXAFRqVoOG@debian-vmware>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5021717.GXAFRqVoOG@debian-vmware>
X-Authority-Analysis: v=2.4 cv=FooIPmrq c=1 sm=1 tr=0 ts=68e2ebaa cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=JfrnYn6hAAAA:8 a=1XtEOhATCJ7woTDKNc8A:9
 a=CjuIK1q_8ugA:10 a=dK5gKXOJidcA:10 a=bfahJYbJofEA:10
 a=dawVfQjAaf238kedN5IG:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: YkNHbb21u5fAfJ14gZeo7vY_uFMPZxvs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMiBTYWx0ZWRfXykjQMacy7+z8
 ff2aiWvvqBdnpr0Ru0kepzKYLOruqwdxUapxvfn3S1GHHcU6W36OjwqTX434s28WjG9tJ/4NxkD
 ovT0i/XqbhtkxBKwaP8iKcc+mjiIe6E3DOl0PAbPFj3vmj7E2UWf4O6NfkTyS6Wu8YRfGrDcQrL
 qMoEKCiPEe8oY1Y1GXXZKn6f+pmm/i9mpKFl3L5pCHCf1GXwl0gzbukzCKZTl/7zkBPyinPaG21
 Aj6c3TD32dVbN8QTnsTMCoo89mfwsbYJrGTZgU1vhTp3u7BgFpvFcOESoZnlxP4xmrx62DTHohB
 QWvFASLHBB0LZ+G827LDigWiGJclgS6ldiodOoEr5PcrzlTxWyAfCLr7WyQV54MR7Qr9KK4dxuE
 Cu3uW/8tVmF7Jr823r6gpfXNZoOE1w==
X-Proofpoint-GUID: YkNHbb21u5fAfJ14gZeo7vY_uFMPZxvs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-05_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040022

On Sat, Oct 04, 2025 at 07:53:13PM +0800, Jingzhou Zhu wrote:
> On Saturday, 4 October 2025 06:33:27 CST, Dmitry Baryshkov wrote:
> > Did you post the board data to the ath10k@ mailing list?
> > 
> > See https://wireless.docs.kernel.org/en/latest/en/users/drivers/ath10k/boardfiles.html
> 
> Hi, I submitted the board file several days ago (see [1]), but there's no reply from the reviewers.
> Is there anything wrong with my post? It's my first time to send patches, plz let me know if I did
> anything wrong, thanks!
> 
> [1] https://lists.infradead.org/pipermail/ath10k/2025-September/016495.html

This looks good. It might take some time for Jeff to pick those.

-- 
With best wishes
Dmitry

