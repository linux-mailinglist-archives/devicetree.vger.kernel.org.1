Return-Path: <devicetree+bounces-216195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D05B53FDD
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 03:25:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DC0F1C25460
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 01:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 517001624DF;
	Fri, 12 Sep 2025 01:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y9Iwwt9J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D751A1474CC
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757640319; cv=none; b=is9zvrVjGDGfM8UlRumYXcK2hNsPgB8KGOy9wjqFF10dAcGk2WGu5la32qufyyAvn2Vpgo0qNHIxA+K+3UrA2onayou1AzesA/fYp06fnWTG41dE3t51VINeiautF7IY1rgJilnT56PdLn1BSwlNtaXN2Saqz+Sq5wEU5sMrkg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757640319; c=relaxed/simple;
	bh=OXbPd0+GhJaf3PtjeJYGSP6S/zKaFbPnKgsQKZXpZqg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pufMBvsUTQES25XRBxxxac2O5BmtfCREi2PLCiHgKhlZtm79YkjCq0mdRL9+RlMuNRKRo1BSIJubN+HZ7Em+pIXlsEE8hKUBui9JufF7qZYzj7xq9jmCNM72EiTWK14UGSoYsI8iMLWkbSZb38dh9xMgX4QE7iFu+D6dSKNvKUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y9Iwwt9J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BJJ3bg032588
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:25:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jVL5pFMdzfmtJDJqaALS6MKa
	H/CYA6RWxHVUSd0whRA=; b=Y9Iwwt9J07xqyPZyLzirtvGTfSjHJt09X6aPx4IM
	5POqfmcnjfJVtTO5/hpE5TrcUBPl3rE+xTqDE2rlFVAB/al+OJCeK686UlLyg7xX
	yORbypKnJPaJtWCfJGZKXCouDKsWEMSsOSYPSzyMx9sFPzK44E4DkUp/qgDxvmuR
	pssa7RBjWk1wm7liEMXUMJBoNYJ0HIembptxXEw4L1v0tsamZ3JevPVKWWMAPRtv
	gbnlBfOkH4PEsGK4Spu4aE0xLVq9eYLq5m/J5vjYUGhtFHcw8ZfwBDPniyAaOSCS
	R0eQ8dHfGryL+QgnO9tgEzdSPgc0E/nD7UO3PStRdnuQlA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqg9j7g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:25:16 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b31bea5896so15086881cf.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:25:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757640304; x=1758245104;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jVL5pFMdzfmtJDJqaALS6MKaH/CYA6RWxHVUSd0whRA=;
        b=KmhOhY/oLq+Lvmr/bL9WZTRQUwkz6dg8TWrwg8fuFSC5Wk0eTrQdfvbC1jwxCXKw24
         qrchD1ABiPaBFmoCskHAB+Lt6mdyogbhm9zaVRczqmM89oahmuFvWITvsZT4sNMHlShd
         avfNUpSAWdfulUdGfLzvjxYBvUuLzoGuUh26votjig0S1JiNaBS2hN9rgoix+j2O+Rai
         xiH6XCoOXy9n5k8a876Fso/RIS03fxhvs5AFgZT3XZYpIXWFptm5pWqH2qQcM3/Ohq53
         KOy71xvyNcddCMfgBW0tR6/6cuf1qEA3nvmJ1aeCugZO9IyMccopHMJLirA5To4tPxRp
         lDig==
X-Forwarded-Encrypted: i=1; AJvYcCXu0JBj696LIlk96aG10XOwjM6J9Kpwih2Wqzb7e8s9nAi0byLq5F6vcQCJQfxFgh8tyq2vOBdgio8K@vger.kernel.org
X-Gm-Message-State: AOJu0YwObpQIFIths3Z3ycEOEWVdLTn+UbLHAbApwwXV4t1jwKIpiGBH
	Nvi9FRm596ajsM9zwXSJPDqyZbDO13rdi2VJj2NSQ0jNIn6Jo2S1ArVOhSKteEWa21KTbeqhqT2
	dOHE/JZptVlubQ5c+Cbt/YF7E+Vwb+Yhe/b3YS4Les3DmMMYfRh/+gVw0ZVDOKw1f
