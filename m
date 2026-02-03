Return-Path: <devicetree+bounces-262054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKNBFE2QgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:06:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D3AD4F6D
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:06:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EB0673005311
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E8A2368263;
	Tue,  3 Feb 2026 06:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C1gI87br";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PH9KoUA9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1792130FF29
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770098759; cv=none; b=pI3xfXWu8AuipuCoBZsz3SChoB6CZsGjFa+JR4JloltKT8x6Kc78qjrE2myunPVd4ZtSoUp3e0zGc1v0HyF6K1SEtSe2MZc1M1yfUzPLoLgwQJ+zealH9N+gi4tBvx7DbCHHvzIMLf1/UYlea80KwZlTje8zYhS69/9GfRTCiTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770098759; c=relaxed/simple;
	bh=afZGl96//d2rwNcgtg2o2FkwEOoHkFUxl/SSFdH8Ik4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eNxk4ijhgar+QTkfp9BELi5umyvDQh7Xe4ejfpuRc69d9et8J4tBZkXIKnWkkUm90K8nQXqoASAxsCDbPmytGp+lC/hopx/lKSxBrXprWkMorsxBHjDrl4zUqJXX8rE6pFXrrf8n2GqPU2Fmyspt6L45MfO0VfnKRcCdd81I6qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C1gI87br; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PH9KoUA9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612LGhmW2884370
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 06:05:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vJENjir18TwTbYsuT4PFHqHv
	FcFqpnecxFzZxi0J/Ow=; b=C1gI87brFVcD0PAuvf1vj2t9kOlpzIlLjPGR9Wfc
	tYhyBqKDr4fKaq51XdCjFn97uqVtPaBJZDkkP5jr/RmXUBUg1zoXnjsNZYWcctcl
	wtb61UKhCnncLA8QYbHtAupHSOrBjhIE6JNRS6bnXdJ84c1tadc56jNWp88cRHF4
	LvMUeaE94mooLsPzlRG0oBxdzAnN6i57Z4dJSdfNsw5lQaoEoJfprwR6OHTPkf3H
	T+hJB+BJLUUzWWH2lmjn9uv0SYmJsR2yHUr6HVfthZYrCMX4Ve2SYvHq7VncXpEm
	xaUysJNBU7l+cWPV0M1EceXsf7xQVFdWRFv3OxAZ/NWXfQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2uu3jwf2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:05:57 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0f47c0e60so12562165ad.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770098756; x=1770703556; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vJENjir18TwTbYsuT4PFHqHvFcFqpnecxFzZxi0J/Ow=;
        b=PH9KoUA9WeGqc6BNwNk63foUFu6ctRt5JEJpRM5J7rb0z9Lk1LVrS0acuZdbOoUWws
         i3bqG1A4xzqVCAuL1Y+TGlPowBeIRgBOcwbPzzy9b+Q3c/u1vCmUdhz7evrLhnrsZvAu
         mqrwTFvcTpTIOEwTPzIIZEiunxBFCh/cNwJd8M0QeCWohzJolDV3X+qJe6U7+EyC8l4C
         ajWOuoatZTGV60UwA3eC1V3y0te40O+5mQBcKpYAY8BOH6R5CwpOrxwA5yMmMB6hsZqI
         xll5WzXo5skXCGZMKUvPRYBID5cudlQW+jW6/Ds9NPOajjqow/RtJhS6/7izdLFsszLS
         PCEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770098756; x=1770703556;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vJENjir18TwTbYsuT4PFHqHvFcFqpnecxFzZxi0J/Ow=;
        b=YFs51BjKvq+hVL5fbSKaBTXvISKxFNxiH4AGDvVn916KeFtPIFK8Otl58GyODgTA1N
         Eu8VncWMW+BK9NaUk39K2qmPE9jiVioCHP9ZkMzKwUa90aDgWlTjpwQKgHXCuMJNn6Wl
         aQ4aDwrzAZMV5ynZJGNyODppX5NbmDSnuqm7GPrRAFd/EwnMNJNQr1+exvYSyVkwh8/6
         NYu5+LrawuBqZEpHN0YlxAQK29PPSjVzuOZL/MT9was2sd2TMspNmk1Y4i27V1O49+Ae
         xIpZdsgEcVBU2WgRRa8Vd0/7GM+IPCVXGumtqpUAUQ+DaDJHo8DGw/ti7hSfmAr+zjsp
         LEuw==
