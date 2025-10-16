Return-Path: <devicetree+bounces-227872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA603BE552A
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:08:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 856473BD807
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 20:08:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE4E2DC79A;
	Thu, 16 Oct 2025 20:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GRoQMH21"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9422DAFAA
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760645335; cv=none; b=utUUKsdJr3A6/Jezpz/CoOYNP+UJ96z54+mVzraCJYiZJMak48gUQdg6vRKZzkvcu3iYb7vzlfdO5w5w89V9XDPK3vvuOrBtd/fdDCSVw/pZlOTNKHptPzZvXi/axCp81borTEBDkA/ITY9Vfgo2DOR5BVtcoE89WUUWnbkn7qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760645335; c=relaxed/simple;
	bh=J+Zwp0E9tqCVCXtH1TLr3bcBFxCc5MDrmVDUvbChza8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cL9Lx94Hl7WojfRU5Aj7+ikXOjCMmTL2v7UbQ5JCVwKvNwj1yrfYYijANCcDtBeViQyO1qEcS3YOx7D2j/ayUY3DvpV6HMO4LnENErIlrZeWEI9LqqPaywv6Q4wfqmvDaPu2eKHm0yw1auANXvF61VjlF3NAZ9nSuJ5vx+w8XCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GRoQMH21; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GGm1qv005263
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:08:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XW25WTUPjM0HYbFzO4qQOv0a
	rYQaTxvpGuWa+PN/BYQ=; b=GRoQMH214l9ZktR6yEwxRJNDcIkLrBGBary+WEiB
	gk568wNkQnbNtkD+GEL1hRkPTWZ/2dm4uFYIutRag5FBldkDVnAWfyXdr2+zYpbr
	qx1FYrJ4jOq3ppXR/hcqkq+JfOaBuHUAjRUToTk4TAHCykw8Euz4m9BqNQLBh/tG
	/g5mHJuHsoxuQNOvChjTXEy+l54mJM6APFKcXFcIFrSTuiTrba9o4mvG+mIGXyuR
	LU0RrLb5OVeep+Z9OjfIyzsNzYaiNpJxTeb7ZsQFfDHKXvliCzJjZw5In9jH7VFU
	hQTKA2+A3pLHJkUm1BXyp/86N9+KDx5TaelhK3jit4MsSQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1anwtt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:08:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-827061b4ca9so332672985a.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:08:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760645331; x=1761250131;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XW25WTUPjM0HYbFzO4qQOv0arYQaTxvpGuWa+PN/BYQ=;
        b=qS4V31LaGSjFl5e4J4XqD7SuW5RVUpoVpoZm2tigEIU1U/hy0Zpt2cD0i7oxhLTELs
         dEkj9TA8PmOs5jnmyGROhhrXfbhMQmhSkrM6LCigW5IDvxRLrDFRkLLGAmdY5G1psxlJ
         2TaDLhT6SaA6SlXgOjkxVSDyYJV8av6KcCLAAx6o9xt9RBDtu6Bdpb1O74zY2LQQTaIp
         7SwNvKmI4S7Oc/MtvleQT5VhBEwq+SLW7+GDjZLLSrGXyDxO+YGKlEBRHSLAQOS6hNRS
         XDOdFSu9L9FJ726FkqwFfwVXaibeqDXcd61otYdfkt/ytDe8JLhRhHb/4Vq/MhcYb5/m
         Bqkw==
X-Forwarded-Encrypted: i=1; AJvYcCVhm4wHHaCZaord/fEXjlOPy2kYtWvZjitx7brC6dEG5ameYb2BAOHGXnGqD/iBOWFYGc/KxERaEaPH@vger.kernel.org
X-Gm-Message-State: AOJu0YzjpaBUgOx0yoyDisE7pbvV6thQ5MUUvOaAwyL6UWK0yo5n+5cq
	rhIRxLVmnMBvHuXGzK1fhNoc+6X4fWG9ONn/Pxw7d7AUst34QvwbJpSRUlk2sBQ0+fyUE+n0iha
	6/O6oKU9eAiTRJeHAw1bqQJATV9rF/MIXH4JPJHWqTz/C3z8ljIdNprBmKk0leZ0g
