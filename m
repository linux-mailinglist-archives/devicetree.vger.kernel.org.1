Return-Path: <devicetree+bounces-41019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C344851F4E
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 22:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23BFB284F03
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 21:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D913F4C61B;
	Mon, 12 Feb 2024 21:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Z7zizSvS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4668A4CE04
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 21:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707772447; cv=none; b=HFc/OSHhn5VLEKnNXqI5sNhelXduYB5Un1XmUSCjvEO2Xze/t0+QrtxKnRLdYD6k+b6P0P4xwG65sOt7Y7TPjXgiZtSzCa7UUugUOO6Qjo98yCFEYNEFm88k2Ee7ECscot+RtVB9kwwU6Th8ZWIOApwe/eA9aQ2C11Tz2AI1WlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707772447; c=relaxed/simple;
	bh=AFtyrA6a8r62pKQ2dEtKrrBLnMP3wPeoxQfM4E5P2Z8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=JxYYxXAWaWDEdWKnS7jSXEPVzDA0Rjk/ztHGDwVbR0lcYlZz8VLYK1G5hs0/QCzcBHYR1G/lDaLjnS/+gJhV59j0ezfqmPrQDrc7ZiyWBsYTkS22xSr8fMt0YuTTVaNpNjepM9T2pSDTsxXiYZ2UqPswv63d7NLUDpCan0x3iOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=Z7zizSvS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41CKwFrL000889;
	Mon, 12 Feb 2024 21:13:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=ZuUfCR5VASzqzJemnGoBlBsjV+cKninvVRKG9Zj9GLQ=; b=Z7
	zizSvSmeR3j6EIBNez/gaGlh33t4nU8gDsCUyMqc0JKQ3PjN/bXYjjAjrDqcJ4F8
	nejTwQ1yK4Cm5bYZlkamWgqPJQRncuunmvZaLDN0nalB5zPve23oEilXQiSNiBBo
	4jTzsvL9/HJELSAElhQSc3FZXkn2eX517Jcw4qBwyv2/NQ25+ZnzQFNhjKS9SfNC
	TLdy5cxQOaXZdc7aV8M8pP09u7Z+d6MgFuTtdcV1dDRPUYjoQGoPShQEemLcSOzd
	NADVaaIrwqyGUbci5HNOK7QFEAJVRqbtFvwN0ml+I5lWY18ONvubvs8WSnyTr84o
	nZs15mTqKohA/jNxlvEw==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3w7ju79881-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Feb 2024 21:13:38 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 41CLDbi4020455
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Feb 2024 21:13:37 GMT
Received: from [10.71.111.207] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Mon, 12 Feb
 2024 13:13:36 -0800
Message-ID: <c30d904e-d249-430e-a07a-f326a9a23459@quicinc.com>
Date: Mon, 12 Feb 2024 13:13:35 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] drm/panel: st7703: Add Powkiddy RGB10MAX3 Panel
 Support
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>,
        <linux-rockchip@lists.infradead.org>
CC: <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <tzimmermann@suse.de>, <mripard@kernel.org>,
        <maarten.lankhorst@linux.intel.com>, <daniel@ffwll.ch>,
        <airlied@gmail.com>, <sam@ravnborg.org>, <neil.armstrong@linaro.org>,
        <megi@xff.cz>, <kernel@puri.sm>, <agx@sigxcpu.org>, <heiko@sntech.de>,
        <conor+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-3-macroalpha82@gmail.com>
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20240212184950.52210-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: duYr1z6oTFX_rTI9gr9ZgJ6XQQjJ-Bav
X-Proofpoint-GUID: duYr1z6oTFX_rTI9gr9ZgJ6XQQjJ-Bav
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-12_16,2024-02-12_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 spamscore=0 clxscore=1011
 priorityscore=1501 mlxscore=0 malwarescore=0 suspectscore=0 phishscore=0
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402120164



On 2/12/2024 10:49 AM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Powkiddy RGB10MAX3 is a handheld device with a 5 inch 720x1280
> display panel with a Sitronix ST7703 display controller. The panel
> is installed rotated 270 degrees.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Hi Chris,

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>

Thanks,

Jessica Zhang

