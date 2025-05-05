Return-Path: <devicetree+bounces-173610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 54136AA9024
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 11:53:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A2E81898130
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 09:54:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78FC81F8F04;
	Mon,  5 May 2025 09:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wk/2+gmc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A58B1DDC1B
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 09:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746438821; cv=none; b=P6RTZSIyTVrYBQaDTluLJaUAi0bW0OyD/Zc0yiHIrUDAys/2v/4t4GthRyeSnhAEzrqcuSDF9E5UXPZT1IOrNdXSQssMwJRllVyKwcs7tTMN6BTeiY2XHQ3Wca+afYD88oYr20mSaNy7+WIBbMC8mD8VTIs5fJnR/pPWL+uQpHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746438821; c=relaxed/simple;
	bh=H9jMukHJdPSZlcGNf5Jwgc1yMCgTBWLycd8M56kK8Tk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uUG9mLXVEWeIYeIS5/ChD/G18UptJzkFOTCqhZYPIbEYJvagxN+0Lxh35pZNcpZH20DmCXcrjcyN3BE40eXcaxpnYGVvTnKHPKiWSSheANFFNiBtSAKHomfyaxKXWiYciq+Bs9avnXYKyJMZmxLPKoXPdahiBHlSCZhX4M+78jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wk/2+gmc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544Nqc1G021878
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 09:53:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=w7RU+ij51cnyT8d/3rqZU8Xc
	2V1EFU/KaR2DDyIFqE4=; b=Wk/2+gmcV59wvQtbyQG63pVEADs5M2tNYSXLIEsU
	AbcdbWyMK0k0LDqsPY3Bhdn6E0LNXz0kkbV/6qR1Eo5jgd8e1jk0GVdYQladusZR
	9oD5shPxcP0YYLBUS4vw20sdAZCbw+FfxvYTHw7ajPNFIvLHlk0gaPm0/WwceSHI
	wETRJfQ+dHgSshjqkUvqYUmvIjrdk9TAfXwWS0PSb9XyK6zsuJA7gD4OW02ckTin
	L87ZGq40q1XKHC9C0ARkGGihkFYPUTBsM+5fR5FGyfeDKpeq6jLTXZA0Ep141jT3
	Y21o6RcAP8mHe4tD/G4Npr/vf7X4C83aB17MB9iTzei7iQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dce9bmb9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 09:53:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5e28d0cc0so717658785a.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 02:53:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746438816; x=1747043616;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7RU+ij51cnyT8d/3rqZU8Xc2V1EFU/KaR2DDyIFqE4=;
        b=FizbGEC+eiv2QjBhfPQ3fvjvcxKOky9nQGLF0ZdAAdK5vHA1CqrEZWPBG/LNFengsY
         6NVUrJLVu7vVckH8vv9/3Z9RO29wmmh0WHPSMCkaOPOrnMEQC89KJ3HEEj4lyjtbZ3Ar
         lQsneY8sOghT2CndWISQ5eHtYleAZviLkfjep/8hffRw9YPy4tpBJMNbbg1CM6VbpVmI
         PEHHtRtwQw7hOLsz0PbK2URXfmoy2SP22Rh9296BjK5q2VxRjmwYchNKCpp1ViWTpRpF
         NW9Lm5xKj2bgEDFtIkzbaxd+dtbeX7/PEjsHC8WE7quFTaH3HAG+Bd4ZKAdZ6fbv4EN9
         YOzg==
X-Forwarded-Encrypted: i=1; AJvYcCVt/A7CjC9UaysUlOwFXK4Jg7Sv3PoSf6k73WiR5hWG8NB44ytpgtKCl/Jk/P6lGOlRzG9LVKp7lUK7@vger.kernel.org
X-Gm-Message-State: AOJu0YyouovC7dlDqBO7aZAy1BWyI8QvEPURoggai/6buRIspkU61mMn
	+uIUZEaJJk0GiLH1ltEr3gxmJAuOs933vF8rdxaBoZBViZw3rIjxfPLlww9fl5mgq74JyOWH4PL
	n6o19Sm5NL/lM1+u5j1+hnXJeDNsgEM6Abk22tMoX6/AWljufHZuP5GxG3gJu
X-Gm-Gg: ASbGncvQ1aeGqXKvXFHDfVE4JNa6dbep/5p3dplLPuirY69mAsew982YbtkJGorz4km
	eApndtzZDNS9ZFewWR/cm4DDLe4gd8tD3jAJr1NBr3BkYHtdJ6xD4vxzeaYqymglgCknDdRDEP9
	NRBLK+E447q98K8o4JOguXhWmAS+JMwd0OsGYfBHT+8lFNHwQDrv4aY6f1ToWI8lcAP1NUq7tO9
	Tr5BzVTJrJR7x9tJ/rMBmzDXE+PnaEOMpGkc/6i+eXq1ihkTAQadd+kDyuBQok3dxK/TOcUNwcN
	0VPsakrV50tWP+EydcI8bAO/FKfQOYzYmf7mR2qZcsQ9waZr8b/CEcbyvbH7ff8GAs+HOc127f8
	=
