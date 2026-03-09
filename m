Return-Path: <devicetree+bounces-273143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJe0Mrc9r2mDSgIAu9opvQ
	(envelope-from <devicetree+bounces-273143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:37:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B738241CD5
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:37:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADE3230E15E3
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 21:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B0936BCD2;
	Mon,  9 Mar 2026 21:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xx4VO8xd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g91xbJGa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83ABC33D4F3
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 21:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773092043; cv=none; b=G6YR9vMWs+ZI6wg5aQEwNZkDxld4p4UaeCC6jG0RDcHJOwPYc77UnwxrUEB2y94n59wb5Vuq0T2r9hF0UYCsHjD1nCcTwFjYpxA6shN3mi1Q0ZuFL0/8WaqVztnc2Puy69uYmomluVaCp7oghD9rYbsb2f4W7Kt3LgS9Cxi1drQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773092043; c=relaxed/simple;
	bh=reqmekH/iSpybK0ABbh7C8SmgHE6GCp94aYa0M/nO4w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lEh3l1v3IrdQ8sZIL5hlBvXbm8orowYB7zBTegn7ZKyS7t3joo3959mMS5NhKGrzfJ9u5MVf4UYI9o6Mw6sBTuTPPGHoOwMbw5WG3OLBMB9zIG9YhiqgwHkxmf1TvipzgYZuAKaEdFJh/UB47Yq4ckeVfkKBBDv8KC0WUKfsBqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xx4VO8xd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g91xbJGa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HCa6n1662024
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 21:34:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hULBJxvAuvZHR9djX0lRgqPU
	HI91tBQCIAsTIDg4GJ4=; b=Xx4VO8xdWLlyzhkob4c+ef5wup1XxO+WulPfqk2L
	+2L21TNGuRR6IEjPYTz1+dFaP7M4mcLup4hi9emhs/ANMX+a2hfvDGrNv6twOsXS
	/1n2kuQf2uqLbIi+4NuwG7XnHZFgyAhF1EZJpS5RTepaegWxbs62J9NQkJ6cuXoy
	x7UvMtapw5qHkFtW66Qf9dotoAfbbD479Nl0jGVnJQ1XYysUL8qNw+SDXc856w9x
	8BedvvxYf0CuSkHVtB0U3BtLD1/1D/jj0fxR23KF3eEnYQa3cgX0TSyQC5HsLWX/
	z0AqjZtwMqG1umYQHeNQwFTRvxzAYhw7+iJQSp1NuMqbVg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyr41cft-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:34:01 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd81ce6fdcso1791326985a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 14:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773092041; x=1773696841; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hULBJxvAuvZHR9djX0lRgqPUHI91tBQCIAsTIDg4GJ4=;
        b=g91xbJGaTty3RkELkEjOOG3vLKjPGvpMpvVgVBYakgsCkZDUEOb5ywODsaE2m/en4j
         oH+HZ/ma4f6HsUpyXLNxoedb9p0+RQevK4172NUjIBWqEHwGF6ZVM1NPNk05wJBUhiMD
         wNbgVZ9pwGxbytYOWujdwfwtGPmbV+Zp2ExEjaHdqhSB9fZveGkQZmq0qb1JS6efU8ss
         BF1tnCEuqkAfIJAXCZKHGRjzHXnMIUk2KX1HshLW1Xh82SokDzesjqekS+hTqmMvsirs
         WiZD1//vUVdw+4iSKRkWrQqY9whz+wHJm2+BAmKXkXel8mfQiigYwnOX6YXTDXi9NcIJ
         RW+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773092041; x=1773696841;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hULBJxvAuvZHR9djX0lRgqPUHI91tBQCIAsTIDg4GJ4=;
        b=KLvfjFpHkplmpyUiOwRtar1x6e+2H98/jVkLHHsXr3K/qeJDyfp8EdTvLyAYvL2T1W
         NR+VUhzp4jGAJ0l1rNiq+pz58BQL1fyfs0z2A5pqYlCeDr1LGDfh0BQ8aWntsuF5uZBt
         PMGJt78/n+Xp7ZhXdtbawSKro6UyHQn8RDNX/T+hmiCftpPXPH9imDYDtRACkTz7oo8C
         B7GounLC6ZWBV5qCFBhKMhesoEBoKgAPD+X8Jtyy+mnDxHoho6D3rauWAvwgFGJ7EP/6
         8Dt7V7NG+28H+wcJKQLqkBqIGxjvbCM/uS8PEhhOP61c7vbCu5Ix25KlkS+mbUYnXGz4
         gp4g==
X-Forwarded-Encrypted: i=1; AJvYcCWOfwDCN2oWReLIycrJdeOhARrjc52JaJ0XnYr2afxTTBdUfVy/Rs7lL6U82XpyOPI6k1ODfzjt4wQp@vger.kernel.org
X-Gm-Message-State: AOJu0YwXixswGUFpcjcNtQEmYw6+Mdq3JI47O6pVEu2nChXeVspWRBf9
	0+cqt87XIdbfRi/MYgQkNt9lsgD4o8EsWCaZ/wmhgQ9lvZbf+JrUFdnfLG9F2ijojfM0oZ121Tz
	2eYa43Aa/10EMVaBSyLGhHGLOdb65E0grb21rcm7lV0UaGGW02pUd3IbedNuRZOfk
X-Gm-Gg: ATEYQzysroJRvcz+9gm4GT5Dlmk8P4SHnuyzqiCheBCcCmciw7JEO+7s7Q0itWv5UW/
	gBmwi3C9eNZ6wtXefnzSRx51JWkC7MN2RW9nhTDtmnFj6Y8TU/a8GXaxe8ku8uOJxRqK9n0EYOu
	EXiA8Kxsi/0aloZn8TcnPuFMDWV14sxjpwny7fb8lgWw1igAPNOtO+noYNZri/SATolqKKkTb7+
	ZFu8xIvyqp9R5kq9G98Te8gwEWUOyfh/yPN5TD9xrNa8QeS07+HWzngnBu1Q5Y1ZSy2mlj0pjeD
	UaWdc9TJPU0r3TLOCZGMC6Vn7HevB7sDnHGL1xz70BDM5qjv1eDatD+RqYe+EiDBwiHGMnpMfle
	8dG/j070fdUt39N0mniLu+Vsrh9u6XIMIKvJrwuYruGP6GSRebQtl9eX8+BrI4xJTJAfiBhGuEz
	O/TAOYYDcmyZRHt7H91N9Ny6MU1vwd5qJKRJo=
X-Received: by 2002:a05:620a:700a:b0:8ca:105a:298f with SMTP id af79cd13be357-8cd6d4ec9b3mr1623736085a.68.1773092040777;
        Mon, 09 Mar 2026 14:34:00 -0700 (PDT)
X-Received: by 2002:a05:620a:700a:b0:8ca:105a:298f with SMTP id af79cd13be357-8cd6d4ec9b3mr1623734185a.68.1773092040360;
        Mon, 09 Mar 2026 14:34:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d02b860sm2360342e87.29.2026.03.09.14.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 14:33:59 -0700 (PDT)
Date: Mon, 9 Mar 2026 23:33:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: glymur: Add USB related nodes
Message-ID: <secauapnexowr77eoxquyxvbzu7tokd7lpxfo24lle2ktvtgpv@p2qpnvqywwqt>
References: <20260309-dts-qcom-glymur-add-usb-support-v4-0-6bdc41f58d18@oss.qualcomm.com>
 <20260309-dts-qcom-glymur-add-usb-support-v4-2-6bdc41f58d18@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309-dts-qcom-glymur-add-usb-support-v4-2-6bdc41f58d18@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE5MSBTYWx0ZWRfXyV6oUz0pmQY4
 fIvRS3tLq/aOqeMEk7Sig7h6xtDZanIlx8UEruCiq2ELKJlsa6V+r2hAFlE51eS0NXJA0DJ0i4A
 /pd3g+RMd8NdMMNFz7bPTGUPffPywsYtvBf740RssSHA+27Aa+dbvfODOBFipLidFUOT/cibskn
 TQRJR4TNOPjunIkcnLYEaC4m8zqnQzwoxe1cJAmy1ydiF7OYKm+MCo0IOHZOuqGYl6vocD+1hdO
 Xet8lww3aTEe7BuNQIgmhCkkf24d1wiBMQG6m6t8N0WZVq7WJIsUwSo7NaiEDNOrUYIjFYlEszn
 8jFdygPQqHmEsGI9BhYUhwNL1SBl29NBR+6BjFjHyzrXuREzpv3h6Bh9BQzmZnIpAz7nPk2wCS/
 qgGe5DC00H+wHHwtDgUMwHtE/e/daijKt7G5HA3InnvuvRjmRVVc4al3yuzbOo1viLy4Jdpzy1O
 +um5uezv0saQKyJYZ2Q==
X-Proofpoint-GUID: gSYQFuEnodeGsMmw4zmPpISMxpoXJgo4
X-Proofpoint-ORIG-GUID: gSYQFuEnodeGsMmw4zmPpISMxpoXJgo4
X-Authority-Analysis: v=2.4 cv=KNRXzVFo c=1 sm=1 tr=0 ts=69af3cc9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=o_jz2lA9kCOULBL2u_AA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_06,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090191
X-Rspamd-Queue-Id: 5B738241CD5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273143-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 12:56:52PM +0200, Abel Vesa wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> The Glymur USB system contains 3 USB type C ports, 1 USB multiport
> controller and a USB 2.0 only controller. This encompasses 5 SS USB QMP
> PHYs (3 combo and 2 uni) and 6 M31 eUSB2 PHYs. All controllers are SNPS
> DWC3 based, so describe them as flattened DWC3 QCOM nodes.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Tested-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 691 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 686 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

