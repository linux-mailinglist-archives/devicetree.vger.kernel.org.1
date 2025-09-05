Return-Path: <devicetree+bounces-213538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CC502B45A9A
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 16:32:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A3DB176B48
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 14:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B112370592;
	Fri,  5 Sep 2025 14:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jf5ezg7j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947A436CE00
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 14:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757082771; cv=none; b=U965qrfGgqrJSDf6E3hRFYUi9ATSTv92KH/OIOgytc8FDt6w3/85QGPt3t3Cv/InZehfLbY/9iJ9Z1+LsULydBa3avuJWOKXKOkX6+Am/85bih5L1Qaz7crpAl2cUej0MIJvr+XRF72HslBkD1A8hcM8247ijdZyT8zdbw7+CPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757082771; c=relaxed/simple;
	bh=4jBWw9rOxbhMrI6Fio/4LOaWWJUdEQvodcvhN7h6dos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ELhYgOl2M025FVvOZImzMrSErZX03Fc0giRbqVFiEcsUlQQ4fk5cZlCwwxppJTSi4fIJNm8rEXasgTCTgwoIoDuSFnXVXbu849wsDutd+FOZTq9GU2/W+nJzjoR49X/h/LUSoFlijNBR/oCjXdPhgGH9idQj5oxvH3H7QQDOU4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jf5ezg7j; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5856o0s4032155
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 14:32:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2blvhr/dbGiJffwZJCFo7AuxYx4MvDnwJkLcFgb+E/0=; b=Jf5ezg7jKEfuSLmE
	QhCA82MK47MA9tyOYEr6pErZQJDBB9hqgJV3BXDGqFBUtr9wj8fUkXfhuA1GcCZk
	I0MG4jRnI9Rt5sQtPjDckWFld5fAO+fUz8Jn2rOBGZ5G96+/4rOIRBJm+nFDwWJz
	utB639Q7kiEX6cUXa/lU+H0T2gkAFIcN9NvDlMwhfv3tzX6FMndKm5274MYzOFW2
	PzHifR6r/UtYAvFZlBRiBUr2giahmfACP+xQAvndYO+eU+zRennNQpvYxzG7f348
	9AbCFZSw2/Mgned8c2b6YeY7a/vVhW471QRi18AihrW5VJK+Q3cB71HEGpojLe7y
	tkQT1A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnpkj7y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 14:32:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5f290579aso5597981cf.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 07:32:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757082767; x=1757687567;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2blvhr/dbGiJffwZJCFo7AuxYx4MvDnwJkLcFgb+E/0=;
        b=q3Fk429e9edqB3LF0+CZL8WA4Uhs6MuZqC84i1FHZ1De2//TbXhiyJtRkdvu0Bfl8g
         SmwtuKDKgHBD/hOLChxBktrjmJ3CvY7vviPVKKChrGDGb+i+ydOxAWAbRrQnT0K4zE+1
         gWMhEjBW0qII2iDH+vq8FWuzeUu8Zeoy0xMesaUG4CNOxhPsQg3hU8Gaig8g7UJWV5MD
         Rarhl8vzsOguw++3fND+zaammqLPbf9dt5E8Q27vYyvKDzCGgq9zQ+vxVcX7QUGziiEa
         13nl/oLuDrEg67cWOUQoWPYaIaXISF2rJLi60X7/Bpi8O3iBxRZG+8ehYR9yWBWk6InM
         RSgA==
X-Forwarded-Encrypted: i=1; AJvYcCUWD0H6/Pi7CRUY9KuU9Iph4cnC0kWXk7J5HW0Iyh8TXlhLM1xVgpGSmH/D47G2THlqNiVY+IeVrNKq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3X+4Uwi2b6DBzc3Tn6p+Y+xmTc0gPQLOkIrAnLKWxxfRsk5nU
	KT92G07XgInY+vRG7XIeB/Lt6gP7WE90k+zNEaxHAHtqxANBOOL1f0FlDodMwSg/PW+iZGObXxN
	BG+0sErOqxzKCNfiSHkNiNpTM+rdoE8evt06cAtqGFkf+TXhBgCXIwQBRERTEgRXb
