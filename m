Return-Path: <devicetree+bounces-255035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF6FD1EF37
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:03:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B9333002684
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0128B3557E7;
	Wed, 14 Jan 2026 13:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GucrZAKY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ahgv7t0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB1A235063
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768395731; cv=none; b=ht14+vM3F4iGt99kGnWr9zeAHRYBnX0MRY0tcu0avl6vvrrc0MuFpxVArUbJvV1tqJzmTCT0LTgnDCI9BGnOojetV+14i7em1DYFN7lEa9+4q93hyE1oxeL/0xFgUVJb8QmbUDxcwF3ZprT004zZGBfrrslBPCp5dONpgWKRcw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768395731; c=relaxed/simple;
	bh=sD9lD5wb4oL54obmEZfcsV72oWhEv7t1KvFAr0Lh+I8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qq1dL314SrvqrwZ84kboAwmGqNKXWjU38ukhly2BE1AygCNN/BT21p4fOABDU/qinvUHt4FO/pilApePswRQmn+ejuVxnAPgdXxFOAUOMF3B3pj5dy3f3sfTuTnHdfJdGNPhntzZQqqMe+6dkUJ9CCtvvSjqhlDkb7XlIwdI6nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GucrZAKY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ahgv7t0u; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E7jKT2147934
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:02:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7AVkdAwzTz15AVGc6zGzqmSVEPx7IpTdFQTllaA8Exc=; b=GucrZAKY+oSiaDfn
	f/ihbNSu476xRKUei314nWlb7mJlzMi9jMnRryjguOFOyTN+ZC4GUjU3lfwaZlSP
	xLh2JnVrJI1rPGA6xmJXP5GF5Gyw3N0mXQMH+hDmM4o7CZh6AyqrwoiezpQPZLCl
	MV7DIj70gKgrzzjO7nKwhRJ38GlpxZJa8SnOp0m3oQai1C2y0K1NoXMyMlexDt7B
	O44ud8ZbWeUYHpt5kLoKfobjkSN59cg37qzZtsLPDJYL9PQa/7lwphvmnFmWuqaQ
	OCl4bwzwLbXjXy7Vq36lY72JiMkbXI5uGHopUhaPCT6THxHJrHYV1F/Y/+/PVRnL
	AJ5/Kg==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp6rah60r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:02:09 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-56345323f29so1017638e0c.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768395729; x=1769000529; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7AVkdAwzTz15AVGc6zGzqmSVEPx7IpTdFQTllaA8Exc=;
        b=Ahgv7t0utTCGqX3//hijZohVVLyMDZCN/nSKzilXHSQuUPXV73E3lXzCztGc5VQLIZ
         bnuFWHnpeNFSQqMmlVoE0yv8bYIOdiBdKmV0lj+jdumCr7pdiyxJH3Dd1mnyqSuEVFgG
         2fygiau7WtKuI+aexJPLbNwjNATgbt9DSLTIg4XBtlUNP75pHAIlEBWfigF5cntZxYV9
         KyrRcYpDn9/7rvJqkBeZhXVD5E350xYytfe7Jmkho5w+Z1MKx9PrIpFayj63DDUK5DkO
         97arMcqKeaq1a9g72unszDS9owmpAjqDnDxvmnMtiGJ+Gjx2cGyadeO2sQGeVsE0OMId
         td8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768395729; x=1769000529;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7AVkdAwzTz15AVGc6zGzqmSVEPx7IpTdFQTllaA8Exc=;
        b=xAFFp7TtnUW1U30KfISpFlby7DiwW6yAJwbQ7UzixnY35dORZpWyVRkmWZrmRmXcdq
         BWGQAB+eWVBCg6Rv+mzMgLxGgAkbNIW4jDgmkmgO26Z0IPLZd2Cn8oEqDI/7WOpoRne8
         fYDsZkYWv7itYWJSdy+WQC5hu0UalbbyopVsWx4KqFYt0LsnIlXRhUZLbgmG8g6XvgEF
         A8x2kBMVXJ9VO2hAO9ymJQnd7o8cyKTDDYIYkFgm1XZc1Uq1hH4xMnUq8aX+HckAs7Th
         9HboqnYm8vaiFl4xa9PGXPTpcJ3OX+hZlxP4wf9me/5OVcbgS0C/FKVhJh20sG3AZ2y9
         uFuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqDBfizIng3fIkyTA0Bfat5zjrVEv4PJR/28d5ectG57v1eKo7IyH5rf/J7G6MUBILv53hsKuqePq6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7FAuWRADOIYGGlR26604tgGhYAN8IFQdcgfcEoSvdOTl4kDZ6
	Xuy6HE6NwAKfv84OWC2kBHKdt0wvNF5Aum0S4eus3npfAutel3ZeL6NRcFUYY17QYWiiIrGfU+M
	kMuAdvQVg+06Aitt+OQz2PImaSJYi3CcmWrl7wzFcRyeH5lrPfNBkp459wEP8Ybpa