X-Gm-Gg: ASbGncuRunXUaNF21O9jWWCWq6PqCC00SqQZZnJMUr5/HQVPmHfglL4Qxtj1osKGG5v
	5GAwS5M1PPIrckSX9Ox870WLpwfH0Io4MT1ol2W6ip0gQ8h4L5isd8gS8gRq2SZIIKsfK5SjetL
	750Tm+2DQfS++Ce3YPyGYdG++5jZnn4Xz8d1OKIqt1/IGVrPxJEifbtOeI6C5A0UKEox+puGdWZ
	wjDj75BJEr1nGN/zPHw0nYiNMK7jQxahsBUuIxihw5AevJ4QED5GeTrJrayJ9cgPmgFKw3UZ1vm
	rAxUOdsuygNqD3eYicTYnpGDxv/XujenXxasgdWkN0lJMOl7rlX6BHsu/qUmhoFrPB2Xap/CO7P
	OJjlq2oJ2Kh1AQJsN2MRBV+7JmpUHpHKe4cCJ3wM2cFD3zV/mdrqs
X-Received: by 2002:a05:622a:514a:b0:4b4:c44f:1a7b with SMTP id d75a77b69052e-4b77d0bd2f7mr18790941cf.62.1757640304081;
        Thu, 11 Sep 2025 18:25:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+QdUbchdxCgWR0jpxz6S1/KovEnrGHT20/GZYw265IPlYpgXYKdIaCAtbH/9CHq+GGr04EQ==
X-Received: by 2002:a05:622a:514a:b0:4b4:c44f:1a7b with SMTP id d75a77b69052e-4b77d0bd2f7mr18789701cf.62.1757640301746;
        Thu, 11 Sep 2025 18:25:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c692daesm788199e87.26.2025.09.11.18.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 18:25:00 -0700 (PDT)
Date: Fri, 12 Sep 2025 04:24:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 04/13] phy: qcom: qmp-usbc: Add QCS615 DP PHY
 configuration and init data
Message-ID: <3ihzpsmf3btzeltxggdnbheji6bdeornravua76adw5dhotztu@e3fca2prl45r>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-4-2702bdda14ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-4-2702bdda14ed@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: U4IWXRKjH78sw1-4wM7NzFc9pYq2r9-l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX62YtnLBMjhpp
 GS/NtMp8YN1/OlKpFqWhIkZCk4kphEzS6ImdrRr9NTT63c47ZS+Xqj1z49rKWB/9M9ZOJ3WzX/l
 vcpPovTIjmmatBOsI/2mdYtSxU8D+ClBIb5Qt2MgzMUcV72U6bWBQuR1OwRwnbxjFqDYrLWv5t1
 34IGfUE/3jyQbW4hepT3vmY5j7TPha/+TQdBNGbw72kor81zKGDPd9BT4I24dfzGIU1NhvgZzFp
 zh76pFPz9Pol2uB/MFOWRRpkKc4hRbQy6pfcvXlxOYzldA6bHTcU0T9Fq5WtMiEYKAlnUOZh6I4
 rYeUIwYFVohKG/tMiap+CFbzRUyPBow9DRHN0u7EqKHJ7HBJXtCtLT0I9wqEHu/2IzGecvBQLl2
 j4weKYiR
X-Proofpoint-GUID: U4IWXRKjH78sw1-4wM7NzFc9pYq2r9-l
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c3767c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LEMoh8uNuNVMCwR6SuoA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

On Thu, Sep 11, 2025 at 10:55:01PM +0800, Xiangxu Yin wrote:
> Introduce QCS615 hardware-specific configuration for DP PHY mode,
> including register offsets, initialization tables, voltage swing
> and pre-emphasis settings.
> 
> Add qcs615-qmp-usb3-dp-phy compatible string to associate QCS615
> platform with its USB/DP switchable PHY configuration.

This should be the last patch in the series: once you add the compatible
string, it is expected that it works.

The patch LGTM.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 141 +++++++++++++++++++++++++++++++
>  1 file changed, 141 insertions(+)
> 

-- 
With best wishes
Dmitry

