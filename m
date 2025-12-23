Return-Path: <devicetree+bounces-249278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26414CDA6E8
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:56:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0350301E91B
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 19:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF562F5474;
	Tue, 23 Dec 2025 19:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XvQqS6Dc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C/g6kxMx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E825F34887B
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766519721; cv=none; b=ixHBvcLjRJNIrbHNd0nohtJqS0pwyGvnqhfrHyssZS7/LreLm3HXPUPUqu9kJFESkU2nqDi7zHrdbfdblbidHj8bQIBKrUQbaNdH76/DgIzc1wXyY/aRM6mDDdB+q2/FdwsXhHS0Srxdfe975GVDdSJGP86p8Y3EjAt63zsvRLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766519721; c=relaxed/simple;
	bh=JeHtUOzF6q/IAIMn52nRpNimmQWWVnXvup3DxfBJg60=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZQ0HqSZ4ASGZwpHWy0Q/6TOSVS5dBK8Qb5oESjx0CuISKKn3bBCmRfoCnbV16oL4LQHtRxOmZKvrJYk8XzkFjHtnD2ZTPaZCjRmZISohQF5QU3GfXlJA5VdEn0LuYE5M65FBtm4Xdt8sXtmfNVt3LdHPgK+5509yZbR+h7NMDQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XvQqS6Dc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C/g6kxMx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNJrF6W721258
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:55:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+5BStTVKjVSt3rj+EAQ8x7sv
	1areOLZbU4gP/y3s9RY=; b=XvQqS6DcJadicDp6PjCqvfHdxaGbi/zdbR/XLKdV
	g9DwJpw07Mh56S2rqPpKQm3tCFn9ZaEO5m8N/lZ0unpNo0OGWtII7B4kLgPfo1JI
	FkEBH/sTqSj2q3B0w3biADdYKnqt/FGHwHUtXI+q7/B50m1vun9Mv/Iu75bWoarW
	BQp7IIIrUgnlS+FYFZoGfVFJ1VAe5GMJ/9IpdqQKOsYQanJmUa0mTiFBnipGkh+K
	F2/0KiNX36cDAVMkmnHYqsFj05IREPUu+4/c8vxxQ7EjMZYob5cyUK3+x4S2O48+
	aQnRwyl4I338dSgi0lHPH06B1qS27XwCT/ys5aZoAIXTew==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b81mt8064-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:55:18 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed7591799eso128454511cf.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766519717; x=1767124517; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+5BStTVKjVSt3rj+EAQ8x7sv1areOLZbU4gP/y3s9RY=;
        b=C/g6kxMxtZcG89H2/9is+50jEDz+RuBqk9KY89CnT/qnNpS6t6V9isQ14BJIqoNDf9
         OkpEt6LtPhSFYgETRR3IuVylFfTM2TBDdAQ/DyayAbFpsVqCb1L+ZqS7nXZ/2WeOVBhO
         wtzMg2ykkIiP/uYTlHPDjVRCGN1LY/HbZIAOPAqEILNG9QwDXY6hgpoN6iqo/t2y659q
         KMmeEY8cj9SOFfGunDw6sYM1+49+CMCvd1EjG0UBWpcTPoZnKLf32qXZdu4ttufhCfsf
         P5ZOGiphU1B7Qoe2N61RbdodmbUlq8nJwTyBZW8BgW68NWWCg7TVwr83SIRpLm8Rsnat
         Ag2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766519717; x=1767124517;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+5BStTVKjVSt3rj+EAQ8x7sv1areOLZbU4gP/y3s9RY=;
        b=ji8cNAT1OEJ2LnuI1aFAcJBTixW3+5m1LZVoOQCN34RrCtS2I8+qwh0EqT3I7ib8Ro
         gVEBwBfa5XuHTN0ftgQBKEjAOQlBC3S63PbUq1D83/8iqj3S4fmAcBDJGpgKvygq17+F
         EAUxDiiBgrhHLC+52hX85FAl1Wswu1RurK/kVDLuaLwuSavjMHlOF7xzfHWpn9ipPRzY
         x67nYRrcfkN83ZlueDPfTPZ5PuP+CwUB2sOx7fYgyExYKpVpB2f8kLsJKzjH7xxnWr5N
         1mvN4I1ZXZQdwjRHPs3ot2PYmrVbf6HoRZzQ9Bx4B743u54o/nHGbsFEdkuLmNtwDYTZ
         IODg==
X-Forwarded-Encrypted: i=1; AJvYcCX0Yib8MSOWv5RwBmnXItiF8jScPz6R0q7JV2vXi87K0jZEM4R6SL+Aus2oDb+9NilQs/D1fWz3n0i3@vger.kernel.org
X-Gm-Message-State: AOJu0YwcnK/grK++OdOliJNyosquMNI5BCsNUlOBcTQ3OKxF7eVLvt4t
	IX8oSDMUY89hUqZx1GTp9U4mSZgs+mQ8LlQrgR6Or8cvzmEiv8YaDhgN5J3UqDJx+0+HXCKF5tA
	vyuD/7+STLTgcbwpTVHV1AKHxBsM0KnX4I3q6bLyhCUp6csKgOVlCQaBDaq61POb+l83lo6Yh
