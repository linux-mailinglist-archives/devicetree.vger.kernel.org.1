Return-Path: <devicetree+bounces-170413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 716E9A9AB27
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:55:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0FCF27B193F
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E936E22489A;
	Thu, 24 Apr 2025 10:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MWbdLNMJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E76221725
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745491884; cv=none; b=ZgWpx0tCHDLB4aNU1OcYfGvlLAPauLKaAj0xEVEbIH/3Q0MD9sRywCvdK7yIu5L+Tf7zHOP+eB0yLTj3ryN251RoztulWkMlF8fUt1b0izUETwBSrxm2wWCahkYbWBOUb53Nhj53MFMWqqf6Da0KNAMLJWN97aeQ753yelg+DQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745491884; c=relaxed/simple;
	bh=8Q3FYFOh2kc9wXCZ21vnkbFPYExNHNigPhv+rCGYv5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AJPNJ3l6UfEOza4S59S6v1uoCEGWBIhEdzZE9TSy2Jv4V5OxmSbXyNZuzm0BWqo5V2U/3v+3iJryiTw189XgUZJ9DxizkpHWLp5Y7mcl9tevpE7pywdkZfqsp6sMO8XdEezLF5EPKsqWCiqlOlRglf/F/VEM+M7MPzO3Z7O5XiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MWbdLNMJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53O9lQxI028423
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:51:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XPxC5gR4RA6GtliDWzNm8WFvT9nOrcyxkhsvtHvBT8I=; b=MWbdLNMJbmPjvCjX
	Ln11rG8o0Jsba7zYTQ03ZCXaD6XpYPvq8lB2oCEA6lx7VA0/ZOS1zN7J1qrG5bvC
	ybSQZ2FPdurZBK5H1IB9HU95pzpjj6w042MOzD8Xnf6iP7+27agis8r4E7ZrV1cr
	XMOMspnD3K9btpbxEC4qHnqMMPAfB1Yjm3BrvxcNhksgi2a4p7V6HtEHgRmHaft7
	Vok7UMrhkj3s/x8FVegA7JQHcWdKxg+7N9qMZqh+mWaORB4CMjG1cCIYxJXcZUTm
	3pyJKgkkC3uHbUq1hHaYJ4sCkBOlPmZQODJeMG4yvhTRcgCdC/rWDMlX3an/azx4
	nC+yIA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgy58qf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:51:20 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5d9d8890fso369697785a.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:51:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745491880; x=1746096680;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XPxC5gR4RA6GtliDWzNm8WFvT9nOrcyxkhsvtHvBT8I=;
        b=HyUhdJ6FuBFtHuqbfwNVr9BW5GtjzR9+9WBf6IWn9sEFUufTtGRAVgJ8nUNRX1zK+Q
         /bOAvmmwY5dB2jJ2f7dtOGM9wfJh8bkR5IFXZIhWmM4l5FK6H5qQ6mTw+CsR4QsKKXqH
         gSWHWjgeo8bbyJDMWFZgvD5LrXCBdThOXXYg7te12b3EvSY01lN0YRG4CrKJbIMWjKJQ
         68EjxZY85NsCJxxB+skeKJFXEiHzmwUr9P98PmEdaT2Mb+qTLt8bjvGLSWE+Ah5jrCvh
         OXXZp0iq8zJ2pFNGXsm+nq29TVl+/37SR2gOg4EdbMUZVTV+05/ALf+GhiLZpy/oD3NU
         Df4w==
X-Forwarded-Encrypted: i=1; AJvYcCUvzwiSnHW2zul6y1aH/rQrpvXPlVNHCapOFAJ14alcJRjJdEm5D7uaBgAFOAfX5dSuomUJz7ohP4rX@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg5oy3TBpKPU01ROskuNvukMF8Dd8nC1jIHeSM7+CJ60Vz6Ljz
	YLlQOImWuscY5ZQH0otJRUe4Jp3LBtyfToBwQiPRUU/lgjPsFj0/HS2UO8zywpBdr6hR27UOcgD
	VtNJII4v0EcvsKemMAKjlE8WRrh++6oeo4+d2DSU/0a0zMm1JSGRIzTrQG1ul