X-Forwarded-Encrypted: i=1; AJvYcCXQOtR4VYBS0hazus4G/aZiB1PmwbkZ9fqnIlluxmneH/xXFLv3uk8DMnji3r/dc9JslIVn0sYtu8VX@vger.kernel.org
X-Gm-Message-State: AOJu0YzdI87z6xoLqmyMYOGcDVxVrwVXzUxePPW8Z/jJOB7jr6TtsFHi
	S58WUIfAcCDSIXwjfoJPGGxI2u5pQpU5SZJIrN52zbebpkRascyzQA5Rm/zf50RoJkaXyFN/+WG
	0R1k4ZSoXqJ5Fru5+RB01iPGo9P87xKumQq7XxSc0Tc8ILnwz/4VYG1jWqiRxq1sCEvSSsKLP
X-Gm-Gg: AZuq6aLl4upExZx8wJXCoyWQbmH4shpoVDhYEGTCwFIoxmeIDW3UWCxBlszzR1z7TmE
	YtBKys+8oAFSiwRN4WG2rsQeoNkge/cUjELzAGDCPSHpUi4JkhibD3ed4ivhdrkleZj8ftiRWVn
	SCkXc3JEBPuB8L/xikXQwToibBAW78M60h/gOBi4VyEkJ+bL3O/ZMBLkRtWm5UMFB+S+D58UsUG
	L2Y1OSTp0Ojn1g8Ck7uSIt8f2notUsh+zW65eRSLRP1Ev6QA9rl2fRXDT6l5MF3hPdBayJrzlM/
	joqaurUe0q+9T0bLncrNe5wW/z21cVfSYRXK15U2jeVzbEmR5U392++ezo14jKBzZXqyOwq6ifM
	vprrOZXAoQjrupelLg8Ks7M2WE/4RmE/L0/PbUa9ShiGomRG00//z+/TDByWvbscN0jHluP57dK
	PMECN9lls5h1D3erTECYuzQfn2pLtHi5I9VfxvfSM=
X-Received: by 2002:a17:903:1967:b0:2a7:c6c8:2cf with SMTP id d9443c01a7336-2a8d96b11e7mr147944655ad.22.1770098756378;
        Mon, 02 Feb 2026 22:05:56 -0800 (PST)
X-Received: by 2002:a17:903:1967:b0:2a7:c6c8:2cf with SMTP id d9443c01a7336-2a8d96b11e7mr147944425ad.22.1770098755932;
        Mon, 02 Feb 2026 22:05:55 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b3eee4asm159813045ad.20.2026.02.02.22.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 22:05:55 -0800 (PST)
Date: Tue, 3 Feb 2026 11:35:49 +0530
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: ipq9574: Enable eMMC variant
Message-ID: <aYGQPZJP4ElKnIWP@hu-varada-blr.qualcomm.com>
References: <20260202073322.259534-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260202073322.259534-5-varadarajan.narayanan@oss.qualcomm.com>
 <px6xpdu2mafxunvvlx6svf3blyzh3w4le4c7jqgxqeerbsgq2d@3rsoiwpkcguu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <px6xpdu2mafxunvvlx6svf3blyzh3w4le4c7jqgxqeerbsgq2d@3rsoiwpkcguu>
