Return-Path: <devicetree+bounces-215519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9767BB51C06
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 17:42:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C0831C8555A
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 15:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E782F30FC2D;
	Wed, 10 Sep 2025 15:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gzxcu9mF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BEC311969
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 15:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757518837; cv=none; b=W0Kaafg3csCoOEKWkML/bE9c5RXwC2z2lIXm1XFmiZ3Tmz708Ce61R6Y8xk/7Wg8hMljx0SWjFzw9wW3RlLtKph67gB4B83GYxmnbG39CJe0bJEaAZYkGtQnX2Xc7J7LHdXn8g0lKmQmJ7HegUzUEECxYVQmn5dTCmlcFpy79TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757518837; c=relaxed/simple;
	bh=hVO2+M1CjyDTcr6hYEq2/ZhVHSxpZyBpTsRag2acXao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ill0qwhFYBlvdReRPnYGlOf7N4sn7zlW1KvZhdGoeTdvNOTsvQ7UOpHpiG552K9ht+/BjO0r3Pj9w5WYITDBOtBmQA8pw8U/W0CiXIbOuPpfIWfTI9OvlhjgdWndpXYdPLtcYZz1qZLIaS6IGKb1qMzwORBUtE6Qn1+frCmOoUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gzxcu9mF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ACges3024538
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 15:40:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pN4pFZtmgQrocgR3Dr7GVghq
	e/kLxGp7oEbuGlqoA2w=; b=Gzxcu9mFU7vszs5KdS1iPcesfAQcSQBrPkJQ+gzz
	ViLrnjgDYlrurs2dljz5lIRdfPMicFAjxliLXy4Lapb5gx8RASb0GbWEFuUuZgiY
	8bApGWGn9TiD+vhYiGIYYSWgupctEyhaN5qZrqVk6KYgNpnS2/Wnn8taaVNDYiJA
	DZWdlM6i3Pak8KMA/GJWsFh2MkWjpClUFOQecmyShkRp8Dv2ih6HuR+gO9rDkVh4
	hqc3AzmVwbOsB72drkgd0VtzQtmUe/7tHf89bUHyWJrYVJihfPhMD0hT7sXKCaUh
	W9r59ToeVT5YuxUXWw1znLKuWhZGzbnjP1BEUHbPA9426A==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m47jy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 15:40:35 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-725d32eaa99so218494606d6.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 08:40:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757518834; x=1758123634;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pN4pFZtmgQrocgR3Dr7GVghqe/kLxGp7oEbuGlqoA2w=;
        b=cBBzRzz1+/S3kyiljimQs6ZBNeCdY9HAt74hiG7/p/XHVqhqtyWRcEj4+2HEUZYKpR
         N1/mKPmf/jbZShT4DUy5y7+58ua/vd7HgdE10VL0kvOxg2sty9Fe1vE2Thev64YwBpSZ
         wU1L4s7Vv48Z56COytGGaTZFoeF2Fl/4brgA5okop6tDiH6O+Su6YJDYWjRgUeCN6lKc
         cMMQboOGTaPNf2uMq1eMaA3C5qQkSVs78oDbCr5r584L5G1vlA7qLI7SCCj+cxap2YJy
         auba8mO2oYeB6jpOortFO77ZUfXy+ogoRs+pPCeEeSZ+mNYubZ9755n+E2vG5TLmzCLX
         IPbw==
X-Forwarded-Encrypted: i=1; AJvYcCWNvlPBXLIFDqsw2Zm98V0lI5Lym0D9ft+0LV11mrF9wFTlU4fk7D67E9RRRKlvOoiq0n1+ab2snkC+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4w9b3P36yQH5cplGNqpEoBXxImCVm16VM9fdjM1Skw5bR6Mg+
	k2v0Qy1Q/TglJb3iQHjMQLoPun0hVfoVfWk9flTfccgqevXnMpUtW798773wrYsqa7i2b5f9OLg
	OJv0T72uo58RZx90qR0F1yjUm2B6aHAi8OobGBg+42TXvGz3zE3oyTxAYjv4zxl0U
