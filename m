Return-Path: <devicetree+bounces-234180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BEDC29854
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 23:17:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BD090341075
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 22:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC3CE1D5CFB;
	Sun,  2 Nov 2025 22:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ccdr8S4j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KbHtvm+t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3397F4502F
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 22:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762121868; cv=none; b=nVb1QcQwQlSL76IeCCFB8P/lzITQO+qAm8fowfvghMxmVxpA5wRL6CK+CXqLglGBL5dAXkl/V2Oj6KjuuLSQ2LK92nGzNt42tb+PloWXkEE0yjwpA8iPKSAW6ATPv8tpzcya92dKfRnJ90C3j568nDjmqWxcp89KwTLtRnCY7TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762121868; c=relaxed/simple;
	bh=tQZW9+dDgSbYnIuhOWigTzdfgTz+kJ/K7hAWC2M2Ack=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nyNneHPhHQL4+4CmjpmSYG7g1PogsH1NZjYcfVGBS2cgRPjWhsNrUg2jt2Xukh5e85jmH9rth58mMUH0LNd9gK5pAZO4377R34SVgQmBREqH4BqvCSyolu9N++zV8Ze6C2pTloUrUMmnGqOQrIlwKjA41vhBBAiZpD9dAZ9JZoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ccdr8S4j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KbHtvm+t; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2GfV8A694026
	for <devicetree@vger.kernel.org>; Sun, 2 Nov 2025 22:17:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6JQo7wed00v6G2v2l/AOp2Cj
	244tmHQ6AbEypOtyoak=; b=Ccdr8S4jtGVwRZB1EqCZyOcZD45Ja1v8ZN2CFM2N
	WX+KrauHW/7Bf5rvzBmZpdS9jDxCqZWrhDXKQzBr3c3ZIramL2vIGwyBSmzYe1Pz
	MfIfpfX5U+hWZPouAfVq+4s98Nv/I38HLBzXGF4ExkKHDiw8Eiv/HWxJzD9r0bDm
	UjfknwDWyUNx3YxIcazRJHIiYr+VUnjQhghJ15F/W2BDkX4nGvbBmVwSFVOi/lvq
	ZnCDCIFYU8xh6wrTPGxmiCtLPRfDbQ4rvCEfoLbHX6H6FodbBgFoavdeg1/QgzLI
	1d9iJ9mb1fGLnGmeeDf9+wvb0ExSTt5ke9qpxx9QJszMug==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5ak8jq5k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 22:17:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e892acc0b3so107289031cf.2
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 14:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762121865; x=1762726665; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6JQo7wed00v6G2v2l/AOp2Cj244tmHQ6AbEypOtyoak=;
        b=KbHtvm+teL7hEtUhqa2tWwTpJgL8EUjgsXlIfdsAroDliTTXkBqWxxyoazJLfQDLN0
         4peQQTKCA/kWMSmt25leM7m7953d+gvb2ExogqX6HOpODF2YevRrI8n3f050iZuYtHSA
         4eIHW4ZSZQGq6dRUQ1RWLjWN//56LJ5a1a5NuWmB5mo5VjDyRSpeWsVqAhRNUpqHPEyQ
         hbCjmJfruaoTIe7tL27uFJ3qZcB0nYDn/BWluhSyF24qMkcpn3luzRO44GIRadd1QCLr
         Cy5c5BDUk5szNcB3ZtIk1K5oFPAr9Ggo1ngEiFlzPYhu0IGaTP2RrbiGig0QQPwH6iKu
         0Z3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762121865; x=1762726665;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6JQo7wed00v6G2v2l/AOp2Cj244tmHQ6AbEypOtyoak=;
        b=DkrnSl2dgdudtHntwuFJTCo/2kT75BX9+UYSYwMPX9NwGMkCMHWVmm+PKWXQP/9AP1
         p5Gq2pfpjBukswBbR10RlACxMej1N3OKI9NOcdER5kU34a36qPtegMz2lXWE3Lnyic+h
         Zn4nry4VVMtJQUQ172IomFRrbj3gaJnBi0QIL4l4ipix/kejl9R6njVmeJM8qnZ8fIWR
         mijyAHiChl7DIBkPh24dsTUQB0SwAW1QfPDiU4Y04gU2aRCML1dhmBhQ+ISthtXjXN2Z
         5ovqip8U4cPfv5a9BwdW7WaEt4SKq3Znt2UoVWRH4ELNEtOQLFLCCeb7fbUpWZjFDq4E
         LTYg==