X-Gm-Gg: ASbGncv7O2Rux2LDOYNlPDuiAy9UIXGNwbRsFUp3R/DCCRyMrMVI7LJDsi6MPcW5S0W
	cMdYXxlFCnUEBQOUara7RMGYu+M+UajBw3A+n6+4OsFCHE0otxMxTuD3o9ApCAJE/mQC0RAMNJs
	GPG3aX3GuqTMEb2kAxIqdiaeABToQtOd5i0qNdeVjuXBz0JiV/8/rxaMkmp4kwGqd2jLg4OoIMn
	R0z1i8Imh95YDGyiInxvJvtAgRdlH8hcYaSiPJ2qDsJQZfgC5QgDyjIZniMm5pnf1JIPUnJ6wO1
	RAZu36P+jWPwfQxf6jy1VeH0nFrpJ7ZCKDLb8Jmc4x3uIOqulhNPH1pYagmS9ZMsKKb2yJWWQVt
	GwqIN6zGbMNitgnVNQTfUOYvH2shyM8ZviIqp3Ok9YCKZ4/3BFdRR
X-Received: by 2002:ac8:7fc8:0:b0:4b4:9773:5870 with SMTP id d75a77b69052e-4b49782a0abmr117945951cf.21.1757082767135;
        Fri, 05 Sep 2025 07:32:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgurbO0eCRsGdU/aokL+NeCbcf/yjmx/Jn5Y5VhJVqbPt0y1YnlOogs/MWAp71DHWK7oEdoQ==
X-Received: by 2002:ac8:7fc8:0:b0:4b4:9773:5870 with SMTP id d75a77b69052e-4b49782a0abmr117944111cf.21.1757082765691;
        Fri, 05 Sep 2025 07:32:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad523b3sm1776126e87.151.2025.09.05.07.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 07:32:44 -0700 (PDT)
Date: Fri, 5 Sep 2025 17:32:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, mripard@kernel.org, neil.armstrong@linaro.org,
        andrzej.hajda@intel.com, jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v7 1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
Message-ID: <6qouaxhcwr4rxva7vgq7yy274imiufdtp3ae4mmirzt7hycxc6@4g26bzmhc37h>
References: <20250903110825.776807-1-andyshrk@163.com>
 <20250903110825.776807-2-andyshrk@163.com>
 <u72vkfojufgvuqwuqpvgvnip3wogpgdcuc7bn46zo3bp7ogbu5@fmqotgyahrsn>
 <786c050a.6d2.1991751593e.Coremail.andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <786c050a.6d2.1991751593e.Coremail.andyshrk@163.com>
X-Proofpoint-GUID: sxD5W_rIZszVmZRt2VrbUJks3KLuRWeV
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68baf490 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=Byx-y9mGAAAA:8 a=EUspDBNiAAAA:8
 a=s8YR1HE3AAAA:8 a=5KrWf_2bJ-0ShaoMUpsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: sxD5W_rIZszVmZRt2VrbUJks3KLuRWeV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX9BRiHdJ22J3Q
 W8igyjLCuIXAOMPvz0jU1PE7ShB8l4EzW0RY9pjBQ9B9QsI1jfgvWlekjFng6u6DuiG9zwR7QsN
 58guNKekElk7zPgdzMet5/rSHYbD/dK1MKE1Ime9RMxBfSoYe1kmnadKHywTagkc9XvKN2IazAs
 IkWXtA4rBEC+zGzyZ63KTkNFtgM8o0OYzCiMLKKPsx3qb8E+j/1M9CFhwgjM48divq7sGkgCrmM
 cXflBs2NDRs8B9dHy0fH3RYE95xns5qgeA+5TK/ZFe9sID2BqXpoXHzF0iBqfI44pSf4ZBBl2XU
 IhIk9Uh211iebK2/zQ/q/gT9733hd8b1m9kktWtnb2kbmm5UnEP8i+dOkvCZlnGQGTEtrxLmpzi
 CYBAj9P5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

