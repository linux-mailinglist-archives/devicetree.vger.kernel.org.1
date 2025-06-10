Return-Path: <devicetree+bounces-184339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB26FAD3B7D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:45:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 093947A1513
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 920F11DED52;
	Tue, 10 Jun 2025 14:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I9JoBqre"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084D9126BF7
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749566673; cv=none; b=HDHENOP9KOm6lHNsp1prBajrU6SuIiJS+SVV33td4H4UamMk87e8HrrtA1EsWeZ1Kc2wrRN39Kezg1vQfVp+mLzVEr9IkmNXzyOpZ19Af58jTEjC10yvewxDY/n2QjdatvNsauHoXmGEKMFnCZxIORlv4WMxsXOvALjwykCyNoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749566673; c=relaxed/simple;
	bh=ElggMui8jF9y9EX7wOkS1Ek+i49TcttuLUv2qYZX3dY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FfETXwnh7Rv73wPbsj/BAvJAjj8yMHfUTZoL8a3gVpzf2nj8oboGCgArzMfEWqc5zbrE8f1ebJ6+m0pwN1CV/peMje2g1VSLtKhRX5vRkKD1SkwQfB2PLimmHLpcQozOtwgIuk+6YsvZW8tcngRaz9spnMGAp5DUDO6BRC3F6Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I9JoBqre; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55AACZ2D030719
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:44:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dmArcDtz/VBFaWXVD5inOnUO
	fF68N2U1yWnQMvw/igY=; b=I9JoBqreDfv3bobmrQgTMwMhEXziUQaiTUvUnSIl
	t4Hlow89ONddw7ZgbwQ3QghY2Ajdznv2pigh3V/qeMmbOV7BWgoX7yHH/cqU7lYx
	iqwOgbRh97BI52b/drn55ku7KA+IvVmo8QJBthvseeBt3Paqv4mlhQYNqJvVK60X
	WcVyzu9KEb0VPiVbftYITr9klv8oFDkPD79ENXpGaUj4a2HqfvpRcPIJBiteaIA/
	Yleuc2J8Yq7458Hs0mv44KpAUY7jtVhk9wPptGvljq1aG70Yi/1R8uzWBq95IWel
	dnVNWIW63lg4kWNYXhHOWtcIZbPifeDYXXpPoXnWXeQSeA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4766mcjj4x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:44:30 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5e28d0cc0so852554085a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 07:44:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749566670; x=1750171470;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dmArcDtz/VBFaWXVD5inOnUOfF68N2U1yWnQMvw/igY=;
        b=WpGWYKHLZZApHjVeq1n+H8GhHMMUk9IkjMAsx8YV5YX4+wH9eSzezz187Xqs4qVFzP
         9a0wyHdhXw4Xjw4NRP+tf2qwlELQq9pCvuvkXSNuXqN9OQPhnTL1+phcA/A4YDQsvjs1
         bYH4E2AaL0AK/6slApC6I0W60dRFwS06lsXemkgO8/gANoFtYP67TRoJJ2I59cyfC2mF
         wOC995yoX8nFkEmrZWR/P87It0lUJYAFf7+SwgwckgPC61tIH6w87as2DEthDu9njgWz
         wtzHY91zAHTnCKIjGOfA87AwSPMKxlE2vqEz60FbDTurhdzURr3kxM0fSHeeXjiBmzTs
         ebUA==
X-Forwarded-Encrypted: i=1; AJvYcCWTDtJJG57Qj3f0L6EtJLIFJwllNJyyC+Vu7uhuOKmW72XReBfZzJjw6UpgbhW4WPvS+XcsCDs/w02A@vger.kernel.org
X-Gm-Message-State: AOJu0YyoN9z5dlrGS+ExGdoQyXbkVu2mwAgCtZzqE8tnq6LERSfn9+Km
	y/SA47weZEeUnE74wMfxrtwf8tHjiGQ/+twtpR8B/G4FUmADR2JCHbd2pM2ClOVjWlyqgWbqUMS
	QAD+FMdJCtwkdSuYPDtduMRJPqlmVzkPNgStd5v3o5rWTpdbx3oA2EPfePC3ZnE+F
X-Gm-Gg: ASbGncvl0h5PVdf7CQIWEYAX+3v6RqGcJ34eEmu9Q9BjE/CZBP7lafPl8W3ct1P/ReO
	e3pNRyaw5TADPHNWQeIfaDwxWcIqSTam9BmqEXR8EKweXMJd4vyoxzdlwadPnP6KM1rzRwWvKLY
	nsnQeRqEN8myevZbGwVK8l5/I52yOABsMn8Q6zvP2i2OKlZolY7STJ+CkC8GZ1xtbBF1YrJ56yb
	tZyGBb0RpmPvG5s2oAjv03Gs36aQP0bk/lNW+nklnYsy59Y7w7WIwiAdHAphcijQPSB0/5vsNka
	RXPqEsDDoszz2dc+eowaI7jyzi5L8UBapFhTfmclS5WqaO9JvwOvybfNgG+oXTlvWSFIq6A6Hew
	BUc129SdYhN3zoR6BkrZ2sh5Df55NeUkGf9c=
