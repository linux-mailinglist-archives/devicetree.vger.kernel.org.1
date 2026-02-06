Return-Path: <devicetree+bounces-263348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DlKOsHlhWnCHwQAu9opvQ
	(envelope-from <devicetree+bounces-263348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:59:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE95FDCDA
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23174304653B
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 12:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A462D3644DB;
	Fri,  6 Feb 2026 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i6UsUSKI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e6uzPvLw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720803B8BA4
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770382696; cv=none; b=gH2jM2RcgymenM2fWWoJ7zUt4ynOrlL9YILJTflJIj15mqHzHdaaakM5+9+G30MLvg/vjRb70jsedQ89e/5xA9UCTtTgzN6hKUJqyRRlmh9nkbqfGoTstZyfBj7fFZTC/OvOoeoL6UVWvhkiazBa+j5zt2lhX2MTANmBT0YpOH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770382696; c=relaxed/simple;
	bh=S0AXACMXQfVYc2s0Cd6RLQOUu4IbRYgUzB9XMNy9fDo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VKzSdUnPE+dQwUoQVOgTIjsNR1JrBNL0k7Me1pc+dap+dtfgIaEAvdwunBsKUZzYf7CfvoWZ7EUfRQivq7AmRSRrgE0opygjzzFVC6YJqqGQfOM8Cmh9stb2y43AGjL7Ie6AtuwjzB3q+ZDvYbVKu0JKI4yzFF1BNaBbf3Q5Rus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i6UsUSKI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e6uzPvLw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167Xub22482264
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 12:58:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1MtAB3cve+uSH/pDLGZhwV0x
	92MmwM5of/LQVzcO/T4=; b=i6UsUSKII52znxC5elZY1Si+3wKfeqDL2NDEg4Uv
	GxRsgUlAQFUVbKgpq4yUWIDTLSvOT1hyjMJ/4VhAVXnOnB5HW/+F3xWrSbkiVN/p
	O4SOzE/lz4A8rrRkrWAnOrzLoE8oShBVOzedbL9qzrp4TyxK+WlVXttd8MTcW9Nf
	vVgi1l6Rp1m0JkB7cGbuU7GtzAxZJYhdICa7Mc6XQPs26WJ/Kj14duMxFVlZhUW/
	7ZGoRJglPVPptFViTlyTw751ki9f2FqAC66sJquaeNRzlsmTMZVlk2AJETMIC8p7
	DHQgSWO1ZdZovu+cFKFpdyrPBzc+EL8CmPc5oH4CrxkWpQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c17118m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 12:58:15 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70e610242so567571185a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 04:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770382694; x=1770987494; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1MtAB3cve+uSH/pDLGZhwV0x92MmwM5of/LQVzcO/T4=;
        b=e6uzPvLwbSlNfl57AoY3kNbsoscO4ZCKCw/LVHNppiR36pXHdtqDvzhnwun9CL7Yq5
         xg7yrZmS/k8m0ew+PBj8JWngNnnriTk03iDxJ9s1Y/hUlQ85ZhQKB+MYHtMh2v1mpZig
         Gp8gVfMNl7NP0hnV+2Wp/yuqe6NmNGcm252W/fQp7OFsvLXq2vhHeJLYzSEH781bNp+3
         twvyO4XhyZQA3uLz0llxRYa0ACjH+baN7rFaugc31w0YaW4yUP10sgkdvZyq19sCtBq4
         wHouBd3b8MmpSdl+JesATPgf3QpCps8KPYejRFLyGO3dcpG3TPZjawR97x9OhxqUKyS0
         eWwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770382694; x=1770987494;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1MtAB3cve+uSH/pDLGZhwV0x92MmwM5of/LQVzcO/T4=;
        b=ORuC1RANCpmNHqvnEN86/gIiwvR62uB14HzilfrwQDgdfdb3H0+531PW4HiOQnp4HT
         c06OJ7dWQ5XE3Y8Hkafu3jTjlJ27Z7Cv93KJEBYL/HKBWPPa8u1q/idMPmTFnHky5IUQ
         gtHdePhl4jjhXExuWG1Ye+5R66y6jm/7jlEreS0KyZh+TkVRivtRKhuXk4/udDrZ4rRL
         UQBrwNs0XCwfleOqK5CEZoGgWU9tyOgJ56+MoHGR+7jYRzxYOUJNn7fx3fQ6mMO2pmis
         /hI7zW1I22djjbk6+RENf7XYrty7jyMHxj9EForFS42ok8RC1Df0tMUECCaf85H7ex70
         +IRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmJIyiG1Kp+zXAouGBYVx0aQU189gsi9fue1MMw7XozzorReBT9Gs98cb5zimKK2Bdtqg3SkqyVyiV@vger.kernel.org
X-Gm-Message-State: AOJu0YwlFA0pxlGqEREY9oUF2XLeWcnzW2fOGtA9CYkeowsWQS/3+5LN
	IpeCT03fWLQPAbfqaTIRWmW8J9cTPPJGB3hl3f+HF+BAkuJ6tsFDsY3cKj9AYzSMnS04j00RTaR
	FOsyisV6xFrfbWMjxXMoj02kNwkrdsrrSVs2NFWMZFHvLCOFXWkDre1PWkoFo1TnQ
X-Gm-Gg: AZuq6aIAHl7//JhPjw8AdV5GTOcu8NtyPHdj14NQz4aAw7/AjkI4KxRxIZUq8MwBEeq
	fm+sd4DectNdiK0s0ZujnOCl/84AhPAX5b/wCPWkXZ7POg6QpRzw0uP0j1zIf8bKrxGXytiMeVT
	33lXcHM/TLsaaxtLm+v0RYtEtTrFbgUHxYHkANcsVJUprf4szrorjsIS039NuvU46VUBzcjjZ3L
	v11EkPWr6DsD6wudnZSFbhfTa+TV5wetiKO0z+uKvxIMLQ7suBruLqxOMCK+xjkO9dyLBchp1qS
	nPWaLK4EE2k+CsEoMLLW1/7/iJ+DdjJZJKInuSK2x6Ai4D6v3Cw9p+iz31nTP38wko78vKQRrde
	SgbkXnlWNscd+HOvvouEs5KDa
X-Received: by 2002:a05:620a:29ca:b0:8ca:4438:b8f8 with SMTP id af79cd13be357-8caf120ea7fmr309611285a.64.1770382694350;
        Fri, 06 Feb 2026 04:58:14 -0800 (PST)
X-Received: by 2002:a05:620a:29ca:b0:8ca:4438:b8f8 with SMTP id af79cd13be357-8caf120ea7fmr309607985a.64.1770382693758;
        Fri, 06 Feb 2026 04:58:13 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48317d345c2sm167861355e9.6.2026.02.06.04.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 04:58:13 -0800 (PST)
Date: Fri, 6 Feb 2026 14:58:11 +0200
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
Message-ID: <lvm5ew4sswos6e7x2fjqezdz2mclc2bgarpa4nu4zsta4553dz@ggmudyhiebzf>
References: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
 <20260127-eliza-clocks-v2-6-ccee9438b5c8@oss.qualcomm.com>
 <fb7bd7de-61ee-46f7-826a-2c9c32aa9c2d@oss.qualcomm.com>
 <44k56h4yjjknc5xnwlrmlpgj2hpf6rvdsv7fhrhb4qnzsz7goi@o6qz7im62kg3>
 <e5e42350-813a-4f6b-9ace-368f2a31cf7a@oss.qualcomm.com>
 <2j3oraektgiphuj7akss3ytxgqt6e5kqt5gorkncjoiibol32e@aueznegzge2s>
 <krn4ncotwny65eu5p36wr5dyrw2pc2ophs6g6yqo52ogi34gah@6uxeccbed3vf>
 <2abe345c-ba9c-492c-8684-0d7f4e6b8c0e@oss.qualcomm.com>
 <w2zz36w7jpxafunxhan4jvdh47kx2mhxunazig3ubrvwe4yfhk@6sbi7rqo7lul>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <w2zz36w7jpxafunxhan4jvdh47kx2mhxunazig3ubrvwe4yfhk@6sbi7rqo7lul>
X-Proofpoint-GUID: pohhy9zxcrQYKSOYAl9J4x0hV6MRVXyu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA4OSBTYWx0ZWRfX57KGSzLO0U4z
 RzrwemuU6uSbsLcXM54qeND76vBvKM4IV8HYKqVsNa1nvVbMTgeY4mATuC1WeGlDXLQvi48HQAB
 gJGsoeZAuzmxr95JcaHAf4GNJFkV1T2l3NTIUwqdFpEZYH51tjZozjMdbULlljzSGnWjSdA6xed
 GDQoKIzvDfofgY/iODerbQrrzYGGOINBuGTof1ONuZ/X95rhVePGv/i9lZqN32JJXbdw9/3JFvD
 6rg9Vpk6U92b0tuPclFoG7zGIVcN6vlz2izjOO7x0b4IE2Dw1MY2xMeMQUpoBgFi6vM2HuIq/9D
 7WLK4W5N+/jHRblwXzrc2CyXDILa5U8hqLWIoOscXPJfmzfdyVL3Yh7it0TxaOQbf3gG5q23yCX
 Blx8ihPf3CrlYG+eBEbV9Or237Zq054GER9B/KC2btDucAzbIm7CR6mhu8cmlI4nWY4574tQYvr
 /BNXzt6wTNVx4pqoSpQ==
X-Proofpoint-ORIG-GUID: pohhy9zxcrQYKSOYAl9J4x0hV6MRVXyu
X-Authority-Analysis: v=2.4 cv=E7TAZKdl c=1 sm=1 tr=0 ts=6985e567 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=Hftd3DfNRCz_qKpLIn0A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602060089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263348-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.978];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4FE95FDCDA
X-Rspamd-Action: no action

