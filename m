Return-Path: <devicetree+bounces-181353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BC0AC7174
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 21:22:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81664188CF31
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 19:22:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64E2521CC7F;
	Wed, 28 May 2025 19:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eai61nNI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0D321CC41
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 19:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748460104; cv=none; b=UZ2wDK4UQk1zwFPQqnzDdoEm7T2DSdipJMiyxlqk1W6fh3l7bQ3d+/WQ9q+oxvPNABgTel1sTzK1DFactG2Oy44SAx/pfunU5i1mGB2T4r03+gSDRuYYLYNfHLzXFbYj9qpxBhcTXHRcmGpV84MqnG1s2sesrOBtePo7NARwDEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748460104; c=relaxed/simple;
	bh=5YkGN7qiUJaRl3Nx6l2MDDYu/ZprV3VXMY9hifYOnPo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=In7D9254XF5Ml09c0d5FPW3rIxVcv+EmiUKWw/AtUVgzfxPW9b5Ql+VXDPE67VsmCTpZ8HWnsoHiJ8a7lQjOfXPxu785FsAoLHlm96Gvk3VwcMnMDSXyJ0sO/syRNXo14rCjBQaMbrpOIUHPv8oeyAntuepCRO9YItMkC2ZiBLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eai61nNI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54SB3110012741
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 19:21:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0gLgWYRWzCLunD/qHvyEBxK0
	5YkGBQTqBuXAxV9jh+0=; b=eai61nNIZrFCYT4XHda5r/y0e/6wLWlVa8+GpSR5
	bnjyvI/XotbJuO1zMciMfrq5n6WPGwC8T2FVPQalr0tpiuKUbz/1JF7nn86sImix
	cxZpwD2P0s/HWQ8cpGxY9nBk55IRPv2khHTxN3UHwWOAaEfmn508RtPtpnuexz9r
	qjM3Bkw+DwnzeTXAjUHTtUOihxFVXg9XJkddSXoEyTQBUvs+p++aXVUfJDZh28+E
	/DlAKUKq3s2/zbzN1fjktNtbcE6bnwnhqfi0JQis+yDNfHyY1LAgECkHZK8bZY2y
	SNHiRxFPfQheoUMZY5o4OTiuSugRbMtKOu/JvFqzb6EIgA==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w691dum0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 19:21:38 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-4d5ef3b8038so36668137.1
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:21:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748460097; x=1749064897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0gLgWYRWzCLunD/qHvyEBxK05YkGBQTqBuXAxV9jh+0=;
        b=EU5O0Fh2gZRd0rB/Ifa9xyJ30EDaUTIlkCG8qvPiCm1X5rW2WpFsWk4ZGgbKzZyDNx
         9ofbW9keKqoOiwaHjFvYNf8GPwYkaV9BG7fNQV5OYGoo8QXlShIh0tylEvuCxI0BoDKx
         wBxXd/4DLjoRcRPiBSouV9MpquDqvX1I1fCiYaVDvXG4aqxwW0aU6nLcODyMpdcsss0g
         kRP6PjgIypz5xTr8CoWlg4FSYcUgGJUZjTXUGXVsWJI8Bpgu6cOcHtgHV3/LNIK4zsUN
         hJtM+6a7ODV7fXjvKyuW/lR7sXNXV14Vk5DpllN9hsQB5gTgzdt00/XamX3aSeKy1fD7
         T2gg==
X-Forwarded-Encrypted: i=1; AJvYcCXkgrqQxeZYlYzd679fD8rnxEkJ0RdZtlGPgEcqGdDa3WMHLwLyXV4FzdmQOxnwVZ02Uu318faprn2k@vger.kernel.org
X-Gm-Message-State: AOJu0YxI2/pygqSfONy/wuTD6f/FfJwtGpAmzRSnNNsYTvbHUvaZ3dSa
	RJPjry+sbBfgwf5Dp3e5PQSOMMaizG6D2hToyGEfLm/B4CnPaIERuCPFF/tvQrScU6FvISl9bO/
	N2EPny3Z2I+FF8MgL1hWCEKKJqi94kh4dgEhalPWloXGKR08KjQAgijxmt4e43WKz
