Return-Path: <devicetree+bounces-222854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F4FBAE637
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 21:02:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 339484E28B9
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 19:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1122A283680;
	Tue, 30 Sep 2025 19:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="prJio/p1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7186D1EB9E3
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759258957; cv=none; b=Cv3FAw6lbfs8q3hIV1QY82AIAN+YMK7NpNvMu9hjSiHwHBjo8l4uaSiv+SaBzZKIn/obxD25y3+HpzCJ0TOTEj1C70r8HzRk5UNuyNS2rsoEQxoH9Of16cQx08h/KAVm7ek2U6EOTmvIMy/OWzWEJ5ZNLf5fKt4b7zch+ZgsWcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759258957; c=relaxed/simple;
	bh=XaKjIs21h7X96FaSfZ/LjO9yTxhBXM+kXjoDRs+GPjI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rJh085ahTfxibsI2Wb1kXQ+7Q1jnsBxemXvdEIYjJFc+M7uvo5Meed6olbleYZCDZAbEA41VZf0y7XHSBGZo9Qhs4lXpzPGbMKn/YUjWxDCpB73bTGKIH2V0y7yO8go85lDHwe2L6/UlPDDmy7K7cpdsjiV+12Q+4OOYrRBstcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=prJio/p1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UCZYBO028261
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:02:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GXlbr7M+4a1GxvAP+G3ZXjJw
	cK9AWRREeeh4emtmxmk=; b=prJio/p1Pa9iQoymrsQUzUwSwVlmy62rZ0boPOeG
	5Co5oHJaznpcAf7BJjir0I0ubdKav7gNDPOI3BNhzvNVU2u1G1uhd2a06abQovcb
	/saq/MhHYC92LvUIaaB4jaXLPQPJtLSaK0t5ErQB6rSk7JyAd3xDQkowIG2rxbUF
	957QygvR48Eomfe6HOQ5Stw7QNm7S+HdvSFGVn+tlzJkmY1II40Vvdyi9BTLN/oG
	i04nl4mMg1WS4TFSJNoHVcmPcipJi5BoYPhGwlfe+D8b8gnSbpNU1REPcDVYQYl4
	JGYK0P8WVNCLk9noVXZFSBzhqetljnENIu2G8LDgl2w9cQ==
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com [209.85.166.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fyrf3qty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:02:34 +0000 (GMT)
Received: by mail-il1-f197.google.com with SMTP id e9e14a558f8ab-425745467d1so89498745ab.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:02:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759258953; x=1759863753;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GXlbr7M+4a1GxvAP+G3ZXjJwcK9AWRREeeh4emtmxmk=;
        b=Vd6hjSq9L7LoLyLYkvvymKE32Ui/RxkiJlK34jiUUetTLDIlI5tjdY9G1EL1VOZOcd
         /4Hk1Fu41wHe9/vaSljW0mhTCH3MyQTnaTZNeMtghv9YUgev9rBPw+M7X05K+fHs0ukH
         1wU6cNwI5FKFgEkAPpFcU/0sD5sDTJ1AR8YFnOr6mJD2v3P8CAIz3xllXpd3NjnOUv4b
         kjaWuBlzZ22DkEVu7BbGT/g0dUB7bsF4jUk0AQpusUko36P1ByCHVj2UvpdMl4D/26lP
         UR0HBdRI1ZLdiIyigP33DwKaDh6kAsYJfef6uv/RBbGGtIJw0Xu6hWs3gSCrcr/Xkqwq
         C/bw==
X-Forwarded-Encrypted: i=1; AJvYcCVI3pZwL7heT42fbZGiSmR10bHqbcq91TcUeyztkGbJP7pHlyVUSpgy/Figjwoa8BE1CWIiPzi4Pn3h@vger.kernel.org
X-Gm-Message-State: AOJu0YxkANe7k95SyJHM4DwUxv5YLPrpzoUyULnn4LB0H42DnSdezP7V
	S0HztYV0TSIKZEkI/szEKYCvUu7nWeGjL6ivy0C0RMNrqeWz2nz6kgBKQDillbNEmmQsMk926AF
	Wpg02hSgoWqTlNSEEY9K5sqiYNKgwadELhZI+peqFXdAa48ndIEdL1gsURgjk+NT7
X-Gm-Gg: ASbGncvjGAWPUcICQZNl4EsXqzeQm2M/1U+kxMWHU0BWGRgiFNM9ZCibTNtf+wwE6nB
	6P38xHo6QFKRt6O6qsDEeHCs+yPLKMlzS4t+vQ33HdcAB9svGf6+4gSIqiCX4aSvOL5/rJBVSin
	inHWxgvBjOxJIzZBW5ID4VSfmJsxkuFv0X8vZnxIYcF5mjwmSlO2prPAMvH/FLhxTtFtFKXfUn2
	mHgODUJ+5uyHxF6Yv9AVQv60H8SQAq2nxdOyDsYMoscIJ2ZJ6hlvQTHOKhDejmhgDfggrZ40j+8
	66v2UlZeFvwtfENyzHz35RavuBH5UHeuaFcT+LlK9wwYk6Am/Il8lcTsKIHJlS32aRl8gynAdTe
	wAQ0IebAmH9OCdv68cHPO4UHA5GzFl4s4nasSWc7tvlrtRmhXmSX97lLPKQ==
X-Received: by 2002:a05:6e02:230a:b0:3f2:a771:9fb3 with SMTP id e9e14a558f8ab-42d8162461dmr18055255ab.27.1759258953238;
        Tue, 30 Sep 2025 12:02:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJV3txOav9sQu2ukayU7ugj9yuYkFavKZlUgXjEWPN2HKtbR36iIvOChi6ogqZ1DDolHbXtg==
X-Received: by 2002:a05:6e02:230a:b0:3f2:a771:9fb3 with SMTP id e9e14a558f8ab-42d8162461dmr18054575ab.27.1759258952745;
        Tue, 30 Sep 2025 12:02:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb7fe6b29sm35412471fa.63.2025.09.30.12.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:02:30 -0700 (PDT)
Date: Tue, 30 Sep 2025 22:02:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Romain Gantois <romain.gantois@bootlin.com>, Li Jun <jun.li@nxp.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: usb: switch: split out ports definition
Message-ID: <hio5xdgjb6oxejrnk3hy7ylro75p2ebqa6oczyuwuxk3xsbp5l@aewbvmuk3ldk>
References: <20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-060568de9538@linaro.org>
 <vwlshz5li23xlthn5delxwxdsdci5nc22iey3xih4qf5uhbory@clskdsy64xpx>
 <426679ae-03c4-47d5-895d-7c927b2c3b07@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <426679ae-03c4-47d5-895d-7c927b2c3b07@linaro.org>
X-Proofpoint-ORIG-GUID: EdZ3SqeYYFqQrhcSaq26Owkb9bfm30F9
X-Proofpoint-GUID: EdZ3SqeYYFqQrhcSaq26Owkb9bfm30F9
X-Authority-Analysis: v=2.4 cv=etzSD4pX c=1 sm=1 tr=0 ts=68dc294a cx=c_pps
 a=5fI0PjkolUL5rJELGcJ+0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=jIQbB08qyBSz40biqjoA:9 a=CjuIK1q_8ugA:10
 a=HaQ4K6lYObfyUnnIi04v:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDE3NSBTYWx0ZWRfX2cEsxTHtzQsX
 cprXbeWWNwCGoinWXlhiDgSxD6zT8uYGzmg9Nkny1U/FL9wIVgI7Ia7JsMqIT+OJFhuqaGCBmcy
 DtzbpTmYX1tRuhqTs2aVV+OyPEbLV3vk0KW0S1PeAuLgCDP+Q3BNhuf4s4JBIU5z+y52+MT+7DW
 V/Sm2+g2pI1FJrC04431/nqabzxOrUtJxrw1Mgiy1rIqH+NpjsDsziKLN7uKD4KuPUbShfQxuDa
 fI/Br/oXCiu5IO34qfqpGU4RWBjiNuaw2NP+OlP+3Gh0HM6VFvXJCAaQ4vZmsnqVdJgOh8+BgVQ
 5B2TtsfwaNJghcWIVQ6npJOLourgzmNckskS02u05uLvWDJmfWQFhGcSM0qzx9mXcPTw53iZzgX
 nfRrL2Bz3+PhLV0nB3FE/BgUshzhbA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509290175

On Tue, Sep 30, 2025 at 08:48:13PM +0200, Neil Armstrong wrote:
> On 9/30/25 20:43, Dmitry Baryshkov wrote:
> > On Tue, Sep 30, 2025 at 07:17:21PM +0200, Neil Armstrong wrote:
> > > The ports definition currently defined in the usb-switch.yaml
> > > fits standards devices which are either recipient of altmode
> > > muxing and orientation switching events or an element of the
> > > USB Super Speed data lanes.
> > > 
> > > This doesn't necessarely fit combo PHYs like the Qualcomm
> > > USB3/DP Combo which has a different ports representation.
> > > 
> > > Move the ports definition to a separate usb-switch-ports.yaml
> > > and reference it next to the usb-switch.yaml, except for
> > > the Qualcomm USB3/DP Combo PHY bindings.
> > 
> > Isn't it easier to make QMP PHY use $ref for port nodes instead of allOf
> > and keep ports definitions inside the usb-switch schema?
> 
> Rob asked to not do that... see https://lore.kernel.org/all/20250905175533.GA1000951-robh@kernel.org/

I'll respond there.


-- 
With best wishes
Dmitry