X-Gm-Gg: AY/fxX6S+ZwhWEvpM0nEaBJ7zlzKUjOMRQ+utrM/WrgaQf+BeNQsJUCg2k8JrJ1c9Bm
	KPZZ9vquMQTDSpe0aVB00Jc0v6zxEzi2So8CrbeAL9sV5UklpsDn9g6hTaUHrGcuuvZVDz9Egfw
	QZa9htly9Bo/cE+Va+5rrSotvLLhlOEzi7TXsr2CK2KZlGoixBaWO7w56opCnsSGrOliCpGhj7Q
	YqLJNy6cfureodMWfd05WrmiM1sZyTtcurt1kYDtmq5j5FFoU4gKVGnpa2PrKR/FRN1NAPy4d3x
	EU2D4deA82CWLn7Fw7fbv3fct03yBvrTNidq0kJ/4lmCRfLzs0iv0l1z65nRQ33PDmuho/gz568
	hSKK88DDLLIx9P4zWhw40N4bd83Ea/yEwoxrskgNROujWfc8Cc7a2MQvF6jGcrp8vyhlLjbZlUP
	PjO3WVxfMHigbfAnLArSWf3rQ=
X-Received: by 2002:a05:622a:4243:b0:4ef:bed6:5358 with SMTP id d75a77b69052e-4f4abd1c647mr227535281cf.21.1766519717614;
        Tue, 23 Dec 2025 11:55:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGyl53CTvCy3DtDwqsEpaclioPGQPPivQcHmL7nD6zQOqdsOLZVeuyyrrHY4JSSia3f121UAA==
X-Received: by 2002:a05:622a:4243:b0:4ef:bed6:5358 with SMTP id d75a77b69052e-4f4abd1c647mr227535001cf.21.1766519717172;
        Tue, 23 Dec 2025 11:55:17 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812262b2cdsm38445331fa.25.2025.12.23.11.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 11:55:16 -0800 (PST)
Date: Tue, 23 Dec 2025 21:55:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] dt-bindings: interconnect: add clocks property to
 enable QoS on qcs8300
Message-ID: <n7ucdvjlvst23zbbcwenp7umhn4wgsznqp23scpknwqnd6tcep@i6lhp7va325w>
References: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
 <20251128150106.13849-2-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251128150106.13849-2-odelu.kukatla@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=e/ILiKp/ c=1 sm=1 tr=0 ts=694af3a6 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dhCFs6qcdUbYmOXzIwcA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: Zct8_8znf0LVWiDdTlL6j8mItxOg525Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE2NiBTYWx0ZWRfX0YtOC24G0m/F
 2fZknh9xrDq7FjPFbBp4B7cDLG7VJdBSv7A7wj/1U+OLDbAQQTBp0ttkjfinoExNhyWxe/EahO0
 0rQevQjwGv1GBK3AM4FE0ZNQE4hANN/oXvbohCL0WLShwMtepLxdl3fb2SHvVs/iu1OZaVkH6Ef
 C/PPrdBhj4HenAw3ddZhSTqQFWKIOHXdfODKsdw/E49wIcQsAuFyK1rZocjH0/hXZignU8gAeGn
 SwRgK5skzDiWpJ86LNAIAaTn8mjfyymDERp1nOkU4hqu2fA5LV//CUbBvmif6UDeo6ghfg1KPHE
 Rb5bczl0CwqpbMqjxMbn+uaCQ4qeh6nUTTndQI9/sso4XxryNpP3+u8PxL4joErk8H5rwy1t7KX
 flXxjVxnvUSiXtIvwNcK6TcoGECzQhWXsLV06N9Y2umddglVkLoKmW31l7kxA6FhxP0JvTCvCl+
 KFUus0x2EWLYTuMfvvg==
X-Proofpoint-ORIG-GUID: Zct8_8znf0LVWiDdTlL6j8mItxOg525Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230166

On Fri, Nov 28, 2025 at 08:31:04PM +0530, Odelu Kukatla wrote:
> Add 'clocks' property to enable QoS configuration. This property
> enables the necessary clocks for QoS configuration.
> 
> QoS configuration is essential for ensuring that latency sensitive
> components such as CPUs and multimedia engines receive prioritized
> access to memory and interconnect resources. This helps to manage
> bandwidth and latency across subsystems, improving system responsiveness
> and performance in concurrent workloads.
> 
> Both 'reg' and 'clocks' properties are optional. If either is missing,
> QoS configuration will be skipped. This behavior is controlled by the
> 'qos_requires_clocks' flag in the driver, which ensures that QoS
> configuration is bypassed when required clocks are not defined.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  .../interconnect/qcom,qcs8300-rpmh.yaml       | 53 ++++++++++++++++---
>  1 file changed, 47 insertions(+), 6 deletions(-)

As a generic feedback for Qualcomm interconnect drivers (please pass it
through the team):

Please ensure that QoS-related clocks are defined in the first driver
submission. DT bindings should describe the hardware and it's not that
the hardware has changed between the time the first patches were
submitted and this patchset.

I see a typical pattern that QoS support is being submitted several
months later. Why is it so? Why can't QoS be a part of the _same_
patchset?

-- 
With best wishes
Dmitry

