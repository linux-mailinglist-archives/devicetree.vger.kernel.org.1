Return-Path: <devicetree+bounces-209678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDF8B38506
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 16:31:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDF3A1C20950
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 14:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15D3B1D5154;
	Wed, 27 Aug 2025 14:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="daTFYMGP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E7817A303
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 14:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756305082; cv=none; b=DjG9FvO6BDbaO8iDE0iXL/X3Xu2x2w21ET33kmRnodrD0VfUiEjajUZgDXk/X0n2E/sAf3v9LNKEogn0HAYgHVimEv01vSkZgLb3laAP16AuL65OPhWxn4ugp0ybgrRpYPaySdxVAI3MIPU3+WVDhBAkd6Ugu8IsCUvq0+oWuCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756305082; c=relaxed/simple;
	bh=WjDpuiLcedX6kNfOJACEP4SaNtl8IR7cA/vucZ3SLsw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DG0P9xbWJJiAL+hLA5tIB7wuzwpxhjyZPTTPO3cs27ifRVAkYE5ekVd2ajWViCqZewnrLVbZcdyVzCtekDvid/xRaTo86y3r3oScSHqVdyGavsQ5M4tLogc8NUqCGrBFLH8DURXnMIcvomhWTkj4PzNyVL4p24qwCurnjAdMr9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=daTFYMGP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57R6kJ2r008302
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 14:31:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q0lt8Alc0eadGnQMpiWDAGtF8IcvB+wKd8Bpg0uTVog=; b=daTFYMGP9Mk8g61z
	LDzBGao1EZeoj4fn8cyOkWYcYi6w3RqveMI7c7wSJJ6oF/ZwMdw8NqIX8pnQJnl3
	mm/aOEnR3XNURV504Vz7W2Eb8nE5zj5QsAcLhPbskmjtOQ+KkjSZSN9iAz9IOH+a
	Di4R0OVdn2S59QHrJ5qStdl5sTPFbS57QO2ZPDIR8jsQKEdpNCsmkqDPM1KSWAS/
	ZCTiAf6sKCbPc/Ez361+ornmJMf5qT2p6wjf3s+uUq/YM0w/iYQpxx+gbCaSVjMw
	iBsG8PGOQiLXvCOrY90eY8NYPKH9pn1gNmhE3E8heb2dMUDSTutsg1JcWzesgdhE
	qpGbbA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48sh8ak57g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 14:31:18 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70de1a3cec7so16166186d6.3
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 07:31:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756305077; x=1756909877;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q0lt8Alc0eadGnQMpiWDAGtF8IcvB+wKd8Bpg0uTVog=;
        b=xSRKXAHRGPvoV1MzpVJwdbzoF/fHG6KsVV0v4D9YmQZfD1Y9JmEW0JsDdq7PB+J9Oz
         SEKxcbrrR4cXg9Z5ePywv9UouQRbrTKfH52kvg6OeKXepusCkUisUGIoHObIWCqW8Ygg
         5PjVvBOiysJu4zdjOyhI+rEyl/Qmk/834MckEWsWcxyvCn17J/QAxo7HLlg161pieKTs
         oSYQqUdc8/Y1Q0XImh9yTZUr7zrKe0ETdOiSIUn62ZbCZ9Nouc7TKoHpKKQeGvXyFQVx
         b+ceit/O0dnz/v/gzlajARI66Uys+VnTeFf/Asno67UMRs7xZnZdldI5fcM7QqajJNZ/
         TOUg==
X-Forwarded-Encrypted: i=1; AJvYcCX+wb7GJr0zOLWi2Rlo/UpCDM1SkEEzNxnpbKmiqD6wfhVRLwU97OAdjQRLlmTKmyxa0+HbBCNH/S6q@vger.kernel.org
X-Gm-Message-State: AOJu0YwkhIKzwrn7hQS0Mb5jS9+/Dvea0H/VjbrDtV62LNPEf3201Bx+
	peG8FZ0ibf0TocOdP/HIMreKVwdFkulLjibs0eVGXYNZuqRvg9gRIxsJpTvLu3gGWBIQVlIZbh7
	OE70IG4i1jxQ9XCEgTq79PlV2V2UaVb1+w/yJa8x+XVxk2yT6MCdg7/hJSJLd/tV+