X-Proofpoint-ORIG-GUID: jehiQ6AqMwoIVyYiAdecu_OVIrh5jA-y
X-Authority-Analysis: v=2.4 cv=OrRCCi/t c=1 sm=1 tr=0 ts=69819045 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ve4KjJurTZdr_aZ2fzkA:9 a=CjuIK1q_8ugA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: jehiQ6AqMwoIVyYiAdecu_OVIrh5jA-y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0NyBTYWx0ZWRfX6bn5RCf7RTK/
 lzheqRRlM8n5cpZLggtdPinokD1g669u04glORS/tU25HAcJpFSmuSf6gPKIO543MZtqLmst1E1
 7UJ6mty0yEyfovPKnNqOcjaLD6z46FDjEWV68m+lupHelJs9wOW7Cnsat01XMAuDj2OrwXFwwc8
 UT87/SNc0063/QnnbqJ70vOSxgraZIoxXyoB2V4lV+Xi1RkJIBrnzUFzHgQxm3TF/6NBEaPZBAc
 OXZ+p6C4b2bSHZKqbsL5FS3nRD20jjTuPAVJVDP7B6h4G2rqWKP5A2PCQVzDIvmNimWIvgCw1Li
 gY+dgBgdfEzaumlObVnr+l0siVqSvk7Qso3bJzKqYQ/CHQRSf3d2ExDC4mYMp1Kmjs+xZteUhAa
 JUYPJ1Ujn2BO6ktx5y2dCNAVBa26X2Cgyx6NDwuZ1ZcO6gEQZ4SDOdeaus6EIxlwoOut+SO9S1t
 Yj+LP3Xp5qRJY9A7XCw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030047
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262054-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 67D3AD4F6D
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 08:04:41AM -0600, Bjorn Andersson wrote:
> On Mon, Feb 02, 2026 at 01:03:22PM +0530, Varadarajan Narayanan wrote:
> > RDP433 can have NAND or eMMC based on a board level rework. Since the
> > same GPIOS are used for both the interfaces, only one of them can be
> > used. Add a new DTS file to disable NAND and enable eMMC.
> >
> > Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> > ---
> > v4: Move sdhc properties to SoC dtsi.
> >     Disable nand (that is enabled in ipq9574-rdp-common.dtsi) here as
> >     the eMMC variant doesn't have NAND.
> >
> > v3: As qpic_nand is disabled in ipq9574-rdp-common.dtsi, no need to disable
> >     it here. Just enable eMMC.
> > ---
> >  arch/arm64/boot/dts/qcom/Makefile             |  2 +-
> >  .../boot/dts/qcom/ipq9574-rdp433-emmc.dts     | 24 +++++++++++++++++++
> >  2 files changed, 25 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
> >
> > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> > index 6f34d5ed331c..d5fe12ef4300 100644
> > --- a/arch/arm64/boot/dts/qcom/Makefile
> > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > @@ -26,7 +26,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk01.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c1.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c2.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp418.dtb
> > -dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb
> > +dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb ipq9574-rdp433-emmc.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
> > diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
> > new file mode 100644
> > index 000000000000..9053838ef696
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
> > @@ -0,0 +1,24 @@
> > +// SPDX-License-Identifier: BSD-3-Clause-Clear
> > +/*
> > + * IPQ9574 RDP433 (eMMC variant) board device tree source
> > + *
> > + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "ipq9574-rdp-common.dtsi"
> > +#include "ipq9574-rdp433-common.dtsi"
> > +
> > +/ {
> > +	model = "Qualcomm Technologies, Inc. IPQ9574/AP-AL02-C7 (eMMC)";
> > +	compatible = "qcom,ipq9574-ap-al02-c7-emmc", "qcom,ipq9574";
> > +};
> > +
> > +&qpic_nand {
> > +	status = "disabled";
> > +};
>
> I'd prefer you keep optional peripherals/buses disabled in the common
> dtsi and enable them in respective dts, this generally gives cleaner
> layers.
>
> Was this done on purpose?

Yes. Presently it qpic_nand is enabled in ipq9574-rdp-common.dtsi [1].
Since removing that will impact other boards that include
ipq9574-rdp-common.dtsi chose to disable it here.

If this is not ok, will disable it in ipq9574-rdp-common.dtsi and enable
qpic_nand in other board DT files that include ipq9574-rdp-common.dtsi.
Please let me know.

Thanks
Varada

1 - https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi#n182

