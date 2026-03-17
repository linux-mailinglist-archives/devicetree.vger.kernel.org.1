Return-Path: <devicetree+bounces-276843-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNtnDPynuWkhLwIAu9opvQ
	(envelope-from <devicetree+bounces-276843-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:14:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8797E2B1668
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:14:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 635B3305DA7F
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 013E93126B4;
	Tue, 17 Mar 2026 19:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b3XLX2at";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IXWi06pX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA62B3F880A
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773774808; cv=none; b=mWqqYzGvoyma3s7TM6uJVzfaBrlL/GfRxyAmw7xgmuAxHoQK/M5OfISuK1XRakZWuOJoSWnwrunRzjOU9OAI518D/lXocVIUn+aH2UnrAS1mBhJP9rYKI6EbEzKinCW9qhpYmP9p+U07K/YWZq+me0vFJVKxfNdeX64ETaJfaGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773774808; c=relaxed/simple;
	bh=IOB1+42OoqpCCWwW+LCwzFBxd6BGUZnQzCcXntSWXec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mw5yVcC+kceRZq7+zZlfEI5xRky8PzhjdUfJ9kV0cMtOhidOS6jdHo/X84OBs9lDTcdA/IaMoGgNq7XJ19hfQcMf7ATT2K6DUFR3ygeuwR0yZslgcuL0Tk8nPJfesrmfrr1z3LdWCC/7yktOgUOhEnyETx7dIA03YbptdhUYefo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b3XLX2at; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IXWi06pX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HIJIG81894339
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:13:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8kUxLyNaP4bgziKZBmZ3zQLC
	U1qg/8s5ZzOBNBrJiaM=; b=b3XLX2atZYEN69KHJWV9D+RLB/F1u3vWHjq1AwDm
	BBBWkDVDVeC5fvD5oG+JSsbv62tZhd7+/9g0zvYs18jowiL3dTYvTO6RJxdQad/p
	wAkkE8egp6pxj9S0fgqqUpiQNj9XVVcUdGLRjkekEVBOOsL4Pm2B6od9DQhmC7+F
	QsIMIvpwI0g6S13ZcxMvXZKLWN9ydPQymJAYxsdkD/hP9vRf3PFtKnpuAM5DF6dA
	plsYP1YTNqIDYPxsuZXvVaQ5nLyKn0yUh8UaojnHkR6/M/Aplu4xXtui6es42Z1O
	6O7cKKQbZGOnmL4HYEKhZSjytsHs8rzMwFAgLOuXXo9+bw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy6d6hp8t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:13:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd77bc8186so6196114285a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773774806; x=1774379606; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8kUxLyNaP4bgziKZBmZ3zQLCU1qg/8s5ZzOBNBrJiaM=;
        b=IXWi06pX8/1u9zI+QtOenu70imYTiJd/kuVEziKnKbYL9ZlwtifeIK3Tuaj6ij+w4E
         WcsCpHeSNN54gY7izIx35GK5PBV97l0I5MBgWuKsJDREOUWNFfMCiXD+tQdHkb2F2LV0
         ilP3x5FY+KBiZNyg7YnetQ+KeUmWXpuQeevZCxV0CD+A5oAnDxhzGhZJmfJZzaYazV7R
         7ROGcgsVL5YX0uuKqMRxZ3mkX4Ah+/FaQAUlN1ifhL0/nmIizc1XUHtG0fV4VsMT21uq
         WoPlIRYP4lr3xDUs7mvqnzEvCLrHxOSKHLK4TYR1mrD+4tEKZF0Rvi7UGBVNFpLnl+i6
         j43w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773774806; x=1774379606;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8kUxLyNaP4bgziKZBmZ3zQLCU1qg/8s5ZzOBNBrJiaM=;
        b=QZ5r3tgjhxtMv4He6ntubklypBwGpHMdPheol28qMHzkQQqz89dfZHvdYrpL3ax99l
         RTZP/mvPA1meHpOnuzVcdBYLOvzbdFCA1A4PSfDVhlNldEUdLC403/P97GyTLowaYVgF
         xgN/5eQzlnoGc9hChBcOG1lJ+LP64bhZYvwE3rUP1Zvl9V9EyL0M3AqnDZfhvGk+eynG
         Ydq6YKLaBYrXHeO4qpdUmazUMOcp9G9MH4I9vMItr5WsnIVFTlQ64QCJViYIaVZaG/vC
         h4cHk8tTj7jRBiPgEA4d4JCGfNcBt2DLnieteIQSBVhUikXDGsQC/uU4/EV6vyEtz9Od
         jkxA==
X-Forwarded-Encrypted: i=1; AJvYcCW1pBaUfXyJ5Be72WFkUjpJavhBB5AXnHkEwvVBWNoU8N1i0cpOmz1RrNZ9cTN/sD0IpPt0CkpKywfz@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu3VGo7ZJFRJ2Zo8sVZIVg43Zsm9rQ3VG8TxEjHLwRqG/6Kjba
	1xDqAm/xI+jpb8WG7SvfQNETZkSI7qkb90uG47pCx2dnosqxXy39Udz6uoy+DsPpsTt+hV3GGkO
	KlR9sSBdGM0Bw1VuVVzctzR2IqPqEi3vrMHIDJ/yv8eXeT3FQ6hSLYdDE8BC4jrwl
X-Gm-Gg: ATEYQzwAzy9446JTdquWKo3Xj/YSgBSCxy5ryDEOA3AL9jehDYqDvh47VA6o/n5TnYD
	i+SBi3+S1A5VsE3urNXXutMaCo6rHYT3t/jjC6GesVpKPL+ZE4m5IxJ/CtmEE10DkHP1CmILwbt
	I5t0HXIT1lW98TaAEtvWx57DftnjydNcvmCqfDgtV6Euc33lifYYxbwXm9c8KxcJjaOUoafzA0t
	7gqQZqEZVNnPtxkJQgrBB+W3FSdCL0Yy8J+tBwcG2buUZMHLvmxRBljVgG3eksWo+cagWWTCM8r
	GXDxRdrtomDOdSXzJIwtcVxEjskjL69dQqWe8RStWjT+hsh+bMDv9ENUYEO12Whw0dWqRwojZ+D
	w8MRxCxhGVNHVL4/u58wAXjOdk5RpwChglg==
X-Received: by 2002:a05:620a:254f:b0:8cd:8cb8:6fe5 with SMTP id af79cd13be357-8cfad1fe671mr116610385a.5.1773774805734;
        Tue, 17 Mar 2026 12:13:25 -0700 (PDT)
X-Received: by 2002:a05:620a:254f:b0:8cd:8cb8:6fe5 with SMTP id af79cd13be357-8cfad1fe671mr116603785a.5.1773774805020;
        Tue, 17 Mar 2026 12:13:25 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eae3322sm72916125e9.10.2026.03.17.12.13.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 12:13:24 -0700 (PDT)
Date: Tue, 17 Mar 2026 21:13:22 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: eliza: Enable Eliza MTP board
 support
Message-ID: <etynwixh5fmwlixdowzlju7qctax4f2iw6ogfw5zcqzpwydmiy@3737u5m3ar6c>
References: <20260313-eliza-base-dt-v2-0-bd91367d860d@oss.qualcomm.com>
 <20260313-eliza-base-dt-v2-3-bd91367d860d@oss.qualcomm.com>
 <sf2e5rld6oiv7piqq277ppe3xqrh7q6bz2qntekzusq6w56rr5@tc2kdlnocul4>
 <vpoq5lznz3jcfiumsfgdskspus5nzotl2utoaubidfktnvw3za@txma7z7m3v4f>
 <3twoflmcthhja6sbj2jg5l4dm52zsvfpoajlkolvv5baxqes3i@rjw7kmewynax>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3twoflmcthhja6sbj2jg5l4dm52zsvfpoajlkolvv5baxqes3i@rjw7kmewynax>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE2OSBTYWx0ZWRfX18aMhuMttA+N
 qYHbKh47BPUUPkby4+ThYQGXMsoWUlPNzGXBLd4Hxme9LgbDKsXtKlP21rJlr1pbf27v/SJ6eiV
 DFU6nKru/l9cIIdlO0SS0jicbKpk7coWRPhouFySBxL5+Eb/64pvgF6Q7juDs9z8QIK2TesF/wR
 NVB9W4pq+5YoEXphClvy6Cuu5g+GZaC9rPIwfJGZaXEv8RcuSf4s8GJWsyHuBVlRcUW/z9Lwxmf
 kuJbBsZr2LMNa49snTrzkpOyjRgCTf21TaoMFRFI4A/a52yyLDCxvZXLeWHiSHjJPT4ppr+uqNB
 ppGPUk9Q2jO5NGeH+6OXjUm5zEOJrgdusc9y8w5Wm7G0deaxvgSk6/EKWt2jETXTlFzlBQYGKYi
 VwSEF/SInh622R9M1QBvHT8YbBtS6i0c24FKeWyxg1GI7WLGXHw9k+9/gcmSxv1pppOShsPyMiY
 xThl4YBFtJHA7axyt0A==
X-Proofpoint-GUID: qSjGla_mjziR4SJq7ZkkYIeq-nqPcWZE
X-Authority-Analysis: v=2.4 cv=IqMTsb/g c=1 sm=1 tr=0 ts=69b9a7d6 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=HSs5Qwqkya_Y3SD46jMA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: qSjGla_mjziR4SJq7ZkkYIeq-nqPcWZE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_04,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170169
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276843-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8797E2B1668
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-17 17:10:17, Dmitry Baryshkov wrote:
> On Tue, Mar 17, 2026 at 10:47:18AM +0200, Abel Vesa wrote:
> > On 26-03-13 17:51:37, Dmitry Baryshkov wrote:
> > > On Fri, Mar 13, 2026 at 03:23:52PM +0200, Abel Vesa wrote:
> > > > The MTP is a one of the boards that comes with the Eliza SoC.
> > > > So add dedicated board dts for it.
> > > > 
> > > > The initial support enables:
> > > > - UART debug console
> > > > - Ob-board UFS storage
> > > > - Qualcomm RPMh regulators (PMIC) and VPH_PWR
> > > > - board specific clocks & reserved GPIO ranges
> > > > 
> > > > Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > > > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > > > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > > ---
> > > >  arch/arm64/boot/dts/qcom/Makefile      |   1 +
> > > >  arch/arm64/boot/dts/qcom/eliza-mtp.dts | 407 +++++++++++++++++++++++++++++++++
> > > >  2 files changed, 408 insertions(+)
> > > > 
> > > > +
> > > > +		vreg_l12b: ldo12 {
> > > > +			regulator-name = "vreg_l12b";
> > > > +			/*
> > > > +			 * Skip voltage voting for UFS VCC.
> > > 
> > > Please continue with 'why?'
> > 
> > Actually, I think I'm going to drop the comment and add the voltages range
> > in here.
> > 
> > For some reason, when I added these, I considered that if other platforms
> > are skipping the voltage voting, Eliza should do that too. But now that I
> > took another look, I really don't think the voltage voting should be
> > skipped at all.
> > 
> > Downstream does the voting as well.
> > 
> > So I'm going to add the following in the next version:
> > 
> > regulator-min-microvolt = <2400000>;
> > regulator-max-microvolt = <3300000>;
> > 
> > Thanks for pointing this out.
> 
> FWIW I consider boards with different UFS PHYs to be different boards
> and so there should be an overlay changing the supplies for the
> non-standard version.

Yep, me too.

I'll send the next version tomorrow with the range mentioned above in.

