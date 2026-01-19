Return-Path: <devicetree+bounces-256871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A36D3A906
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:36:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9B84630012C7
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BE5035B13C;
	Mon, 19 Jan 2026 12:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XHpOwIqJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Pleo2q5s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1D53254BA
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768826168; cv=none; b=CE6YLs3UQe/vembBKpsSoWtzAkUBPL8CknNP0rF7JMDrRNjFqBTONUyoH8vwNOw0neT7Nk2S4KHPcf/ksaGeeiIVo9vnicqv/HBshKz5t/VTDPPqluQi6x7f4/SuI6LeYjb/9vG8C3mwczSuzQCZio7zx31R6WBtPqVHadQOFO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768826168; c=relaxed/simple;
	bh=c3zQBO7Apbksh9W3mTDEFpCY4StxtVQjdG8EbuFGlyk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MG7VnGcNGUEPGPcPpeEacwZ06nUeZWa95qO6X64i/wDbVIJsZehF19zWdvPUn61/U17xs8gGLU/fjEQnuAi3vc1KbY6DdWd6rJMz5cK7L5celJQ04OtyIEUQTb3/6bRmEnGj3Tn7ljsTTtZnNXQxIJvwBUrmCR1UU3F+176ffTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XHpOwIqJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Pleo2q5s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J9mgVg2963081
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:36:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VhQ9FwvnxIg0wpGZTU5qCD1v
	PmdBF3EPcDNMD3vgPxE=; b=XHpOwIqJheGqAm8NOKeKY8j4xkPE1BM5IXdioLf0
	MSKjqINKvpnr6LpJdFp7tZiuKUxEql3d74kreqYj5+KnaguYTjaVjf5v+5sFD39W
	anKH707SQ36fs28Lfozac6BrA8gNbPdqOA/pcuJ9mtTa4Ss+pCq+NFquBUl6rO15
	1jEMIa/u1FMZFw95VgTSSG+1kxTHL+y64qSfOAZjve1x0o8W2m/lGlSP41hMZ7RV
	N0XYi2UjmwEUIZlCahSxBOPc+7E3NEC5ADCcWC+abcsyeNVyAV2c+wu1pjpZ2B3P
	03+DDKKSQlgp53fV9a7L01tn5qqg5HjTiLYnWDIuBqRn1w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjaa8fp5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:36:05 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c5329ed28bso1092097485a.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768826165; x=1769430965; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VhQ9FwvnxIg0wpGZTU5qCD1vPmdBF3EPcDNMD3vgPxE=;
        b=Pleo2q5sHqulZ2rOV+yHEy97jkK5CRpxOG6GnPwrVXrAhe05cj4olVJHXSDpmp4d0/
         KljqvrqL+merKAfGISanR2jtA/uoAXI6eSLtpG3MY9xJ53cAjcNdZpEmvbgBoyaiSJkv
         yGMvIQhWKPRLAW6TrGvkh5UMr9j10TQ5zP2dHdcVveE6BnaWfDlmvO6KDv0X/ooONpJY
         wL4UQo+K8HKtbLTD9+CyHh2ExcGggGGuJwUvdYw1oX9E2+KNrWaKsxaXe++5ASOpwNWd
         gRbmGGBzES/RNQRuNGyGDL+XZJ1U+ZkC6exqtGG6FZKSxYwSHvbRO1nxKJdHKlsdLcHV
         UORQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768826165; x=1769430965;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VhQ9FwvnxIg0wpGZTU5qCD1vPmdBF3EPcDNMD3vgPxE=;
        b=iDpNXVhWAvxUXT6h5hA7SB+f7VDhRzrjgkP4WP5jvAKxfpVE2GlKOR3sveab3PMuf6
         ct+Ofu2mRD0Y9oaCB3/dBUoSZnuhX71IebdshNMhdj2vd+s/At6PTNwYEpvU8wOzqwA7
         gXj2WBuAaUwfBZa+lxG6rsbX4OHGu3/RDMM5M429gaZchb73LWc49HmPQW9aNdSIR58y
         QCfkS117Ds2+GAaB5IE57w5VVVnUPRQM+a/PkIphknthNZIfbLW46DPnA+KXrHP9IrGZ
         rniSkU2OAaW2FMdfnxpf6nFc5EDJPgQPVQRo50Ep5OAZ6wgu+X2rBo9pVCUF98rZmTo5
         cdsg==
