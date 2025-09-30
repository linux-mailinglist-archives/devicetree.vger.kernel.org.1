Return-Path: <devicetree+bounces-222860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 145FABAE68E
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 21:13:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9564419443A0
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 19:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 645382857FC;
	Tue, 30 Sep 2025 19:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e17CAAdP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C574A2853FD
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759259623; cv=none; b=ns+WMKd/aY2lMJK5QYdHkbuRfz8TH1Kj/tpNu1Ho8ubUb4Tss65gVam/utiKq3VQ7zgMJpWQoFOzxow2l+OGxOoVtgI4EQrqFaG+drkCYQG73S7D2UW6H8vUhtWTSyPdbuMXZcbrjiIj7Wl40NoBxutX3yl2Aoh3Huovqp5ALUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759259623; c=relaxed/simple;
	bh=w4MMi2h8A5GX9+b9Jfk6wj8TawNywWGn759hh7b6Yuk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GVchAoxogq02n+ElfCZu8dTl+X3RZY7sB/iyRCnYVqdor++xUiqGnnPljBu2icgwuwO6Vk2/eTnWETexwEX/aBY61Wsj6vZ0JEmZwXBQeoXFPZFKBRxYW0U0bIHg3mg9+aqA5ha19pDp3MgV6AuJ0Gcvtiy/wKxbO7fOB6PtP/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e17CAAdP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UCFFuR021155
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:13:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xSV9Cq1e9SR7LQlW44w+/ize
	/XOY0Num8chSiEvfZ7I=; b=e17CAAdPmEViiiRfz9DjP7RWN8bu7dQFSMUkU5At
	rqFHUetkJCwyTtYhVlMAyzfNjmQ+COIt0RzoX1LbuOQBVm616mGtDPTsEOZo/cHa
	rn3O33q//t2dUqleoTN1Yn2BSKwsu/2dzUTc2LVbD3uaTn58OpB4+sG+Rx3zfI6y
	IW2gAyQAQUta8xwKOG+Bwe9eUxSESA0SNMNA4iTS7i1lgsxOJY17i0u5tDWGqi2X
	4PDWUEcdJhCZ6m85DefF7S97zf/ylZogMYoJE3EyqePdM8mmw5zhX8Y6d6/8Fk77
	+7XnWiNhdFwJyrC6x98xfWrZbmMt/z/M9skQTSZBAX8ybw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5tb39-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:13:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4dfe8dafd18so117347061cf.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:13:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759259620; x=1759864420;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xSV9Cq1e9SR7LQlW44w+/ize/XOY0Num8chSiEvfZ7I=;
        b=akx5O81zon6kZnW9ljzlUcB9blKn5/OtsrL0ds3166ObwHLW4hb+xB/AYmS/Z+ZqcZ
         lmm2PKiOelOZHXu2SiWCspTin+BfmI2oFstWvt3YZfpvSIDJPb/01c3xb4+Lfgxzh1Nz
         XjudBNtxNjLl5cyKPzbcbNx/wxBYpcqIIvF20/Wu/sHsFSE3+UL/9tm0KqJI6ssh8TQB
         QODgU3Zllmqb+4o3lBrXtWtOke2jehBLUzT4ZgbGWGhJh4C+5Dr1+9xEnk1Mz/auLeDw
         3kdPdXsnvIX5GkUY4TQP3q5mWenBJhr+PiCssB4TdZ5TfeBge9MOIjz+sylNy4E2eWp6
         mmSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEzK9u35eGOKGSPsBbgSdsbhUB1bud4W1Q4/MZTTwpooOwqv4Tqpk7QfalM4VwTIE6+7pQsTnZ4aJl@vger.kernel.org
X-Gm-Message-State: AOJu0YxC9BuLZHSBmxXFkqFMPpZ76attywlvfsSXS/WMddXPrEQV4zK7
	SLe/V9a4MzKxGRL9WF7bUC38cGLpyP66ffRKC9CBIuoSS37E7ej3OySy0h2/xhYLTFP35JP4KpW
	twXWBWp7VuFHCRyaxlzbA5VEXP7qlQXicus+6/46h6KYK0bZpB9p0g/3zb1oaqc9E
