Return-Path: <devicetree+bounces-260231-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJVfN5XGeWl0zAEAu9opvQ
	(envelope-from <devicetree+bounces-260231-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:19:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B92C9E25D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 55CB130120E4
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF5D337686;
	Wed, 28 Jan 2026 08:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M2/VZT2V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FaO2937T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CA7156236
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769588365; cv=none; b=jKm1B3Jk5GW9JGq38gZUTqYjXCDPrGrNioetxqNZlISZBuivEJ2Ift6TkIvW6/S6TZi/djbIBxC4KF/1OhohbqM6NJQTn4No9daJVoqtdEHVJkgNvR8Id1K625n1fF5+rZdY7vrnOqAiKSMSbyJH74HEzmuvvSGvX538eEc/iIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769588365; c=relaxed/simple;
	bh=3Wyw3SAGNuSalyR4UBy85YKmiqKR1HcCfdPx4/6RuHE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oRvaeAWH/Jm6ukPZv8INXmeJnTrjHjGQS+L1hBX0nf/zplTVJPUURm46PBUDIZeJkczN6hqJwbKKsFZ0ufQrDfpbC/2S6smhmmk2N19rH+zDvuuKO2Z3sJ10gDzDKC9QIAfQipE2VMqpB9TWsnskpIjklV1l84yJrK6bAOkJODs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M2/VZT2V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FaO2937T; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S2lOPn1334324
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:19:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=k51npGhFF6R2OtGNT7VVc7h5
	xVQp5l2qHkrh59jczko=; b=M2/VZT2VPKI+wizyemjda+Kq5xNDl+lyp/6inxIW
	nEBPSNcCGvteuuaRHwPpRp0d/Hmp3xBhW7sZOYl/rCR7kYcOccp/L5Zsc1vUDoDs
	DmGYhGerwUVONsFgugrGLMXFLRHf/M7zxtkWh3fizxotn49x0ZQba0vx33qghXDK
	R5Ru7Juh/nInqgpFxsPZ7OqkDYkzkU/0p/+MGL50F73yfrofhx7aKlaI+/DXkkAa
	hg3NZZbx3r+0OL6w6TvEhiSjdmm0xkSihad3dDM6b4Cn+BW7BAk2tKM1BHwSfTzi
	iIvmrZ/4eiuT010zBjLjrTZE0A1EJmv2m7vv2DWmyfn7kg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1dftm2h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:19:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52f07fbd0so2868301785a.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769588363; x=1770193163; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k51npGhFF6R2OtGNT7VVc7h5xVQp5l2qHkrh59jczko=;
        b=FaO2937T6TyKePeQMkKsJ0gshNKf2FchbIvTfYqWknnItWIh/TEd7nriy7QOPQHREb
         p8p13bw8+8RKbBOHbqlFvdxWwjOa6g3Qm2CVraDaRZxyzU8vn+GrtFeCig+FwI8+XnYN
         1BhT8LW+QExnFOhPRsQYp/dEUfCmo3HsPmqeL5zfhnST9aOCmesEco/UwaCERZMtb6Jd
         h8Wj1RBFJwuQ3QviLwchyChdv2l2qQ2wZdXUUhxlUyOxgbEK4a22BJdU5a4+XwvCFMYX
         FR4UAVCHPTxA17TAhTK9p7c5IX9SepiAGjEfjB2UDkj1jpN+PChRfTjkpzSUb0Go5+D5
         gvjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769588363; x=1770193163;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k51npGhFF6R2OtGNT7VVc7h5xVQp5l2qHkrh59jczko=;
        b=OrizcwhV9LzQ+7g/hOS7vE1IrZdK58Y1Mn2pRY4kwvkYj54UgJKs51iiJT8l4ddHf6
         7gmEsKCmSjdwr6xOvKSnH1YeUyNXYH2ACMmTUxr22eo1OmvIGtvqReGxrrN5HAhoULM7
         4abN8cCnJvKKXgjF/xhE2hlkm3lKV3jkRxd64s33LoTo773QZie566Yh8BfFODX3/C8e
         zXlESUwpHKUaeDqm1xPzR3DR9i+w8lwmEWagSFK0lEUGeIehY85sziuQbSSvJEWfH95Y
         qqvZ/Jg9pq1T6UcftJsEl3JIkKKuPdT09y63uYqghHeUZLJt0q8gWFlpQkMBUZ4R/A6J
         q5zQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGtRozyn3aCQ2PszHLsss1tFZYEvvETr3N3VymQlCOIrlWQgbPFgWgIIt5l4hfFBAj8yCMDkhSc8XT@vger.kernel.org
X-Gm-Message-State: AOJu0YxIiyCGEbhI0eGfmu94a3CwCxKEfpoxKn/jnIbiQck9WUSe5N2x
	37tmwlCLoduG1yDETEV6HdcRLeYHb7V/0C6IJ0LVhnPp/puV/3FONsNDc4DwyBSaCr4wGtvNFk4
	xDeZrRdkbqtuibPGHgTAfFujwKNryQphsIqFY2QydwL8stV0RhyQFXGkV3BJCijdK
X-Gm-Gg: AZuq6aIT3fK1ccUopUP82tJERV1eTn5nhYYBElDcBTfuGJtoXbSf4fGmhrba8J71Lxc
	Q41pXZ8KbMnieHEN5xOy17AG/QiZtPYT4rbPBrWrzmjXDpvixJ45D0A5x18arbKitnLVNPVX6hj
	ZNUvhC5s9m7zUX8GsV2DzDyZ+Y3y0DWuDnCdxt1ZAODOVMQo+UStcyh8OmXeJgsYs2Prb2OJe36
	yZa1pa0/r9GjhByKpXAmusqqcXNvN0h52dAU52c8BXJeyC4VcuovyLiiAG6DX7cv8jCfacAMfwY
	duXErviO+xgNDJRtsanpG4fb4FaGYCmJ3oaU/XG4VI7KZT1QFih/sX6Sr7dZ0mOcYd3zDlPUjqn
	fe5EhXCxm5+xdJGCtIH9dAGdH
X-Received: by 2002:a05:620a:28c1:b0:8c7:33:cc97 with SMTP id af79cd13be357-8c70b841397mr552348585a.13.1769588362768;
        Wed, 28 Jan 2026 00:19:22 -0800 (PST)
X-Received: by 2002:a05:620a:28c1:b0:8c7:33:cc97 with SMTP id af79cd13be357-8c70b841397mr552346685a.13.1769588362315;
        Wed, 28 Jan 2026 00:19:22 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e490esm5004005f8f.9.2026.01.28.00.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:19:21 -0800 (PST)
Date: Wed, 28 Jan 2026 10:19:19 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 6/8] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
Message-ID: <lccj743lus7hhn76xrcajjnms52nzm4zlul3n55l4dxyicr5yx@2upvvfapbjls>
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-6-b23de57df5ba@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-purwa-videocc-camcc-v1-6-b23de57df5ba@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA2NyBTYWx0ZWRfX5zUvKLcPbGe6
 AoNVNAtWYsoqgrOj9AMJpzSb0Zj7nheEBMhwAalAFGbTWl2R43gI/ZLNk/GVjMV68FzHyMdX6ht
 C5KGbqR7PwbP44IzVxywJVi1aXPXWDDXiYfvbfmj7A9hW2P/+0B/R3cxNt4pGonc2V1BWtIbCH0
 rS1jbAGOYkUZZCslwIH/uuZPdLlz87mEku7FsxP0VtABAmDE9oJCDjkELoi/XYe7KMDjgE720Wd
 gAKmMbjpuB6V1VETwpaSGrPH71ObNDc68x1Yslf3Od1AXyICtKPhBoJVn9xfHm86YYA87FuyFr+
 7BhbNgRoo/Y+MY0FVon16RA631BgbZnZTSHgXVoVr7jCvhZY7gbsD1+2pyV6Ts1kLIBbZ2AKiFw
 MvXMo4/KplgxewihGal5mX+eIGJcaa3PAUxsdJYm95oT7zDFjD/trrWI68tOGG0rN5spDucrJvT
 UVPlNI0cci/ZD4dilFw==
X-Proofpoint-GUID: nMHEZDtx4Jt99JUqgvQImaUpDifCJCuo
X-Proofpoint-ORIG-GUID: nMHEZDtx4Jt99JUqgvQImaUpDifCJCuo
X-Authority-Analysis: v=2.4 cv=YeuwJgRf c=1 sm=1 tr=0 ts=6979c68b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=wZ8H7fhid0mjBLlCKuAA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280067
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260231-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2B92C9E25D
X-Rspamd-Action: no action

On 26-01-28 00:56:37, Jagadeesh Kona wrote:
> From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
> of previous CAMCC blocks with the exception of having two required
> power-domains not just one.
> 
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

