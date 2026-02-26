Return-Path: <devicetree+bounces-268579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APzCLKy/n2lOdgQAu9opvQ
	(envelope-from <devicetree+bounces-268579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 04:36:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1C01A0982
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 04:36:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7E81300BCB1
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 03:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13EB83876A5;
	Thu, 26 Feb 2026 03:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YtnnGu5r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kvytonto"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B114F283FDB
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772076968; cv=none; b=MeHhCTjyWczOQiZnZJ7vb741OFMCWC2B+5b4sOOtsQT6Cy6P5Cs6mf9qsQ7HU+ZnRSXygcDhul7JT8Nfu9RjPWLyEJOW9g5BVQk3FIKC6EX+U1tCt+RM2Uddyd5OqUtZiAfI1fgUgHFOtKdbtN3+syzUSTo4lOLYnmwtFetCfJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772076968; c=relaxed/simple;
	bh=Tm/CntGVx7lzcYy31vYFSWuxJJq5hPUQ7g57M+fcQDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=al5WBLSjO15B5iS7uaLkejy26WbJM0RPsYG4ogBCBE1QQyg/e2ZXuVyTRFcRWFCw7A6Z38JxNNHzXoiVuLOSxEYcol5Lb7WpFTo2iR+/VVwEWw9afCWNG7BcG8n79pT0LyTVpcH8JYSrBHBMzCTfYWK9YKeRZ7e1OcAtBCQpav4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YtnnGu5r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kvytonto; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PKfnNL2523954
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:36:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	su2c5PEEQWrzHZdSjwt/TsT9V482yyWcdTzdDBcp1YY=; b=YtnnGu5r36902Mz9
	dfUAjitYWSG+Fm1ugd3dsDoQSSnsv/tUgJcoc3mImrLrKchln6RNo4FlO1Av9Z//
	OGH+m/1/usB5/xiCld5EwYyzXViO5FDw97er0xLDTWQN0QsBgWh90BZiIIqXim80
	JFk3Z96+ALwHkxNB4xwBLb5JS5WEWWEsMS9PFX1icVAgMY1cozHdQQduW4K3yGer
	43MbjqhXkLiZJk45jTWa9UdVHLCuHCMxU6lUGPNEynOV9MSmOIRfGeV5p2zdz+j+
	D+xGBHIFvSivGvBDJnUPdK5MERCc3smKvWx240g7FegstZJX1zQF3+wHnxo9Rt1F
	qqsCtg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj8bd8wf1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:36:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb0595def4so407502085a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 19:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772076964; x=1772681764; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=su2c5PEEQWrzHZdSjwt/TsT9V482yyWcdTzdDBcp1YY=;
        b=kvytontovAcrfDaw3r3cMdJKjne+KpMw0DbHvIn0/EpDcA7mazN+uYS3vUwiVY74NK
         K5r20Wu4fZxgJJZmzBzGLW9bvxX7mOGnOZq5MUb+BuKP0V7Zua/3kBaIngJx0Bw+ncDV
         QxMHP7cxoOJaEJzl8yb9pwBGhRrBKTFzeLberSdNFXp89kbE2AXUYWT7kdi8a7UFepog
         RHtP4IwmS++LElpVyCiqyoHgIhv9zWcaUaC55LZV2rlJf/xCU/yn5kdTuDTQ671JxaEo
         p6ATN7ID1+Kb513X2ACz3o7P8caKdAvqzOE9rMeGEv+AGwHYyiGhn7D0gtJ1aaIk106o
         NQwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772076964; x=1772681764;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=su2c5PEEQWrzHZdSjwt/TsT9V482yyWcdTzdDBcp1YY=;
        b=EbicOxDn13dMBoHQY9NrPKjIbDmrLRPzbVtL8KoipYNJxHT+F3zy8ioJtPq6kXRa69
         l7R264YJj24GKJtJ3QbbR3S23ezu1ASFRfbif2TVpKCMzsOtmZ1RTDNg31mU69nT7+oc
         JTfXIGRkLGXq1Td88rXVXXgUo/MnByDd7UsNbhfiCZWM3TG0XRXgBA0AoU5hQ0b0dYPz
         os9WUlnkgNQsytAuP2qUwEoSTr2ZCEK5Gngb9HBXaNgv56KbasRPIkmG85lkhpuf0KTs
         bIf0x+iUT1+JAqve9pC/ANFgYaJjgAdUYcgL81d/9HKU+/hYErHDVg/omw58YBXgdMWA
         FVIw==
X-Forwarded-Encrypted: i=1; AJvYcCWEd1SY2h85mWZvoGPmP3LLZ2Lb2R6+STSFnNoVhjXSbkgGGffwakis9rQIxArlG/a9GCbGs0P1yDw6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb5wZvmwB4zsurFcW/JgQSfo4XiaUqRkkdnHPpsjfeLNDswGSU
	BODsw4GqPOahxdDA5KDVPB/0DRQKwr5/rDh5bpQbC1D/C9UiO83b0W58Lqd7qII/LCmOpitT65z
	z7m9XaNVct6L5EnxNq2KqRJhy1LJUaFNU7jY7Zk1oONnYbUl/HDpkFDv+fXT1EjCC
X-Gm-Gg: ATEYQzz8PgbiUcTqaPBple2drYN54bKsgr1NE1WjIDDQMuPVDJ7J/SuleZE/jP/Fe8i
	MzZA68Hb1w53LAD+zBsongb35CCWz8bS5WOJaQWzwpnMqkOW7EH5vADLeB/ayYSWLgPLqke2PbB
	6H7cwkfmnZO2BSkr8kc5yhEZDAbgVUkz/THB6JLaVdVcqcQZlA74IO2llVjne4oY1FEfLkHLX1h
	EQkJQn3kAi9DPpTiR8eHaKeIehau3mzWR4C+ilUK6vB7k6+8jHfEgk+KseMZ/wTvSwFCG/JMlf5
	csgrOK8MIn0EPGRxpzRdLZT/RpQ+FVBKYrrJt4psnZxyuD3RSD1qD5KR/YPfXhAuXa8B/xZ0pAh
	6CMMzruRrCx0gBhD7lEgHHHzSKlndKJLKFXDqj5hpuTy0Ig0BDhX7jCFlsTKHn6gdviWEsq7aDq
	HUmTE1XQ/0JPBD1XFfOERK/F+loJ/wt85NQa0=
X-Received: by 2002:a05:620a:4407:b0:8cb:3143:64cc with SMTP id af79cd13be357-8cbbf407265mr167692685a.42.1772076963622;
        Wed, 25 Feb 2026 19:36:03 -0800 (PST)
X-Received: by 2002:a05:620a:4407:b0:8cb:3143:64cc with SMTP id af79cd13be357-8cbbf407265mr167690885a.42.1772076963151;
        Wed, 25 Feb 2026 19:36:03 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a109e1772esm271922e87.20.2026.02.25.19.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 19:36:01 -0800 (PST)
Date: Thu, 26 Feb 2026 05:35:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC] arm64: dts: qcom: qcs6490-rb3gen2: Enable uPD720201
 and GL3590
