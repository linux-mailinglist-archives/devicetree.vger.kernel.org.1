Return-Path: <devicetree+bounces-248975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7724ECD7F71
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 04:24:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 026CC3029C4B
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 03:24:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04FE12D12F3;
	Tue, 23 Dec 2025 03:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EWQXOyJK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fq+ejSRU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653DE2C181
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766460261; cv=none; b=EY5qXWzTel537i5GozkSytn1sLuBQTyIoHTuUkNHb6hFWQoxVY+Fd9Te/VLkoAW/GY33aGmWFUALE7QXuZfcKYoFvFBG5K0yhUNNm5OaGPxg1TzNwfsLVoRmbOeOyTrXH9skQAdVUwlCxngxvES5yPBPBc89umdxJKJmWHR9NcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766460261; c=relaxed/simple;
	bh=IeL+eTH35YGm5sSXFKi4sLCwfXf8ypNoth5fdlvl0OM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W0Dc7tMkL/QDbfaYlxoXsHdZsuD2Fg/tTr2hShHElDw+QLPl2b84ou2ykPqlgQwflB5MLIDKhycHlsItl5+JbOBr6kHtcDDemoIAeHh2qVXm+qyBdjCLjZ5EiXYsAyZ5/Sb8dGv/mzohMngMb9+mpmz4jxHM9ZuTsYc2uC4PKpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EWQXOyJK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fq+ejSRU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMJuqD51631206
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:24:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uzcjLJXc2097V0w9Cw9cP1j+
	FnVN5njS+BUALgshRFw=; b=EWQXOyJKyJLKA3nSByDu2f6FBVBpNRduaHvWDXnX
	dsxzjTxIIGa+mQwrFtw4KyWyFFXVsyVfxYA2pEAWIcCG7IJbDTPBORbrXGhkPf8X
	hRr1xYqxbNi594tkjhR/Bvox9qF8TpsJ35xnVrF2GdCD1g7kTM0GwZPh1k7mbdU4
	jA/ZImrzf1T8UEWZxHrF7rSKWSMeGablIn6j030gHJ47IgvGMTzrMpoihZ9MkA9D
	RNofz/HLuqbLP1TEkEVjScO+CBnb8TehyiA9dt4EQYNjVASXqvieCfrxM7RRFbE4
	DoIni263VeJwrFD6dNYWDFSeWsJ/GdxLkYbwXi+nbjsajA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7ck8h41h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:24:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b9fa6f808cso1314287785a.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 19:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766460257; x=1767065057; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uzcjLJXc2097V0w9Cw9cP1j+FnVN5njS+BUALgshRFw=;
        b=Fq+ejSRUHZYXqXN9skM5YDnhPWtr3iDbFiU3rkkueEnUQEqbiRygfAs414firImqVo
         kTMck9X2YoR7BcRT+iKrwUnmBnFRBWjGUI9CWzYvkKVQaZqLvkQSiYwZmG/jIOSLHhzb
         1u7Bb21RmeAB9E/YA539jH+UyiVXPWrjGfZw3ZL6dGBnWiy9mgPbbrJoTGB9Q5ZhLFtC
         Rq4S8vwh7C/Yz11gVqe28H28ASLs7rH5sRzskVLLTixBHQAnJ7hJhBQG3FaWUy9ftSDI
         I2Kh3iqqPbRlc+9JFr4t5u7COAMFx2q8JfXY4k77RfeUOPwutwRn10J67vC/fhxNSfky
         LgCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766460257; x=1767065057;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uzcjLJXc2097V0w9Cw9cP1j+FnVN5njS+BUALgshRFw=;
        b=qOwLg07HxeYc2ArwbuFeHqX0oKs0RhLqnGUkNbIcsWCugIniXK50SdO07HnaKU/1Og
         uFIf7lHo1QthgfEuBoVxrEOd0Jn/2pbASMwG31a/nAbBeRG+InbhybXTPlC1h2BrDzA0
         FqsAGqKg6bYyxZySEe0dbbxSbycPWhjOYC/sujn0WdGYAVqcLDlZH1k9RP2pA9gPS//R
         82D90aH38zHRRR0XFmuV6d6VskMZmxqC57EhPKhYnCGuJAi5NBbiGC4uBUTJc+TJxc+p
         VM4eGwdU2GRSwurYgiLuOcLCWIgn/7/EwlhCkxKe/qRcXTt/8GI0OsaB4bMzNb3tgTCd
         59kQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUjapVo4GxozBitpDY9sjCOiNZ5RDw1ZRRWtFUsIgQec6vJQk0+xuvnaAS404YLUwdMcbKvCTv3lbh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3KhZn2ucouK29LA4uP4Swagp9apSkJHJGOjYa0Ja5mLscttZt
	aK57iudZF73qHptxqaCrV2Cl/4eClovIYwzEv29RhndKGfcHQkGO4WNWPUZtDA/t9KGZt5KtRc/
	qRPlsZdOe5VATkVb5rejPoo2Q9Vo0LDRbnXSnZ2/FJ7lrhl/hPAKd4yfmOvisSm2E
