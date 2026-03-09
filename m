Return-Path: <devicetree+bounces-273133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFFcIPg5r2kPQQIAu9opvQ
	(envelope-from <devicetree+bounces-273133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:22:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D19241929
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:21:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4E0730B0130
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 21:16:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D2DB33BBD2;
	Mon,  9 Mar 2026 21:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eYrTi12b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YOQKmHPy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CC533D4E4
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 21:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773091016; cv=none; b=gr01q9Z6KmQ8JvNHKt92ktzn5xjTXBaeEmc0CbMRnc2iL90GPDgh5GQQcgfERWmlZCOVTm9BOy+bhre85863uM9ZtfZIcLI1bLHLZCGkBaIxZjy0gpzKT131yje8l8L+YXuZqbfs5fic3GyVCK4+11YIRPO4tliyz9BnpB4gRJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773091016; c=relaxed/simple;
	bh=9Vi9h/QCYvk5FMh7uKEmgwQ6HQwUbzQlnoVmcbt27Uo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jbGM906eYVdjpTgsQrflc7wKdLBr0uINIMAqH3ruCTMNjV2nXY4zoJoj+kB9tgz91XjBhqrXliSF/eLPl1bopB/F14PNYPUSYh68AgRmg5Jj8QBhXZDfW0psQbL7ECLdygnLG5CuYNi1Kfixs1zV6dHphuJ9GCWvdpO2Yr0dGXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eYrTi12b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YOQKmHPy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HCFcw1212200
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 21:16:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KLgWRaioXqeIrwHgYBcxPqE/
	kg4Fe+2f2o7A+PfgTZw=; b=eYrTi12bsFRg+Ep63Gvyrpkz6qz+XZZnxJnhHzZ8
	Afqkljn6AGFqwUNG6Hi9uCb6ZzQda58iRJHt3K5YZu6fE5lb/rlDs3LPJDnuIy9X
	R2Y9ER606cwX+ZHgCY8VFLE+xAxUWo2O4Thd+KKh+iYlFQhrYQ0g6GO+JQptJ4KE
	6f0gsKaivSPOXL1lrK/xqQc3elp326ygArdomugL7e78pyCIveo8V0I+Gp/yH752
	qn3L1fJOi+1y8gGG02UGdrOgFKCLS1JmoihvFsIZX4/Br1ShuSsjy4BmL2Iv75+1
	0Iz/BPpRhzYykPy9UUlKCrzFisiTC2PnI1DfQMHXc4YBKg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cswwkhr32-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:16:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7d66afceso1235273885a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 14:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773091012; x=1773695812; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KLgWRaioXqeIrwHgYBcxPqE/kg4Fe+2f2o7A+PfgTZw=;
        b=YOQKmHPyNCEu7UMSTQMMsSM4NSdPdeebQCgvuwAdFDDwGJaOtqHee232pMsGUwaxG1
         W9EdcBAx8+znKW1brCb7JnLsAS9Fy2ibNNALZ8H31HqhKlT8yuzkAZRm/TDf2ApZMRmu
         M12RBRvtxftfMAH9pqQpfwn3pPI5NC2ZGbkni49AlY/4O2lu8NiTb1jcm6mWjYCVHzws
         4srZyWij4cUO03vwvMKUcaGe+z1q8rWeHzUeZx4MRwtkiCcDqLZHzah+IY79W6Vq6vNL
         8JP8/CqDX7hooMuR9HLy5seeZJsiECoCV+2c9tn/jBhtnIl+2nn404YHTSHHD1/zIa8H
         nG2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773091012; x=1773695812;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KLgWRaioXqeIrwHgYBcxPqE/kg4Fe+2f2o7A+PfgTZw=;
        b=tezf/PyVWvzUiaUPz+5MLJi9sCvg3nVZ0qVPpHelhyYoSKkUGKgNf7mX3Xa1B+tk1X
         ScEWdjjk+5H4q+EL+eaE/60B1alaH3y/yf7g2RkbKUv/w71yQvCBdafyNQ2d2bWx27jk
         36yTNM4o40lOzzFTVGGuNEl73qP435yV87BuUwMw9J1pN1DY87fZpuHyZ7zeJlbUNk0J
         uGp9eQKS8QGtblOAvzJvn+Bc3B7LVD4+LWWApgDal60PbQp2Tp6lR6DqgYL6I2+zOkL2
         Hf8KYnpg8JfAK6PDJSTz4z1mrFu8MyJ1mSXDA/KEjtB/qK22Lxe3YqPOB+qk3KfF1x1J
         JnIw==
X-Forwarded-Encrypted: i=1; AJvYcCUH3vv7Gie0k0KghQw3U2/OWpVCDhsEs2TephttK0qSUSlwqfVw01v/ZKXXARI6sDcSL0yKG65UwlU4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv5P1FdwVbf+b3Vz78IPh9Ec+PiTrEBreWRRIdIPEWktmYJNlh
	djKfsIK8Ta3K6duO7/Qyt9R22JYcT0CKuQz6BKktG/0NRjvKl8+lhpGxaubRTdez1QUtlMG73FW
	S3jRIXiButk7aTYWXek6BIAJUiNmCGOdcjy+vaCNF9Y9m2mBVu0AcNW4Mg1q0K9ZP
X-Gm-Gg: ATEYQzwxsJYe+ficJoZybPKGfqg+9DkeQ0I44EaWE5etSU1SVWjBUaC2v1F+gixJ10P
	YI4w4bglLnRe00HB8tIqXLQSxvxQ8KZR1EMrxTUHZ7ivpL7HjGUSAe8YS06fy23T3Wcmom28Rg5
	6Su2lWncjsGYUK2w9vquC/Y/Hcryh7nndnphj940m+hMmcf3cWl8cH9wNMGX1ffyLa5X8aRXxk4
	wGOH/xZhXqfYoA2B7v9ZYz5/F28nUuGgmyEptK+H0kwnoRBuZRtu7hd8pJLdA+J6+Hv1jNhlSpA
	+CRYQgb/JeZDSwmQQmiTvtD8J+hRjgkhn6r74Jqu+5lZZVfzlq24lhPE9I8Jnno1CTFR2zxXVpm
	1uHMIUVC8kqj2IS7ANeI+u3h6QbR7Q25zO1Ard5Q3B4eobEx0J30x0kyeJvocI/8s6QiRC4SgAo
	cIExlhmNQGqwBtKE8y5sVBN7yh4sKoxCEWoM0=
X-Received: by 2002:a05:620a:2946:b0:8cb:3d7a:c009 with SMTP id af79cd13be357-8cd6d4b5029mr1566976785a.78.1773091012391;
        Mon, 09 Mar 2026 14:16:52 -0700 (PDT)
X-Received: by 2002:a05:620a:2946:b0:8cb:3d7a:c009 with SMTP id af79cd13be357-8cd6d4b5029mr1566971885a.78.1773091011890;
        Mon, 09 Mar 2026 14:16:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d01cbfasm2323612e87.14.2026.03.09.14.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 14:16:50 -0700 (PDT)
Date: Mon, 9 Mar 2026 23:16:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Cc: Nipun Gupta <nipun.gupta@amd.com>, Nikhil Agarwal <nikhil.agarwal@amd.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Thomas Gleixner <tglx@kernel.org>,
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
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Prakash Gupta <prakash.gupta@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, imx@lists.linux.dev,
        xen-devel@lists.xenproject.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v10 1/3] of: Add convenience wrappers for of_map_id()
