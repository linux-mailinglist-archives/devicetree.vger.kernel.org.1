Return-Path: <devicetree+bounces-79525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01378915ACF
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 01:59:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5E4228202A
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 23:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D5FF1A2579;
	Mon, 24 Jun 2024 23:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="TJxKLaB2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C1F137772;
	Mon, 24 Jun 2024 23:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719273587; cv=none; b=DLsYxYBxfMl/JiDwUpx3PMSWtN0YZ7g6Hvhx01qOItw8pZvzMwrL42AWsER8Y2W5JIaxdjjLs3JPCemueCCvMAVgRUPsIRnIKLzdxt5t+W20BLNtTxdc8t+x+HXXHtslS2uFf3T+y20vONejUDUc/3F/AP519RaScBO2zw6QaLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719273587; c=relaxed/simple;
	bh=ZnUU18x7VqopoydpoPRq90S6a7BGmJ2jQyelyDEWsKM=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=PC1s7bPPKpA0Bb/8ZgNNOOy0RJMl20n73xnLLwrFhB7WnBHJty0Wp4JsGVQ1+mgrA9jvOdnOVlzzCZBpeyLEoEXuCSC7C0nbc7dhWI52QduBoZZHt6s6/SIKRYEx1hG35Xr+/sfeIOhFccGdC7BxoKuRp0y6s/015lcd0CKjeuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=TJxKLaB2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45ONLD3u004077;
	Mon, 24 Jun 2024 23:59:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R5wY2P6fMcu7FiOSyScSochcFwd29QZgrgLX/eXGnvc=; b=TJxKLaB2BkKh5DCV
	c2h7J7oWd/EJL65y2LSs0Z7qvdfrdFAzNS5tvija01dHI5aRN4ijDPDkpqc3v0mF
	XrEm8MNuJoMMhZCqfWskmHyR6urSkkSsfjfE+yjshtkxVtAWfQKi7GVpm5sCBKRW
	ffXu9zpeEzjTIDlMvDIvN0PDWovBboSi+K2eb26tOLTYF4RLpjTnlOe2l8u7nDGq
	WuslNE/AuiqOdqqs49gvZPuYgaKKeT6Mno/S9vA8azk1qWcIpZF76C6B7CXlLWAZ
	qcisnXiAxM3mqC7lVqyphiJITg3eoeS8ex915ha0CzqPBG5dHFjlCTB8SVLdWfeY
	IDGoOQ==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ywmaew9ec-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 24 Jun 2024 23:59:31 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 45ONxUSb016226
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 24 Jun 2024 23:59:30 GMT
Received: from [10.71.108.229] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 24 Jun
 2024 16:59:30 -0700
Message-ID: <c3e013e3-6ab1-48b1-ac71-21806f989d6e@quicinc.com>
Date: Mon, 24 Jun 2024 16:59:29 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] drm/panel: panel-jadard-jd9365da-h3: use wrapped
 MIPI DCS functions
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>,
        <dmitry.torokhov@gmail.com>, <robh@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <jikos@kernel.org>, <benjamin.tissoires@redhat.co>,
        <dianders@google.com>, <hsinyi@google.com>, <jagan@edgeble.ai>,
        <neil.armstrong@linaro.org>, <dmitry.baryshkov@linaro.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240624141926.5250-4-lvzhaoxiong@huaqin.corp-partner.google.com>
Content-Language: en-US
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20240624141926.5250-4-lvzhaoxiong@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: GJ1hPo7DMrB2cLbQ4ZHt-D2PGFa1X7Mg
X-Proofpoint-GUID: GJ1hPo7DMrB2cLbQ4ZHt-D2PGFa1X7Mg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-24_20,2024-06-24_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2406140001 definitions=main-2406240190



On 6/24/2024 7:19 AM, Zhaoxiong Lv wrote:
> Remove conditional code and always use mipi_dsi_dcs_*multi() wrappers to
> simplify driver's init/enable/exit code.
> 
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>

