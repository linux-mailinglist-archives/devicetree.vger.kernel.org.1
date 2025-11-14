Return-Path: <devicetree+bounces-238723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 650B4C5D97D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:30:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E09D43AAC92
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 227C2326D70;
	Fri, 14 Nov 2025 14:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lLlLy3pa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DNPbV/aV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FF0325493
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763130404; cv=none; b=ZI4t/OVis42rkuv28X64kl8R5pt33MwMtnqCpDwlMk98e/hyfsVSXC84lr21RwEKOtOoc+g0pUgf4zJYakYz7QY9GOQaqFYS+eVPa3oqHz6iFMUN/y/6anp0UnQ/1C8OmehoxtRXIUevPNccpQIHDGrK/YL2/BChcDSO4+LYhC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763130404; c=relaxed/simple;
	bh=+bJwZR6lr2Vy4fAx7gtqQUTh/oL+svCD5T0NSxHqQmI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UXiCYvyRlxI+z4D37O3ETuqYOMcp6omzPaPdbAtKMLns6lUHeMnpnOn8NRYE+/3XqJNjdWXvUdw673iGHzDow/iYZts95llNdjmkJW4h5mQOywsM6C1TAfO51lSJVNc1m/ZR/XWqKTCvhsCq9TmIBNpmR1GOAUrtIk7IjkejZSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lLlLy3pa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DNPbV/aV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE83Hdh1582950
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N7lLyrVazxmxh0VMg9OnWGdTYdsEX1P3McdO903iSkk=; b=lLlLy3pa/0oPh88T
	N4IRDkueP0JPSpzFc9me6FoeuFZlhcIsd+18Wd+dx7kGs1cqozEehv3ikffFNdSv
	/PCa4oOZ0xoaXBo2+ICEqkuj1sXA1yto43G011Q8HBWEO9xUk65KdIiHxCtMpKAS
	2crrO7u9VAG1jF+WjIZpFfSQCDoSnLTU4w1ugHux7ifSOuaC74j75VCNXkw2GPqb
	+vrOdEPg1LcLDf8QAjgDkMCqEZovY4jZmltuvYhHN7oB8hRPLe2PaAUN0IkEVD9z
	DgO6lqyKjfxIen7Hmb5zpLkR5hGMebKZWWCvUXiKpqpLU9U5e+iD1PklZRL/u+Z3
	VPy4hw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9ftex9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:41 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edb7c81e0fso57056131cf.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:26:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763130401; x=1763735201; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N7lLyrVazxmxh0VMg9OnWGdTYdsEX1P3McdO903iSkk=;
        b=DNPbV/aVpe5Z/VCEZsupHH7GBM39cI5qagjvQC0U1daq6zwJKYkm+O3YSrg7UNNrKO
         bMT5TpO2ML2V3iOutoDDALufVmbQA76JZT215iJCzSatc7iOlF+95xO1y0whaSS8g0Vu
         dGnOGCLyu6FiSzUMApEpy1CeyLoYoOTw8HyQZ1Gnx6NI5EqltQpELPLbXAnLKTsBwEGs
         +z1VLAc4j9+p8HhmL+1zVNoKElYFgpfhdXnzzHxN0UxcQ4ZWwfiu8gPv9lRWQCNLv1hu
         EUGoOT1Xfm8JiWnv7c3B2GHr7G5b9XTRhJTYypvg2umcFItX+Tw9KbjP6bpAo/1q8Oqf
         Tqmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763130401; x=1763735201;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N7lLyrVazxmxh0VMg9OnWGdTYdsEX1P3McdO903iSkk=;
        b=JWLOW0bOu+Ywh4YRRHLdfqy4ZSuI0TDf4BORif//dKRo727qcpM+Cwgaqcwoj2JZD9
         RHO0MlJsFq4z6KQu/EAoVb4pug7uvhduzKK75ekblHE+hhOg0t36M714glk5oSCyfH2g
         +NTSl7ZqBkXCZlY0VivgL0Vl7xJYWKxkrFt7s+/m9YPqbreI2jmqtblBDqLl0b54v/jf
         PvAX3pIpPsaM53yfEpfgbaPD6Fx2ESoVaoUB+zqaDKlCbb69P4AboPAb78z+P9Bblp8z
         KQ1F6pkCCxbXXFYx8DBVZr92rGPo7WOC8N1HyDLpNi9UqPMOJSCYhngXVCF8rp+gkxke
         BQzg==
