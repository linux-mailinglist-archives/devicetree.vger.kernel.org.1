Return-Path: <devicetree+bounces-242172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E00C87823
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 00:49:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7E1504EAA96
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 23:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F4D12F60B2;
	Tue, 25 Nov 2025 23:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RS7Rlx16";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Io8EPA4l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E932F60A3
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764114524; cv=none; b=kzE4GCUHrU0RwzH563PhuiICocsvyaQIfVj4QSUTkiY1r5gc4lxzQvGwbwhoWsDzGoLoX3cnoAKdJrW9H/r0+rtcI8N6LNk5cDWcuGn6NOoGly7Nlr+sIhOjGjP/cRsI6me+k5gtc0In5YULzD/+R4ZtKTQnrOxohRhc5Lpr1v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764114524; c=relaxed/simple;
	bh=0Mlyhx695BkVTyiblfoWvSYhVsoxNzGhcYR/1u0Vwps=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ujz9s4d1Dijs1p7QkNv5PuqCEjObeSIvkGgp4JZ+hh/ZvJ2+pATcmhhgnpP19am5pv8kTc39wZIswOF62Ojh6IQwfxHPV8NGFkvFSKHzNHreZw8kjRS5eBVz3KdETQvoZBZmpQ1ty/IUHmRm1F4E5TM2L2R1Ce6vxtZBrnaXk/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RS7Rlx16; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Io8EPA4l; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APNMNpq4048890
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:48:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=k5jDEGG25I4fC1NOVLJpbEU6
	TiEXOx1Y+8hrvGoC+dc=; b=RS7Rlx16a02VrUIvd5ojRZi43FxbiQJfJ2jlUXyI
	IE59OhamC/V8eqRUFB8ss/DwbQtQH1JEEhYn9Grcr8gVlQrp9lm/LpFUGmAbKE9F
	QKcbcAJbLqPQiMDNd9ncpf7PYLLaI/bogue4EgDVSKK6lNbfYViClxMgRBA30l9a
	YEIfgxwiuwhohQFsJQu0/DGkuOWWB6Hl6x0bYqdOf9+Gis+iw9xD0dga+qL7aJBr
	wQyBRjm7q8WxdXcFkeRWGc5cMbQsUzAGh+ruChgpNR2sbOsbmAVVBRZDHY/3sVLw
	EjvWo0ElbnDBhmYqBHQMBfABzuZarYIbq5sK0BiOTlFuNQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4anp2ng1er-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:48:42 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e2342803so1596085585a.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764114522; x=1764719322; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k5jDEGG25I4fC1NOVLJpbEU6TiEXOx1Y+8hrvGoC+dc=;
        b=Io8EPA4lMcRIZCMte/F+fHXZziInkZZzmjrDANyP+f7LQU0KqO8y+bBDTTC180gBNx
         0i4rbGxeuj08KtNgw7augiJVCxaCEmVfzwJDthYNSKfFTPMoSau5KMpN6ENflpWkAmTw
         2W0hrI1H9pEnVwbRBcH8CMkU0u65trzxKlbIDq5sJILlSl+7p8q3uVU+WGdvzlJUwoD2
         44o4mD7zm7z1dmG84FTI5fF/TLSCxxdxFnlTzh849QbdZBF1HapXQo9I8aVnOToIq72A
         mHCjgoqobKU51YjhlFcVtwmHqch4aG1mzdkjjOzlWXLxpgBwXEB95nk55oXI/23exc81
         Cg6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764114522; x=1764719322;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k5jDEGG25I4fC1NOVLJpbEU6TiEXOx1Y+8hrvGoC+dc=;
        b=Z36xh/lw/lCixnfdaktHPqoZi3KXKTb3ZixabP1ROvbqAwAAFYRqwslWmeI+PYjdTp
         ChgFrJNDgxBf7LRage5iR3PCmBlYp4iSxLIkjo7q27BsxiwACfWc+C9CzhksU5Hh8DW6
         wVD8BJUvAvR6T70g4GLZG0vKLEl/xnPCJZT/xlTtvD1tJLSYcdmk10LbdLE/VCWCfI5Z
         6+wxRKsPQr1UmFRn8QPYde/r0d0eCzFgHjzq0NKNyLM720idbv/23APt1sAPyNf6LxYN
         KZtjTRQPARXuUxhoBJ+p2UihAVZHagtHIti8peBMf7PeHLWo5QNGNctCsr6WBFXEVp74
         A3vw==
