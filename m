Return-Path: <devicetree+bounces-248815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C82CD5EB8
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:05:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D379304DA32
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 260081DB551;
	Mon, 22 Dec 2025 12:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a1IawWYV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CD8Uvjow"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D047FBA2
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 12:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766404988; cv=none; b=VBRz3yCzcPvYlfgKZ3h+uerbgeRWe3M9DaPrpKFx13PbiU2uiLmrogRDDAS/MHaEABv4k7PeYec2q9JuFdNbMV3VLFvh56J12USJ2Ve5FA1Yj6N6TUYNZzdIKfKfAejlFZ8E6Vqx8uviGU0QA/1cFL/8g6n9bIpEBfKt70uMOWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766404988; c=relaxed/simple;
	bh=EEiXRPFzsVPrhbOGSrty83xBpp6CMxPT3aJ96lTIK0M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eRjUYOBWQOwl+QMrY93ZPcgLJv3ATQ2xnqHsZrP4Bfb+KslFqEEfiFfo2V1dv9wF+YHHXLuu8IVn8AcwlLHU+koF9qV7UumI41HabELQzGzWlsz7fLJDVprpRvGfNDI6Q/OaSXbBRpPucMtH9nj+pfchAe11QQF+tHrKVWk7J1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a1IawWYV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CD8Uvjow; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8E7pT090094
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 12:03:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=p2gg/ryxBBsJ2sBbFd283vDJ
	AmmXdp+K9EbHpIl1scQ=; b=a1IawWYVWby0G3PXzSFItLN/rCj0LdDnJLUKwePZ
	kuatO0+PWocscOcqAijMRUdEU3RWA3uEFATsAiN0jx69AYFmPoC4IKQHXBsNTYLQ
	AzRPyBDiyCEF8Q0VZVckwg3G6AEmgZBX0aIUN8r4gcNW6HSKX7d8TKqVn6UqDz34
	1swS36pZ+K0NcBczp9soYOhSmy07gom13FFLROTNytzDAoMhHvcOPHmvJqnNqC7c
	/6bnBGQD0Mkq3G/JVHhY8GsMjR0aqaK4JNt+BNOnoOiNV108ZrROkZPH1aAR9Lez
	K93HF6zYgf9Eg8KPgqqBWFCsEaD7C86X4cYC/iJPQDo+xQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mracw31-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 12:03:05 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c43f8ef9bso4524622a91.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 04:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766404984; x=1767009784; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=p2gg/ryxBBsJ2sBbFd283vDJAmmXdp+K9EbHpIl1scQ=;
        b=CD8UvjowGISmG1LqyYET+0XLAW0MDgKGupwPz0Di10f6Q6FSvGgcdjaOaKpH8dOsgA
         uicT1C7IlvRaL88lFsRPm0fEB1T0cK5zs4UzlGk7NydFQe+is4hSzpzAasfahHQ9/u+3
         hQdheEHX+6mozhkathlZFohogFC4FL4ON0+xKnfF5+Sidgtt4ipIUMOiIBpStNJVHXk6
         K8X3hmBrzhK62YKiRavf66qc7xAgAnFkgCD9BGB8mOHDQmYB3N3LX6eqJDNUL1aiPsGC
         a8syI9H8OQgbCjKoaYBr+GLTk1hhN8RzG2tLVcDCfb5xRsl+m83BnbkHUkbB4R/F3HKi
         FQUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766404984; x=1767009784;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p2gg/ryxBBsJ2sBbFd283vDJAmmXdp+K9EbHpIl1scQ=;
        b=UeTXu+YOJxuiv/D9HI/WROj0d2aGsrpEyMHpzJfza8VyyMRg55Zw58iCx6OYEWij7S
         0XTW9apXl/EpoZRXcTpVUiS+KNMElb/nCJ4sRRpAya+7JyyWbXwxjcDRiQ/DhK7EUCk3
         oH8l3WPqv00smfltEF68Wpk+96Vm/E9oBhh+MFP9k803+C6Gi40Ggt/fveMYopdMZ+5h
         qRRx1Ad1Yue8ym6ccwGXIOUWRfhvmK+bsTo15XXOZw32k8RtmEcQW1uiuJxpPUj5p3j2
         sTw/pPtWaYvKIfe12drBWW8tMXmkuyuCdUE/9l7PxZknFgFSWs+X9S0xc6Ud78h7/ct6
         yMfg==
