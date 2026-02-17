Return-Path: <devicetree+bounces-266092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sITxKYhWlGnxCwIAu9opvQ
	(envelope-from <devicetree+bounces-266092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:52:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDC914B9BB
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:52:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE2243013ABC
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F02B8335571;
	Tue, 17 Feb 2026 11:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FXlUXnqP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V3MfS76l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C6B33555D
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329129; cv=none; b=eGjPKLsu/4AP5lHDGrn9OwJziQwKFaKNHSc5dribwoj8jTGKNimKBD1D9snEF6dzRuRwN8fZJxoDZEpVbNKO6nfoJ3dvh6OI58pD/nqgR5db83cJI7yeO6mgRxohLCAHCTzmAdgmEKfW8xxMwuO9jMGcbcylrF+wCoL6MrDwgYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329129; c=relaxed/simple;
	bh=CHwdSnZ7RMsGtK6/bHh47EixF7iyfUrxD//xKjebtIA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YK9hGYvEd6YNqdHPSJhrgdP2vCqH6hZxlkHfgP/cYbvT6CQrsjB/XjzHn2mOhbHWcTFagiqViUCCuzY7rSXkiJQdTLVWlnest+nmm+FiMCKuL6uYsRwphiNj4oDF+upylc7wJZ6DWk7Frhc+UtnC6YGWMqTIb+4OOLlY05uk6wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FXlUXnqP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V3MfS76l; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H7SDd03394685
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:52:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=34WROTQoUvMm26bjgI0nJI9N
	/HKw0990gCo/hRRoZeg=; b=FXlUXnqPq6a8xzJgwm6KMP/ssc5rJ/83tmLczq8z
	zbtp1OifKTvtz+QpK0docdjkU5H6uC5CjbHAZHtFpeMfWblVsgWvyFtyB97GaoO+
	VqLvSZMh+WblOk/DHkpwXhY182BL/JLG4FYl7fz4hrsVDg7AKSgqyGEJIqpM6Dy9
	6j6l7sjcV0YTxOpBaN8Q6MUcP8C3Mf/0LXmmeLPzfIjx3Dx8Z52OP3fHjr5WfTim
	Da6sHymwhfF8AFAwHnL0Jr2pJIhX31iUjEcs89q/ochRExcJhh4JUs0Jb0gj2oB7
	1xXubqOCdSjvEDzuOyJBM22SlRfp+LIeIwNWe5RmcW4/+Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc5khac8m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:52:08 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb37db8b79so4723950185a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771329127; x=1771933927; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=34WROTQoUvMm26bjgI0nJI9N/HKw0990gCo/hRRoZeg=;
        b=V3MfS76ltICt9ZxKzqAORabn8OZgJQE+YZ5yuqwhkJv+2ZVO3iUEZbc5J75jgp5PT3
         1BSIDUGawpdU1sQZWw7tnUvQV20nbK3R6S8rUxe0jrkdxMb91HlFgWpAOhXAKlnf6ef/
         rwMxMDKDyJIRh9IOdaXj3l/fFQXCxaPksfd7iCWxb+6JbS3fgpw5IPiqyccusbFkxx/e
         rzA16UwI3Po5TRTOflUD+/wpxaYfCsI5J2n24Vs3VDy9SUusHIMkl6p8zfMndB72ln9J
         8VVl4ObUFYxQLKGzvx12Yjl1GCpDHCiKL8r4UIKv6TFMMPAtfPfEo5s/5HKSGyK1qR/J
         KGEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771329127; x=1771933927;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=34WROTQoUvMm26bjgI0nJI9N/HKw0990gCo/hRRoZeg=;
        b=O6lBtTK6+ztDh2Ld1syx6tO4q7PEnU0CpC9dl0uCqfuVnJfPE7o4DA1suI/u8DGSLZ
         jCYAdOfPQj6bbBwOBdFdyekOnG69vlmvRROpjLAO/hLB1WoSpFvb2r2qUQPNXi718ikA
         R69ngRFBpMJGx/lXYqty7345WBBsoaWF10/lSI83Qo34d/l9T5TWxgGy2QA7/3b5GHgT
         xDlNHyaXr6gk6umEkqN5iFaRX/vlV0W1bnTi9c5xH3jCvlizvRxCDLcLISahPRy6hSUB
         O5lvbJLcvGbR+JQ5vaZdN+hT68z06dq8Irx6AN7NGH4bLpiT4WIwfvQ3yFPzfpLTgP+t
         iJkw==
X-Forwarded-Encrypted: i=1; AJvYcCXbMw09PEEl1KG3IhCmqRLRoVy8jl4g+Al6/AYP0GLijNJGhAc+fGqLfvErpNdCFmVO084cpYop1zJj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1vg/jc8QDdLI34tpPYkucflKSnWNO0UdeAducoTp8uDpJhsuR
	r/ILZA6IvZyJu/9WUrUzRK1hUpQblZautKzOtYf+hmtNtElDCsWRzTRaHY58A5+ZvfltoRTb7Nf
	UISxCW3gMpd0jgyDO59ziaNvwCI7F8jJMl6+Yoy8MMLUma4wxXIvlDiJzvrd+Jh7V
X-Gm-Gg: AZuq6aIdnaUX8dsDCb2EfoAXwf5SfE3F0UWjTDv0ZX3EIs1To+T/wZ+Eh0Ip1iGrpa7
	F0V0n+K8ua7sXZGukhIe0gO18u0ArOi89H5YBisYldt3DivME8+5MH/c1Xm87hZItVcngfvIF36
	2M3uTii9d2xEqpl3u7Y3eb5CHn6NtKro71na7xkJc/Zf7QA511RIrEPoc4h9l/hbHRoXMqNboEj
	wqQQQlkOg99acQYs8Hsv3A62s1AnjejRa9niBvi66EgW4+4eG4SFOw7e9c26hV0lHPzYZFhOzLO
	v1FWDpNMOiQEUK4kfJNNaNoKQtUbflCCXwiWNrfQvAaosSr+yB0UDLFDN3FEXWqxh02yg8SLfOu
	QtXOl1qaBQ9pIPOYv6rOuG3f2gxGLXwjCuMgF
X-Received: by 2002:a05:620a:28d4:b0:8ca:1c0:95c7 with SMTP id af79cd13be357-8cb4c0186b1mr1176215485a.80.1771329127196;
        Tue, 17 Feb 2026 03:52:07 -0800 (PST)
X-Received: by 2002:a05:620a:28d4:b0:8ca:1c0:95c7 with SMTP id af79cd13be357-8cb4c0186b1mr1176213385a.80.1771329126675;
        Tue, 17 Feb 2026 03:52:06 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483719b8e71sm321398715e9.2.2026.02.17.03.52.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 03:52:06 -0800 (PST)
Date: Tue, 17 Feb 2026 13:52:04 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Linus Walleij <linusw@kernel.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Jishnu Prakash <quic_jprakash@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        stable+noautosel@kernel.org
Subject: Re: [PATCH RFC 5/8] arm64: dts: qcom: Remove inexistent TCSR_CC
Message-ID: <wzfbhktucu6ix4p2wxqkpzt2vb4d4eksx42angzc7xm6t42nny@q7jzffazzuyt>
References: <20260202-topic-8750_tcsr-v1-0-cd7e6648c64f@oss.qualcomm.com>
 <20260202-topic-8750_tcsr-v1-5-cd7e6648c64f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202-topic-8750_tcsr-v1-5-cd7e6648c64f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Coyys34D c=1 sm=1 tr=0 ts=69945668 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=PbzX3SXDXahS2tYZ-sMA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: ft7myjuV697LlOlyi5p817aiwKOl2TLZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OCBTYWx0ZWRfXxeK8BRBM+Pw8
 q4gvU5m4BLyRym5cIlLpszt4nYce1zTk9t3OEpPzaMnIIFSI05hYAPes+a+JLdOaCTY98NyvolO
 eQvry5r2zr3O5RInw6pehr7Qs5p5lPzqpV9rn/vAE9rzccvjFcvILYMLT+Its19I4xGIGmf2yoe
 pFEhQkBz3iBNzHVdFbKM5tuz9KLCc9PK2h7vwshq3x/benAaLgWtGKG49PZRl+oyhHboN3M7j7g
 Q/4KTvH2VmSQk7MYIv3gyblcUx7ON6bvPwJ9OP7/5wG6NM84wRHOW5Dim2EoEjbrIAPOkl+7BhO
 UoSqTVqdHrB055tURPgTd/qw9AqhGwXzKXy1wGPBSEUE8Yo5/s/xbA+wmmblsOOu0O4P5f71O4a
 B5b005FcNZkC6Hh9SByZUMt8Jn5W97UauRzwh5WyRJpLGjE8YMTUkirN25CTG9VCQJsGGuQBZ8n
 yJz90ws/CYbNOczwYrA==
X-Proofpoint-ORIG-GUID: ft7myjuV697LlOlyi5p817aiwKOl2TLZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266092-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt,noautosel];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4BDC914B9BB
X-Rspamd-Action: no action

On 26-02-02 15:57:37, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> On SM8750 specifically, the block which provides various reference
> clocks does *NOT* live inside TCSR, but rather TLMM.
> 
> With the former now being able to properly expose them, switch over to
> the proper source.
> 
> Now, the TCSR still exists as a block for various tunables and
> switches, however the prior misuse resulted in its 8750-specifc
> compatible being already in use. With it freed up, it is now free again
> to be described properly.
> 
> Fixes: 068c3d3c83be ("arm64: dts: qcom: Add base SM8750 dtsi")
> Cc: <stable+noautosel@kernel.org> # complex dependencies, no immediate gain
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

