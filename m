Return-Path: <devicetree+bounces-260438-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOEHLBQaemlS2QEAu9opvQ
	(envelope-from <devicetree+bounces-260438-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:15:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B751A298E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:15:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA55530990DE
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B3425D527;
	Wed, 28 Jan 2026 14:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cZ2H7aXl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DlCnOtcQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2432D230BF6
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 14:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769609407; cv=none; b=A14QI+xqtPHc3nI3Qz1DOM6uEKHdXF9AwEriMiOnjIXESxlahvY0vVIGCfTW7yBVPJ/KbCAxC3WSk1Abk8SRo9kFhPdLuJawqDoKcPMnpptJKsvv08Z/LFwAKsBxyLwLik9etcR8rkG5zkLv79VizEMXQgL713AH+OTPvqZOOVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769609407; c=relaxed/simple;
	bh=nPO22Pk9oEOy6P/AoehUa+28euijor3hUcDgnvgMSJE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=el298xZhXZ2qmQkSJx5Dq8TkYQKXIdz4gwcSwZue6jJNk5T2jqfprX961TzLbMeKlkrTXiKPBXAgJITXSs6gKzAZ3hORC3aVbWsAmlDwsW7uj2b7JW8riVhK4bOzGbOVPlBBRm8PFtx/2B2o28yMmk9QQY/kbZ842FK8j5j2PK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cZ2H7aXl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DlCnOtcQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SBdwj71750489
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 14:10:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AA5/Lo70A2JiDpn+2PpdCMbf
	BH7wa9FOwafkTgtB60w=; b=cZ2H7aXlV4/x/RXaBDlt7JLRZP452S4r0gkwfDdu
	Hcb3rnCDEtXkYVMdXHxXlxb2lOVz4TEcHk8tRoMTy3I0lbLQFg0IsFBgDZANPexn
	xRDKqIe+/xcWnavTx9Iz8qX8ILR3KfhtZuEEm/sbX8M5UHjybOmY6zdhu+RfFLEd
	m7LuoMuY1NpNxv1kNFnqQOgd5XPPyLXJ3tFBiUqaBWPEvirhNXHA5uFl6UuM2WIo
	qh+XUUzidn/ShOiP0L1rkQmuRBIViHam3Y7A4mxcRN+wU65Lgtw8bifqnDuODk7h
	lg+rZQQe+m7DWjFdITr/FCh0Ph8aPT0oLVWGxZA0FqiJFw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byhsj8fwh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 14:10:05 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70b4b53e4so613486885a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 06:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769609404; x=1770214204; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AA5/Lo70A2JiDpn+2PpdCMbfBH7wa9FOwafkTgtB60w=;
        b=DlCnOtcQ8tesQNbOqd6JDNYjxMMmbUNlQ42W/yoQlvJ5ZuEGd8o+LqoTxCTA0EGky6
         PX4c3RD9EJioX15c5IaXVcawuLej2O/WIZ1nFbEFieEmInI/kbc3VJH+OjSv4Vs34E6X
         CO+DaoMG092Sl4pyMRmORdrApH2NFfZuH7ZLSO5hDIir4ICSK2cmGLb18hNTgGy4iuZ0
         9QqioGq2FJlJI79kZlWykPV/qq8ufE3ZJGhvkymvnspxksSqmS0PKMQi1oU7V4RWVuGx
         R4HF7GgoqvvAgdqFSgpa78EdenamPhkhDdJH/YnXclcjwHKWJ3T/Pa/9yFn+UQSQ++9O
         R7mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769609404; x=1770214204;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AA5/Lo70A2JiDpn+2PpdCMbfBH7wa9FOwafkTgtB60w=;
        b=btuS+jLpm7lBu1W467ADwtZ1szPBlrexGY2UjTOj5ZyIaeYTe8GhXg9cRji5CNEoWR
         GsAsut3h0mTVNQU2/5WYFDTyUNa2Qy0LBYczT+LxUfiyZ0vyW9lwD9nk+qEcZR8/jlyv
         JufaOl9bR8iS08Tus7qRrWex2zMkql5dY/xBK0tVtxU0suYE/CRjBwnbyER7xkweFJzj
         vedX3oMYushzXCu/REI2/deanbAVZ0LJ5vdrStT5YUieirtxdLkEqetGTvwIttJti2YN
         qfXmnd4xAKGE4BM3DlNAT95GNlL7Zgk7zEU9ypDMAj42E4BsQEcO4zY8aQkBi8TpsyWJ
         HLJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVipWEDf3OMPCMykxuNR4BW78Y8eKmvSGtVOnB6rqZtBAEC1kV7EdkpTHWLMBIlyk7qASG8QH1tjQjX@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ/tcWERLJMSaeIiI5bXsTEEDhHZ+cdvV7YDMUdhSk+IRZLtn9
	61tnPlam5TBDPatJZKpKqx/Or2fk0Yofh4U5cZHDZYDLDXG9UHGOrXD7w/1o0nQnR6jIo2AfOcP
	AklgoVGexPfoO7I8fGbQDfS3ioo1AU/wmNq0qWuEy5nxrCsb13hfsa6u6e2VBg6Qk
X-Gm-Gg: AZuq6aKSOz/DYhF77HImB3beIiyPAf3Pr2skYXPsNUJD3ic+oo7mLS6YD5eCOU583+3
	8kA7x/fvF7H+XEE84kwxMmg3AUD0EvMw8mPwoILP4Y/qW35jEBb2mSPDDgWXQ43NFyW2Iaqj/mo
	B48pkHq+GT2QuBZuMqis/eQKTdxEhyFsFoM2fM01F9ZcBF3Hm/AbtiQ5OB7ZQme6/6ov9asTdek
	m9jhADdo0aeSX9JXMzIfQ4wZ65f6L9v2+WG+etALgKB/YX25BV07kZ5WV3jkhwtrqXIpxyRYN2P
	3Vxnh0Y6Vkc68j0mMgMA8Z6srnOIKENLpk6P0cWlF90nzOsvRuVQQcgFJcDzH7pv8aKjmZKyGEw
	pfhkGff8EqAFVNiOlKoNFECOv
X-Received: by 2002:a05:620a:38c4:b0:8c7:eb5:8545 with SMTP id af79cd13be357-8c70eb588damr388867785a.16.1769609403761;
        Wed, 28 Jan 2026 06:10:03 -0800 (PST)
X-Received: by 2002:a05:620a:38c4:b0:8c7:eb5:8545 with SMTP id af79cd13be357-8c70eb588damr388861385a.16.1769609402986;
        Wed, 28 Jan 2026 06:10:02 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1354205sm7465247f8f.41.2026.01.28.06.10.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 06:10:02 -0800 (PST)
Date: Wed, 28 Jan 2026 16:10:00 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/6] clk: qcom: Add TCSR clock driver for Eliza
Message-ID: <44k56h4yjjknc5xnwlrmlpgj2hpf6rvdsv7fhrhb4qnzsz7goi@o6qz7im62kg3>
References: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
 <20260127-eliza-clocks-v2-6-ccee9438b5c8@oss.qualcomm.com>
 <fb7bd7de-61ee-46f7-826a-2c9c32aa9c2d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fb7bd7de-61ee-46f7-826a-2c9c32aa9c2d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: QQJl-vOnvIlfIYXCSyyOoNB5FGmdiu4f
