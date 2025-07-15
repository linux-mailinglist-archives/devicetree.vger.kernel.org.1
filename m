Return-Path: <devicetree+bounces-196513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7710B0598B
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 14:04:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F6DE1AA3E00
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 12:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA1C42DE6E7;
	Tue, 15 Jul 2025 12:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dGtPvDSX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F722DCF6C
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 12:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752581052; cv=none; b=oEO0ddljPgb9dolKDjw7N4zpSPTkjl0AK2Iqp3WoNoCK49r2CskhIWBdf0B4Uek9+X7bWjNEqhdbHTPmHjb8AiJJhi+w13EZFsRv0Ta3BvrZjg5tv3K/i/Trv8Lun7V/h+NX/SO/SPH9qjAWieDckqIJEJF1w6APmxagWzVu7MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752581052; c=relaxed/simple;
	bh=YMGsUhwz2rH2kokdtX0WR7WKnNl++q2YDYKlHWw6jNM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KSsysDyCP/t5waigvZ9tLjsU0I9+NAN6p+4t6Q+nDkSFprwdlznlpY+3Wdfco/fzLFsRYa+bHAJoW4nZOtg+3P9kVxFvUKsyVYKotFR5BxNSlRlf0s1G11jG8K7bqsnzLD6ITLSC0Mvkq6x50OgHUBMvHbJcpMYPKWLfRUYQ8VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dGtPvDSX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FAk4T4008837
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 12:04:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uewLyWaWo+XEtP3pU1ovudoo
	X8FXuLSHNKA5wv9Jbhg=; b=dGtPvDSXLEiPdl3CHjLxdrhQbN0NwOq3l+YIPu4X
	hVkm5cNDxft1J4ab42X7iJgqqENQGeXEmEU36rxBCi6BDwLZa78Ii6TK61uWkNEL
	H9DGn7x5fOduOzuOz6Z+S7RbZg9o6LQUuDw4Ls0rRfeHx5bQtUWxnbt379YRfbHq
	1sTTyY7oPBz+I0nqX0ojmZx6Hu2sZ0QI4RiOHoUEHheUKrl//Rs/4oBAGA9QeeUf
	OYwVj54GmbV91u36r1i83vQGmmXpHhYf9guevfNPIWlzlr2Y0RBbxKAzx1cu8Wwq
	shVqwzuDNxs4w5lBq68BQGmYGhYB86tQV8LAGtiCgIoNXg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh5r7gj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 12:04:10 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5bb68b386so1604026085a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 05:04:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752581049; x=1753185849;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uewLyWaWo+XEtP3pU1ovudooX8FXuLSHNKA5wv9Jbhg=;
        b=gLyodpB3gaaaZDE0p8bUfAOw28skU1Y6NMm4ISWuB51MLPYIghr+Hpc1Xmbm8q4KKK
         uN/UeLOR7KrKoVYy5/HLuj5kco/qYfU+5X6tSPmP2KLL46oG+QPteFblZ0quonw28Pi6
         TLdxl/PPFk8tBdUUiT+m5jKIv+UKQQpUYnNX3ai9SI1p5O45Lh/PcBuW5XfmUpkjKdCy
         38nINP3kTOpBSztU8cjFcqfQprDP5KgExbZyCniJMWNRckLFnFGcBBkMei3PAMd4cWe3
         PRZPcntxrojEQIQinOvoRPJ1Dl/aJLbRR3b27KIgk/Z5s3GhzEClW5xnT1p0jSDkzDB2
         gNkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVs3olctRQQTcBS+uHz9A7+n1Vl9z19p/VzIOg7l3Yu80ctw/How/5yxcS3BxOrjeoKbCuLZghfI8ds@vger.kernel.org
X-Gm-Message-State: AOJu0YwDDspVwA6K1nL6Fyj4emGvb6GB3F44HKrMDd5HqPo81IsPiuRk
	U6mV6c2WTFIxJrPVTafcO22UYY1D2D+nJTE3q6KoAEV/yjieikq+AMv6jZQglt19AbpNxdDp9zf
	OXVwxHJS/n/3LOoxEBzXIozeP7TJOcmlKOmQL0Y82Xl75llhzJw5RVtUU3BLEZzGq
