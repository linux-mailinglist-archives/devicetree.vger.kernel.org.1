Return-Path: <devicetree+bounces-248494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D14CD3304
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 17:03:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE3FC3009FB8
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 16:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C944E2C0F6D;
	Sat, 20 Dec 2025 16:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="isXmb/JW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kYrrH6Es"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD18B1C69D
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766246592; cv=none; b=Yw1ZxWnmUM4KCEWI0CbeiENuep2Y+Y98/tndfWtAhzFCbkmWie4tAIM0Wg2v+VlswiaAjNxVOCsl4QMf8LUCsvHI97JrvwkdkkT4mRAG7YmYxiqTYo5sjyn8PeZHyFOhfdHsxqKX4lZfnkh1oLCo53u5S3/eOjFjOW+DTbd9aZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766246592; c=relaxed/simple;
	bh=oqsEt1aX7D93qzOG08aPRYFITxsTR7FJDqIaRvCW35w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m59T9ITjcwWwWV8b88quP++Ag4rErbxoH/tNWQ0TeiUVWnGI4QInvV709ncqtxMw9QITkEQuBOnAv+djBZpxhbqYVUKtMXcYrY9VTPDMp8uw17aAWY7eaN0OMKisPlJBTFytFCYVtshFXTYgzvC00FH7D9r7xfPC8I5lD+F3Hu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=isXmb/JW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kYrrH6Es; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BKBPfof3198850
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:03:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nEe/G3RZ+2mNhyGb/G1hjG3b
	iVKdP1NzTBrwas1MgEA=; b=isXmb/JW3s2npdBibjmnjnCfDvDYEWpsS1KCaBxt
	OZwRwpcc69hB03fast7eSKaGqL/SuwTgpYkG29Ov5bSVGEOZSsuS3Rol4+vsPq4/
	b2dGqQ7UkV1IcPaR1BB1NjldA2YDEA23JlfqrEzhINZkFw83NReV5kSy0qy++iDo
	XGSVZZEYp1HWN6pLW0JvZubKwITYfnMwxbY+SV66FvMb+YqBScyzleY/mOe49Aj+
	/eKAOODRCjCRIV68ZmGA+dFDgWPYDRJSe0vHPZn1VhXhOrKlq9w+zm7NDtZadvsv
	2Cpd98i1cl2RrGciVdVcZ6+Wi2Zrrg0OGwyKr3x+1OIZDA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5n36gw4h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:03:06 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a39993e5fso63784996d6.3
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 08:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766246586; x=1766851386; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nEe/G3RZ+2mNhyGb/G1hjG3biVKdP1NzTBrwas1MgEA=;
        b=kYrrH6Esx5IrqXgRI9djhsJQocy+2P08sfk6tvBda6g7hnf/YOGaodyZzNrn2cUAYZ
         oM8ECgUlT3Dx6jR/SxXqNlOcjsJxvPXAX8TzjAwJpWqjXgkp2kBUbmv95Pj3zt0idrIz
         lo+lOGQ+2T8ZCbRBE0kU3vVrmkc36TKCw1cf0cF440WIcJioRV2gs+8u9uEsKe/AP1FM
         ba/ERjaifpVDZ3vJGNVlLaDeH+GuC7pLL5TuwbEUwTzvphi/F/9j5lyAZLb7hNarsm71
         c+kctDwDza4P2nmPg7FI173CRv4UIDSJNXrFbrFDF6haHMvyVca36S/RaK7rCue1Cktr
         MkPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766246586; x=1766851386;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nEe/G3RZ+2mNhyGb/G1hjG3biVKdP1NzTBrwas1MgEA=;
        b=lg5pTo1WVSb7AvbOdOxGr+EYyNZOqraVd8mYnH5zmtu6Fba0ejF6hrxzpPLvjaTH7J
         FgoZcSA7x+3i26uEdmpNzNok4K2FvJZ9jO7wcQfgCE8CuVaReOjtv6u99FdEI+UDzvge
         9rPvKWv5l/TmD3nxH3Fc0J5uojodJ3aDIx0Ff2HpoHW1qJetKeyrNKEOh3rxR/pOoksx
         Fj6BQyjchSyiTXEWNC/DnlPg784H/fQow8aBf8Ba2iGt180iqTL1byYpD92Ap2O6bchq
         XxIVzMtRhiGkMZk3DGT4qMgI1oMxcrbuE4WBvarYj/5+aU1vBkubCI/xCCxt13b2UFzY
         6iIA==
X-Forwarded-Encrypted: i=1; AJvYcCU2qMJr1LeW7TGXT0vaRNupb8BBfuJvyBIJltlF9aHPAga5lwmqOP0dH02zP16vKcsg+P5UwkZrvlbZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyrBTXLH2NPpaTwCskPebT7PgCAd/OFiIf4vtxzn5m2KL0tftfZ
	Bpvq7em+qfW+MW2ffxzfUjWlTyBcvI9GqasGRMXI0EnIDRCR5pRqUX5UYgQOl3zYheu15Goopuk
	JbhJ5TULIyue64LnUSUMCjwTJYlhf66EBbsls3nlow4gOhxi7BU045IBG8q6Nydcq
