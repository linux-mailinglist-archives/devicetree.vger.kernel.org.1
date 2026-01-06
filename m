Return-Path: <devicetree+bounces-252015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 45577CFA1BB
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 19:25:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D8843276F49
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 17:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CF042C0290;
	Tue,  6 Jan 2026 17:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g7Tf7qlm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hMTHRVYd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6250228D8E8
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 17:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767720712; cv=none; b=klFJtGQ/VwIPqsLm3S7DFP/zwzLyUF31IFu0yz8o8/ALEPopYd/nNV25rSC4BllL3C0cEb7TpHfbyYQs5LcxOJeIXBP7pS4UMo4+24JppCdy1BPPgi5yN26nyLUBxpfXkOAZxcmKEXzkRdGOTB3TKU8+exOSKNkX7krirun/fEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767720712; c=relaxed/simple;
	bh=EGL0IOjXzoy4ERSdqnDv6XXP02+jdc63zjGvHi+5D/Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sYnp/7XY1cBFWrA7ymgB6t9dGwxhr1lrPn6zST8xHeMsBj4qBJDbB6+/yqhrEjbNziC+xIY+tPN2tvnubtI4GupRNTPQ0H9dLexMWypOL671Wpn1ADpyORRWkZ0yWBqC5j1Cd4IvcZ0uC6xXTINMy7zymjJJyA6TQ4HBgsOrO5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g7Tf7qlm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hMTHRVYd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AgQ9R1462102
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 17:31:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tR7f3o3xDPesUQHU2saQhPf2
	QeydtE64EkpRoTZj7tk=; b=g7Tf7qlmPp+umH1OgIEt2FQrpO5qwZlUUNF3FQZl
	HX1biqamPP+S3QFifEQzy9jaf2AY6vUJoF35oiXAOiRcf7HT/JpD4/pZg72K+t3C
	meDtBuSkuPUtpQRnlMI+BCeSgCLoRWGj5N8RRhOo6SsvbQAXRKQ5aOtEhqcE4YPR
	ygNhShsgBjdp+RDjAGGEWH+YOvuR9jhO2qYJ+ElfM8hMEzKhE2ZNzViBqTb49Tjw
	g8keG8le3o/HfvDI8obGawr+Rnl4TKuHIH1Kg8+DmX3jYJUlfvHZ3VLXqFo4lL1H
	x1kiM89xYc8xh3TUYxYELjFWUpGO4KxiTuAZ++/yYVIrPQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh0vm1676-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 17:31:49 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee1b7293e7so43819771cf.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767720708; x=1768325508; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tR7f3o3xDPesUQHU2saQhPf2QeydtE64EkpRoTZj7tk=;
        b=hMTHRVYd2Gffm7CO+R3mIjmgQU6ouV5rqGmY0YyIhFNC+TTNFoEWOt9QUg9od6M3fz
         m+iwYed1eAq6BRJ1HJ8ziYkHr5SQAqqLmVUyWHNjnJVFexoTSzSSwlfkHRSP8vUuVUGt
         yXcNUoOA4Wwh7pRgG/OF93H2n3Z6gMMA+hI+QtedlJorI4tV9tutrPedGcXzfzVdpTI/
         QdqBF17V8326BeqUuRdIhqWrsmBeBgMALVptR4hRQ2ErUQD4YFHZ1JO9LBfuHqDqFXjr
         Se2EvLCgM0KwOcH8BLlTHtB2ZgUhceZpLxVt4toAh77Ys/XmwNX+u+sUGFqQT5VeIUG2
         6LJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767720709; x=1768325509;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tR7f3o3xDPesUQHU2saQhPf2QeydtE64EkpRoTZj7tk=;
        b=PXf99Tkog27Rl+a0LT9C3PbbwdJeSpHQufjYeth+uQfS5HZcfaLogfEHL62xZ5Q8vF
         s6z0U41OcS4mPcoyA7nkYjDPLtzhFxzirz9Jy4sFVTcJzKbbLRPPaXvRUAHC7qvYEVYK
         Vzr7KpGXOZ7EvJIYt0ii10K1YyLShLOFaa/88tjiebWohEhapLbnAcjdgYSXaCTcJHAB
         XhNdXrsqCWalyWuRzdI65soKLs/pR9CDqgrsTLE8QklXyDqFUMMBemmh216BBHtAWiP3
         CPjXeiUcMrGbxo1Mx0XWupzHYLs2hy3B5ZPG9b3X8vp9knJWBktfFhpPkiSw0jX0X4AD
         Ss+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXsnFLyFz8kUqhlv2xElYmE1w2yagbVM0cDXqmMgfJba7Ztbbh3hCAPKLxurUj0IZWE4CKW+FgsejY0@vger.kernel.org