X-Gm-Gg: ASbGnctUSzAIU1lSY2ox5W+YW801/L2IRtkILYETx6VNwatO/M+k4H+rH/7mOGmZSKO
	bnM/2N+PODoXFxvSTM7UXNb+rZRZIxmVBqNgvaE0pTClKaardad2rS5nJTLR7ZOJAfsJqk8/MgD
	g1pB/cG3kvMmRcxIi8v1npRHgdSLvcoYpUHKoBbz3d4SM9mUVgYo7KQy21TJu3uJSCsiyNKRHg+
	9SbXPN0nhOg2kKKwuVFumDLZDDpJSL7vdDeEXcr0GhMvRNGDFzH5qJOmccpe60IE4sFLeUQCKs0
	SRnh8iB2WuipKjpGdFVYNPaJ3lhaQRD9ifR15yKwOSMO8T/6wTUx1gMsNlCYcANxbVRL+WHouK8
	lsjovBz8KdYg7RBJHuFeaWsnOVcnW2bUIxE4iICcp9GvUWgupi1sc
X-Received: by 2002:a05:622a:3c8:b0:4b1:2783:ab99 with SMTP id d75a77b69052e-4b2aaacf013mr240586441cf.39.1756305076117;
        Wed, 27 Aug 2025 07:31:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFovrqRv2sivDnbTsFQFcberelJyZtK09JvAw7fJdBbeVxPt0vDz1SXP+xHSgKWaxjA8FBaBw==
X-Received: by 2002:a05:622a:3c8:b0:4b1:2783:ab99 with SMTP id d75a77b69052e-4b2aaacf013mr240585511cf.39.1756305075350;
        Wed, 27 Aug 2025 07:31:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35ca8c35sm2833513e87.143.2025.08.27.07.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 07:31:13 -0700 (PDT)
Date: Wed, 27 Aug 2025 17:31:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v3 07/14] phy: qcom: qmp-usbc: Move reset and regulator
 config into PHY cfg
Message-ID: <osav4kwxytfuxvnf26ugdw2qasd753smywsux5punuegbkxqgq@fp3r4esqiqyq>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-7-a43bd25ec39c@oss.qualcomm.com>
 <ofvzduf5xyip7w6yde2xwsrvv3tdh7ew3yyzeya2qzpqty3j7p@bnetyjowhdn5>
 <6f7c3962-ccfc-4400-a77f-399b06da93e1@oss.qualcomm.com>
 <llrt3xnd5gagovnmyzqebp2da5v67bkxjntfcgc5r5auamspyj@7v5taph3i3c4>
 <f3cc06c1-25d2-40f4-bd77-8a9c51b40efa@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f3cc06c1-25d2-40f4-bd77-8a9c51b40efa@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cLDgskeN c=1 sm=1 tr=0 ts=68af16b6 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=LvOJhfRPg24KsvUfCm0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDE1MyBTYWx0ZWRfX2jJrhJTL8oNu
 WoSnzhvVrdkNftI1SYNYq17HiGTYLhQaPo9CPBDwq+I6hQ5rnGpsJ6Sowkrz3UXm4x9PSuSdDZ2
 4NSzKzpvkstkwxUuTD7Dgpd+NC66++lR/RLLR/GwxKdYMW7sQ2qVzItR7zPcziXumusws9nGr1A
 OG85Wex1Rk2Bl5/bjgCYG2XaM0r1IB3liS8XpuwMZXTrQ/uMvAaJIAKFypLKl2ELlbWpw1+4Qsk
 VMxawd7gWb7KJIXC3SdvUDhRJDsmTw7ZWJqhZdqUr14GccddpKPJTkArvwWYNSnMFeWVotkgU0S
 eXxpOTfJA4QCtAp44APJ4XIO+V1OSHGLDLYMB+yZ0qnNFCrDLBR0ZwqBm/u9OpI8BM4epZF/BK9
 2gGvHpOk
X-Proofpoint-GUID: ovVbKZvjw2r83ipu4gDCCpTTV7tpjXPo
X-Proofpoint-ORIG-GUID: ovVbKZvjw2r83ipu4gDCCpTTV7tpjXPo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_03,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508260153

