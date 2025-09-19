Return-Path: <devicetree+bounces-219429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A6CB8AF61
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 20:42:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99396A00EDE
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 18:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F2725DAFF;
	Fri, 19 Sep 2025 18:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IKcLA+o5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0441257AEC
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758307333; cv=none; b=uKd+mvtSX3/j1pp+l0nMoVsOXXf46R10FqedCtVC+tLwZA6HdFEquxabEHrH06YS5Wxk56mvooWVf/wLxC9BNO4EEyyCvQx/pvPuoNNB/9q8oIHea+2sDIpnxJOiCJhoIM+Mk5eJ1w/GHlSnF32mb7csw5menToM8ARi08jxGX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758307333; c=relaxed/simple;
	bh=psO85OhviGYEKRSwPt9vKPVhsexTHDdRcMTrP/IAFbM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dp3c+JdxCQyGRPqJHri+Nt2A1HUjxcTZ60SFcPh1ITy7TxTxEiOo9P4gCkigXhFxkzNwqMlcIV4y1qd2njqSRFRh5mJaTsX0boK+abl1meEmxG+7oWOKbUc4151zlrwH5TRPFXciR0/Iyj0KvUhwqxbGxuxh4eeRvSp0FI4OaHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IKcLA+o5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JHXA9X007093
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:42:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=X04daQs0/GOlbdwQIFR5tVab
	ojXc3GMFHaojbKi4+xU=; b=IKcLA+o5Fpr3sQxqhBg9BBKCSXhcI66u0QHDblww
	a+94BmfJz9SvdIE00ph9sTH6gB5RjBEHumfnAPQfjnQHKlmxq5XnTZsAvQOLGVjs
	6KBsDKSjbJpsFjMjLaw/qiKR/DKQIjNX2XmEigi+wF/xqCh763yw+ytvN/rpQyMo
	Z9YN7w6zNmA39B5GrPo/AUyDOxhYcmdiYMKKdN3ckv9x4p4cKu+tczpJ2xGtucx5
	TFhUZXhx5bKK6w8Ofij7/saDweOwwBCjTkF/eyG+j60rtjbp5Pl3hhdpAt+B+HZ+
	MNB3onauJNaNTUEe2JylgaaXyfpyFpQZn2xlveCVZKrt/Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 498ebex07t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:42:11 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-79e48b76f68so14153196d6.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 11:42:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758307330; x=1758912130;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X04daQs0/GOlbdwQIFR5tVabojXc3GMFHaojbKi4+xU=;
        b=tVkKW7c9mGMIzS+VL0yW7tB4y/osf2+3CV38lBv7aY5K5AKorJ//fUcWcqP2LSwTSD
         QjeAXazK4wMD25BSzKoSGvpxcTvzgQwSCOSomG7vJ5rW+zNW2iIecD2VrcN4llsT9bS6
         WiaVAjUSuNJ9EmhfrU/tnNPt+uIC2yE918Ym0eIVDegj6rn+dmRGOMPEKOZfivWDSriz
         d+LqiCFrmpVrK0/DNP0pD56Lw8n/O2tpKtub9YClzxOKnCQUl+WlECzQn3alBJ6TFR3L
         Lr4AHT+28W9UABN2SnrQHt4QPXVxkHdU/Po0m7saNbhOxwXfKQGtNt8lKQpF5/6zmZzh
         uJMw==
X-Forwarded-Encrypted: i=1; AJvYcCUd5f3DPyWJ+QT5uObXllzxbe/xFUNqqxQagfYDGsl5QKJCpzXSL/2U+u2lEKLFNjHvmmR7tcFN3NoT@vger.kernel.org
X-Gm-Message-State: AOJu0YzLE/LFWFnAyIwSAhAh3HdE/rI7YgMZfWEyYF1nwP5yHQrAJrlC
	dk4I2MIeNxa6/2GiD0+X+AdEqm3ZuYQZgbBSj4nE/QcoNfWaOASs7EBb9rlyxXozGmabPi4bgKp
	Yovf9Q3zaERDQsQQOiMkFuow5g5OHrjZyxy27dI1wVFmqrd9PyrLJq/4K31KF5jPW
