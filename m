Return-Path: <devicetree+bounces-215938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D948B5331D
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:04:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11EE71CC0E9F
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99AC2322DAC;
	Thu, 11 Sep 2025 13:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DX1rhjO4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EA7324B0C
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757595813; cv=none; b=E7J+u46tEEO8kZNHKdd6jjfxxVPbjAPnKSUhFd+Kz3h6ihqJCFxiiVYgu3uXsGBVJtq+Y7iX62rBMcEzgWAcs1CczHf2JgE2HD1OmtUgW+WeaXQae3hSB03rigj+vV1JZHEjdyuqE/ySLL8vd4egIUOuLsnlclPiFwbwh8YJ7NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757595813; c=relaxed/simple;
	bh=Py4v1guUTScG0vHotSUHA5Z/oQu7Z3EeobDMJ3o3oKg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WuX2AtOnqTJ9fdCwLIxLs8zHXt6QMxrK+ll0NOq7ZildK/bGZUVViS6/q/uMxFzb7A5JMKKYKti2dEj4WGHHj1moglUYmpHPLmH5m/vGJtDpFS8QkxROcOfg/o4LP/Qj6n7DVs7EM3X/G+gjxGRBRRv9I3BM6a5ziLHKdzBqGPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DX1rhjO4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAp3XK008865
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:03:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3TiH2ZKjnLM++Cw9wXPbgBqAvgKW59I/imntpSO2OVc=; b=DX1rhjO4qW5LD3Lj
	xLFCy7IN0NjCF1DMLY21jE9O+6EqCosul89a5kC0A7ZjkRHqCe3cl0wPl1sxjx6P
	vb5eKn/e7bmF6l10N4VHzgIhvgJmTHAg4kSN5t3K7lhiHzeNLYtzooWAi2Q5Gu0Z
	DqaoMBNjDK/Jxn5+54LdpbzJCA8iRcLEYGqnVTWojTGY7uqh3SJjs96+HNAHECzk
	khM9p7Z5d4BQxCGqgyrHoWxAsT7L9xpXT9Tho3t70j3w8X5dOjbgCP6aC2WZ9c7Q
	c8bw07+3fNzVNlS7aA/BAMF5n+6flBGOrO029BkW4MDsV9UhSYB6wAYw4wEbjoC7
	xqH52w==
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com [209.85.166.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapqyhp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:03:30 +0000 (GMT)
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-4155725a305so10013975ab.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:03:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757595810; x=1758200610;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3TiH2ZKjnLM++Cw9wXPbgBqAvgKW59I/imntpSO2OVc=;
        b=M30MLvXeph1GwFj7hiX69uLkc/hD1/2Qb5xuKstcKK5XU3Ic7Puvnn83dEwMYek3VS
         GSNa6er73xNTRmMibQi3v/czU4GVS3+L5tPWDSoPbVLf22DwkGIkeYDz5S2YduWbYQ+g
         KHPn8bEow0VpNhT4P/0uSkVvCBG8M4pMG2hLz+qNyNLFUOF9ScNIAU5PmhSwM1WaZifY
         BUF2es7u5Rz5mwXx2JmV3UdYkbZolcw2y96Cq30lCRv7XnLEAbAdItDuFKLa6EjLI5Xg
         HmKaTqAVDs6nBfFA8Tg8JE2tOJWDqngu+aFF6PQggG5ZzQ2PyuuFib1OuMYk5IlDnJrg
         RY6A==
X-Forwarded-Encrypted: i=1; AJvYcCVYzp7YNs+VghYn6ORCAwWfC28lsuDKlLoIhi7Xr3fz91vZnlVCxJI31ZKYSqZlGurOjhwZsFnGAMKK@vger.kernel.org
X-Gm-Message-State: AOJu0YwWb1RhytczC5Gdw/XYh5pdCALjJWHEHS8EuuaXpYWE4hqcyaz1
	dOrHEIaHM3g0coXnpqF13m62V1jAtt4fW84xdgfjkcr5VfOMx2Blkfp2oL5vCi5ESiK0hvRXfQH
	q5Pb7ldep7VQZ7IspGsBrQbeRX/o9OUoxqAmb653Bp+gejqV6Y0QQbD1J2odjQoc+
X-Gm-Gg: ASbGncsNJ7RKqrfhAVIh5IaOKtI49RyLf/VsayvcMR1c3YZzfiNDQWtwRlR9MD+bzlh
	HJ0l7j8RNkjiVl3YZo8GPK7ugM6UJqo5NsS7Rya8Ls/R4LLPwC9w27iZNM55/CZeAY2xTcY0p+Z
	pjGadwfDs3v3zRRNXg8676OFPnB26aLExFwsmdeJ9zTgYQYLAw1nlCjdRvGvdJLXdqw0+f1C7Yu
	XMqKWG2kZ0WcniJkatwlSaOTHg7L4rpnH2alJzDtMzl2ntSO8gXJHW4oM9H6bWp+M8UtP6Ngs2h
	JAxIeGws5XNNUlWSj0afXsCyg8ERerTj2EL3rrzodeU1ciwejJF/C5elpVy7qr75QD0tQmEKlC9
	wb33jm69j8hhxCW3mAuEAoj+NuVl4XgqR5UEpAm/IxG6uZaD3S5w+
X-Received: by 2002:a05:6e02:1608:b0:41d:5ef3:df2 with SMTP id e9e14a558f8ab-41d5ef30f0amr26828415ab.18.1757595809641;
        Thu, 11 Sep 2025 06:03:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJ90goZe3T4OOiFo+85Q/4C7S07Ofj1OLJoHQ2FlrHY8mgdsyHXVlJIJfdlAHrxR9sWtFSUg==
X-Received: by 2002:a05:6e02:1608:b0:41d:5ef3:df2 with SMTP id e9e14a558f8ab-41d5ef30f0amr26827705ab.18.1757595809121;
        Thu, 11 Sep 2025 06:03:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c3b612csm422915e87.12.2025.09.11.06.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 06:03:28 -0700 (PDT)
Date: Thu, 11 Sep 2025 16:03:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
Cc: Vikram Sharma <quic_vikramsa@quicinc.com>, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
        catalin.marinas@arm.com, will@kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ravi Shankar <quic_rshankar@quicinc.com>,
        Vishal Verma <quic_vishverm@quicinc.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: monaco-evk-camera: Add DT overlay
Message-ID: <gd7allvjkgbmqgc6pazq5o5u62tdkrogpf2r43vfkqfsptzybk@66i2def6aumf>
References: <20250909114241.840842-1-quic_vikramsa@quicinc.com>
 <20250909114241.840842-4-quic_vikramsa@quicinc.com>
 <w54mpkzk7irjb7m5jiouxhj77czj4ex72oqioaph4o5qhcsay2@qjolctktsu4s>
 <8104bb41-e827-4daa-bc96-9b6678a9d345@quicinc.com>
 <3d26b554-727a-44cb-a1a9-56f49775ba3a@quicinc.com>
 <j475dpcflsibhrim44wjmtbfcfht5jzvptlzrj354oyjee5mit@wmfc6zmrkbfs>
 <0ca4f6bb-b2a2-4f98-a494-bb0507bafcd5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0ca4f6bb-b2a2-4f98-a494-bb0507bafcd5@quicinc.com>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c2c8a2 cx=c_pps
 a=knIvlqb+BQeIC/0qDTJ88A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=UxSgn0eRCaJVYZHEmbAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=8vIIu0IPYQVSORyX1RVL:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 7F-1FlAP4UxMYZDReqZ5dYpiBSHidx3m
X-Proofpoint-ORIG-GUID: 7F-1FlAP4UxMYZDReqZ5dYpiBSHidx3m
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX/SR5WqM16rBF
 X6SpaGR+fj+RA8XXEDImgbqVcYPHB4t+6VzIk3ilj3aWBN1OqNBAywRyjsAUh7EaWje4WlNf9eI
 tE6Ld13JwH7Z4fTfLPC/gRL1mNFfwC6c6qq6z6Wg9Bf8yZwNBZpoHqJD0kpEaeGQhyE3tjuqS5j
 1l3rXftrFEJcESOxacBol9/jLB2fcIzSurdqiHeLGY8Uw/4eQzp5+NSSghHIF2h+kWuplh/G808
 oRvNRTAbCuY4YLNOek3l1eKdyxqQ0YZ3AT4mrwlTckEHfUxYGFBPtlPgJvapmNluaByGRF656vk
 9qXZDDWnyBl+Ex3/Dl5Nv32hDOK/gndm+NmjvMgLJDJms77un57cTi1yLjYhRZ1wQpPZMId0YHS
 wCtpcZFJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

On Thu, Sep 11, 2025 at 06:19:02PM +0530, Nihal Kumar Gupta wrote:
> 
> 
> On 11-09-2025 15:38, Dmitry Baryshkov wrote:
> > On Thu, Sep 11, 2025 at 02:49:59PM +0530, Nihal Kumar Gupta wrote:
> >>
> >> On 10-09-2025 12:33, Vikram Sharma wrote:
> >>> On 9/9/2025 7:31 PM, Dmitry Baryshkov wrote:
> >>>> On Tue, Sep 09, 2025 at 05:12:40PM +0530, Vikram Sharma wrote:
> >>>>> From: Nihal Kumar Gupta<quic_nihalkum@quicinc.com>
> >>>>>
> >>>>> Enable IMX577 sensor using the CCI1 interface on Monaco EVK.
> >>>>> Camera reset is controlled through an I2C expander,
> >>>>> and power supply is managed via tlmm GPIO74.
> >>>> Why is done as an overlay? Is it a seprate mezzanine?
> >>> It’s not a separate mezzanine; monaco-evk does not come with an attached camera 
> >>> sensor by default.
> >>> The overlay simply reflects an optional camera sensor attachment (e.g., IMX577 
> >>> on CSIPHY1)
> >>> That is why camera sensor is configured in monaco-evk-camera.dtso instead of 
> >>> modifying the base monaco-evk.dts.
> >>> Please suggest and alternative approach if you feel this is not correct
> >> Dmitry, Do you agree with this justification or you have a follow-up comment?
> >> Can we post v2 with the same change addressing other comments.
> > The previous email didn't land to the mailing list, I'm not sure why.
> > 
> > Anyway:
> > - What are other options that we might support? Having a single
> >   monaco-evk-camera overlay means that this is the only configuration
> >   that we plan to support.
> > 
> > - It all should have been described in the commit message. Please update
> >   it for the next revision.
> 
> Yes, We have planned to support device tree overlay of the IMX577 sensor via CSIPHY1 only.
> I'll update the commit message in v2

I'd still suggest monaco-evk-camera-imx577.dtso

-- 
With best wishes
Dmitry

