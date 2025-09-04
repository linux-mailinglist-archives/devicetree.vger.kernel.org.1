Return-Path: <devicetree+bounces-212484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D55B42E48
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 02:34:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF75D7AE5FB
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 00:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B7F1A238C;
	Thu,  4 Sep 2025 00:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SekZQ3Il"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2179219309C
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 00:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756946063; cv=none; b=Gwwrelw5xD0EJFHatgpTVaRLNWvuZ+u4Xo3RnA6icjpHeKGsf/PyhL8Yo/4xXnUwDUdpCeyfdEb3H25lgDGhao/co8KPajc+EstGizmEe5wpZ9g/uTdRMy3AVm3o5LU12HM9duHQXld3zAx9Tv23Y4GM0oJo/I4fsS2potS93nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756946063; c=relaxed/simple;
	bh=0sZo3zq7uZkf9+Ve/jrJfnxY0tHOn3ang3YutG87UOQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CJwpgOPe9AthLtyfbcfvQFw3FZqvey0+RGc4oHbX7Fjf3cxStab3yNgSWmws5WnG5MqLrh0mz4AkvtuNHI+gxFK6vWdo01oIE7qmiKlMDRGnk6fWPLmydlJM/Icrj26CxTNeP7t5geGHwkdpwdJh8Rndt6uaFseFNTz1nKQylKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SekZQ3Il; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5840Rta8007957
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 00:34:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XfrJrvdyAXmQJVa0rcNZrHND
	sz8MqqvZWVWKrBmq0R4=; b=SekZQ3IlTy8JL2eV4UuBYUfIC1IkmkZsa88yasc4
	AcXVfeKGNRrY/gJMoIbwvK0vavZ/DMTZOADrXMvbo0VnSCit8/GwiSmjPXfKeulz
	+MqF11KdC0rxEXqdieeCgy6EkMBitpjSq1dgoJ04/kTDwa5vqeAZhv6q24PRL+45
	4qQ78VEX1Cv+B7/+JXavAdpr3PbAE5vwH/e9I+SnqIUU2q6ChBsq4BfbZsxM4r8S
	871oCf6XH/3ijtgwhqSYRlQy94A/3SL2aWg9X7FLlZ5YbT5nko1bsIUwuJEe1/nL
	nNVP48/TFvgcQOpMsibrZ5rCNdLwK71UnQ3xqRsIcAqxCg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy9gmb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 00:34:18 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70de6f22487so7875236d6.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 17:34:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756946058; x=1757550858;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XfrJrvdyAXmQJVa0rcNZrHNDsz8MqqvZWVWKrBmq0R4=;
        b=ifRDqCGCMEtpCIT84OibDYV1TPcoO1Cf49g1cwB2qFYR/vBmk8jJ6R7an5ceIFBfKe
         oRHvI3mpscpXzA4+5foBsL45GS6vhJ/pXiOHTMvZV6kfDtF0KNRWvg15H/f+qV6c1j0D
         fg/3rl1r7C4pjSyu0T/UNA79EOJC/dM+3sq9VJrMMkr1SFFjIde9mxBdV0C+lodm4Ek5
         3+R4sSDL9GxqUXHnvcAah2KIBGAiA7eIJKq5i0YKQPX5O0yqR950MLA2gq10FTWyrIui
         YhrspT9P9GHwb7cAPheffqV4WpAN1VA9rmVyoSXv0HKor1fXCaQFfAHiiBU0DWazIGHs
         szWg==
X-Forwarded-Encrypted: i=1; AJvYcCWvyRIwzX6qZzOK6Ff4qKNCm37FaRD/zfPC1ts7gDjzYuP1ly1IztHxQRokAie7NR3ghFWjjdDRGUpB@vger.kernel.org
X-Gm-Message-State: AOJu0YyNDlHvvL3QT4/EnuSmtW0AIrW3Wxcpi0tJT+5eYQLdu8R69gKc
	M7c/gBYPu9+irnfdJDED6aDlwu8xAf+qrYYd03FglkK0U3Xyj5LRRG+cKPpSDx9nr/6kUTrBW5p
	ySyJFqaSquVORyPFInL1hfzHjCOm4bkX8ySRvmZyJffjRfmtpRB0e6sdCfVWYNiZR