X-Gm-Gg: AY/fxX6Rt+xUGlOhi8qBI7/ocwmXMNELnTYYS21oxkr3PtaT/KSMgVE8sFmq4pSlNvO
	auzdoqprElnomUUBWJEAPbBnoCkZakELW5bYkU46rHfeBzO5Qw75nGwpVPkpdNne8NCJOURFoUT
	hGB/CxLBNhf0WcgWO4bkzP+WO/6/2PJpViC+KTmqP2d7KNPG/xnvfO3SdsP5GPLzuxgY9RL0Lzl
	pn3lG75z+ggwAR2NgUlRQH2D+tfMtNUqnkYdtWGr7ujx3XAj66JqS/hgoffvDZGP0PgT3wkngl0
	FN5NetRC+xe/tb0VT/noB7oqkzdW6syu5089vmqoVCpXBwe+J3/3q5TaWhfLYDXkRBoxb+zM2r6
	EmrQMcwjJU3FmU3T0BWDmsh8paC4Kew+7XjjyCbYEkoGneZcO3o741si4HiofYsdF8QQ3IUM=
X-Received: by 2002:a05:620a:1994:b0:86e:ff4e:d55e with SMTP id af79cd13be357-8c08fbeede2mr1932867585a.39.1766460257513;
        Mon, 22 Dec 2025 19:24:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/40QROaFLK1fYdvlaAHuTUed6JCbRW9u2WF6S4Bjewg4/g/lNx6JVpUfjFC154rXkAZ7GkQ==
X-Received: by 2002:a05:620a:1994:b0:86e:ff4e:d55e with SMTP id af79cd13be357-8c08fbeede2mr1932865185a.39.1766460257054;
        Mon, 22 Dec 2025 19:24:17 -0800 (PST)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0968933d3sm972273685a.22.2025.12.22.19.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 19:24:16 -0800 (PST)
Date: Tue, 23 Dec 2025 11:24:05 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Subject: Re: [PATCH v4 00/11] drm/msm: Add support for Kaanapali
Message-ID: <aUoLVVDaEvx7jMwM@yuanjiey.ap.qualcomm.com>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
 <CAO9ioeVXqVJ=d1xArUJOfz89o0UTVMcUZknMpHSZ-k4RCTZK3Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAO9ioeVXqVJ=d1xArUJOfz89o0UTVMcUZknMpHSZ-k4RCTZK3Q@mail.gmail.com>
X-Proofpoint-ORIG-GUID: FsPrHvtWSnBkZY5W1WNYPytjG_mn5OqX
X-Proofpoint-GUID: FsPrHvtWSnBkZY5W1WNYPytjG_mn5OqX
X-Authority-Analysis: v=2.4 cv=asi/yCZV c=1 sm=1 tr=0 ts=694a0b62 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=qC_FGOx9AAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=JB2G29MalyZ09vBlPV8A:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDAyNiBTYWx0ZWRfXzX0vqGxKqx2O
 jd9U7gd4iI+qSKUyVItYzQlKylUOrqVwKCBCsZd1lI5KkcEMRY1r10ILuiRokCWE3XaY/tbCZtm
 mGYZ9uUqyNgD67Zq59BgovdohXwWC3NiXxDWytmghZoDSBxB9fX9kRDJTWmo1ktq+a8K6Ah+/AC
 9DpQhkJgTBCg1jHT/EPSz7GAQ3tVvauePehO3TtewthTuH6uaB6SEx3O9o6EzMKl9iQJ+OzXI5A
 jVZpYbrdbiF1JNzQKxaErG1/tcwhroW2zi290JglRcMA0lPLg3PrxE2thNRVcObkkmupo46BciD
 123d6wFblX7xvAup50bhhtMN1vZBni3Wn+7p6y8NWEdzhIRyU/QHXgrlKopAmUUyTg0B1oioAgE
 RhlNJB0aRNnwTt1CWuAkh2chN8WmypnK+NO3rGbRXV0QhYxl4zjZuu/h609sROJtfV4Ru029xtl
 +FkB9ZT+tNHTOaRP71A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230026

