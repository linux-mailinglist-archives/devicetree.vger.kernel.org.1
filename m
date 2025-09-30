Return-Path: <devicetree+bounces-222861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDF8BAE6CB
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 21:19:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A300E4A0C54
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 19:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23BC726C3BD;
	Tue, 30 Sep 2025 19:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BPwEgfA1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57B423026B
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759259939; cv=none; b=mU6X1NAVZlHWJ4u/lHPA5uTMM5+j5It3gLweum+5GwyAX9y4Q+QVQPgayTq3bICJznHxteAanK2G7lJmwgS1TUZS6hKhQ2LTwKJ5UW5hBSjFXupJtzZhiEwdrv0AjZ+mUybIAb33/FwWORRNVvvi4VicstScwCuwL8dyOAPXUWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759259939; c=relaxed/simple;
	bh=izfbnzlzSyjBSv5vKdO4GxMyF9X2UW2sAFXPpyZQvlA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jx5q6+2GUB7j8YRt1mw/dOHy4xpQEnmZ+Sv6yVOWh9zEZnztPpoSPEacy6wZOXOCEdClmc7iQcjR3cb45EEZEqimnjBMrgdh14IEtAODaxE0yabNGIuAaL+ZWETKZyPxiYVfxv4gbXl110k0tI0FokB+PYG2QVRZxB1ZjHy/Eyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BPwEgfA1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UBolnb027554
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:18:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b3HSSCY3BzeouIYSvqAMslq5
	J0hpPQL6K38VBvDOEEg=; b=BPwEgfA1B2X2gh/SfacmCPKY53mRKPlvNRRKVmhL
	lNVluS/yzDR6ofN8nWm1y/qVGKeD9g8LUfcBj0l0azpeqqmOAbw+QvSNrtJn3uI4
	hUHqOr6Nd+SukLUatW2P+R4bhRmh/HsBVtkvF/sTyuQCm4l8toHx1LL6PLTMzZVf
	1WWuaq+P604dPZcupkl+ixqchTEooXN92CEbkJqXBKT0GkkWCZvG2rvESl+yVSpw
	hOUZ88ExiH0L9vdu0bK2xgcdZlqwd7SwAy7d0FG/G9bwp1z0kv5BQNlk65waM0Vl
	Fw2T9oBF6ciPrwvsEwwsg9tp0zSBevTKbhMHYE7/K2ThvQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e851j5p2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:18:56 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d9ec6e592bso127177641cf.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:18:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759259935; x=1759864735;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b3HSSCY3BzeouIYSvqAMslq5J0hpPQL6K38VBvDOEEg=;
        b=KH5nNe7LGtojnyTfUwiN9gazd0DLlLT7kq0LkBEy8j9htdHiAtIW+Sewpmz7dWGAgn
         iDHDbYpQ0AGgC+E2Zg349rPejnikYfIUHsoUvziPE8KC9PSqNS4O7rev44rqIFWvL/tz
         q5KN9CbLu7u1aBtWtYy2X2jgUyEh4pjTcM9U/rrT+IzL26VTzHhGkVGoqecjwbofzKe8
         jYGbFLRjUL6hKljJuXANQEaRvI8lH0CLLCyQy+DrvdU5eVSo44dD7sNW9ZqRcboY8clp
         UgmdtXGp1Ey57Qg7X04c3vekKm20ItfsqCurN0FgJ7ZeZuJQ4warMjnUS8/PAKTzVOIz
         zlng==
X-Forwarded-Encrypted: i=1; AJvYcCVvdSTuqvZT1AL+/AAt9NWp3O4j1s21DSDjNOyhjFFegZCYlL/LEOz2DW1TCZJmul58n+p7d0LmWcdE@vger.kernel.org
X-Gm-Message-State: AOJu0YyX+J6PrM7YtvVQsUNdp2bbtoCUt+WYU+e696bYGoStBXxKKO+8
	+bBjpGN2dQn00tzl788/+V6N+d//dqvB0zSk2DmOSNl/DiZd7vQHkaVaLg7rVq9temp0kkUyh4k
	Dt4kaXQOLRRaU2l6ZxGKhogA7iuPBgiJtldi/TwcwE5qp/0zmQkFK1/fXqh6BXMK0