X-Received: by 2002:a05:620a:31a1:b0:7c5:4b6a:d862 with SMTP id af79cd13be357-7d3a7e388eamr13585185a.33.1749566669639;
        Tue, 10 Jun 2025 07:44:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWOd7xuhrf5TwkieWLFC54AS4om1PhF57nn/qY8jxb6FBJjibaKyC8aIYrg6fhy1wK9IcBnw==
X-Received: by 2002:a05:620a:31a1:b0:7c5:4b6a:d862 with SMTP id af79cd13be357-7d3a7e388eamr13580985a.33.1749566669251;
        Tue, 10 Jun 2025 07:44:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553676d04d2sm1564236e87.33.2025.06.10.07.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 07:44:28 -0700 (PDT)
Date: Tue, 10 Jun 2025 17:44:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort
 interconnect alphabetically
Message-ID: <tlaf6k4pblymc7zrsglgiugn4ft3bd2wwpmcghysmtnlb7grml@p6mqjkve3dvj>
References: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
 <20250610111145.zp62zx5rjmezvmkb@umbar.lan>
 <26a0a50a-849a-4a2b-87f7-af11b6f91ea1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <26a0a50a-849a-4a2b-87f7-af11b6f91ea1@linaro.org>
X-Authority-Analysis: v=2.4 cv=T8KMT+KQ c=1 sm=1 tr=0 ts=684844ce cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=orh1W3nBkB3DDOtbTGQA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: RWC1I-6WMk2Edsd-jNT0FAN21V8j55Vb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDExNiBTYWx0ZWRfX63ql0u5AQwNf
 mCbiai6hz1duvUaAvQ0Fisk2xHdjOcOCxvlwA35ZVU93D6oJhvJvNNVOslMTDHSLnALRcNayHEI
 5HCrn2ZOqYOjF2UA87qiPuHEBtaZmG18NUcJP5npfJ+nPidewaTpZxvcVjIKjgkgn4cf6lvdM01
 0bk3k1tyRDzxLeDzXcLbT5S1DSfOfMXhjnZODZhtqZLWW5mkqgiqxnEZvsLR0Kh9ZkV05NM9kt/
 6Vsu/wJkqpomTew2egSX0qoeOL5eGiLRiYF+kQzpeye9mn+U/wm79V1gJDBpr/4Xvpc+q3iz4CJ
 JmfMDIT3+7U+CBvkGBe9PvTD1vBIwnjffM422ki9gjfYRHZyM7WDEmo/X2UMO5PGS3e64zFjwiy
 QMqub7eErIzZp98YEjDe0syEIZLVjhaI0VpYuCJVBUECV391by8qsmXy3ybjwjyGuIMlAxCK
X-Proofpoint-GUID: RWC1I-6WMk2Edsd-jNT0FAN21V8j55Vb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 mlxscore=0 phishscore=0
 mlxlogscore=999 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100116

On Tue, Jun 10, 2025 at 03:42:05PM +0300, Vladimir Zapolskiy wrote:
> On 6/10/25 14:11, Dmitry Baryshkov wrote:
> > On Tue, Jun 10, 2025 at 11:33:17AM +0300, Vladimir Zapolskiy wrote:
> > > Sort the entries of interconnect and interconnect-names lists in
> > > alphabetical order.
> > 
> > This looks like an ABI change. At least you should explain the reason
> > for the patch.
> 
> There was a number of comments and notes on the mailing list that
> any changes to dt bindings without users are acceptable, i.e. no
> users implies no ABI change.

It is still an ABI change, but the one which usually has a waiver. And
that's why it should be explained in the commit message.

> 
> Also it was used as a justification to accept dt binding documentation
> changes without the correspondent .dtsi changes, like in this particular
> case. So, I believe the room for fixes is still open.

Yes

> 
> > > 
> > > Fixes: 2ab7f87a7f4b ("dt-bindings: media: Add qcom,x1e80100-camss")
> > > Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> > > ---
> > > Another fix on top of https://lore.kernel.org/all/20250502204142.2064496-1-vladimir.zapolskiy@linaro.org/
> > 
> 
> --
> Best wishes,
> Vladimir

-- 
With best wishes
Dmitry

