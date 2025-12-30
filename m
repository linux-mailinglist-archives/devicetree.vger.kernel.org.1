Return-Path: <devicetree+bounces-250616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 374A7CEA713
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3974330124D4
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33F6632B995;
	Tue, 30 Dec 2025 18:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HkHkLzC1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cNMBSq3M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E4923F417
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767118294; cv=none; b=TZJDYfOC80nxYLEglsx3Z2dqyX/BXPS0pWd3H0wN/a4kZcZHkUrkp9Uxm42IfpjIpO/YYeePM0atE5v80tnfNvxCC7nYntkZYaA1n0UwuwgNXlKKxVjo7j6TeQvViCQDzQvlczdsTPMtVkFPozotaIehljPqUTMHpDDPpRjOdv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767118294; c=relaxed/simple;
	bh=Cv5guEXVq+82s39i1EbZMN7FVWgKFJ51j8sAZvvyK0I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=de8AWEO8hqTUuxAjnKI00754/3yI8iq/cwhQ5IbjrKy1enssMuPNauz9Ta4/hqgn14G43B8c3NBXpxFSzATL8Y/UJSY8WSRuEybd7IBbyayZFfzyJk7vZ7LUQAWMuY73w9wICqwxst4CrcLFa9WTcqz5YI3L4PnODHPKDUXdFzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HkHkLzC1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cNMBSq3M; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUA1fkD2058360
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:11:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ej/ApFqNdphEtfmeqgYyj1S3
	vcF2Qmw7AIsFCVJzhFg=; b=HkHkLzC10QI4itLspMEQZnpvg+AqSGlDJTfqv/Px
	k4J2WrllXCdoWSR57JgYLxhowAD1LMBm+arBEAa2f1bP9ROEHz+aVPx3krEa7wgy
	adU2eOHuJnuaGDUG81InInuirG63l/BZyfGSSw77o6Aq9B+jK2Q0WEtiqTmw3BEf
	f83aB8Gd1encwxOsiq2o0Fto1IVuqtC0Oddte3uU7ZHBnJE+lF7JOcfg9zV97B0i
	M3I6fOSk/XnHsMJFWXrXbvDtJh1AfaXjXzMkodehAG2TO7qCNtdf7gF9D8xFl7z4
	zmo5YmL6FaeF/RZlQzt1Ru6C2hCruXyzzmMgIUzP9o0GVw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0sgtkqc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:11:31 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5e81d6c2ff5so8377634137.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 10:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767118291; x=1767723091; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ej/ApFqNdphEtfmeqgYyj1S3vcF2Qmw7AIsFCVJzhFg=;
        b=cNMBSq3Mum50U5U6KumI9gy36fSveG/KVmqaYbZX79npkUr600w4kVU4JCUb2Bmon+
         BBQWm5zuqIroZjR9O+i5b8j30tomAIzzwM3BNIMQpFwY3zI8PQqiGAhWQ7OAeKUsS0P6
         zfOazCVTZdEEbSC+zVQaZq5TkMuaperCDmpeqalg0XSIvdd38JtZB/NPnp2VvuvdMey0
         uTis44WxfPXfliFJZT6RgjLXGX0qFfYlsW1KPD8g9M3zwQovV1Qr1nE4ml7u0MdgKLCv
         JSiZZJmL16q1opkjuP0R7WW/0wOTzpLbNbFI5BS/Ay9cRSXw/Lp+vNxh0/AGMD/TM3UL
         41aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767118291; x=1767723091;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ej/ApFqNdphEtfmeqgYyj1S3vcF2Qmw7AIsFCVJzhFg=;
        b=ijw1BY54JvCm30pBGEHzPHA5SUzwZQQslFwwQhDeeChRysB2vdg8y+QrLBSO9yCMYS
         afJjNdwJ76n/BvI2tp6Uh2uI37A4A/UnMu/PvCqGBEpEyAgIMPV2+oBqdLSkMnEmsAQQ
         1ZS/4EhNIsHS2fzdBqgwgbPaTYwLJe2N/QhcTyjUZD9CDx+TtPJfSY5EhppujC03oNxT
         S+xgyKM9liufrkd9gOI4E6EEybPFxQJyBTe/HhNzfkpIfJZyLEtUC66m/+virvjXynHx
         iwKMgtBhV7/JpNFN8DTRbHlnWjc55tFZs3QY1Njg6bMLoXnJW3dw5tCSTpSEfkpuqaZ1
         aXig==
X-Forwarded-Encrypted: i=1; AJvYcCUIqiCRV+7NYzC4LxNnrD5694ucP582jwTIrg+BMGZJaOl4XjuEWszegmpesr59tITi4qnuFdILzLre@vger.kernel.org
X-Gm-Message-State: AOJu0YxknZOpfh9qctXhrKYzvDa8qW/vW0uaw3b4WKCblQhU+gh1awly
	gX8QA9mOWP2Rt8Tms768ox7CqEB1nzg8te4yow0D06VE23otw7CfODKHEQ1OO5OU2R89r97IiI0
	rwEgAkJ/gQINGDhQiptnZZw+FfySTkYyL/0Q8emYO/TFrNEVq+KiMN+T4CBrEj2r8