> ---
>   .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 793 +++++++++---------
>   1 file changed, 390 insertions(+), 403 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> index a9c483a7b3fa..e836260338bf 100644
> --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> @@ -19,17 +19,13 @@
>   #include <linux/of.h>
>   #include <linux/regulator/consumer.h>
>   
> -#define JD9365DA_INIT_CMD_LEN		2
> -
> -struct jadard_init_cmd {
> -	u8 data[JD9365DA_INIT_CMD_LEN];
> -};
> +struct jadard;
>   
>   struct jadard_panel_desc {
>   	const struct drm_display_mode mode;
>   	unsigned int lanes;
>   	enum mipi_dsi_pixel_format format;
> -	const struct jadard_init_cmd *init_cmds;
> +	int (*init)(struct jadard *jadard);
>   	u32 num_init_cmds;
>   };
>   
> @@ -50,46 +46,33 @@ static inline struct jadard *panel_to_jadard(struct drm_panel *panel)
>   
>   static int jadard_enable(struct drm_panel *panel)
>   {
> -	struct device *dev = panel->dev;
>   	struct jadard *jadard = panel_to_jadard(panel);
> -	struct mipi_dsi_device *dsi = jadard->dsi;
> -	int err;
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
>   
>   	msleep(120);
>   
> -	err = mipi_dsi_dcs_exit_sleep_mode(dsi);
> -	if (err < 0)
> -		DRM_DEV_ERROR(dev, "failed to exit sleep mode ret = %d\n", err);
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
>   
> -	err =  mipi_dsi_dcs_set_display_on(dsi);
> -	if (err < 0)
> -		DRM_DEV_ERROR(dev, "failed to set display on ret = %d\n", err);
> +	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
>   
> -	return 0;
> +	return dsi_ctx.accum_err;
>   }
>   
>   static int jadard_disable(struct drm_panel *panel)
>   {
> -	struct device *dev = panel->dev;
>   	struct jadard *jadard = panel_to_jadard(panel);
> -	int ret;
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
>   
> -	ret = mipi_dsi_dcs_set_display_off(jadard->dsi);
> -	if (ret < 0)
> -		DRM_DEV_ERROR(dev, "failed to set display off: %d\n", ret);
> +	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
>   
> -	ret = mipi_dsi_dcs_enter_sleep_mode(jadard->dsi);
> -	if (ret < 0)
> -		DRM_DEV_ERROR(dev, "failed to enter sleep mode: %d\n", ret);
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
>   
> -	return 0;
> +	return dsi_ctx.accum_err;
>   }
>   
>   static int jadard_prepare(struct drm_panel *panel)
>   {
>   	struct jadard *jadard = panel_to_jadard(panel);
> -	const struct jadard_panel_desc *desc = jadard->desc;
> -	unsigned int i;
>   	int ret;
>   
>   	ret = regulator_enable(jadard->vccio);
> @@ -109,13 +92,9 @@ static int jadard_prepare(struct drm_panel *panel)
>   	gpiod_set_value(jadard->reset, 1);
>   	msleep(130);
>   
> -	for (i = 0; i < desc->num_init_cmds; i++) {
> -		const struct jadard_init_cmd *cmd = &desc->init_cmds[i];
> -
> -		ret = mipi_dsi_dcs_write_buffer(dsi, cmd->data, JD9365DA_INIT_CMD_LEN);
> -		if (ret < 0)
> -			return ret;
> -	}
> +	ret = jadard->desc->init(jadard);
> +	if (ret)
> +		return ret;
>   
>   	return 0;
>   }
> @@ -165,176 +144,181 @@ static const struct drm_panel_funcs jadard_funcs = {
>   	.get_modes = jadard_get_modes,
>   };
>   
> -static const struct jadard_init_cmd radxa_display_8hd_ad002_init_cmds[] = {
> -	{ .data = { 0xE0, 0x00 } },
> -	{ .data = { 0xE1, 0x93 } },
> -	{ .data = { 0xE2, 0x65 } },
> -	{ .data = { 0xE3, 0xF8 } },
> -	{ .data = { 0x80, 0x03 } },
> -	{ .data = { 0xE0, 0x01 } },
> -	{ .data = { 0x00, 0x00 } },
> -	{ .data = { 0x01, 0x7E } },
> -	{ .data = { 0x03, 0x00 } },
> -	{ .data = { 0x04, 0x65 } },
> -	{ .data = { 0x0C, 0x74 } },
> -	{ .data = { 0x17, 0x00 } },
> -	{ .data = { 0x18, 0xB7 } },
> -	{ .data = { 0x19, 0x00 } },
> -	{ .data = { 0x1A, 0x00 } },
> -	{ .data = { 0x1B, 0xB7 } },
> -	{ .data = { 0x1C, 0x00 } },
> -	{ .data = { 0x24, 0xFE } },
> -	{ .data = { 0x37, 0x19 } },
> -	{ .data = { 0x38, 0x05 } },
> -	{ .data = { 0x39, 0x00 } },
> -	{ .data = { 0x3A, 0x01 } },
> -	{ .data = { 0x3B, 0x01 } },
> -	{ .data = { 0x3C, 0x70 } },
> -	{ .data = { 0x3D, 0xFF } },
> -	{ .data = { 0x3E, 0xFF } },
> -	{ .data = { 0x3F, 0xFF } },
> -	{ .data = { 0x40, 0x06 } },
> -	{ .data = { 0x41, 0xA0 } },
> -	{ .data = { 0x43, 0x1E } },
> -	{ .data = { 0x44, 0x0F } },
> -	{ .data = { 0x45, 0x28 } },
> -	{ .data = { 0x4B, 0x04 } },
> -	{ .data = { 0x55, 0x02 } },
> -	{ .data = { 0x56, 0x01 } },
> -	{ .data = { 0x57, 0xA9 } },
> -	{ .data = { 0x58, 0x0A } },
> -	{ .data = { 0x59, 0x0A } },
> -	{ .data = { 0x5A, 0x37 } },
> -	{ .data = { 0x5B, 0x19 } },
> -	{ .data = { 0x5D, 0x78 } },
> -	{ .data = { 0x5E, 0x63 } },
> -	{ .data = { 0x5F, 0x54 } },
> -	{ .data = { 0x60, 0x49 } },
> -	{ .data = { 0x61, 0x45 } },
> -	{ .data = { 0x62, 0x38 } },
> -	{ .data = { 0x63, 0x3D } },
> -	{ .data = { 0x64, 0x28 } },
> -	{ .data = { 0x65, 0x43 } },
> -	{ .data = { 0x66, 0x41 } },
> -	{ .data = { 0x67, 0x43 } },
> -	{ .data = { 0x68, 0x62 } },
> -	{ .data = { 0x69, 0x50 } },
> -	{ .data = { 0x6A, 0x57 } },
> -	{ .data = { 0x6B, 0x49 } },
> -	{ .data = { 0x6C, 0x44 } },
> -	{ .data = { 0x6D, 0x37 } },
> -	{ .data = { 0x6E, 0x23 } },
> -	{ .data = { 0x6F, 0x10 } },
> -	{ .data = { 0x70, 0x78 } },
> -	{ .data = { 0x71, 0x63 } },
> -	{ .data = { 0x72, 0x54 } },
> -	{ .data = { 0x73, 0x49 } },
> -	{ .data = { 0x74, 0x45 } },
> -	{ .data = { 0x75, 0x38 } },
> -	{ .data = { 0x76, 0x3D } },
> -	{ .data = { 0x77, 0x28 } },
> -	{ .data = { 0x78, 0x43 } },
> -	{ .data = { 0x79, 0x41 } },
> -	{ .data = { 0x7A, 0x43 } },
> -	{ .data = { 0x7B, 0x62 } },
> -	{ .data = { 0x7C, 0x50 } },
> -	{ .data = { 0x7D, 0x57 } },
> -	{ .data = { 0x7E, 0x49 } },
> -	{ .data = { 0x7F, 0x44 } },
> -	{ .data = { 0x80, 0x37 } },
> -	{ .data = { 0x81, 0x23 } },
> -	{ .data = { 0x82, 0x10 } },
> -	{ .data = { 0xE0, 0x02 } },
> -	{ .data = { 0x00, 0x47 } },
> -	{ .data = { 0x01, 0x47 } },
> -	{ .data = { 0x02, 0x45 } },
> -	{ .data = { 0x03, 0x45 } },
> -	{ .data = { 0x04, 0x4B } },
> -	{ .data = { 0x05, 0x4B } },
> -	{ .data = { 0x06, 0x49 } },
> -	{ .data = { 0x07, 0x49 } },
> -	{ .data = { 0x08, 0x41 } },
> -	{ .data = { 0x09, 0x1F } },
> -	{ .data = { 0x0A, 0x1F } },
> -	{ .data = { 0x0B, 0x1F } },
> -	{ .data = { 0x0C, 0x1F } },
> -	{ .data = { 0x0D, 0x1F } },
> -	{ .data = { 0x0E, 0x1F } },
> -	{ .data = { 0x0F, 0x5F } },
> -	{ .data = { 0x10, 0x5F } },
> -	{ .data = { 0x11, 0x57 } },
> -	{ .data = { 0x12, 0x77 } },
> -	{ .data = { 0x13, 0x35 } },
> -	{ .data = { 0x14, 0x1F } },
> -	{ .data = { 0x15, 0x1F } },
> -	{ .data = { 0x16, 0x46 } },
> -	{ .data = { 0x17, 0x46 } },
> -	{ .data = { 0x18, 0x44 } },
> -	{ .data = { 0x19, 0x44 } },
> -	{ .data = { 0x1A, 0x4A } },
> -	{ .data = { 0x1B, 0x4A } },
> -	{ .data = { 0x1C, 0x48 } },
> -	{ .data = { 0x1D, 0x48 } },
> -	{ .data = { 0x1E, 0x40 } },
> -	{ .data = { 0x1F, 0x1F } },
> -	{ .data = { 0x20, 0x1F } },
> -	{ .data = { 0x21, 0x1F } },
> -	{ .data = { 0x22, 0x1F } },
> -	{ .data = { 0x23, 0x1F } },
> -	{ .data = { 0x24, 0x1F } },
> -	{ .data = { 0x25, 0x5F } },
> -	{ .data = { 0x26, 0x5F } },
> -	{ .data = { 0x27, 0x57 } },
> -	{ .data = { 0x28, 0x77 } },
> -	{ .data = { 0x29, 0x35 } },
> -	{ .data = { 0x2A, 0x1F } },
> -	{ .data = { 0x2B, 0x1F } },
> -	{ .data = { 0x58, 0x40 } },
> -	{ .data = { 0x59, 0x00 } },
> -	{ .data = { 0x5A, 0x00 } },
> -	{ .data = { 0x5B, 0x10 } },
> -	{ .data = { 0x5C, 0x06 } },
> -	{ .data = { 0x5D, 0x40 } },
> -	{ .data = { 0x5E, 0x01 } },
> -	{ .data = { 0x5F, 0x02 } },
> -	{ .data = { 0x60, 0x30 } },
> -	{ .data = { 0x61, 0x01 } },
> -	{ .data = { 0x62, 0x02 } },
> -	{ .data = { 0x63, 0x03 } },
> -	{ .data = { 0x64, 0x6B } },
> -	{ .data = { 0x65, 0x05 } },
> -	{ .data = { 0x66, 0x0C } },
> -	{ .data = { 0x67, 0x73 } },
> -	{ .data = { 0x68, 0x09 } },
> -	{ .data = { 0x69, 0x03 } },
> -	{ .data = { 0x6A, 0x56 } },
> -	{ .data = { 0x6B, 0x08 } },
> -	{ .data = { 0x6C, 0x00 } },
> -	{ .data = { 0x6D, 0x04 } },
> -	{ .data = { 0x6E, 0x04 } },
> -	{ .data = { 0x6F, 0x88 } },
> -	{ .data = { 0x70, 0x00 } },
> -	{ .data = { 0x71, 0x00 } },
> -	{ .data = { 0x72, 0x06 } },
> -	{ .data = { 0x73, 0x7B } },
> -	{ .data = { 0x74, 0x00 } },
> -	{ .data = { 0x75, 0xF8 } },
> -	{ .data = { 0x76, 0x00 } },
> -	{ .data = { 0x77, 0xD5 } },
> -	{ .data = { 0x78, 0x2E } },
> -	{ .data = { 0x79, 0x12 } },
> -	{ .data = { 0x7A, 0x03 } },
> -	{ .data = { 0x7B, 0x00 } },
> -	{ .data = { 0x7C, 0x00 } },
> -	{ .data = { 0x7D, 0x03 } },
> -	{ .data = { 0x7E, 0x7B } },
> -	{ .data = { 0xE0, 0x04 } },
> -	{ .data = { 0x00, 0x0E } },
> -	{ .data = { 0x02, 0xB3 } },
> -	{ .data = { 0x09, 0x60 } },
> -	{ .data = { 0x0E, 0x2A } },
> -	{ .data = { 0x36, 0x59 } },
> -	{ .data = { 0xE0, 0x00 } },
> +static int radxa_display_8hd_ad002_init_cmds(struct jadard *jadard)
> +{
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE1, 0x93);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE2, 0x65);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE3, 0xF8);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x7E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x65);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0C, 0x74);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0xB7);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1A, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1B, 0xB7);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1C, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0xFE);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x19);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3A, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3B, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3C, 0x70);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3D, 0xFF);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3E, 0xFF);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3F, 0xFF);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0xA0);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x1E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x0F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x28);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4B, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0xA9);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x0A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x0A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5A, 0x37);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5B, 0x19);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5D, 0x78);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5E, 0x63);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5F, 0x54);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x38);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x3D);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x28);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x41);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x62);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x50);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6A, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6B, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6C, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6D, 0x37);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6E, 0x23);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6F, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x78);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x63);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x54);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0x38);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x3D);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x28);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x41);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7A, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7B, 0x62);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7C, 0x50);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7D, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7E, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7F, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x37);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x23);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x82, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x47);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x47);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x4B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x4B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x06, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x07, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x08, 0x41);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0A, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0B, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0C, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0D, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0E, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0F, 0x5F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x10, 0x5F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x11, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x12, 0x77);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x13, 0x35);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x14, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x16, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1A, 0x4A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1B, 0x4A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1C, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1D, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1E, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1F, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x20, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x21, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x22, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x23, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x25, 0x5F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x26, 0x5F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x27, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x28, 0x77);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x29, 0x35);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2A, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2B, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5A, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5B, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5C, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5D, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5E, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5F, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x30);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x6B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x0C);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x73);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6A, 0x56);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6B, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6C, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6D, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6E, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6F, 0x88);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x7B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0xF8);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0xD5);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x2E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x12);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7A, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7B, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7C, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7D, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7E, 0x7B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x0E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0xB3);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x60);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0E, 0x2A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x36, 0x59);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x00);
> +
> +	return dsi_ctx.accum_err;
>   };
>   
>   static const struct jadard_panel_desc radxa_display_8hd_ad002_desc = {
> @@ -357,205 +341,209 @@ static const struct jadard_panel_desc radxa_display_8hd_ad002_desc = {
>   	},
>   	.lanes = 4,
>   	.format = MIPI_DSI_FMT_RGB888,
> -	.init_cmds = radxa_display_8hd_ad002_init_cmds,
> -	.num_init_cmds = ARRAY_SIZE(radxa_display_8hd_ad002_init_cmds),
> +	.init = radxa_display_8hd_ad002_init_cmds,
>   };
>   
> -static const struct jadard_init_cmd cz101b4001_init_cmds[] = {
> -	{ .data = { 0xE0, 0x00 } },
> -	{ .data = { 0xE1, 0x93 } },
> -	{ .data = { 0xE2, 0x65 } },
> -	{ .data = { 0xE3, 0xF8 } },
> -	{ .data = { 0x80, 0x03 } },
> -	{ .data = { 0xE0, 0x01 } },
> -	{ .data = { 0x00, 0x00 } },
> -	{ .data = { 0x01, 0x3B } },
> -	{ .data = { 0x0C, 0x74 } },
> -	{ .data = { 0x17, 0x00 } },
> -	{ .data = { 0x18, 0xAF } },
> -	{ .data = { 0x19, 0x00 } },
> -	{ .data = { 0x1A, 0x00 } },
> -	{ .data = { 0x1B, 0xAF } },
> -	{ .data = { 0x1C, 0x00 } },
> -	{ .data = { 0x35, 0x26 } },
> -	{ .data = { 0x37, 0x09 } },
> -	{ .data = { 0x38, 0x04 } },
> -	{ .data = { 0x39, 0x00 } },
> -	{ .data = { 0x3A, 0x01 } },
> -	{ .data = { 0x3C, 0x78 } },
> -	{ .data = { 0x3D, 0xFF } },
> -	{ .data = { 0x3E, 0xFF } },
> -	{ .data = { 0x3F, 0x7F } },
> -	{ .data = { 0x40, 0x06 } },
> -	{ .data = { 0x41, 0xA0 } },
> -	{ .data = { 0x42, 0x81 } },
> -	{ .data = { 0x43, 0x14 } },
> -	{ .data = { 0x44, 0x23 } },
> -	{ .data = { 0x45, 0x28 } },
> -	{ .data = { 0x55, 0x02 } },
> -	{ .data = { 0x57, 0x69 } },
> -	{ .data = { 0x59, 0x0A } },
> -	{ .data = { 0x5A, 0x2A } },
> -	{ .data = { 0x5B, 0x17 } },
> -	{ .data = { 0x5D, 0x7F } },
> -	{ .data = { 0x5E, 0x6B } },
> -	{ .data = { 0x5F, 0x5C } },
> -	{ .data = { 0x60, 0x4F } },
> -	{ .data = { 0x61, 0x4D } },
> -	{ .data = { 0x62, 0x3F } },
> -	{ .data = { 0x63, 0x42 } },
> -	{ .data = { 0x64, 0x2B } },
> -	{ .data = { 0x65, 0x44 } },
> -	{ .data = { 0x66, 0x43 } },
> -	{ .data = { 0x67, 0x43 } },
> -	{ .data = { 0x68, 0x63 } },
> -	{ .data = { 0x69, 0x52 } },
> -	{ .data = { 0x6A, 0x5A } },
> -	{ .data = { 0x6B, 0x4F } },
> -	{ .data = { 0x6C, 0x4E } },
> -	{ .data = { 0x6D, 0x20 } },
> -	{ .data = { 0x6E, 0x0F } },
> -	{ .data = { 0x6F, 0x00 } },
> -	{ .data = { 0x70, 0x7F } },
> -	{ .data = { 0x71, 0x6B } },
> -	{ .data = { 0x72, 0x5C } },
> -	{ .data = { 0x73, 0x4F } },
> -	{ .data = { 0x74, 0x4D } },
> -	{ .data = { 0x75, 0x3F } },
> -	{ .data = { 0x76, 0x42 } },
> -	{ .data = { 0x77, 0x2B } },
> -	{ .data = { 0x78, 0x44 } },
> -	{ .data = { 0x79, 0x43 } },
> -	{ .data = { 0x7A, 0x43 } },
> -	{ .data = { 0x7B, 0x63 } },
> -	{ .data = { 0x7C, 0x52 } },
> -	{ .data = { 0x7D, 0x5A } },
> -	{ .data = { 0x7E, 0x4F } },
> -	{ .data = { 0x7F, 0x4E } },
> -	{ .data = { 0x80, 0x20 } },
> -	{ .data = { 0x81, 0x0F } },
> -	{ .data = { 0x82, 0x00 } },
> -	{ .data = { 0xE0, 0x02 } },
> -	{ .data = { 0x00, 0x02 } },
> -	{ .data = { 0x01, 0x02 } },
> -	{ .data = { 0x02, 0x00 } },
> -	{ .data = { 0x03, 0x00 } },
> -	{ .data = { 0x04, 0x1E } },
> -	{ .data = { 0x05, 0x1E } },
> -	{ .data = { 0x06, 0x1F } },
> -	{ .data = { 0x07, 0x1F } },
> -	{ .data = { 0x08, 0x1F } },
> -	{ .data = { 0x09, 0x17 } },
> -	{ .data = { 0x0A, 0x17 } },
> -	{ .data = { 0x0B, 0x37 } },
> -	{ .data = { 0x0C, 0x37 } },
> -	{ .data = { 0x0D, 0x47 } },
> -	{ .data = { 0x0E, 0x47 } },
> -	{ .data = { 0x0F, 0x45 } },
> -	{ .data = { 0x10, 0x45 } },
> -	{ .data = { 0x11, 0x4B } },
> -	{ .data = { 0x12, 0x4B } },
> -	{ .data = { 0x13, 0x49 } },
> -	{ .data = { 0x14, 0x49 } },
> -	{ .data = { 0x15, 0x1F } },
> -	{ .data = { 0x16, 0x01 } },
> -	{ .data = { 0x17, 0x01 } },
> -	{ .data = { 0x18, 0x00 } },
> -	{ .data = { 0x19, 0x00 } },
> -	{ .data = { 0x1A, 0x1E } },
> -	{ .data = { 0x1B, 0x1E } },
> -	{ .data = { 0x1C, 0x1F } },
> -	{ .data = { 0x1D, 0x1F } },
> -	{ .data = { 0x1E, 0x1F } },
> -	{ .data = { 0x1F, 0x17 } },
> -	{ .data = { 0x20, 0x17 } },
> -	{ .data = { 0x21, 0x37 } },
> -	{ .data = { 0x22, 0x37 } },
> -	{ .data = { 0x23, 0x46 } },
> -	{ .data = { 0x24, 0x46 } },
> -	{ .data = { 0x25, 0x44 } },
> -	{ .data = { 0x26, 0x44 } },
> -	{ .data = { 0x27, 0x4A } },
> -	{ .data = { 0x28, 0x4A } },
> -	{ .data = { 0x29, 0x48 } },
> -	{ .data = { 0x2A, 0x48 } },
> -	{ .data = { 0x2B, 0x1F } },
> -	{ .data = { 0x2C, 0x01 } },
> -	{ .data = { 0x2D, 0x01 } },
> -	{ .data = { 0x2E, 0x00 } },
> -	{ .data = { 0x2F, 0x00 } },
> -	{ .data = { 0x30, 0x1F } },
> -	{ .data = { 0x31, 0x1F } },
> -	{ .data = { 0x32, 0x1E } },
> -	{ .data = { 0x33, 0x1E } },
> -	{ .data = { 0x34, 0x1F } },
> -	{ .data = { 0x35, 0x17 } },
> -	{ .data = { 0x36, 0x17 } },
> -	{ .data = { 0x37, 0x37 } },
> -	{ .data = { 0x38, 0x37 } },
> -	{ .data = { 0x39, 0x08 } },
> -	{ .data = { 0x3A, 0x08 } },
> -	{ .data = { 0x3B, 0x0A } },
> -	{ .data = { 0x3C, 0x0A } },
> -	{ .data = { 0x3D, 0x04 } },
> -	{ .data = { 0x3E, 0x04 } },
> -	{ .data = { 0x3F, 0x06 } },
> -	{ .data = { 0x40, 0x06 } },
> -	{ .data = { 0x41, 0x1F } },
> -	{ .data = { 0x42, 0x02 } },
> -	{ .data = { 0x43, 0x02 } },
> -	{ .data = { 0x44, 0x00 } },
> -	{ .data = { 0x45, 0x00 } },
> -	{ .data = { 0x46, 0x1F } },
> -	{ .data = { 0x47, 0x1F } },
> -	{ .data = { 0x48, 0x1E } },
> -	{ .data = { 0x49, 0x1E } },
> -	{ .data = { 0x4A, 0x1F } },
> -	{ .data = { 0x4B, 0x17 } },
> -	{ .data = { 0x4C, 0x17 } },
> -	{ .data = { 0x4D, 0x37 } },
> -	{ .data = { 0x4E, 0x37 } },
> -	{ .data = { 0x4F, 0x09 } },
> -	{ .data = { 0x50, 0x09 } },
> -	{ .data = { 0x51, 0x0B } },
> -	{ .data = { 0x52, 0x0B } },
> -	{ .data = { 0x53, 0x05 } },
> -	{ .data = { 0x54, 0x05 } },
> -	{ .data = { 0x55, 0x07 } },
> -	{ .data = { 0x56, 0x07 } },
> -	{ .data = { 0x57, 0x1F } },
> -	{ .data = { 0x58, 0x40 } },
> -	{ .data = { 0x5B, 0x30 } },
> -	{ .data = { 0x5C, 0x16 } },
> -	{ .data = { 0x5D, 0x34 } },
> -	{ .data = { 0x5E, 0x05 } },
> -	{ .data = { 0x5F, 0x02 } },
> -	{ .data = { 0x63, 0x00 } },
> -	{ .data = { 0x64, 0x6A } },
> -	{ .data = { 0x67, 0x73 } },
> -	{ .data = { 0x68, 0x1D } },
> -	{ .data = { 0x69, 0x08 } },
> -	{ .data = { 0x6A, 0x6A } },
> -	{ .data = { 0x6B, 0x08 } },
> -	{ .data = { 0x6C, 0x00 } },
> -	{ .data = { 0x6D, 0x00 } },
> -	{ .data = { 0x6E, 0x00 } },
> -	{ .data = { 0x6F, 0x88 } },
> -	{ .data = { 0x75, 0xFF } },
> -	{ .data = { 0x77, 0xDD } },
> -	{ .data = { 0x78, 0x3F } },
> -	{ .data = { 0x79, 0x15 } },
> -	{ .data = { 0x7A, 0x17 } },
> -	{ .data = { 0x7D, 0x14 } },
> -	{ .data = { 0x7E, 0x82 } },
> -	{ .data = { 0xE0, 0x04 } },
> -	{ .data = { 0x00, 0x0E } },
> -	{ .data = { 0x02, 0xB3 } },
> -	{ .data = { 0x09, 0x61 } },
> -	{ .data = { 0x0E, 0x48 } },
> -	{ .data = { 0xE0, 0x00 } },
> -	{ .data = { 0xE6, 0x02 } },
> -	{ .data = { 0xE7, 0x0C } },
> +static int cz101b4001_init_cmds(struct jadard *jadard)
> +{
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE1, 0x93);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE2, 0x65);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE3, 0xF8);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x3B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0C, 0x74);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0xAF);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1A, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1B, 0xAF);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1C, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x26);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3A, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3C, 0x78);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3D, 0xFF);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3E, 0xFF);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3F, 0x7F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0xA0);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0x81);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x14);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x23);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x28);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x69);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x0A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5A, 0x2A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5B, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5D, 0x7F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5E, 0x6B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5F, 0x5C);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x4F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x4D);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x3F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x42);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x2B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x63);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x52);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6A, 0x5A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6B, 0x4F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6C, 0x4E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6D, 0x20);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6E, 0x0F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6F, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x7F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x6B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x5C);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x4F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x4D);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0x3F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x42);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x2B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7A, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7B, 0x63);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7C, 0x52);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7D, 0x5A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7E, 0x4F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7F, 0x4E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x20);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x0F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x82, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x1E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x1E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x06, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x07, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x08, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0A, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0B, 0x37);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0C, 0x37);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0D, 0x47);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0E, 0x47);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0F, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x10, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x11, 0x4B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x12, 0x4B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x13, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x14, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x16, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1A, 0x1E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1B, 0x1E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1C, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1D, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1E, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1F, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x20, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x21, 0x37);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x22, 0x37);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x23, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x25, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x26, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x27, 0x4A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x28, 0x4A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x29, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2A, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2B, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2C, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2D, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2E, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2F, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x30, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x31, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x32, 0x1E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x33, 0x1E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x34, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x36, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x37);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x37);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3A, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3B, 0x0A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3C, 0x0A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3D, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3E, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3F, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x46, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x47, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x48, 0x1E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x49, 0x1E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4A, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4B, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4C, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4D, 0x37);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4E, 0x37);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4F, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x51, 0x0B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x52, 0x0B);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x53, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x54, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x1F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5B, 0x30);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5C, 0x16);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5D, 0x34);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5E, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5F, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x6A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x73);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x1D);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6A, 0x6A);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6B, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6C, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6D, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6E, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6F, 0x88);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0xFF);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0xDD);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x3F);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x15);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7A, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7D, 0x14);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7E, 0x82);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x0E);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0xB3);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x61);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0E, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE6, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE7, 0x0C);
> +
> +	return dsi_ctx.accum_err;
>   };
>   
>   static const struct jadard_panel_desc cz101b4001_desc = {
> @@ -578,8 +566,7 @@ static const struct jadard_panel_desc cz101b4001_desc = {
>   	},
>   	.lanes = 4,
>   	.format = MIPI_DSI_FMT_RGB888,
> -	.init_cmds = cz101b4001_init_cmds,
> -	.num_init_cmds = ARRAY_SIZE(cz101b4001_init_cmds),
> +	.init = cz101b4001_init_cmds,
>   };
>   
>   static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
> -- 
> 2.17.1
> 

