Return-Path: <devicetree+bounces-5652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB337B72A6
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 22:46:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id BB4031F213A9
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 20:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 825C63B7BF;
	Tue,  3 Oct 2023 20:45:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF20E3B2BF
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 20:45:54 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B661AC
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:45:53 -0700 (PDT)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 393JZIYF027134;
	Tue, 3 Oct 2023 20:45:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=Bg6E8dl/nMy8TcXSBpDZcgI1rn2FGNvN5jUDCVIHNmY=;
 b=dBA4JrB1poe003ghY47oJz1/J64yjJSE93F8nj+tXqUNSy/tsUI9PXrn1XuWfuXOkuKQ
 y7WSFrrv4XBwo8sT+fqz/LecLkJD95NAqO/7rVaLygROb8hWz75lHTMJ+UIhcFq7drUl
 lP5zqQLfIWHgCxHnCCNPVteNqMjV7294bncRmdtApiy1ut8r6eIBXnYe+flsh1ioARj6
 rTaGFNYqXQ1lafi5FEd6ZvZ4FXw/yFz/MjopoJ1Hs6rFcPwSl887XAebxQ3nBfmM7TNq
 FzH2MSDOc3gvPC1JM9KYmUMeR/0EoqWAO5A9yo3JSNeWQIiOlbJzCmTcPgm0jH60l7EY zw== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tgqr18br7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 20:45:38 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 393KjbDt027720
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Oct 2023 20:45:37 GMT
Received: from [10.71.110.254] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 3 Oct
 2023 13:45:37 -0700
Message-ID: <8984b95e-d671-4828-8d75-2ef7eb800b7d@quicinc.com>
Date: Tue, 3 Oct 2023 13:45:37 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 2/2] drm/panel: nv3051d: Add Support for Anbernic 351V
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>
CC: <neil.armstrong@linaro.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <sam@ravnborg.org>,
        Chris Morgan
	<macromorgan@hotmail.com>,
        <dri-devel@lists.freedesktop.org>, <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>
References: <20231003163355.143704-1-macroalpha82@gmail.com>
 <20231003163355.143704-3-macroalpha82@gmail.com>
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20231003163355.143704-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: aC7YovR8wxPSFlprbdwp5GFEasXhUoha
X-Proofpoint-GUID: aC7YovR8wxPSFlprbdwp5GFEasXhUoha
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_17,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 impostorscore=0
 suspectscore=0 mlxscore=0 phishscore=0 adultscore=0 mlxlogscore=713
 bulkscore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2309180000 definitions=main-2310030157
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/3/2023 9:33 AM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic 351V. Just like the 353 series the
> underlying vendor is unknown/unmarked (at least not visible in a
> non-destructive manner). The panel had slightly different init
> sequences and timings in the BSP kernel, but works fine with the
> same ones used in the existing driver. The panel will not work without
> the inclusion of the MIPI_DSI_CLOCK_NON_CONTINUOUS flag, and this flag
> prevents the 353 series from working correctly, so a new compatible
> string is added.
> 
> Tested colors and timings using modetest and all seem to work identical
> to the 353 otherwise.

Hi Chris,

LGTM, thanks!

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>

BR,

Jessica Zhang

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   drivers/gpu/drm/panel/panel-newvision-nv3051d.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> index ad98dd9322b4..79de6c886292 100644
> --- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> +++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> @@ -388,6 +388,13 @@ static int panel_nv3051d_probe(struct mipi_dsi_device *dsi)
>   	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
>   			  MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET;
>   
> +	/*
> +	 * The panel in the RG351V is identical to the 353P, except it
> +	 * requires MIPI_DSI_CLOCK_NON_CONTINUOUS to operate correctly.
> +	 */
> +	if (of_device_is_compatible(dev->of_node, "anbernic,rg351v-panel"))
> +		dsi->mode_flags |= MIPI_DSI_CLOCK_NON_CONTINUOUS;
> +
>   	drm_panel_init(&ctx->panel, &dsi->dev, &panel_nv3051d_funcs,
>   		       DRM_MODE_CONNECTOR_DSI);
>   
> -- 
> 2.34.1
> 

