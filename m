Return-Path: <devicetree+bounces-235007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CADC338E7
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 01:55:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 424FF4ED722
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 00:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D2523EAAE;
	Wed,  5 Nov 2025 00:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I7bZM9HY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K1jCIegw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428A523BD1D
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 00:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762304109; cv=none; b=M8Umdr44sSdwo4YX4eGm8h3J21F5Smd3ZTvP3oLFRkZrzZavubbriqb9n6C4tyVOWbJeF9ezKDEuais7hko85PwjZCnWb+QHDUKuhJiKJByzPY+Qn62YjSgVfDjhioux5VLHnZI0PtslYIHgXJS55byQU87txDYYe6nts6pTg6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762304109; c=relaxed/simple;
	bh=WMtxXg6HXmX8zM7j02YQAbCGdgTWB8jnjJp35wcDprg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CXnVudhYJp/8GXyd9FRtXeG09d3bhVM3coLyw+v4OaAf152tTTKI/eg+33rJTJHbcbVKDp0Q8tYm+glEYskyYD4eCDy12O5yDyAtnT6OP9RwVEYODKUREDeBLx7QvyyCnBRljKPglyyRFdM8hOs0Xv5wsaQgzBIttUxelclII1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I7bZM9HY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K1jCIegw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4KgE9M3086291
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 00:55:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/ADOlbA/MeXRPk9nFlkw4G84
	15r9Bnyhb0LknOuL9V0=; b=I7bZM9HY10F5/GmUHmO4M81orXypz+0HnoGDjVke
	xukl33suuLsKLPZVAhzwXstnM65gkGDZ4p/ZJOvdJZvb2UtX7fiyG1oTr93fqr/T
	/zfRT6jE0ZcvZ6uBiTa7Qc0S0HL2+wG5mxPHPHPResg6SNHhOBeFL+wqMaLiegf/
	YW5geElDoK7n1j16WtdjJK+kLIAZ8NmkRtsW42Xcc8xBmBCoLgKiHa8u3WGJ6iPi
	a9CeyLMAch9cWC/gP+deVxRE25TwEJuuyQkMbjHQLnSWoNtq1w73Ca1fiVoX+YV/
	tk72Sd0cwkiP2AGz7TTQAnaL3IWz38lt4QfdStI7ctXu2A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a79jjuhwd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 00:55:07 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-88f81cf8244so2543405185a.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 16:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762304106; x=1762908906; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/ADOlbA/MeXRPk9nFlkw4G8415r9Bnyhb0LknOuL9V0=;
        b=K1jCIegwThv11w7Mu4oEm7K0LQSHeValvLfD+tvPyqoD5WHPsGc5yqUXdTHW9dYWJc
         OBYgWnS3gP4OjeAOILbuWFZc4Mi51l2RLc9M451QSXvzllQqGVyy+4BaM2kWzSlliwfC
         ttokLO2uugMG6AInWAC57ioCs9LV3ozZqQmwXKJ74F49cde42lUMndfMZ20kR1QFS9b0
         csqUfk/QccYwTmu92WrzKlkajhb7d9t5bA4LHoJvxD8mfRJEt6QWW2vGwLmpmivePCB4
         E+6j9MXSVIuwYdQHLWuOzIp7hXoczxyyzBUcnJwZqyj1EzGlWezeZb/MgVN46LXjXbXh
         8ylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762304106; x=1762908906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ADOlbA/MeXRPk9nFlkw4G8415r9Bnyhb0LknOuL9V0=;
        b=mlwJ5GmX6aZNCyz/LViQJi5wPkoN5hpESFcCppucU0uANomhk4gXH1EIt00sJNwG/H
         jmt/XM0pa7czarzFal+NbLFrcKUmV7YVs5dVpp1qSwsKTrMGK2xrMeCpFjtwADCreAmM
         95NvOe0/WrqMAzUfBhiIY0GJcqvmFe24HrJ3ZccvmDdroLXkgUe4K/mScEIhXxbMABL/
         ++yIqlWoMP89tV8N3bdlGLMtDTfjQJj+gRWUEaCLfst3kkI0ecFDAxRKJOSMp2dTfA6w
         XTHgJkgCTJcZp5TFNf0mRxthI08woJnDYBmkoAqAk8UhHGlKYC+G1uGS/eFGpjNGDtXf
         2BrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVq8xpWxq7zubJk3gqq6Wt1+LFTa6hdPR/Su4gnuyLJVRv3k11Z8ZW3CDXQogNexGsLkvlHkcG0Mnvg@vger.kernel.org
X-Gm-Message-State: AOJu0YwnZ4a0PCzSITB4Y4NzQnZmjCC686qpiDOkzTYjK527VdVwiIOS
	9ldhDqARV4fGXu9vWLo3Ti954Ff6NbZWaexGjnPuNe3/rreG1WdboK2EzH3h+IIevo1HbC1lh5T
	tVYuFgDnXXkAl8HH03Qgfn+O+K/+VDzp4Oajg//JYVAE68kFEKsypjlME759oEA037X7ExKz9