X-Gm-Gg: ASbGncsjIou+cEW+RV1HghOPML28+0xCcjnObWcO8QHT9k787EiBYShk/wj+01Qo8m3
	mZ80iBB7s5Pu55+zRkAwKq9XbTkdW4gCvmYWnNNQai3sAdOjKub9ctHL3Eh+kXSBI9zPxhdBjsf
	lK2X3AQSt1pI97RAstkrKfliZjB1ULyBkgU0pFW4xbGuDeFNbpxVqVI8/zqlBWkJ/WWbxPISYBH
	EcBZoqv763ClQZRnmCYOoDfagJSSQFi60Cv+vwU71kcsW/AGAzXy1xNA+AAZKLqWMxyeSo8fTCR
	4tfBxR7yfVdEZG/rGTO2N9yy/sDFxFeNZXWN3xnslbf8QMmOlUB8AueADNf1ndsxOWnxx2AU/wQ
	FlDhSXfPJldcEFbc7qBlfyCFJzV7O/PGfkLvlZ4KaThNm55Ww0BQC
X-Received: by 2002:a05:6214:1c83:b0:70d:843f:6b8c with SMTP id 6a1803df08f44-70fac8a7b89mr177520426d6.37.1756946058084;
        Wed, 03 Sep 2025 17:34:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGja7X2uK+OYgomkOzPWpjLsAEHmq25LEESvoGCpov8TlZrxYSLZ5iKF7ssAy+77a5qFU41Dg==
X-Received: by 2002:a05:6214:1c83:b0:70d:843f:6b8c with SMTP id 6a1803df08f44-70fac8a7b89mr177520176d6.37.1756946057510;
        Wed, 03 Sep 2025 17:34:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad525d1sm814295e87.139.2025.09.03.17.34.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 17:34:15 -0700 (PDT)
Date: Thu, 4 Sep 2025 03:34:13 +0300
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
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
Message-ID: <xurpc3mk5kksx7lfpsdqgasov5gc4dpsmz6iv2hjhsp5tewbue@dvrupbjzgxle>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b8de8a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=YChNujVLCtOUS48-0VMA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: sSp3hrbkwU9tpDmFtR8t3G3VYKWoMZzG
X-Proofpoint-ORIG-GUID: sSp3hrbkwU9tpDmFtR8t3G3VYKWoMZzG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX5H9Fe756A+I9
 sDjeUajHyoGLwLdqJxRgdlDqSki/PsTep3wusrywdjvKQAC/6Kad60UybOGImeZDweLasMzP6HJ
 7kbxt7r+Zr7jGmoLwmwCCS5KJ/R715FU/7Y4/g8S58M6rqgmr2NdzKcbhPgdOiN+jXnvQFrnbBE
 RyoAsNV28El/CTX9fCVilL65fGANt1uqbnk90+naHrsyd8ntNNNfMDAcn1vexM/0/siV2HhBhG7
 SDbYi3vgCHxI7PmMsoehwgJ8fdZWRCvvhgekgkB+ZiqQz3SQgYv8qcW0Ve8sQrCaA6FaNaJQ0ey
 mV2Qih2rm2OVvzwf5mensRqz6eeRUuyf18Cc+nByNxXWhAiVTPonh1LPvFKasEwncQwBaqTL6ai
 QbGhlOsg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_11,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

On Wed, Aug 20, 2025 at 05:34:43PM +0800, Xiangxu Yin wrote:
> Add DisplayPort controller for Qualcomm SM6150 SoC.
> While SM6150 currently shares the same configuration as SC7180,
> its hardware capabilities differ. Explicitly listing it ensures clarity
> and avoids potential issues if SC7180 support evolves in the future.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 9923b065323bbab99de5079b674a0317f3074373..996d0132e084d401db85014a1a4e445d00d62ed8 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -27,6 +27,7 @@ properties:
>            - qcom,sc8280xp-dp
>            - qcom,sc8280xp-edp
>            - qcom,sdm845-dp
> +          - qcom,sm6150-dp

The DP MST bindings were A-b'ed and R-b'ed by Rob, so I picked them up
into msm-next-lumag. Please rebase your patchset on top of it and
resend. At this point I'm interested in DP bindings and DP driver
patches, the PHY part can come up separately.

As for the compatibilities, I think DP on SM6150 should be compatible
with either DP on SDM845 or DP on SM8350. Please choose one which suits
better.

>            - qcom,sm8350-dp
>            - qcom,sm8650-dp
>        - items:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

