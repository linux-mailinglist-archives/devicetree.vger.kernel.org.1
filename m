Return-Path: <devicetree+bounces-261343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDf4BE0XfWkGQQIAu9opvQ
	(envelope-from <devicetree+bounces-261343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 21:40:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D7BBE784
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 21:40:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE4B1301876F
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 20:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0CF434B19A;
	Fri, 30 Jan 2026 20:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oHnGPOJs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dTt78mPl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944E234321A
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 20:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769805638; cv=none; b=sX7OZiTImI1lpOPXTqcBVJ155/0B37WYe+zX/Dfx2s1HknCCwMXze3rL+myPbx2c2M2ea+/XFcpxv9UX88L0+BtcGZQyxMxvJzk7FnI5uRLve7/VznB4MIDCqMvM1/oSmcXNjI5uoh99NXGJEDqATBhQN8FmdRVPOffG3hTDC5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769805638; c=relaxed/simple;
	bh=Yw4d79IEZXffsKvRGAO+y8LsCNKcQBy63V//wFWlz7U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZZQKGw21U7nkXDZyIxDR+coOfIqWal9mmFWLh/Y5cpZSVsRYQQO733S3bNkz13ywIAvK/Y1pJYjLt9wXXHsbN/bwi+FG8wUIohrWn/y3fnsBMbjbTvwZT7RErqmrIk8BlCbOuNTyucxKs9xyC26dcjF9SDNAaX4IIX2HpzHrBxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oHnGPOJs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dTt78mPl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UImim8751727
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 20:40:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uGZh6P9IyChuIO7WR1H248Zv
	7S7Mvw6Hn70r2sYjVwo=; b=oHnGPOJsYlgt7YJRMyYADhltehyBx0SaWk/ET/qE
	xxmXmHtZwb0t9nsV0A4Ia7hbwl5wGYCkEoMBUyo5Bvyr4yKV2XMYc1pjwUehGIIf
	ZoGaWl8ZLgrHM08LC7i37Atszi3chq3DdKtS+bNmxZzHUkwdLjxchld0UMrg9osh
	VJSDF4Go5Jcfs/4Cqbta4nHmT8xApwd07vtRlXCxrZtIyHYS80w6nsd9vjPrrmk4
	jv0gPerSeOpzkcJK6xrWfeApWornhJRzcPmNfkBBPSyZQcgXzly9TgQ9fcYwJkr/
	sxP+yCHu+QZHlTKzKSvcyLuJc/OTOdZ6pbdDGleZoxJvyQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c128hg9gc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 20:40:36 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70a08daf3so622258085a.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769805636; x=1770410436; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uGZh6P9IyChuIO7WR1H248Zv7S7Mvw6Hn70r2sYjVwo=;
        b=dTt78mPl4o7uImZNM/0TO0ummZqApyIMZIcGI8GClpryra9RalWQOrChRTztDU1N7w
         xVcBLRpBoMAJVDnBSObj405sbljVGex4IWtdf7XpSIHgIv/6otU3LUS2T39DR8ZVwx5G
         8T6VfIH6KwfEv+Vxng7iFyjz0fM7f6rHXQEnT3sP/qJeao/Gsd8qPN87a1cgeHMYJN8k
         lICb+xhsYfXHAvndPD48xiDRyj+U07I6DxEkY6hT2Zh/7QGtpclvgrjQTH8E98shfnNF
         Yr40H6Tiyh3QwE/a9lMu4IurEgmsNCOQ685v3qfIglDGllW5qzNNVPRveRYTeRm3PpbF
         X+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769805636; x=1770410436;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uGZh6P9IyChuIO7WR1H248Zv7S7Mvw6Hn70r2sYjVwo=;
        b=P0JXYN2F5pgRP/Na1HP6TwOTYJZ4iowx6/Uv+zyUGLE6fl5yoYAm9RmBvNAvc7bYui
         FpK9JowwZB4u/76rqYo1RzPLLg1LEiKE2uOJ9SNo/XXWR97z/xwEYYFEnNEerHugcexw
         5rPfUYZ3aPZQSaf87oYNennoY2UtDb6ZDW8AZGu4ZCDWtgAvmK6NJIVclUzPDeKSS2VC
         uLUUd8RnxA74ypJZPx0DSXoOj+tvvTK54Pnc6lRpyKx7qk0m1RXSErCLPKZfeEzt35Yr
         lZpf657j1eel21P2vEvyB4oR5htdz8GuAH0GV5DwafkjykYqOFIAvZHR74gP95Am7h9z
         tDDA==
X-Forwarded-Encrypted: i=1; AJvYcCV+D9H/nyY4STueC5N1csbvAhLWh4UQ7U6Ymc9mheMv6VBUFUP1M6aQhjulrBOsuu3zWNEN2SVeTpe4@vger.kernel.org
X-Gm-Message-State: AOJu0YxIsgfj2G8SWDgJ7MlILQMDk9i3XqWVTTS8uBbdoSJ7YXTobBfG
	j+W9WDX3YVKp45cKpau7LXpj5f2lhgfmJ0dG54GZ+zW827PlkWrudvmP2rLmnqn7Uh5K8nVZssr
	UQMZsTCNFe9WguKkAvuftx5SkGGVtjPpUEHMbPwJ8kch7LDbmV743LS+jkK1/DJiOWkUOL7eg
X-Gm-Gg: AZuq6aIK1sAkeidoZjRhgufmOPUY5Pwg0EtcDAGfa1U6BhkXoumj8z1YesfqrOX7Krd
	4jlJks+dIHJRzBamg/41KFAR9Cch5dTBvurVIImYCbZdtnJvXOyNUjLMnLUruZ4hDkg3jviFNLb
	FSq6KbMWAgtf5Ct77Ic1zhMku/0Mn059dRR5qwKyB0cU3vRw/wku9weUreHKcmkcS8diqzRmLtZ
	b1p+ByXs0d59zHn6UPpwytXyYBXawD0R+sJg9OnCuzcU0Ariot2dEgaVTdCxRN08jgSccxXDvD2
	Z7saHYwilOrQphQAmLMP/kW2PyGlH+ZaXng8k0Nb5af0FqyB6kdzqFjCNOIY7fbwtsDIP2A/CQD
	hmZFJJJEugKk24N9p0r9wCqLf
X-Received: by 2002:a05:620a:40cc:b0:8c6:ff8f:58af with SMTP id af79cd13be357-8c9eb2dfeddmr508954785a.51.1769805635466;
        Fri, 30 Jan 2026 12:40:35 -0800 (PST)
X-Received: by 2002:a05:620a:40cc:b0:8c6:ff8f:58af with SMTP id af79cd13be357-8c9eb2dfeddmr508952485a.51.1769805634986;
        Fri, 30 Jan 2026 12:40:34 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1323034sm25014137f8f.35.2026.01.30.12.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 12:40:34 -0800 (PST)
Date: Fri, 30 Jan 2026 22:40:32 +0200
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
Message-ID: <2j3oraektgiphuj7akss3ytxgqt6e5kqt5gorkncjoiibol32e@aueznegzge2s>
References: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
 <20260127-eliza-clocks-v2-6-ccee9438b5c8@oss.qualcomm.com>
 <fb7bd7de-61ee-46f7-826a-2c9c32aa9c2d@oss.qualcomm.com>
 <44k56h4yjjknc5xnwlrmlpgj2hpf6rvdsv7fhrhb4qnzsz7goi@o6qz7im62kg3>
 <e5e42350-813a-4f6b-9ace-368f2a31cf7a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5e42350-813a-4f6b-9ace-368f2a31cf7a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDE2OSBTYWx0ZWRfX0cpAqAXoTrjF
 o7oacnz522uESAiMaJK+wsxodl0jgMq1qejnVJqKfV6bNO94DCMCT5XfXZDpsgPWvXhUZivztXt
 /sSEacWgTMAZLW6NYGEs+J82H9rkcr4NIZe+aszWwIjoklX9ofH2sGwwtAvkOffC3FbtVxl3ZKb
 sZtwApm8rDP9VzDmKK2ZrkuA7gMOsQePPeHm0L6wee2qi5BwaYmpBPSCFNMw0oN0dko21Wit1/E
 lKwHpwKyLn4m0dnHHtIPI7GtL8nuR/wOSrHaj+1DnsTMlKTbzMStevH5+5L8xmgDp6TWIt92LP7
 NDWWxFTlEeFlu9klbQ4b0nlmgPq8gXrKzbD0zJWTgkMZANLr2nmnLR2cvm2fNoffbCD/AMegEZo
 W7xnQ/N8b3flBa5UDW4b27W6cb8SqUwNFX0pg2huOCrWXrMTRTJ0D6NGML8aD60FXOegevNZMVY
 WKLFn5+QxTPseei0Flg==
X-Proofpoint-ORIG-GUID: pbRc5R3i8MKxYcpnUfAvj5gE_bQm7gyV
X-Authority-Analysis: v=2.4 cv=YrMChoYX c=1 sm=1 tr=0 ts=697d1744 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ynA9qmrkdMhaH5VwOwYA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: pbRc5R3i8MKxYcpnUfAvj5gE_bQm7gyV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300169
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
	TAGGED_FROM(0.00)[bounces-261343-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 56D7BBE784
X-Rspamd-Action: no action

On 26-01-30 10:43:44, Konrad Dybcio wrote:
> On 1/28/26 3:10 PM, Abel Vesa wrote:
> > On 26-01-28 11:34:49, Konrad Dybcio wrote:
> >> On 1/27/26 4:03 PM, Abel Vesa wrote:
> >>> Add the TCSR clock controller that provides the refclks on Eliza
> >>> platform for PCIe, USB and UFS subsystems.
> >>>
> >>> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> >>> ---
> >>
> >> [...]
> >>
> >>> +++ b/drivers/clk/qcom/tcsrcc-eliza.c
> >>> @@ -0,0 +1,144 @@
> >>> +// SPDX-License-Identifier: GPL-2.0-only
> >>> +/*
> >>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> >>> + */
> >>> +
> >>> +#include <linux/clk-provider.h>
> >>> +#include <linux/mod_devicetable.h>
> >>> +#include <linux/module.h>
> >>> +#include <linux/of.h>
> >>> +#include <linux/platform_device.h>
> >>> +#include <linux/regmap.h>
> >>> +
> >>> +#include <dt-bindings/clock/qcom,eliza-tcsr.h>
> >>> +
> >>> +#include "clk-branch.h"
> >>> +#include "clk-regmap.h"
> >>> +#include "common.h"
> >>> +
> >>> +enum {
> >>> +	DT_BI_TCXO_PAD,
> >>> +};
> >>> +
> >>> +static struct clk_branch tcsr_pcie_0_clkref_en = {
> >>> +	.halt_reg = 0x0,
> >>
> >> These regs certainly aren't at +0x0 to what we normally expect to
> >> be the start of the TCSR node
> > 
> > They are if we add the TCSR node with reg range starting at 0x1fbf000.
> 
> "if we take the wrong base, the wrong offset is right" ;)
> 
> The docs for Eliza don't have the nice separation like on e.g. Hamoa,
> but 0x01fc0000 is what we generally agreed upon to be "tcsr".
> 
> The registers that first appear in that region are the same as on Hamoa,
> and so is the address, so let's continue that tradition

Sure.