X-Authority-Analysis: v=2.4 cv=GbMaXAXL c=1 sm=1 tr=0 ts=697a18bd cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rJ1U_4G_ZJY64H9EBe4A:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: QQJl-vOnvIlfIYXCSyyOoNB5FGmdiu4f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDExNyBTYWx0ZWRfX7w+vIa8nG0YL
 pZ7l/cJN06XzzlF2k8hcLDWqBlHQU3XYB0kEEGh1DEdEqOl5JHroMsxOp+p0aL245RoPQf8IFMc
 yrvpzFEi5MJuH8ZZWT6d2InzKyT7nUJSMeQYbfojlDF/sCL0CEZoN1OwqeyOxqg1yK6dwj/5U18
 79lHlQgSIToC8TL3WMgH6KT8ueU1qQKZj806USMucdWiFwK/8Kf2jdIgvjOm2gvgfF19LUmgQ7x
 PgnQKRFjG3fz2Fnr7l2FSCU1fLIx/RMmBVX7hIJ0jX80VCztWllOvNw7li4ATXTqeWdKubtLNCR
 exqzTKNkNSX/pRMdQWAHmz0+MsHA63svRFzn0QL5wM1nHXiu3Pt7X+1/+K27/3p5/Ey5puPHY6s
 3vnfqZ4Nw8ObkKnF6VkTugW6idejxl/IZzs7l+YQO9wnAwqEKCtuwDqwiEsRtZVpBblfW54K+Rt
 2dWz9hGPtHAnErZv+4w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280117
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-260438-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1B751A298E
X-Rspamd-Action: no action

On 26-01-28 11:34:49, Konrad Dybcio wrote:
> On 1/27/26 4:03 PM, Abel Vesa wrote:
> > Add the TCSR clock controller that provides the refclks on Eliza
> > platform for PCIe, USB and UFS subsystems.
> > 
> > Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +++ b/drivers/clk/qcom/tcsrcc-eliza.c
> > @@ -0,0 +1,144 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > + */
> > +
> > +#include <linux/clk-provider.h>
> > +#include <linux/mod_devicetable.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/regmap.h>
> > +
> > +#include <dt-bindings/clock/qcom,eliza-tcsr.h>
> > +
> > +#include "clk-branch.h"
> > +#include "clk-regmap.h"
> > +#include "common.h"
> > +
> > +enum {
> > +	DT_BI_TCXO_PAD,
> > +};
> > +
> > +static struct clk_branch tcsr_pcie_0_clkref_en = {
> > +	.halt_reg = 0x0,
> 
> These regs certainly aren't at +0x0 to what we normally expect to
> be the start of the TCSR node

They are if we add the TCSR node with reg range starting at 0x1fbf000.

> 
> [...]
> 
> > +static struct clk_regmap *tcsr_cc_eliza_clocks[] = {
> > +	[TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
> > +	[TCSR_UFS_CLKREF_EN] = &tcsr_ufs_clkref_en.clkr,
> > +	[TCSR_USB2_CLKREF_EN] = &tcsr_usb2_clkref_en.clkr,
> > +	[TCSR_USB3_CLKREF_EN] = &tcsr_usb3_clkref_en.clkr,
> 
> I don't think this list is complete

Yep, missing the pcie_0 and hdmi. Will add.

