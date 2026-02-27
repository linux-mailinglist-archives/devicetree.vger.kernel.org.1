Return-Path: <devicetree+bounces-269024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDj0JPPioGmhnwQAu9opvQ
	(envelope-from <devicetree+bounces-269024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:18:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFCD1B1310
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:18:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6557303663C
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 00:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0F7B1D86DC;
	Fri, 27 Feb 2026 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LlQvUdZw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PGK/P1SE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E754B155326
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772151533; cv=none; b=oa/+y/baM8+sO+oahghXIY7UsXIZX3BtyJV/bzLkFcbiIwt29j7JR3MHyj/MmK14ndltWJBoTHbGo63U0USEnh9f6LXw4sLQ/q8ePL4y1LUIqZaXOMe2hB7VSV1YA1w/OGGqEpCTnX7iNQuSMhGaY13GWa2vwIYoPUrn9yNYcGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772151533; c=relaxed/simple;
	bh=zbtLTNO8QLVg9ziVAeF/ZC9cr53fh7mOxvXr8lJHM/Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VbAnqpfRF5a0CSr3g77BgSPGChbxAEOPkp6mxU5mRxgEaiYuzwrInRbdR92rmvOADZYBtw+MDNQF0beGOqQgHpHN/ZGqLtRV18eXkZC++try0dsP64K2phj4ZUhm8FYMw5ybWtcADK0GB8Am9RUakHQGU0JH4IuaT/xkMXe8mcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LlQvUdZw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PGK/P1SE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QMasMd1948226
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:18:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2tiGvRJUN/Y7BgLPmSiwnWot
	eWgyCSZSKopCMxr4RaA=; b=LlQvUdZw3exynQnfZxQKivRZda7bRf49Vr7hrunS
	LViP0Na/FIiZGWB+qlUHqtXu4bUwRC5jO8eGrB5wX/DHBQwAueJp5VIL4VKoionx
	zGH+EHwj+E/odp5+OxS1w4X8XAnhcrsBbIXmUV4cdpMHxOS5DubaLHvCtL2HM+A2
	tqElxXcQXDajV8IullHdKWblqvQqESp5T4j5vHNx759G/m+74inMe9DLr/X218+D
	E1GXj4vh4NWRvlJeNdknqBdaw8PR0vaRpnTQDzDRDQuj4uZ9Eh5fzXiOAb8COomS
	9clzY5iKKuAkqvcK/0Xy3HOTrmSbFqGECq6vUxAEm57Erw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjc0gcdkc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:18:51 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50335bd75bdso142996071cf.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772151530; x=1772756330; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2tiGvRJUN/Y7BgLPmSiwnWoteWgyCSZSKopCMxr4RaA=;
        b=PGK/P1SE93mKp29cL6vo8E9Rm7iHLwG4RbzwPazhItvzAKYN43sZpQrXmRjAX8Bknx
         K/aCYMvRX2oCNZ8owzQ4w8g6LDlrYZoibOKNWlVdVQvOlblN68f9Lz8FWaqrvLZqXp37
         aDGycy6EwCPn1J0uWOb6OnoMzPG6rKcelB/JCgEjfwG2dyO+lb+TZ34mKWeQIVj8D+Yr
         kypi93a0KqSMG2kGR3hsf1OqGowOe3jXMeVOZcXSWyb41szJnQHPNqs/4fdCtjtxjsUX
         H0lzBkRnzSQdR1j0qHTb2VHMLDC2Tyws37COXhqyf4TmiNEEU7W/V8pIPtzGSCsM7uGS
         MswQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772151530; x=1772756330;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2tiGvRJUN/Y7BgLPmSiwnWoteWgyCSZSKopCMxr4RaA=;
        b=eWXTHTlkscGcKLq/+R0ZvKDNesXs3VBX49SUNO5lQ+lTjOaNXbt+D0zVVhiJAtMSVp
         F6vQyTpl2pEX+TAWrLy6Nc2s6E672AgohPPIYbzjRinu80GYPuMl7T4VyvcNrM0cwgTl
         QyyX05Z3GuLwbIfYTGvktzuDW5Tynt4xCSdbIFp43RIpfE1WZ4qxe8OZ8eV3VYkmt+re
         ePS0rJ1Tl6+9AcyBBz93ngx0BjyMGNYjBQbZ3LwnAgHiLN/+XohnTCVSjp96muGyxtjc
         qp/7q0RdRsOR+2QVpyQR2CIDZoBJ2ES+HfeOLzizNdCJrzgb5DYRxDYRi4pyAEC1qxkb
         +hew==
X-Forwarded-Encrypted: i=1; AJvYcCV9WC7VYQqmd7gOh+CHgw1sednS0t7ILjl6Qz3M+guM7B6Bh1W7yCrEpC68fImqpclr08LZE2lhhsZj@vger.kernel.org
X-Gm-Message-State: AOJu0YwLXOGzJhHxOnRbfDrdVjMOeBUvksTIa2gbos3iPrgvsu3ziREO
	iaZCFfbGelJunvQIiBbGSHYDI25zTkI6OaUkY/d8eykz1iZ8luyyKzzC9BRnI/APv2kyM8dsxkv
	klG3ZdLTybLDsUKf4SpQHbUwrmAvURZ71jcgkbnNcLnyMgp4O79CA54DITAHbR6MY
X-Gm-Gg: ATEYQzyca/RTEsQtC5EhQHme1lJGnhpqTHEalflGyrtJPH75Cng0zkW7JhS9uKR6jxQ
	edr/lAnyj9trs8j2rloYpuCo53qrXno5A0wIMFTuzQINQqUm2x56SRquR9o3s9v0/WdLzs99r1w
	R0MvICCSeVU2taZC6AkfhCkJWix1afVFp+Kn8avKfUUqW2ib0pJEYdZq7Z0eFsSQiFJaYhRrnkh
	pVthgPBVIRpbFtrCxcBp8n8wI0N8N8hs6Z7eVZI9ScA6KoniopmVoAGa+LwI0Goim2/0Xojdiq5
	r3ST7t+eJ0y9oCvDk2aCEtw2t1cQPh9j3xafvyRcRW58ETEG44+pYwB+iIV7mYDLMcWvFwlwlMO
	wwU9+i8D5BS+5T1WfXThEvizzAmwX7xq1zc3UUn0YwhFChFeIb/APQOiba2Z2CBDB551cDh0YaM
	P+uIQ2Mfa7fAlBBPJAEr0eBnmqklWfSLvfSNA=
X-Received: by 2002:a05:620a:2906:b0:8ca:3c67:891f with SMTP id af79cd13be357-8cbc8df1c13mr111545285a.46.1772151530149;
        Thu, 26 Feb 2026 16:18:50 -0800 (PST)
X-Received: by 2002:a05:620a:2906:b0:8ca:3c67:891f with SMTP id af79cd13be357-8cbc8df1c13mr111542785a.46.1772151529717;
        Thu, 26 Feb 2026 16:18:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f302292bsm11801581fa.45.2026.02.26.16.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 16:18:47 -0800 (PST)
Date: Fri, 27 Feb 2026 02:18:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 03/11] arm64: dts: qcom: x1e80100: Add MIPI CSI PHY nodes
Message-ID: <yc2tnjqoly5b2qdk6x55wzilie56znj7eaelppc7exnj6p6jjx@vdhaiffdtby3>
References: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
 <20260226-x1e-camss-csi2-phy-dtsi-v1-3-f3f7ddfbf849@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260226-x1e-camss-csi2-phy-dtsi-v1-3-f3f7ddfbf849@linaro.org>
