Return-Path: <devicetree+bounces-200182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CADDCB13A36
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 14:05:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39B7F1896543
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 12:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2293F24BD03;
	Mon, 28 Jul 2025 12:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O/09t9if"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934442AF11
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 12:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753704321; cv=none; b=Zm6JnrpabFP3hXMENoV3hrgNVFuHanVA165P+t5BSDI9nAGXfvu0XVftg2wB7ONhJCeHKEaMSIciQbQ6Fa1wVaEMuAVPmCD6awIz05E5l7Fa/t0V+DXlsMo1Nk5TD62PkJ+ciFPMWQMBmwIh3+b9fJ/amGeioqUDh/P/E9lCeTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753704321; c=relaxed/simple;
	bh=k2RWxP/WKnsMkHTWmUDQ087InDb7cjcO9LVdeqkD0kA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SxMLUyqD/KaSymT2RJKuoFma6E99x//PjkJ+OGKxtKlsmrfF8YJ3vPVOTshqki8R0ssAokqrMNWXdfgLiuIRFXbrFwr7riuh0GmZYD4BkhCr79sA401/JXGay8dJV59fLzOICHeCusQ+/rblVpPiCC4fHXKmBaV16T/uY11w5gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O/09t9if; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SAlNvk023471
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 12:05:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MLMkHEXhcpE9zqxnDSOUT7LZ
	JSw53zS0jCgPn9nQ6+g=; b=O/09t9ifQZ5pb1vgPcIgB4ft+YBrnr3NSj2lG8HH
	POO+dTiTkFe87ThnmxxXAY/3hNC9AY/qkpFt9yOkTp9buD7tG5o4So5ilDJSiHcT
	IbrApJia0nx3Yk0fh44+TzLDPGuUEXrNKW49zlTd0lh5kq1A1y7H9wekO+TdyKCw
	gsdgObcQ0Khe1RgBrpY9SVIvkM+PpZOjdoX9noy6s5+Z9HqX5Q4VzEvm2G5ZQr0D
	Qkc1zYcO329+XCB6xDLDLN+4gf3uAmFy1Ngz9e1WwyYl/e0z7Pxn2c+C4bTiZOk/
	h5xJ6Tl/iUnBOO4Y2GtroCJiMPewTlVJ7tYkmCzsULqtww==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qme6g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 12:05:18 +0000 (GMT)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-615bc8a49a4so878840eaf.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 05:05:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753704317; x=1754309117;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MLMkHEXhcpE9zqxnDSOUT7LZJSw53zS0jCgPn9nQ6+g=;
        b=Z310HpEMcyNcjub5f9ws6kdOs9AzV3Fdj0iC6ytRhC0aCc8NzehjcNQ9iqxUXhZBvO
         yJwzySUi183/m6AKR14UGuiJWOLTQq/f0M5MXRGVhGLXPBxZwv+oaD9hqvcI30jj+W5a
         20rgOw/8Bc+GSb44cRHyc0CueNX0C5ZE4YDKgU3yc9Zvxubz7xS6nYzHImwPMcMvrrpd
         8GhkiNb4pkj218JYQEKwDzZKG7zhD0ci0DZ6EqRzO+p95brj1zIQuTtrRvThKUlOja7C
         ubfqbkuP8449sFL/XnGuCOID2fEOm/7Pbi/rv68hum6PMUUcU3TRFr/DwuCAJhdHeO/h
         OaFg==
X-Forwarded-Encrypted: i=1; AJvYcCX93X7ENpHCzrrm70399sTIx7Mwo025tiYZr7ZbHIugD2R1QM+2R+FBGiv8P2sKta6njYJk6Xx3Q+mK@vger.kernel.org
X-Gm-Message-State: AOJu0YxWAjEQOc+4+btTLjuvXeSNk7/lT8UICtqodRm+PIhsGssKyAXp
	ndfWlPX4O3LyvX23i+yZtY6DjizFvG9QlkJubIl7LmaoOd3XAD75biudm793xCobKQ92gR/xX4B
	zIm5EN3P8fSDFfr/a4v1ZjNQoWO8/LhKuf9kN+W8mj7c3gRrwAr1c31IYihoOQIeJ
X-Gm-Gg: ASbGncuip6IyELa607zXoX1v8B6BHASrwjAhk6lojBHhALF4LtM1HQQlULXF6zmNX8F
	xz/hC8b/U7zaWMXDhtaSaGG9ubSwZuash6/s/qGb2NIy8P58wppojnKgs6yPrzhwDmkIdzza/Ep
	jMUT0Vf9RGzv5wQZTAKx33R3YZXrK4bZ+1zL26P+9KPp1vXbd+yIY7WKty/l9/yGkXB2dWoQ2Q+
	OBjcxSY3MN0Gf+2YEKXKjMvU2YA0C+YsKnnTJBL43Y/iSkqV4vSeAZEGB+75y5O+vbDTfAwgAxz
	74gkh6pARkmgasP14vUy3q0Yg218VjBiZkXHceod/NEc0btYWMc+ky7zEm5iWcILauRzidH70OI
	35dkQCmdTjPyW/2G8gZqQzCh7zJ5UYBsavOVBl8mUO/gLFBR8hXrL