X-Gm-Gg: ASbGncsYvldQgn2T0vz8zlv5VDXsmulrh0UlsRltGnfr1qzs6jm+O4YMYugxoUxrJxO
	kjymoQCM6HO4K+TFvTyd68QDd7uaPICCxUNYDmyKnSZV4oyODldGuKAYJoRdT4w6abL67PHzM/N
	mIwmB/g7w1r8lSMbbjRpMVhM9NayJAIgTxg0DK5KICacclTseqCONxMKtF7Ggenu1GhybEh1MuU
	xV9sNdcsXRcHdHR0oDnkWNvU3+9sNNlpEL7+RnT2HPEh9caoxcS4bm4GwJ0kqICLnsKrzV9KMhA
	MYJ0gxoAdL6pgNA8/pYCc/PSwBGIKqeHrspWuxiG/OfDuerzszO7CCYgZe64EqaML8GaunabfEd
	aIy9KNk5EQYNVPnW2mq43/AGz/pCoeFkoeUucChnjhDYLwsn62ww2HYyZGD7mdBUx6HRl4s/cBP
	Ma9MufMm4lN8I=
X-Received: by 2002:ac8:5fc9:0:b0:4b4:8ee1:7d98 with SMTP id d75a77b69052e-4e89d21c3d6mr24692991cf.8.1760645331615;
        Thu, 16 Oct 2025 13:08:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELwSY0pYfGnC1kz4S53qSyk4kBH14qSenJ7X/Cza61k+EVAgrYsjLisx7xZsfpWVeiZg6fEg==
X-Received: by 2002:ac8:5fc9:0:b0:4b4:8ee1:7d98 with SMTP id d75a77b69052e-4e89d21c3d6mr24692431cf.8.1760645331106;
        Thu, 16 Oct 2025 13:08:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881fe5besm7293872e87.50.2025.10.16.13.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 13:08:50 -0700 (PDT)
Date: Thu, 16 Oct 2025 23:08:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH v3 2/8] arm64: dts: qcom: sdm845-oneplus: Describe panel
 vci and poc supplies
Message-ID: <62iuzoisxavlgadhz3gfrlwxqu6vl4gtlyrarjkmwihepjr4hf@nuzpsaj6jcg3>
References: <20251016-s6e3fc2x01-v3-0-ce0f3566b903@ixit.cz>
 <20251016-s6e3fc2x01-v3-2-ce0f3566b903@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251016-s6e3fc2x01-v3-2-ce0f3566b903@ixit.cz>
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68f150d4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=CJSKMeR5ttdQttduZpoA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 5fSS8VotsV6_OZZUAjkzKPvXeLBfdyXH
X-Proofpoint-ORIG-GUID: 5fSS8VotsV6_OZZUAjkzKPvXeLBfdyXH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfXxCk3UPm+Hv+w
 N/XUXwQA8O1GuBIQePh9BmtUsbEuf3sb5QKSnqRCyXBHhqO8c2Ah+gA8/Vn2bEMcloRHVInNlNa
 LIvh4aWKdRw96oZXz0XZpqJq6+RZhgipXkUpVhyOi+nnXPNOSurLfocWzYhQsfkRDdyhAB7N0zb
 KyYksP09I/pkqWlHS+3j1qVkBfCRrPcUU8J8LnbyinzVn12YROXVsfkfSAORJVv0pUgv13NIJz1
 vpaljkB/0n7sg/RrHz6kY1JGlRgs/wslOniPF+pPm+xAEirmyZuWWVQolstvhFilDTbstOzJcgL
 95ezKUAKYBoDRfkbF8dgmDeuA1z1hgxq5a5N3GT/yVS1t8nps/vUbrD+WcLZCyFs09kAq6FGBbq
 T64GddDGvfWaQuvMuip1aW3lYwQ9Aw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035

On Thu, Oct 16, 2025 at 06:16:57PM +0200, David Heidelberg via B4 Relay wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> There are two additional supplies used by the panel, both are GPIO
> controlled and are left enabled by the bootloader for continuous splash.
> 
> Previously these were (incorrectly) modelled as pinctrl. Describe them
> properly so that the panel can control them.
> 
> Fixes: 288ef8a42612 ("arm64: dts: sdm845: add oneplus6/6t devices")
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> Co-developed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 46 +++++++++++++++++++++-
>  1 file changed, 45 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