On Wed, Aug 27, 2025 at 09:28:00PM +0800, Xiangxu Yin wrote:
> 
> On 8/22/2025 6:08 PM, Dmitry Baryshkov wrote:
> > On Fri, Aug 22, 2025 at 04:29:28PM +0800, Xiangxu Yin wrote:
> >> On 8/20/2025 7:30 PM, Dmitry Baryshkov wrote:
> >>> On Wed, Aug 20, 2025 at 05:34:49PM +0800, Xiangxu Yin wrote:
> >>>> Refactor reset and regulator configuration to be managed via qmp_phy_cfg
> >>>> instead of hardcoded lists. This enables per-PHY customization and
> >>>> simplifies initialization logic for USB-only and USB/DP switchable PHYs.
> >>> Please split into two patches in order to simplify reviewing.
> >>
> >> Ok, will split reset and regulator part.
> >>
> >>
> >>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >>>> ---
> >>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 108 +++++++++++++++----------------
> >>>>  1 file changed, 53 insertions(+), 55 deletions(-)
> >>>>
> >>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >>>> index 61128d606238321d1b573655b3b987226aa2d594..4e797b7e65da0e3a827efa9a179f1c150c1b8b00 100644
> >>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >>>> @@ -421,8 +421,9 @@ struct qmp_phy_cfg {
> >>>>  	int (*configure_dp_phy)(struct qmp_usbc *qmp);
> >>>>  	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
> >>>>  
> >>>> -	/* regulators to be requested */
> >>>> -	const char * const *vreg_list;
> >>>> +	const char * const *reset_list;
> >>>> +	int num_resets;
> >>>> +	const struct regulator_bulk_data *vreg_list;
> >>>>  	int num_vregs;
> >>>>  
> >>>>  	/* array of registers with different offsets */
> >>>> @@ -453,7 +454,6 @@ struct qmp_usbc {
> >>>>  	struct clk_hw dp_pixel_hw;
> >>>>  	struct clk_bulk_data *clks;
> >>>>  	int num_clks;
> >>>> -	int num_resets;
> >>>>  	struct reset_control_bulk_data *resets;
> >>>>  	struct regulator_bulk_data *vregs;
> >>>>  
> >>>> @@ -514,9 +514,18 @@ static const char * const usb3phy_reset_l[] = {
> >>>>  	"phy_phy", "phy",
> >>>>  };
> >>>>  
> >>>> -/* list of regulators */
> >>>> -static const char * const qmp_phy_vreg_l[] = {
> >>>> -	"vdda-phy", "vdda-pll",
> >>>> +static const char * const usb3dpphy_reset_l[] = {
> >>>> +	"phy_phy", "dp_phy",
> >>>> +};
> >>>> +
> >>>> +static const struct regulator_bulk_data qmp_phy_usb_vreg_l[] = {
> >>>> +	{ .supply = "vdda-phy" },
> >>>> +	{ .supply = "vdda-pll" },
> >>> Please fill in the values for all platforms. It well might be that they
> >>> all share the same current requirements.
> >>
> >> I checked previous DP projects and found all platforms configured vdda-phy with 21.8mA and vdda-pll with 36mA.
> > No. On SDM660 and MSM8998 DP defines 73.4 mA for 0.9V supply and
> > 12.560 mA for 1.8 V supply.
> >
> >> However, I didn’t find USB load configs in downstream and from SoC related power grids:
> > Please check the actual HW documentation for those platforms.
> >
> >> QCS615
> >> L12A: VDDA_USB0_SS_1P8/VDDA_USB1_SS_1P8 Ipk:20ma
> >> L5A: VDDA_USB0_SS_0P9/VDDA_USB1_SS_0P9 Ipk:50mA
> >>
> >> sm6150
> >> L11A: VDDA_USB0_SS_1P8/VDDA_USB1_SS_1P8 Ipk:20ma
> >> L4A: VDDA_USB0_SS_0P9/VDDA_USB1_SS_0P9 Ipk:50mA
> >>
> >> SM6115
> >> L12A: VDDA_USB_SS_DP_1P8 Ipk:13.3mA
> >> L4A: VDDA_USB_SS_DP_CORE Ipk:66.1mA
> >>
> >> QCM2290
> >> L13A: VDDA_USB_SS_DP_1P8 Ipk:13.3mA
> >> L12A: VDDA_USB_SS_DP_CORE Ipk:66.1mA
> >>
> >> sdm660
> >> LDO10A: VDDA_USB_SS_1P8 Ipk:14mA
> >> LDO1B: VDDA_USB_SS_CORE Ipk:68.6mA
> >>
> >> msm8998
> >> L2A: VDDA_USB_SS_1P2 Ipk:14.2mA
> >> L1A: VDDA_USB_SS_CORE Ipk:68.6mA
> >>
> >> It seems the USB power requirements vary across platforms, and the
> >> 21800 µA load for vdda-phy exceeds the Ipk range in most cases.
> > Ipk being ?
> 
> 
> IPK: Instantaneous Peak Current
> 
> 
> >> I also tested removing the load settings for USB+DP PHY, and DP still works fine.
> > It mostly works either because we don't allow mode switching on older
> > platforms (yet) or because somebody else has already voted and that vote
> > keeps the required mode.
> >
> > As you've started looking on specifying proper current load, please
> > finish the work.
> 
> 
> Discussed with chip validation and power SW teams.
> 
> The power grid tables are primarily used to ensure each module receives 
> the correct voltage, and they define the Ipk for each submodule. 
> 
> While they don’t specify recommended regulator load values, the Ipk values
> reflect the expected power domain strength and can help estimate the voting
> strength needed for each supply.
> 
> Since regulator load is mainly used for voting, I’ll define init_load_uA in
> the next patch based on each SoC’s Ipk values to better align with hardware expectations.

If the Ipk is defined per module, then it's fine.

-- 
With best wishes
Dmitry