X-Gm-Gg: ASbGncu9OilBDYUN27ZdgZqTfgS/2u9B3UAk0w32SfXVWcgLhX9dkHm4IfrnN5FjdEO
	CLvESrjwR7xQO5VOBFe+1RF6AQoNuQ1FpWJpAezJd7+k2tef5tIFTtGei5Ux0NRmUEMQxHlo8iI
	QJmarXzHNJldvIV4Tm9hhluDIKbZC+10XHEjfs9lKo9Ytamr6VlDAuEswVhIIXiXH/YOzddIjBv
	nsQGzZbb7maclAakRWmLh53ovPhVnJ9gZ79oRKRh/KonytbREbnPpm3HegBIxc2VSNZQXkl+wWm
	aTm11eD/u1L129IwcCnZcByMTWYrYAg+Kk3BAQE38ZZ9CFF8D0dTm7YFFDqj1r6IJhH1xA0XIjx
	JlU1/64nlDLfC2Jxm7h6QYrVdLchC8DxOHkdQ5S3fHAmJw5hEk4uY30WQKH6bBuTQ0EdILurd1y
	Z3DOkDhAtqZSuV
X-Received: by 2002:a05:620a:28c9:b0:8a0:8627:30b8 with SMTP id af79cd13be357-8b220b9566cmr215543585a.59.1762304106052;
        Tue, 04 Nov 2025 16:55:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFl2T8MaBy02VcjmjrLLsEC09nXbRPXngYX5Uir3OVPaxk5ZvRsK2epgIV03aGzl6YxHlPzXQ==
X-Received: by 2002:a05:620a:28c9:b0:8a0:8627:30b8 with SMTP id af79cd13be357-8b220b9566cmr215541285a.59.1762304105532;
        Tue, 04 Nov 2025 16:55:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-594343911bdsm1169861e87.33.2025.11.04.16.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 16:55:04 -0800 (PST)
Date: Wed, 5 Nov 2025 02:55:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
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
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH 02/12] arch: arm64: qcom: sdm845-enchilada: Specify panel
 name within the compatible
Message-ID: <neykh5ldiksowcyqomqlx7wwdo3jrofpn7cyndgsic5ckcemik@gngyem6bmdsy>
References: <20251104-sofef00-rebuild-v1-0-dfcfa17eb176@ixit.cz>
 <20251104-sofef00-rebuild-v1-2-dfcfa17eb176@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251104-sofef00-rebuild-v1-2-dfcfa17eb176@ixit.cz>
X-Proofpoint-GUID: ei8xEnZ0JQjtqiuXB6-0rrpESB88F560
X-Proofpoint-ORIG-GUID: ei8xEnZ0JQjtqiuXB6-0rrpESB88F560
X-Authority-Analysis: v=2.4 cv=TuPrRTXh c=1 sm=1 tr=0 ts=690aa06b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=QsaZCVNBrwfq_IZkOpQA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDAwNSBTYWx0ZWRfX/k04ilw+7HRA
 61/TtUZfEw/iGxFGlltENV3BPFzKHM+bKeomIGK3s8QLQckOOhYkhpiN2f1vypJK4UIxsGeP4u4
 /I6Co/NWMaT4zJnhbrvp9ORLft0hdOEKJ+qvxsdn3fEjaM+luxGr3KR+Am9Em5p/wlCFAFPUu/7
 auU4MgoabLUzdWWkw6K3aMnHVqeSq5/qHMtN8sSe6L0J4hHMHiy+HqMjT5SK1oBctF/xZkEC3hM
 jFhX59eh+l5CTm5Qak7WsVF4Nln1LObDcC73r+HqWO8bcKCv2Z8d1ZgWMRViFFTwT4OC4FSM0oW
 3QxVhrzC2/H99GqGMfzO80SMAkINBYvTCHuKpAJxkhsUQA0QwHXKGol0jY+fnGuQU1NciS4sEOb
 5dmptk/2lnyZIikb8KkpK0YG4OZUUw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0 spamscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511050005

On Tue, Nov 04, 2025 at 11:16:10PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> sofef00 is name of the DDIC, it doesn't contain name of the panel used.
> The DDIC is also paired with other panels, so make clear which panel is
> used.
> 
> cosmetic: sort the node.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts b/arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts
> index a259eb9d45ae0..8aead6dc25e00 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts
> @@ -31,9 +31,9 @@ battery: battery {
>  };
>  
>  &display_panel {
> -	status = "okay";
> +	compatible = "samsung,sofef00-ams628nw01", "samsung,sofef00";

This breaks the ABI. Please describe, why it is sensible. Other patches
should describe whether the old DTs will continue to work or not.

>  
> -	compatible = "samsung,sofef00";
> +	status = "okay";
>  };
>  
>  &bq27441_fg {
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry

