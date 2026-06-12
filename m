Return-Path: <devicetree+bounces-310690-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yR02F/ShK2prAwQAu9opvQ
	(envelope-from <devicetree+bounces-310690-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 08:06:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E5B676DC7
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 08:06:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=i7ltrF5a;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=QHba5NFK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310690-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310690-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9ACEF3053FDE
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 06:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E923C4577;
	Fri, 12 Jun 2026 06:06:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF6B3B9DB6
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 06:06:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781244400; cv=none; b=LWuJioaBtwSz6lX76g6R451o7CX4JMeo0BDnIR+JXXPkFdrtXiRraYt9zTM/x+KCf7QqjdH0ba1hPpElYIGwIvxvkni8l0gQliR5/sjJdHN3mTfysclMoSZF0ZSVW3cDvu6TPqpc9j2Il6dQLI83MfwSEELjpxVp3H+PBUHSIGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781244400; c=relaxed/simple;
	bh=652p8nCF4Fqq5uW2hcUJZKspa2ScTlPVJUiJWXkkqGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ia0oVPYVZTpKwu/BGy+jqQQio8/+iFRnHKypSY/+eTAUDfc6GIejTlcI0z+zItj0KPrLQHsbYGMBOm/utFvSLheZwbIH/ak0zCoRPLlKuIVny3/6aoFk/uaexprmSumD4rpZVR5+Ww4oIDRzHuUc8g3YTy36Qrji9PsW6GKpAYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i7ltrF5a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QHba5NFK; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C3BrbB2506216
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 06:06:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=22MR1tfVVoBCAuE+JGL1y0Rb
	6NIGN0fHw9GOcjIvqzY=; b=i7ltrF5aMWhNL8/n1mHfKAT6ycnju4cOiIx1M8tb
	O3ivCVco3WkWKpXx3cCy7SGNw0S4tiMv9ShUph5osMVWChuutumRAhdB5Wbu3qDQ
	JqnEclw00rw18g5VGPBoXT/BhIax9UDdizn0CghhsDbsJjAFAFLkle8ozIUyxby+
	5LPht84s3io6S6eCvpEbMbxLpXnCGSe3CIBVzi239FO2VU8kNLnYRUIrN2IOR7wR
	4XqJff8OH6hfoqUqtkgvvGD/iMaWbCdaoT7nqU4oiU90P9SjScWBt9fnDOSU3pfX
	KhlUzO3FmT1YjONZWVitaErCz3qn4afNbs7Wnzewx3wyRg==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er1cbja2r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 06:06:31 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-963a96abbb3so675397241.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 23:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781244390; x=1781849190; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=22MR1tfVVoBCAuE+JGL1y0Rb6NIGN0fHw9GOcjIvqzY=;
        b=QHba5NFK/C+pO/C85teCPm/jCDD8041TmREGTcdrzu0MVGV8ryDHfTjY+aRpH12ReK
         yMVJptb5dX48JVpIJ9DKDACp6oop1msRlNhWn1vg8bl6Fnm1QJ1E9EJJkKP4zUyRwDD8
         0PWmrwJI9QXoE/TY28/ilkpkTB4+SVFoyhMZ3UF1SJyFw6HL63Y4Z13amnGANHBCynYJ
         FwZ50LDe5L8iXlm+hErlGEzjfn3hWV0KQ5M2tOBDnIcRpDiC2D0cWUm+/0KVOPnJNKXJ
         CAHGlS3QneXojcpRaEopG7ok/eyR+M+QqVR19IAWfixx/ZfzIyfNmnBrlW7BvS60nic2
         jj1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781244390; x=1781849190;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=22MR1tfVVoBCAuE+JGL1y0Rb6NIGN0fHw9GOcjIvqzY=;
        b=nLj8/btGUKKpjZu/8NyJG66VmT252/4f5wOloFZU8YOuUCRNawlg5lQ+yWfMe0ceRc
         pGvqR3WpoEyzwNP0GmxUUcrBlQLBZRxSSqN4fg2go5GAkONik4rwTz4OQyEqSk4YT9Sz
         M43W0+Mshr0f2VjYTIPCDixU84PMrJVGFu2emELFM1P4oXl4d03SVcLi+uFtmctDYc1S
         gNBu94aGQ7wzEE+xs8qIxcuqvDEoMck5ZS7YmZvvqEREZ4zmtbtOoa0E8K2aOtO+EXXj
         D4oHwsaEbJTqFmqnjfMICTyli/tT06b2V7LyMGS8/aCmdzynyBE/ih1dKgPK2+av6zEw
         g++w==
X-Forwarded-Encrypted: i=1; AFNElJ8h3vhN7YiGiNgemzrwl1BzMalp0Fy/EUqhfA4Gxulg4LJvA1RkDLuwRCXAqeuvdJ+nZj5zMb1eIv7t@vger.kernel.org
X-Gm-Message-State: AOJu0YyjAbRLpQ70CsD+zyc1otl1to7Nt40IhbMWJEWQQll/LxBL9SvN
	WdBhIR1AGOWWQFh2CgRkp7tQa+/6f61NcLO+9jvEHFMZ1W/hXlNBFZBJkJcCU+vOca4ch23e4Gt
	rVIiJhlDKWyua92AXau4pMMLY9PL/M9OhlBtHMz178ds4JPQZo4n3sRjd0SDn24+J9+7Ry7zx
X-Gm-Gg: Acq92OHR5DXWiuj8nXX1mSyKJS9jMnLw79UdBSomSeqobHj/2rZhjIjt4QJfcPOcLZt
	vDFZ33M9sLtGFiEv0CNeYCDG2CdXKqydbro5CpLTgWyvSp0m55T2kRM4UnyR5BCVfGtFXvvc1q6
	FG0oGK342QKBE4mC7pl2UIJRD0tZ1PFvUl/PLvshM+w7KDRLPouQ0yX9ZC3o8fSS/Q5lO+/9Mvn
	/iDGHZyHHhbVtO+tIB+3n0nryt21Tr9VgZWxj73CzrtjKH1Gd4vqY0uD9X0Lf6Kiz5/Wewq+ae4
	6vhGbnqzlHPH20UZeRTJp4f4bOQYAihlanEb3Z4LD5nO3nfjQkqzuzuDwPSF5KquBXGhfEIwmbo
	elqLhm63unSDckW6O/MUfSAfH2/P94S2+T+zlXiqMc0ClCPZCv7gTMZEqONgFFmCV4aYjonwkWh
	rd+lf2KPtH1rI1kINtI8/WaSwl9ZAe1MqRQ5I=
X-Received: by 2002:a05:6102:26c5:b0:631:2624:e5ec with SMTP id ada2fe7eead31-71e88c3bebamr623752137.16.1781244390352;
        Thu, 11 Jun 2026 23:06:30 -0700 (PDT)
X-Received: by 2002:a05:6102:26c5:b0:631:2624:e5ec with SMTP id ada2fe7eead31-71e88c3bebamr623734137.16.1781244389778;
        Thu, 11 Jun 2026 23:06:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39929f547c3sm3685941fa.30.2026.06.11.23.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 23:06:28 -0700 (PDT)
Date: Fri, 12 Jun 2026 09:06:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Sachin <ssachin@qti.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add SD Card support for Glymur SoC
Message-ID: <lv637wwosaruexyxiyafx5horratkrnywj7knjv3tlmmfgpmnk@a3hit2ll3p47>
References: <20260610111508.3941207-1-mchunara@oss.qualcomm.com>
 <20260610111508.3941207-4-mchunara@oss.qualcomm.com>
 <6a1fdadb-6a52-427c-b65d-70dbe80ccacc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6a1fdadb-6a52-427c-b65d-70dbe80ccacc@oss.qualcomm.com>
X-Proofpoint-GUID: tfecoTedde9rCiL9tk7VpUertunIsKke
X-Proofpoint-ORIG-GUID: tfecoTedde9rCiL9tk7VpUertunIsKke
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA1MyBTYWx0ZWRfX1I+xJUF8soIf
 3jbgLNIqiRKCiqDL/8UyCK1Kr2pbpsAc8QRvo0S4UCWkb1S/ilhIMTbhGo5Vh67U20CaC2m+aay
 9JMj5Som7P+KUoJ2iVbk+RlmzCjVNEg=
X-Authority-Analysis: v=2.4 cv=S57pBosP c=1 sm=1 tr=0 ts=6a2ba1e7 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=8MZ3zgF7xDDCLyIjzZkA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA1MyBTYWx0ZWRfX5HPe60ocFaW7
 ntzbFMfZiPEksaEvJnDrnG6tVcTOt+xSBCzMkmW6f7C/9p4wVhMLkFPZAXDPqUOS1uoNsxrIAcP
 FJSpufharWwxLXUwhCQsGao1PcwhFdrLULsLnmRnfq7Wm3LGaFYh8+14IiFMfWco/e+s3tK+bgl
 bYo22Rv7s2/3oq1Xs5hHNjaNu2OtGxEu8fI0FfnHfiodQjVoYPGJ7c+4/uXIMW23V6EJOvzeTEW
 YtunJ9DKklspC5ya6FqgPWbz/Br2AsjOvxZIa6B3EiWLCT4TyyyFe/kvIr182VY2qA+jCaqykfR
 pRoYyUqv8LvwKShpNoAe+T4DrB2hJyn8+2trPAQm7fzK+vjCcPeM050meIoSQMgjH18mH8zbzqf
 zbPDmWaDOl8e0JBIeSjEkbJ7DeCx20/diRMcJ6DyIBBRAZCIZ5VthKdTeKijzA+cholBIO+MSdM
 fWD01qqzoVdRAsqw1LA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 adultscore=0 phishscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606120053
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310690-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:monish.chunara@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nitin.rawat@oss.qualcomm.com,m:pradeep.pragallapati@oss.qualcomm.com,m:komal.bajaj@oss.qualcomm.com,m:ssachin@qti.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5E5B676DC7

On Thu, Jun 11, 2026 at 11:04:29AM +0200, Konrad Dybcio wrote:
> On 6/10/26 1:15 PM, Monish Chunara wrote:
> > From: Monish Chunara <monish.chunara@oss.qualcomm.com>
> > 
> > Add support for SD card on Glymur SoC and enable the required pinctrl
> > configurations.
> > 
> > Co-developed-by: Sachin <ssachin@qti.qualcomm.com>
> > Signed-off-by: Sachin <ssachin@qti.qualcomm.com>
> 
> Firstname Lastname?

It seems to be the full name.


-- 
With best wishes
Dmitry