X-Gm-Gg: ASbGncu6pReDT72hRHup9KRP7XW+NymfUWNPf0ENClqCPKTGb32Va8RYwMCyNkZWx7d
	us7ucZvzZ1d9qmi+UhI8Nn/D9/fM/LxCp0iaQyKlcrUkvZ8hfD983ihIJfKaPcn23i09dDbDNxa
	8LbjoYZJXtEFWS7r6iBTvNbxXDnv+4xs50Qk/5fcGVnz8nf7ukg6LxqfTbR4xiWQFjLUZ5ephse
	H4TRzERxeWHpJQtU77f/gfLZGxIkzasrS6H5Hn5sy0gucC+YAgwN+JgGY4S+jREvPwRE9TBxgpP
	ZxC7eySrEV3NwkQIbDvJ6hQWQbLHen5k7ABhatYtR0PkytGCstmK8cE26sF0X15+z0Yd0E4DnNQ
	=
X-Received: by 2002:a05:620a:414c:b0:7c9:574d:a344 with SMTP id af79cd13be357-7c958659e5amr227775385a.25.1745491880214;
        Thu, 24 Apr 2025 03:51:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFh5n407lbxSXdQd+Or+bg7Zig/W2pF+NxXoVNS7+WNM269eoSPy0vOUVmV16jrZ6SmVs9Qug==
X-Received: by 2002:a05:620a:414c:b0:7c9:574d:a344 with SMTP id af79cd13be357-7c958659e5amr227772185a.25.1745491879846;
        Thu, 24 Apr 2025 03:51:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb7dc7sm188726e87.221.2025.04.24.03.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:51:19 -0700 (PDT)
Date: Thu, 24 Apr 2025 13:51:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>, linux-kernel@vger.kernel.org,
        patches@lists.linux.dev, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, Benson Leung <bleung@chromium.org>,
        chrome-platform@lists.linux.dev, Pin-yen Lin <treapking@chromium.org>,
        Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
        =?utf-8?Q?=C5=81ukasz?= Bartosik <ukaszb@chromium.org>,
        Jameson Thies <jthies@google.com>,
        Andrei Kuchynski <akuchynski@chromium.org>
Subject: Re: [PATCH 6/7] platform/chrome: cros_ec_typec: Add support for DP
 altmode via drm_bridge
Message-ID: <npnpujjfonvzhf5c4upgajhx6hu5uqmerewmbqprvl7a3xrqgm@datubwgyucby>
References: <20250416000208.3568635-1-swboyd@chromium.org>
 <20250416000208.3568635-7-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250416000208.3568635-7-swboyd@chromium.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA3MiBTYWx0ZWRfX8dUGKxtOaE1f Vkb8c74vYcCQwgOf0bGXmVe/xHNmX49Y1d06xwa+oNkXCVqqhUjkW0Mif7FDGUzElCfXgIPq3s/ 7gRHERKwVA8pPC8PahHBHFxKot1Aku05cy3+xEEQ6VPr7DGY7ywHTPnp4z/oXu8lU4vX4nOL7dg
 NrOME2rYN6ffxIy49NoxTS4jmarUzWwvAfGt4EMXLlVWJM2zPzPReTzfKUgduqICGbbgpG5RXaR 157EF8TaxqRILVuBrsjsWqPsmYw+dd8d0bgVRtXTQntC/6DGxEo8XXZEkWFEQahffbi9bH7uErt Izjy5HZyd2k8r5A2CWls8Nij8ZP2QpOwvJJclnv6W9bz8CO9r5IX+3tYyuHH02uYKgQRY23nUls
 GHcEG8zBMTwS+2jw7mfF+AnlSyrrb3WdIDPDKTgGggPDBP1D/FFDdLGSEq6KRQym82HSke6D
