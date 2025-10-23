Return-Path: <devicetree+bounces-230250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7FFC00E40
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:50:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC56A3A367B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:46:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08E3230E0EA;
	Thu, 23 Oct 2025 11:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AG/7kiHs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9313230DEDF
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761219977; cv=none; b=kdczd/h9Wi4329fPsveW6GLvB5mv3q9E9RLRF877YwOFYzL0FvMYok2qr2mbCqnbnvKH+Tc7O5OncMdn/Zi5Ka0jonrSwLwKHQhAHVIbi52S2SuBLpa+uDVuiWqw141MSrt8tcL9I5TTdG1zsdzPyJLe0n8MpWf3u9vmZ5ufAsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761219977; c=relaxed/simple;
	bh=wktu7qOGetTfmxCdZDCA++hXkuBC8rTbnXyIqghi7Y0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JkYYMwUrnVR0UXTjHFXzenamaR0Xdi9vqkQKfZG3LL0Vybb0IMHj/f+iJtuzj9enK9SKduCpWBhp2UC2MsgE0Rp8kdomqvUHhRZiI4OFQiNDle1IAFWf0Gqvis4WUG+ZDrICie7LZT6lqDBcrhr5YmtsQGoN/nn49jfDLWX1S08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AG/7kiHs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N8DM4C021106
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:46:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MxuIotyBL55oBcMXr+JxN4AV
	8Gzau+khOnLw0uMLwiE=; b=AG/7kiHs7N6pOQg3k2714gtxaacwe+b11V+Qxw0I
	Gu3nGXyQXnnl2wcGdF4vMjXMe/9qh3BGYvdzCS0MsPOsKxCTt/wzX9Rq1tl2xrbU
	73PCUnFsHIskxPhes8UiAHznc8EZcKfCyUud6Wvtk9iD71ex9VJMS/PMvMgfMZMh
	nHr3826/BOjI8mxOxiIhGQJZKLIdayhTdzbGifxonGp2Ot/2dcR6VAqaQ5CPKyKx
	7OOdihE1qqqXk2t2Rtmgx0354pQ2uieNY437lT1DP0qdHgHr12jP8xDC1IfgsH+9
	fRlKxhSQ6lyIuk8OotssUFYlf49PYcTYFgoQbXxDp03SwA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y67qj70y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:46:15 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e88947a773so33865871cf.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:46:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761219974; x=1761824774;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MxuIotyBL55oBcMXr+JxN4AV8Gzau+khOnLw0uMLwiE=;
        b=SjAoqSBRLO9bxbrcQ0ROFVdIwJTM/+VVBP8mfZHKVNvuirErVjUVCnTlQs6yH6EB37
         A+IDTFec6tP9+DtfgqoYIkuAYraKAaIqnlduoIptOATFe6X3yZB5soi6HtVJ2sDTYJbo
         ViooRK/8gB8MGzV3ws5wmGZw2e6psK/HOIz8fikX7sAzAto8QCP26NcLPkWLvzn3mJmL
         6iE5LvdLQL6q2OtKA6ac6hglMQi1higiV/YXdjJ98EveBDbJJZ1+Fwg7RUpwgDKEArXt
         GzPpVgLpFIyAVIy4c2Dxu+2+sNWo7p0nioLtM9r5bjSf0UhocnZf6MDMPiiQTnw8fzab
         kMTw==
X-Forwarded-Encrypted: i=1; AJvYcCWi0IEn/3KDIYWjgoj91yYQQV0dIgKMDHCPOgOYpwALv1swWt2mxJ5RcX7uX0USZMaHJCyZFTotAYDE@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4hTO6O+B9Q66sdUZkXLEalntFhIxhB1akEqN8/PDyh5iOphtU
	IYK7JarA1wKhtwxARa8QiS5mhgs+v+tbmimLG+r8zV5MSUx1CrAEhhjldCjbPizoiax4SNOkcG0
	p7Ya17Lu3juXvz+1Ww2H1P/ANVMS4Aqp+KsOQ+LFACfOwz4Ktw6aCA48+1i0QlU/J
