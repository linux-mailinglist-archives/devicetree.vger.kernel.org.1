Return-Path: <devicetree+bounces-226024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D125BD2FF8
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:35:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EE8614E89BC
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADD30262FCB;
	Mon, 13 Oct 2025 12:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TXcT0qSB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE121487E9
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760358896; cv=none; b=PahQocgSs4qjXqKl4hKFqL+ZOPf21+1Noy5Cz+TzslctPF7aAQfEYTITdEaf1PDUXcxKChn8k0pDn9mO7lX9rts42Ex5s9/RpiYxjf5I1WPO0tS5m51ST1WVsR3A8qljQObsg2N+3D4buElX9Sx29ADxcRYE+Uf39aA2w/aJGG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760358896; c=relaxed/simple;
	bh=ajB9cgC6bRzVciNEiJ5Rlu8UcrAcaygnA0NUSrk7i8M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VlCGWOBL03M7nxZef8xiyNrdxSKLYule/QIih8joSA0JOzeYWpMIAF1Dv4UPtcNUNvmnetlOtnqGBMrRe07cPgia/ajnWCgopFiguhBoFa6sn4TLPDcRHA5mdpfIQp8fd5pm6H/3tRbaLy61Wj6JkfCMAffCr9SPhEgHQcOp0bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TXcT0qSB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAnMgc021349
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:34:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gObp1VGk4sT3wo0aNUTQnaxb
	hlPxOaJ9VK/6dcghZLQ=; b=TXcT0qSBuY5yfp/PNTnIrw7XNb+s9/QYCReqou30
	gtIGh5w1O98le1QLr/UGIlqf0FRAMWKyhoiDDhQq/h5jYDxRoxHhe6PFGxmTGO4+
	iKvu+DfCH4bBE45FfhsCs0Kr6YXrVVfvxA52xvansO5wQ7lI0sOFFKbBRHrR6CF0
	h8H2/uLaBv/6+Iq89Xp4/B79JK/GTDI0ThFUGtYMDBywKpLJu8svaMWw/lmLFzZu
	R+K8n4dJuanKaKDQH7sH9oCVV5sXmIT25qvxdKQhxYsCoq+ieJP5tDS+KCFNMaG+
	OCfDv0LxPObPXHhVyDS8uCiV5xNtoVyaJw4sHJ0TQhqPDw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgh64ens-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:34:54 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8635d475556so1090910385a.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:34:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760358893; x=1760963693;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gObp1VGk4sT3wo0aNUTQnaxbhlPxOaJ9VK/6dcghZLQ=;
        b=vQRJyREp/NSgf8QQJRgldIve/ab7Ll899sHi3VZEeoWEznK8sH7NHSTW4nki9Dp6bX
         gfPEopru64dO56ld/vB72/Jfc+aRMg/bHomJCexAAL8orQoGpY+T4YKLAdhdVYHETy8N
         j+vDf4FsJ9+3j6sMBMfwLt7EtXopTEwxntgJ+rsP/AmLKhEiPg6RIaPnMWanUlkf1sHf
         OOlFK4hzJbWuw7Fo01GYmklVY7cZ8rK2IS1lYm/ci/DJEhRy1icUgytjo9PwISTJE21W
         mxfzLuOX4NuPw0WYQmBxk48IIUMxF1FbIBxqKZ3eGF3PAoZemHbgkkA1gsEmZvaaivmc
         R5og==
X-Forwarded-Encrypted: i=1; AJvYcCW6+6YrM26kbG/OmkmTpCe5hrGqCOKzJsFE61PA0zEeMsTk+iQtdiFTf8zxWcoDq2rPBL3okhjA65nQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb1DmwJabbwTK4f50dLj4Xgm3p6LCwid0afX+48olHHnaqWxjY
	ARDytNtyTVBMgXh8C9jS2CvRfM7CUQmtbWjEm/DaFOscSAcnVnSGTqLZOdE/U/3Yzkm0I/GYKLc
	xYArmSqhOGtITLy5nQuiiZNUX3VZdmiphBr3wKB9aVeHBemCI9S6MJBffnVt1rAoL
