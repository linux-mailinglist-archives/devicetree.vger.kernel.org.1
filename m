Return-Path: <devicetree+bounces-193254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C2EAFA13B
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 20:59:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEDE93BEC11
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 18:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1051A20E01F;
	Sat,  5 Jul 2025 18:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="glwbARjF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F9A20C00E
	for <devicetree@vger.kernel.org>; Sat,  5 Jul 2025 18:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751741942; cv=none; b=QqRZ9FKu+o/pL3HTsjiSKdk2UOsGHmQ3dK5UxlgSYzuvjbCI5gLJTm+aXPhQ/oSt+5lqLEAVTdaA3MX2n6RORS97j6pxRpVBIjI2KYUf14oKDW5ALgY4owF+qiyAV7x4b6pIKtpLly+YAe9Q2BVRgxdliXTax5MwmUDPzIMjeWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751741942; c=relaxed/simple;
	bh=xubNlsYKv4hoBbHWE7gxG0VYpYE2U+e8mccJ4ObL8yg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rc6C+axpWm3SBGR3eWxOzqcOomaRWqECscHv6W6GfLywkamTWkGQ5CNsevMI+z16eLW0H8/oNsByQ//QAdI6PV7J0Hyd+oI1s2idFbxDDAIihWpE+wJ23FwLODphN/1Z+E+dlD5+KvwyECkOrcFhlSEkoiY7fB7ob0dOYF6eIFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=glwbARjF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 565HnjC4023791
	for <devicetree@vger.kernel.org>; Sat, 5 Jul 2025 18:58:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ocaOCMHYE8NDO9OEW664JHC6
	8656egVpSIsX1z3ynhE=; b=glwbARjFKxn/6SSrUX5lqrKzoUw6oEmwe9HpIBw5
	SEhwnJ7qe3Qpu759z9zgz2muJOQMQT4I+w0SSfD0IEAaXyz/UX6PbA+YU0EItnOd
	FI6WQVbgbXtGVRF8Njpb626BChJVy4r+6yAVPliEJl4ybckSLf0weSuhCuWoKquy
	oh55BwDcPXHhDrEi+OqAqnPzJGUjJUvKUdd6DIljgGAJfnGEVWpGw+OwjCLuGFdS
	Ufk6e3KMZq+8HgJBzCDN13+LSO9ia6cAWJrUvcELFdkyz8a5787k0Zd/kTEVwGnQ
	sx+/rwY5KkE2R9SfV2ra9789jTyQxBV+keInD2noWtcelg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47psdqa0ph-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 18:58:59 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d3d3f64739so418479385a.0
        for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 11:58:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751741938; x=1752346738;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ocaOCMHYE8NDO9OEW664JHC68656egVpSIsX1z3ynhE=;
        b=v8IhDLDr0L2QTB7ZagKuYv8qDqjFl2p9xCzlbnyoIaSIg3TjW255zZ9A9UTNppnykh
         3wLSgWPfM9XR/3UeIBrNFY82DlXkN2VRhb4uKkNSnPuxEKheS7UXmsI8DQwEx2GlANIf
         bfFeyY2za0RjpQx2LJeOXW+y9hAEh16IUC0ShiA+tPttDhdtpQRxPSG+wmx9c4jkm9xC
         6smKbQ3mI6rB2xmb6xYJPYaklpSDLDVYk5pPrIeiIrngkUtQio3j3jKl0QcOcY+f2Cw9
         +PBVn1W+uzJYN9cRBW7pP3tOwX/vkknxhvcWnLO5Ov4grZiOxDZkaptzaVQA+AWKtvb2
         lyBg==
X-Forwarded-Encrypted: i=1; AJvYcCVpN8TCgnuUQvrU9YEoginpC6urPuAemgEoLqQcudy3kKJeRCKnv2UUociU6jilG1MJ8njf1a//2d2N@vger.kernel.org
X-Gm-Message-State: AOJu0YxZhB39vhBfFltCg6HM9jghVm3JKGLFe66goN+bviv1HwNlsGSf
	pD7oUUbUMASqYztAq2zuhgbKWxhYfBkJpOzMSPwiQ+etSmsTxwMkl6JlvpyXqTCLd6K8XaA07nI
	9oWOD+Lt3K+n8Qs1WzkgnMIgZlbQgGzdVOr6KGjIofizoYtTKtvS2CtbxvpFzPOEL