X-Gm-Gg: ASbGnct9SsV484xdYR44pm9E82cq+PwdAAozVhJ303WB/RBg5sraum80gqw9n20bSdl
	WNKK5cUZnuWCJPHx1Tr7ZDVBgN5jKvJGg5laPJgBbgGAmpXhYOwGs8QnI4nGnDIrmtaUcMsXRHi
	0rz8ycpCLOqfNDxk/LgRyRvnaWwpdsFNLdgVZsIxbDPvaZmChbwOrcVVxlucZldOjJJdhfkC3LU
	CHL6Jz2TApXigahpBFBIkpwOs7Y+sQW4I0V+jla2IBf650446dE+U9V8SoPbDR1WtP3Z0bk58eO
	0HkqUgwzNTvkXcXsO4FFlwkel2KHXUD37XbJnGLgesdOlOz/Y+8K0xjGNvBLYCXRql8icHIQ+6D
	opRuK23AxpZplhEibZ27nzdFSQw+F+MGqEQ6zhSpUqHLUkCF7AiNDEluPNYGfsxXiMyVsqpZmtg
	wYoHyZdpTuiYNX
X-Received: by 2002:a05:622a:1a21:b0:4e8:ac66:ee44 with SMTP id d75a77b69052e-4e8ac66f4a4mr250238141cf.39.1761219974203;
        Thu, 23 Oct 2025 04:46:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8+pCnO8ZvR8ffZYHTiXBpe8PitkiTaa+bMCiZZSPHl7XKSC3gu/++FOyxZx7Quca27fB8MQ==
X-Received: by 2002:a05:622a:1a21:b0:4e8:ac66:ee44 with SMTP id d75a77b69052e-4e8ac66f4a4mr250237771cf.39.1761219973768;
        Thu, 23 Oct 2025 04:46:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4d39b96sm656447e87.110.2025.10.23.04.46.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:46:12 -0700 (PDT)
Date: Thu, 23 Oct 2025 14:46:10 +0300
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
Subject: Re: [PATCH 00/12] drm/msm: Add support for Kaanapali
Message-ID: <r6kjuxajnimaqazeimzc5gscv2qxudjzkyooxumzakjzojibbl@2jiw6duxfbtz>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE2OCBTYWx0ZWRfX7MgLff6+ay+T
 t+cRhkN5ItajqNJX6CDRmqKfYpWDLHm9xV6G6dfjcMC6s400ozAzsZwcvvwAlzj7JxdMjr5mSYy
 +cza5uw/yILDfzmhCBrjB1IG6w2YlyWE45zIh7qBatCsECeCrl/4HbFOTKrHsQIvieX0iiSUt5h
 CWx/lUGW9EKncaMIF4vru4w0GgNNSUoCai0APvampSu1d9YCH6Qp5tmXHzTVTWkWndVAfMHeKT7
 C/1t8LLuQ3I+4UrU7rL9ZsRng7DFW6qCMONDG5Jn0iPuv8ai2Maml7jq3Oac01xFqpatmzOKOWa
 3fOrZrL0I5MKZEvNKen39M2l99PD6cFU2Va+wabUrBECmW7oGwh93JbFa+QZbfBOxijtPhIa4Iy
 e0dDwKUYi9QLXLrI9yClQzP80K/NnA==
X-Authority-Analysis: v=2.4 cv=LMRrgZW9 c=1 sm=1 tr=0 ts=68fa1587 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=qC_FGOx9AAAA:8 a=EUspDBNiAAAA:8
 a=PFSzt4Q9d-Ge22CFuaAA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-GUID: qigvYWe7XAa-lvC1bWzF5PoqxItLFmdY
X-Proofpoint-ORIG-GUID: qigvYWe7XAa-lvC1bWzF5PoqxItLFmdY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220168

On Thu, Oct 23, 2025 at 03:53:49PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
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
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
> Yuanjie Yang (12):
>   drm/msm/dsi/phy: Add support for Kaanapali
>   drm/msm/dpu: Add support for Kaanapali DPU
>   drm/msm/dpu: Compatible with Kaanapali interrupt register
>   drm/msm/mdss: Add support for Kaanapali
>   drm/msm/dsi: Add support for Kaanapali
>   drm/msm/dpu: Add Kaanapali SSPP sub-block support
>   drm/panel: Set sufficient voltage for panel nt37801
>   arm64: defconfig: Enable NT37801 DSI panel driver
>   dt-bindings: display/msm: qcom,kaanapali-dpu: Add Kaanapali
>   dt-bindings: display/msm: dsi-phy-7nm: Add Kaanapali DSi PHY
>   dt-bindings: display/msm: dsi-controller-main: Add Kaanapali
>   dt-bindings: display/msm: qcom,kaanapali-mdss: Add Kaanapali

The order is wrong:

- bindings
- driver changes
- DT changes


-- 
With best wishes
Dmitry

