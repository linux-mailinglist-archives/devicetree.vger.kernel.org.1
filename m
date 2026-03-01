Return-Path: <devicetree+bounces-269710-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id VXyQOWkqpGkgZgUAu9opvQ
	(envelope-from <devicetree+bounces-269710-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 13:00:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 362C21CF7BB
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 13:00:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6453300F9DA
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 12:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9043F3195F0;
	Sun,  1 Mar 2026 12:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WoP5ZbKp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q+aGDFec"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE254430BBA
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 12:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772366438; cv=none; b=cM1+gIaB8btgOCiX5MwbSDvxqClrc1Hh5+YIerwr34kxGifUYs2NrDJzdHpWFeWMzqfT2mrGpfN11h5iylA8obx7n1crZmZHFgPlk/dtIOZQovlPtSsMiFXlJgyJDRZrmOTwywp+UFS7Tuzy52etl8qkxl9JmO4P4/h3t3WfFuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772366438; c=relaxed/simple;
	bh=SJn37WLxz8bdumoUfZk482foyrecXcwFItjxJ/0ufQo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LRH0qnKX9udvRYhfsrysby0KLs2G7arj0uyeKYkJsJDvYQCCzSxd7g4WibfohCLge9V0t9/3E+qsaVA6R0T5I81l7w+WyfdUAtY6nCisN4IvwVR/gvM03C2dip0nQWyQWgT6638sVl4qBSJktOASewnvWJRlaksJKuZvZmAVl8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WoP5ZbKp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q+aGDFec; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6217PXmM159170
	for <devicetree@vger.kernel.org>; Sun, 1 Mar 2026 12:00:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CHM6ea+T/SQTyKD6VE8gREYx
	tQS0AV0BBIY+fO3U/+Q=; b=WoP5ZbKpVdVKlkXv2aH+KEPi03kUWMTYBCJXM+o0
	bueM9nMs/bFFYl420otJKZY2dXshgOWxzxAFKqgZHYZv9Y+wfE00JUx9gc9JCh6y
	V+d7SqShjxe+e3A4/hPi/TSmO2SHHa3u4E4bpGSwPJrOw7mX9mMBDw/bmCKTBp/I
	txGW5FF5wCHDF770OacBskjkh+vvedtPD21saeukgigmMIxit4IgxQAnS+fsvhPs
	F+p68LXBy/X93NlrWUCnmXUMXNp8Iordm9wjkO/Ua6JnTSz5zG0EFCHsrsYlGufg
	Kw00/KOKaJQnpLM74TWrU6XkLJxwFn1k/m3ivgU4SjGccA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckshktjdt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 12:00:35 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70ab7f67fso4832945885a.3
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 04:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772366435; x=1772971235; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CHM6ea+T/SQTyKD6VE8gREYxtQS0AV0BBIY+fO3U/+Q=;
        b=Q+aGDFeclvYDN4NPXKVswwpBnrW820roGHHAspgrcXKRp2mnbNjwOCrk2r7/jVMOIw
         HnnS2qBxjGc8yCCb88INx3Ivcm1nbFhRClTfKXWkdxtgHLHDYTyGCEpYviC6mTIA1Rbd
         tt3IxTURALw9ItWuFYh0yUsqxhWd2P5cFsUBgDcuWI6hed+xmT2dmN3WuxHQPxo9xur5
         /Lj8sNAcyk0xRru6LUSTbc5Mzqwq8ucsa7aI40tfa26RkQLUGUS8iZpkpUWcE+LAZlv7
         l1tZZuUi523klJPf9IlTxxi8oDUOX5DCufdFrWuXEApdbpz8Q4xnRnu2xd/Rgs1L16DK
         KSqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772366435; x=1772971235;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CHM6ea+T/SQTyKD6VE8gREYxtQS0AV0BBIY+fO3U/+Q=;
        b=bR8vU/U036cq5sjOM0VUQy/oVCn0FutamEUhbYf1Apwo82oLxmX5A1uzX818qsa4/A
         wnXFnc14NVGt72qqkE0v1bM7oT1JKnsqNQtQSJLJjwF8iJTYOOO063mBmged4h9ITICO
         yxeAmPqNl/CMobaLSTjba3SFj1Ro+8H+TM5e7lPFiEkXd0qdaAz0cyVhsd0YINspJ04y
         W+P1Z74WMno1EdXQV3Y9BX6aHquBzapIKVbGeJF9zuw/oDXbnQpYlQS/kug/bB1D3X0B
         t6TC5LDoMUjadZ2cnt1KNk0ucuLuetS5bO83J8+sudKBkntFd1rGdM38cTTfUZRyOhxE
         SlTA==
X-Forwarded-Encrypted: i=1; AJvYcCVMfou3QGJOVAiCFdSsh383JRNlctYAooKQ88fwGt3OPTO8N7XecS+3FXateQtfwuDJ3GjyWlaSJI/6@vger.kernel.org
X-Gm-Message-State: AOJu0YyGCbIqYFdIA0WqoVSy5sExVeQI2ogFcCt3A9da8c5j1b2PfjW2
	y+jp3S0RK2wduPWh3pCkJf4Dl8j6MQGQkrLynk5zmaEHgpAm0ox+lRmVm18mVPOmky1shL6grMV
	r3su5YMTmI+b9YlXnD4txvaWprdRzZcbtsTAD1gGks6uGwaNmQmR1fe4WW3MXTVt+
X-Gm-Gg: ATEYQzy0dI+zucBf26ImnMQ2CQ8cKqpdyUEE6ZTESmjCLWo2nFHrD3jBY3v9wbjozXz
	1A2mHPDMnU3z00SaxguXoldl8Bt3toDjkkYASIo4Tdxh7mpcECKww+/ixgRguN3MFolapmbOevm
	V1HXg3Np+os+tenDTXd93beJhxzgtl4vV9n9mgBfWjNVn4Z3ZpuTmyY+JhY1sTfpYfTZC09ipc4
	j4puQ1cS0cX8H0AlA5IS2WAtBMcTpggVkgriUilsdR4CNFPXTKByJu2lbsc784SeiC/sCjgUpPB
	kRRf395OC6/akhqwxmCc+aoZRIyMXWVbPx0WV/L//Z9+9BOMhwZyqmsu364ox5EYH9ZeLxnWUnz
	a3S+qCfCzulowR8gFWXQL5mNTIwLuoos5vBYVZtskHIkGx6k2Nz+a1zng2yGSWREiVPSF0xa2Qk
	n7eIrPsK/KdYvDqaVphlAH68x06rWyO+KOczM=
X-Received: by 2002:a05:620a:198a:b0:8b2:7435:f5ef with SMTP id af79cd13be357-8cbc8e4f7a8mr1056040985a.41.1772366434895;
        Sun, 01 Mar 2026 04:00:34 -0800 (PST)
X-Received: by 2002:a05:620a:198a:b0:8b2:7435:f5ef with SMTP id af79cd13be357-8cbc8e4f7a8mr1056033185a.41.1772366434283;
        Sun, 01 Mar 2026 04:00:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bd5a66sm1006367e87.34.2026.03.01.04.00.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 04:00:32 -0800 (PST)
Date: Sun, 1 Mar 2026 14:00:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Marc Zyngier <maz@kernel.org>
Cc: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>,
        Nipun Gupta <nipun.gupta@amd.com>,
        Nikhil Agarwal <nikhil.agarwal@amd.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Juergen Gross <jgross@suse.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Prakash Gupta <prakash.gupta@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, imx@lists.linux.dev,
        xen-devel@lists.xenproject.org, linux-arm-msm@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Subject: Re: [PATCH v9 2/3] of: factor arguments passed to of_map_id() into a
 struct
Message-ID: <khlwmcip3dacnkdc55w37sxplcshfb3uahgfb3cjm4kpdlfi4y@fletnzhayazf>
References: <20260301-parse_iommu_cells-v9-0-4d1bceecc5e1@oss.qualcomm.com>
 <20260301-parse_iommu_cells-v9-2-4d1bceecc5e1@oss.qualcomm.com>
 <861pi3amuu.wl-maz@kernel.org>
 <ehhnta6zvfua723llpb52hh3lwqdh4ttomzt7xqrmcjnsslbop@p4w3gjzxp4rn>
 <86zf4r93ns.wl-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86zf4r93ns.wl-maz@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDEwOCBTYWx0ZWRfXyzy/xkbMSz6h
 4U5AcrVrYQAmbABWjCwX+BhUP8O+O5fwStKVYPQrnXO34uUb3O1acZXMfxGDvdEk5yrrWdRVx4D
 zpgiLq9xNLSKGGMFadmynb76vZEIyU34avUJ+xvTyCDwBjoHfk0m6jCJF12uFAQ9tG1sdrs2y60
 mNyD3aw25h5PmsdfmvG3UOQ2pCvC+nLfHh3LMXInxj+xfvfmTmvTCj6Gsvq0HzPUVRGElpx2xuL
 9KiHkMyrl43zLQ1fbw3HLtwc3LXRLUwaUCLWfpR6S6FhddwFhFDdmoMEXr2gMBgKUz3f7PDkTI+
 e+v35RNuMTT+a7+v5CkZTD8QGPy96ydvT7Hg43VW13EQxAiMqp0EDP84kmeV15CJ9lVpF/pmugm
 ZMT821VB+8aAgd3AXPaJDELb0BKMEMWF9aEd2xhbvavSw+Agbvt9G+PmpmH7ajXSw8sUSwoPhYn
 FPnZBfXnlqxGcKPikuQ==
X-Proofpoint-ORIG-GUID: RkBKqIJ0hWKSg_Qt4yegSNOTZSQEp-rB
X-Authority-Analysis: v=2.4 cv=EvbfbCcA c=1 sm=1 tr=0 ts=69a42a63 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=YG64nluAAAAA:20
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=BCSTLeMbECCLQgZ0D0gA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-GUID: RkBKqIJ0hWKSg_Qt4yegSNOTZSQEp-rB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_01,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603010108
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269710-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[38];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,amd.com,8bytes.org,kernel.org,arm.com,nxp.com,pengutronix.de,google.com,gmail.com,suse.com,epam.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.xenproject.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.228.225.192:email,1.111.188.160:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 362C21CF7BB
X-Rspamd-Action: no action

On Sun, Mar 01, 2026 at 11:42:47AM +0000, Marc Zyngier wrote:
> On Sun, 01 Mar 2026 10:46:57 +0000,
> Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > 
> > On Sun, Mar 01, 2026 at 10:02:49AM +0000, Marc Zyngier wrote:
> > > On Sun, 01 Mar 2026 08:34:20 +0000,
> > > Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com> wrote:
> > > > 
> > > > From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
> > > > 
> > > > Change of_map_id() to take a pointer to struct of_phandle_args
> > > > instead of passing target device node and translated IDs separately.
> > > > Update all callers accordingly.
> > > > 
> > > > Subsequent patch will make use of the args_count field in
> > > > struct of_phandle_args.
> > > > 
> > > > Suggested-by: Rob Herring (Arm) <robh@kernel.org>
> > > > Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
> > > > Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
> > > > ---
> > > >  drivers/iommu/of_iommu.c              |  2 +-
> > > >  drivers/of/base.c                     | 37 +++++++++++++++++------------------
> > > >  drivers/pci/controller/dwc/pci-imx6.c |  8 +++++++-
> > > >  drivers/pci/controller/pcie-apple.c   |  4 +++-
> > > >  drivers/xen/grant-dma-ops.c           |  2 +-
> > > >  include/linux/of.h                    | 21 +++++++++++++-------
> > > >  6 files changed, 44 insertions(+), 30 deletions(-)
> > > > 
> > > > diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
> > > > index a511ecf21fcd..d255d0f58e8c 100644
> > > > --- a/drivers/iommu/of_iommu.c
> > > > +++ b/drivers/iommu/of_iommu.c
> > > > @@ -48,7 +48,7 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
> > > >  	struct of_phandle_args iommu_spec = { .args_count = 1 };
> > > >  	int err;
> > > >  
> > > > -	err = of_map_iommu_id(master_np, *id, &iommu_spec.np, iommu_spec.args);
> > > > +	err = of_map_iommu_id(master_np, *id, &iommu_spec);
> > > >  	if (err)
> > > >  		return err;
> > > >  
> > > > diff --git a/drivers/of/base.c b/drivers/of/base.c
> > > > index 57420806c1a2..6c3628255908 100644
> > > > --- a/drivers/of/base.c
> > > > +++ b/drivers/of/base.c
> > > > @@ -2102,8 +2102,11 @@ int of_find_last_cache_level(unsigned int cpu)
> > > >   * @id: device ID to map.
> > > >   * @map_name: property name of the map to use.
> > > >   * @map_mask_name: optional property name of the mask to use.
> > > > - * @target: optional pointer to a target device node.
> > > > - * @id_out: optional pointer to receive the translated ID.
> > > > + * @arg: of_phandle_args structure,
> > > > + *	which includes:
> > > > + *	np: pointer to the target device node
> > > > + *	args_count: number of arguments
> > > 
> > > Number of arguments *to what*? Isn't that the size of args[] instead?
> > 
> > It is a number of values corresponding to the phandle in the DT
> > property.
> 
> No. It is what the *caller* expects. Not what is is in the DT, which
> could be (and generally is) a pile of random crap.

Nice

> If the two don't
> match, return an error. But don't randomly overwrite data that is not
> yours.

Mark, no. The caller can't know how many cell arguments the provider
uses until:
- the provider handle is parsed
- provider node is consulted for the #foo-cells

It is not a number of arguments for the _caller_. It is how many u32
values are used by the _provider_.

In case of IOMMUs, enough IOMMU devices have #iommu-cells = <2>, which
means that it uses two u32 values to identify the SID or set of SIDs.

Following your analogy, if we force 1 cell in the iommu-map property, we
are trying to force the function which expects to take two arguments to
accept just one. But it's not the caller, it's the IOMMU's xlate
function.


> 
> [...]
> 
> > It might be not obvious here for iommu-maps, but the struct is
> > idiomatic in OF world. Let me quote a (trimmed) example from
> > qcom/sm8650.dtsi (for a different property, but it explains the meaning
> > of the values here):
> > 
> > gem_noc: interconnect@24100000 {
> > 	#interconnect-cells = <2>;
> > };
> > 
> > epss_l3: interconnect@17d90000 {
> > 	#interconnect-cells = <1>;
> > };
> > 
> > interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> > 		 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ACTIVE_ONLY>,
> > 		<&epss_l3 MASTER_EPSS_L3_APPS
> > 		 &epss_l3 SLAVE_EPSS_L3_SHARED>;
> > /* I skipped the second pair, it adds nothing here */
> > 
> > Here the parsing function for this property (of_icc_get_by_index()) will
> > call of_parse_phandle_with_args() 4 times and it expects to return the
> > following values in the of_phandle_args:
> > 
> > 1. { .np = gem_noc, .args_count = 2, .args = [MASTER_APPSS_PROC,
> >                                               QCOM_ICC_TAG_ACTIVE_ONLY] }
> > 2. { .np = gem_noc, .args_count = 2, .args = [SLAVE_LLCC,
> >                                               QCOM_ICC_TAG_ACTIVE_ONLY] }
> > 3. { .np = epss_l3, .args_count = 1, .args = [MASTER_EPSS_L3_APPS] }
> > 4. { .np = epss_l3, .args_count = 1, .args = [SLAVE_EPSS_L3_SHARED] }
> > 
> > The whole of_phandle_args is then typically passed to the corresponding
> > xlate function, specific to the paricular .np ('provider'), which will
> > use #args_count values from the #args array to return the object from
> > the provider.
> > 
> > Now let's see iommu-maps (again, qcom/sm8650.dtsi):
> > 
> > apps_smmu: iommu@15000000 {
> > 	#iommu-cells = <2>;
> > };
> > 
> > iommu-map = <0     &apps_smmu 0x1400 0x1>,
> > 	    <0x100 &apps_smmu 0x1401 0x1>;
> > 
> > The property matches current definition at [1], however this spec
> > doesn't match the DT practice. It forces that the property should use 1
> > cell for identifying the "object" in the IOMMU provider, even if the
> > provider expects to use 2 cells (two args).
> > 
> > The correct property should look like:
> > 
> > iommu-map = <0     &apps_smmu 0x1400 0x0 0x1>,
> > 	    <0x100 &apps_smmu 0x1401 0x0 0x1>;
> > 
> > [1] https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/pci/pci-iommu.yaml
> > 
> > > 
> > > > + *	args[]: array to receive the translated ID(s).
> > > >   *
> > > >   * Given a device ID, look up the appropriate implementation-defined
> > > >   * platform ID and/or the target device which receives transactions on that
> > > > @@ -2117,21 +2120,21 @@ int of_find_last_cache_level(unsigned int cpu)
> > > >   */
> > > >  int of_map_id(const struct device_node *np, u32 id,
> > > >  	       const char *map_name, const char *map_mask_name,
> > > > -	       struct device_node **target, u32 *id_out)
> > > > +	       struct of_phandle_args *arg)
> > > >  {
> > > >  	u32 map_mask, masked_id;
> > > >  	int map_len;
> > > >  	const __be32 *map = NULL;
> > > >  
> > > > -	if (!np || !map_name || (!target && !id_out))
> > > > +	if (!np || !map_name || !arg)
> > > >  		return -EINVAL;
> > > >  
> > > >  	map = of_get_property(np, map_name, &map_len);
> > > >  	if (!map) {
> > > > -		if (target)
> > > > +		if (arg->np)
> > > >  			return -ENODEV;
> > > >  		/* Otherwise, no map implies no translation */
> > > > -		*id_out = id;
> > > > +		arg->args[0] = id;
> > > 
> > > What if args_count is 0? Given that you place no restriction on the
> > > way this can be called, that'd be entirely legitimate, and you'd
> > > corrupt something you're not supposed to touch.
> > 
> > args is an array (not a pointer) in of_phandle_args. As such we know
> > that args[0] is legit.
> 
> Again, no. The caller is telling you what it expects. This is strictly
> equivalent to:
> 
> 	void func(void *blah[], int sz);
> 
> func() is not supposed to look beyond sz. As it stands, this change in
> not acceptable.

DT parsing functions follow a different approach, because of the "random
crap". It is:

    int parse(void *phandle, u32 **args, int *sz);

So, if the caller insists that it can handle only one argument, it
should call parse(), then check that (sz == 1) and return -EINVAL
otherwise (kfreeing *args and of_node_puting phandle while it does so).

I will quote of_phandle_args here:

struct of_phandle_args {
        struct device_node *np;
        int args_count;
        uint32_t args[MAX_PHANDLE_ARGS];
};


Please take a look at how of_parse_phandle_with_args() works.

-- 
With best wishes
Dmitry

