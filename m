Return-Path: <devicetree+bounces-181922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E89B6AC9661
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 22:09:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63AEB7A86F9
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 20:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DA79283153;
	Fri, 30 May 2025 20:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZPEUiZLX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85EF280A2B
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 20:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748635754; cv=none; b=bNb0vfdIlY+cWoyORgWIKQLv0nf4xoerGrG1b8qOc1nbzHsfnsIDp/JLtbm8vt/i/W+F3DvrUx0e1vqIyPMcopMEFhGWRS9pnt8q18PxJJeIN44tF6A1YcIE/F5yd3aJ/7IfLVNjmIPaCYUJnTLTQa1ycpJemv3XQ/8Lgv0YyHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748635754; c=relaxed/simple;
	bh=gxJoteEWGrJdag0p6XLmd54/gUnvxCbINpnKlHsPOBE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XiB1+JU7GAAXWKcjTm0pW+ZwgShRlIf7HoTBDtZrUVQyCvOuQCBNFpDe4iBhSKcn+WKWZ3145q4e0JoTT0biToLD60iU25xpfDgRseVr99YzV0nnpqGkFg8ET24PqAemH98aXL6oGq+1i3zsSnNDxYl64++koihgN4GAybxfXX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZPEUiZLX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UJTwTQ008028
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 20:09:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Lr5s1xj96hvEFSJoflxlO+2R
	6/H8h+Vs7x/BcGRAh5w=; b=ZPEUiZLX0xEsu7cUxMGrgpsmKWPYkQKTrf6Gat7j
	YmbnegfBHv6QaLORxcFpIpyRcT6nZ5MJoycaIyecuZpHrfEoe+VU0QOTmR4wbDBd
	7vQPESwRM2cTMbdrIUUpwjMyorH35adtmZqSrKsWTNLN3Q8pAV3d5JLOsHuN3I2n
	imKgrL7VgGZva380fFwysHidSFwi+UgBVtPuTeHhTUYcKk/BtI0L8GZYTXeA9UKV
	Wf0Q17X/UKHT7S6SM2DkB7Q+IFHA9Bcm4XLBQqeo8ouDHxkm1/KE7jnrTWOVL8ju
	BVXPwK4YDCykilNmxlcI5EUXISLc3kLCJBFLiUw6VX5OfA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w992vjeg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 20:09:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7caee990722so399501285a.2
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 13:09:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748635750; x=1749240550;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lr5s1xj96hvEFSJoflxlO+2R6/H8h+Vs7x/BcGRAh5w=;
        b=hIRMcVPjAQplqSY16G0EA+JEnbcNYaS8ljTLFqlGePNMKtamcbWsuvJbHpPHy3V6PQ
         WllAhptQ/yw6soBYW91F+CUks48+MAWUw9fNGwzeuDHtgjQBufy9hL++LThZS9hqZhGM
         w7aLJzuAiDJIa64IzRD3Ijz5Wq+aq9WwPuWUX6c7csQm20sI9US2WLw+Yfuh9Y2c/4F9
         Xlp4VEm0MtuCgxqVrO/qm8/arJ3rnmvBntFPxwjZ/4Xn76R6eVVaX+0QO0MKyXj7zzT2
         Y3tiZU/iL/DJnZMAdXQSdGkP75YNEwnpusOXzs9mpdm0vElux83K+k2rsMIZdMEonVkv
         8cVw==
X-Forwarded-Encrypted: i=1; AJvYcCWiTkCs0idYHD5PBaiSgnY2S+1DOcGuXUUrUJh6QOQhJDG9HM4BLs7/MoxZTYjo4xOACGbt3FHbY9pR@vger.kernel.org
X-Gm-Message-State: AOJu0YyC1fm2AY1EpyDJJF7Uk90+x59edF6VzIF7XhoaGQfcpkteCJ9R
	cLukLznr1lZ5kQTR9fmzUdqwIJvVaY/PAjJAVyLrz/Mg1xbToJa1h1hwA3NaBzBKJ+ErPV9WdBP
	AfapCWQeu0YIBkY3isrVlsrRFQ5z+lEIzlVyvN2JdvjD49Q0oiSMySh96c9KQ02De