Message-ID: <3plcdobbd6teiluzijzk33yepbpsur24tnmjr32sco7a4loptm@xmzmsaurvmvj>
References: <20260309-parse_iommu_cells-v10-0-c62fcaa5a1d8@oss.qualcomm.com>
 <20260309-parse_iommu_cells-v10-1-c62fcaa5a1d8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309-parse_iommu_cells-v10-1-c62fcaa5a1d8@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cZ/fb3DM c=1 sm=1 tr=0 ts=69af38c5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=7CQSdrXTAAAA:8
 a=VwQbUJbxAAAA:8 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=5ndfpk7zZlG9lj9R3R4A:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=a-qgeE7W1pNrGK8U0ZQC:22
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: ObcsafJLCgIVNwfVSjk-IZcsjP-n9HLM
X-Proofpoint-GUID: ObcsafJLCgIVNwfVSjk-IZcsjP-n9HLM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4OCBTYWx0ZWRfXyJ5HguvW4KKB
 mgWuc+gxV5DLTkAoMw3mU+cJO6J99vXNx+lkeT6cMz2VQvfz2AvRQDoE7WNE08KRu0bcZWp4tpe
 pUqet9OMMBYZQvn7kDtuw098jTKXG21DDIN6nEaD69xVfbz2lxdOYDy6y8hLlefU9qFSioZ6noQ
 0O/ac6jo/02SxTMwRx1tckTWvtLElbcXv4wJbgbozyHYYQo2zNCM/JK3xc2r5uDHk67XyuBBExF
 uZiTj8amM5hzj2oR7CsecNLqyN2w0AsL/0mh2MmmR9TPkKVH3UTNcIGdNBZw847JoXNCl+rfJ5S
 EDqFbE6jgNb+/H16XSo4D0iP+6sYvygs3maBsWcD+Ky2tSOKUlLy1csIwpCEFMEYx7q0ESPgL3j
 hPUuc5AQl7yCTO25zRd2WWRVL8OyLEuMiHW8Q81VHQbP1NWHfWszfSG0BEV3dZffybXfIxb+hNw
 NFztJbl5tk0djdrnZlQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_06,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090188
