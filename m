Return-Path: <devicetree+bounces-249358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F1CCDB4BD
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 05:21:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DCDC30198D4
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 04:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8ED9309EF1;
	Wed, 24 Dec 2025 04:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lTlYP3xM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K6+bjr8A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DC31DA61B
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 04:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766550087; cv=none; b=qyhW2qS27eBdn+L30Fnf8pLpOoH8GHwRvAYAKN38AUsw5ScQBhXoMZFH93Kk6Q/FxBYE2YLhaSZ5iRihcgo/jLC/kZRQyw4uMb+Cc7iXah/hlexxjVEtsSF/jwQfuQQocbbz68ts+IxPKlzd+nZ9xhZcDVHcWC6NLSpKTD2fMRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766550087; c=relaxed/simple;
	bh=YZmyL0O2bZVM9gC0do0mjqjp+/8OdloFSspnxeJ60is=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jv/dzQR70ZiOQuPOFPk2t5nXuVqDA9dTnCy6ZTXDU/gWifKtZMbRt1H46McCO2+LYDvTmN2QQD0okjE/UXFzHpgsx6SIWLZnqyP31HzupuIUV7xwSvIGZZkD4/YY3E/4aqBi4dWcQpMkQ9StBOtlAEWPAgoF8wqeX5QjHCQvZJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lTlYP3xM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K6+bjr8A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO3wKD33796521
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 04:21:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ofkguQf4TvOS9O0WufJ0bCuv
	Rtu8pSF8nHAmXM2OSw8=; b=lTlYP3xMQV7J9VLP4eroRhlq1EIyoKxujdBYzxHd
	YBe6Li+m7pS0CYhw2kMotswgtVQbDHYat+mHWEjo6XkqIc8uxbnmNkyRfAPgUDdV
	9QevWQ2VpUbD92aAOLauiF69liUsU/Vx3BzEVVbCCtEaJ0bhWSK9Uoa8L93T3oCe
	yNoByyjhss8ekzLytaxyNZTbDqKVxSFcGIaLfGfNA/6pn23nm5Wul5P8RoI71CDR
	nqiW9ptp1Dj7Tl0OJ2YF919Grg6j8rSjqZNboPBBwp0f0g055OTSgqe9Wgz+I5eM
	IHayCHmsoyjxQhfpefNTB6rqXL4AsrNxJwtDXS4hoViQlA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b88r681g7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 04:21:25 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a34f64f5eso174469936d6.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766550084; x=1767154884; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ofkguQf4TvOS9O0WufJ0bCuvRtu8pSF8nHAmXM2OSw8=;
        b=K6+bjr8AFIWxNMN0BcQewUUpI6AoF4iG6gH0W1N2t4FeE31MkRnHl0D9T1J4jVI82E
         ox0SaCh5XGhQafc/sP+ktITP+TOjS+9R+GnZw1gmeGAcVfRvcSy0quzQVgzUhXmIhGhS
         p1TN0R4nNfE38VtYVI4vswZ6XV4b4421BeQ0MIO9eTASevL+fBPymmDdRhK2vSF+eS9S
         p4PBJd574f5fEzZukJDEqO9YU/O14YIuwoDn1jQLEz/yuS+HvX1/n3yZ9T/l++FqBnkf
         90a+97r3josmh73ydMDWvQMCsnqNy9UCuQ53RU2ZHSXKF6LyKWZnp3agURaIOxcdp1vu
         3LDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766550084; x=1767154884;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ofkguQf4TvOS9O0WufJ0bCuvRtu8pSF8nHAmXM2OSw8=;
        b=OMYD8FfyTP7qmSmywDtOrDztulu9pmEvKExI9iRk7oturQgiL+yHzuvC9rBxN8jJmM
         gRdOMDzpd0q58fIgNFrJ+zgESidfR1zwpeWPJpdFmD8eQZEp+KzqdjBK4utVlXp6TkTT
         byfG06GLHhpHmwQWkJvILIRWLnZCUdu1MUPInXZdZ80OtG2BkG3wkW3sm6FZCFR1IXCW
         9KG0uCMoMwYVoP2aUsad5rLRmlrr1iZfdFr9JsHg0vRXPIBPLHNNQJGu71KxcCLecp3c
         1h/D1cWRjUjThU8LWjHUDEzKmpiYWZh4zeNFSBA8umAnr6df7oL1KnCkTu7DS7I1nUJx
         3y8w==
X-Forwarded-Encrypted: i=1; AJvYcCW4q3z/Li0EhaQ2ziUDJfipk/QxpSJGvydlwre7oFy5cpcuVp3bd0g71PDZUd5qpkAEa0PIxSiDZvOg@vger.kernel.org
X-Gm-Message-State: AOJu0YydTKDrrcQj3WE0RMkxl47qF/iU5XeWkFgn6pTyuJslbQtySE0V
	2ACi2k40iI4Q4MpVpxSuEyfy8brs/d3mbNbc5XcrvNS92qKfDM3/uJlguw9+cX1q90sCddFB+yt
	OSjbCRq8N4vdRnUTU15ceGf44ASKHUmpbTN3BAXKgnvd1aFxOTjEX+ciVEmhJd3Tx
