Return-Path: <devicetree+bounces-274161-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LLtLw+AsWmjCwAAu9opvQ
	(envelope-from <devicetree+bounces-274161-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:45:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 641F8265A27
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:45:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A188530234D2
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C822A3CF03D;
	Wed, 11 Mar 2026 14:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kw2J3vh7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q+6v2oSJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93CFD3B19A1
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773240332; cv=none; b=e1z3/QZRDhm/fkdb8qFLM1NyAS/8HKpUYlnYV0xz8LxALjasEsu+AIMZPyVKBjXtLKVi39/lKCJeCLoUvs7WsCJeGVo/hp1NjrQXboekn1HopzZDAVhw0ONM/cd93C7XSMaehkTb68y8Wnfmkz3kjQ/TMUOobCDjdtqSPk9m8Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773240332; c=relaxed/simple;
	bh=Pz3LSqnSgZPO+sikjWgv6OurkSgn5CfbQsARgMnvaBk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L4bkPvQg8GVOgwf7oqr7bJt86Ayi6styhhvfQuI4ES3TTjsY3FQ9DsVkUiH+8BHid3Nrq3uu9iz78Ec6uBfWQlmN+c0zTqlkLsx464FJjkX2ObYC3KSwEe57syAkAVNpS3qyoxLHjULnI5vRyXc1rgluA5aT+sYS2WfYT6Hh1V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kw2J3vh7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q+6v2oSJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BA341G2038137
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:45:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hO8HenrdBwBFfXwe3brj0XRv
	Cy9c54B12m4F6gx96VA=; b=kw2J3vh7ymtz/kDj+rEzGHXzcJGFkEUWUPf0ur5W
	maaox5TuiYEjdMEYhxPsDWVJjVIIGGq4qgtySqX096u/zI6YkLGAnsB/EpWbaLTS
	IRjPKY/8/AKFPLIvnifmhm8HELFgKZZOgSfKFtu6OKNNXcNRruuUkUSnirZePBBA
	ejbUsKOAtg/iYkz4iTLIwGSkOtE4S624djbaY0uwbMAc1EfuyVko69zrVUnb4VMo
	ZwoPKd6BqvGv/1wV1Ls9FrrAEYoR8yTR6jMW6TLTFNdoLnxKgXYPFS5LzwssU9zi
	sJ23EtaBBIgq7TFOGJkfMB1wOehe0KK2vs0cDDfDBb9grw==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu6a5h06j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:45:30 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9484dbd65a7so23075547241.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773240329; x=1773845129; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hO8HenrdBwBFfXwe3brj0XRvCy9c54B12m4F6gx96VA=;
        b=Q+6v2oSJIfT3fJM8A3YHsi5lPT/96LTJPj4L/trpvEWi9DR7hjIYo4GTzGkmS1s0ws
         2kL1h7hSPhVv9eTZrpOdzgycogPSv4MUsnPIsqHxT7+ZiJsQH8MAXeungtZs8ngvYm74
         3RCvxa2CiiOx39xdSqKv9R/Y52PsbVhqtVTEkJudOC5UsgXHpofgrrkF/RGuASz7OGO4
         ugY89voj8Rm7zA/wkJfAFZOabnem8pYFMBfrHxxlARZ4adnqArusEG3yXH4dz7y91O4B
         NP+d7LHCHK7JydKh6hFcIboOX8Ez6wbYx3A490IsmDrLWrPJogfR0aQuFL5zXZ4Quw1y
         MYoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773240329; x=1773845129;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hO8HenrdBwBFfXwe3brj0XRvCy9c54B12m4F6gx96VA=;
        b=UEVRLj3BwO10XteN7taEIymO6e/w446RElZyYvY34IDXG2iz6HWyYbktzDPuNM3W0F
         5qbTanvT4IHQmwdie54yu2g/djv3Msdmx6PR61qmynIEPGPyaRzbzg4+odBUaZkhuiyE
         F7+S+yveKJ/aS3FdFFn2sHsjlYi+QPewC+q+3fOCk5/IxMxtpgXXE70thOA35W4OLg0q
         xKSG6U+nTgrYeZRvmgZEZqO9fdY9jy+EXJu+uBqQPLlcQjdYgt+fWieFPlbQAjHhmAxR
         Hoh5l1zCagaCJjVD/elqFWDW7zgEVJo5tPNhr0lHm0ed4zu1+5Oqly7d+kZLh1zw4hic
         zYOA==
X-Forwarded-Encrypted: i=1; AJvYcCUATCUfg9g0NQvDBD2WcQ5wF22pk0AvLyw4uwT34cmIZuYjvKsrzATq0S4QrBxsnghMjiDOBCJM0q1w@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2zc3V/M5te3UWw+wufujiIJLkH2U0+P1+bDfFGohosUH/r3Pf
	hvjq8TK8NRoO+Pz/RqR4jiaX3K1xYkWowFzyhMbAp/JzrM/kvL+cJaiok0SEzTCVOkE6hPhwUZb
	h3ZNdqBjuHoRpMUzM/y5WxwC8W/CGNxc3w2A7fZyvfPlKpLBYCj9XG+Bam0oxac7X
X-Gm-Gg: ATEYQzwEoBDNaor19cqAacJDfV9aS2bmHh90dNvYtCJXP1XmhyJLgmR3omoIfJvA3nN
	u/d2LBLD85Nt4zNhJwVFVuYZ+BLuXyEl4Oi4GpToLMGQGX3QKnma1xjv9M6iwu41S2a5z5m5I7h
	h49R9ZPhA3KC9qN14HKlu3OgRtoslYp+8dhOnlZadeofk6uAvJ3rEsn6TxvXseJrOA5rXKmSWCp
	Qvd0zFUFOjYVLMmvvZY/G9DXrWjpc9kU5l+Xfsl2vYEAIlD6I3R68IamdG/BjY5iuv7/XaNMZFL
	qP74SDts9MVFhaBD1Gq6bOmDEVRKC8lK1oWHYifPJyQHS/zI10Emt5zJbr5Yf1/U2dVSfxC7Npa
	ePADBo0mxDhOs6ByKMBiiyVOxjx7blMkb6qrY94P9ewlYDgcXQGjqZggCUWhwlVyZzKE2whzklN
	mH1W9MRo5XAGSQ9nbWc/EudMR3cyJMEsMrnQA=
X-Received: by 2002:a05:6102:41a7:b0:5f8:e47d:165 with SMTP id ada2fe7eead31-601deb1bda7mr821289137.8.1773240328575;
        Wed, 11 Mar 2026 07:45:28 -0700 (PDT)
X-Received: by 2002:a05:6102:41a7:b0:5f8:e47d:165 with SMTP id ada2fe7eead31-601deb1bda7mr821281137.8.1773240328114;
        Wed, 11 Mar 2026 07:45:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e6788csm3872241fa.33.2026.03.11.07.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 07:45:26 -0700 (PDT)
Date: Wed, 11 Mar 2026 16:45:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linusw@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-mmc@vger.kernel.org
Subject: Re: [PATCH 4/9] pinctrl: qcom: Introduce IPQ5210 TLMM driver
Message-ID: <mb5x4jspf4fwinimjnfhlf45gee2bajqxcp2nglqqkfnulnmbl@4lvhh2llnxjj>
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
 <20260311-ipq5210_boot_to_shell-v1-4-fe857d68d698@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311-ipq5210_boot_to_shell-v1-4-fe857d68d698@oss.qualcomm.com>
X-Proofpoint-GUID: H6z_Ibr44XFBBCH9743mD3g-353feuEq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEyNCBTYWx0ZWRfX4/hPO8LdaY1F
 GUqp4iis3vnW8h5OoOmTcFSHuXUYNCdmfSYaMsStns363/n9KMGxXEjxwHj+7wtJf13yN82V2EP
 3Pinu3NHeeaTwNuTWPtvtw//1D7FnkuIGXtdQeswXaMLtfwcBosSxbYQOTeaw4fz05yj5y+tBqN
 +mUxURZsrsw+KqMHud8xDG87Tjig+UoAMIZ5Q1DN/1ftjF77vt84omWHSHYm3W96AKQ8l/gNxvc
 epYKoPCVlsakeVfkR9wmL2IKSibRXs9N8KqOP0dU+nZumAerg6YuJAcFUALCBNkGDccXkrC/jm8
 jhVLKFdyYR3B8+jslAjkpi1M/vS2RiDWAw9pS2B0A7ZJwD9/3S7EF7x3ItOm++dsjSfOI2UxYfs
 UrU3XrdLLTMMwPUK7OVpRB2pgUZ9ggQwjL2wrdLC89X3JW6yDp7zOTRilPMImo3C0nYl2NhXfs6
 rHvsKAAcgMLsd45SsVA==
X-Proofpoint-ORIG-GUID: H6z_Ibr44XFBBCH9743mD3g-353feuEq
X-Authority-Analysis: v=2.4 cv=TtLrRTXh c=1 sm=1 tr=0 ts=69b1800a cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=yEwgHnYd1rMVcNmT1VcA:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110124
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-274161-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 641F8265A27
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 03:15:46PM +0530, Kathiravan Thirumoorthy wrote:
> Qualcomm's IPQ5210 SoC comes with a TLMM block, like all other platforms,
> so add a driver for it.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  drivers/pinctrl/qcom/Kconfig.msm       |    8 +
>  drivers/pinctrl/qcom/Makefile          |    1 +
>  drivers/pinctrl/qcom/pinctrl-ipq5210.c | 1156 ++++++++++++++++++++++++++++++++
>  3 files changed, 1165 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

