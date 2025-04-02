Return-Path: <devicetree+bounces-162678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 925A0A795A7
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 21:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E2FC3B2557
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 19:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF101E3DC9;
	Wed,  2 Apr 2025 19:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jjwq2uGF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DD31D47AD
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 19:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743621025; cv=none; b=F2FSTvKV1ILEAucnr5B5EywDBAjClb5itIvar/T3SBYO3hzVMBRiAh/6ImvBtWj8iqvNWEEyqAVPabgm4e1bgQ3/GKkepyvm2HRE/V7ep24B49nZgArueXkiWJGF3rTk4/sIFe8quGCVVplgiCeDzCAGk8YrqCZaCt01ee8kHPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743621025; c=relaxed/simple;
	bh=1E9NIKB6kiWWxGO5LFe//013qn2YvkEVBA0RtrkzOrg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WMEVn7V1+o9PkLTe7pSrcaGivGK+xSA1Pv356VaAl/XMlgL5ZdFdNdrHNIkeCwsh0nYtEm6IhFdmfGztrgLvASlPYRL75vwSP+9BWOO92/5ZX2aZW2lIpLySO8uMbaZlcmGudMf+nQKmXXXZYNpnKQyNTBPuDuuGpaMeuAWae0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jjwq2uGF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 532DWU4K024674
	for <devicetree@vger.kernel.org>; Wed, 2 Apr 2025 19:10:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zmUYkVYqvGzbPDQXyu/mUYb4
	7LYlnrBBpOgNv+07v8s=; b=jjwq2uGFX3im1U8tRkkH0D97x1TydXUWEqQVwtV1
	gsnsIRkjMTvH5GSU/zjcOSj8lJnANasDKqM39G0Fk5O6q9ZHecUvrxmIucamsGAd
	VQ16CGgzkPhQqQiFwLgoz0Kn7y/yFuxsfjtH9bn8v/k7RwWYjhcbDXxwD/U/evWg
	gnXUIiVd1RRBKFvJ6DXy0v9LXW1QqMgG2C8LkEgkXzBI4ht/RJqUxAfgoOPxAqxF
	yCCHbSFKQwVxDr4TFfpu4wOpx3WdALaqob9X1wEHaWOlTxLM+TqBRu+I6GQTzJWR
	MtaZwnzWgnGhc82YXAO/IySu3uZwCdpDYzy7saATvcB/fw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45rbpywhx7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 19:10:22 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7bb849aa5fbso25311085a.0
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 12:10:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743621021; x=1744225821;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zmUYkVYqvGzbPDQXyu/mUYb47LYlnrBBpOgNv+07v8s=;
        b=xFl7JF84OY2ZebZZt/fi+jbn3LLc5ieqfhOTmVmDASFi54zAD2Mchg9gjS+N3eEnDM
         aFygPsnQdKitN1E+97ET4dR/WrnVy45zDLs1ff4QLNKY9n1SHWBAwFTUwqL4+aMkDeDG
         STOEstdfXoqAkwqCr4axh8e6d3cMG7Oa8hphAWOdeCfvqywGZNIQvUWega9373ASGRaD
         W4wxnt3fO2y/zJpkhRedUJNBelzchzdJAVsHFaZ7Gs7MVlbkO6DHPAuYHio7q+Y4r2xc
         +FBYlr/4eJI2PFd62EtyGVY1G2gdKTAPaw2hfQjs0lB+bL9cF9rHntXlMPmIa/VWA+9N
         vbrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYRPaTD1yw2N9OBhzXiNQ4RQNy6H3kbT+bL9vyCxGTxW20/9UWvhxw+3cEg9nY8SR8AEg02JqEoYqf@vger.kernel.org
X-Gm-Message-State: AOJu0YyQiUPuvyOp3wRKdGgy6Y6PFYRXNj40VoxOqkQpLidSU5L+d97d
	abqu+Gd6hziObG1vzjH+Il8rzo/JjqXMsE9dIXtJocp1fLZ2W6zkh+QOICD55RxZLJzsWmBCWdR
	TjaU3Lw+JBbfGfg8A33nXmqrG1rKHy6J6ZPX34e5+wnSKu7FiCMHts1lbMY18
X-Gm-Gg: ASbGnct7X67Y9i00XT6CPtB9D9aUModJRUTGQwaohDn5QwExNoCG/6qvfELovSfSKPh
	V6eUVJEraHdm3UAMW6AIKnpMlEiGhnDTWTjPjOQHyOCxtDlJia2rGjuhB+8t1tmGNSOVy3BOR6u
	XZzXayI5LF9W8Tq0E2c6IGQLkz0WwSqIvAHuMmj0COLia9OHISilQqd8XQ0zHCwAHZDu+uzJAmc
	ez6+q+ltK6tQc/hAyIx4ns4CGuQHgToE8gp8TiL6ASJ7SyGx3LMs37RsgUGSDqagJc/5MZIc1YQ
	ErQDFudEcuo1kOURlbmQf9Uj6BiYuEMSxGxl5I1AnzSiOsfJ2TewOlMGO1B6KiupkSUK4fVgNvd
	M+AU=
X-Received: by 2002:a05:620a:2685:b0:7c5:3b9d:61fa with SMTP id af79cd13be357-7c69072a6ffmr2450036285a.26.1743621021604;
        Wed, 02 Apr 2025 12:10:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEL12WrxSm3dTTl0ltF+TFscnVQIRQop3TdWFVMRKTPWUPSA00Q+ercIZwKI0JKi3FN2ZJRbA==
X-Received: by 2002:a05:620a:2685:b0:7c5:3b9d:61fa with SMTP id af79cd13be357-7c69072a6ffmr2450032285a.26.1743621021206;
        Wed, 02 Apr 2025 12:10:21 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b09591191sm1712994e87.193.2025.04.02.12.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 12:10:20 -0700 (PDT)
Date: Wed, 2 Apr 2025 22:10:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Christopher Obbard <christopher.obbard@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>,
        Rui Miguel Silva <rui.silva@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: x1e78100-t14s-oled: add edp
 panel
Message-ID: <a4wlwnhgxxzgarkbwtpwqsh42ksmp63xgqwewgatg43esc37zq@wc4bbkjvlpjn>
References: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org>
 <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-3-ff33f4d0020f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-3-ff33f4d0020f@linaro.org>
X-Proofpoint-GUID: Ho4SdT30tTmmEhB9LgIhhdE53dfAtgAC
X-Proofpoint-ORIG-GUID: Ho4SdT30tTmmEhB9LgIhhdE53dfAtgAC
X-Authority-Analysis: v=2.4 cv=ZNLXmW7b c=1 sm=1 tr=0 ts=67ed8b9e cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=bmQPT5UhyNeoAJmEc28A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_09,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 adultscore=0 mlxlogscore=711
 priorityscore=1501 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504020122

On Wed, Apr 02, 2025 at 03:36:34PM +0100, Christopher Obbard wrote:
> Add the Samsung ATNA40YK20 eDP panel to the device tree for the
> Snapdragon T14s OLED model.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

