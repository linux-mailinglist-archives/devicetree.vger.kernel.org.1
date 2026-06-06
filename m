Return-Path: <devicetree+bounces-307743-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t712NVOvJGp++QEAu9opvQ
	(envelope-from <devicetree+bounces-307743-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 01:37:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E28564E836
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 01:37:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=WDlGpHX1;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=S9o65S+G;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307743-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307743-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3DF8A300D9D0
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 23:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46F1930F803;
	Sat,  6 Jun 2026 23:37:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21841283C83
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 23:37:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780789073; cv=none; b=EjWtXmTyFiY6Sp/EuJKZyDumOZ1Nq7PKLiR3mnX7YaDFlmqXv4BvmzLVVUjEBkI6WLTMfKkCHenadeuBxij0PfxzF1Xtt7DGjA4BU5mEI+Q0Hr0oIPbYdG4A8HvhvuNEvoIQhbT917iSqOxuAF/lNNoHwtaMoa03YanGcmuzfJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780789073; c=relaxed/simple;
	bh=FNdO4EzkQlK7edPAWI5qSEOC3CTj300PKXMEaAiIosQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mYv6OFsIyP3Vkt2MO6c5uIwQ5r9088nIYczbeBegLYFE20u0YQ2GOVZZExOSgr7HDxEiwvYwdCdWWHnkD1YX7EwnC4rPNpD+pLRUTU+6HW2V87FLFtqeCWML9jUWTakbf7aG02bb+FpZoAMV01qpG5BWxmbZd/jAfWOUUEXK9wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WDlGpHX1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S9o65S+G; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 656NY3cT2744581
	for <devicetree@vger.kernel.org>; Sat, 6 Jun 2026 23:37:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=I4T2ktda2y2xuFsJV/SVVBkd
	1GmugXsO7+QrMGj2C+I=; b=WDlGpHX1kJUrjA7pXHlyFhDQ5Ba0yBtQvoWL0WUw
	PDSQKO4hk1VjPcPAU2spAG0A7X17vS/VdMdABZ0zDJ7k2h1JOCpEXqUnRQxcjckv
	gXzZCOFVmJGzbiMqg+C5LSp8778HE4sGKNpu/op8L2vW36z4PJetwqR4ZY2/dw82
	J4RCnDQBG9rUmU+dyXKTU/YSiDSiLWuyWtn9O3oMkV67cfRdoXm/qaUiIhZqjLGl
	rD3li5Ji8iov3ZYVsFRVJhK33yEDj/OzizruAaws3YS4W4GUTpRKJ4kUP7vykA1b
	B0qdv0wvLnqe2cfmOotGlzhvK91ymf6PLClMgZYTH53QIQ==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emcadt7nh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Jun 2026 23:37:51 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-59ebf602dbcso2101856e0c.2
        for <devicetree@vger.kernel.org>; Sat, 06 Jun 2026 16:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780789070; x=1781393870; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I4T2ktda2y2xuFsJV/SVVBkd1GmugXsO7+QrMGj2C+I=;
        b=S9o65S+GPuoOq5spQ6zHyGhUaaC9uG0Kn4LmglHTucAr6atyaHeDbvK4+mpCR5gRrW
         Mp8wIoADBqCu8frOWKSqJdxaNNe7Dei5gDaCVXqvWA36J96BATaq5s8Wav3wHmN/GZDh
         CJmrScEUuaiviie31n9psMczc7E1eqnmcmjSQFf2UnpOe4up6crdp/jiGi+HaWcknRVy
         KP3yA5i+p6p56jxazybTLJtQo9lYh/tpdq6QOUQDwuc6hpzCmqNCyCmxZzbjpysBEO8c
         obfCyfuJqTbMVSPitC5UcR9bQeDt8NZ/7l2HZ2FqkVr+6HMcRLHVyL3rh9qPWvKaVudB
         AIFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780789070; x=1781393870;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I4T2ktda2y2xuFsJV/SVVBkd1GmugXsO7+QrMGj2C+I=;
        b=DK4hMGX0FIoYns5AOf9qjWhn9Prh2SqoRFSmxY8xmhrrgtnZHHp19hSzlv2n/yeLzH
         Ke7X1Z1G1/HhEmMZOctyM4WY06jUi3e5ot9l97QEOiFcuGzjDv1oR7fXebe0qoBA31et
         Jcv3gIT3D5ckp/54yNorVbazjQAq/GND1+blETHUEs6mBbGApK/44jqPteqMyNYPYHI7
         pqELlz58lnLZnRMtCeInzSLHDlsDzXFvmbt5Btk+73SZRDG0qgWT1M7vL0PTnLyyyaqu
         lWfNjNkcoVCisCGr1ljrWL9JSxAIbPbC2s/QTZRgxhDyMSFQCzVY1XAfNzDfCsEb0CTK
         F1XA==
X-Forwarded-Encrypted: i=1; AFNElJ+K0RYrIeO+ev6g/+4zKkCmk6c5GiWwLwlN8bUJcERUhQlR1UqC193j1BWfCoryaAtYx8vF8Vb8TA6O@vger.kernel.org
X-Gm-Message-State: AOJu0YzJSUQxpaq0IgZOEY64v4BWVG5iBd+I5D6TLtKE8ROCfgHlMJlc
	L04FHeOG8W/MkNR/xtHUNVm5Jp68sRcsqMiikvekcLSgQH9MNj6PmGXwpWvpMo3b1JqeNYCHEZl
	bBFONSSjpdciyjyH54p9oHM4AABzJN7wtagVlyNnFdYlKwOIDynNgKyrYYpgQghWQ
X-Gm-Gg: Acq92OEYUbE7jvuYfbBlOJjoSo5f4aUftPeh+CacLKfCnhbmD/a3AU1wEzZC/MWtVgo
	rBYPh0aM3snXijXnmHR4s5ylja9sDX006Ll9liYYtBFvvSSeFcqAiH1HsKLc8xf+ofmCISNDFkE
	oHcS4bjx4lSEhMCPAcz14O7OAqRWE5ETrDuyZ2ZyEoO1t1F1spWkWHQHbNB09rhHUoGh1+9LrY4
	mWNFmsvNSNAWTdDac2dv2K8anZHliReLx4TPNGp3MjchWffeZuHCQTZ/pRoXMj7L2CXofO6wz5B
	pUrilGChtBUBEaGSe3pBuIwzqPpUEqSQxQ8XrqQlo6Kiti6E9C2CCbYddE0zWCPvioGyjmuuHsp
	Rzd+Wlh35BZ8hNGV6AHzhgCWgxaQSSNGzzweOHCTNUVdImbVOwlO3ej7H8UYorSe4f+rsKNhcGM
	R8QjCCjGp4r8Pw6YpyiN068ByqQEVat7ZYBana38xLILkVyQ==
X-Received: by 2002:a05:6122:d87:b0:59f:8ddb:2fc1 with SMTP id 71dfb90a1353d-5ac55be8a83mr4269871e0c.7.1780789070193;
        Sat, 06 Jun 2026 16:37:50 -0700 (PDT)
X-Received: by 2002:a05:6122:d87:b0:59f:8ddb:2fc1 with SMTP id 71dfb90a1353d-5ac55be8a83mr4269865e0c.7.1780789069747;
        Sat, 06 Jun 2026 16:37:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b904207sm2715915e87.32.2026.06.06.16.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jun 2026 16:37:48 -0700 (PDT)
Date: Sun, 7 Jun 2026 02:37:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hongyang Zhao <hongyang.zhao@thundersoft.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        rosh@debian.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rubikpi3: Move PCIe GPIOs to
 root ports
Message-ID: <3eot5467yvyvmw6rckfsklmw2mh3vs4v3apqexjthg5ygksdag@j274au5cv3mc>
References: <20260607-rubikpi-bugfix-next-20260605-v1-1-ff97c5e35bf6@thundersoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260607-rubikpi-bugfix-next-20260605-v1-1-ff97c5e35bf6@thundersoft.com>
X-Authority-Analysis: v=2.4 cv=DIa/JSNb c=1 sm=1 tr=0 ts=6a24af4f cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=Wdb1h0LgAAAA:8
 a=guB-6Z1nZhQP84zmCysA:9 a=CjuIK1q_8ugA:10 a=XD7yVLdPMpWraOa8Un9W:22
 a=j5gyrzqu0rbr1vhfHjzO:22
X-Proofpoint-GUID: fH-3Hxe1zdMc47oSDvbpdLPmxzsjHoDS
X-Proofpoint-ORIG-GUID: fH-3Hxe1zdMc47oSDvbpdLPmxzsjHoDS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA2MDI0MiBTYWx0ZWRfXz12x7KspVAAs
 2SGRzqANUbRITZeLbCnaUeQiDi+l1jNLT8ZzQknm6Qpk8CMlKJX69Ps7Q29wvtQil/KVbsxa5ns
 tBkBELCDGsyn8QG5dd3zPC+mbFhZmPFAXAiTYD027+jYdxXCloZBsQ+Q1pFCp3iVc7GSEOOwgaw
 vi8Q8vufi8QewyRXWrL0d+FzsQoPMY5FdDX0HKSyHWFeFcorHqI33RTsKsN6e7y0+8elkn686RW
 HTJj9VCL+JrXtUK5oclYBTyMcKq4peaDNMOw2CpIPRWAkR+WTe3mVLonBQ/Q6vVXS69o0Vxjodk
 OHcgmsyV4ZMj0fOPmj58w/lACCFyrMV48bJTMY3m2UZ82RAOTzohOzunMUJVJLRlOC2fJkeEubY
 Ydq0Gi+bEypHH8mX/vmYggfu4ghklpR3go/KEkRliyz5aA3R/tC1CHknePm1wvwWLCqcA9txrNl
 B9oxxqgP+Z2cOsM4v0Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-06_05,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 adultscore=0 malwarescore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606060242
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307743-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:hongyang.zhao@thundersoft.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:rosh@debian.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E28564E836

On Sun, Jun 07, 2026 at 03:13:49AM +0800, Hongyang Zhao wrote:
> The Qualcomm PCIe binding deprecates perst-gpios on the host
> bridge and expects endpoint reset GPIOs to be described on the root
> port as reset-gpios.
> 
> Move the PCIe0 and PCIe1 reset and wake GPIOs to their root port
> nodes. This keeps the GPIO ownership with the device below the root
> port and matches the PCIe binding.
> 
> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> ---
> Fix the PCIe reset and wake GPIO description for the Thundercomm
> RubikPi3 board.
> 
> The board currently describes PERST# and wake GPIOs on the Qualcomm
> PCIe host bridge nodes. The Qualcomm PCIe binding deprecates this
> and expects endpoint reset GPIOs on the root port nodes as
> reset-gpios.
> 
> Move the PCIe0 and PCIe1 GPIOs to the corresponding root port
> nodes.
> ---
>  .../arm64/boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)

Could you please refresh all kodiak DTs at once (and also move PHYs to
the the port node).


-- 
With best wishes
Dmitry

