Return-Path: <devicetree+bounces-253310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90843D0A8ED
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 15:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C99C30390FA
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 14:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC56635B138;
	Fri,  9 Jan 2026 14:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IGGxh8Ly";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qp2qlXf8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471DF33C191
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 14:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767967556; cv=none; b=WTOg7RgORa5ToVo8f1noPw6WHGhNbE1eSIA+KT56yRyhw6Elvi+Bsb41+vLEucev1GOTV1QeUgUQmeXKmoIF/bMb9HyHKL/a7lmu4oF3AHFD4cSC1dKoXzS6GhX7BX+7BoIFHb5vkfqZie2m8zYLqxEYl4CeqNl5RFXuoZBwwI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767967556; c=relaxed/simple;
	bh=2AdBV5i1WwNduZ2bTrHnKmOSJF2fPopX7FU2b6C7YPI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eR8LW3qTbHXU9qEAZ/5TmhFDD3rk58gfBiPjNJKU8ac+PjqZfmWyOm3cmQ/nmL1nCSl5fO0EkgHCATTqideFYT0wUlMTU56JcABiFzuPXhXMSV5fIH3I9Zd21l/M6ZJ8XLN33EI3kKHr8zEG0gEXFqOEM9CSGCdiDmaJ2VRzZ4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IGGxh8Ly; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qp2qlXf8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 609CkAnA3542035
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 14:05:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aqpcBxfdo/a/4zRNniytxNfHyMEnxMTbjhhO+KZCV3M=; b=IGGxh8LytC9HFxJ3
	e7tmt+WV4v3QagMZyy8E8x5QmfklMOj8J0wEPLVoOs/SlpklNHtemrmTBcnrHB6a
	yRQnV7DwDZw82AcnKGdsILpKf9tRwr2fieuizjIi16jMUMXb33JXHPNXF5ojkJ/9
	RyPWZ5//ynnr4kbGIpDl+7mbGOMxZ1doCjZqZAsUNhQrVNo23rcckcHxilOuMw/2
	rTGvwtj0oE/LGFuWQc6vKmpwpchcgJcKYyq0TT4QlVTWZLdbyFE87HLXcftWtFlU
	E3D4EnovyUS1ltrLXeL9qXnpobYx5y3EzHR4+VVoZs6lywojRnB5rZDbNIBB+kie
	jWbz+g==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bju6b1g1b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 14:05:54 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5634f5bd39bso4368557e0c.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 06:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767967553; x=1768572353; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aqpcBxfdo/a/4zRNniytxNfHyMEnxMTbjhhO+KZCV3M=;
        b=Qp2qlXf8+kuyfSQvHxZd9GOViMLuAt+0G0e7wCA3qltOrbsi5KJy5pePyWwG8GH2gB
         afaxD04cIAE6Kiy/VvzVBkyK3Glup+hggUNbNJoxr7kxEoY6J8wsz2IEMtF875YnLzrV
         iV0y5/HrMS1evoI5v7TP874K8TT86P5PU6u49GefJYEGwG4qWdU57NFl5Y66CsbvWY48
         tt4QzkG0f5ah/HnT538xSOH+gjSV0SE+j3EsYCxiPLhEQpb4oCOMmaxha+YtzluYuIg7
         hAUG4usyiJ3h6xjuZD+v21f/KvP/NUFZn4ZTC3Q6ZhDTbHQHJujnFlwoo/cbENMKJyDM
         cCGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767967553; x=1768572353;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aqpcBxfdo/a/4zRNniytxNfHyMEnxMTbjhhO+KZCV3M=;
        b=gbmOib8Og/6JxqFOqjqP/tV8YM/SbJYD9MzSKZVhP62kFuF1g301K3irzgNnVS/Ane
         p9ATvegPoiRYp2MVGLyikc+sK5SUhu0/Nxg2kaIyWAIIZ9R8VyJv6+i+yXkgFEUvDCj9
         b8UX55LYExvC3zLqYaCjPuOpkVZp8uOwMTujuP89Zp8K81SUNGPirNPsD4Bs7f5cgqbI
         qe5KN6w8cLoaf7o62wDwf0Vqqfw9qnqMwO5pxR30MdHHTyvxvDN1l7yysIueXnZDQjZv
         0smnVxZOXgqKz3FoBzmPYxVxaXwlXA3UW8qoi5e5m4jVIvqEO3b0yXJpbV6MONpo9OY+
         kpyg==
X-Forwarded-Encrypted: i=1; AJvYcCWLDX19WaE9FZOeXsyBXgyD44knSnsIY+EcRoSGuMVpTH1xzdwBiqhFTlJaMvB4aZz97qJP+j5PQ/OR@vger.kernel.org
X-Gm-Message-State: AOJu0YzfPuxuvc1CGTv4j5YFYSvauvunTMaQcISy2aLcPWxHg987gdw0
	MvMXZl3IOT4nmRQS2Q38dEoDknAV+ysaI08UFOXH742yRep0dOsegZoK0pM0bckKP/aCs3+o6BP
	k8CfXqifVCYUJgEIcUmRbxUcvTWVMUPc9gVd/tofA/U32jhlx7pQfo8zmKIQipybw
