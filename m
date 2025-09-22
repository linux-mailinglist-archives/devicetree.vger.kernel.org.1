Return-Path: <devicetree+bounces-219925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2EFB8F662
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:04:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 954FC162A63
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 08:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15C12F83DB;
	Mon, 22 Sep 2025 08:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pHqe234Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CA7223DD0
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 08:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758528296; cv=none; b=Gg6CoM2+w8xsZKgcZrzuN+YHyetZQLnoidlTm/fYS8+hOrXRVsL76FwQfU6GjFm7CoSwGQ7MJnsf5B2jR2qdXekM1Zhnxk/FpEO+sRn78HomT3mSyUU2tN+jPpMR2+kEpibRBNkGMVSRerluIwyuJOI4Pa+SQpJZXNudzmKXC+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758528296; c=relaxed/simple;
	bh=xLT431DxIwGI9NTKBWbscnMylArnj++bgBzt6HSURuk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P7afbl7moBzvJSlJxkvJ3YActBmwfCghmguQNVADhdZ2DXfUTdfN6Ix9+Hc8Oc3N8jNhgec7xDypVPbaR9dEuFcCszNmIk76Y/EpvNDkFavu5bbOTwBKzs0XbKMMnAZ2gKmTTIrOIAepQ54FiGVe9Hep2IJ0VIfeTILrPi35Qzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pHqe234Q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58LJqBcY030254
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 08:04:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OBOlNt0KylCLkmD2DPMzP/dcM42JfiU2PW1abyinKzQ=; b=pHqe234Qr4hfKtip
	8vFbscrqsNDOJhQB6RrHpm3aVnDYgX+Z/kJlOKRtpAQS+BmMCNPZbbIgYBX8TWmQ
	71izMGieIm6StRm2fZ+V6HPEQ+Xtxw34Oiss6v1xpQNjc2WBCerD++Gfil98f04E
	fLRJZhDAIbe7ZeXi4quiOU2HYvvDZo+BFPKdadiCebtgvq1//aAkVZaq2fiVzvX7
	LUbcaVOsO7rmVQrDTnvEyWTE/d+sNF9k4VYg7y6R3hHIGVZf2zIKCI9+KRWrswdk
	pQey1qYAsRpdNYPhW/nKj7pWdqbRa+dKC5OZxs2lNSrOtrDrN3A9vEa/HyuSGWRq
	TB8gPA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv0uv0j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 08:04:53 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2728a359f2aso5734035ad.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 01:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758528292; x=1759133092;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OBOlNt0KylCLkmD2DPMzP/dcM42JfiU2PW1abyinKzQ=;
        b=oTFFme6TPQERgrKk89JnOoB1AjXnHlHHtX9VUdM/2xUNh+xwUAsJTb7ne/L4V7HDYt
         WmmGvr4z5L32/JMXknnA0kFsFBFiRQZI8+Srf5JXkWUQ3/m/KV+NxPM+uind2rP4C9V5
         J/efRgGaJxzzPrra9232EKz1qa9eMCaIOiNG8im+ZcSbvZJGOrgV3XCKuBJg0Qs/BFRa
         K1nc+NRiZvYkz6iQe5hR63IWOqd60aF98ixvVw5376mLJpjqC1vEIaWlx0BBspmFVLyX
         SQjhc6JMbVS0N5E0SO3HbVXZBr1DSKaLE/NuTeYqs/PrkQXZrgbc3ifLHoTQ403YoiMj
         8vqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgYPTEZBIEz/BljLdmjNd+H0DSNAAIjWvDlGiBEXvUCyQuRBz4ZCLyqszFpsDB+6BSQtrJXzb78jt/@vger.kernel.org
X-Gm-Message-State: AOJu0YwRhbH8DzBNB8FARFKzFv8Yg6kMBYBVzJnDZtL5LpP+dUekA7sm
	Y/9z8e8qWj4VAJfqDdPji+XW01schxEPENCPBpvbj1n9fvb7v12M8bhv7riJ8oGDm2I1AQCpcmK
	Zc/PR/LynF8yP3/ER+KXwQQgC2w1VwPMIVPTAGeO/1Egq7RoyvoNtEvnqEKfILy5a