X-Authority-Analysis: v=2.4 cv=XI49iAhE c=1 sm=1 tr=0 ts=69a0e2eb cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=KKAkSRfTAAAA:8
 a=blmFuLOPK1K5oVBG89UA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDAwMCBTYWx0ZWRfXxzsAT64vpszX
 iyUOFygIPm3cSJG9P0rCpvjBp8ewEpKZOqyi8/9WSpgme4o5oTFvvScDMTQPA9gjhc8YVmt3fdZ
 tajjKi6Adb+Najz8NyutQE6EJHyClZmcNycrzCq2ovPg9a27drk7/MAfzhoEQWcC20AccViL2Tr
 KiE06Maq7MFlRlQjaF9aH5HvhdJiBUK8BNiKCuVyQRzrCu7RL3mCTkLugQHl9nkrpngJwLc9BSr
 DQQm3qJhgi6ICW1LxwVMcIRgXsrujLgr+J7Cw5E4br5QzK2r39cDWo+Ysc+BZZEVv4iaq+QSUDS
 UmESZs6i4Z0o9M0Qzv8/X0zGA/ZCrwpszMeP0DlLxzTeiGdfGPlLyfyfIMvLe7O1/13ZhiBkoRq
 din7pELQ+Ce6yAXziffsKTIa9pV81OEyF1XODaUy+i9XNlDhPqZXF98KFbPBjPfNyiL1Q/rGtYP
 ajsjouJxO4H3WZlsQug==
X-Proofpoint-ORIG-GUID: KdSxgXgCMHErvnTP6YDwnEOvy7_rulHc
X-Proofpoint-GUID: KdSxgXgCMHErvnTP6YDwnEOvy7_rulHc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_03,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 spamscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270000
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269024-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EDFCD1B1310
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 02:51:08PM +0000, Bryan O'Donoghue wrote:
> Add csiphy nodes for
> 
> - csiphy0
> - csiphy1
> - csiphy2
> - csiphy4
> 
> The irregular naming of the PHYs comes directly from the hardware which for
> whatever reason skipped csiphy3.
> 
> Separating the nodes from CAMSS as we have done with the sensor I2C bus aka
> the CCI interface is justified since the CSIPHYs have their own pinouts and
> voltage rails.

Subdevices can have their own voltage rails and pins. However:
- What manages the NoC access to the CSI PHY?
- Do we need to manage the NoC clock rate somehow?
- Are clocks and power domains for CSI PHYs gated separtely, or are they
  gated at the CAMSS level?
- Are the AHB / AXI buses separate or are they shared with the CAMSS?

In other words, is CCI a good example to follow or is it rather not?

> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 115 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 115 insertions(+)
> 

-- 
With best wishes
Dmitry

