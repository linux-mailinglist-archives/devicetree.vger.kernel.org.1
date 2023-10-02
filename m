Return-Path: <devicetree+bounces-5275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D82E7B5C1C
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 22:33:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 78EEC1C208BC
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045CDE560;
	Mon,  2 Oct 2023 20:33:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689829CA44
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 20:33:47 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9262AC
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 13:33:45 -0700 (PDT)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 392KUT3H000607;
	Mon, 2 Oct 2023 20:33:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=mE+UdUgXE/h9RCESQ8D9E35+D25nhdlMnSgd0WDHoX0=;
 b=Sq3R+CaDQY1/ngnXjYevI7S7hVMXABsjZGXAz6++JFqGsuzA9pEjgj/Ru5QQxe0oScO0
 IGtC/V2Ef5yrj9NjVhFFrqTfY6UMmz8Jq29mXu84iS+OBiOt4MJ4UiaB+I5pTx8xnysc
 KoZoZs+YnEc6U4lpc5OnkOp/MTqU7sdxTGvWa1BKRqdR3VYxXTqLW5VsicXv5e2KNj0T
 qghcVXCXmcfCsbEZ2dnefi1g9Tc+ACTscqDF9EjZdTu4a/mDrhAVOcnGCVPInLPPZYJN
 kk+HHrciK1titdzaKxVpk5auub1+Qc3BzFO6pWB7VqCT42im395WGmjJjyTnVOKXwg3H 1g== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3teceqcm45-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Oct 2023 20:33:31 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 392KXUnM015451
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 2 Oct 2023 20:33:30 GMT
Received: from [10.71.110.254] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Mon, 2 Oct
 2023 13:33:30 -0700
Message-ID: <c0b56123-7ce3-4975-aa68-ff50a616a578@quicinc.com>
Date: Mon, 2 Oct 2023 13:33:03 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] drm/panel: nv3051d: Add Support for Anbernic 351V
To: Chris Morgan <macroalpha82@gmail.com>
CC: <neil.armstrong@linaro.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <sam@ravnborg.org>,
        Chris Morgan
	<macromorgan@hotmail.com>,
        <dri-devel@lists.freedesktop.org>, <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>
References: <20231002193016.139452-1-macroalpha82@gmail.com>
 <20231002193016.139452-3-macroalpha82@gmail.com>
Content-Language: en-US
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20231002193016.139452-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: og-jSDEKZk0yhtBZlmQGccSzW9aAZe-T
X-Proofpoint-ORIG-GUID: og-jSDEKZk0yhtBZlmQGccSzW9aAZe-T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-02_15,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 priorityscore=1501 lowpriorityscore=0 mlxscore=0 malwarescore=0
 spamscore=0 suspectscore=0 mlxlogscore=731 adultscore=0 bulkscore=0
 impostorscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2309180000 definitions=main-2310020158
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/2/2023 12:30 PM, Chris Morgan wrote:
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
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   drivers/gpu/drm/panel/panel-newvision-nv3051d.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> index ad98dd9322b4..f644dbc8ee8a 100644
> --- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> +++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
> @@ -354,6 +354,7 @@ static const struct drm_panel_funcs panel_nv3051d_funcs = {
>   static int panel_nv3051d_probe(struct mipi_dsi_device *dsi)
>   {
>   	struct device *dev = &dsi->dev;
> +	struct device_node *np = dev->of_node;

Hi Chris,

Thanks for the patch.

It mostly looks good to me, but just one question here -- why not pass 
in `dev->of_node` directly into `of_device_is_compatible()`?

Thanks,

Jessica Zhang

>   	struct panel_nv3051d *ctx;
>   	int ret;
>   
> @@ -388,6 +389,13 @@ static int panel_nv3051d_probe(struct mipi_dsi_device *dsi)
>   	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
>   			  MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET;
>   
> +	/*
> +	 * The panel in the RG351V is identical to the 353P, except it
> +	 * requires MIPI_DSI_CLOCK_NON_CONTINUOUS to operate correctly.
> +	 */
> +	if (of_device_is_compatible(np, "anbernic,rg351v-panel"))
> +		dsi->mode_flags |= MIPI_DSI_CLOCK_NON_CONTINUOUS; > +
>   	drm_panel_init(&ctx->panel, &dsi->dev, &panel_nv3051d_funcs,
>   		       DRM_MODE_CONNECTOR_DSI);
>   
> -- 
> 2.34.1
> 

