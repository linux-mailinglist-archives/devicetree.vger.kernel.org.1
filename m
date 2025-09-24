Return-Path: <devicetree+bounces-220850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC27B9B290
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 20:02:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83AD03B0421
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09ED323957D;
	Wed, 24 Sep 2025 18:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aIsBhjhf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748D522D7A5
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758736930; cv=none; b=XHZ0MklIbaL+dQCOvyNVFzR7ffNo1v29S5DQTSk+vHVGZt7hMdhCNLgu/OuI5zVIZiwSaQLBnUEElxDQhwyyAMw3yRS0XLIOfFXs9RttZJYUEEP1UXcqyTFTv64a7EuvccMhwK/CJL6uXXXvB/IZ1y5GyvxVLkwYMziAr4rJb3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758736930; c=relaxed/simple;
	bh=UYxYTt5+WfWAwY+aB6i20zZbM+/Pyq5iEdNwZp9YaAY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cLlDCHqhYn7sot6zCRXQ+jjBm9I8N/+1zjx4OxX6NGWae9uPlXEScmjIriWiLVIZPFXLs6FEwkgdC6Gy3yyisMeLO45XLuGbjlI5J83SeiJmX9L8j0sH3TSJ/YVgLQugRb0ECa/021rEDXCPV9UhjgqREggNN3r0uFTpA7hHB/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aIsBhjhf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODGC87002400
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:02:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pSWUBIP6OFTuLo6Z1De8G0wG
	CS7yFi6QHVszeQXIBZo=; b=aIsBhjhfmw75Lj2UmgwSjfiFQSyC5lTNEa0QzADr
	I0Tw8NoUyj6lGB7TDddj++G/U+DD2v5KJy2F54bHBz6sIl0qqPiTu0LUPguebZCO
	mdd1IVWYJ8PTVjddsRt+ZWR0RSF/+rpSBB4LiPz4svGae6c8SUb2wl9yVKjIgwmN
	dLr8f76/SfC1vtlC1yuXUHimv/4VhYGm/tGPp0ecxxZtgINrHwwUPD7c2KMmXVQv
	gPbqgkvtvcHfYPaBUhc36zcXniMG46eZ44RpQ7wNVWfuIPB5sdEw07SED3b4TGGh
	BB5qrISaYMPG5hrwvJqDgmlyq52/jBkZtr4FZBh9y8pnNg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98nath-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:02:08 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-268141f759aso638585ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 11:02:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758736927; x=1759341727;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pSWUBIP6OFTuLo6Z1De8G0wGCS7yFi6QHVszeQXIBZo=;
        b=TupP85CWCpgb3eGaJ03iMwuiuN9Zq1pTD4F8dJIcOm7RBQtI9P+cpXi6JPFHFMvSsS
         5t8mKumntwbui4wgFPBMeHaGHH46x+lzcUpi/4OxXN6K54o5XP4xUtVGbMpL3rKkZRR5
         Q4GlvtjDqYlwOEtGmntFEJvo5qcYlhBZQXtro5l56QpaWnC1A6NWCHQMDjVxQny8a2YE
         cxH+DiGTbbeotjkemQvbA8JoWxDO5jxb/LqRb2xONUMwbe6vACuLpJvw3FbehbTNawf5
         Ri2DDX5Ib0iqvRo527v9SFMgw9qRYvM9Tq7UtmnFGGAMbRzDGqoAIhksf2nwvoqTnJ52
         4tUw==
X-Forwarded-Encrypted: i=1; AJvYcCWZZmlycR1bFz62I49Sbtf3j7sBbkuqhgrd2waMEyrLSvGdb9FgaNKGomW8oSfo2GT/8ZgYPNqQjXZC@vger.kernel.org
X-Gm-Message-State: AOJu0YzHLSTBeBkWQeJiG/zx5RFR0kskf/6CZAr+cCyv8Ow19V7Bn1Yw
	mkGuFuK0zaXb6GqRP4HxHkIObgmk6TDumh7hgjvkB8M8MK9yrSZr4KkwMr8hHOY65HjnYicguoP
	iiVoNCgEJjLvAaujfBEABmIkn5pRM25RXfSALeISThUYmdq94gmrUH6lIDIv9Ak3qlyiBa7jMGu
	lRXSMEFHFnIJ41UNcRIzc4ilnP83Zy+IBEN3GZsV4=
X-Gm-Gg: ASbGncu4R6BJ60PRLWG3gOFI/GuhjFbqTf1azRgKbPLlwhUtcm2P8EDraxyUDUm7Rbw
	Ge9MqDKKopV/HXMyZeB7ykEwHRuEKc5IUPxciO0m0+kSthEnFEADCqieokoViet7reduL+yMJgR
	Cv/HUymfZKFkkrRnfPDbqdyRtzWSxR0Cx1e+XP+jgHbz00hAYdK0ERUg==