X-Received: by 2002:a05:6808:1511:b0:3f9:2fdc:ee93 with SMTP id 5614622812f47-42bba1f2b8amr5993494b6e.30.1753704317216;
        Mon, 28 Jul 2025 05:05:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHSfeWv4VHXW2+zlLwrnah8CuiseIJTrikxH8XMRdQkuCbQ7xwR1kFZq9NS64k4Bn807RS+w==
X-Received: by 2002:a05:6808:1511:b0:3f9:2fdc:ee93 with SMTP id 5614622812f47-42bba1f2b8amr5993452b6e.30.1753704316668;
        Mon, 28 Jul 2025 05:05:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b63375932sm1240730e87.152.2025.07.28.05.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 05:05:15 -0700 (PDT)
Date: Mon, 28 Jul 2025 15:05:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, mripard@kernel.org, naoki@radxa.com,
        stephen@radxa.com, cristian.ciocaltea@collabora.com,
        neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
        yubing.zhang@rock-chips.com, krzk+dt@kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, robh@kernel.org,
        sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v6 02/10] drm/bridge: synopsys: Add DW DPTX Controller
 support library
Message-ID: <soz3wrbwlogzv6pi7i2cf5iq5gxhspkrti3pcxn5cdhztghwww@xxcdbp2n5cvq>
References: <20250728082846.3811429-1-andyshrk@163.com>
 <20250728082846.3811429-3-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250728082846.3811429-3-andyshrk@163.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA4NSBTYWx0ZWRfX+fj0Ac1SKVx7
 h/FbeN6byOcEky1TIr9qMdSaWzY3GcqsTZPDAI2r2Av3q0enFgaYk4NhRpATh0oBcu1NEKmsaxi
 lbPTghpzH3wfKLr8UfLShKsi06yHqd5CPD9PEGwYV7N9nwCwysQxvyri5xf3hcGxGjm/oU7hVUm
 jiYKjT9qEeBoYQ6zYzarOaD1rPQyt60Mjwgu16Dh/XW1q92fEmlNBVTveZ7QWVi3tQiVIIiEfuu
 9ENMg/Nt8R9jIRuyMWJNBp8b5VNWxjcKEFXXQAr8l30P9wk2WVQSod47m5c1i4aGyB0o5AxR1r0
 unwGXYOoj4yi4TGSoMs34+QH+kDx3TLXzgI6sHkczHleLJ3Gpgcvq7dMVkaFi7GiAua/aEkAbih
 rX3j31d91XhcIPyFof8wNzqHH2DglqFjvXKTyVJlV+KTs0c810k3+gbzqDD1v2QFK6oAa28m
X-Proofpoint-ORIG-GUID: iBsB8YNtC2Wwg01OaAXY8IC3zI5dtvcb
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=6887677e cx=c_pps
 a=lVi5GcDxkcJcfCmEjVJoaw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=rZy2__OW2t70H_ViVZ0A:9
 a=CjuIK1q_8ugA:10 a=rBiNkAWo9uy_4UTK5NWh:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: iBsB8YNtC2Wwg01OaAXY8IC3zI5dtvcb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280085

On Mon, Jul 28, 2025 at 04:28:27PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The DW DP TX Controller is compliant with the DisplayPort Specification
> Version 1.4 with the following features:
> 
> * DisplayPort 1.4a
> * Main Link: 1/2/4 lanes
> * Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
> * AUX channel 1Mbps
> * Single Stream Transport(SST)
> * Multistream Transport (MST)
> * Type-C support (alternate mode)
> * HDCP 2.2, HDCP 1.3
> * Supports up to 8/10 bits per color component
> * Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
> * Pixel clock up to 594MHz
> * I2S, SPDIF audio interface
> 
> Add library with common helpers to make it can be shared with
> other SoC.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v6:
> - Use drm_dp_vsc_sdp_supported
> - Store bpc/bpp/color format in dw_dp_bridge_state
> 
> Changes in v5:
> - Use drm_dp_read_sink_count_cap instead of the private implementation.
> 
> Changes in v4:
> - Drop unnecessary header files
> - Switch to devm_drm_bridge_alloc
> 
> Changes in v3:
> - Rebase on drm-misc-next
> - Switch to common helpers to power up/down dp link
> - Only pass parameters to phy that should be set
> 
> Changes in v2:
> - Fix compile error when build as module
> - Add phy init
> - Only use one dw_dp_link_train_set
> - inline dw_dp_phy_update_vs_emph
> - Use dp_sdp
> - Check return value of drm_modeset_lock
> - Merge code in atomic_pre_enable/mode_fixup to atomic_check
> - Return NULL if can't find a supported output format
> - Fix max_link_rate from plat_data
> 
>  drivers/gpu/drm/bridge/synopsys/Kconfig  |    7 +
>  drivers/gpu/drm/bridge/synopsys/Makefile |    1 +
>  drivers/gpu/drm/bridge/synopsys/dw-dp.c  | 2094 ++++++++++++++++++++++
>  include/drm/bridge/dw_dp.h               |   20 +
>  4 files changed, 2122 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/synopsys/dw-dp.c
>  create mode 100644 include/drm/bridge/dw_dp.h
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