Message-ID: <3y2j6bvfepzathzrpvyeozmnk3h2whj3mes7w4xcqff3mhnh3b@h5xntwre7t2i>
References: <20260212-rb3gen2-upd-gl3590-v1-1-18fb04bb32b0@oss.qualcomm.com>
 <iy3yypj2gcl6znygsyoxja3lh7irrl25snqnbxfmyhyhqgays2@57lyx33bthh6>
 <5slnnbku4wap4bpyg5iyme3zmzst3frggdukg4elli3e3pmsow@7oueerydfiq2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5slnnbku4wap4bpyg5iyme3zmzst3frggdukg4elli3e3pmsow@7oueerydfiq2>
X-Authority-Analysis: v=2.4 cv=FKQWBuos c=1 sm=1 tr=0 ts=699fbfa4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=3_uRt0xjAAAA:8
 a=EUspDBNiAAAA:8 a=ticRl_MBgV-HPz6wqh0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=z1SuboXgGPGzQ8_2mWib:22
X-Proofpoint-GUID: 6qHeDslQuken7kjxRJztM4Aovvk2Ng32
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDAyOSBTYWx0ZWRfXyoZtpYW48560
 s6YeN3CpX2ecqioCccqpKIz1oQC0SSZ/4BUPgycl4OfNzVuuhyb2Q1liNAioXlfFQjLrOl667JS
 EcKr9aRsota7sRMU+G42mRt2+U0ASPDoHHZeHT72vIHQUU+ZOaIbKtqKbzqmUhEWM4b8BlFq/Dv
 StHMX0YQ5wl4CSjbPLxdI5+s5F+1Np/FRz5i1HDyJoU1sxSk2Od/9Z20LN+RCTRC8sfCBS/IA15
 IoUNqI7hkC0v4RJh+bU/cCGsEP1b4y8pnIcEI5IcVUi+o1jSaIEt13VNTxMRRGUw/sr+9tQ+qk9
 3ZmTEdmJh2BfcpqHHRaJgPNGiPcRurrFJ4Y9w5+z6c6JpPluPK+qw0BdUvCCU7fowG6ekf8QI9O
 oJZB7Vmu0aIlG3hn3AjJFAr1ybbdMKePRAk5Jv2XniIrLnUJ6zk7FeJcHv50UyxekpJHbE8MX51
 KbhRnDo709jnlCuJ4Jg==
X-Proofpoint-ORIG-GUID: 6qHeDslQuken7kjxRJztM4Aovvk2Ng32
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260029
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268579-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sources.debian.net:url];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1C1C01A0982
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 09:40:40PM -0600, Bjorn Andersson wrote:
> On Tue, Feb 24, 2026 at 09:52:45AM +0200, Dmitry Baryshkov wrote:
> > On Thu, Feb 12, 2026 at 02:43:46PM -0600, Bjorn Andersson wrote:
> > > The QCS6490 Rb3Gen2 has a Renesas μPD720201 XHCI controller hanging off
> > > the TC9563 PCIe switch, on this a Genesys Logic GL3590 USB hub provides
> > > two USB Type-A ports and an ASIX AX88179 USB 3.0 Gigabit Ethernet
> > > interface.
> > > 
> > > The Renesas chip is powered by two regulators controlled through PM7250B
> > > GPIOs 1 and 4, and the power/reset pin is pulled down by PM8350C GPIO 4.
> > > The Genesys chip power is always-on, but the reset pin is controlled
> > > through TLMM GPIO 162.
> > > 
> > > Describe the Renesas chip on the PCIe bus, with supplies and reset, to
> > > allow it to be brought out of reset and discovered. Then describe the
> > > two peers of the USB hub, with its reset GPIO, to allow this to be
> > > brought out of reset.
> > > 
> > > The USB Type-A connectors are not described, as they are in no regard
> > > controlled by the operating system.
> > 
> > Nevertheless, their presense in DT controls port's connect_type as can
> > be seen in sysfs.
> > 
> 
> Is that information useful enough to be worth describing the connectors
> and wire them up, despite being completely passive?
> 
> What consumes connect_type?

Quick check through sources.debian.net reveals usbguard and
libusbauth-configparser. Granted that Stephen Boyd wired it up for DT
devices pointing Trogdor devices, I'd assume that something inside CrOS
can also be using these properties.

> 
> Regards,
> Bjorn
> 
> > > 
> > > Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> > > ---
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