X-Forwarded-Encrypted: i=1; AJvYcCUIFpDHjEb+qmssbqusJe1C3WzQEBw/pKHop6XniM1gOqzrw59Oif3tB4fIhMoInOiFjAya7NLr/uh3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5UUdse+u219TRydFZS5kmqhLFUmskjWKYdPGgmxf/wT0j/2si
	jGmUHbLAN2LurH8YujpW6+A5+Dl6zW5JhEPIVidfqXD8EkMntkULYy42/sLEdm0NWDDRA9z47PU
	KRDEbIMJSn2GcS1322AWDPCJaV1rbfP9rduIDzrDp0IvNF1p/+iTDbpGCuJLOu9Q+pSzWZxyMGF
	hcglbZ16zU4UjPyigHjycev2NMncXY3czncFJMLXg=
X-Gm-Gg: AY/fxX5lLI4KUUDD8oymoPYV04kikv7wTZzcDa1AgpVoksA1q5raFcS0LNRLGfqaiip
	GsLB9IDZdwTQFn1E92gszMipAmsj4tPoszgDhHJTvlG0AziwO7NDB23rz7jKNJfjq8BmXQBYEZ8
	urlWFtJN1VuKQBnBjzSaaWhrFYoWsEpdfhNHWPIj0hsLVmpR5+YF8QsvPak/eulmFcGskaRoD20
	empldGO
X-Received: by 2002:a17:90b:4c4a:b0:343:3898:e7c9 with SMTP id 98e67ed59e1d1-34e71d6901cmr12908837a91.2.1766404983985;
        Mon, 22 Dec 2025 04:03:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUCY5ziK+Yi6Z2VGIwSN1Md/1ZaAhYLCl4h0bRtjPtwJr89S+ORuVEAoEdJaNMJqVGAHBOi1aGU5whF+6LzXc=
X-Received: by 2002:a17:90b:4c4a:b0:343:3898:e7c9 with SMTP id
 98e67ed59e1d1-34e71d6901cmr12908770a91.2.1766404983257; Mon, 22 Dec 2025
 04:03:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
In-Reply-To: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 14:02:52 +0200
X-Gm-Features: AQt7F2qayOLXWOsVKODIpcNdatE0N7FpfRdRn0Mn_n6HFQmRjmFa3GkTXG1ipgY
Message-ID: <CAO9ioeVXqVJ=d1xArUJOfz89o0UTVMcUZknMpHSZ-k4RCTZK3Q@mail.gmail.com>
Subject: Re: [PATCH v4 00/11] drm/msm: Add support for Kaanapali
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-ORIG-GUID: kdAHwoPtc4iMOTam-o4oSrHQqQj89VU0
X-Proofpoint-GUID: kdAHwoPtc4iMOTam-o4oSrHQqQj89VU0
X-Authority-Analysis: v=2.4 cv=e9wLiKp/ c=1 sm=1 tr=0 ts=69493379 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=qC_FGOx9AAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=5hTnvsBZC3hnunZ897kA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDEwOSBTYWx0ZWRfX270+ube/JGWX
 DVsFuCaqdEk9Nrja0kYo3nyeERMZIgnkbUB7YniekmqWM0wSOanlumq0j2pq6N/N6g0mPwuRFEB
 KMSyDVR7u84wvxCXFhQ2PSEv8NYM11AiFuqi2ymWMpLBNSdyzs/HB/pJ+u/RJmqimeoamE1Y93k
 zr8TbmQqVDGLPiiAiQqNmOivFQ1Wf0EP+GeaG+afUuLom6ohvZeMx3kdebyUwwgjZkHA4JfARUi
 IPx4aSeaEF6wodZu/u6C4mBuydoKpNIlkbVbc8htgkxD2wecdVojTmuGar3tOOiAovkPzdUMbeS
 SoN/fmoYn42shWNLcjsZqVAkg8vKfQZCl2A0jY7OCUDP0dOCnj/fif9I0qcOKiw5d8GAOxU+kBJ
 M/WF7wi1gqqEE5TMoi2dVgMN/txG4PZGpQtb/Q7PLmoPQSETjmmUsPB1q5RaZc797f3xWieaweX
 GGYO4DrwNYmqpjeP9RA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 clxscore=1015 phishscore=0
 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220109