On Fri, Sep 05, 2025 at 08:40:31AM +0800, Andy Yan wrote:
> 
> Hello Dmitry，
> 
> At 2025-09-05 08:05:06, "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >On Wed, Sep 03, 2025 at 07:07:38PM +0800, Andy Yan wrote:
> >> From: Andy Yan <andy.yan@rock-chips.com>
> >> 
> >> Convert it to drm bridge driver, it will be convenient for us to
> >> migrate the connector part to the display driver later.
> >> 
> >> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> >> 
> >> ---
> >> 
> >> Changes in v7:
> >> - Rebase on latest drm-misc-next
> >> 
> >> Changes in v6:
> >> - Rebase on latest drm-misc-next
> >> - Link to V5: https://lore.kernel.org/linux-rockchip/20250512124615.2848731-1-andyshrk@163.com/
> >> 
> >> Changes in v5:
> >> - Split cleanup code to seperate patch
> >> - Switch to devm_drm_bridge_alloc() API
> >> - Link to V4: https://lore.kernel.org/linux-rockchip/20250422070455.432666-1-andyshrk@163.com/
> >> 
> >> Changes in v4:
> >> - Do not store colorimetry within inno_hdmi struct
> >> - Link to V3: https://lore.kernel.org/linux-rockchip/20250402123150.238234-1-andyshrk@163.com/
> >> 
> >> Changes in v3:
> >> - First included in v3
> >> - Link to V2: https://lore.kernel.org/dri-devel/20250325132944.171111-1-andyshrk@163.com/
> >> 
> >>  drivers/gpu/drm/bridge/Kconfig                |   7 +
> >>  drivers/gpu/drm/bridge/Makefile               |   1 +
> >>  .../inno_hdmi.c => bridge/inno-hdmi.c}        | 502 +++++-------------
> >>  drivers/gpu/drm/rockchip/Kconfig              |   1 +
> >>  drivers/gpu/drm/rockchip/Makefile             |   2 +-
> >>  drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c | 188 +++++++
> >>  include/drm/bridge/inno_hdmi.h                |  33 ++
> >>  7 files changed, 366 insertions(+), 368 deletions(-)
> >>  rename drivers/gpu/drm/{rockchip/inno_hdmi.c => bridge/inno-hdmi.c} (69%)
> >>  create mode 100644 drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c
> >>  create mode 100644 include/drm/bridge/inno_hdmi.h
> >> 
> >> @@ -637,14 +584,13 @@ static void inno_hdmi_init_hw(struct inno_hdmi *hdmi)
> >>  	hdmi_modb(hdmi, HDMI_STATUS, m_MASK_INT_HOTPLUG, v_MASK_INT_HOTPLUG(1));
> >>  }
> >>  
> >> -static int inno_hdmi_disable_frame(struct drm_connector *connector,
> >> -				   enum hdmi_infoframe_type type)
> >> +static int inno_hdmi_bridge_clear_infoframe(struct drm_bridge *bridge,
> >> +					    enum hdmi_infoframe_type type)
> >>  {
> >> -	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
> >> +	struct inno_hdmi *hdmi = bridge_to_inno_hdmi(bridge);
> >>  
> >>  	if (type != HDMI_INFOFRAME_TYPE_AVI) {
> >> -		drm_err(connector->dev,
> >> -			"Unsupported infoframe type: %u\n", type);
> >> +		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
> >>  		return 0;
> >>  	}
> >>  
> >> @@ -653,20 +599,19 @@ static int inno_hdmi_disable_frame(struct drm_connector *connector,
> >>  	return 0;
> >>  }
> >>  
> >> -static int inno_hdmi_upload_frame(struct drm_connector *connector,
> >> -				  enum hdmi_infoframe_type type,
> >> -				  const u8 *buffer, size_t len)
> >> +static int inno_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
> >> +					    enum hdmi_infoframe_type type,
> >> +					    const u8 *buffer, size_t len)
> >>  {
> >> -	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
> >> +	struct inno_hdmi *hdmi = bridge_to_inno_hdmi(bridge);
> >>  	ssize_t i;
> >>  
> >>  	if (type != HDMI_INFOFRAME_TYPE_AVI) {
> >> -		drm_err(connector->dev,
> >> -			"Unsupported infoframe type: %u\n", type);
> >> +		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
> >>  		return 0;
> >>  	}
> >>  
> >> -	inno_hdmi_disable_frame(connector, type);
> >> +	inno_hdmi_bridge_clear_infoframe(bridge, type);
> >>  
> >>  	for (i = 0; i < len; i++)
> >>  		hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i, buffer[i]);
> >
> >It's not an issue for this patch (and I think it can be fixed after this
> >series is merged). I took a quick glance at frame programming. It feels
> >like the clear_infoframe should be poking at registers 0x9c / 0x9d. And
> >write_infoframe then can support HDMI, SPD and Audio infoframes in
> >addition to the AVI. I don't have hardware to experiment (nor time :-)),
> >but would there be a chance to improve this?
> 
> Okay, I'll keep your suggestions in mind and look for an opportunity to try them out later. 
> The hardware for this board is indeed very scarce at the moment—I put in a lot of effort just
> to get my hands on one. The main reason I'm modifying this code is to convert all of Rockchip's
> display interface drivers into bridge mode, which will make it easier to separate the connector
> part into the display driver side in the future.

No worries, it was just a quick observation from some TRM excerpts that
I found.

-- 
With best wishes
Dmitry