X-Gm-Gg: ASbGncv+YDf3qZPDKdZhZoqPVFX8effjsKVggBRilhW1CzMD2E4WTA+r8SLxAOjQr10
	yrGDEbFQNPiSQmLXfxGP3G7qTNEb7dliROmsI2hAttTn5FiXgPv5/vYgFiaGqVgJ4zMqdfYw2Aj
	vb4y5PScDOWPyPGic6g2tkyjy0lfTItTtkJkf+KEEQbucY6EB/gpki1emgV5qZY8bZRgnfRBHGk
	dgj5g1BacxIXoxVjrFe/fwZO+URh/eM3gIRE5t+CGddoUhc6HghUgePHbY+a77cBFaPjfKyp5Bg
	KXVkfslcY7oQl0aXOEsKPcrrr8Kh1tN6XOqKn3qx/TqPAq1RwFYXePT+laoKrwqk6cbcRZIlCO1
	l3L+nFYobRcumis/U7Jw3a1c9ELLjC6HZ7zNWDTnLUhxXA69pQh28CudWQg==
X-Received: by 2002:ac8:59cf:0:b0:4d2:4df8:4cb5 with SMTP id d75a77b69052e-4e41bd7a0edmr10557521cf.4.1759259619557;
        Tue, 30 Sep 2025 12:13:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWLFpkh8hsbF0BWjWEBKzr7EQDGz46NeB9GyBzVRvHn8dRxUQboxhAGEfSv3X96BGi8K3Eww==
X-Received: by 2002:ac8:59cf:0:b0:4d2:4df8:4cb5 with SMTP id d75a77b69052e-4e41bd7a0edmr10557091cf.4.1759259619073;
        Tue, 30 Sep 2025 12:13:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583134312c7sm5264888e87.8.2025.09.30.12.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:13:38 -0700 (PDT)
Date: Tue, 30 Sep 2025 22:13:36 +0300
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
Message-ID: <xxvexvdedkzbvhhoh6tubqkbrtxjskhgjockawa22onzwqusp5@iggjnospkryv>
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
X-Proofpoint-GUID: _a88l_7vFkum1U_KTlccLi2HFYWkub4J
X-Proofpoint-ORIG-GUID: _a88l_7vFkum1U_KTlccLi2HFYWkub4J
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68dc2be4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=0GIP9b1rOs9S8cRHSfUA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfXz1ETRxtWP8z8
 LCzrHvsRDTWrQmjocsfqOgnPUTZQsUpUgMD2xQx79JtMkmWys+ejOhLjuW98jv/Xjxk2jqUaxxn
 hbxyYdIF2TZS1HqIKWaStoKfQapDT2xuYaV7SevEXfyhctPsRIJZbV3k11dH7fu+S4p5AH5haZC
 cRA1rXtEpdpnjioGWZmYzqgaP61zfnPK/XJQRhkSI1L19qrhEyN0iKyLWGo6pE7rMnCpHIBsTwK
 XftJcO4jAsnJyd5WuMlmv17qJb63cygvQfh0wgSOaoJlg7RueP2CgXBNtQmRYPDZE0sRGJ7Q5SH
 nblX/hh8/2WFuM2KTH7OqMZM4SbihGHrSqwa7e6u6l1Qpqr4l49hAw0fxuC+ejXLbdkNB6ArrMz
 4zOm0NcMyi7ZX9/1/yKbJM8nb9v6sA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018

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

(Just for the sake of keeping it here too): your current patch allows
using mode-switch and retimer-switch for the fsl,imx95-usb-phy device,
which it should not (because it can only be an orientation-switch).
Likewise our Combo QMP PHYs should only be orientation and/or mux, but
not retimer. I am not sure how to solve it without actually allowing
properties to reference nodes from another schema.


-- 
With best wishes
Dmitry

