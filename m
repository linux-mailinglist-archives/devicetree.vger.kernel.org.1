Return-Path: <devicetree+bounces-249767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47465CDED62
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 18:03:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C982A3003068
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 17:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75A212DE704;
	Fri, 26 Dec 2025 17:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f2SV0bQv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dj7bvPv1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA94F2DD60F
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 17:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766768583; cv=none; b=WlLqhEmK61fi3pmdPItznh/XheGhKdvwc5rJMXBquAZnVea7abRbT6KcU7dxd1CH1M+5ctrKp8p68jHxVWCwqcmf84oCn7gfTQU0tx+K6Udj0S3ea5sTmW0AtOFMUUBpeoUvibK0vqicneSI1nJYMATvNWFgDuSvv+jztPZNi18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766768583; c=relaxed/simple;
	bh=7oJHaOoVPGbu+Y0koyarmW7MhRopSTjXWtt5TcEvA5A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aMEbYOFAl/7p08wfLGkU/q8kkrSkwDHvjx8574Xv1hPQ/uYGT9bV4CXQofW5h0NE6zdaxGQL+5k+o5jhysD7Ic8ZDGCIp9e1wTri6p6gW/1ToeDYGNrY+6mBALO6y5DRvayKqXzNjnFvl+Nt9DfnoF5+eZPms5Bak+AQWABNbe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f2SV0bQv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dj7bvPv1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BQ8baPY949966
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 17:02:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NtfH2afvuczdz9DdqWZw8eEZQ6PQp40MM2EwYZTIcE4=; b=f2SV0bQv/V3GfOB8
	bVXrU30EmLjJCJnHJ738WjB2gm88MbDxiTNwEtSNj68vuxA3o0LSnOI2ta4Uq5ye
	IHg6IakAcR2GXY/so2W0Nf7BmDnUd3BFoxYpodYjlAP0Uruu0fn/DfraVaiARxex
	TtooKEfV6WBdOnPH2KR5HARH51uPoZSgtzTvX4n4QYNnMzUp06l7DT58viz0aYlK
	KexUb4kpH+OiflbLXRQCQHyo2zqWlXZg7i+7yuDlxjMorkGael1WQAWjb+cYLxA0
	t7FyjMZbf/5bNqYNqURUYvAuUrYW7tWzh/PJdGNh/vx5fB3+oJrKn/J/iPrPUuVe
	8mjDLw==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8v9y3mkc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 17:02:55 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-93f4ff789c5so18304472241.3
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 09:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766768575; x=1767373375; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NtfH2afvuczdz9DdqWZw8eEZQ6PQp40MM2EwYZTIcE4=;
        b=Dj7bvPv1gpRThW/U3adWOitK1Iv+aXdx7mqW7Ji/HQjXdLBL4gMp88kiNpr7p4AXMf
         t5040S2Pb1k71er0KjmE4pr55b2ldanHfwX8dOL+J11mylghF3YciECDwMB6Y+MqWxgZ
         bs1foe7FbESW/+jecas024WInt9GXBWNMfaQYMx4+vTN2gJNJzM3PcX5J6SULx9Jeclx
         16rIhLOqfG2KVf+xxwO3j8pzstfI1SY5jAGjd4VzxYI5g7eVo++FD+AIATApgSyGjP5+
         /I3uaS7yCtESa8OuM6LexACi5K3CWTebVRQEmK5EgTlgynE8XwJmpkKzP8PaEsR0aVmX
         k1Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766768575; x=1767373375;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NtfH2afvuczdz9DdqWZw8eEZQ6PQp40MM2EwYZTIcE4=;
        b=Oi3z2QfmzppkpnGziAF/2rDkhvlB0XU1QnIQDMf6KAhSbwJ6fEgbHFYCQ7E5FtoeVF
         maRROowviEuEBwONJtIjlYdrjj61B9hsvFvvrqAqbPfb6DLNFcP5un7OD4KnCgIuhC7p
         nsS6lGJpIWf/B7gezOIL4wPZ1StbjdZBro8PO146vkv9drjc32K8kV+ha+o0WM3V8r/b
         CO1Tj3buPxB5ZdfdDE5AdsGwLSF78HXeCyqOVPmkVrH7+Mc6xP9+L21v/UrKP7eQwHOq
         5Uaaz1EZ5Q/ZMX/8e0KkW5g1smv4nrgjd1BTvKr38KRo8WZtaz1COM4NQQOnRDOYB+d5
         Hs3A==
