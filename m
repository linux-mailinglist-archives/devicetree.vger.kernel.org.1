Return-Path: <devicetree+bounces-161242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BAEA73213
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 13:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1BA81889598
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 12:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B242135BC;
	Thu, 27 Mar 2025 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c6YSwswC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4F5213259
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743077434; cv=none; b=kO9l94YEp7BdlzrNgb/jVTGs08iWr1srfphhcJP82WmEBdFlF6FrKQsZFVjHULz5x3s2k41Jp3t9aS7OtxxXw4KoQSaClakJVC1ennvD/YHC/poHTcp3mAi9b28ZvT9NVfMDtbA0wYiycnxHpnjavhgaIFRo/NC2PetvJvravio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743077434; c=relaxed/simple;
	bh=QzAPxhXt0HlkANWcKnu4lkLD3TuSa6KfrV2FLU/JKiQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TpsHqG4pr6ioNzTNtO08BiVHdCtkVLopaA/xstjMI7q0EAo5aIYk4r6Bs9LrWlNRRvtnYmGbZhx1Ca6wvsuUntQChCoB8JIJi4BdrwLXQG9j/WpfjVem2WoaDw+GZ1X3mxCkIOKRblCaWsYIBwPAQjmW8y/DzEk3l8eSU3VmzWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c6YSwswC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52R5jGqj022979
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6EWAFArYwvzkFk/yEjG4XOoe
	Jfm7qgVUEY77C7aSLEE=; b=c6YSwswCYNti2vZRCxbqBFLrKWmuGe9vYVIvyM95
	ggwy/8jNjD/9NgdsN54FZZwrpqR6BNAps8wvo08EeEdk/LhzzHRbVjgHkOgOSkcQ
	cgC3glN83bZsRpsdVEvf9k8/sa9oLoJl17ozWspnMSeoUJGZ++aqHHVmNz8ccifJ
	utfTqdEEoUFzAbYjUCa/BCQfCPS0t92BylHAY6NsWlvPdiz+7zZ9FNxb5uDZjLpr
	2hdEr0yGQbqMv7UNFZd5h8V0XPf1U6Ty0U6M6FX/y76bMrVFVmF9vfHxxy0laP29
	YV//kJFJgNK3uFc4VD+xoURKiLuP8fWbDZDYfhXi7w9Vow==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mb9mvq07-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:10:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c3c8f8ab79so137485985a.2
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 05:10:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743077429; x=1743682229;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6EWAFArYwvzkFk/yEjG4XOoeJfm7qgVUEY77C7aSLEE=;
        b=cgv6E7yb5R1vTK6Q4V7tCjB2WxUE3HC1ah1eDwQQb27rGrE1UNhw2XGcWsxocH5S9k
         fVdOR/nzm8tCX1MVU8EGZRkhf1BKq9WM4Mqo5nImbpzEIb8Ouq6xVEIgC1mixIxQok05
         RBvJfEZbuG3g9ghFmO4efhasufNoPUUIinqQS/stNIKWVARlV0n+NBNVfy/cT0UAPMB7
         SBYDRWvx1HqfTisxNhFHBBDRJlXXgqcHJyb/6bTMHbe3vSrWdrUTg+6Y61RVfmHWzn/6
         GQ98kYIc+/ek2RoHcB54Of9dr0goTnEWL8bXUpacC9ivwfvv4aAaNzwWgFiKbSD2jljV
         tMIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXl72LcWOEfBDpTnk7KEQjWBhXK40z5W7w262kYNh6Aj7+vEYl97Saiozb8eiTwKaVuqsqmioUv0hA4@vger.kernel.org
X-Gm-Message-State: AOJu0YxGWruaQvNfxBzK9dhbvywhMLbrQs0mPEf4ItbL97fc9OPUmO7v
	g4wIpYprLmawnHtVzfDZA/y0f+MPjL9RQB2C5HykOmbq6tm+Avii6wLrA81hbvoiNepcuKIXYcv
	uJCPRmoC2sK0kW/Tx9kIMk12vqeradbBaOsqypijTXLAwrzCSiUY72JRSSb0g
X-Gm-Gg: ASbGncttGGwG0HrYrh3W0lOhP5WUYAO2XQYOciPcFUrrEKMy62yiF16Y6ngOz7jSJ1G
	44Ue/QKVvCXpk+odaP95mOXrDwuZfBVt5nrm5uYQq9NTNFg3k6plZoPZwXDA+yIj4XXk5khnNkj
	ydK7JY50Wf427oWy6+LHusRYJNwzYzEMt6Absfr/ruNF70K8fa0uK9+pLLc4Dus2/tBkx6eWQwL
	AQJ/Tdq6bYz7nR5ZmwoP+7KUMQl4xz5ycDAj92kJqFpVOjXUDtLxOqWeBN6zZMarhUpCIamOETF
	ZTaJ4N9T5JRIEQXc4lwtDo4qICxXC6Ohm0qy00LlTImRr3zs01n3+GEU6B8kAI1n59vFcwzE+E+
	L/Qw=
X-Received: by 2002:a05:620a:25cf:b0:7c5:4caa:21af with SMTP id af79cd13be357-7c5eda818eemr550055185a.53.1743077429225;
        Thu, 27 Mar 2025 05:10:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGEQDaxxY1c1JIWPv4Vpd7ya8lrOIR4YdlP6XXz7ASiHvYbTcShWybxOIgvCu8n6tJpJQuRsg==
X-Received: by 2002:a05:620a:25cf:b0:7c5:4caa:21af with SMTP id af79cd13be357-7c5eda818eemr550049585a.53.1743077428725;
        Thu, 27 Mar 2025 05:10:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d910e36sm24064021fa.93.2025.03.27.05.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 05:10:27 -0700 (PDT)
Date: Thu, 27 Mar 2025 14:10:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Sayali Lokhande <quic_sayalil@quicinc.com>,
        Xin Liu <quic_liuxin@quicinc.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 10/12] arm64: dts: qcom: msm8996-oneplus: Add SLPI
 VDD_PX
Message-ID: <unolvsafjyty4vgfygedyf6otd42nqigzikwoqwawbj7ks6bgq@shz5b3v6fchh>
References: <20250327-topic-more_dt_bindings_fixes-v2-0-b763d958545f@oss.qualcomm.com>
 <20250327-topic-more_dt_bindings_fixes-v2-10-b763d958545f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327-topic-more_dt_bindings_fixes-v2-10-b763d958545f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cs+bk04i c=1 sm=1 tr=0 ts=67e54036 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=ApomA1EUvWpH6PII-98A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: wNT8LmCQhMzppYAvVp7Rl4SOcsLgAA2r
X-Proofpoint-ORIG-GUID: wNT8LmCQhMzppYAvVp7Rl4SOcsLgAA2r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_01,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 bulkscore=0 mlxlogscore=666 malwarescore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270083

On Thu, Mar 27, 2025 at 02:47:12AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The PX line powers some hardware related to sensors. Assume the board
> doesn't reinvent what MTP has established and hook up LVS2 @ 1.8V as
> such.
> 
> This fixes the 'is required' type of bindings validator errors.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi | 5 +++++
>  arch/arm64/boot/dts/qcom/msm8996-oneplus3.dts        | 2 ++
>  arch/arm64/boot/dts/qcom/msm8996-oneplus3t.dts       | 2 ++
>  3 files changed, 9 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

