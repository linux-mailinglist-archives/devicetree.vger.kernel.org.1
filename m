Return-Path: <devicetree+bounces-266002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLFnJ6celGk1AAIAu9opvQ
	(envelope-from <devicetree+bounces-266002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:54:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E981496A8
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:54:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1A31B300D371
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4BBA2D94BE;
	Tue, 17 Feb 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eoNd65aD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OfRJcshw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951052D948D
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771314833; cv=none; b=nmC0B7XpPKm1qcjuDiVeeNNmcZ6gVxSZbwDGZmDQY5/5FPhxnaGPIxIDTnbU6RzAr8/O+wMTBb9MT4wvyRpFPNbmDKvXr6qWpmoLkyrjvP8VEsjA1A851mW9/H5ZcX/cfYC75KEZ0IwWv3ZrL6eHxGW/wxsWfo/4/miVCRkxGuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771314833; c=relaxed/simple;
	bh=vIRc+aGvC5spoZAU1zWkxPmqhURGVoAgXdHZHqwpr+o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ihIGi35oJtxQeehpFFvx5rgLLm/FM36eGzagMOHd9HBR3NFDleS20qFdro/1M1517+t13ASVALLkSupAC9SU/l28wnqRg8CM3lLT0fx6mXucLSdBNbQ5B3A8Bk7uK1Q4g0crjWQ/SFpWpHjeclByGWvFiUlKk58UTgvmGEBK+HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eoNd65aD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OfRJcshw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GGKmlS289398
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:53:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0zFHBuXbo6RN12Rzb8ZHK7Cw
	J5slf+7BRiCC/hFamtk=; b=eoNd65aDGeAuINBgoJaRrOVog2I+dd6gNnflstqW
	puYPiivriWUKatj4Qt+LFpvBQIFQOj588O5kyLxuGjsHzojVn37gur3L1haE/wtD
	NLZXkcLS48RniFbBjTR5qsQ8kfha4OEvTu/cLD4RKCiCmGCInJoMTsqZY4YxVJp3
	1zR0/DHjqVz9wgAbBKWBKY+1/jewFb/DMXmfFEnm6YVNB+at7tsENEtWnLl0RwxU
	AOB8ZD5HU70sTsdOlOsyDxe/Alau5f1U/EE6wja8USre/RmcrIXLcf0DfruP01/c
	xet/YCIA/oiIOZdj74se1kRDJfhBBHIUCDaMxXB1HZCnGw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6nrsgy5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:53:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c71156fe09so2229042385a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 23:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771314831; x=1771919631; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0zFHBuXbo6RN12Rzb8ZHK7CwJ5slf+7BRiCC/hFamtk=;
        b=OfRJcshwzBFXN+v3MUbTkBSx07+tFG1xDnMgGlK8S4owyiyKPOXNQR+JxZ/59xvSE7
         +zy85GmCKRGscZ3g3r//iqqqllXkrS0lEH9CJh7xtnbrAV8T3jNkgghzj2b2k5wRz/Zq
         5hx7QJQV+rbfESTfkTQ8cmPGkQLMFvSmDMmEzgwMWP38yvNSmsRIJmdqG/7s9hk05I6Y
         wBHgau4Hv/NupqbZMW0kzQ4K0cAxS1Wu6PNqs4ayyosoCmAJQpM15U7Qo+WSK4pCucAc
         Oj21aVNmgItqpA5eECaiQ64ojGxyVzYgsSFnHj+4XGLbBhDVDOynzeJ1/nbgvf0qmTx0
         Nf8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771314831; x=1771919631;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0zFHBuXbo6RN12Rzb8ZHK7CwJ5slf+7BRiCC/hFamtk=;
        b=cV5bFp04puxzne8foPxOPXHxUmW7Yq75Qu4vmdxyjKEfF41V+jBiX500Vcdo+1N7ml
         xKcZ7zsAUlaCtivYeixx0ZC4x/zigDODNXrnI1c3yc3G0gwQ1Et4m3LRIbreF3zzEKjC
         L2hQJyBu/XBw0W54ChSJpujHVpO4qbtJwnF0eUOCTWUsCL0fkr/cvGrJ5yTeGQJfdiBD
         Izh5HW48h5Mig4bfXOUSHTdpRmbqUXGIsxMWimIrhGxa7hWmC3Df0QIcqE+16y64IGtI
         sH9CXVNusAkz0SIymxbayOPy7cXSFbNR5UPqxOgu/kPRFGiLJ1CDtIZO2DVHLtJHXlm1
         mnew==
X-Forwarded-Encrypted: i=1; AJvYcCXm/Wh0y66c1aQzH74mLAaPidm7wF4WhINNJOchg5OYBpGuwEamDFlo4HUbLfbdYyGV60HttkoFH955@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi+4BkZ/+hJ/AF8uODetpf+PtLhkldNhYWqL94eM/7IsqrnnhJ
	st/4J4GmyHUkQGMnt7ZeAhLDc61n51aORTY7KGUAaS1kn9aCF+T/3GDvlHEy6AGjhwxVaI3zVdo
	uAfCIW5r/Fkm8GaGxNxaUtwuIb5lKOMxsCsd5Xzu88CzQECDraaeQdgwztOxAS5zJ
X-Gm-Gg: AZuq6aJDRgxdiZVFHHPazM1udDIe29BTg3oZNS2cAjuMCMmfoZa2GOh76wvwhkUSY3O
	MLqeu9POzqsxpzUoBfveTh6xSZYUpqMP1Q0ytzrDXMvbRn/1qx85D+nF3g1sSXIbH043stLwXVX
	FL9/uLzuBU8uZIrQDCyGNBlkoWGhwH+an4CCnwqWTaRNN8ASS66bx7gVRXdGdYGud+FD+XVv/Zw
	+yFHvMP//0j0NuP7OES0vWEodoo7Ien9gTqT9DfplyMcAuV6coqYj3IYLObyee2ISWAIybFvblS
	NWrnMUWoTn5JpEiHhCOXNlprq8kZlR+eKYyh+/9tur2909SDd821XNcyF91IRZSoafnrtm6YtRw
	ahWVblV4mhbbh74J3wjCeWgxwDjYRyvjiiFqa
X-Received: by 2002:a05:620a:1a23:b0:8c2:e8b3:7c3a with SMTP id af79cd13be357-8cb4c039d26mr1344996185a.87.1771314830835;
        Mon, 16 Feb 2026 23:53:50 -0800 (PST)
X-Received: by 2002:a05:620a:1a23:b0:8c2:e8b3:7c3a with SMTP id af79cd13be357-8cb4c039d26mr1344994785a.87.1771314830354;
        Mon, 16 Feb 2026 23:53:50 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ad0166sm33350255f8f.35.2026.02.16.23.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 23:53:49 -0800 (PST)
Date: Tue, 17 Feb 2026 09:53:47 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: kernel test robot <lkp@intel.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v3 6/6] clk: qcom: Add TCSR clock driver for Eliza
Message-ID: <iifc6qoejdk5bohdqdy2qqsi5bm2w2vo5hwvinju3kxhzvadsa@6sblw2k2w5en>
References: <20260216-eliza-clocks-v3-6-8afc5a7e3a98@oss.qualcomm.com>
 <202602171020.eP0Y69zD-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202602171020.eP0Y69zD-lkp@intel.com>