On Mon, Dec 22, 2025 at 02:02:52PM +0200, Dmitry Baryshkov wrote:
> On Mon, 22 Dec 2025 at 12:24, yuanjie yang
> <yuanjie.yang@oss.qualcomm.com> wrote:
> >
> > From: Yuanjie Yang <yuanjiey@qti.qualcomm.com>
> >
> > The Kaanapali MDSS has some differences compared to the SM8750 MDSS:
> > - DSI PHY/DSI base address have some changes.
> > - DPU 13.0:
> >   - SSPP layout has a great change.
> >   - interrupt INTF layout has some changes.
> >
> > This patchset contains DSI PHY, DSI Controller, DPU & MDSS bindings
> > in addition to the driver changes.
> >
> > We have already tested the display functionality using the Kaanapali-mtp
> > device on the Kaanapali branch of kernel-qcom repository.
> > Test command: "modetest -r -v"
> > kernel-qcom repository: https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/tree/kaanapali
> >
> > [PATCH v4 05/11] drm/msm/mdss: Add support for Kaanapali
> > compile depend on qcom-soc tree patch: https://lore.kernel.org/lkml/20250930-kaana-gpu-support-v1-1-73530b0700ed@oss.qualcomm.com/
> >
> > Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> > Changes in v4:
> > - fix qcom,kaanapali-mdss.yaml compile error
> > - reorganize SSPP patch order
> > - fix Dmitry ohter comment
> 
> Which 'comment'? Please be specific in the changelog.
fix SSPP space issue.
fix MDSS UBWC issue.
fix commit msg kaanapali -> Kaanapali.
clean refactor SSPP patch and SSPP V13 patch.

will be careful later.

Thanks,
Yuanjie

> > - rebase on top of msm-next
> > - Link to v3: https://lore.kernel.org/all/20251215083854.577-1-yuanjie.yang@oss.qualcomm.com/
> >
> > Changes in v3:
> > - split SSPP refactor patch
> > - add devicetree email list
> > - fix Dmitry comment
> > - rebase on top of msm-next
> > - Link to v2: https://lore.kernel.org/all/20251125064758.7207-1-yuanjie.yang@oss.qualcomm.com/
> >
> > Changes in v2:
> > - Drop panel patch
> > - adjust patch order (bindings then drivers)
> > - add dpu_hw_ssppv13.c to complete kaanapali SSPP function
> > - fix bindings example dts compile error
> > - fix other comment
> > - rebase on top of msm-next
> > - Link to v1: https://lore.kernel.org/all/20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com/
> >
> > ---
> > Yuanjie Yang (11):
> >   dt-bindings: display/msm: qcom,kaanapali-dpu: Add Kaanapali
> >   dt-bindings: display/msm: dsi-phy-7nm: Add Kaanapali DSI PHY
> >   dt-bindings: display/msm: dsi-controller-main: Add Kaanapali
> >   dt-bindings: display/msm: qcom,kaanapali-mdss: Add Kaanapali
> >   drm/msm/mdss: Add support for Kaanapali
> >   drm/msm/dsi/phy: Add support for Kaanapali
> >   drm/msm/dsi: Add support for Kaanapali
> >   drm/msm/dpu: Add interrupt registers for DPU 13.0.0
> >   drm/msm/dpu: Refactor SSPP to compatible DPU 13.0.0
> >   drm/msm/dpu: Add Kaanapali SSPP sub-block support
> >   drm/msm/dpu: Add support for Kaanapali DPU
> >
> >  .../display/msm/dsi-controller-main.yaml      |   2 +
> >  .../bindings/display/msm/dsi-phy-7nm.yaml     |   1 +
> >  .../display/msm/qcom,kaanapali-mdss.yaml      | 297 +++++++++++
> >  .../bindings/display/msm/qcom,sm8650-dpu.yaml |   1 +
> >  drivers/gpu/drm/msm/Makefile                  |   1 +
> >  .../disp/dpu1/catalog/dpu_13_0_kaanapali.h    | 492 ++++++++++++++++++
> >  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    |  41 ++
> >  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  15 +
> >  .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c |  89 +++-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   | 123 +++--
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |  56 ++
> >  .../gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c   | 321 ++++++++++++
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 +
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c     |  17 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   1 +
> >  drivers/gpu/drm/msm/dsi/dsi_cfg.c             |  13 +
> >  drivers/gpu/drm/msm/dsi/dsi_cfg.h             |   1 +
> >  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c         |   2 +
> >  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h         |   1 +
> >  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c     |  23 +
> >  drivers/gpu/drm/msm/msm_mdss.c                |  10 +-
> >  22 files changed, 1474 insertions(+), 54 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
> >  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_13_0_kaanapali.h
> >  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c
> >
> >
> > base-commit: 06aa394d58c11406569bcbd4a69b81290edf3f63
> > --
> > 2.34.1
> >
> 
> 
> -- 
> With best wishes
> Dmitry