X-Gm-Gg: ASbGncvw2XaPGdeAPbpo7j4n480I1/TsnGEYlEJtEoOREuG0Syz89sSUqYCKDQsGjHu
	OjxwwQr9j1tv3DZy1fdKjZ6bTpTEuF1aQyDTqRgdfim/JV9CyiboU8pQ6d3olZV/c3i+qhAx7mv
	WaOx/1MJhScTuhSiKRJVH6UD5DTt9TMHPYX7LljBF813mEw5d7/Q+8j/vIj+PV0NPuFQwFL9YRa
	ygtqmxCkI2fdZSajgjvpMXbBUGNe7utpYk3Nsp10T7TNG6q+a/UePObNJa+mzSQOsJZcTsYBVe1
	PawgaCYVcR+ip84HrA6kGdJKChgwin+hi3NpORJpw3jZu2LKD9BdFW+VbN8gR8EZ9m8LQIqtz9N
	8oCyAjxp5n2e61tMrqY9vQRYM1sfVZjK7Mw==
X-Received: by 2002:a17:902:8f90:b0:269:85aa:3776 with SMTP id d9443c01a7336-269ba565f84mr64992305ad.11.1758528292470;
        Mon, 22 Sep 2025 01:04:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETp7wbXt+1gQikMI1ABo2kP9bbRyManwLPmYcLYXRvB4adBdDDjXk0Op1hW4hh5H/vg0jXlQ==
X-Received: by 2002:a17:902:8f90:b0:269:85aa:3776 with SMTP id d9443c01a7336-269ba565f84mr64991965ad.11.1758528292012;
        Mon, 22 Sep 2025 01:04:52 -0700 (PDT)
Received: from [10.133.33.87] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698035cd39sm124460975ad.146.2025.09.22.01.04.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 01:04:51 -0700 (PDT)
Message-ID: <83b5a265-1c5f-49f5-a89e-22f466df3304@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 16:04:42 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
 <z3phuuokrhonbukct2siz3ujear5ymtnoviea2epxzvjdmsvkj@w4puf4c44tmk>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <z3phuuokrhonbukct2siz3ujear5ymtnoviea2epxzvjdmsvkj@w4puf4c44tmk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: X8wriNk3vQGQda6MtfDtipvBxcEJN-sC
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d10325 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=M2ADfI_v5YemfhxMpdoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX7gz7jh+rJW0N
 5ELJp57H06X8Xwe5SyM87CVv6vZKpx73lNXGG3WtSdqcJqHccB0mV0nqBSApPxiuxFWKzT0ZTee
 IEduCCSyjg1N4FUKgOJSRE9QwUHQD7E0lpifmeZsBKrjhqwnzkDZXkYN3KtTBzX64Gv4U6DYgSM
 xpa3Ho5Q4khNzvf/ESqDpEAvevs7JFnFopmDPfnSzeymOXKyEOQNzjuWS5tv62ycIOBboGdxPyh
 /1GWyjk7z1VS+YImfgfOqgJJYzX9FF525Nld8fZoZm9KKPnPmgnLLR7FSOtyGCngvgZGzE7u8jc
 6rtW/TMHTpqGmLxKKVCT6tV+YwFMLNKvBePjQywyBSb1vap+0sk+OVY3KMqcsYsh0LHnhqSGhJi
 6hUIM1dm
X-Proofpoint-ORIG-GUID: X8wriNk3vQGQda6MtfDtipvBxcEJN-sC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025


On 9/20/2025 12:45 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 10:24:22PM +0800, Xiangxu Yin wrote:
>> Move resets to qmp_phy_cfg for per-PHY customization. Keep legacy DT
>> path on the old hardcoded list; non-legacy path uses cfg->reset_list.
> Why? Start your commit messages with the description of the issue that
> you are trying to solve.


The original reset list only works for USB-only PHYs. USB3DP PHYs need different
reset names like "dp_phy", so they use a separate list. Moving resets to
qmp_phy_cfg enables per-PHY config without special-case logic in DT parsing.
I will update commit msg with issue description.

Or do you suggest using (offs->dp_serdes != 0) to choose the reset list instead
using new attributes?


>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 +++++++++++++++---
>>  1 file changed, 15 insertions(+), 3 deletions(-)
>>