X-Authority-Analysis: v=2.4 cv=XKo9iAhE c=1 sm=1 tr=0 ts=69941e8f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=i3X5FwGiAAAA:8
 a=QyXUC8HyAAAA:8 a=gSbDSvPH9l2sfEXJlosA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=mmqRlSCDY2ywfjPLJ4af:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2NCBTYWx0ZWRfX63p6/UCA5Yjc
 Oo0BVjn/Al2RWYnZW+zTsaF6ss1Rtp+/jGifYgxgS8aBcgyyXEHdJmRxmDn/emM4w1jSCxylBxS
 ZVIJHtsNYO1FomLPs+BsCwMHitf7dnSiWAZajSWCna0q9DUTIYRoKihX1EsQf7B0XG/VlzoSxxK
 F67Z9b8RVxtTlaxvUaYNrOZYZP/xHqtV6ViepS48brsCK9zSnivlYYXN0YOI3dW6Es8BQYWZRU/
 yn/kjd8PqxEfTP/qDU3vneqIHHh0WemDcv+y+/XwQ9lZYgbgg/WzGGZiCqLB4vgJeBJbotEC9SB
 QpeQrttLagVrfeLokJAHj1zubbjgA+7oi2GDIDbAynt0xSaeUqfp2o+VfKqovVasXtuyfaIV9y1
 VMWstOF+Y3UVvIVy7TfW0G0ObqN+1zevV02Qk3Nxpus3ovcEBx3934Kxp+gFwx6MS6oLid1Lu+s
 h9JYSeiNb5epbQ281gA==
