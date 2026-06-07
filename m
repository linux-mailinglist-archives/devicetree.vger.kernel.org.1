Return-Path: <devicetree+bounces-307868-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XNHTNqHOJWrGMAIAu9opvQ
	(envelope-from <devicetree+bounces-307868-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 22:03:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DA66516DF
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 22:03:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=YRlemeF+;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=SlghrB+7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307868-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307868-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 06C06300D475
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 20:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95603282F1C;
	Sun,  7 Jun 2026 20:01:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622142C029D
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 20:01:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780862480; cv=none; b=CkQrcSPpfx5DhOpzIzYWuRAH/SRXY5f/Cn0ITyNKGWETNPC+EOthpxXqJCfFAi5xRsZ9kDhkPdZUtFc5rQGJjEz9LMGLENCHH10iXBhrD5n7Ax7LCaJ+i77D7A1Wg6Afr30Ntb8iNHMvdTykWp3aAbyd2/LRV0dvBsTzGbidKWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780862480; c=relaxed/simple;
	bh=52hTa5kcQvaI9pLpbWBzX3JmT1JFDfqMHf0HFsvSPaQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CWxm7eLPc4UOEljUEsiNOF8fQpHpfPqa/wE7nPTDHKPEmvUfD6AGaGaijHW0fjP449skgm01gWpU9iRLzoeTVds0jz018CNKdUryQqCmDJs1pPgWf4IGdb60GbCH9m0pTVgCNaJ59xdy8UtJ6U6oXcTUGYX2Hm67VHZIJe0M2RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YRlemeF+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SlghrB+7; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 657Ekmt1438151
	for <devicetree@vger.kernel.org>; Sun, 7 Jun 2026 20:01:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=swfVuia7jiOXExS+LqAUOMEp
	pKPJAifFHX+6qOB4k90=; b=YRlemeF+sEJ96lciRX9Gq5DgwWl3sPxSmLGpTGPY
	5df/XsfKLgZhs5T38MimiOImUHQvX/KO/aEi5HdktfIp009mQpgoB9ZzipYqP87+
	EZLjA3v9Gh3DRcVbScndY40URU9oEqrw4FiuYLGxj5nZp/9kpL3b5BCvbS/jXmCv
	b5EjWfgMQDRazi8rvOm2G6VvJWHs7pgKoJW+jDa3UuGsME271bytxh0O+TRj0pZy
	8/df9nOK33EAZz6RVxwz5kko9xZfCxqIxnpOrCCGrrx8ay/bxoYQblAA1YMuFMRn
	3ott3u4RIvOpzbeqoSw5hDSVDCYL0RpATf0Pual+NfBbCQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emcu8vd0h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 20:01:18 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-6cfe512e871so1728961137.2
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 13:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780862477; x=1781467277; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=swfVuia7jiOXExS+LqAUOMEppKPJAifFHX+6qOB4k90=;
        b=SlghrB+7rX/IlgGMKcOj1rIHa2+AA4CpZ5bBlfIQQDVPr/1ez5/poCyZ720ZcLcU07
         0lwjSCJfb05GcW4njvwtMfJ9t0IVtZgk7PTW4KZfG59ZaQAei3jxs1pnuC1JEncb6Prt
         KFPs3RWNr2qEmw1NzRnzshu6Z2yljMYRw1hKCEq6kE9vlGy403jLtKe/0PXus3SXUCk9
         9Z5MM4kEooHJhQseSSmOxQThU7p5cv7gztKtVveFPzzXOPVWBm+5pAfu+Y4lES0Tw/aS
         yJMpklxJjOnUVVgsxBeCPKzOBEctfclRPa88Rri8MhVcgT9CofkxChPKmIq1icfByRlA
         yhUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780862477; x=1781467277;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=swfVuia7jiOXExS+LqAUOMEppKPJAifFHX+6qOB4k90=;
        b=KPGIkaAXkeu7mR1jSO7j2BGXCHqAEHYnW/epiuLB003gP9KMfkzRlaJ9Nj7TkNfAKl
         yPvqlnr4Hb2r/Hx80kktezFFcOKhjWu3ABy6LrH85h8RrJ8BEMaOGQ+6ki/8TQnGGrb/
         lK2ScSUceEg1PIoQIN8HWU4jfNmDBmqmmpAJjETsmfB3s6L0yzjg+i46pItFq3jUR1GL
         ibWrTDAVjtv632iZ0sNBTWjvbjfw9vFiCAVhJxHjw8Ly1FS5oVC4W+FtJSyQfvLQD4jK
         BbzBrt8flNfmrclacuqDGxgEufG53O0cDMvM0Y+ZZNv+TykpXPbZ7iCv2LPgdbLGPMHp
         uveA==
X-Forwarded-Encrypted: i=1; AFNElJ92b0AQdOP0Ln24Qm7WsoFHUzqdsI3FxJMGJkY9p/KUiYZWBQDZuddaCw3kl9bKh2EnnIEMJXzjujgb@vger.kernel.org
X-Gm-Message-State: AOJu0YxkYOrCGirq/Qj4zjtzhn/jQ8ixJxtloh52e7DCVJfmO+tjrDHn
	mJjBXvQiTcADdR3F7qOGinYNXh6g4LOjFk48crKnbHC/O/nFLT6Km8c77SQqO3mbkOmsXGOjHIi
	nEVXYfiwYhm5rSN6/Pe+VjXit15P4zOTzflHh4mNBSJ5KFEddNFyKbHu5+b1yjSsY
X-Gm-Gg: Acq92OGE37uA5MGXyNcg77BlIoVaLFi8agKMvaUzNJGpIpX7XPFnliiTecz1EqmjY6d
	KUz+AuL1wd/cNZ2YI4WJUvJHziWkUFCwpsGWV53Mupc/BhWAYE56C4KDTSelKffnyHumgQi+Wq7
	Hy9NzvBD07J8t/i2Iv8kDeeAE/Z7LG0HPtQyYYBmtYH07P0YoWEzG5N9Kk7UYRg0xJcXwHg8naI
	6f4b5QWi5CbhN8Muyg2BicDcbxPGXc6OeM41amLzPSsmfhOCooRPX/nSlRDq0t3VL70qTWq9bdD
	JwkGhvibikDXmjs4g6LEqK9rMP1FCnR2k/pu0vocrvZXQM7fStrSrtNvNHURnMD2QkfPotgM0VU
	QaUcTJzFQ0OnV9JuiHUwH/72XLuaSfeIRXa94N4IAITAIP3fDOI09Tvqr5LZw0PvzyYu0P0meT4
	A9Tmzkuwl1gGnC6RSbJU14n7HHFGCxUY2YY93avxALvyQtwg==
X-Received: by 2002:a05:6102:1609:b0:6f0:6293:747d with SMTP id ada2fe7eead31-6fef9988a02mr5765000137.14.1780862476950;
        Sun, 07 Jun 2026 13:01:16 -0700 (PDT)
X-Received: by 2002:a05:6102:1609:b0:6f0:6293:747d with SMTP id ada2fe7eead31-6fef9988a02mr5764831137.14.1780862476161;
        Sun, 07 Jun 2026 13:01:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396ac091ccbsm41273641fa.14.2026.06.07.13.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 13:01:13 -0700 (PDT)
Date: Sun, 7 Jun 2026 23:01:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Matthew Leung <matthew.leung@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: PCI: qcom: Document the Hawi PCIe
 Controller
Message-ID: <2tenqkmwcr2gshtjwh44pvban4gtlzcgrm3iibkfrs4zh6vphb@h5losfunylr6>
References: <20260529-hawi-pcie-v2-0-de87c6cc230c@oss.qualcomm.com>
 <20260529-hawi-pcie-v2-1-de87c6cc230c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260529-hawi-pcie-v2-1-de87c6cc230c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: sNCL8KYEh1p9yj7Rq7jXJ_aS7JHfE2ac
X-Authority-Analysis: v=2.4 cv=deGwG3Xe c=1 sm=1 tr=0 ts=6a25ce0e cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=IAKb1KHifIJ-sTjyejYA:9 a=CjuIK1q_8ugA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA3MDIwMCBTYWx0ZWRfX3otZXl1NsIyb
 AFQ0hbAVt5qfwMd3Axt3HfNPp2KjoiudyE+T56ya+88PKYWkfvUEpGSVFQuOdxFxGdUXmRFh14n
 yBoHuElItrKJPAawa1ZxC4Axr82cznCPkZi92qmrPVUmp7rHNLIbEJiUcmqC3CbVmYhM9vE7Ka5
 wNB1KROhUW0PUrhKE+lktHsbk+HdO4cfoSOgEgzxyL/cebx/wBd24IzDT8P6VhRvx4v33qov3Qz
 d5z6AZVoL9PnHfnVqyc/hy09BEI4ysF+Bafppe7UFn8Ht7MGgD2Otyjny+xBhsCwwsj6k01yRKf
 gLjer5r3QIt+6QfDsnmodzwv8VOIw2wRpQ7rSO2pc2ImAo1PMV9gt7/t20zHVOyfLfpwi5OG8jE
 C1Re8ktlWCBcG9b2oU78pGLwlcYAwcAtOPUxxk1FDS/UZNMyaNlFs77+ANFnCmoQ7ppGun8Q/Ah
 9T6DNPACKHGgaVwHiMQ==
X-Proofpoint-GUID: sNCL8KYEh1p9yj7Rq7jXJ_aS7JHfE2ac
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-07_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 phishscore=0 impostorscore=0 priorityscore=1501
 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606070200
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307868-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:matthew.leung@oss.qualcomm.com,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,vger.kernel.org:from_smtp,h5losfunylr6:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24DA66516DF

On Fri, May 29, 2026 at 01:10:08AM +0000, Matthew Leung wrote:
> Add a dedicated schema for the PCIe controllers found on the Hawi
> platform.
> 
> Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/pci/qcom,hawi-pcie.yaml    | 204 +++++++++++++++++++++
>  1 file changed, 204 insertions(+)
> 
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,hawi-gcc.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interconnect/qcom,icc.h>
> +    #include <dt-bindings/interconnect/qcom,hawi-rpmh.h>

Stop referencing clocks and interconnect header files. Replace used nocs
with ephemeral values.

> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;

Not looking around should be a sin. Take a look at other Qualcomm PCIe
bindings. Compare them to yours. Then fix yours to follow.

Hint: the extra soc node is useless. This is just an example, so use the
default, 1 cells for address and size.

> +
> +        pcie@1c00000 {
> +            compatible = "qcom,hawi-pcie";
> +            reg = <0 0x01c00000 0 0x3000>,
> +                  <0 0x40000000 0 0xf1d>,
> +                  <0 0x40000f20 0 0xa8>,
> +                  <0 0x40001000 0 0x1000>,
> +                  <0 0x40100000 0 0x100000>;
> +            reg-names = "parf", "dbi", "elbi", "atu", "config";
> +            ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
> +                     <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x3d00000>;
> +
> +            bus-range = <0x00 0xff>;
> +            device_type = "pci";
> +            linux,pci-domain = <0>;
> +            num-lanes = <2>;
> +
> +            #address-cells = <3>;
> +            #size-cells = <2>;
> +
> +            clocks = <&gcc GCC_PCIE_0_AUX_CLK>,

<&gcc_pcie_0_aux_clk>, etc.

> +                     <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +                     <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +                     <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +                     <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
> +                     <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>,
> +                     <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;

-- 
With best wishes
Dmitry