X-Gm-Gg: ASbGncun1IMpVJ954QPjPv2wi62FVO2dULMB1A7+cgYZDlq808dVkatv2KNUBvleDG2
	rSzK6F09p6T0Fv5T+NEvh0wTV5PwLxHWGnCO+VGXJxy9WQGZn9y5fCwFZFJlDenxXBGLxzyLnNY
	4J2PcDgNdR80Fy62NBUMdlpDM2AuS0iDezSPkJ10XdPqJaeS/rk/ivio2UAgcaHjLE9SOb7uBkw
	1BEo0EGo2mwJ/Ez+g3wFjGE+oOVSkt5S6nwgaPVbjRZaGaNpIlMuRFVNkydyPRh79/3YjO1i6JR
	K+XSUirMaXKtajM9URVqG6jJuegkA+8eEh1+RGrjQaCK8akvrbgXC62M7pTYnA++OQVZe9a6ENq
	Ovhs/6kD55At9Ts9ofbbz3NCXkyCmsAg9AZ0=
X-Received: by 2002:a05:620a:2495:b0:7d5:d49d:3e29 with SMTP id af79cd13be357-7d5dcd0a63cmr968455985a.45.1751741938356;
        Sat, 05 Jul 2025 11:58:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwZuhJDnQ3LWiy5yGswE6sTDPHJMzCTMeoKblzaS2tUrAReL7ylcXFz0S593CShvSIaBFtHQ==
X-Received: by 2002:a05:620a:2495:b0:7d5:d49d:3e29 with SMTP id af79cd13be357-7d5dcd0a63cmr968452285a.45.1751741937902;
        Sat, 05 Jul 2025 11:58:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556383d8dccsm665117e87.66.2025.07.05.11.58.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jul 2025 11:58:57 -0700 (PDT)
Date: Sat, 5 Jul 2025 21:58:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: document Samsung
 S6E8AA5X01 panel driver
Message-ID: <cueav4uxbhswv2z3grf4qhwualhg3zxknahrhv6uaedit6dgdv@23enbjmj64d3>
References: <20250625-panel-samsung-s6e8aa5x01-v3-0-9a1494fe6c50@disroot.org>
 <20250625-panel-samsung-s6e8aa5x01-v3-1-9a1494fe6c50@disroot.org>
 <80055981-3624-4165-af0c-3b60c345e8f8@linaro.org>
 <4b9e44b14395ff4c64eba1bd71e63150@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4b9e44b14395ff4c64eba1bd71e63150@disroot.org>
X-Authority-Analysis: v=2.4 cv=ffSty1QF c=1 sm=1 tr=0 ts=686975f3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=5PY1fqJ0FUbosCpcTIAA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: ZwpXYseqIFfn9MzGpMXGSeTsnNnNV78z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA1MDEyNSBTYWx0ZWRfX17uNPiiAqByq
 2qtvt3z++DYxkOXiy4MATb+Ttv+/EoNs7bcEPsrywlr/IgPKjgXmAuYeGN16XE9HfdoqTA8hSq9
 Q1Q6YSJ4THKiW1FOzJn3nMMhYNIYrITp1YHoHrteaZNIg2lGVcz47PZM5MaJVCgrjn0X+kzDKTH
 RHKSFC9gkiWkWmAv8hkjLVY4bY0wLo/1gm7mddoK3ez4SXP7LhBcIGARC3L9dn5MBtWxQLD2MM6
 3LDpuWuU938mc1X63k5Rbviu2Wz/AK2DHEPB7TpJl28ZDg/qZuDVlzBdG6mZM6IgpliNCxtnir4
 tiClhOSlEnk67j5LcbKlOmUWOagXPNBf5D7KEgGSvE7L16Vh4io7sUBdCSiBaQjPtTVYieKLiE0
 bxxQ7HqUWwnOn0DDQvq0UD53tdqQhn+pnLYRzO6kNucLFX80iXHjZvMdScKrQfsL6cMXviiX
X-Proofpoint-GUID: ZwpXYseqIFfn9MzGpMXGSeTsnNnNV78z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=946 mlxscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507050125

On Mon, Jun 30, 2025 at 05:18:22PM +0000, Kaustabh Chakraborty wrote:
> On 2025-06-30 15:29, Neil Armstrong wrote:
> > On 25/06/2025 14:41, Kaustabh Chakraborty wrote:
> > > Samsung S6E8AA5X01 is an AMOLED MIPI DSI panel controller. Document
> > > the
> > > compatible and devicetree properties of this panel driver. Timings are
> > > provided through the devicetree node as panels are available in
> > > different sizes.
> > 
> > Wait, why ? Why not multiple compatibles ?
> 
> The panel dimensions is the only thing which differs. The model name,
> controller, registers, and functionality are supposedly all similar, so
> I believe this is fine...

I'd say, it is typical to have a controller to be used by different
panels. However usually those panels have different names or IDs. Please
follow the typical way of handling such a situation and use panel IDs
for compatibles.

-- 
With best wishes
Dmitry

