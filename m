Return-Path: <devicetree+bounces-230255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1396C00EFD
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:59:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 654643A2F1D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FE0330F533;
	Thu, 23 Oct 2025 11:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jBArtMrM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55B630B507
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761220760; cv=none; b=VqBs1br11caUg+t017xk1rGgbzmIdMRzyl1iJbDxT3tYkHSXOu1TprD4L42Ow4jFf2d7wqPD6Qr8HlMY5aT+TVfKljeBXI6szoJNZfaih9AiCbE2NQzYdP5xBmyDtf6LH8giC3CTniv0ggauxd5aE0r4mR0a5FyCRRGspv1gLoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761220760; c=relaxed/simple;
	bh=xVs2J4y/MdwS4fSVX7wvxkuXXbuzU3K9MgRZCcODSRQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MCG4s7s7NCbSd18MnNyRqTlL0mYKkmYKlFoUo4pCSMWhMxYLeb6yjB2tTpoY8kjdiRXRx5JcwtXnsoSUXiupsklj64Eec0LdOoxAqTqx2J+V1gXfXJr4CnxVJ/G+0xO9+n9rfvT3R0kbqFrxZEe1fU5hXiO3KQ3qT7s64J3rpQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jBArtMrM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N7UsRN027193
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:59:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6ZSrNBn4GN8xDjxxz5ymQXTF
	nfG4FbPwRaNc+3tmIX4=; b=jBArtMrMMQ3Q9zwl0FdCWDXTmxemZOWH+k4X6upE
	5DsDe8FZq+cVunSxeP79+MTQjhclQ2yqOCSEBg99GgD3GYnJX0xzajphfv1bgoSr
	98RjWm7LbNewP/hxEljbTXKmLf3UfsDd+4E84/QWEGaMaYhiSVeyFhSCJxf/oM/i
	3oolw/EivwVoiWAouOIimYGLuEYhtDFv/+JHB2LlUf+fCWry6OH8nOcWbnFkGUe4
	yl8tuuHgG38xTJ/Q+bJq10xagTk/lW9JSyTyFxNTBhySXQDgtS5UF9h0+J0khXMR
	BJrIcXWNrTI1WMUgmV+HbvlFbH8Ozn3ByOUmgZqfHbI+Yw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y5x8jcsj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:59:16 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8916e8d4aso35012011cf.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:59:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761220756; x=1761825556;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ZSrNBn4GN8xDjxxz5ymQXTFnfG4FbPwRaNc+3tmIX4=;
        b=hAMAWhF+a+hTxjB6BOX8NQWJturJXjfzQKpVp4jUrxYKfU7o9ke69TFqxcn8Q71MoB
         EMmEH2NL/ZiGD6EpY5jMVzh02ojVnvbJDOKuUPF/S77ulxhJ+ScKVnnP9CgpL3/9A0LE
         4mvgLrc3T3zAk+b7D4v3WDLLUV4p+G38op/DLipuOelUTkLllcPUNgU0JwVdTNETknsz
         WkyWtgyuuuIz1lUncRsRNbgq7zdPP6ttB68uuu2I33rOKwbx7IMquuBziK1ZBaTLOWfi
         kvrpE2cR13wbsnsMCRIvJRVablOwlyrcgHYpblk5pYZOX1ewdX6uhuKsufN4/ugS2+Ca
         t0ig==
X-Forwarded-Encrypted: i=1; AJvYcCVQZs2mAT5vSHbsjvZ7sheLwxoQ+vKoP0uKcCN7g1BT3njQXX+DovbPRAhd5fQHHkGGE/aIUbGDMa4V@vger.kernel.org
X-Gm-Message-State: AOJu0YyUmEFUgY25YnXIRvfVoNbN5B1t7y1rHeePEb+7GzluVm5idmWR
	eF+xdC/lAQ+J/7G0AobVfLjahuI3bIqtA5NUY9l+dO6o3lMtnJFwnfiWWLUoVz1N/IZ6y9ke9Ru
	EinGH9puQcMFUuK1qokYFQJFw3G4nYvWlOqp/684L+h6cIeNwpwYh9kDVyA2IGkkH