X-Forwarded-Encrypted: i=1; AJvYcCWOZb3JT3LoWBkw2u38/DKA3IHEJTmPvQkSGC0u04hWiJcJFoZmyusxOc+1lBbep4GCJQ2DP/Tycy9S@vger.kernel.org
X-Gm-Message-State: AOJu0YwN4Dzn7bho4RaLpPB8/9tG9JV3v7uO5zeodNQTxiyJFLZz6pax
	oSPHyhk5EfQvfkrk2yiCsLr8tlFy7WJEtRHdjaMwaP7xp9BPXUCwhkle4ayxI85uUzyCZih+eFr
	o7Hcw/UAAKvQ23/daHrZ4UCcH0jxtqlbP1PlKSusbl+/g0Lq2CZOg+SVdxJewCF2R
X-Gm-Gg: ASbGncuHX3nWKqi7vQDsCYlVNYbOtFynbib2pQkaasKUTlTqGht0vtuCMBZmrMX/JGy
	PWIOIMcDVBYGNsfDG3MhX9Mlmos0FpurHqBG8n5MkWtUuj1IFR62P4UVpMkLw5oIcb/QpIryOMz
	Ha1PKIzvt4wpaaZegRdaJb5q6/Gfx1iT4lftB1ukq06x+u1058N4TRnmQAYma5xamQ+kxd8Ohnb
	nWssZ89h/ULP51gOlbz1u+TfCKkn5luA7OdQrazAL+L+cjDJQt/BNqu+m8q1zCeiw4nH9GlsbZh
	+cZhNpJ/PfLGXaFQtf1h7quWlKIqVHYwOt6Nq50thAweT4RJrlE73KbTIHr6BGOJqDL0PbDtH5a
	E2La7Dxf4O0zmM2ezSqoSYfJ2SsOEH9zO3lFdj2mTO/E8eg8fcPZ92DxXpOpAd4/twjVNlRq4IY
	1UFU6f+DLKyXBa
X-Received: by 2002:a05:622a:1b8b:b0:4eb:e283:9262 with SMTP id d75a77b69052e-4ed310a7896mr128716971cf.80.1762121865369;
        Sun, 02 Nov 2025 14:17:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHmAKJhop+j7hdlHiiGqRfXCjewIexYqqgeYXYic+LYuBAAh0RBy2NHdip4iwrCy+CDUQyPUw==
X-Received: by 2002:a05:622a:1b8b:b0:4eb:e283:9262 with SMTP id d75a77b69052e-4ed310a7896mr128716761cf.80.1762121864960;
        Sun, 02 Nov 2025 14:17:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59425f77cfbsm1328091e87.100.2025.11.02.14.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 14:17:42 -0800 (PST)
Date: Mon, 3 Nov 2025 00:17:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: maud_spierings@hotmail.com
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 6/6] arm64: dts: qcom: x1e80100-vivobook-s15: enable IRIS
Message-ID: <d54z4j34qqguyqmlvgfy5uj5vuhlow5gk5zdk2xjbyrzh3gbvl@jbn7xyis5njx>
References: <20251101-asus_usbc_dp-v1-0-9fd4eb9935e8@hotmail.com>
 <20251101-asus_usbc_dp-v1-6-9fd4eb9935e8@hotmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251101-asus_usbc_dp-v1-6-9fd4eb9935e8@hotmail.com>
X-Proofpoint-ORIG-GUID: dEFxf-Wbf29u39vMYcGkOWkzG7mdR_5r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAyMDIwNyBTYWx0ZWRfXwhiX3yYqz8rY
 g2hFAV67ikIsVd6IObFkmMk3/tpNS4FVEOO8N1TmIvgYakyT7f3C83jSRw8zENtKXnvmdRFvpaZ
 54KrhoIX8zHPLNrXeERSUNiA99M8ASXol9ApYG3DBVvqGuyzA7iu+EylR1dUcGVZsWfOduhtFHm
 1wMQnYaFT6XHt6b8cyetPOCAl7sThseghXO5dfyBYbibGwhW3EP2iJ53UjJPYIj23msHii0ar9o
 2Efasc3igAKerwQk470/6x3SunDMytmmsbO+ohu/f7boaugEMn42M0/F7kShNyGxdrdvhCfklj7
 ReMasRDngKMCYkuayMEYnMUB+7YTudqgjdsIEYbGhQRPryx0hyZikfxxJ115aAfNKyeAxw3jV0/
 v2kXlYWaopnCqz0djF6Off8clsoQHw==
X-Authority-Analysis: v=2.4 cv=ZZEQ98VA c=1 sm=1 tr=0 ts=6907d88a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=69EAbJreAAAA:8 a=EUspDBNiAAAA:8 a=GX_lnnJ6PiQ3Sj9TFooA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: dEFxf-Wbf29u39vMYcGkOWkzG7mdR_5r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 bulkscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511020207

On Sat, Nov 01, 2025 at 01:54:17PM +0100, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> Enable IRIS to allow using the hardware-accelerated video codecs. The
> firmware is not upstream in linux-firmware yet, so users need to copy it
> from Windows to qcom/x1e80100/ASUSTeK/vivobook-s15/qcvss8380.mbn (just like
> GPU/ADSP/CDSP firmware).
> 
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

