Return-Path: <devicetree+bounces-278052-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ERoKCa2vGlv2QIAu9opvQ
	(envelope-from <devicetree+bounces-278052-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 03:51:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D682D53CA
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 03:51:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C841E305DA8A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 02:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D15832D0C9C;
	Fri, 20 Mar 2026 02:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QYHm8Udw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KCro74HY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81F640DFC1
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773975030; cv=none; b=E7vk3/aKleM+82yQQjFp1GKpKrFeeGjFBkZDATucNzdtuMJImnDlxfm/u96WcGiMSehbIXGcvlpJ4hUWkmnhl5+I8aux2pFptGGxAAbfHT8mRH9uwoNQwKWbCjAF/QG+6+6H79q0MTq2VJ6607A3Qimp1jBFQHv2EG+hZ82YY1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773975030; c=relaxed/simple;
	bh=sGbineqHLHgks4SmnOMUvTtvmPAnsvxrKp6ALHOVPtM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IeQvZSgZ1kP6EZ61518OExJAzHDihWd8td3aTf0NacqIBehdH+2GO+7tJQXU0ZmaOMLxueOEmh8i85qp0Swa5dho70lkDWJnCPWXIIOuLWhBUw0qDL1WDvWA3+Z1sJBpV79HqnKFLjX8vC94qlWjQZQ/5+7FUuq9W1bfVRq1Qt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QYHm8Udw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KCro74HY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K2XjjK1191297
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:50:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NmKAuTUkURchFcJsh4unNqPF
	m/QiUuZnrYkDgxPcw5g=; b=QYHm8Udwdhy0uP4A04gZZE8+t8leQ8ab46e+41+y
	sdF0PCoULnyQbX9wAM/aRhIE0Y5YD3XJFJsKIozKfbJgnHX6nW6cwcnioEqYHGr5
	fdv0g9XZs/jhctALFAWfY0VeSI7Q2RLu/Ig5N6vREhbA69vhQbgZlyhEUBnEaFlq
	51eTGOrPYpOsU7m2vR6y+XD9We+yquo1VDWQI3aUG1b0XDrd7f/aP6OTsu7nU2Yv
	BpWys4+Rd5sQA/HiyoQ2bRir9L6KXf4LcmO2jgH0iqrN3SB5tWTnFe3V+BJnBPDh
	ei6GOhWMCdJb3ss/UbzqsSoIk9n2qle4MaRZGEY+dPsmag==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0pvhs2xc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:50:28 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5091a96f0bcso11514331cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773975027; x=1774579827; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NmKAuTUkURchFcJsh4unNqPFm/QiUuZnrYkDgxPcw5g=;
        b=KCro74HYNfAhxq3zNGq7X9dXWNJy2TaZQKE2m5aMt0WZZ8vvmFofYnGkMU2VCJBRBh
         qLXuMnR/GkAgF9GIjmbDdonMk74un+rAwJz6SDbwxfcdcMiBRsUofnOeEwSmLs2Rt/qI
         xFUsP5X09AezLc2dWumXENCiuoAhhhRHFCdKmOI1pGIBqQd/AoHVWE7B+XoKe2YUBvlL
         uNGkUIWT4qVGRMJKhf2oPmnZlEi9jMtB2bKpoK5DBtZeZigsUEQth8oSOUUW+jlsTNYM
         bscUic+X2EGSF/j5/ayLsIVOHEHiqC8tBwFinUOmW4J/C/gCE+W0QkbvBpMO/b8TDmiz
         pTtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773975027; x=1774579827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NmKAuTUkURchFcJsh4unNqPFm/QiUuZnrYkDgxPcw5g=;
        b=A+wc3cfBf11TGCRSFtjFDw7V2BV+mTOTrVXI1bJqR1BqQSpYeuXnxcIrjGY6Z9SDb8
         lCwifRTYRC9Z0iCW0NJooNKCWdsRf4c7OFMHBgChuJkAqRJF1Z1I3tvaq+w/1cy+1ytO
         1xvDEhNpSCtg6AbphFjzLMtve1DxlmLcQby7xYrvH/jmPEnNc4/sYBfRr8uY4vfPz1Nz
         oj5g5GgKTb2akd84+hI5ovbAu9ezjjB1VlMWNTYZlFCBU8i7j9jyurvbPbrC9wrCpEZa
         +KAgXnkJ2bJpMSdrFqhyk3mxK+D/EP8mLnlJXzmB4JjQcl/Q12srdS9xQDN7C+8hEfmZ
         n4sQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKyCGiOgGuux78jg3vWrhhy7xTYauViKUyNMoCOTsbOXEdKFaQT9qbho2gnWPFNO7xJmZANhO//4eD@vger.kernel.org
X-Gm-Message-State: AOJu0YxFxeXSuNWwzptWsDlJoisx2vLU+TDorYOzlsBk6sb0NJBWWHE7
	KsTa3UpkURB30QRCg2FOaV6WBT9Oov1RbxSPcre4tYpXACvEvppMqxVN24dM3aYGXqCnWt2p2Yh
	o7ABr+79IRTekZujSUn9WbPZHp6dIZ0q//1iUnR5zJq8z7yC6wOjfYKJCfB8RQdnk
X-Gm-Gg: ATEYQzzvGu6Ln9gQTGskPKRapnTJapyjv2v77WNMOliVwHxZEH5nuAimFEtoiekU+QN
	16EDPCV6fVC3JGIh5fVmlaeuH+pK80lGDEZvMDM4EK1ziVuv4xKf5tJ3o8mGqKNseO/hYwkjuh5
	cyzylYotpl2eg64Ru6wDq8/BJWhBtc/LbmPDrqD1tSJrYM/PuIGYNK9PzZPEX4wna+7yBqWrzGE
	wnrWpI8whcdp/6f9uwp5FazjwgpXR9Zz+HEaM6e6N8/Wtt5RDnGXWzNP1D3mCHlvbWz4JD6l8uU
	6ocpU6uRb0VxjbI0DzDpUicaKr2puqviXrOOAZGWf34rqU0ci42kk1I/IKZBEg5DShH3EtpgDm6
	rHySMsvujKgnUEXH0C8xvZMkWA6Jhb7SA8xLgG4Lo2cE1oDNYPri2SHaOEDrUCYKlVU51BkCiah
	nazYF9njAy9OLQqjhRKs7dPSpgpEBSIrS2uqY=
X-Received: by 2002:a05:622a:7c83:b0:509:14f6:9849 with SMTP id d75a77b69052e-50b37507278mr13876571cf.42.1773975027081;
        Thu, 19 Mar 2026 19:50:27 -0700 (PDT)
X-Received: by 2002:a05:622a:7c83:b0:509:14f6:9849 with SMTP id d75a77b69052e-50b37507278mr13876321cf.42.1773975026607;
        Thu, 19 Mar 2026 19:50:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a28519f93fsm270628e87.21.2026.03.19.19.50.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 19:50:24 -0700 (PDT)
Date: Fri, 20 Mar 2026 04:50:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sibi.sankar@oss.qualcomm.com, pankaj.patil@oss.qualcomm.com,
        rajendra.nayak@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: Add Mahua SoC and CRD
Message-ID: <iwx3pxkq3jrxxqusjmjf7aiwyrheitmh2mj7ny4siwvormxgd2@p35hmqtdkhry>
References: <20260318124100.212992-1-gopikrishna.garmidi@oss.qualcomm.com>
 <20260318124100.212992-4-gopikrishna.garmidi@oss.qualcomm.com>
 <cnmqoyoezopwtkwzonfr2o3gphj67kozo4s663vcppsaoicuk4@d766vka7lv74>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cnmqoyoezopwtkwzonfr2o3gphj67kozo4s663vcppsaoicuk4@d766vka7lv74>
X-Authority-Analysis: v=2.4 cv=F95at6hN c=1 sm=1 tr=0 ts=69bcb5f4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=wNE-EAEg5L05xUdJOpEA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: y8WBwRRqzYAqlivOKOjpQuTbZxKCN5nB
X-Proofpoint-ORIG-GUID: y8WBwRRqzYAqlivOKOjpQuTbZxKCN5nB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDAyMCBTYWx0ZWRfX5ul7uQocfCre
 XL7S6sKYPmvp/ktkbRBszpCb+SY2aE86bX5nV2lxTZp/1p5r6vwXrhE5I+ZNjrPE0KVj8M4J4eF
 Gcv30O/TVkzTVGi6Hqs42WoJ/VJ0GPVwp8NQX2+c/2yYQjMLQJiKt+24/5vAZSYXx+UZmFfhfNb
 W5OaajeBnlWUbdifV8z4MBRWFGxtb48IvjTe6xoAuwQTFEhz5RxFZXgCRe+iTTHAvzhGvq+wGOq
 8wZWJTFAg5dK3fqs6Vunn2+vdxYUUXZQyrk2PhuGS9ont4aUXlAKqA5/nfgfQdluGyTftoKL6vK
 4D3FVBgYEfgCEWdOFjoNlmYdjeBT2Z0gtL9XulRbodz2Ep1uigAf9Sz3Cmn5wdFhZdBoKhAUv+C
 cOYoU+jzwgs9wBbSU0fTfsDU13rtKhyapzLY4oPVTpqFJ1ucecW8Pi2FJbtDki7DTvG7jla/sOW
 sami43YwY5VRvJWq6LQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_04,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200020
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278052-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 42D682D53CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 04:37:16AM +0200, Dmitry Baryshkov wrote:
> On Wed, Mar 18, 2026 at 05:41:00AM -0700, Gopikrishna Garmidi wrote:
> > Introduce support for the Mahua SoC and the CRD based on it. Some of
> > the notable differences are the absent CPU cluster, interconnect, TLMM,
> > thermal zones and adjusted PCIe west clocks. Everything else should
> > work as-is.
> > 
> > Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> > Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> > Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> > Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> > Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/Makefile            |   1 +
> >  arch/arm64/boot/dts/qcom/glymur.dtsi         |   2 +-
> >  arch/arm64/boot/dts/qcom/mahua-crd.dts       |  21 ++
> >  arch/arm64/boot/dts/qcom/mahua.dtsi          | 299 +++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/pmcx0102.dtsi       |   2 +-
> >  arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi |   4 +-
> >  6 files changed, 325 insertions(+), 4 deletions(-)
> >  create mode 100644 arch/arm64/boot/dts/qcom/mahua-crd.dts
> >  create mode 100644 arch/arm64/boot/dts/qcom/mahua.dtsi
> 
> 
> As a second thought, patching the nodes using node names is frowned
> upon. I've implemented the similar change for Hamoa/Purwa pair, but I
> ended up defining thermal_foo labels for all affected (removed or
> patched) nodes and then patching them using that label.
> 
> Would it make sense to implement a similar change here?

NVM, the patch was merged, I'll send a separate followup.

> 
> > +
> 

-- 
With best wishes
Dmitry