X-Proofpoint-GUID: okXzvh_WUtZmwmzN2rmlu2m3jIyp7kbL
X-Proofpoint-ORIG-GUID: okXzvh_WUtZmwmzN2rmlu2m3jIyp7kbL
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=680a17a9 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=cm27Pg_UAAAA:8 a=VwQbUJbxAAAA:8 a=1XWaLZrsAAAA:8 a=37Y-6JeU6fprrkKw-18A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_05,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=999 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240072

On Tue, Apr 15, 2025 at 05:02:06PM -0700, Stephen Boyd wrote:
> On Trogdor platforms, the USB DP altmode is entered and exited by the EC
> depending on if DP altmode is possible and if HPD is asserted for a
> port. Trogdor has two USB-C connectors but the AP only supports one DP
> controller, so the first USB-C connector to assert HPD "wins". The DP
> controller on the AP is fixed to output two lanes DP that goes to an
> analog mux that steers the DP lanes to one of the two USB-C connectors.
> The HPD state in the DP altmode is "captured" by the EC and redriven
> from a GPIO on the EC to the AP's GPIO that is muxed to the DisplayPort
> controller inside the AP SoC. This allows both HPD high/low and HPD IRQ
> to be signaled from the EC as well as making DP altmode possible on
> either USB-C connector except at the same time.
> 
> Add a drm_bridge to the ChromeOS EC driver to represent this analog mux
> on Trogdor and teach the kernel that DP altmode is using this DP
> controller on the AP. When the DT node has a graph binding, we assume
> that we're muxing DP to one of many USB-C connectors and we terminate
> the bridge chain here. In almost all cases we want this bridge to be the
> one that signals HPD because the EC is the one managing HPD and
> redriving the GPIO, except for in the case that the DP altmode driver is
> enabled in which case HPD will be signaled with
> drm_bridge_connector_oob_hotplug_event(). Unfortunately Trogdor EC
> firmwares have a bug where HPD state isn't discoverable properly, so we
> skip signaling HPD in that case if the "no-hpd" property exists in the
> node.
> 
> Cc: Benson Leung <bleung@chromium.org>
> Cc: Tzung-Bi Shih <tzungbi@kernel.org>
> Cc: <chrome-platform@lists.linux.dev>
> Cc: Pin-yen Lin <treapking@chromium.org>
> Cc: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
> Cc: Łukasz Bartosik <ukaszb@chromium.org>
> Cc: Jameson Thies <jthies@google.com>
> Cc: Andrei Kuchynski <akuchynski@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  drivers/platform/chrome/Kconfig         |  1 +
>  drivers/platform/chrome/cros_ec_typec.c | 50 +++++++++++++++++++++++++
>  drivers/platform/chrome/cros_ec_typec.h |  7 ++++
>  3 files changed, 58 insertions(+)
> 
> diff --git a/drivers/platform/chrome/Kconfig b/drivers/platform/chrome/Kconfig
> index 1b2f2bd09662..0ed8637b8853 100644
> --- a/drivers/platform/chrome/Kconfig
> +++ b/drivers/platform/chrome/Kconfig
> @@ -247,6 +247,7 @@ config CROS_EC_TYPEC
>  	depends on MFD_CROS_EC_DEV && TYPEC
>  	depends on CROS_USBPD_NOTIFY
>  	depends on USB_ROLE_SWITCH
> +	depends on DRM_BRIDGE
>  	default MFD_CROS_EC_DEV
>  	select CROS_EC_TYPEC_ALTMODES if TYPEC_DP_ALTMODE
>  	select CROS_EC_TYPEC_ALTMODES if TYPEC_TBT_ALTMODE
> diff --git a/drivers/platform/chrome/cros_ec_typec.c b/drivers/platform/chrome/cros_ec_typec.c
> index 2cbe29f08064..27324cf0c0c6 100644
> --- a/drivers/platform/chrome/cros_ec_typec.c
> +++ b/drivers/platform/chrome/cros_ec_typec.c
> @@ -9,6 +9,7 @@
>  #include <linux/acpi.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/of_graph.h>
>  #include <linux/platform_data/cros_ec_commands.h>
>  #include <linux/platform_data/cros_usbpd_notify.h>
>  #include <linux/platform_device.h>
> @@ -16,6 +17,8 @@
>  #include <linux/usb/typec_dp.h>
>  #include <linux/usb/typec_tbt.h>
>  
> +#include <drm/drm_bridge.h>
> +
>  #include "cros_ec_typec.h"
>  #include "cros_typec_vdm.h"
>  #include "cros_typec_altmode.h"
> @@ -337,6 +340,9 @@ static int cros_typec_init_ports(struct cros_typec_data *typec)
>  	u32 port_num = 0;
>  
>  	nports = device_get_child_node_count(dev);
> +	/* Don't count any 'ports' child node */
> +	if (of_graph_is_present(dev->of_node))
> +		nports--;