X-Gm-Gg: AY/fxX7wiTO0++/v6ZNQ6WtSnqvLs2pk4YimG6Eogddravw1Dp0Hm1f3c6vkcTNMw+Q
	WuYCib5jlWCx6oxDPkgKOGT6vXg1YQHs3ZE1JDSzV6fbpyfbNCdeJmRq7AiV/okGZc14ODWMTLR
	G5puwCYcAUcqZ8FlKAqizD74jvZ3yaEigKQyQ/ZTj79qix+hbysVX89q+PivB/K6iPLF143d/El
	6JYE1gV8NLRGvk3REo9FjpMAssIqgbjsIx4WtLUMrOBAZg6ETw8Kodb2dJb207peGc3TYCktCjO
	cgOpIddE/TpO1QEXzxdPwYO16E1rA4kMLj04sBaAW5iVG8s0TeFOFYPX4EmKaj/vY8hdlQrozeO
	stM90JLLfCBLpUxTAmjHkI6zn+382Ib2q9FW6sVVwkqqC8wOVh9LtK4DO5DOC6dq2gCnqhaA+F4
	Sy9DPWqkwrc04njsGUqNd3lwc=
X-Received: by 2002:a0c:fe4a:0:b0:888:4930:7988 with SMTP id 6a1803df08f44-88d8453a11cmr185926506d6.35.1766550084375;
        Tue, 23 Dec 2025 20:21:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7uA6GLKeoNYYY3Z8kcaDJrou2KXuh4WQp0swjBHy3wu7JegQWMwwG/UFKclXwXpHAcMJzVw==
X-Received: by 2002:a0c:fe4a:0:b0:888:4930:7988 with SMTP id 6a1803df08f44-88d8453a11cmr185926396d6.35.1766550083889;
        Tue, 23 Dec 2025 20:21:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a186f957asm4550945e87.28.2025.12.23.20.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 20:21:23 -0800 (PST)
Date: Wed, 24 Dec 2025 06:21:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] media: dt-bindings: Add qcom,sm6150-camss
Message-ID: <eklzmnlnkanrper7lt46vap54u5giprsmwhwpr4am5ytwyohov@kjqvls5vjani>
References: <20251222-sm6150-camss-v2-0-df8469a8343a@oss.qualcomm.com>
 <20251222-sm6150-camss-v2-1-df8469a8343a@oss.qualcomm.com>
 <20251223-pompous-inescapable-sponge-3fc9f0@quoll>
 <c6174a0a-9a76-4284-8675-bb5ca78a7b35@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c6174a0a-9a76-4284-8675-bb5ca78a7b35@oss.qualcomm.com>
X-Proofpoint-GUID: WnLZJ94N0Jl0ZLvU1dfxWhjLQYZRZ6lL
X-Proofpoint-ORIG-GUID: WnLZJ94N0Jl0ZLvU1dfxWhjLQYZRZ6lL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAzMiBTYWx0ZWRfX1jVKBXlL7ldd
 uk7ECqwp2IkeWQG35f18v6fwSc4luOOEzU++j6LwK+mwXYhj4wUWRFpG6EtFv/mQq0mtqBXV6iv
 KhC3/p6WegaIg0YcyWMProS+OpZ7MITni0McqA1g9dx/y+NRcJS9+9sb0sGlzZq5qlVMYDXrrJ2
 tFIn8cKOZCZdmvFt5zifQLwd7z6CvoslBgxdJ/IXOkobP0GYSS4tJPhuNg0JfneqOZNSalS0IuR
 4Y/o7Vo97ssE/5Pp+Mb7g9eWE8zQJTJ2Gwj8IVJz7fwvyRBblk/dXuVtxaaartCqDrgOMlV5dxa
 SjiSqKEPBCrQMvKQVwYmopXpF/R6vVSY8HsK+0HB6u6lmNYCcrrrU7kd46rwcX7feY6/k6n3tc1
 XIDDS/n/febuP+tA3sp3RcFZuIVBBmW/ueQq2qHw0Ew5zSpuL8ffT7ac044UL8vS26EEqpv+vR2
 VFQajbYTHReLISfJkVA==
X-Authority-Analysis: v=2.4 cv=Qahrf8bv c=1 sm=1 tr=0 ts=694b6a45 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=loJ5KYtHhvZNDGzOWQkA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240032

On Wed, Dec 24, 2025 at 11:18:02AM +0800, Wenmeng Liu wrote:
> 
> 
> On 12/23/2025 9:38 PM, Krzysztof Kozlowski wrote:
> > On Mon, Dec 22, 2025 at 04:28:39PM +0800, Wenmeng Liu wrote:
> > > +  interconnects:
> > > +    maxItems: 4
> > > +
> > > +  interconnect-names:
> > > +    items:
> > > +      - const: ahb
> > > +      - const: hf0_mnoc
> > > +      - const: hf1_mnoc
> > 
> > Same comments as before, do not invent names.
> 
> <&mmss_noc MASTER_CAMNOC_HF0 QCOM_ICC_TAG_ALWAYS
> &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> <&mmss_noc MASTER_CAMNOC_HF1 QCOM_ICC_TAG_ALWAYS
> &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> 
> This platform(qcs615) is different from others. It has two types of sf,
> namely sf0 and sf1.
> The same as it is:
> sc7180 sc8180x sdm670 sdm845 sm8150
> Do you have any suggestions about this?

Which _names_ are used on other platforms? This question is quite clear
from Krzysztof's comment.

> 
> > 
> > I finish review here and ignore the rest. You did not respond to
> > previous comments and I do not see any improvements.
> 
> I'm sorry about this. However, the previous comments did not clearly point
> out the problem.
> 
> > Also, way you send patches makes it difficult for us, so I see no reason
> > why it should be my task to try to decipher all this.
> > 
> > b4 diff '20251222-sm6150-camss-v2-1-df8469a8343a@oss.qualcomm.com'
> > Checking for older revisions
> > Grabbing search results from lore.kernel.org
> > ---
> > Analyzing 5 messages in the thread
> > Could not find lower series to compare against.
> 
> --in-reply-to, will pay attention in the next version.

Or even better, just use b4 tool.

> 
> Thanks,Wenmeng
> 

-- 
With best wishes
Dmitry