X-Gm-Gg: ASbGnctVe88WNj+izbedvVkvuy7uS5976UXcl0dMkTzYVLthIFBWVrRn6EFTlyr/TpC
	0NqwVOxnX9mPEsl0NRkxodpfxeUOvJFuEr3NKZ2CMf59O09JPVOf3pFYcUBvl6+9mShpZ7rOtkq
	9D8LmL+lRsZU0RuQPOTt1gd95o/i3VRrO0pyQXoc5/j7XZD3WdS/nZOLdp7BEIGswkZQYM1Azft
	SgWrDtXuG6tDRgo5hSy5OSE+pSj+bcCFIZ0avim3m1A9sr7xX8uf8uLQm9nO3+poAiUBbfI1WDx
	uUxk2ZWoSWM6UaETm0Xy4n69rTv5+9Jj4l7HqfwzwyWTwgqbJCMdMcEL/BVbiukVyRX5VoxPHyH
	fib0nP+ak10pRgPlSLTF4oNB5gEzSubPsDcbN03s6Bqgn/+ohTIQm
X-Received: by 2002:a05:6214:f28:b0:75c:3592:8c9f with SMTP id 6a1803df08f44-75c35deda13mr49159796d6.2.1757518833985;
        Wed, 10 Sep 2025 08:40:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF905L8VrU+MKuXIRfhtvAkXP6gqp4CpnfFHzrpoC1as4rJ6TJsh3mY1ibNxJn0xDJi+fHWeg==
X-Received: by 2002:a05:6214:f28:b0:75c:3592:8c9f with SMTP id 6a1803df08f44-75c35deda13mr49158976d6.2.1757518833265;
        Wed, 10 Sep 2025 08:40:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56818445507sm1319770e87.109.2025.09.10.08.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 08:40:32 -0700 (PDT)
Date: Wed, 10 Sep 2025 18:40:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Nilesh Laad <nilesh.laad@oss.qualcomm.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
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
        Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, venkata.valluru@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, Yi Zhang <zhanyi@qti.qualcomm.com>
Subject: Re: [PATCH] dt-bindings: bridge: lt9211c: Add bindings
Message-ID: <5ngac5vcgo6duvfalnplagh5f6eqsxbittntmltzer3kj2vkrl@o2fxfiudcj3h>
References: <20250910-add-lt9211c-bridge-v1-1-4f23740fe101@oss.qualcomm.com>
 <df3067e4-5597-4557-b61f-26afb7d731d2@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <df3067e4-5597-4557-b61f-26afb7d731d2@mailbox.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfXxwG3LE0p2Eik
 ihjjV1XIP7j0qCmaqitDddldp4AL7sOAHCEOgjh+IEgTixp0625RDPHAP/ZXWLKQL/6+9FEfDSB
 gB+wfbL3896+wwM57jDCDcCYHP0nCaH3l2cSlfDMNUNIUTitTdy9R8W7Sa/x/sBA18mN4RCtlWo
 VHyohMzqV7Ywcsw68lGKp/D0sUM3vFH0nXSjoW5dk+/Ik4XFhpqmPUxqGhPO1BAEXHrY2Xo4bV3
 NtwmdgjZuvLzbXmfpB50FvkAJTe25rCUXWNSy8+KmJNsid8yoZD4TeX6FZa09Xiue5XHZFCgGTk
 jNM8Khy37Vz1uZim8uGAbMjch3kaoCnnLjjXtpHh/r8319kzU1Cqi5pKWHPHcl2No1g0TXNqTjz
 zCUHhf3g
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c19bf3 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Keg3OKSH5Pxz4YLYaiEA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: lC-d7SBb2bjwsAbMH5n4pms4SfFUu0ju
X-Proofpoint-ORIG-GUID: lC-d7SBb2bjwsAbMH5n4pms4SfFUu0ju
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_02,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

On Wed, Sep 10, 2025 at 12:18:41PM +0200, Marek Vasut wrote:
> On 9/10/25 9:37 AM, Nilesh Laad wrote:
> > From: Yi Zhang <zhanyi@qti.qualcomm.com>
> > 
> > Add bindings for lt9211c.
> > 
> > Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
> > Signed-off-by: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
> > ---
> >   .../bindings/display/bridge/lontium,lt9211c.yaml   | 113 +++++++++++++++++++++
> >   1 file changed, 113 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt9211c.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt9211c.yaml
> Can you extend
> Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml instead
> ?
> 
> How does this chip differ from lt9211 ?

And more importantly, do we need a separate driver for the chip or can
it be handled by the existing one?


-- 
With best wishes
Dmitry