X-Gm-Message-State: AOJu0YxTl7oJB1vuq7l8nTeAWlOMml10wUOzZlWQcYIx2jLwaNZXy3Mu
	xWkb8V6ujX9SOHkEsYzvuQqt50m93RpePRgHanYryh39kVs2YZqVafye1N+bT0nd2XSi2dkP/xu
	RFbhIeX4p+fHt05EZpmBPK1TFOzlx1dMwu8Mfax2T/vphuJuU0WYFNBFHAji0D13o
X-Gm-Gg: AY/fxX5gOs3bZAvVVyKkU9N7gxXyKc2hkGctajPER0Va9Hwf+IwSQQgbc08Td4AaLBS
	NsKub2Q2nN0haSTlGxehBlRwXdCZVtQxSCujkIMPp4iJ6zbR1rf1pbQj/iE1H7X+IxpNfHBWPFc
	wPCROce9OIvPaeCVzVOwGSXCiNKi087njUrjB467KTLcfTYqTvnozU8XwDw4zFHqAO5VuKo672L
	wubfwGrhry3zfknUDElPLFI8iad5C6IGhgwOZxVLr5A9hrrWc2K22HuYPEtQj1yEHv88d9si1JA
	4HpX+m5gZcdl3ZYZUXIWZjnM2xmJvM5TKiGAvSUSRwRQYmisRO6D8yb6jKsog5RMFua0FAIaU0T
	HatzxLSKe7y9CS7gj0GDA
X-Received: by 2002:a05:622a:60a:b0:4ec:f969:cabc with SMTP id d75a77b69052e-4ffa76a115emr42211111cf.10.1767720708524;
        Tue, 06 Jan 2026 09:31:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHjf7OwaOn3HaZf8IWNrZ2eDSIxGAY9pKKIzvqd/zwCSP5LN8zraKCLgL67UkescNPyjj5pgA==
X-Received: by 2002:a05:622a:60a:b0:4ec:f969:cabc with SMTP id d75a77b69052e-4ffa76a115emr42210511cf.10.1767720707970;
        Tue, 06 Jan 2026 09:31:47 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a51183asm282053766b.49.2026.01.06.09.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 09:31:47 -0800 (PST)
Date: Tue, 6 Jan 2026 19:31:44 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@google.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
        Bill Wendling <morbo@google.com>,
        Justin Stitt <justinstitt@google.com>,
        Russell King <linux@armlinux.org.uk>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Madhavan Srinivasan <maddy@linux.ibm.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Nipun Gupta <nipun.gupta@amd.com>,
        Nikhil Agarwal <nikhil.agarwal@amd.com>,
        Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Vinod Koul <vkoul@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, llvm@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        linux-clk@vger.kernel.org, imx@lists.linux.dev,
        dmaengine@vger.kernel.org, linux-media@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [PATCH v2 08/11] clk: imx: imx31: Simplify with scoped for each
 OF child loop
Message-ID: <x2md7iusj467bjmmysckbkehooua3he652qqwr3yzaoka4sjm4@pk6uy7hq2lku>
References: <20260106-of-for-each-compatible-scoped-v2-0-05eb948d91f2@oss.qualcomm.com>
 <20260106-of-for-each-compatible-scoped-v2-8-05eb948d91f2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106-of-for-each-compatible-scoped-v2-8-05eb948d91f2@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Pa3yRyhd c=1 sm=1 tr=0 ts=695d4705 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=_Ixbbux_C5oTi3JCwyIA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: WkQhRhIn5f1MtN9Vh-xFiiCclXnt2XUB
X-Proofpoint-ORIG-GUID: WkQhRhIn5f1MtN9Vh-xFiiCclXnt2XUB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE1MiBTYWx0ZWRfX56QKQk4tmQhr
 Mflr6b4YfwKDSOyFoekTmQA12bLUtPTdvoPBlHbT/6H9Ns1C2pQjamN1cf5TSfqZxFXgTQH291/
 s+DFPMIH4iC8GpWH7SwZDupBlqnzmGzBokaTFBVlT9hTiqHNXEoS8kZ2wukODveFMluGyXF3B2V
 R6Gn560Y/frfUGrdzG4YS+9U1Mv0OsMkIzstpFLL/fuegZ6BP62O2k7cZwrkbujwbTloU3G+D7n
 r0RysHdiX2b4Y3+0lAPcq8TIqEl4pBDG7Yi/5+yuYzKB5et3MZ683a7z4RNNZwOkyHSJxeMdrMM
 GnlcR3X84M6PlRj6SbUOgRfoHqKpQhLKAUQNGQrksptkcZQZAsEPmGKFMkYX8qYzdqM8qHKrWY5
 BdlK9OrLwzp67SZ40xy7W58BqoAhaSKDf6e+YAz0E8p8w4DmzAWqVL1hyPq6H3AVlKgsq6wO9/T
 Kb+1yDvxkPaeQmK7GpQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060152

On 26-01-06 10:15:18, Krzysztof Kozlowski wrote:
> Use scoped for-each loop when iterating over device nodes to make code a
> bit simpler.
> 
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Acked-by: Abel Vesa <abelvesa@kernel.org>