X-Gm-Gg: ASbGncuof9/lfOpVTqanncWDXI6qWxJ3QllOL55rctuHm7MJD8QJMzrz4rPYjXVcKYA
	uOi1QQPWQtTiIy7Eglb9npPatEzkd8JRjEZGyrNtiZSQcqAJmSTA2etykxtVu3gneoTjLFf1Yyt
	TAJvsvkk4AipBxlYXRLLFYgyud0Fnc6M+owRMBXd5OgGa/JLsZk5EdcvB6DrVdTcWuJSzqMH4Bo
	BRhkGhuer/Iqdw4qU37qAgFaMLWXpsHDAJXD/WUL2HhnE9xwnxFmnVQ17BcaYCrDA3mxly6pOxp
	KBH1qtykwYIWFBZdk78n9zQbwTm/FN+HXCUiP7vcYj0WZQGv598dWIhUsmp3kIdRVV1eCq2JhLo
	nn6cLULWvtgZYV8ggaWLHmC6Z99D9mdhkndV7Zwe5fu7nSELuMqwHJv6jmB2MLGVrx+cTeXTbRc
	dECEJXyBm3YmV0
X-Received: by 2002:ac8:5dd1:0:b0:4e8:9140:f3c8 with SMTP id d75a77b69052e-4e89d3442b0mr300586731cf.53.1761220755731;
        Thu, 23 Oct 2025 04:59:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrkM4uYfq/lNpbDez8GrI0xNjJmLCd3bXoaTu6hgpwbrEYitSxf9CGp5WmH+cMNaQYf8QlBA==
X-Received: by 2002:ac8:5dd1:0:b0:4e8:9140:f3c8 with SMTP id d75a77b69052e-4e89d3442b0mr300586381cf.53.1761220755223;
        Thu, 23 Oct 2025 04:59:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4aded3bsm699017e87.8.2025.10.23.04.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:59:14 -0700 (PDT)
Date: Thu, 23 Oct 2025 14:59:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 03/12] drm/msm/dpu: Compatible with Kaanapali interrupt
 register
Message-ID: <nfekr4vi34ftxzyyf5xv4tsb5cr3tokiyfkerypqjf26dos3uq@42wcn6ji7nnb>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-4-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023075401.1148-4-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: HLvQ2bcUg5N1dKAHD_PspPpxxsx47MAW
X-Proofpoint-GUID: HLvQ2bcUg5N1dKAHD_PspPpxxsx47MAW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE2NCBTYWx0ZWRfXxBXSg+PjZBQ+
 ltbtIItNyL9W4HuHPAFy+eBStGWLuKA7EvzWKaCK2zRown0Z9vxAY2q0z9f0CnYS+g+KT6fbKIT
 FAEUNbtDSgA1gHUkFrnVH4J12jbboF7b1DHKRvRv72qp37FJoJNOAxC4VdHRbuawist2mud8zbp
 sDY9HfQ33+Q2TjVG5IX3F3hH1ueDvDsZvrJDC1Mf5T51U2akhZLiwVeI3Tnmm8zo4K6SNcus9AQ
 uCACPgh/BG/W4P3XFnzrWhXty/cHBOMAZvYS5V8KXrPrRnIrgwuqubDfOQ5DgZd+pWR5a+ip7U3
 vCGjOlcso4cU47AJbR36yYP42jAhlO55gwCEQbJUNl5yLjBfcpWoGOyp4pS0lxtiY6fW1Q6gq7s
 9w907W38/RqOKfxxkuh3WnG6RiSPMA==
X-Authority-Analysis: v=2.4 cv=UOTQ3Sfy c=1 sm=1 tr=0 ts=68fa1894 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=lgH9jh0Qp7VjnHBaTbUA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220164

On Thu, Oct 23, 2025 at 03:53:52PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> DPU version 13 introduces changes to the interrupt register
> layout. Update the driver to support these modifications for
> proper interrupt handling.

So... Previous patch enabled support for the platform and it has been
using wrong registers for interrupts? I think that's broken.

> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c | 89 ++++++++++++++++++-
>  1 file changed, 88 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> index 49bd77a755aa..8d265581f6ec 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> @@ -40,6 +40,15 @@
>  #define MDP_INTF_REV_7xxx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x004)
>  #define MDP_INTF_REV_7xxx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x008)
>  
> +#define MDP_INTF_REV_13xx_OFF(intf)			(0x18D000 + 0x1000 * (intf))

Lowercase hex

> +#define MDP_INTF_REV_13xx_INTR_EN(intf)			(MDP_INTF_REV_13xx_OFF(intf) + 0x1c0)
> +#define MDP_INTF_REV_13xx_INTR_STATUS(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c4)
> +#define MDP_INTF_REV_13xx_INTR_CLEAR(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c8)
> +#define MDP_INTF_REV_13xx_TEAR_OFF(intf)		(0x18D800 + 0x1000 * (intf))
> +#define MDP_INTF_REV_13xx_INTR_TEAR_EN(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x000)
> +#define MDP_INTF_REV_13xx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x004)
> +#define MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x008)
> +
>  /**
>   * struct dpu_intr_reg - array of DPU register sets
>   * @clr_off:	offset to CLEAR reg

-- 
With best wishes
Dmitry