X-Gm-Gg: ASbGncvHWEZ+GIUVprR2CLeytVLLgomyEbplAfthK8l/b88xIuWNGNlBjhemLEG0qBd
	1hCpkKDfcm8Hkc+wJhEMF9fK9Tc85pE3whsyJwlQ3TeSBnncMxZMFFyOhPLbyf/Z98KGxL/TaaN
	KPaL9m/XIpio08pIy9Q3xHAIwWN67a1L0Cy3jfjGoLWSVwTUOyQou7hQGIr8XrKcUv9VPEzuzrS
	whESL8EJZqrbTQXCWSG764xDps/VDrS1gtqB7buQfx2KjihFQYbtuIUX2lcIENBf55LlUcuoWBD
	Iu91jgiEpLaWB6S/z/3EKLUlMEUrRCAl+H1TYnb36thohN0Zdl0p+WSq78XgHsPuekntGt9i7j4
	=
X-Received: by 2002:a05:620a:31a2:b0:7ca:dac1:a2d9 with SMTP id af79cd13be357-7d0a4c457cemr505534485a.28.1748635750264;
        Fri, 30 May 2025 13:09:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxr8DtUZE4WLzMYtnDXmRGwCGjTFx8RDkihvU7FdNCuG8qkr/d30/DYFr7JUuCHRCg7VWeAQ==
X-Received: by 2002:a05:620a:31a2:b0:7ca:dac1:a2d9 with SMTP id af79cd13be357-7d0a4c457cemr505529485a.28.1748635749833;
        Fri, 30 May 2025 13:09:09 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55337910df8sm812496e87.139.2025.05.30.13.09.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 13:09:08 -0700 (PDT)
Date: Fri, 30 May 2025 23:09:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Danila Tikhonov <danila@jiaxyga.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, Yongxing Mou <quic_yongmou@quicinc.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: display/msm: drop
 assigned-clock-parents for dp controller
Message-ID: <pxo635637l45rxb5fgnmopq5jbs7lp2hd736mwrqt6jfgvw75g@kmc7rqxu6oyh>
References: <20250530-dp_mst_bindings-v2-0-f925464d32a8@oss.qualcomm.com>
 <20250530-dp_mst_bindings-v2-3-f925464d32a8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250530-dp_mst_bindings-v2-3-f925464d32a8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE4MCBTYWx0ZWRfX3xtvWqpMLx2E
 KjjPP2GP78OzZcw6FwmOYRa80mjRKh6VmTxzFCj0wqy7WphYWn76+VV11uCKIxqISLpqBFWSm/s
 4mcDgq8+86Svx/Q2tKN+QnZIP8d+VcmfGGITBJql7DQg60fkdsqGYuKVxeCtyq0XydhzEbWajGV
 fB+ds3RfBG09VVfHNJJhiTilbrEZFnh8cIDLNrKiFfgEg2mW542XWi8vJbZFBpM0RvI+KR/0v2j
 CZ0LB5nVqCDTwraRltgOpMJKjZYqlSL7T1ifB3tcrL6b4C3006RXWxAcEAv02IOzfJ8Ip0g2DpD
 10HjiQqBDtUueOTJbdVCR9owgi/QL2PaziqG52rK9875Q/MrODjQYqzJ+WTQpjR5PrLQE1F+yXm
 lMGU719ptbAtaERw5pRBLd4Lt65nLhAKKrIIAfu2a1nk5TuTmoHSkKJl26vacWOhjwhwRkuL
X-Authority-Analysis: v=2.4 cv=Fes3xI+6 c=1 sm=1 tr=0 ts=683a1067 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=MHIm7bi-knHlpQ7IpJwA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ocTESgtayLgMrp6YlufdpWgbXh3zIPwF
X-Proofpoint-ORIG-GUID: ocTESgtayLgMrp6YlufdpWgbXh3zIPwF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_09,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=842 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300180

