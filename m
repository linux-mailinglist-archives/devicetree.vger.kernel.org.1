Return-Path: <devicetree+bounces-266085-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJUcJNFUlGl3CgIAu9opvQ
	(envelope-from <devicetree+bounces-266085-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:45:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F06A014B884
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E14AC3013B6F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82C0133508F;
	Tue, 17 Feb 2026 11:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WVpN1soU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="exQRzZWJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EF82F39B9
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771328718; cv=none; b=Fv/NgtfunpeQlPLrBV3Rp93u3xgs85pFXrjtXPT6j1inKFaMTZULy5KCDwu0q1wFbHMRiXsJXL1IhSQoELiNTdLlPkLfMN3vEEegolVGhelDCGwXWXsWgP0EplUe316pSI+ZoNfFNzks3+K1mEAdf1VU29RuUxi7CZiIws1x6g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771328718; c=relaxed/simple;
	bh=pXmSGfgp5+QmfnauYLBEsCWHWBMYW+n1MVwaOtwbsd0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BF8QDbCjF5o2Ev9Zp96gimGK/X5PV5UZ9Rgc9QSyItR7/DQzzSIuJmq+051QmSILy/y16qncLT5VZAQ0rLVZS4rfsDF8yc+RDNuUMmBNxleSdReOYR9Vhn3NJXxPxQkMha3cwwAGN5u+ZpSyaQmFSTSx2i+C4J93zKOLBRJeCp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WVpN1soU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=exQRzZWJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H6WBh23394098
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:45:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=griD2yBGtJvsSfHR4B8iPotT
	2LwMerFC4LIovExWQg8=; b=WVpN1soU0qloXSL/kQV/ybLZN1WjCWY9uf82QTRQ
	Piu1ExW5v5uTNaaKSUZRR27nbiP3peO/Tg5DG2zYDvM4/rov0HyyBxpQmZEENqHI
	MyFBIRGGDBxXdmHkn+J92IvlI33mDJrf0aoy6A8b+WHpauhw8m5Xw9QP/PHstMJN
	ugPQtRm2cO/6aE6pwf/qxlZCGncKTDpSu3pMBYWpnV1Rcccok53F6VHFrL+GONG0
	pJkr/K2mepttNVuftZ3attk2jrFiBDn4Y7tXxcpJlgqe+6wHIy03xIMbzrDRLwbU
	6sYCZwdv79vYjqPVkapWEiyCZz+/MgP5pz4sdtdkRgJ+yg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc5khabnt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:45:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb706313beso889385a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771328716; x=1771933516; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=griD2yBGtJvsSfHR4B8iPotT2LwMerFC4LIovExWQg8=;
        b=exQRzZWJkKnACUvyGA2JZeJ6l0eu7ksHhhIHdU06zZqbMxabDf0IpcdcrI3akV6WAd
         x00RFanDbn4MtJ4NxGhzVZG9Qg4vT9NRvpj9n/+DfjdWEC9e+2AJINdrCK3Mib95gVlr
         8Csk77PltZ+lls/oHYKVT6vhpsAUGfCy+6DPjiqOJh7Fdo7jII2nB4dubkqTaariNgf0
         qW1qwUSJFaZTLSD78ySMXYHAuu12xWCanTJibNAIR4u5Xe/vHzvnV3ulGZi8X9B8H7QP
         hXjbKF7uMbHy6hPTv0Cw+PlDCixgLhaDGNYA1s0Ff8Ovv+nirSFOFjQ+SwmcWaRiql2l
         pXoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771328716; x=1771933516;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=griD2yBGtJvsSfHR4B8iPotT2LwMerFC4LIovExWQg8=;
        b=ohRQA4Duv9qP6VwsQyLiaAjjpaqfNj87ggaxYBLCPG4Bx2/OA0YHrCdNMYkqAo+TgJ
         yaqrAX7qLP3uEpJT2gg1ddmc+QtcV98dlH+vxwBY9p707wVnaytC8xqYxjF1qYhH94Iq
         LvSuiyim7B2As9snaIG4QprRh34z6XBKTr69/kapb/3RwN7TA/UdUyuF+D74adyNIlcK
         6A/diPHGuuN0q8QC7an/p2V1JEYf9u9B9BqTR9+m7SgVFelaqdT4+tqiwTLAJotdq+uj
         Ui3NvilYpQu3CM5Doyu9JFiTY6XK7Z3ROI4F+1kGs7ulAfuj3icXXSmpcEHMi8DPwPzm
         HGWw==
X-Forwarded-Encrypted: i=1; AJvYcCVhNlTFJ3OxDlACgn7jbtqGSZtbD3eCGEW4B99ht8jlOIGzlbeJwEqHQZBNhOIoud/2z/oQoic063g1@vger.kernel.org
X-Gm-Message-State: AOJu0YxX5pcgmp5eETVpp4HMFDsvuGIP2FDEg4mkKW2Os2VOVnOpos3l
	gulyM774weZNICVJzvIEKTbARl8BIUAwoXM+UrtQcMPFNWFxhKWStG8wa5bs4ygAhUWCK8Hp230
	ix8rwahOpFbvVdDN7mu5i0QPsFC9vOnbxt7vyXLq7nV+dBlLpZUDYbM6gzt69+O8H
X-Gm-Gg: AZuq6aITyYMxySRpbYs7vFn4Ue/5Q7mXcVwUsTbvnC4QShMj0/K2kBhC8uhNWNIlvyY
	lg31KLxRQ3BivAaVGD6072Te4Ro2NQVVGbtq9re+w3orgIKVWdmemqwg1+rIJJXxXpSFO+7CWNE
	uYbXoyJrq2dw8CzK0LiuP9gnxPawyIucGr6TqttIJlOyQZeVgK/g1iPivZhr2uGW7ezP4brytU2
	hIXgAulaklsQqWole5J8XqwL2lz3yKE1V8OoJc7Bj+O9qb4awKoHlajXcVQ32UbvaEDkVrXHPkk
	ptaBlPfIAUIL2v9xrO/3VkFiFxlZA4rLUu+XTvpk5NL2IdHWNICyA2BBMAIdHVmN7QqdzzGtrkp
	nM84kSVr1k+osSLq7s0X2hAxxNg3YGEwnWMAB
X-Received: by 2002:ae9:f817:0:b0:8cb:4fa5:d47a with SMTP id af79cd13be357-8cb4fa5ec22mr806117885a.77.1771328715425;
        Tue, 17 Feb 2026 03:45:15 -0800 (PST)
X-Received: by 2002:ae9:f817:0:b0:8cb:4fa5:d47a with SMTP id af79cd13be357-8cb4fa5ec22mr806113185a.77.1771328714818;
        Tue, 17 Feb 2026 03:45:14 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796abcda5sm38030337f8f.19.2026.02.17.03.45.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 03:45:14 -0800 (PST)
Date: Tue, 17 Feb 2026 13:45:12 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: hamoa: enable ETR and CTCU
 devices
Message-ID: <l3w6auudk2o63cc6m2vp4663lhhnraajbp3hngiykvzzfeayrt@bwo2l2newxtc>
References: <20260204-enable-ctcu-and-etr-v3-0-0bb95c590ae1@oss.qualcomm.com>
 <20260204-enable-ctcu-and-etr-v3-2-0bb95c590ae1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260204-enable-ctcu-and-etr-v3-2-0bb95c590ae1@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Coyys34D c=1 sm=1 tr=0 ts=699454cc cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=iWN5h_POgodqhNU-qcIA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: o3Ach61it0a3vW69wnpKPwvAOrIzLjIv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5NyBTYWx0ZWRfX28jFJneszFPX
 4Jmg+LuHQeYiEGcoLnBYgkX6f0LuBuxRzIrEZH41j5MCkC9vGuLbNq2VYPZrUPmEvxIOPU526Gh
 YB4j8YYtWE5vrhavhOMs5dn2WrWr8YhXqCVQcN5vUMomk5JjhOn/xagdvl4KVWSSJikxxwibzIH
 gqHmLGOjSL1GramXfoQp/+1mChxzlONUwr5hfVaqKcRqhrrwCRWjJ7dk+Xa8MAHiKsFtp1P44wN
 E2W9X36/+I4I6O0poz0R+QFjqvds3NB4JiRMdMJQXx4SLaNoF+xVRT+gdCqa/seFq2lW5QAY1Qw
 Htj/doENLq7Oj0xcm9bP2dgcPa0DFnbB568VmyPNs2xul/SUrr5nDLrKvfO1VcJHDjoQh/+Hij2
 k1VQCVEJem8PnTjmkIQJYS5SJJ2P6VJNcmw6ele4PDDUjfEOajvlZeDiB3Us1uBC7TogkD8+rJ0
 sG89iQoDq4Dz6cIPVqQ==
X-Proofpoint-ORIG-GUID: o3Ach61it0a3vW69wnpKPwvAOrIzLjIv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170097
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266085-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F06A014B884
X-Rspamd-Action: no action

On 26-02-04 10:22:02, Jie Gan wrote:
> Embedded Trace Router(ETR) is working as a DDR memory sink to collect
> tracing data from source device.
> 
> The CTCU serves as the control unit for the ETR device, managing its
> behavior to determine how trace data is collected.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