X-Gm-Gg: AY/fxX5hBWRyyPnjCuGzFJeL9cV00tQTaS0LipWybOLNDKE2BHD18q9DyF25jf5+NrK
	MUP8tJjqxnnF/jzitus94fg3gQ5IaIhfQj1DaKM3EIDWRQexgt0fR7cJnEvOUL8jlG8HF4Y0C44
	JdtFFZgxPBvz8xMxN98ACvInuuK+RkE1RSmx2mA0t3C/qtT0/sCqJNyUtGm2gsv2H4/Q0P/GxJl
	4gJJX9C5wVwtYR89cc05KL0RJdYt8J70X1h+iTRP7AwaDjuvzI2Ed8vHQM8Uu88qd6dIoxfHHI4
	+mj7vwYEmzSDui98qvwOZdAnIwe5m9/IjjrBLawLzrGLv9nDBg2cxCkVUuGt97+sbpoQuB+SudE
	0QgOxOTO3wWjPZIBHMnv7c/5+PgKewd8irHR5Fmh0OQSgui/5FnM6uMZ1NvJx5LSGwGJyk1jPdU
	tYlvq4Wk43Hz2uNX/JPuHrKxs=
X-Received: by 2002:a05:6214:3f8f:b0:882:3f45:c819 with SMTP id 6a1803df08f44-88d86960f48mr103830396d6.53.1766246585782;
        Sat, 20 Dec 2025 08:03:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHSevMYpZwQbwXFYn8G7B/YELQOrg2fZ39XC7g8Q5HD92V1itWIz5rn1u0pqyZfwMhTLY677g==
X-Received: by 2002:a05:6214:3f8f:b0:882:3f45:c819 with SMTP id 6a1803df08f44-88d86960f48mr103829506d6.53.1766246585153;
        Sat, 20 Dec 2025 08:03:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861f4e4sm1578227e87.83.2025.12.20.08.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 08:03:04 -0800 (PST)
Date: Sat, 20 Dec 2025 18:03:01 +0200
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
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: x1e80100-vivobook-s15: add HDMI
 port
Message-ID: <tdloe6zcjf6fj2unm3lxhgsgewwctxjyv7sxzvmfpqnhpnorm3@4jf7x7febu7v>
References: <20251220-asus_usbc_dp-v3-0-5e244d420d0f@hotmail.com>
 <20251220-asus_usbc_dp-v3-2-5e244d420d0f@hotmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251220-asus_usbc_dp-v3-2-5e244d420d0f@hotmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDEzOSBTYWx0ZWRfX7lzFk2VOHmWu
 K4neenJg6blYZoazX4wpUaDIPiekkAziljB39TCeNQBpUVYM+kV7jOavXxAiisHC7mc92qPR/eq
 dos6TDvpiFuhE9G9UML00691JaV4ttW+u7A5gfxtpCaBr0WLEBRCs+EFpeP733vJ1OtYnj5ASP4
 xKIl10NlanTZ5zmykcZEKHBwojQFJBiz6mI+NMtcS3dLwezd9R69v6rBvetNu127kUrDrRm3w3U
 DUgPapJMFUg9DUB8ieXkC1meQsF11Bps532MZjmCVIh3u5CpgDD1dbZ2zLNWedr6lBeP1W+sIml
 DlXQ8ua8fgm1DQWG5G88Nk0v/9r9fxAgkifRBD0d2LCmMuav+8PP83rq52NYy8FG/y6gsAGOANB
 Lk5holAD/1B42+RuHRasSJzPQxljNoW/erxbD75q3lRSyZkrTyq2QeW3wZqVOspZQFl4//xcAFo
 F1zXic3/vFVyZwfRqvQ==
X-Proofpoint-GUID: 5H7GWymLXdzs21fKOMWKpziC47uYAway
X-Proofpoint-ORIG-GUID: 5H7GWymLXdzs21fKOMWKpziC47uYAway
X-Authority-Analysis: v=2.4 cv=VJ/QXtPX c=1 sm=1 tr=0 ts=6946c8ba cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=69EAbJreAAAA:8 a=EUspDBNiAAAA:8 a=Bm6uNJzs0lXfCfon9C4A:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_03,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512200139

On Sat, Dec 20, 2025 at 12:38:58PM +0100, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> Enable the HDMI port on left side of the laptop.
> 
> The display signal is routed through a simple Displayport to HDMI
> bridge.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---
>  .../boot/dts/qcom/x1e80100-asus-vivobook-s15.dts   | 81 ++++++++++++++++++++++
>  1 file changed, 81 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