X-Gm-Gg: AY/fxX7mlnZqZ1P+5HCV+9zRLSWb9oA4HGpjH57W7UoYx4DIzYUgaXAMJweV3eGZXjA
	Y+qjDWoSp6HaagZ0BUNbxYclzYjZuMw8foA/xrjK7NY8NFnu69HtFhm1tVQRu7M1QQX+Ivr9lkE
	8YOxU+RxKlU1PAsxXOkCAEsSrdyV3ckj6Cc0LgVgpogux93y39jPsPZ3xQX211DJF5edSqIlpts
	ettTsDtUm9zDdm0Bc7tBESbdNCSTHSIu4yOYbXOvPDPoSs/iXqtrvXPAHo0Zl2lg9YmNYokEiEA
	rdiI8DOVdyRpziX9ysUSsjGCmIPJE/4AGC5KtXZWKjOq71UBzOpT5xLGjE0+K/fwgNubNdYy1w6
	/UDDvzE4NvYxJZ+Sb/rs2mrzC2xYu5TMd0mBXb1bn1uf0nsBZmLNJPG5593cbpCeHTZnkZiATSx
	LX6C6GjO2rT2SqDPER8IGyDu8=
X-Received: by 2002:a05:6122:3c84:b0:563:5b70:3707 with SMTP id 71dfb90a1353d-56395c89911mr2454754e0c.9.1768395727487;
        Wed, 14 Jan 2026 05:02:07 -0800 (PST)
X-Received: by 2002:a05:6122:3c84:b0:563:5b70:3707 with SMTP id 71dfb90a1353d-56395c89911mr2454683e0c.9.1768395726881;
        Wed, 14 Jan 2026 05:02:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba101bcb3sm676215e87.21.2026.01.14.05.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 05:02:05 -0800 (PST)
Date: Wed, 14 Jan 2026 15:02:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yedaya.ka@gmail.com
Cc: SzczurekYT <szczurek@szczurek.yt>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Kamil =?utf-8?B?R2/FgmRh?= <kamil.golda@protonmail.com>
Subject: Re: [PATCH v2 2/3] drivers: input: touchscreen: edt-ft5x06: Add
 FocalTech FT3518
Message-ID: <bqlwe7fx4kzj3eie6hmffxbr3zqezxsdbnswg3i5bpnz22pf4e@n6ogchhf7cdv>
References: <20260114-touchscreen-patches-v2-0-4215f94c8aba@gmail.com>
 <20260114-touchscreen-patches-v2-2-4215f94c8aba@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260114-touchscreen-patches-v2-2-4215f94c8aba@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEwOCBTYWx0ZWRfX4E4eA+rgw0XK
 dl6PWe8jl7MM9rHRgrafE46QJRLRTBpwDerx+lZ4/dAm/Orj+O0jWDKd7txUpylasM/6kHMXlcX
 HzA2z3mDClwxy2kJDwglqLU9k2lXee0sJ6bBnL2cQzCPsO0U9Mq3NLYXsmOQ5ggfxytw/zH6c4s
 PILLJDDcasFU1pC9ZaOqyPQsAdamkUwrzacph1io2kCg2mArGT2OEkWiUI3ah+ihHuNTT8IPAaa
 FBmYt2Nw3GSCRqGgS+AEcIq433ftY7Gi7d1FMU63a9yO5AAbLkvWz/J0/7uzBU4P7SggWioMnkK
 3m5p920z6zwreV3xwv9hFS65X+mC0u89+Bcot0Fqz8rn/kNtdYLsVKQBmnPtTVKkIQ3gVPp9YHg
 q/xiklYhLmlQgl9Tj/QiEZ6vUwFrW+yb7xQbjF26CIJ1JWBTelnPzigqXsF8Gi1f1RXVsvbsjEN
 AFljdsaHY14G6kK5gtA==
X-Proofpoint-GUID: woHeCC9ucVDPROsECqceP5OMLad353OO
X-Proofpoint-ORIG-GUID: woHeCC9ucVDPROsECqceP5OMLad353OO
X-Authority-Analysis: v=2.4 cv=L/EQguT8 c=1 sm=1 tr=0 ts=696793d1 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=sfOm8-O8AAAA:8 a=EUspDBNiAAAA:8 a=ECEyCYeL1hbWFqLZ0VkA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=XD7yVLdPMpWraOa8Un9W:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 spamscore=0
 phishscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140108

On Wed, Jan 14, 2026 at 11:31:07AM +0200, Yedaya Katsman via B4 Relay wrote:
> From: Yedaya Katsman <yedaya.ka@gmail.com>
> 
> The driver also works with FT3518, which supports up to 10 touch points.
>  Add compatible data for it.
> 
> Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> ---
>  drivers/input/touchscreen/edt-ft5x06.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

