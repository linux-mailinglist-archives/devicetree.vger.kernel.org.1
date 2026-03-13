Return-Path: <devicetree+bounces-275335-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GC8EMhUhtGnahgAAu9opvQ
	(envelope-from <devicetree+bounces-275335-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:37:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB00D2851B8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:37:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3F2683198EED
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 338123A5445;
	Fri, 13 Mar 2026 14:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dh2vqyvi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cTnzhPmQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A023A3E67
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773412532; cv=none; b=oGIXZEVDiP90A68cXxDdFIUyTsZ565L/2qlvSpYzma2DZJHonLIuS1lXPImOUBkpJCOKjBRmK/ZRe55B2GW1BNGBun8NuNkZlJutOOr4YJFRHMyciKpcliaVD4p1k3naG7fr1qBT7QU7xnlml/HlY8gHF5RXHajeUpV862jT8gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773412532; c=relaxed/simple;
	bh=ysdB1CrzT2L5xMyiu9xHBH8g1kis2t9xIpCDO0C9w9c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DnlcF30EU9uayR3IyN0u0oH+qgprobVU9fByLCgljH27f2ssXhHp4thuRDhfxuE25GJWgSJ4jMNiOvGvVM4zQTyUKXeXocYPruwUUqJwx263/oterEx8z7OgQHnVc43K7iigyNc+RrrvPB3BEhKBvNyowSVc9F0l329spb3lcKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dh2vqyvi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cTnzhPmQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D9TiWR1498953
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:35:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lrkL30+tuhMiMEBI79DY7n07
	W+VCjm+o3Ml69LY7BKo=; b=Dh2vqyvi91uLQ//+xXFiwNVjhFR7uv8+L+pEHGdi
	ID+B04T0kDCdqTqlp6UQcChYD8Idfbmu77QNa7x3bz8G5CcoVCOYtuQv87iKgSLJ
	/5mOwli4+DKEy5NdjSXVl17SNSq7svH2ey8MkIEeMaw/i9BRgc/0Ub87NFjHzxOO
	dODa+No6IunZWtKKfw5wT4CtIm7Tk0X8/O6MGkD9xBrfbDpo5BGmTPIwSbZ9MWuZ
	Q7NeQx/yhXj2rdbJSwnaLgBLwJbOYcVcd0mvh0mAciczn0HtsK20kpKA1JQG3TJo
	JV8UI6psivo+kGAV7W6VkbWPPBd4005j8a4PO6OaXbe3yw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvg0hh0fv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:35:29 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd85e08fddso2103750885a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773412529; x=1774017329; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lrkL30+tuhMiMEBI79DY7n07W+VCjm+o3Ml69LY7BKo=;
        b=cTnzhPmQwPf3bwoBlXXK1lujgxpy0M61xSzYAshoHFGe61idENJW6zQSHy9e+EUIpL
         Te+i22mkTM9o/zXFXUq/of+H3FSvUet6wca9/Wwv9Ez1guY7xZT/F3oEQx2EWc90ZYqx
         0m9uktMfMqTXCUXKSPLP2E3NRPWLNrE1VQOhiF6cL/K+QOWfjpDg9DKkAjU1YhY9lqUX
         sRPkcl6YVpEFDN8MWjwwsSOcdVQMpvBNh4tit71DlDmNO6ps7rStk4eOFYiDeuVd1122
         ZsnvTfg+joWA7Aosmhnxmzx3MFcg1fFw2eisKzJqFTGTo5cNGU/pzK8P86VJzw1xoVxe
         aZfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773412529; x=1774017329;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lrkL30+tuhMiMEBI79DY7n07W+VCjm+o3Ml69LY7BKo=;
        b=pQZl/2T0TyQyc0v7WfdDNFbfcrXMfhzUS3CUNVaaX3FMsQjqqDH61x8B8qIcH+KfH2
         03K+eGYqFzoqVwuzBzKYTScbC/k3r1QAb/os2ZH6+s8PykO1E+WQUj5uMNGM19it9JbB
         21GGC/6p3XSi/MID0e2rpozJS6juPIGYua0qFs4rGY8v+k4n2S3CsF0MJQaxFJp6rT4f
         gQf6LxdRVK9CTP0M9Lplx7PD4/g3RheCH78agq9Fg5t4HdkdVQjXAZhTwF49IheynQyT
         Nx4ym/ecKvBSFFL91iBGPpZs6qAr2Tw6uk4DGDs/8WA9YzWxbxD1Pbbj84S08CBqvZGB
         dydQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2BhVP4GKHIvXVgM5RxqO+wUrlSNorXtKq2lgoXKgFKjwoIfEYaOMb3Z2hyA+OLsLEUGZS9NEVC9SD@vger.kernel.org
X-Gm-Message-State: AOJu0YymSvTm9vVYiSjh94VAtjkykrRl3AF5u6H9pEBe+EzAfG3tlSyl
	8awhkjrp9LpH81yxkWrYHXS45BabZsf7BE/Is27n68LhAWAWo3F9ZqOdGOhdALOCekURa7mHWEA
	clo22kA+DvN/6WXvwCah7O3hlqEsZiK+Uou59PH9GoM8XFUQDexJSIlZqxkuaVpRW
X-Gm-Gg: ATEYQzwRLuiTzQ5JUavGRLqVJ6zETw9LX6WtYgKy1p+y9Zf7AfNt4QERVM0f4UoA/pO
	kdovWT5nltQiE75uOKyHj47biLOY7bhU4hMXjdsu40ELoWHgDlB1djgyA7vPv+MdClu3bUWtINr
	Imf7U8JsNALZVL4zOfEmsnowDAw/GYtNkJp+HaYOw+A0TSgTNOkSeJKNEiQm3nr04H7nFkGmGI0
	Y5hw9r1wCiCUMUPK6g/8CCtVqKYxBdB0VXzII0tVPCAZ+7aovtJQBnShsHwn48oflTdGaaD1ot3
	ED3C0o9w26sxGg0JGf7zmRtQqLuGNBY5a3jeos40p0lcVyNgrIW8KOSOD4yJqh9oFtaMS0hAAjO
	iFeTQJa5Cp+zKUquL/zpxyPCyuN9webRDB6xeky7STV+3BqMiM54vcPwSUzXKih9fKDlgk7fJvS
	QXU8jShhOMePTLej+ZFUZX79/uVQHQn3b6BJA=
X-Received: by 2002:a05:620a:2a09:b0:8ca:3c67:8925 with SMTP id af79cd13be357-8cdb5bae992mr467195185a.64.1773412526705;
        Fri, 13 Mar 2026 07:35:26 -0700 (PDT)
X-Received: by 2002:a05:620a:2a09:b0:8ca:3c67:8925 with SMTP id af79cd13be357-8cdb5bae992mr467177085a.64.1773412524205;
        Fri, 13 Mar 2026 07:35:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15635786bsm1522091e87.61.2026.03.13.07.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 07:35:22 -0700 (PDT)
Date: Fri, 13 Mar 2026 16:35:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH v4 2/5] platform: arm64: Add driver for EC found on
 Qualcomm reference devices