X-Rspamd-Queue-Id: D7D19241929
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273133-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,8bytes.org,kernel.org,arm.com,nxp.com,pengutronix.de,google.com,gmail.com,suse.com,epam.com,oss.qualcomm.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.xenproject.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,oss.qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,arm.com:email];
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
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 01:03:37AM +0530, Vijayanand Jitta wrote:
> From: Robin Murphy <robin.murphy@arm.com>
> 
> Since we now have quite a few users parsing "iommu-map" and "msi-map"
> properties, give them some wrappers to conveniently encapsulate the
> appropriate sets of property names. This will also make it easier to
> then change of_map_id() to correctly account for specifier cells.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
> ---
>  drivers/cdx/cdx_msi.c                    |  3 +--
>  drivers/iommu/of_iommu.c                 |  4 +---
>  drivers/irqchip/irq-gic-its-msi-parent.c |  2 +-
>  drivers/of/base.c                        | 36 ++++++++++++++++++++++++++++++++
>  drivers/of/irq.c                         |  3 +--
>  drivers/pci/controller/dwc/pci-imx6.c    |  6 ++----
>  drivers/pci/controller/pcie-apple.c      |  3 +--
>  drivers/xen/grant-dma-ops.c              |  3 +--
>  include/linux/of.h                       | 18 ++++++++++++++++
>  9 files changed, 62 insertions(+), 16 deletions(-)
> 
> +
> +/**
> + * of_map_msi_id - Translate an ID using "msi-map" bindings.

Which ID are we talking about wrt. MSI interrupts?

> + * @np: root complex device node.
> + * @id: device ID to map.
> + * @target: optional pointer to a target device node.
> + * @id_out: optional pointer to receive the translated ID.
> + *
> + * Convenience wrapper around of_map_id() using "msi-map" and "msi-map-mask".
> + *
> + * Return: 0 on success or a standard error code on failure.
> + */
> +int of_map_msi_id(const struct device_node *np, u32 id,
> +		  struct device_node **target, u32 *id_out)
> +{
> +	return of_map_id(np, id, "msi-map", "msi-map-mask", target, id_out);
> +}
> +EXPORT_SYMBOL_GPL(of_map_msi_id);

-- 
With best wishes
Dmitry