Should this be a separate commit?

>  	if (nports == 0) {
>  		dev_err(dev, "No port entries found.\n");
>  		return -ENODEV;
> @@ -350,6 +356,10 @@ static int cros_typec_init_ports(struct cros_typec_data *typec)
>  	/* DT uses "reg" to specify port number. */
>  	port_prop = dev->of_node ? "reg" : "port-number";
>  	device_for_each_child_node(dev, fwnode) {
> +		/* An OF graph isn't a connector */
> +		if (fwnode_name_eq(fwnode, "ports"))
> +			continue;
> +

... together with this chunk.

>  		if (fwnode_property_read_u32(fwnode, port_prop, &port_num)) {
>  			ret = -EINVAL;
>  			dev_err(dev, "No port-number for port, aborting.\n");
> @@ -417,6 +427,42 @@ static int cros_typec_init_ports(struct cros_typec_data *typec)
>  	return ret;
>  }
>  
> +static int cros_typec_dp_bridge_attach(struct drm_bridge *bridge,
> +				       enum drm_bridge_attach_flags flags)
> +{
> +	return flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR ? 0 : -EINVAL;
> +}
> +
> +static const struct drm_bridge_funcs cros_typec_dp_bridge_funcs = {
> +	.attach	= cros_typec_dp_bridge_attach,
> +};
> +
> +static int cros_typec_init_dp_bridge(struct cros_typec_data *typec)
> +{
> +	struct device *dev = typec->dev;
> +	struct cros_typec_dp_bridge *dp_bridge;
> +	struct drm_bridge *bridge;
> +	struct device_node *np = dev->of_node;
> +
> +	/* Not capable of DP altmode switching. Ignore. */
> +	if (!of_graph_is_present(np))
> +		return 0;
> +
> +	dp_bridge = devm_kzalloc(dev, sizeof(*dp_bridge), GFP_KERNEL);
> +	if (!dp_bridge)
> +		return -ENOMEM;
> +	typec->dp_bridge = dp_bridge;
> +
> +	bridge = &dp_bridge->bridge;
> +	bridge->funcs = &cros_typec_dp_bridge_funcs;
> +	bridge->of_node = np;
> +	bridge->type = DRM_MODE_CONNECTOR_DisplayPort;
> +	if (!device_property_read_bool(dev, "no-hpd"))
> +		bridge->ops |= DRM_BRIDGE_OP_HPD;
> +
> +	return devm_drm_bridge_add(dev, bridge);

Could you please use aux-hpd-bridge instead?

BTW: what is the usecase for the no-hpd handling here?

> +}
> +
>  static int cros_typec_usb_safe_state(struct cros_typec_port *port)
>  {
>  	int ret;

-- 
With best wishes
Dmitry