Message-ID: <44xgivai4jqlc7f5xxe6yohzrqicb2sgso465xuip66n5tatqt@6cu2u4erpe5j>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-2-ca9d0efd62aa@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-v04-add-driver-for-ec-v4-2-ca9d0efd62aa@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=T6eBjvKQ c=1 sm=1 tr=0 ts=69b420b1 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=pGLkceISAAAA:8 a=ELDJdLTGsJI5jD7mVtcA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: gHJUMe2IAmAWLKUJfHSe5cyJcUHtpfvi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDExNiBTYWx0ZWRfX7wdlHsQNDlmI
 EocYJbnuoDdPEuUjB+HWSFvpG/OS47T+7fFVx5h2TlkGlcYqWLb8DCY3r9CgVa9tX6sugkougoZ
 HQkIsHMeP27+z1PLLu4fk5Vn5A827maqfBbE5ooClpmAZfN3GvFkF4rscZ2r2ObF801Vzto+yGa
 OmGKroVOFxfyAok72x0Qsj01nFp0BO/Kndhms0N65TEaueFFLtTVddop4RPZywBNldUsUwf9Nqu
 S+ntrZ0UF59j5QY5pRAbDdWBr70//oz7ArztIrp0W1qeAj16aQXmNB+pbkUn2l5s0Yb/64MHfST
 iuAnrns8DohC5MhUtR5S8ya4xeoqG50zqK6dIr9pfDxU594Qoytdfy0Jtzth2LHbm91vT7Q1b3u
 dZ7jpW4G+qMa5SFLLuTy8shslNs8GOcMwPzj4Nz3UuMZYLQE2FogvMqO02xDccTnVGEZtaaDuN6
 7EKaEuNZMzkbaHjNDUQ==
X-Proofpoint-GUID: gHJUMe2IAmAWLKUJfHSe5cyJcUHtpfvi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130116
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275335-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.intel.com,linaro.org,vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AB00D2851B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 03:59:52PM +0530, Anvesh Jain P wrote:
> From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> 
> Add Embedded controller driver support for Hamoa/Purwa/Glymur qualcomm
> reference boards. It handles fan control, temperature sensors, access
> to EC state changes and supports reporting suspend entry/exit to the
> EC.
> 
> Co-developed-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> ---
>  MAINTAINERS                            |   8 +
>  drivers/platform/arm64/Kconfig         |  12 +
>  drivers/platform/arm64/Makefile        |   1 +
>  drivers/platform/arm64/qcom-hamoa-ec.c | 468 +++++++++++++++++++++++++++++++++
>  4 files changed, 489 insertions(+)
> 
> --- /dev/null
> +++ b/drivers/platform/arm64/qcom-hamoa-ec.c
> @@ -0,0 +1,468 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2024 Maya Matuszczyk <maccraft123mc@gmail.com>
> + * Copyright (c) 2026, Qualcomm Technologies, Inc. and/or its subsidiaries.

Drop the year from Qualcomm copyright, please.

> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/i2c.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/pm.h>
> +#include <linux/thermal.h>

Please add <linux/slab.h> and <linux/interrupt.h>

With that and with the typo fixed,


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