> ---
>   drivers/gpu/drm/panel/panel-sitronix-st7703.c | 91 +++++++++++++++++++
>   1 file changed, 91 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> index b55bafd1a8be..939ba05c9b58 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> @@ -521,6 +521,96 @@ static const struct st7703_panel_desc rgb30panel_desc = {
>   	.init_sequence = rgb30panel_init_sequence,
>   };
>   
> +static int rgb10max3_panel_init_sequence(struct st7703 *ctx)
> +{
> +	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
> +
> +	/* Init sequence extracted from Powkiddy RGB10MAX3 BSP kernel. */
> +
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC, 0xf1, 0x12, 0x83);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETAPID, 0x00, 0x00, 0x00, 0xda,
> +			       0x80);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0xc8, 0x02, 0x30);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF, 0x10, 0x10, 0x28,
> +			       0x28, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x04, 0x04);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x78, 0x78);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT, 0x25, 0x22, 0xf0,
> +			       0x63);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI, 0x33, 0x81, 0x05, 0xf9,
> +			       0x0e, 0x0e, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x44, 0x25, 0x00, 0x90, 0x0a, 0x00,
> +			       0x00, 0x01, 0x4f, 0x01, 0x00, 0x00, 0x37);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x47);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_BF, 0x02, 0x11, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR, 0x73, 0x73, 0x50, 0x50,
> +			       0x00, 0x00, 0x12, 0x70, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER, 0x25, 0x00, 0x32,
> +			       0x32, 0x77, 0xe1, 0xff, 0xff, 0xcc, 0xcc, 0x77,
> +			       0x77);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETECO, 0x82, 0x00, 0xbf, 0xff,
> +			       0x00, 0xff);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETIO, 0xb8, 0x00, 0x0a, 0x00,
> +			       0x00, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCABC, 0x10, 0x40, 0x1e,
> +			       0x02);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0b);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA, 0x00, 0x04, 0x07,
> +			       0x2a, 0x39, 0x3f, 0x36, 0x31, 0x06, 0x0b, 0x0e,
> +			       0x12, 0x14, 0x12, 0x13, 0x0f, 0x17, 0x00, 0x04,
> +			       0x07, 0x2a, 0x39, 0x3f, 0x36, 0x31, 0x06, 0x0b,
> +			       0x0e, 0x12, 0x14, 0x12, 0x13, 0x0f, 0x17);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ, 0x03, 0x03, 0x03, 0x03,
> +			       0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0xff, 0x80,
> +			       0xc0, 0x10);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1, 0xc8, 0x10, 0x08, 0x00,
> +			       0x00, 0x41, 0xf8, 0x12, 0x31, 0x23, 0x37, 0x86,
> +			       0x11, 0xc8, 0x37, 0x2a, 0x00, 0x00, 0x0c, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x0c, 0x00, 0x00, 0x00,
> +			       0x88, 0x20, 0x46, 0x02, 0x88, 0x88, 0x88, 0x88,
> +			       0x88, 0x88, 0xff, 0x88, 0x31, 0x57, 0x13, 0x88,
> +			       0x88, 0x88, 0x88, 0x88, 0x88, 0xff, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2, 0x00, 0x1a, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x8f, 0x13, 0x31, 0x75, 0x88, 0x88, 0x88, 0x88,
> +			       0x88, 0x88, 0xf8, 0x8f, 0x02, 0x20, 0x64, 0x88,
> +			       0x88, 0x88, 0x88, 0x88, 0x88, 0xf8, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_EF, 0xff, 0xff, 0x01);
> +
> +	return 0;
> +}
> +
> +static const struct drm_display_mode rgb10max3_panel_mode = {
> +	.hdisplay	= 720,
> +	.hsync_start	= 720 + 40,
> +	.hsync_end	= 720 + 40 + 10,
> +	.htotal		= 720 + 40 + 10 + 40,
> +	.vdisplay	= 1280,
> +	.vsync_start	= 1280 + 16,
> +	.vsync_end	= 1280 + 16 + 4,
> +	.vtotal		= 1280 + 16 + 4 + 14,
> +	.clock		= 63800,
> +	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +	.width_mm	= 62,
> +	.height_mm	= 109,
> +};
> +
> +static const struct st7703_panel_desc rgb10max3_panel_desc = {
> +	.mode = &rgb10max3_panel_mode,
> +	.lanes = 4,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +		      MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_LPM,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.init_sequence = rgb10max3_panel_init_sequence,
> +};
> +
>   static int st7703_enable(struct drm_panel *panel)
>   {
>   	struct st7703 *ctx = panel_to_st7703(panel);
> @@ -784,6 +874,7 @@ static void st7703_remove(struct mipi_dsi_device *dsi)
>   
>   static const struct of_device_id st7703_of_match[] = {
>   	{ .compatible = "anbernic,rg353v-panel-v2", .data = &rg353v2_desc },
> +	{ .compatible = "powkiddy,rgb10max3-panel", .data = &rgb10max3_panel_desc },
>   	{ .compatible = "powkiddy,rgb30-panel", .data = &rgb30panel_desc },
>   	{ .compatible = "rocktech,jh057n00900", .data = &jh057n00900_panel_desc },
>   	{ .compatible = "xingbangda,xbd599", .data = &xbd599_desc },
> -- 
> 2.34.1
> 

