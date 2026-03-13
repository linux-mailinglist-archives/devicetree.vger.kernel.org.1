Return-Path: <devicetree+bounces-275385-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOzGJ+4wtGmuigAAu9opvQ
	(envelope-from <devicetree+bounces-275385-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:44:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 022B4286438
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8633331FF7E4
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42B433C140E;
	Fri, 13 Mar 2026 15:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mmvqELhc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NSZkqsgJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0FD43C343E
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773416419; cv=none; b=ckAx9Uxq2ZswfmqccteEjkK7Pa5afSrwmCvSHkar6/ZzdkYID7JPyheyfZuy4cmLoy4WAxkFeTWSqz3qEC/bJh/c6uQqM5TmHBqVQPRCd5GiRKwXSwqOXyOlRKM//ddww2/+Q+xMEcZnCPPxhW8RnetYCI4kEvzROJlivV1gLEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773416419; c=relaxed/simple;
	bh=8eAD5+AQ3R7FtkZiFl6yFdLyBJ3YLRD/s9x1qQ8mMX0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p75D/pEVIJYL76K/PKZXgzrIngP+W5i1m7v5cPC1/TRaHIu0ByWYu2YBCqRiGjMgd9Dh7i2+yG7d0B6cq0yIh9eOvzhiYU/dBUNMU2fal5aAymwJUTauxmNDyPRsvm+M6IKWVO1ucORVrKWe3AXhT3oeUJaPkA2j2DaYo2HBRWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mmvqELhc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NSZkqsgJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DA829s1749328
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:40:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=J2vru/Svx1Am2Mr3sn19MOmu
	aJS0qSOIhqRt3IXkXko=; b=mmvqELhcgTujbz86e0tTmm/p6H4WSschqPila+J4
	er+KacyDtRhxABU04pZio/1qIDfQ1AOgvioT39IAvUacxqM8uIkYCoetLKwwHb6y
	TQOkp/pQ7I24jWirKzfHKpllH9O7kt+73BxdbGQUBJ7NxzcnsR0xZIuLZ72v5rih
	hLloiLHephoLyQjFXrAimDYtRhPNT8g4YCdMYQgaBEFxLM1HaXYWe5V2A0CZbpYF
	NqRBe8gK8/oJlY7KFTGygcOq+OFaSrag+sLqiX5sKKYZ+w000qViA4Xoa7/cNI6A
	mBQ8U+vmK0/Fgeykm0ND3PCfYpMn8puJNO/tZ0pLjNINxQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvgj6h3g7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:40:11 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7d66afceso1543713485a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773416411; x=1774021211; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J2vru/Svx1Am2Mr3sn19MOmuaJS0qSOIhqRt3IXkXko=;
        b=NSZkqsgJBILsfzMIIjSv+OcBq1TT8T/LFNK/t+9k7o2twvL+rK3ryiu4IFLl5tPfny
         BPGA1evLjiveYhWKrX4/RH93kxU+5aA0XAOMOmn/ETFTjcW5GDY8MGCJ/ZBftFZgOQVh
         yYbdptxZFx0G7Bev3MBWVsXOkNN+m45WZR8nLxf4BfHUUZvmHOs+9d2sI++xbAkebx7x
         A+9Bdc2rfYVPKmyZer6nI3aLM/6qNPdjvipaYSDtiPg5KI/SYUc+6hHit8/bi0eRxZPu
         /s9QaVToFXf5L4hzk5eiuxkCG/zmBFU7h43wmqDOWLWKp8D80Y/YBWtBInX7aONO2yxe
         eJCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773416411; x=1774021211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J2vru/Svx1Am2Mr3sn19MOmuaJS0qSOIhqRt3IXkXko=;
        b=dz9SIbRhn9r734pQoqyRQvHYHGud68r+hMeCXPR0n2vO4JszpY+UKW6NMEmNVHApqQ
         hctYqowMdC63RTcUG04oc0/uuVdXYMxl6Lyftp9OwVP5INRUwOWgkWmARo3J67L5Ai6u
         Bbch1WmegDODC+RQRoXhxXmRzVOnJ2WJhCvLXuSfP5hgDQdhXR/lPNz1Erc2hxbzXBU2
         Ih7eUazJsiqI7Nw0ErwTdJqa3vNuAl1sxCQHvIUePnx2dBQ8oFFgjvFf6R9radyiz53t
         ETb4LF+Z/JQ437ktOE5PvDuaJfHYJN8kgwTJv/oaVyNidDo+7VoX+j4LU4X0mt9WttK9
         nSZg==
X-Forwarded-Encrypted: i=1; AJvYcCWn+T6eNQiktcJcjqmBEaTb51H3iqL22QTCk/XpYay01wgsrzlFUfgrp7uW4OsEbNlKgLi1BicS3DX8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/bXcEGDTDtZTuN0bbJwoRqBpUL7axSt4NaRPa185jehP6eszS
	iPsAfccQFxdVv9QHUkK9AAMHTjVb7bFIkCieK3MsC2hfSdRKoqgALy1Grt7dDTEFa9MTBGa+qoc
	MDUX0MFHWwIIhYaDgSoLd/h4KbdrTfN8Y3laBjE0Obcyh5vETeazBbGivn/MYqFls
X-Gm-Gg: ATEYQzznExpXbybd0fbfJxoq7QmnJer625Xgt63i3Pqp9B+L6720UwSB31MfLejcc5z
	CmYTQBywwZ6iRBcAtuOGeQLpAbCsbzEcjYRajBO7U++eRaNhBPBEvSdAn5u67NHWvr+sNdyOWFd
	rB3hXw8EINS7mMfFkE9U2qfDMwQv1dwGY4s+EErh7/KY0cQkIAcxF0nKrsc2BmGMbu+lhHy5vnc
	/TaMureWiNoV4HnQPOVsGosl6l25GsbVbFiwn6liweg83kfoz6m7TNFt5ZAW2qY8woNmMjquApS
	lDTsNozKy2N5WhG1v0u0F0G5DktQRWNCKJYh7y1vCW0skjYmVHR+XgA6XR0tUVzPyCMCifOQu5X
	VB+5CMfWwfpzVuzW+LmGtxm0m76ULm1pDY+L9Nin+Q617KANlhPxgv695+vftEcTcxeVByg+Zvc
	sNAdz9SVLRh25wIATsbuCXJdzBq6f94tuOHI0=
X-Received: by 2002:a05:620a:269a:b0:8c7:fdc:e87c with SMTP id af79cd13be357-8cdb5b247c7mr504830685a.51.1773416410637;
        Fri, 13 Mar 2026 08:40:10 -0700 (PDT)
X-Received: by 2002:a05:620a:269a:b0:8c7:fdc:e87c with SMTP id af79cd13be357-8cdb5b247c7mr504823285a.51.1773416410042;
        Fri, 13 Mar 2026 08:40:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156377cdbsm1537814e87.92.2026.03.13.08.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:40:08 -0700 (PDT)
Date: Fri, 13 Mar 2026 17:40:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/7] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Message-ID: <5otifv465c7duslmogb5uzaxrh2k3u2ayiylcd6dnz3kc7win5@kltv3fxhtso4>
References: <20260313-kaanapali-iris-v3-0-9c0d1a67af4b@oss.qualcomm.com>
 <20260313-kaanapali-iris-v3-1-9c0d1a67af4b@oss.qualcomm.com>
 <hfuqu5uwjuh4ie55zwaqqbsflhf5yn55hnjva356nivoq46m2i@o5pkjnfrwycq>
 <62027e78-4b7a-4b94-a51a-13a9ae77b722@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <62027e78-4b7a-4b94-a51a-13a9ae77b722@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyNSBTYWx0ZWRfX3yyEDHuq5VE4
 9cuIt8OgL0jDD/Fo79f0AQw6wCxzUFli2NEfBcLszRjNs9qN5iGzjRrUrnlO2yG1VwYqa2Mr8xR
 54DN+l/rInoZZZ4C0xPik4qnLr6PMoERvHjg+JJxXOWNF5sPjBFSiGe1Wq53kUB2uRGKDsMw8U8
 T0Po4US/QAtQd5fEClAUa7lkUHhQpGRrLqxHBzc5mldx9drZXb4+Gi9g50gBS0km2tiPa86RKTA
 PWNohiBB5PQx/ytY36GzuphjpKot86UHTdU+7Av3I/w7cgueuFqNxKwi06WK4U5CJ9/C4WziOfp
 dj4hwvOuonS1HXsQXeLxsMRJGytdUVAIylGZ+Lr6mT39NDuzLGGStutG0oeNGx+hRB4usHp42+d
 iiZDxEGM51u4B7fjIEqBckFwivCH6FqG3X3BchAXGrqaqaSeW6wCEWYV/IobVg37fN/1H2dDa2b
 +GkutGF/4xmQfaaOOQQ==