X-Gm-Gg: AY/fxX5uUvSUEAdQlWFcLeaUvXCwCXmblbKHhLP/hBMHB/6b3/rw87g06wxSTJpQfhb
	g7cPperm6ROZ+IZTUIHSNO5M0AX0agd/9fhz9GP2ipKOmJYa8AaEi+b33NQfT9qxRK7ZxPBqovP
	M/MWtb6kX8/KMk6uVxDzzUmdhyLqReTXF+NzMxHlJPRbKYrEwnBY2GbyfDFOO4VC2Eb2YRvrltc
	lRyJV5d0n1IQ7WG1AzDzJJw8SzmZ9Hw8WTa9sRBCKcljGegNfbrGuvXshgh6ezhm86CFcUl35is
	sszyykA7LnPLhdV+LnfNY6U4LZ9WAsLRKH288li6qL/Z1Mt6a96orYGBlY+2mZYzfB8+mDbDht0
	EQFzq96BqLOqGn9YjDjNMo14FeuJocwpVpDGypzyDVoDpkPmgWLvYW8YMRnxTC87JM8/xHuS0Hl
	B4ZR41BKYJ7hvP+GTPW5mYunQ=
X-Received: by 2002:a05:6102:26d6:b0:5df:bcf7:3d97 with SMTP id ada2fe7eead31-5eb1a67daeamr9566720137.12.1767118290861;
        Tue, 30 Dec 2025 10:11:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEvQiOanAfcwfTRv9Sgpjgsp3BBWdBuvnkFbbf/gTfSGQBT5Y1WMqoxr7PBGV1JmHipp/wckg==
X-Received: by 2002:a05:6102:26d6:b0:5df:bcf7:3d97 with SMTP id ada2fe7eead31-5eb1a67daeamr9566712137.12.1767118290349;
        Tue, 30 Dec 2025 10:11:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812267a438sm96506141fa.41.2025.12.30.10.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:11:28 -0800 (PST)
Date: Tue, 30 Dec 2025 20:11:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH RFT 3/3] arm64: dts: qcom: sm6115: Add CX_MEM/DBGC GPU
 regions
Message-ID: <g4tduho4sdxmuugfwbz5ovh7yr36hfwlvuq5xzebgvesxpj2my@3vedhofnrexr>
References: <20251229-topic-6115_2290_gpu_dbgc-v1-0-4a24d196389c@oss.qualcomm.com>
 <20251229-topic-6115_2290_gpu_dbgc-v1-3-4a24d196389c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251229-topic-6115_2290_gpu_dbgc-v1-3-4a24d196389c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE2MyBTYWx0ZWRfX0eB+IdXPiZNX
 ov17DaqTDNROg0lk579SGNlt1JT8cpkKBZhlgFQ2vXX6/FL8xrTuqM+bh6bp6tLCsUVaipQVpCT
 Z1FbtiJkYinLrh8/KQDWz8Zw/fG/vQymMmF7HjcHEhG52yngVQR+bMwljv0dkpBo3BTjZsi7FCB
 +XbuQjGo83I9XgM+egIgf9HW9TElkGU3/GgQFm5tdEilJRJny8AK016cD3PjqXrBWWF9elTSwhO
 Psl3ky9ASWQZDRCeqIyceITkBBfYtWgRbzTFMAXXWriz0wyTApW6xwSrGuhCz3yz0XeB/7YbgYM
 jLkCQA/oeYTVb9Wj+WQ9/8Mgt0oVYIBB3/cG0S8Qvx2O4ww/Sy9Sdp4QWkMtRbPo5ZraGoJtQzN
 ov55EzpZwHzvms0I+My2f6SQyZ31pp14rpJSp9pR7weqzCRew8jaoS+Jf6Mj6vCEdjHPBROi6t6
 xlhZW51m5nOcOreN3Zg==
X-Proofpoint-GUID: YVRwf3TXc09G-_lPSc8U8BKNAIURX8Rz
X-Proofpoint-ORIG-GUID: YVRwf3TXc09G-_lPSc8U8BKNAIURX8Rz
X-Authority-Analysis: v=2.4 cv=foHRpV4f c=1 sm=1 tr=0 ts=695415d3 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=kF9o915wj9thlku2Yt8A:9 a=CjuIK1q_8ugA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_02,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300163

On Mon, Dec 29, 2025 at 09:47:41PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Describe the GPU register regions, with the former existing but not
> being used much if at all on this silicon, and the latter containing
> various debugging levers generally related to dumping the state of
> the IP upon a crash.
> 
> Fixes: 11750af256f8 ("arm64: dts: qcom: sm6115: Add GPU nodes")
> Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Closes: https://lore.kernel.org/linux-arm-msm/8a64f70b-8034-45e7-86a3-0015cf357132@oss.qualcomm.com/T/#m404f1425c36b61467760f058b696b8910340a063
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