On Mon, 22 Dec 2025 at 12:24, yuanjie yang
<yuanjie.yang@oss.qualcomm.com> wrote:
>
> From: Yuanjie Yang <yuanjiey@qti.qualcomm.com>
>
> The Kaanapali MDSS has some differences compared to the SM8750 MDSS:
> - DSI PHY/DSI base address have some changes.
> - DPU 13.0:
>   - SSPP layout has a great change.
>   - interrupt INTF layout has some changes.
>
> This patchset contains DSI PHY, DSI Controller, DPU & MDSS bindings
> in addition to the driver changes.
>
> We have already tested the display functionality using the Kaanapali-mtp
> device on the Kaanapali branch of kernel-qcom repository.
> Test command: "modetest -r -v"
> kernel-qcom repository: https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/tree/kaanapali
>
> [PATCH v4 05/11] drm/msm/mdss: Add support for Kaanapali
> compile depend on qcom-soc tree patch: https://lore.kernel.org/lkml/20250930-kaana-gpu-support-v1-1-73530b0700ed@oss.qualcomm.com/
>
> Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
> Changes in v4:
> - fix qcom,kaanapali-mdss.yaml compile error
> - reorganize SSPP patch order
> - fix Dmitry ohter comment

Which 'comment'? Please be specific in the changelog.

> - rebase on top of msm-next
> - Link to v3: https://lore.kernel.org/all/20251215083854.577-1-yuanjie.yang@oss.qualcomm.com/
>
> Changes in v3:
> - split SSPP refactor patch
> - add devicetree email list
> - fix Dmitry comment
> - rebase on top of msm-next
> - Link to v2: https://lore.kernel.org/all/20251125064758.7207-1-yuanjie.yang@oss.qualcomm.com/
>
> Changes in v2:
> - Drop panel patch
> - adjust patch order (bindings then drivers)
> - add dpu_hw_ssppv13.c to complete kaanapali SSPP function
> - fix bindings example dts compile error
> - fix other comment
> - rebase on top of msm-next
> - Link to v1: https://lore.kernel.org/all/20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com/
>
> ---
> Yuanjie Yang (11):
>   dt-bindings: display/msm: qcom,kaanapali-dpu: Add Kaanapali
>   dt-bindings: display/msm: dsi-phy-7nm: Add Kaanapali DSI PHY
>   dt-bindings: display/msm: dsi-controller-main: Add Kaanapali
>   dt-bindings: display/msm: qcom,kaanapali-mdss: Add Kaanapali
>   drm/msm/mdss: Add support for Kaanapali
>   drm/msm/dsi/phy: Add support for Kaanapali
>   drm/msm/dsi: Add support for Kaanapali
>   drm/msm/dpu: Add interrupt registers for DPU 13.0.0
>   drm/msm/dpu: Refactor SSPP to compatible DPU 13.0.0
>   drm/msm/dpu: Add Kaanapali SSPP sub-block support
>   drm/msm/dpu: Add support for Kaanapali DPU
>
>  .../display/msm/dsi-controller-main.yaml      |   2 +
>  .../bindings/display/msm/dsi-phy-7nm.yaml     |   1 +
>  .../display/msm/qcom,kaanapali-mdss.yaml      | 297 +++++++++++
>  .../bindings/display/msm/qcom,sm8650-dpu.yaml |   1 +
>  drivers/gpu/drm/msm/Makefile                  |   1 +
>  .../disp/dpu1/catalog/dpu_13_0_kaanapali.h    | 492 ++++++++++++++++++
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    |  41 ++
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  15 +
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c |  89 +++-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   | 123 +++--
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |  56 ++
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c   | 321 ++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c     |  17 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   1 +
>  drivers/gpu/drm/msm/dsi/dsi_cfg.c             |  13 +
>  drivers/gpu/drm/msm/dsi/dsi_cfg.h             |   1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c         |   2 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h         |   1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c     |  23 +
>  drivers/gpu/drm/msm/msm_mdss.c                |  10 +-
>  22 files changed, 1474 insertions(+), 54 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
>  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_13_0_kaanapali.h
>  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c
>
>
> base-commit: 06aa394d58c11406569bcbd4a69b81290edf3f63
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