X-Forwarded-Encrypted: i=1; AJvYcCUsGMRtUot7moYIbJEk/pV/N+hEIiEB14JBMtBhsVUqbYbABdhkx9l9pfjLl7wrl4R1gVqIrKjUE1+C@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk4zBmJ30yySAOiKb2ceAbSDLd9vOxB8Zgiu53h5AhLKQ2nkJ/
	quPww87W0WMp7/sp6EzZFnjxFdkgpIlwMI6Ja5qhq0YjEVH4aiYOS2JrIJ45Ghsv6TNzoJsrQcy
	rNPwx7hdrBPsH6DFv07UZuQEs40UijSh+qJBcIcpEQKMVzb4qZmh6llx0g/kc4wxu
X-Gm-Gg: AY/fxX4b8VxVglNfFsdQspvOl51HzJz+9xlcBe321Kg64/o6P8z8PXM2Z6uJpX0y1Q4
	pk/qyCc2L5vcXrdhnWiyO+JqF6Erq5Cb6RTGBgQdgmgdJqkkslgLNICyZ0oXeWN4V2rGQi/59GW
	hwXLbEebW51RV3vr9W9iBcZSd7dhVKAfyRUxWdlgog2QQ/UXRunzd34qrQnPjaPOQ3PmfZ3DJ35
	l4L//XuHSdRau32pSHB7fiSGLNuPOwn8azQINdv1JlizbOkjdWC8Jva+kXNiUh6NdCbS+GNWQHx
	44Tw1HT3yUxD+N7lKTfdFt54yLJBnrfAx3FTgBfc//TnUk6EngRsloN3430dmFl5/a0V9VQ3E5u
	FC4TzxFoW+P+KR6u9x4ihV/XLWshndooz30XbLLZmX9Bn66vZwuwqjgjqPuTj0zEnRlzeUXXjwJ
	CeqoUUQPp9fC3fSCyD33ulc3w=
X-Received: by 2002:a05:6102:3ec4:b0:5df:aff3:c42d with SMTP id ada2fe7eead31-5eb1a816ee2mr8794117137.32.1766768574631;
        Fri, 26 Dec 2025 09:02:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHl4HDTtD1xjVNsDTHMdzYHBv+dDCIdnJRB/dyhaIkKcpagSvwTl1Blz8ED9b7oc7xrtUcKtw==
X-Received: by 2002:a05:6102:3ec4:b0:5df:aff3:c42d with SMTP id ada2fe7eead31-5eb1a816ee2mr8794057137.32.1766768574110;
        Fri, 26 Dec 2025 09:02:54 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185ddc12sm6825688e87.37.2025.12.26.09.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 09:02:53 -0800 (PST)
Date: Fri, 26 Dec 2025 19:02:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shawn Guo <shawnguo@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, jens.glathe@oldschoolsolutions.biz,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Clark <robdclark@gmail.com>, Jos Dehaes <jos.dehaes@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: add
 retimers, dp altmode support
Message-ID: <sassa62hyh2six6dbn6qgz7eobzt4z2p3eyqz3uaifcglwmf42@ckdaonsd3roe>
References: <20250417-slim7x-retimer-v2-1-dbe2dd511137@oldschoolsolutions.biz>
 <CAAQ0ZWT=s2BdobfkKuBAhw5H761ZH7uCH70i_UOR+wJ6cjSZJA@mail.gmail.com>
 <7283e3e7-54f6-4946-b526-2fa180f15c50@kernel.org>
 <aU6Ka6elOYfYbflG@dragon>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aU6Ka6elOYfYbflG@dragon>