X-Forwarded-Encrypted: i=1; AJvYcCWgjFsoiSUqFpkKyodNyhBX3rpibVl131GL1YHNDck92u561HefQ81nsDcyzsZaom4+b9Lq2WGPYrqd@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ2p4OdKkRLhThnlWuwP1GKwnVPR8afya/IqY4cI6sr15poYdR
	PBZrrFsOErxtQ+91tyXWviN/+bU7+tpxEwkO2NtjdQi5jHsS2Mdm9/4Ffa2rLBTAGMmX1cFPdg9
	30TEb4HxehNqTeQOIn+6qap6WYIpbp2VnADg4Z43luEtw1FmQ+PskfMhvl9rBuyv9
X-Gm-Gg: ASbGnctxu7G4W75E/985nzWhzhzYihYJuKczi7hmlBk3PkgiKD6LKEw7gaxOAS58NhT
	6CD/ZNOIzTiBQdD0Z/TakM7KOcYieE7kysLZm/80DV1KmHdC8JxRmFD8NmIDT0hvGgEoNbF/T9M
	Lh69DW+xbO7o6/ToNcD9ZrkQX7mFqtMCJLcsY2GlZySTFvnDqUe6OpXJRVUmorvF2vchxXUv0i/
	2vGXBP+JotmAaH4ACJHfqDWuJB3NYWwR41tB1ypt04KerfjNaZmxgNJLCJPViZ85RnHasIUivCf
	Pcvs9FT5xqw7IIBDBzDIXPU8DX9hNtCSTvuQEEMDTbUqdAYVqUSG0Sl0uihiL1deqPyE7BhFdg1
	6tQhhzx70q+4VtPpBGmkcfpYomgxumx9OiUT6GZ4NBYZp+7co31yjWI5U5/o2kodH+7zY9l1F14
	GJQP6asgYmTXTkzoI1NE6dDyk=
X-Received: by 2002:a05:620a:4402:b0:8a3:f8c2:5ee4 with SMTP id af79cd13be357-8b4ebd821bemr613780285a.37.1764114521471;
        Tue, 25 Nov 2025 15:48:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFd7T6aPJkSDHrzf/XM/oH9ZfLFa60qTGg28nQcNctnpUzmJUsrOR97i7a4b/c9x3o1jjM7qQ==
X-Received: by 2002:a05:620a:4402:b0:8a3:f8c2:5ee4 with SMTP id af79cd13be357-8b4ebd821bemr613776485a.37.1764114521011;
        Tue, 25 Nov 2025 15:48:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969db756d3sm5568378e87.14.2025.11.25.15.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 15:48:40 -0800 (PST)
Date: Wed, 26 Nov 2025 01:48:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Alexey Minnekhanov <alexeymin@postmarketos.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH RFC 6/8] arm64: dts: qcom: sdm845-shift-axolotl: Enable
 fuel gauge
Message-ID: <eysmjuxmvl4nfn34hfiqw4pwfptepibo6ez6tlunegk6dpmc4p@hbzex6w4dxnp>
References: <20251124-pmi8998_fuel_gauge-v1-0-dd3791f61478@ixit.cz>
 <20251124-pmi8998_fuel_gauge-v1-6-dd3791f61478@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251124-pmi8998_fuel_gauge-v1-6-dd3791f61478@ixit.cz>
X-Authority-Analysis: v=2.4 cv=KerfcAYD c=1 sm=1 tr=0 ts=6926405a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=jB8_oC6jW5EHyFLWiXQA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: vgZPwnRkDwf6JfLwwD250PD72D4gIc9o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDE5OCBTYWx0ZWRfX6SVOrjLKEQte
 hgSicpND3Ivl9APcL6pTH3oCZa3V+p+t9GzHjH+NtcCqgy2Oto4MAheifVe3+ascQ0ZiSduGPy+
 oQPiTF6s48VQWu+ScNwc0Ji6Q/r9G20BHeX2lCZQyYz8jkhMyy/slayh4Za0wTUQAOudSKfJ7l+
 mQ72B/ig6f7drWLYKqesSYjgQzYYYzHWz2odQ21q6RFjSAy24AORIVND1YeXfET+YST21eC//0K
 hpZa73/zYMpbfj1bJRY3NvkVINKBKF33PwWzlrhg4BRDWIfLwRGO4ZbMxE0Elhhqe5/aa4LFrZK
 +UhlnmLb3r5A+JxjXQ0uIkQJ/wS9Rlt5WL/0jc3Wz6X2yX5jXX4RDkFti9tFqQ57jymn872G25l
 a/avA/bHjPaglgJM/9GaauZIq6BGQg==
X-Proofpoint-ORIG-GUID: vgZPwnRkDwf6JfLwwD250PD72D4gIc9o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511250198

On Mon, Nov 24, 2025 at 10:53:39PM +0100, David Heidelberg via B4 Relay wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> Enable the fuel gauge and configure the associated charger and battery.
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