X-Gm-Gg: ASbGnctM9AEwvh1r9sxv9gWkhZwgX94Y+KirEhApAux4r8gGIVqa+4hVQfieiu8OWuw
	V9rEzTDw9gj27M9p1dvbEDH8/bRHM8AHq0j4oTtb83MjNNbiMYaH0Rm6XzOsmNPnQFEdMlbyqZL
	BrjLvyuftsQ+s+ilJI1/Sga3y7u4xnsGkf6wXAPt3IUxWlNwelvaZQS2/HUHvA35wEzubbaGt1H
	FIV7MH5A1MEPnWLJk+Srl7LxTyw2dYWQkSG0tSXsMKXj07roOBIo4AHoEci00t/HNHn6tWb3QnE
	hxraHOSP2M6Owg2zoiigCGznhj6zbhGzdAu/e+HAUQLCEWmW8AFVP25fHiO2n/GZOA9MxdW0mPI
	gaooqPgo02/x8wdvWRDSPebH7CfCZZvBRsD1vLSdC+asOvjvaMaNK
X-Received: by 2002:a05:620a:440a:b0:7e3:35dd:4829 with SMTP id af79cd13be357-7e335dd4ee6mr517584285a.46.1752581049180;
        Tue, 15 Jul 2025 05:04:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGG+QA3kcqdK27HrgZ41em40tegk2sEjV/HwigntzMPoVZCR1JNaYYEpmMQ+MrBS7T3eBGxTw==
X-Received: by 2002:a05:620a:440a:b0:7e3:35dd:4829 with SMTP id af79cd13be357-7e335dd4ee6mr517577685a.46.1752581048678;
        Tue, 15 Jul 2025 05:04:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c7bbfcfsm2266306e87.40.2025.07.15.05.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 05:04:07 -0700 (PDT)
Date: Tue, 15 Jul 2025 15:04:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 1/5] dt-bindings: connector: Add displayport connector
 for hotplug notify
Message-ID: <r7b4y74lr5qwejkejquosaar75mthjvjfy4pp6bbl4pgte6cq4@n3gwjolsaw2j>
References: <20250715112456.101-1-kernel@airkyi.com>
 <20250715112456.101-2-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250715112456.101-2-kernel@airkyi.com>
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=687643ba cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=20KFwNOVAAAA:8 a=s8YR1HE3AAAA:8
 a=w3lZJLl83XfeLKIF-PIA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: _hAb48FGpzj0ciiDT1mbkb_cT0cnTvw8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDExMCBTYWx0ZWRfX/dzz0WxodRCn
 M+0bEgrGHUQ5rKSYVLDWlIvT63bHr8fhz5a65S7MxR1Cu3xQ2i4kGGP/+L1QFw0yRYLsZ33XQIi
 wzZCoigz+vjUMszIftKw8ENbf9MqqED5xj6CrkrBdgvebiDhsPr26/ndVPw7iQ+5fcU4kmupZOc
 8fF9kXbB3AHzwukJvA+QcjwyMqxYbuT6qjAXfWJDC3cXGo2X3jTktncfqAoUbJ/WY81tzqJp84w
 6f06kVZ3snLs1G9dfM7svZLLoCEWXaFYl08deHeUh/tk6PDgtlgw57LGeVHtKUBdheSO7ktQX6u
 hgCDF7xm3zvH5DmY+jwUciG1zQo91sLSp4Pg/ByIOSeWsMSkl2vE3kZuh2qUpfVkIPO4YF18pip
 mo6wk5m7vDsJU3ZUYq/7j8XJj4lCpI+ErtEoWFdzl+YmCBJen5XQq7vahc4VDyZVFfSnqnEh
X-Proofpoint-ORIG-GUID: _hAb48FGpzj0ciiDT1mbkb_cT0cnTvw8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 mlxlogscore=906 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150110

On Tue, Jul 15, 2025 at 07:24:52PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The USB Type-C DisplayPort alternate mode driver will find
> "displayport" property for DRM hotplug event notify[0].
> 
> [0]: https://lore.kernel.org/all/20210817215201.795062-9-hdegoede@redhat.com/
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  .../devicetree/bindings/connector/usb-connector.yaml          | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Please see how it was done on other platforms. For example, qualcomm
(both tcpm and pmic-glink) use port / endpoint to link to the DP PHY /
DP controller.

-- 
With best wishes
Dmitry