X-Forwarded-Encrypted: i=1; AJvYcCWGLjmT2rvSHVdO+8GSAGkHfK7gbfO/TM54fseI1uh5ONHgDkwBLjtaoftNPscow/chIeIKTVCnePl7@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ7KiRpvYlpmPazcW1xrqCJ5WNk+YOjI5TlVVemQ7iq69NJ6WQ
	Xicx4TbAwEZh5zFwii4SrOeHv95XhneWRJErUJaIYEQYRq9H3bTjkBiBwL7qNSekl4EUGKv7HvT
	3cjoJivkWDhfzgUC2fKwtdx6lOxtjpH8BKmrE16fvTEkoKSO2mG8t3FICsw8Snexc
X-Gm-Gg: ASbGnctzIknQIjeZfZ3+eIeHPRqfg3zoh6DyzioPeZOKhDMTNTC/GjOUmr+Jpi5YXHg
	+nblk4FoRyX+mjNHBBxdGU3+LT49K/wXM7bQE/z/MiRa9LEGad32RcAtxYgcvc+WA6mWu8QwFWF
	MSOJ8Sg4Q+wX8wY7CLiUB7wA+tSa3nc9KzA18UTgXGUkB7PK0R5QGEbRd53Nz1VXGImGLBxNumZ
	xInseww/vzK4bbZHxxn/EzV8Vh4SHmBGUWYeOl+He7Uh5mkIvwyFBakyfi3jNJGNnh2y8uTKwZA
	O8rUlXfIC+A8miA2bt7TV0u4kwfRR5qxBEaKvx6bfd6wdLVb+Lb9VMkvNqOl4uklSAdGLJuSM8i
	ameUbMWqZeyQtk2HWKm1iuuskd2FtEhPYbc2OoX3X9l2X+b4v9PBSD+h+Uu1/z12UlRcWPWJEBP
	z5szD6uYzRhfB6
X-Received: by 2002:a05:622a:199c:b0:4ec:efdd:938e with SMTP id d75a77b69052e-4edf20480fcmr52130441cf.11.1763130400726;
        Fri, 14 Nov 2025 06:26:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbcH9zzsrqHSq4+dSl0dRGmoS3/QGOx/7GRhtG2RrVtk+FqMmOeboWeMMmkXnDPOqFtSlstQ==
X-Received: by 2002:a05:622a:199c:b0:4ec:efdd:938e with SMTP id d75a77b69052e-4edf20480fcmr52129901cf.11.1763130400126;
        Fri, 14 Nov 2025 06:26:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9cee0cabsm10318821fa.40.2025.11.14.06.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:26:39 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: display/msm: Reference DAI schema for DAI properties
Date: Fri, 14 Nov 2025 16:26:31 +0200
Message-ID: <176312947285.1737000.12844638893324731858.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251021111050.28554-3-krzysztof.kozlowski@linaro.org>
References: <20251021111050.28554-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SdD6t/Ru c=1 sm=1 tr=0 ts=69173c21 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=76GXk1XwVRG-H1p1aUoA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: wL2V3218mh06526AxGIKKt2RLhjnBRyc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDExNiBTYWx0ZWRfXzCAaLxGTYVnP
 8Yu79ZH4EuiVk2xsuuKcXwFPWmMkffAA4ycit7jSC2dvfRe3Z3ATBZjyrkkvqCJtVngbrdLf6D1
 JZaRnB2UA/guXPqOCOa35aUPBockoNe9zQvTQoSp77IWmA11zDxsnm2McZbw3tT5Xtyu5Cs/j9j
 SIaWlDSIZ9bwBy+e23u/Jzgoy9oit2YFXfeVcZ+MH4PbcsC+HgR8pNO8jgKgacdokILZhxgIGjh
 uLayXCSQBzaVqWrNzZXRQMIdH5e0rLkXa2+PvF2WHTEM/4k9GbvcD3uFFBTn8BIsWR2Su+CsKPU
 jMML9+3WtQTekI/9sf42DubJsZca+9nBCSH1n1+iJxZ0H1z+CeTuQMk6Cf9T8b+Y79441St8lH9
 1Os+Fzrt+n3wXTi4DShI+ZWWwIE/4g==
X-Proofpoint-ORIG-GUID: wL2V3218mh06526AxGIKKt2RLhjnBRyc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140116

On Tue, 21 Oct 2025 13:10:51 +0200, Krzysztof Kozlowski wrote:
> DisplayPort nodes are DAIs (Digital Audio Interfaces): they have already
> 'sound-dai-cells'.  Reference the common DAI schema to bring common
> properties for them, which allows also customizing DAI name prefix.
> 
> 

Applied to msm-next, thanks!

[1/2] dt-bindings: display/msm: Reference DAI schema for DAI properties
      https://gitlab.freedesktop.org/lumag/msm/-/commit/a4b9c1acf401
[2/2] arm64: dts: qcom: x1e78100-t14s: Add audio playback over DisplayPort
      (no commit info)

Best regards,
-- 
With best wishes
Dmitry