X-Received: by 2002:a05:620a:44ce:b0:7c5:3b4a:a61e with SMTP id af79cd13be357-7cad5b384a1mr1400069885a.24.1746438815913;
        Mon, 05 May 2025 02:53:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4nSiBTxb3IhP9Q2xiL9GQgS/oQXIljveihA1O1seCSBGBXnW2ydcuIUmZWFs6RCr82a58yQ==
X-Received: by 2002:a05:620a:44ce:b0:7c5:3b4a:a61e with SMTP id af79cd13be357-7cad5b384a1mr1400067385a.24.1746438815544;
        Mon, 05 May 2025 02:53:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94c5594sm1641909e87.87.2025.05.05.02.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 02:53:34 -0700 (PDT)
Date: Mon, 5 May 2025 12:53:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
Subject: Re: [PATCH v6 00/11] Add DSI display support for SA8775P target
Message-ID: <gnmpt7evnmf2y7qu4o7pslg7cwhzxp274ky45drkgfxwpajbhs@bh4szrlfbnhr>
References: <20250505094245.2660750-1-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250505094245.2660750-1-quic_amakhija@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDA5NCBTYWx0ZWRfXz61EuUSYo8Qf
 demeLEBogfbcqg4Ws6X0ufY2q8U6+myscHFAZtuF5XQjDgEo7pXO7RR5mtWMoJokgzA9zoOTCnt
 rn3pNPcno0ejgo/gyfyzUiTyV1Yy4JKsf98+mINBuEdxWg2p1SpS5KnxQ65TCUkymndGiBwnSc9
 E+IFkmITMggES5Hy5gaUBZArI8b+c+BFvzE4yfPE25l0lwm6lCgnOkMht1qV2uAYpNR1LIlE1JD
 BGjhKrb1tq1pwJWX6bUHiJUDy9ncnu+YrYj4C8HfdiHuupWtDjdleJ9wDUy3WaLRpODscEjYbv6
 AJNj2SzyyLgcTHq1FRMYEeOeS2ovlxT7Ncha3qrIh/vwyD+Ea5ZT/QnZft+9MuZAYvj7VrNCVrp
 vsOEOi8DYvyzzhDsFNdqaQlvw/uEJ50Sqfip5/0HE71ks4QK6XBFMQe+n6XCcSo1Q3uYuG6D
X-Proofpoint-ORIG-GUID: KBOqoaso8Hfv6clQ9zkop_KyPkZi-2PF
X-Authority-Analysis: v=2.4 cv=Qope3Uyd c=1 sm=1 tr=0 ts=68188aa1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=2aRMNYBirawqYizlNqkA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: KBOqoaso8Hfv6clQ9zkop_KyPkZi-2PF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_04,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050094

On Mon, May 05, 2025 at 03:12:39PM +0530, Ayushi Makhija wrote:
> This series enables the support for DSI to DP bridge ports
> (labled as DSI0 and DSI1) of the Qualcomm's SA8775P Ride platform.
> 
> SA8775P SoC has DSI controller v2.5.1 and DSI PHY v4.2.
> The Ride platform is having ANX7625 DSI to DP bridge chip from Analogix.
> 
> ---
> This patch depends on following series:
> https://lore.kernel.org/linux-arm-msm/20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org/
> (ARM / arm64: dts: qcom: Use the header with DSI phy clock IDs)
> 
> Changes in v6: Fixed the review comments from konard.
>     - Added the reference voltage in patch 7 for vph-pwr. [Konard]
>     - Patches from 1 to 5 of version 5 of the series are accepted.
>       So removed from here.

Now patchwork instances will treat your series as incomplete. There is
no need to be that fancy. In future rebase on top of linux-next (you are
using linux-next as a baseline, are you not?) and post remaining
patches.

Please don't repost anything now, I'll probably pick up anx7625 patches
today.

