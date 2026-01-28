Return-Path: <devicetree+bounces-260242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPE0Bq3KeWkezgEAu9opvQ
	(envelope-from <devicetree+bounces-260242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:37:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B1A9E46C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:37:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2EE463001FFB
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7400F339862;
	Wed, 28 Jan 2026 08:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RRLAm4O+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HIoQgsyR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F573382DA
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769589416; cv=none; b=e+kp0OSkj4vCSaGHQ/NGMIMGZ0du39zIPzUBDq5ozAMCvnpZt4cHe9jPaJm/WS8ZRWPzpy6xtYK0bLhKrpScdr5LbG7/F/cU4pFNl5ev7F+LXYMuNBqAK0vqMWd/q/ZsaNds6Yw32I38a1DM8nk4Phu37puCK/I0S8Ym6k4uZgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769589416; c=relaxed/simple;
	bh=47Mn6mq1ytbRVibgE8EfASIujzxl0MKCAsPSwk4uvSo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t+Ys2/ClsmUKGqTJhV0LNoypX1hFQchLp9WAvOe7O/lQSd00ahHoPRTW4KRrOphS8JsmY3HpR/w3X3H+1tCD2cpNauZSI9/OdvSpMQr0sj8/cZ60IkSH4kgCcPtRSOHknTMuttxGWI+py5vqlXYuAnjZ0xXDm6068wlKulEiAAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RRLAm4O+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HIoQgsyR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S50dFP2436390
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:36:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OgXHG/pztr3Fd40q9Ravm6Vn
	ha8yrUNEpvKhL4JAxfk=; b=RRLAm4O+80P620y67pooU0pxkrWvEKo5NBhUNAnN
	0lps7S4h4PbTf2aqpBuG4x3KKSQDt6iZ+Ij0sHYBGlCM55UEcD5Ch9uRhJZ8T6zx
	WJ62AMoyZ1v/1ZPCXAPLyzY9/HF5McELUybGJlbNbgc5ShXreQ1bWl59r4r9oeLv
	6NzOxPW9An4ZqAFZFqNvDoNwIDv5zo6cuprhoW4/v1X2KshGw+07tsNQf9FDbXwc
	34B+VAI/pH8mxjeQJMRwaAwX2wAD8V1wazvONZQKKSp/gHZ6VQ4MyxeqsQ3Bv27f
	1+ZvzaxJ0Dv6pt6I/lSp9RhNt4YugNzoukRRL9AqYi0A6Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by355t7xe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:36:54 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c7166a4643so54526985a.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769589413; x=1770194213; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OgXHG/pztr3Fd40q9Ravm6Vnha8yrUNEpvKhL4JAxfk=;
        b=HIoQgsyRe3vW0afUgaShU0agfGZM1zNC61RpV8fhGVsYHprS5hurr62gXm0PjoBbb9
         T55yg/25o5uPaFfdAnUHi/9ra53JD6lQix04MzN/5isRL7SOqMxQBlWGY0FUhlU9X1LQ
         tKpfuhXi9rGdNAzWZ/+G42kSNC5tFxufHA5NTVdn3ozJZJeeNb/RE/2IyF1iforl/TiS
         S6HM/e/BkWe0ZVTrNPtHnKajMsd9Il/9xrNNF8IkE8pejYH9pvkE+rQdg2A6xWU15rbx
         /Dd3ULZYTpPIjPTlIzqu9n46Albak9Xqmi5INDJ4y8Vjp6oq/9xXqTwcCYo8VDiEdqdo
         uJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769589413; x=1770194213;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OgXHG/pztr3Fd40q9Ravm6Vnha8yrUNEpvKhL4JAxfk=;
        b=Im0z0ytRAQTSoQ2L2gR6Wa7+8g9agWrNYEewLhDPeNjkdmCPIANyZ3DeY1P0YCbWWW
         eaxRpgtdFmQJhPBSUxp4UayqEt021+rBCir1/7sERV7+mxj9CUvCJgR5o1PhnyCPWTRw
         ndyBeBC2TwMBAs94X6jcsWDR0Xz4vwUdqUZwMdVifsLTMSS9a+zYoI3SgSKH/FXUBm5/
         NkwUbtXNfkYYfJtThrUI/MrzJ7n6dOsd3/uhhNUazqN/rkfnhYtsAwvJvU8OWDUo5DsV
         TnIdcuRax9IREfITYNX5N8N4tbqSaPjHFZdEh6oneUW0Yc6vhRELjEjJdfR3CDhpeds1
         blLw==
X-Forwarded-Encrypted: i=1; AJvYcCULhOyCe0ZIUE0GKOf642Tv/k+oArV+KMS+Jfy/sJ5Ly5GuQR0QQ3wk2gf35z08wfPaQU5q6y3C84xY@vger.kernel.org
X-Gm-Message-State: AOJu0YwTNTK7wOPCG1WMNvih1DXxW2mobsbpWrcp/mXfvPfoQYj8qybe
	DrP5pz89xURABGxujMgNUXecqu5qsSWFxHU/Mun/xNYtXACOgxfU9G18vLshF1vuX0DrFBCR1ZK
	vHuujKR4LjxYjKdnwJmnDpN70DFZD2nfa3OlyrbR8RK1/QrFxR0SLJxfJg2vQP3On
X-Gm-Gg: AZuq6aJgQ3io+b+c5yW15gk4PR3gD2wMbM153T0sd2A7RLAakEd7dGz77wIwYWb0dWy
	NuDXho0j5tHDHg+cD7pfGIN+DMizFAejVtemSGnjvKJdnrpU6PdNa9NrBpc547VSS0cKKG1WuaE
	X4kzTwz1Ha7/cGlBU/nNZVk1VIE+cWEIGo8lIkhaP2C1PsUeI5sJsWorp0AF56L6MguwlqnUU97
	aZORRedPKFlPsccdwufRmRypBusFZ78a9XAhY3GZDUsg3ErDt7f5WbcE/m3WIknsNijWui29AlY
	6M4ldkFheKgy1twK4PFCwevRP/ZpW19HL62ddtojapv1psnMNUR1mwnnB+R/Gyjqmeg/3mTykAq
	HbgDgBUrJ+736JxLg6k6BGdV7
X-Received: by 2002:a05:620a:d89:b0:8c6:b425:4779 with SMTP id af79cd13be357-8c70b84a4c8mr577481185a.7.1769589413019;
        Wed, 28 Jan 2026 00:36:53 -0800 (PST)
X-Received: by 2002:a05:620a:d89:b0:8c6:b425:4779 with SMTP id af79cd13be357-8c70b84a4c8mr577479085a.7.1769589412435;
        Wed, 28 Jan 2026 00:36:52 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806d584563sm3897695e9.1.2026.01.28.00.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:36:51 -0800 (PST)
Date: Wed, 28 Jan 2026 10:36:50 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: talos: add ETR device
Message-ID: <2n2dwqrafwv2y2owszygbc6x35qn4qlwob36eipfeifkplqg4i@2sfnvzt3slbj>
References: <20260128-enable-etr-on-talos-v2-1-ba77063d6b62@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-enable-etr-on-talos-v2-1-ba77063d6b62@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YNWSCBGx c=1 sm=1 tr=0 ts=6979caa6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gWZq2N21oRNzLp9EvjUA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: UQJQGcuQZhFii621r2QItrPAFPCTzYoK
X-Proofpoint-GUID: UQJQGcuQZhFii621r2QItrPAFPCTzYoK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA2OSBTYWx0ZWRfXx8hp3CQcMSga
 hgUU8FD9NULJIbZ9rXwMB0E0ofBO5QcBAhAQmGoxduzZeMZ7575hZm3iuOTODH4P48PhS8vPQR4
 Quiw1bEFZuaOSOXozWVpgHoCkyen4zpXVqrF1zb3ujbmwaHIgR9BcV13PvzwUB2riobgrSOKLLV
 fTt9BZv1OQiiRpEcF37llL4p7R11HDYnZyaagr5ytd6lOWzqiqBlQdV1P1pXD+S6ENPo+yQlVzp
 UDHwzHQk2XoLNv8cQwVsEyJ8JECqlMr7bHS3rJ+fq0zBL/7gi0s1OgUw1UP3K/pZP18ugwrqrYM
 XKZ1pbqokzkTZ70mfcZPibr1xeZBu5tZOvcwkTUuUoGkN5CB/A6pfsxRg0PdmXwn7hV/zoOJiFB
 reIBOZW2g/wz2703OMbzGyZB1qweAny4IRMST4pzsslIIOTfekDvatEvI/w8KhJlhC5zWPTpKIA
 u8OS9h1mDvK6ybH9QJQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280069
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260242-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B5B1A9E46C
X-Rspamd-Action: no action

On 26-01-28 09:25:34, Jie Gan wrote:
> Add the TMC ETR device to store collected trace data in DDR memory.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