X-Gm-Gg: ASbGncsheVVK99QzQKmRSJ1Yw3p3BnrtmAZXPgIQbBl+jaEmSnLfyvhjvyWNp/JSXtl
	4bKFrjL2au1FWCWQOtOSjmMKVUIfcy1FE5oRsKsazNCVB/JhSbSrtxPZpA/BcLsGpxfRIq/uf94
	bDWnHx/qcC4pF5CCUP1z5bs+pWHvwLDcx9D/az88tRWkyxWIcU9XfhNVylwtUw8uuUszP/8C+lQ
	YGoyrjWdnhvLCG9bGqnBXJdL1HkzDhWrTMeJOGOS2PFooBX64TGhWSkM2kSVB/AovJjIOlCRG9r
	b2WfEY6vW13j9bmSA+gk/dTrGhhBvmix7UALIJq+NmWNOo3UtqIqsAI649aE4+v+N5XHXCi3Zwf
	6YUn6e41/52b+VyvdNnk6HAKy8vMWOfjsOgHbRYywGTMVGhHX5u1+vIBhFQ==
X-Received: by 2002:a05:622a:996:b0:4da:155a:76fc with SMTP id d75a77b69052e-4e41c1605a3mr12806351cf.16.1759259935588;
        Tue, 30 Sep 2025 12:18:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFU8H+8JzMJ4Cr7XjJBZKwrmv2+lYNhsYSRGh3SqNZlsjTX2qbZYN49I9CHFceXFmguOAZDPA==
X-Received: by 2002:a05:622a:996:b0:4da:155a:76fc with SMTP id d75a77b69052e-4e41c1605a3mr12805841cf.16.1759259935020;
        Tue, 30 Sep 2025 12:18:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb486819dsm34339101fa.5.2025.09.30.12.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:18:53 -0700 (PDT)
Date: Tue, 30 Sep 2025 22:18:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Xilin Wu <sophon@radxa.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <o6iqlu4wuz3zqzkyqrp6nc3r7bi7uftjzmyjx3yvcglmz5sdfk@kbv6oacs73qr>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-3-86a14e8a34ac@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-3-86a14e8a34ac@linaro.org>
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68dc2d20 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=mli57nIQh2RWQkMICy8A:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfXzc8+EWrsoruu
 KbSYkVRVOqLCCVSizJ9PqPA6jBCxCqs9a/rXSQafeYFJx5Nn2rAD8OqG5goh3eRaa81BZESs9Jo
 NYb6V8AnxisJUUjFtISKDzxFyVpc+vo55tEMhSvBFOvkREfH83JycU9H7BMznO1+0g7Sg5Ie02G
 iP9wY8vKKpnqPjoOErP5JL7AMClpvaF0qgTT7SRP26x3ZWgqjqKe1A7fWVi2PrzuXGrl93PFxxL
 7gsCdqMQCazfWq4HjKbYTWTl8W2MFqT34bCh0Kw+Q8TX39BXLExfD+HFkM2kJNtUJlx6f86oDw7
 seYXBH6JCZ/8QHJhAfS7OKHerDMRpH/NqmjgPbRYw6KdlBv1yyu1ja3kPu9YPVJvuqCYGnvQqEm
 2dfBCzIn24kR8nNdkeXctOvXuVrw0w==
X-Proofpoint-ORIG-GUID: -u715ju0Wu02YYrRJRTJjxt6ztz1q3FT
X-Proofpoint-GUID: -u715ju0Wu02YYrRJRTJjxt6ztz1q3FT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032

On Tue, Sep 30, 2025 at 09:39:49AM +0200, Neil Armstrong wrote:
> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> connected to the third QMP Combo PHY 4 lanes.
> 
> Add all the data routing, disable mode switching and specify the
> QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
> the underlying DP phy.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 81 ++++++++++++++++++++++
>  1 file changed, 81 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