X-Gm-Gg: AY/fxX5iL9LngQy0HFUYtV3LhsrLC7figBCoE6JL4XkBLm72dODtpyxb4K78f2paZqi
	uVD09aYuo3X8Yv67GVgSx9mPpjbZf8MOHTzajrh8xnSJvv6Gq5lxSNcOMHuI/Q8BiP8WxHt9g5K
	cqfTaiARx1x4vS2BbrUFiklstb83oBz3gt9n81YSiT6HHelR4MMtsD99u4DtMHZ/nxtFdwwiKm1
	2kauENP4ULNhfmXsLq3lLdNauomyML/susGpZl8vqyABWtUeLgjWaKC7KTRB9dha+T/Az1bTIBF
	6jNR4KWGQWATFzKSZPa+AYP7JkwC1I/O73NnKdzDqXRrj9LNfr7Q0YCUWbs1jVQOL2h+h3atRb5
	p+iUDYLRN1w9/5DlHBxpQSu3UnSzIOkkjLUY3kwwTk3CgR5jqv+FOuWKh9X749dlPEOsVYaICG+
	xZDmQan1AtenE463sZgh+Kjwo=
X-Received: by 2002:a05:6122:8710:b0:563:618f:b7da with SMTP id 71dfb90a1353d-563618fbd24mr1693573e0c.19.1767967553488;
        Fri, 09 Jan 2026 06:05:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFVBGqgIZRVN4OaS4/wzZQzVT1RQHmlxD8j6Yg/Jt6Pl6TAeEpTA3dG8UlIPHbNVIw7wyeUDQ==
X-Received: by 2002:a05:6122:8710:b0:563:618f:b7da with SMTP id 71dfb90a1353d-563618fbd24mr1693514e0c.19.1767967553041;
        Fri, 09 Jan 2026 06:05:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b6addaab0sm2472730e87.28.2026.01.09.06.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 06:05:52 -0800 (PST)
Date: Fri, 9 Jan 2026 16:05:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Cc: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs6490-rb3gen2: Enable CAN bus
 controller
Message-ID: <wbx2qrkhpsntggzqkzkpi4sa6qv3buhkjbwmjoa7zgw2oc4b7u@qugyhcxb6qrh>
References: <20260108125200.2803112-1-viken.dadhaniya@oss.qualcomm.com>
 <20260108125200.2803112-3-viken.dadhaniya@oss.qualcomm.com>
 <n6affntgff5wy4xmm255v5h2ejpepicpz2cybcuvsxmry5td6u@jucskv7zrzvv>
 <5cdfe5a5-3c78-45a2-886c-768b224ad776@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5cdfe5a5-3c78-45a2-886c-768b224ad776@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDEwNSBTYWx0ZWRfXzYVRuerhcYhW
 dvESwGcFPaCY1DFYnUilyzgYPZ7x+wLayft0jBXrLJPqZEpvHe2nPFeehah84b8qcU27XHqolGT
 ueenFPucL2xGqvNbKsZknHURw1QphD6F303XNhLXpGFBpQr09UOh/oF5jPMDLFFyr+dLwELaOxn
 BFXknmQaC3B7IIsbsUO0kQ1Yh3SdtwCW7sctn6FTynBU91em5bBi2D/223KEjvvgd8keqdlNqIa
 HRHEC5ykO3wvbVteV9zO9Na0yNLYpQ3DiKt6kovjZEMFeDAaoo7hpMJldOwLmp5qXHmYcunAFq4
 YdCnzsV56qpiaWe7WynW2uK96DPc5C5u8oQjcfOXj9S9OszmjiSZsBkBnEaBY0q4g/3YtHR0zDN
 IgnElQeEzKmoXGWG8ymuAYbhgphJpDIPJebRszL7AkQlAM8XkC21+k3bfjHFG8cxnfqEa/5OGuc
 WSYn9tcUZXzsuuD/Sow==
X-Proofpoint-ORIG-GUID: rfdDuyEEsBOzMfsx31duUxRwbrx7J8Wl
X-Authority-Analysis: v=2.4 cv=V+5wEOni c=1 sm=1 tr=0 ts=69610b42 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Ha8eQrMcodomtfQpJIIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-GUID: rfdDuyEEsBOzMfsx31duUxRwbrx7J8Wl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090105

On Fri, Jan 09, 2026 at 06:23:39PM +0530, Viken Dadhaniya wrote:
> 
> 
> On 1/8/2026 7:33 PM, Dmitry Baryshkov wrote:
> > On Thu, Jan 08, 2026 at 06:22:00PM +0530, Viken Dadhaniya wrote:
> >> Enable the MCP2518FD CAN controller on the QCS6490 RB3 Gen2 platform.
> >> The controller is connected via SPI3 and uses a 40 MHz oscillator.
> >> A GPIO hog for GPIO0 is included to configure the CAN transceiver in
> >> Normal mode during boot.
> > 
> > The main question is: what is so different between RB3 Gen2 and previous
> > RB boards which also incorporated this CAN controller? Are there any
> > board differences or is it that nobody tested the CAN beforehand?
> > 
> 
> The behavior is consistent across platforms, but I do not have details on
> how other platforms were tested.
> 
> On the RB3Gen2 board, communication with the PCAN interface requires the
> CAN transceiver to be in normal mode. Since the GPIO-controller support
> was recently integrated into the driver, I configured the transceiver using a
> GPIO hog property. Without this configuration, the transceiver is not set
> to normal mode, and CAN communication does not work.

How do we verify the mode on a running system? I have the boards, but I
don't have anything connected to them over the CAN bus.

BTW: can you recommend any simple setup to actually test the CAN bus on
those devices?

-- 
With best wishes
Dmitry