X-Forwarded-Encrypted: i=1; AJvYcCU3qH0HeKQ6nUbJET3ev7LbvCwI2/x+ffDF52wc311a3YZEswIIJhxGiLybbU2MgMUv0RuNvQL6V87q@vger.kernel.org
X-Gm-Message-State: AOJu0YyA9m0Aetm94AqqPNxdXJdKWFNPx3v29Rn2L2MJNlLRcPNiXucK
	Iiu0ahDYC6QpW1bVkdSjKrh0kJjXg1wobqK+LWv11hBgPXS/QFPEIbfzQof9CcDN6nq6A+Quz85
	L618rDv5z5bi5+zk+4f2+U6oc6OEMtSAFjEnXB+4bxmLiLqgzNSOXj/c1AxA18YmU
X-Gm-Gg: AY/fxX5MVqm3Zfv2tcTiAzbp1zuTJr6sPVT9JOCJVXsg39fvMoIW3vRVVqU9wPgfLhw
	unS2wIxdxVfNVFRyGfM7eJUkdzJFAl6epfIJnxPF/ZWO0VUv3TOSKn9OCZOzk7s9zqIM4TTCM8c
	G591gSaHMKlBh/SggWcT33p97OAbNxpBqfc2LRElxn3FSEAsQyrsLwF/nHU1p5/NTfA0aYU8/I5
	cm0ugiOGo4OUfN864cY5gZiqhLVVT9U/hzy4pTmy8vf4/mcM3nMKJl9qX5ILUMGFfuqHoWfgUsw
	OufQRCxfUXjE3NzK5W9VyrPbA4Cy6Kt+LKtyo+42yA1mwqaFHcg6NtNvCa0N4h1TbNMUJYFdHSH
	bay80bSniMyi7cSxuqk0yog42NFaMLSFzF6kNjN/WNxPqGC672NnguqJiR5oMvWTOxvYsXCTAhz
	VxX7Yq9j4Zsch7TfJWzTZAS9g=
X-Received: by 2002:a05:620a:1a94:b0:8b2:e1d7:ca6a with SMTP id af79cd13be357-8c6a6783edfmr1413787085a.75.1768826164972;
        Mon, 19 Jan 2026 04:36:04 -0800 (PST)
X-Received: by 2002:a05:620a:1a94:b0:8b2:e1d7:ca6a with SMTP id af79cd13be357-8c6a6783edfmr1413782085a.75.1768826164356;
        Mon, 19 Jan 2026 04:36:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf1fdc3bsm3281058e87.0.2026.01.19.04.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 04:36:03 -0800 (PST)
Date: Mon, 19 Jan 2026 14:36:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Subject: Re: [PATCH v6 00/12] drm/msm: Add support for Kaanapali
Message-ID: <433cwpqtfzo54ls3ivcahu4fntizgqrdqqi4xgjtbtv3lskpib@dwn7kyshvels>
References: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDEwNCBTYWx0ZWRfX7yuH/YxHhXol
 EV6PSkXboXuXSjFt1GQigxVfYYru2CI/qc4MopstIYzEjrRBarNo4HigmyQhuCvCvtRKRy5+se2
 /9SidXCGcF2O/cxa4JygAwEUoCOIlLdSxUXyMfDCUxBQWCjSh/EwNHOLV4ADxZOXvc+urV5wHdb
 Me+uJs1SIH5JY4ttq1EO20uKEnqq9vv9CqdPv8q2v1o0pVgcQq4VzLpUSBBBiNm1O9NYk421AMJ
 v/GPvXe/JzGTSEIw8lMaMJwjUguSseqPO30zsJaDHo5uzKqZdPcEk1pjhfhLnP2xSlCjXAdxIPk
 cNeP3PKoZTW8ZOs9RAztuOg+xnrIg6oyEd2N8O41uHsv2S7FKjEvwSDYCTl3qJve4IPIrs7DyzZ
 3oLkwh0FBONStX668juaT982wAamlmbr/tgOTwUhMSeNV7JBiQeZfTgSp2NX2D82XXuLDuBBLVd
 Fu1MIDKwfs1rpL/j1yg==
X-Proofpoint-ORIG-GUID: m8Za9nUcbT92lccUPpa3XzqE6IiLsZxe
X-Proofpoint-GUID: m8Za9nUcbT92lccUPpa3XzqE6IiLsZxe
X-Authority-Analysis: v=2.4 cv=L8gQguT8 c=1 sm=1 tr=0 ts=696e2536 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=qC_FGOx9AAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1Zs5HNVOiqO5ZMFY7eAA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 spamscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190104

On Thu, Jan 15, 2026 at 05:27:37PM +0800, yuanjie yang wrote:
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
> Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Please rebase on top of https://lore.kernel.org/dri-devel/20260119-msm-ubwc-fixes-v4-0-0987acc0427f@oss.qualcomm.com/

-- 
With best wishes
Dmitry

