Return-Path: <devicetree+bounces-216437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96785B54CE9
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:15:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0DE33AD003
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 934E030DD2F;
	Fri, 12 Sep 2025 12:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AlvPbLkw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26074306D5F
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757678621; cv=none; b=s//kVTeeOWRhVzqChWk3uZLnpX8im0GBvg/bP9YQtYxBVzpGSO1xJ0NIIqjo/H10IXb02lbVpkY++P7eckOS6SFTABb5KinH56L9ObxM+1vZde3463QmwHjKb6rdrNq4+tvznfxQGHj5d6swTS5sOhoFfWuqBG5JtRbq8l5PncM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757678621; c=relaxed/simple;
	bh=zz8o30m9RMDywni5m0nG378AjKh7Tlr5V0xeoanNaAQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f2Cy4iAFuzG/EQfaGUdcVk0HLwJ2NOjv/WEQoI3nR1zVi3+yqLGqLFg9UEH1EBkvG/YhQ3PScDZ8n0iEEuxVd+S6udY+C+jfP9HvygdkqOY3L0pU6LC+RQxAeUIzkbebhy77w3va/cJZ/ddBlTatYNgCk+1tlUGue6icIz2LpaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AlvPbLkw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fKa8017561
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:03:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OC306+JLRzCtQu+HZoUMCL3Oa/U1/T4cictyJ1c0fJU=; b=AlvPbLkwvvsKmqNm
	f6Y2S2TTjOVpZGfIGtO8m6/ajO2w8M79nskwbh+1y6U1BmaWpYPIhsEplNPCUy/m
	Y+qYCkgf/yRC0tNSp4uFEinRpX4c7Mna3R0cYelOJx16RnTOAUZV9++6zpfviV0H
	12NNz+qZqZJGrNUzKpdgttXqJIp1TOrxaPCINyMRcNZrLXLTogG2WYJNt1W1i93P
	iRQHAh25vUwksHjRX8E6DR42yQ+eROeGx9kNbYTua3AmD1S/pDcWJvSE7zxCaCSV
	ekNLDJ5cxAfNgmw4fCn9hGw9yVu60KbDODPCM/1VTOcTW5SkiKFs0qUoRDDzJRsJ
	+9D/5w==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bwskprm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:03:39 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b522934761fso140623a12.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:03:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678618; x=1758283418;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OC306+JLRzCtQu+HZoUMCL3Oa/U1/T4cictyJ1c0fJU=;
        b=nAP4OjGDwSL8qQH9ZzPzZo5+wE7iarBagmq5VVmN4iLevPyQwtzxa3qh9wlq6CRwje
         tnUa9IAyQUT2edPZd3McDmsKQEwDF35VecIxDYrHHh1gvQ7viDPZ1sIGBEZFFNWOp+u0
         IjzmVPKKZnZPbzMWamj+WuPAVSvGAFxx1sMsYSYnLVk7HxH5+ltCsVD4RYH5t41ghGaj
         6bKbSPbj77tSwVi4QM5OaNaaIRICu4lrsJBWLQ2GihAiTk6oDRw99/Ic1ddPFQGpy6dp
         AcIkgJr0DeS6m6ATnI5Yzg2GojU0hT7yUAQvmmFsc/vhZ7BEjstHdNg1ykv7vNiFBQDp
         xWKg==
X-Forwarded-Encrypted: i=1; AJvYcCVogQFmMmkK59+8MpGSBU8k7jaDDO86AeOBgRJ2LOqiQOIeM0uAKm12rVq8SKX/koAd+77OiwNbZV9q@vger.kernel.org
X-Gm-Message-State: AOJu0YwYbf51z5pCO+D9MpTXifK7Ewgmw2m5mR91gYLQpQ2KTLfh2xVc
	OLEBknmfskv/la4Rvrkf/t2FzvJZK754WI5YITc3iUW6EFMm2rcdt5niTyWugvhxRaiIpGSAyRb
	/6fy3Xpu3n2xtgqp9R7YUoZCQ5zpFJPZUytaYsGdqJDlmM5Bxs+IvF78AGjFrkzs7