On 26-02-06 14:50:44, Abel Vesa wrote:
> On 26-02-04 13:36:57, Konrad Dybcio wrote:
> > On 2/2/26 9:53 PM, Abel Vesa wrote:
> > > On 26-01-30 22:40:32, Abel Vesa wrote:
> > >> On 26-01-30 10:43:44, Konrad Dybcio wrote:
> > >>> On 1/28/26 3:10 PM, Abel Vesa wrote:
> > >>>> On 26-01-28 11:34:49, Konrad Dybcio wrote:
> > >>>>> On 1/27/26 4:03 PM, Abel Vesa wrote:
> > >>>>>> Add the TCSR clock controller that provides the refclks on Eliza
> > >>>>>> platform for PCIe, USB and UFS subsystems.
> > >>>>>>
> > >>>>>> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > >>>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > >>>>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > >>>>>> ---
> > >>>>>
> > >>>>> [...]
> > >>>>>
> > >>>>>> +++ b/drivers/clk/qcom/tcsrcc-eliza.c
> > >>>>>> @@ -0,0 +1,144 @@
> > >>>>>> +// SPDX-License-Identifier: GPL-2.0-only
> > >>>>>> +/*
> > >>>>>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > >>>>>> + */
> > >>>>>> +
> > >>>>>> +#include <linux/clk-provider.h>
> > >>>>>> +#include <linux/mod_devicetable.h>
> > >>>>>> +#include <linux/module.h>
> > >>>>>> +#include <linux/of.h>
> > >>>>>> +#include <linux/platform_device.h>
> > >>>>>> +#include <linux/regmap.h>
> > >>>>>> +
> > >>>>>> +#include <dt-bindings/clock/qcom,eliza-tcsr.h>
> > >>>>>> +
> > >>>>>> +#include "clk-branch.h"
> > >>>>>> +#include "clk-regmap.h"
> > >>>>>> +#include "common.h"
> > >>>>>> +
> > >>>>>> +enum {
> > >>>>>> +	DT_BI_TCXO_PAD,
> > >>>>>> +};
> > >>>>>> +
> > >>>>>> +static struct clk_branch tcsr_pcie_0_clkref_en = {
> > >>>>>> +	.halt_reg = 0x0,
> > >>>>>
> > >>>>> These regs certainly aren't at +0x0 to what we normally expect to
> > >>>>> be the start of the TCSR node
> > >>>>
> > >>>> They are if we add the TCSR node with reg range starting at 0x1fbf000.
> > >>>
> > >>> "if we take the wrong base, the wrong offset is right" ;)
> > >>>
> > >>> The docs for Eliza don't have the nice separation like on e.g. Hamoa,
> > >>> but 0x01fc0000 is what we generally agreed upon to be "tcsr".
> > >>>
> > >>> The registers that first appear in that region are the same as on Hamoa,
> > >>> and so is the address, so let's continue that tradition
> > > 
> > > Actually, the 0x1fbf000 is the right base address.
> > 
> > Actually, I think it's 0x1fb_2000 ;)
> 
> As discussed off-list, using 0x1fb_2000 would include regs that Kaanapali for example
> doesn't. So will use the 0x1fc_0000.

Urgh, I meant 0x1fb_f000.

Sorry about that.