X-Received: by 2002:a17:902:fc48:b0:246:80b1:8c87 with SMTP id d9443c01a7336-27ed4a4974fmr8989465ad.43.1758736926796;
        Wed, 24 Sep 2025 11:02:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5VmtuJaJ4FUTe+FfHtk0uwoMs69qvC4ZVktOshLxRHet1WOOLGg/pw6UxmNBmfwikkG9MfLRfsTbV6YrLk6w=
X-Received: by 2002:a17:902:fc48:b0:246:80b1:8c87 with SMTP id
 d9443c01a7336-27ed4a4974fmr8988525ad.43.1758736926053; Wed, 24 Sep 2025
 11:02:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-dsi-dual-panel-upstream-v3-0-6927284f1098@linaro.org> <20250924-dsi-dual-panel-upstream-v3-2-6927284f1098@linaro.org>
In-Reply-To: <20250924-dsi-dual-panel-upstream-v3-2-6927284f1098@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 21:01:54 +0300
X-Gm-Features: AS18NWCTdNjmJ2KpP_0NKcgbLpYWYdnYEoHnk-FxT_mIPh1RGl91Lr1OC3FQLOM
Message-ID: <CAO9ioeW2AHDM3KSRu-WOvy+1De9tqfhrCNozw5Wkh=CJDHxFYg@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] drm/mipi-dsi: Add flag to support dual-panel configurations
To: Jun Nie <jun.nie@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-GUID: 6MU_tde1QbY5HdvKZjBhfMRUPeS6gvzS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXy5cjdxG2s8V0
 ejcxU/f2pks0zuLFRMUBxAGkfti54UEyy+SWCjIxFk5zrBbqHILfRG0uTo03VLq5fcsJYug7V0U
 K7gTZzItxZD1mJT9d3hlZRYI6I/NSf40wF+aScLil3eoyaLm5n3DkRA8uEdXCHhD7Hqum1w4ZQm
 8vXMz3/7nzWlpB37hiz0ZuDOfHSL9Bn4fQ8mNpHEWbn3iA5Zf7aYIq2dM3GPdETXVuKWbrr3TWa
 UjgfmtIMhzx4CKN4RCzJJFprS8ezIbc/WYNCgHKmm+zuj9pmpjS86d8cGpBlepl2AWDaMFQOiEe
 c1Wj0JnhE+wRUorWhy/QKyRVWrQi1K+WMVUkfcwEkqO5kQ4oH87WdhiOtDxUAv3sUgUI/i8m9AU
 U1W/jxKu
X-Proofpoint-ORIG-GUID: 6MU_tde1QbY5HdvKZjBhfMRUPeS6gvzS
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d43220 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=KKAkSRfTAAAA:8 a=JmB1tVOSonE3mgEak7wA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

On Wed, 24 Sept 2025 at 18:08, Jun Nie <jun.nie@linaro.org> wrote:
>
> Some devices treat two independent physical DSI panels as a single
> logical panel from the CRTC's perspective. However, two separate DSI
> hosts are still required to drive the panels individually.
>
> Introduce a `dual_panel` flag to the `mipi_dsi_device` struct. This
> allows a panel driver to inform the DSI host that it is part of a
> dual-panel setup, enabling the host to coordinate both physical
> displays as one.

How is it being set?
>
> Signed-off-by: Jun Nie <jun.nie@linaro.org>
> ---
>  include/drm/drm_mipi_dsi.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
> index 5a85ba01f402a3866b70828391bb417bb8dd5956..0faff285d9ffeb19e4523cdc7bf21c1ec20e6eff 100644
> --- a/include/drm/drm_mipi_dsi.h
> +++ b/include/drm/drm_mipi_dsi.h
> @@ -170,6 +170,7 @@ struct mipi_dsi_device_info {
>   * @host: DSI host for this peripheral
>   * @dev: driver model device node for this peripheral
>   * @attached: the DSI device has been successfully attached
> + * @dual_panel: the DSI device is one instance of dual panel
>   * @name: DSI peripheral chip type
>   * @channel: virtual channel assigned to the peripheral
>   * @format: pixel format for video mode
> @@ -188,6 +189,7 @@ struct mipi_dsi_device {
>         struct mipi_dsi_host *host;
>         struct device dev;
>         bool attached;
> +       bool dual_panel;
>
>         char name[DSI_DEV_NAME_SIZE];
>         unsigned int channel;
>
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