X-Gm-Gg: ASbGncuZ+QBPy0CjHMLhzzawJ5FCPG1HIL1t1ZdmNXaFdCWMmUTNN1yWov2HDkqhe+f
	XOnh+Iowq++kvWtEFKKwasL3GDZvaf/7swn/8i3cg3Tvd/AYK8Na+wC0azZhB2Hm894vUDuKLTP
	04LGC+v3vp+SBXPWoUr6ut5+ySo8+LnwNE2eX9usz0VY3yB4gKdYwyVwNqjYo23RR0nIUVs0bRV
	EJvkgIw+KZWFIJYmtj9fl75X2iJickfQKgQi1XWvRDokOOKn70PBP9HV2ioku/+PcGMCm0Rn43U
	bbUpgODP7Euka/wFFnGJXwMgsLleqzmCLUuQEWnsQgcBLo9UWthBdp9LYZsG5ikfzz6yqarjhPc
	ouzeYmd2+/swuN4BcWWbpk/wVh+tCcA==
X-Received: by 2002:a17:903:1245:b0:248:dd61:46e8 with SMTP id d9443c01a7336-25d25a7294bmr16547815ad.5.1757678617843;
        Fri, 12 Sep 2025 05:03:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0bcpdWZ5JtOcYfmEEQBTJNc9tzJlPspC8jR11YZhBs8DDVX3VE8+HBzzj6SRFPVGJrjwKeg==
X-Received: by 2002:a17:903:1245:b0:248:dd61:46e8 with SMTP id d9443c01a7336-25d25a7294bmr16547335ad.5.1757678617295;
        Fri, 12 Sep 2025 05:03:37 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3a84957bsm47241905ad.80.2025.09.12.05.03.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 05:03:36 -0700 (PDT)
Message-ID: <70e9d5a3-53b7-4e2a-9a2f-19e3be1e197d@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 20:03:29 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 12/13] drm/msm/dp: move link-specific parsing from
 dp_panel to dp_link
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
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
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-12-2702bdda14ed@oss.qualcomm.com>
 <4kajb4imv4mvpf4bdzoqfw7f4qoqxsu3ca4pbgsunhxnortfig@kmsqgsj547hi>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <4kajb4imv4mvpf4bdzoqfw7f4qoqxsu3ca4pbgsunhxnortfig@kmsqgsj547hi>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: PbmikUZ89oE_sQpVVRPxsz7DuKp6-xDe
X-Proofpoint-GUID: PbmikUZ89oE_sQpVVRPxsz7DuKp6-xDe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfXxsR1W32RyvfL
 AkASEFuqHbdoNBT0lrErQnhb0UGhyv+WHJb0+TwZix7z/p7JGGDUe4qwOxZ0KATp8IuUHgfsh2e
 4LeEGf0PVDCO+58I5ZyXmrnKteLrl5fmPTiLDv1rnvXXH8Kzor6o/Af+QwVX89Lo+3/b4Y0tnB2
 EMbN+rxQo6qhgD5z70lG9UcjaH+vFCDjPiJY+y4k2lGDWjCClqW3hvUg2OUcnhtVhjT45OmUN57
 DMQRekYTjIMclZMQZbLqN4k+V8HmbQudyYknawKBGieWQ/bJz2XhMKE9f6nlAdqq51rfuRiZhiU
 snUp8DxTVWmVW2rnFONylnLEy5W1S/OauTf6qtqZRri7Qyhzv7aPc5pJefKa2ArrY8gC0giSENm
 Xyb7FHhy
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c40c1b cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3J_imRUleR0CZ10obY8A:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018


On 9/12/2025 6:39 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:09PM +0800, Xiangxu Yin wrote:
>> Since max_dp_lanes and max_dp_link_rate are link-specific parameters, move
>> their parsing from dp_panel to dp_link for better separation of concerns.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> I thought that you've split all DP patches...
>
>> ---
>>  drivers/gpu/drm/msm/dp/dp_link.c  | 63 +++++++++++++++++++++++++++++++
>>  drivers/gpu/drm/msm/dp/dp_link.h  |  4 ++
>>  drivers/gpu/drm/msm/dp/dp_panel.c | 78 +++++----------------------------------
>>  drivers/gpu/drm/msm/dp/dp_panel.h |  3 --
>>  4 files changed, 76 insertions(+), 72 deletions(-)
>>
>> @@ -1225,9 +1283,14 @@ struct msm_dp_link *msm_dp_link_get(struct device *dev, struct drm_dp_aux *aux)
>>  		return ERR_PTR(-ENOMEM);
>>  
>>  	link->aux   = aux;
>> +	link->dev   = dev;
> It is only used during parsing of DT data. There is no need to store it
> inside the struct.
>
> With that fixed:
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>

Ack.


>>  
>>  	mutex_init(&link->psm_mutex);
>>  	msm_dp_link = &link->msm_dp_link;
>>  
>> +	ret = msm_dp_link_parse_dt(msm_dp_link);
>> +	if (ret)
>> +		return ERR_PTR(ret);
>> +
>>  	return msm_dp_link;
>>  }