X-Proofpoint-ORIG-GUID: qtFUXe27hnD9dTwHcGy5bLo2XqxObYAA
X-Proofpoint-GUID: qtFUXe27hnD9dTwHcGy5bLo2XqxObYAA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266002-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 60E981496A8
X-Rspamd-Action: no action

On 26-02-17 10:10:16, kernel test robot wrote:
> Hi Abel,
> 
> kernel test robot noticed the following build errors:
> 
> [auto build test ERROR on 635c467cc14ebdffab3f77610217c1dacaf88e8c]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Abel-Vesa/dt-bindings-clock-qcom-document-the-Eliza-Global-Clock-Controller/20260216-215148
> base:   635c467cc14ebdffab3f77610217c1dacaf88e8c
> patch link:    https://lore.kernel.org/r/20260216-eliza-clocks-v3-6-8afc5a7e3a98%40oss.qualcomm.com
> patch subject: [PATCH v3 6/6] clk: qcom: Add TCSR clock driver for Eliza
> config: m68k-allmodconfig (https://download.01.org/0day-ci/archive/20260217/202602171020.eP0Y69zD-lkp@intel.com/config)
> compiler: m68k-linux-gcc (GCC) 15.2.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260217/202602171020.eP0Y69zD-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202602171020.eP0Y69zD-lkp@intel.com/
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/clk/qcom/tcsrcc-eliza.c:126:10: error: 'TCSR_HDMI_CLKREF_EN' undeclared here (not in a function); did you mean 'TCSR_UFS_CLKREF_EN'?
>      126 |         [TCSR_HDMI_CLKREF_EN] = &tcsr_hdmi_clkref_en.clkr,
>          |          ^~~~~~~~~~~~~~~~~~~
>          |          TCSR_UFS_CLKREF_EN
> >> drivers/clk/qcom/tcsrcc-eliza.c:126:10: error: array index in initializer not of integer type
>    drivers/clk/qcom/tcsrcc-eliza.c:126:10: note: (near initialization for 'tcsr_cc_eliza_clocks')
>    drivers/clk/qcom/tcsrcc-eliza.c:127:35: warning: initialized field overwritten [-Woverride-init]
>      127 |         [TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
>          |                                   ^
>    drivers/clk/qcom/tcsrcc-eliza.c:127:35: note: (near initialization for 'tcsr_cc_eliza_clocks[0]')
> >> drivers/clk/qcom/tcsrcc-eliza.c:128:10: error: 'TCSR_PCIE_1_CLKREF_EN' undeclared here (not in a function); did you mean 'TCSR_PCIE_0_CLKREF_EN'?
>      128 |         [TCSR_PCIE_1_CLKREF_EN] = &tcsr_pcie_1_clkref_en.clkr,
>          |          ^~~~~~~~~~~~~~~~~~~~~
>          |          TCSR_PCIE_0_CLKREF_EN
>    drivers/clk/qcom/tcsrcc-eliza.c:128:10: error: array index in initializer not of integer type
>    drivers/clk/qcom/tcsrcc-eliza.c:128:10: note: (near initialization for 'tcsr_cc_eliza_clocks')
>    drivers/clk/qcom/tcsrcc-eliza.c:129:32: warning: initialized field overwritten [-Woverride-init]
>      129 |         [TCSR_UFS_CLKREF_EN] = &tcsr_ufs_clkref_en.clkr,
>          |                                ^
>    drivers/clk/qcom/tcsrcc-eliza.c:129:32: note: (near initialization for 'tcsr_cc_eliza_clocks[1]')

Fixed in v4.