On Fri, May 30, 2025 at 10:47:26AM -0700, Jessica Zhang wrote:
> From: Abhinav Kumar <quic_abhinavk@quicinc.com>
> 
> Current documentation of assigned-clock-parents for dp controller does not
> describe its functionality correctly making it harder to extend it for
> adding multiple streams.
> 
> Instead of fixing up the documentation, drop the assigned-clock-parents
> along with the usages in the chipset specific MDSS yaml files.

Don't we need to drop assigned-clocks too? One doesn't really make sense
without another.

> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml   | 7 -------
>  .../devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml         | 1 -
>  .../devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml        | 2 --
>  .../devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml          | 1 -
>  .../devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml          | 2 --
>  .../devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml          | 2 --
>  6 files changed, 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 46a50ca4a986..a63efd8de42c 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -74,11 +74,6 @@ properties:
>        - description: link clock source
>        - description: pixel clock source
>  
> -  assigned-clock-parents:
> -    items:
> -      - description: phy 0 parent
> -      - description: phy 1 parent
> -
>    phys:
>      maxItems: 1
>  
> @@ -208,8 +203,6 @@ examples:
>          assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
>                            <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
>  
> -        assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
> -
>          phys = <&dp_phy>;
>          phy-names = "dp";
>  
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> index 1053b3bc4908..951e446dc828 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> @@ -393,7 +393,6 @@ examples:
>  
>              assigned-clocks = <&dispcc_mdss_dptx0_link_clk_src>,
>                                <&dispcc_mdss_dptx0_pixel0_clk_src>;
> -            assigned-clock-parents = <&mdss0_dp0_phy 0>, <&mdss0_dp0_phy 1>;
>  
>              phys = <&mdss0_dp0_phy>;
>              phy-names = "dp";
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
> index 870144b53cec..a1f5a6bd328e 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
> @@ -216,8 +216,6 @@ examples:
>  
>              assigned-clocks = <&dispcc_disp_cc_mdss_dptx0_link_clk_src>,
>                                <&dispcc_disp_cc_mdss_dptx0_pixel0_clk_src>;
> -            assigned-clock-parents = <&usb_dp_qmpphy_QMP_USB43DP_DP_LINK_CLK>,
> -                                     <&usb_dp_qmpphy_QMP_USB43DP_DP_VCO_DIV_CLK>;
>  
>              phys = <&usb_dp_qmpphy QMP_USB43DP_DP_PHY>;
>              phy-names = "dp";
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
> index 7a0555b15ddf..f737a8481acb 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
> @@ -269,7 +269,6 @@ examples:
>                            "ctrl_link_iface", "stream_pixel";
>              assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
>                                <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
> -            assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
>              phys = <&dp_phy>;
>              phy-names = "dp";
>  
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
> index 2947f27e0585..7842ef274258 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
> @@ -298,7 +298,6 @@ examples:
>                            "stream_pixel";
>              assigned-clocks = <&dispcc DISP_CC_MDSS_EDP_LINK_CLK_SRC>,
>                                <&dispcc DISP_CC_MDSS_EDP_PIXEL_CLK_SRC>;
> -            assigned-clock-parents = <&mdss_edp_phy 0>, <&mdss_edp_phy 1>;
>  
>              phys = <&mdss_edp_phy>;
>              phy-names = "dp";
> @@ -389,7 +388,6 @@ examples:
>                            "stream_pixel";
>              assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
>                                <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
> -            assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
>              phys = <&dp_phy>;
>              phy-names = "dp";
>  
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
> index 13c5d5ffabde..3cea87def9f8 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
> @@ -401,8 +401,6 @@ examples:
>  
>              assigned-clocks = <&dispcc_mdss_dp_link_clk_src>,
>                                <&dispcc_mdss_dp_pixel_clk_src>;
> -            assigned-clock-parents = <&dp_phy 0>,
> -                                     <&dp_phy 1>;
>  
>              operating-points-v2 = <&dp_opp_table>;
>              power-domains = <&rpmhpd RPMHPD_CX>;
> 
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