X-Proofpoint-GUID: NZ1rd7jfnVgFCDjw6_flA8HE9B5gcvK1
X-Proofpoint-ORIG-GUID: NZ1rd7jfnVgFCDjw6_flA8HE9B5gcvK1
X-Authority-Analysis: v=2.4 cv=Uolu9uwB c=1 sm=1 tr=0 ts=694ebfbf cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=gxl3bz0cAAAA:8 a=pGLkceISAAAA:8 a=cUBun8vSQBpvidU153gA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=o1xkdb1NAhiiM49bd1HK:22
 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI2MDE1OSBTYWx0ZWRfXzx21WXfFivWP
 1baPUyzvqCkYkOCox2ZRjdoSO8Xla6I5tTePjMmUjVI56nXeSZMJNhLyUcWQIKlPk+v6/AqUOmA
 wxOSfdhw8zh6aysxFYhenprAjjBs7WzJxuVQxM9WaBg7537oA5tMx67SaOQIKdfmMRpriAq0zUY
 puBo9CXj3DVretV0yJkA3rJm9sJFz9xqIRFTsrdupMMfW0njCgQSbaUcfOKFqef8X40Ypd2cFZN
 +s1qjwLHZqVO2Bs172ejfCGxsA0MJtF1xUhi2eSOkLEBgo/v1V76sB7wWGDB245y7yCpF9PCQKD
 fCI4eKHMX+KJAfXPxxInsCo8vorsojDNWvU75wrBIyAq2As8iKdbf6/T1+ZccZQpkbLQVAG2no7
 P/Yky6rV4tfNpZLR2OHZUsRI1hYO8wtZN8A0jRzpC4hBQzXbQfSoiSAbOCktpwip5J/MdMctO+2
 JgKKYJsExSVNhftDVYQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-26_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 adultscore=0
 phishscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512260159

On Fri, Dec 26, 2025 at 09:15:23PM +0800, Shawn Guo wrote:
> On Thu, Dec 25, 2025 at 09:33:59AM +0100, Krzysztof Kozlowski wrote:
> > On 25/12/2025 04:29, Shawn Guo wrote:
> > > On Fri, Apr 18, 2025 at 12:35 AM Jens Glathe via B4 Relay
> > > <devnull+jens.glathe.oldschoolsolutions.biz@kernel.org> wrote:
> > >>
> > >> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> > >>
> > >> comparing with CRD and other dts for a more complete support of the 7X
> > >> only retimers, gpios, regulators, dp outputs
> > >>
> > >> Tested-by: Rob Clark <robdclark@gmail.com>
> > >> Tested-by: Jos Dehaes <jos.dehaes@gmail.com>
> > >> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> > >> ---
> > >> This patch adds the required nodes to support DP Altmode on all three type-c
> > >> ports. The definition is derived from the CRD. Since they are all marked 40Gbps,
> > >> I assume there are 3 PS8830 retimers.
> > >> This modification is now for ~8 weeks in my tree with little to no complaints. I
> > >> don't have access to a Yoga Slim 7X, however many people on #aarch64-laptops do
> > >> and some are using this patch.
> > >> ---
> > >> Changes in v2:
> > >> - removed changes not relevant to retimers and dp altmode (thanks Johan)
> > >> - Link to v1: https://lore.kernel.org/r/20250417-slim7x-retimer-v1-1-5813a7835903@oldschoolsolutions.biz
> > >> ---
> > >>  .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 476 ++++++++++++++++++++-
> > >>  1 file changed, 470 insertions(+), 6 deletions(-)
> > > 
> > > Hi,
> > > 
> > > I'm running a Slim7x China variant (Yoga Air 14s) with Debian 13.
> > > While the Debian stock 6.12 kernel works fine to bring up the display
> > > (AMOLED eDP panel), newer kernels like 6.18 loses display during boot.
> > > I can do either of the following to get the display back to work.
> > > 
> > > - Enable PS883X driver (Yes, CONFIG_TYPEC_MUX_PS883X is missing from
> > > Debian config [1])
> > 
> > Obviously.
> > 
> > > 
> > > OR
> > > 
> > > - Revert commit 299038d82418 ("arm64: dts: qcom:
> > > x1e80100-lenovo-yoga-slim7x: add retimers, dp altmode support")
> > > 
> > > My understanding is that a PS883X driver is required only for external
> > > DP support.  Why would the driver missing impact/break the internal
> > > panel support?  Do you guys have any insight on this?  Thanks!
> > > 
> > 
> > You need all drivers to avoid probe deferrals.
> 
> Ah, yes!  The display subsystem/card is wired up with all 4 eDP/DP
> ports.  A probe failure on any of the ports will cause the display
> card fail out, even though the eDP port has all the dependencies in
> place.

Unfortunately, that's a requirement for now. It might change in future,
once Luca finishes his hotplug bridges rework, but for now we have to
have all drivers in place.

Please send a patch to Debian kernel build system (ping me if you need
any help or if you'd need to convince Ben that we need it).

-- 
With best wishes
Dmitry