X-Gm-Gg: ASbGncuPSCOvkfUimedRFHsjxhYZUqIFQls8Wu9X9FdIxijdoZwfSyUtCMM1cKCB3sJ
	ffEPK7yjTI/J764LI242mGEYm7d/7AiVpL24QQJIDw/pJY3jUWH7Z2Wyxr7eHHxEIjaw9tUO8Af
	/amdnn028UJyHJchbuc5JzpLt1Oveq8ShtYhHbDjXyMU2Ys0PqMOz+5sxNOB//R2Hax7JrvM9/h
	UcYgzJkSTxe7JqPVTaRxnj+Ms/CzE5K5cixY5bCk+JHx0HqcOitB1I8qTSOJ/G1YNEdaiyhFmxG
	flmQdZW0r+aTcm6+NfEmiy60OFlnwcubKzStWqvhdSvqcCGDRMzYWQFyMlOWI/uACPlSpz6dlXo
	=
X-Received: by 2002:a05:6102:3c83:b0:4e2:bac8:75dc with SMTP id ada2fe7eead31-4e424107ac5mr16096196137.15.1748460097046;
        Wed, 28 May 2025 12:21:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERFOoB32HSD5K8ZYFJWnW5A8/+hLXTTrO7fhdopo43CCwU6vsapvR8yzcxq2z2wgo+mX8xeA==
X-Received: by 2002:a05:6102:3c83:b0:4e2:bac8:75dc with SMTP id ada2fe7eead31-4e424107ac5mr16096164137.15.1748460096733;
        Wed, 28 May 2025 12:21:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532f6a6276sm404321e87.207.2025.05.28.12.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 12:21:35 -0700 (PDT)
Date: Wed, 28 May 2025 22:21:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Jassi Brar <jassisinghbrar@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, Georgi Djakov <djakov@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 2/4] mailbox: qcom-apcs-ipc: Assign OF node to clock
 controller child device
Message-ID: <m6nprxug75aifcw6scqpnlx5664zk44neo7v6w6trxfmoe76b7@kt6v5vrdeadm>
References: <20250506-qcom-apcs-mailbox-cc-v1-0-b54dddb150a5@linaro.org>
 <20250506-qcom-apcs-mailbox-cc-v1-2-b54dddb150a5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250506-qcom-apcs-mailbox-cc-v1-2-b54dddb150a5@linaro.org>
X-Authority-Analysis: v=2.4 cv=WfoMa1hX c=1 sm=1 tr=0 ts=68376242 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=oeMlsxxNoTt8-AEUPKgA:9
 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 3HaGCpk2S2_hNyxJx0NGSfBOHpiPtC0o
X-Proofpoint-ORIG-GUID: 3HaGCpk2S2_hNyxJx0NGSfBOHpiPtC0o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDE2OSBTYWx0ZWRfX/lrXFZHC/L2z
 w3ATtEapGUNx9/+4OX2dycVW/yGz8ZLmLHUVqm4bJRCnrYIPW13bQP4hkXTcXEbQxzyP6rMM5yZ
 2YJOuqdldqpRmcsApS1yAOkQUV6i2Ctauy8gY6s8lijWr4/N+gszvO1ZdnuyG/Ov7Vr0VZYb7IG
 XM4FwGSrOz8K2XR3h3ap+YPtXg6xzRlQEJq+CSgVyA3+8kHwXu4dlLfGJWP+QI+24o5mxxTSaST
 /dDWrnB54jaZGT4BQ/DNYPdpuCOt0gxbVntxoD97U4qlPZTWc/jtBzD90739Php5MhDYuED7qO/
 jK5zpc3BzKPvL2ud3QgJLdYJ3meaMxFipzQjnOUwbVPC9BfEZCl0oQ6EQ0lUyi43VCOdAjdn80r
 830jR6iR4g4jme3XdmCB+GmPBEY3y30t+ej3RdglWLHc8BzI7cxZCofKWh//UMa56z7MMBDa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=973 priorityscore=1501 mlxscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280169

On Tue, May 06, 2025 at 03:10:09PM +0200, Stephan Gerhold wrote:
> Currently, the child device for the clock controller inside the APCS block
> is created without any OF node assigned, so the drivers need to rely on the
> parent device for obtaining any resources.
> 
> Add support for defining the clock controller inside a "clock-controller"
> subnode to break up circular dependencies between the mailbox and required
> parent clocks of the clock controller. For backwards compatibility, if the
> subnode is not defined, reuse the OF node from the parent device.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  drivers/mailbox/qcom-apcs-ipc-mailbox.c | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