X-Gm-Gg: ASbGncvJr4Fw/a7zcmIu1poRUCAQomNBnWeTa0+78wPM+cBM5iAaPR3tROyiI0WhOxc
	+858/xAHp8e1ggszPuAzPX+vRDbLDpqCGSR2WLhVfUmrGxdSfJkyLN6UTeD3ArwqPBIRHuHYg/J
	EWooEPJZEcVek/RSe/q4UMNkHy0jS3PCcaExFax0Qw1E+33E4lvkN9S8UnuLFBztVZodZWX9jhL
	7E6Es3+dVqs6zC8CZcBE47xQ1ZGaInPxk3wDwg5xDbLi6lW5Xm1X/l0t3WNKHIi6UpoFE4Y5Xyh
	2HIO2YNdBlO6dqoEOsgGsJqrlfQrV7HqoqTbYReaKXmzuhYvfAyE8YMyu4TLTZ6Kyy0txAE+MPl
	KyeIaZEM9r9wjXRLJSKc2Z2rIpyRBABv9jahEj2YImZAk/4kYXRz2
X-Received: by 2002:ac8:5885:0:b0:4b7:9581:a211 with SMTP id d75a77b69052e-4e6eace7e6cmr280427951cf.24.1760358893358;
        Mon, 13 Oct 2025 05:34:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5+lAIUbag3KQ/uyAYMUw2tzUdGLO9/5D5HdSvdyoQpY7sOU2YLiAsMhiWrQQX23CCsWeehA==
X-Received: by 2002:ac8:5885:0:b0:4b7:9581:a211 with SMTP id d75a77b69052e-4e6eace7e6cmr280427561cf.24.1760358892867;
        Mon, 13 Oct 2025 05:34:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563b53sm4075703e87.84.2025.10.13.05.34.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:34:52 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:34:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add edp ref clk for
 sa8775p
Message-ID: <aifibm7pjva3rkb4gkzyxun46sraxyeh7jh6vgcirv5tsbf6ad@7f5bbs4ix7sa>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <20251013104806.6599-2-quic_riteshk@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013104806.6599-2-quic_riteshk@quicinc.com>
X-Authority-Analysis: v=2.4 cv=H/zWAuYi c=1 sm=1 tr=0 ts=68ecf1ee cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=yLsOkrEfH68IAt7CJG4A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNiBTYWx0ZWRfX6WEggBWlPxm9
 LKAxNODoruoilQ3rCQ3W8O2n5iTZK3HDrpEMm5h9wKDPxHUZY/Xa9asEl4X/THzpITUdUh8/tAU
 +GBk5qTyvZAxudZzt+vKu8/Je1J4FXmqU1qZgByBFu4j4Rdl4Jypj3XATLSwGKeiMjJDg0o9ZbO
 D5r82ZEtHXD9W375c2v+CWxvglIu3vDrKqI/Tekg7k7hdFH92B24fW3KFN7IVJP8OJz5dtqMPDD
 8HeCwDe1mOq2PU+yCOx0eJuk7HS+FMm+5wvZocami4pwysgC+lMwp7R+JZAj+EYX2pMbLp7ZiPd
 X/5Ky7BqfmOKYTZ1RbB954UowUN2fiRzOX5sc3mlcFP7uPYs7RRHS/VfgvRdc9AWbl6rERG+E/6
 nl3SOEEsfYAuusg+Tmb+MdUcw/DSqw==
X-Proofpoint-ORIG-GUID: gZcBJwoxQwB2u-ls_mzMv7OA_NQaGW_H
X-Proofpoint-GUID: gZcBJwoxQwB2u-ls_mzMv7OA_NQaGW_H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110026

On Mon, Oct 13, 2025 at 04:18:04PM +0530, Ritesh Kumar wrote:
> Add edp reference clock for sa8775p edp phy.
> 
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index bfc4d75f50ff..b0e4015596de 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -73,6 +73,7 @@ allOf:
>          compatible:
>            enum:
>              - qcom,x1e80100-dp-phy
> +            - qcom,sa8775p-edp-phy

Usually such lists are sorted.

>      then:
>        properties:
>          clocks:
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