>     - Link to v5 : https://lore.kernel.org/all/20250424062431.2040692-1-quic_amakhija@quicinc.com/ 
> 
> Changes in v5: Fixed review comments from Dmitry
>     - Added reset gpio for io_expander(tca9539) in patch 7. [Dmitry]
>     - Updated the commit text of patch 10 for eDP configuration. [Dmitry]
>     - Link to v4 : https://lore.kernel.org/all/20250417053909.1051416-1-amakhija@qti.qualcomm.com/
> 
> Changes in v4: Fixed review comments from Dmirty, Krzysztof and konard
>     - Add only single compatible string in dsi ctrl pattern properties
>       in patch 3. [Krzysztof/Dmitry]
>     - Move the io_expander RESET and INTR pinctrls from i2c18 node to
>       io_expander node in patch 7. [Dmitry]
>     - Remove the gpio-hogs from io_expander node, as we are already
>       configuring them under anx7625 bridge nodes. [Dmitry/Konard]
>     - Updated the commit message based on hpd_enable() and
>       hpd_disabled() recommendation in patch 8. [Dmitry]
>     - Split the patch 9 of vesrion 3 into two separate patches. [Dmirty]
>     - Updated the commit message and commit text in patch 9 and 
>       patch 10.
>     - Link to v3 : https://lore.kernel.org/all/20250404115539.1151201-1-quic_amakhija@quicinc.com/
> 
> Changes in v3: Fixed review comments from Dmitry and Krzysztof
>     - Added qcom,sa8775p-dsi-ctrl compatible based on the set of clocks
>       which are associated with it in patch 2. [Krzysztof]
>     - Drop the blank line and add contains instead of items in pattern
>       properties of dsi ctrl and phy in patch 3. [Krzysztof]
>     - Updated the node name from anx7625@58 to bridge@58 for anx7625
>       dsi-dp bridge in patch 7. [Dmitry/Krzysztof]
>     - Updated endpoint label name for input output ports of analogix bridge chip in patch 7. 
>     - Check the DP or eDP confiuration based on the aux node in patch 9. [Dmitry]
>     - Link to v2 : https://lore.kernel.org/all/20250311122445.3597100-1-quic_amakhija@quicinc.com/
> 
> Changes in v2: Fixed review comments from Rob, konard, Dmitry and Krzysztof
>     - Added additionalProperities in dsi and phy patternProperties in patch 3. [Rob's bot]
>     - Updated example in qcom,sa8775p-mdss.yaml of patch 3:
>         - Added port1 and port2 inside mdss0 ports.
>         - Renamed dsi ports from mdss_dsi0_in to mdss0_dsi0_in and mdss_dsi1_in to mdss0_dsi1_in.
>     - Updated the init load value for vdds supply of DSI PHY from
>       150000uA to 48000uA as per chipset power grid in patch 4. [Dmitry]
>     - Updated the init load value for vdda supply for DSI ctrl
>       from 30100uA to 8300uA as per chipset power grid in patch 5.[Dmitry]
>     - Rebase the series to use the header with DSI phy clock IDs to make code more
>       readable in patch 6. [konard]
>     - Added the interrupts-extended in patch 7. [konard]
>     - Fixed the warning from DT checker against DT binding in patch 7. [Krzysztof]
>     - Changed the connector node name from dsi0-connector to dp-dsi0-connector and dsi1-connector to dp-dsi1-connector
>       respectively in patch 7. [Dmitry]
>     - Added the vph_pwr for anx7625 vdda10, vdds18 and vdda33 supply to fix the warnings from DT checker in
>       patch 7. [Rob's bot]
>     - Addressed device tree comments in patch 7. [Konard]
>     - Squash the DT patch 8 into DT patch 7. [Dmitry]
>     - Added hpd_enable() and hpd_disable() bridge funcs in patch 9. [Dmitry]
>     - Update hpd detection bridge op flags logic based on eDP connector in patch 10. [Dmitry]
>     - Link to v1 : https://lore.kernel.org/linux-arm-msm/20250225121824.3869719-1-quic_amakhija@quicinc.com/
> 
> Ayushi Makhija (11):
>   dt-bindings: display: msm-dsi-phy-7nm: document the SA8775P DSI PHY
>   dt-bindings: msm: dsi-controller-main: document the SA8775P DSI CTRL
>   dt-bindings: display: msm: document DSI controller and phy on SA8775P
>   drm/msm/dsi: add DSI PHY configuration on SA8775P
>   drm/msm/dsi: add DSI support for SA8775P
>   arm64: dts: qcom: sa8775p: add Display Serial Interface device nodes
>   arm64: dts: qcom: sa8775p-ride: add anx7625 DSI to DP bridge nodes
>   drm/bridge: anx7625: enable HPD interrupts
>   drm/bridge: anx7625: fix drm_bridge ops flags to support hot-plugging
>   drm/bridge: anx7625: fix anx7625_sink_detect() to return correct hpd
>     status
>   drm/bridge: anx7625: change the gpiod_set_value API
> 
>  .../display/msm/dsi-controller-main.yaml      |   2 +
>  .../bindings/display/msm/dsi-phy-7nm.yaml     |   1 +
>  .../display/msm/qcom,sa8775p-mdss.yaml        | 181 ++++++++++++++++-
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi    | 183 +++++++++++++++++
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 186 +++++++++++++++++-
>  drivers/gpu/drm/bridge/analogix/anx7625.c     |  34 +++-
>  drivers/gpu/drm/msm/dsi/dsi_cfg.c             |  18 ++
>  drivers/gpu/drm/msm/dsi/dsi_cfg.h             |   1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c         |   2 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h         |   1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c     |  27 +++
>  11 files changed, 624 insertions(+), 12 deletions(-)
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

