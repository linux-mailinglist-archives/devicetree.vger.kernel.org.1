Return-Path: <devicetree+bounces-235631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D270DC3AD9B
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 13:18:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D6C4034401A
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 12:18:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A5E42D9ED9;
	Thu,  6 Nov 2025 12:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TDStMgLl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gxzkpfjP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72061A5B84
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 12:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762431485; cv=none; b=OQs/JtAphKhRLjDwvZl9ixXphuB/Ibnx14IBglORGZPqKl4pNO9uknm8GmLD+iox3snKEOOVoW+NX9i7rRYve0V26IpbpQ/WkhX3nJId3qWHklbfj1HdOjNiOPi1tHlKEomPLOSSTWYrljO+WB/Vh1DFZ6t9dVUgZS/tUUAFE+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762431485; c=relaxed/simple;
	bh=oToZbDseNMfvJIhLItkpjSWR/yz5mGiMVe5afItbn8s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uJW+sMfzkWSkPpyDZkYQXBUi1BTy7NOc6VxoA83WD7dvyZk6zyQjm0v9JRilO7Hj++YViMHhobN5FEnE12DJ9VTBmMcPt41DtEDlwANdvWTOfLf0LWZi2O/S7RpaEnOKHILdBa4m99+Ysf0SZCEHyxX6LK8hp12r6iZgLVLXn/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TDStMgLl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gxzkpfjP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A65wEY41786137
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 12:18:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s+sbWdVZxbSXBuB8qlQ234qciN5uD2hvXJOICtWjjjY=; b=TDStMgLllqhnA2fY
	p3mr9kc45QrJYSK9ISf+wYBb2KTg08C9/7UDcx8pQ6FJtoBvPir8Z1W3PW44sVLT
	szFG+gF8uk2tRCzuPQobJgm6wJ0IJ3FupnlafDGaelYLFe6C/WwaJhT6sQl/B9Wg
	0mAuZEqCwoRCIskhPAgdZUueJOxZxzBsKqRd4GScEWJrUtWmXzWW9IJArsk4a/E9
	cl5S7XudoQr/307tA2LaCTKCRfMXeI4Orx5JuSXK8+2QECEFh38GD6WCLKBi6Unu
	uQji6BWBddqc1qixhmjYiAqMO6422cUZct0mwAyF0EESMqf0qxpk9RNzVHCufOO+
	JObNlQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8amxb0h3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 12:18:02 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3416dc5754fso1367771a91.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 04:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762431482; x=1763036282; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s+sbWdVZxbSXBuB8qlQ234qciN5uD2hvXJOICtWjjjY=;
        b=gxzkpfjP7Kz2+9izIArPAjQqKJmcFWlzaTKxB5j60U7VcVm7Xve9qXDlBMMJp/C829
         FDKo27RHITSvQhkYgPx8wxoazPQ6IaK/H0dtU5Tu5R3/7AWO9KavCTh2mH9phIeMCKkW
         PP7oy8yWSEDkF6LzlHj3WvtNoB3MAMQTWE4KrY3hnfWbOfAFhDv0vRyGFlNtTcxoqkQ8
         ED8YbGCb//bEjyyMDxqce3j8cuigghW9lrzx/qfIScCrNS9FE/t6Q28xd6AoPfXVVPKM
         Q9Mbb5XM5gVsP4Ds8ai7ABecNJV/30R1p3tx4OpWeXEA+I2H6MLMg/tacS6fjpRT8aMi
         e/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762431482; x=1763036282;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s+sbWdVZxbSXBuB8qlQ234qciN5uD2hvXJOICtWjjjY=;
        b=gAiaHNRBlnrwpSIN2oFEdKMNmyry+Lk9HGCyYqLD/0FjhS4SPSm4s5Wdkkq8DSZycZ
         WCBzEogymsMbztMWAtOsymWzcViiomzu64tXH5aCc3TVB/uw6dnfBN8nhYPj2+G8726g
         13l0MquZOz+iKT+SmHYhF869qpOac1MGF2IkyRj/c2ajp6WZqWPSR7ktXMwR1209grXW
         2HBUWQsDTWHLLC/54PWnqyTLeSaNXvYH4S40dKRW56VjLEfUXCuvXLkm3pL5vPMslcSX
         GGWBVFbIa095ZBULZYGT6ste57OyBlml0/lTxFSNVMG/EnP7vlDWXkbH9XmbJBYWGnh7
         Iyiw==
X-Forwarded-Encrypted: i=1; AJvYcCUMfAd3H/22rUjAL9NU5TOHOu6BL/pb5No48xKGsBdmv/Z/ORzJD2sYXvM3ieiobSgzAVyWLSJi8uRW@vger.kernel.org
X-Gm-Message-State: AOJu0YysZYzEGEo+yalqx+i93vOdMqHMEfNYPF+XJL+aFtDbqMSjZhsM
	8klM3/HI3IchXVsU/hz1TQ9XzCKR4heZwzhuFiFK3c3lPEJDrqdDTMJsYIhKgAwkrG7yeM+8JjT
	YcRkHshI6fTDXmCsDYKF0UxaXeSNeo0whpo0UM9cw/LalxVRM1n/vbJHt+qNvNNmPGN5g4V60PS
	yS4Wp7kXuE1hmMd9zrLe/W/xnotDxO+gvff8QlLimNkPvCGt8=
X-Gm-Gg: ASbGncts8rQGZYSSWae9V7EpnAQYRpsOxybm230Y+BUMV7hqZPeLfCly/DPsDGQHuWq
	PQ5sbMgLD5dhJDJJS387RrqQmIUDgCh5sxpAWxRydZGHop0ed1d1N7uCmq5tam7h9E/NPsBGbII
	EOJNzvkNSPaW8QJqPDLYcgPSLncqWoRiFfzoQP6LJB6h3yKm122XTmt5J1C9UId24R+wQIhwo/1
	hLv5j/w5410Iw==