X-Gm-Gg: ASbGnctcH9eDgxbikrN5L2u/mvIvmrFCsPFlRm1gpJXqN3sR+vTQlPaVp8nPOWA3D9c
	ZFyTmDAF+WxhwQyR5YHrDll9HXFulLZSkKDlwQf3Msd/iDSqiTXDfNjyattctgkefChd8UAMDPN
	90cTM/CmKqC+bWnjJp9PJo8P55LFK+5BjgEoqXcLvm++rV+GksWKbtSLskEBbI5m4zYKGWrXr5P
	27mGv67mPFpKJl0ABjQ7Bs+XLUYT/75MejsxsdyDF8V/GYyfYICuWMz3BTzBfslqFqKPikZKdeP
	2aLMdUg9WmfncC+Ni9cpmncbe/mwnldeAsuZ2+DQjWVdRYz7KsovFPcF+gGUAFP6XM7Ztqk10Hs
	MaFnnK+JX1wErMsJu8EihLu1hRzsZjygdqDSvnhQIbtMwvGrLz23w
X-Received: by 2002:a05:6214:1c0d:b0:779:5204:4916 with SMTP id 6a1803df08f44-7991578ca2dmr53799946d6.19.1758307329681;
        Fri, 19 Sep 2025 11:42:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/Tk/CHfkwfvHsGusufr2dlS6ih3vdDiyM2Ldlo0VTKbs973sYQp68Zd+i6oMsC0C4qDrZ3Q==
X-Received: by 2002:a05:6214:1c0d:b0:779:5204:4916 with SMTP id 6a1803df08f44-7991578ca2dmr53799496d6.19.1758307329170;
        Fri, 19 Sep 2025 11:42:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578f06bf6b0sm1360169e87.74.2025.09.19.11.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 11:42:08 -0700 (PDT)
Date: Fri, 19 Sep 2025 21:42:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
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
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 11/14] phy: qcom: qmp: Add DP v2 PHY register
 definitions
Message-ID: <bqgcuch65lczmc3asccgddt46h7ebcioyjs2pwsco6wivyjc6z@lehfge4cj3qk>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-11-eae6681f4002@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-11-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: C2LkCHCV15dK5dWXPF9xwzlmWXAzNK_j
X-Authority-Analysis: v=2.4 cv=H6/bw/Yi c=1 sm=1 tr=0 ts=68cda403 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=R7-NhU-lAAKmNGUam_4A:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: C2LkCHCV15dK5dWXPF9xwzlmWXAzNK_j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE4MDA3NCBTYWx0ZWRfX8zI9upXfNE2b
 2lD4A0tAN25uSiWPB/72kmjugBtNkUg+d7MChHvPCoN4l5vEEeZsXOpnRs4Pcz7DJkGvyFh3TGC
 S91r+M1rJcnUnztP45vCQ13FlglI0eDt6l7dtEkbHVZ8fCujtMN5u4x6+2LoK+jzNKMt2y7pT7z
 quEv99RqgxDKBAFD3FNXG6ngCCq7RaWAiB8YE+I1WRapx7vLmdqt77h3DFlP1NmUSjxTrNAPB+I
 4rBwVq3UB7bVWY2B7THWnvkhThxborscyaSZ3OE3t3Ru0vjyFqK3U2FTD7DNrRXYc/Qbrcw1PbQ
 WKKNx47ZNatybfex3rqgx5U0Gh66aovk9ub0y75Eh2QcMjMNnKjAdtUlMZ9ECCXaWXfFUY7krfI
 A2dqvP30
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509180074

On Fri, Sep 19, 2025 at 10:24:28PM +0800, Xiangxu Yin wrote:
> Add dedicated headers for DP v2 PHY, including QSERDES COM and TX/RX
> register definitions.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h      |  21 ++++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h | 106 +++++++++++++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h    |  68 +++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   3 +
>  4 files changed, 198 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