X-Proofpoint-GUID: Yayvs3jd1eBMzuB3m3DDHP5paLCZtWRP
X-Proofpoint-ORIG-GUID: Yayvs3jd1eBMzuB3m3DDHP5paLCZtWRP
X-Authority-Analysis: v=2.4 cv=H+vWAuYi c=1 sm=1 tr=0 ts=69b42fdb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=NEAV23lmAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Ni5EwOkUcNZy2ZnK61YA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130125
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275385-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.30.132.128:email];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 022B4286438
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 08:46:52PM +0530, Vikash Garodia wrote:
> 
> On 3/13/2026 8:32 PM, Dmitry Baryshkov wrote:
> > On Fri, Mar 13, 2026 at 06:49:35PM +0530, Vikash Garodia wrote:
> > > Kaanapali SOC brings in the new generation of video IP i.e iris4. When
> > > compared to previous generation, iris3x, it has,
> > > - separate power domains for stream and pixel processing hardware blocks
> > >    (bse and vpp).
> > > - additional power domain for apv codec.
> > > - power domains for individual pipes (VPPx).
> > > - different clocks and reset lines.
> > > 
> > > This patch depends on
> > > https://github.com/devicetree-org/dt-schema/pull/184/changes/d341298d62805bc972dfba691da6b3b62aa3ff15
> > > 
> > > Nacked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > > Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> > > ---
> > >   .../bindings/media/qcom,kaanapali-iris.yaml        | 254 +++++++++++++++++++++
> > >   include/dt-bindings/media/qcom,kaanapali-iris.h    |  18 ++
> > >   2 files changed, 272 insertions(+)
> > 
> > > +
> > > +    video-codec@2000000 {
> > > +        compatible = "qcom,kaanapali-iris";
> > > +        reg = <0x02000000 0xf0000>;
> > > +
> > > +        clocks = <&gcc_video_axi0_clk>,
> > > +                 <&video_cc_mvs0c_clk>,
> > > +                 <&video_cc_mvs0_clk>,
> > > +                 <&gcc_video_axi1_clk>,
> > > +                 <&video_cc_mvs0c_freerun_clk>,
> > > +                 <&video_cc_mvs0_freerun_clk>,
> > > +                 <&video_cc_mvs0b_clk>,
> > > +                 <&video_cc_mvs0_vpp0_clk>,
> > > +                 <&video_cc_mvs0_vpp1_clk>,
> > > +                 <&video_cc_mvs0a_clk>;
> > > +        clock-names = "iface",
> > > +                      "core",
> > > +                      "vcodec0_core",
> > > +                      "iface1",
> > > +                      "core_freerun",
> > > +                      "vcodec0_core_freerun",
> > > +                      "vcodec_bse",
> > > +                      "vcodec_vpp0",
> > > +                      "vcodec_vpp1",
> > > +                      "vcodec_apv";
> > > +
> > > +        dma-coherent;
> > > +
> > > +        interconnects = <&gem_noc_master_appss_proc &config_noc_slave_venus_cfg>,
> > > +                        <&mmss_noc_master_video_mvp &mc_virt_slave_ebi1>;
> > > +        interconnect-names = "cpu-cfg",
> > > +                             "video-mem";
> > > +
> > > +        interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> > > +
> > > +        iommu-map = <IRIS_BITSTREAM &apps_smmu 0x1944 0x0 0x1>,
> > > +                    <IRIS_NON_PIXEL &apps_smmu 0x1940 0x0 0x1>,
> > > +                    <IRIS_NON_PIXEL &apps_smmu 0x1a20 0x0 0x1>,
> > 
> > It think we still haven't settled on letting iommu-map to have several
> > entries for a single function.
> 
> I have described the hardware aspects in the discussion [1], if there is any
> alternate way to handle this, we can discuss in the same discussion.

Yes. But how do you plan to merge this? You've split away the patches,
they don't seem to be listed as dependencies, etc.

> 
> [1] https://lore.kernel.org/all/21fda4d2-72e1-4e5b-aee0-a799886f53b7@oss.qualcomm.com/

-- 
With best wishes
Dmitry