X-Received: by 2002:a17:90b:528f:b0:341:8ac6:2244 with SMTP id 98e67ed59e1d1-341a6c49285mr8076208a91.9.1762431481630;
        Thu, 06 Nov 2025 04:18:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFFSFcWsr/qgEDWu3lthSFDZ1a/v10OQXi58l3atHWQqjv5x9HFWjYicVnBYQGrSoLVqewLhyNP3VG5MGWKDco=
X-Received: by 2002:a17:90b:528f:b0:341:8ac6:2244 with SMTP id
 98e67ed59e1d1-341a6c49285mr8076169a91.9.1762431481093; Thu, 06 Nov 2025
 04:18:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251104125126.1006400-1-tessolveupstream@gmail.com>
 <xq4jidiffovpg3armhlzrzxloug4irumlycyyvmfaugajbtq4t@cutuj5736ayo>
 <58afe57b-68e8-4de3-841a-df3dbf04ee64@gmail.com> <7tk2hd5qursarvomuwe7yt574vmjixh23zz3iw6nzpzm6x7jlj@7q2vlik3t2h6>
 <9d5de3b8-29d0-4202-a361-4bcbfa166755@gmail.com>
In-Reply-To: <9d5de3b8-29d0-4202-a361-4bcbfa166755@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 14:17:53 +0200
X-Gm-Features: AWmQ_ble-cjeiMkSHhNt34FmGUhPaaaR5971I0ICOxNQpnlOkD3tg_OOxVHdMvc
Message-ID: <CAO9ioeX0ha31ouOEN2HqJdq8TY4B_Y87UxeBBgeuC0X_inQjSQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] Add Qualcomm Technologies, Inc. Talos EVK SMARC support
To: Tessolve Upstream <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: j4eVazoNZ9kIKYQ1hRZ6AO6m1KPkERK1
X-Authority-Analysis: v=2.4 cv=P443RyAu c=1 sm=1 tr=0 ts=690c91fa cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8
 a=fp6pfEYeF8mCZpjmTfIA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDA5NyBTYWx0ZWRfXwHIQNnjO+L7o
 sr1sJ4c3F8AZZwTBBZ/QC07mLUgFltwtWguesMzKF77QizktRkeu5O4H/dQXV98KNluSI5tP0UP
 CVhxKnitFx5V0o6wvbNb+n7XakDSTjCr1HVsFfgiy2gzcjPr7xXbdx4DZO5lzeuX9MBtxbdAuyl
 pSA6hDrZNYRQpud6ASNgKarV4swwITvoY74+aOHql2X8rkzy4lUt25bCNibmIuLOOAZnimr5q+U
 rp9T0IFo95K564yke1wjHkUQUW+ByHyeLtHATuBKOVRpl7hBvvNmdLLSsTEyxnAX9/tpJEolUQq
 8LUdRt4prncBbX9KM4KCHesfasRcCGmZ4aw69jIhwaLwHZI4+/6H3L1oYTryPeLQ+MW0unw17UX
 +vPfqnd8Jw4kr6Horowu3kzzZqROJA==
X-Proofpoint-ORIG-GUID: j4eVazoNZ9kIKYQ1hRZ6AO6m1KPkERK1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060097

On Thu, 6 Nov 2025 at 11:03, Tessolve Upstream
<tessolveupstream@gmail.com> wrote:
>
>
>
> On 05/11/25 20:23, Dmitry Baryshkov wrote:
> > On Wed, Nov 05, 2025 at 06:27:42PM +0530, Tessolve Upstream wrote:
> >>
> >>
> >> On 05/11/25 06:35, Dmitry Baryshkov wrote:
> >>> On Tue, Nov 04, 2025 at 06:21:24PM +0530, Sudarshan Shetty wrote:
> >>>> Hi all,
> >>>>
> >>>> This patch series adds device tree binding and board support for the
> >>>> Qualcomm Technologies, Inc. Talos EVK SMARC platform based on the
> >>>> QCS615 SoC.
> >>>>
> >>>> The first patch introduces the DT binding entry for the Talos EVK
> >>>> SMARC board, and the second patch adds the corresponding DTS
> >>>> files for the platform.
> >>>>
> >>>> Note:
> >>>> USB(usb_1_dwc3) supports host-only mode based on the switch SW1 on
> >>>> the SoM, which is purely a hardware controlled as USB-ID and USB-VBU=
S
> >>>> is not connected the switching cannot be handled from SW.
> >>>> Hence from SW Host-only mode is supported on Linux boot up.
> >>>>
> >>>> Changes in v5:
> >>>>  - Updated commit message. (suggested by Krzysztof)
> >>>>  - Introduced generic node name for can, dp, hdmi-bridge. (suggested=
 by
> >>>>    Krzysztof)
> >>>>  - Introduced talos-evk-cb.dtsi, which has common carrier board
> >>>>    interfaces.
> >>>
> >>> Common between what?
> >>
> >> Introduced talos-evk-cb.dtsi to define carrier board=E2=80=93specific =
interfaces
> >> common to both HDMI and LVDS top-level DTS variants.
> >
> > Are those two different carrier boards? Is it a single carrier board
> > with mezzanines? With extension boards? With a DIP switch?

Thank you for describing this in the cover letter and in the commit
message in the nextt revision.

>
> It=E2=80=99s a single carrier board.
> HDMI and LVDS share the same DSI interface, and only one can be active at
> a time depending on a DIP switch.
> >
>


--=20
With best wishes
Dmitry

