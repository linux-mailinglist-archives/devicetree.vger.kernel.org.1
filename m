Return-Path: <devicetree+bounces-261876-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGXtE+fCgGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261876-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:29:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5C4CE3C7
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:29:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 723683041781
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E754437AA64;
	Mon,  2 Feb 2026 15:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hLiUWCfY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QNN1+605"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A343A21ADA7
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770045928; cv=none; b=N0PJdK5bEo1dSImXeapfPZsHgE5SLrBs+IQmHTaVbf6znRYxKdvcRFzUyVkVCBwu0WTa284m3YuqoLIOaZobNZSsXLOBdCtiUf39v8ZUjWz3++5YIafFz+yreIk3VP7pmZ1Dqjxc6WOyN70WfallWzGqpBVpDA6uwkVV8905o2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770045928; c=relaxed/simple;
	bh=oC3K9QcgVvVXAMz07uN8yyexhk1+HnYvnwk/8oczFI4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SSqzuShGx1ktxRLOyxphQanDDKRtNKUV8qWyq0RROE9AM9FXpWHAM+0zKvtP9h6uyTqZE/QL2x8kS9Sh12fJShmEKMJ5kPNwkPmMG64YHKhpq2/Hlu+iph76nO2yu11sVdlIJrPbbrH9qQYiaiqGzgsy2WS+a8I+OaiQATlFvgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hLiUWCfY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QNN1+605; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612B5V2C3459166
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 15:25:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kG5yXRVCYLlGCi5qx+ggn4yP
	f612jvCEPPTrtUaE+rA=; b=hLiUWCfYPr645NJafl5FXjN3LKslXY/fsYw6CM/g
	LyKHVbvzhFPmujw8QayB7TxcL5kx8CxTUgbyrRHPlMd0v0w3A6eZIdb+dbC1Dlj9
	qM2DY1OZByZPKvSymP7nMwUaIrFBTDtDv0iOTsboA8ixearH6qmgxqbvkYywH83v
	674+p02EDkkmv2aFCM8vscWN+BEG9f7ws1RCyC2cmaeXTok8qFsPCV7A0H8SfGZ4
	FnRf2UVj3IEDociCbnWci7K4mYbqdW+0vp1TVdzYGhcJN3CnomKFH8WbUvEmMH9N
	BO5zarpK/RsSHQFW4aysdQK3tZK3h06Qp1QhulDv4KFvKw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2trbgqqa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 15:25:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c5e166fb75so1469762685a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770045926; x=1770650726; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kG5yXRVCYLlGCi5qx+ggn4yPf612jvCEPPTrtUaE+rA=;
        b=QNN1+605UZ4CfkggP9+nq77kx9iMeg1HYOBtaWC6fL92wqYUq5w8JaNGHcpwkLa1hY
         jNQtmkBVNPVf5DIbs0xHy5OXaDY7sTuh70+SRHECZHqBacL3YqXufWv1QO9o0ICIhicD
         YAxeq7bZunFvbmrI9R4JzYit9JLVNJVjY6G8USZy0R8pfdq5T2M58APDlNZV0kiXykHH
         f7oRVzw4KzE29ln/ycOD5yrrej7HxsmppTx13W/cXVVjH8tnCCsnlUGy1SipG7AvWN/g
         DYlrhZN6kCe7AT3HDlhwK7y4tNUzLPtFjMHaqw+0uXurlw8dJLQPQlLGaNm9IH27x0Ik
         egBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770045926; x=1770650726;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kG5yXRVCYLlGCi5qx+ggn4yPf612jvCEPPTrtUaE+rA=;
        b=PuX5EfuH3z+wHHbAVWD9qmVWSGRywxjFUryBYzultrQAWs5w3ebe9GKV46f8uX4PdN
         Y+yFT7OOfem37jJn0S+9WRXgm7DZUWbaxkeqgA6CwlXWutpTNB+1jP6C+5tJGuO37Cte
         MmbvMfvziyBquqiCXdO9VYoqabFH+Uc9ORcTWSceobwt2KSUl1f+M6h0BixU9sSCu6bU
         0HdzsBj4ZWZMikRuviMTbNQBWe6AS/opvLTR/Zf9gdUG/Y+oqoguGmdIBRzVIrFj7xEk
         WynG02oONCuSN1V0A0qR9/+5tng4vSfiQQfoPPlySCyAYbtOswLto9/oWO4+btzh5lrR
         +KBg==
X-Forwarded-Encrypted: i=1; AJvYcCWByxFvZzbB9+pXrEGX7GjLWZRtxdr4dakqUF2KPYR9iYrHFNqUq5KOp4g9efjwO2FjheYib+BA6u6T@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7XqDozQTZc321ox4XpRSDchSbm4aWGPn4qtEaHCy4sVTXF4M3
	ls92U2Gish0hAMYRpYGeV1mOL8oDsr0GjwahwYsQkZWKv2a6d7ORdWMt4UoSMH/w1Nq1sQ0sHQE
	CT2VpcOY5CK74EvGFG5l2h01YQFfvxqFK63n3EbdtmN1tdGOVoEOOnNWRgOANvufn
X-Gm-Gg: AZuq6aKQrP1BEpPmgm9Xn13KXaSa7GW0nb13iDZt+SF6VsrqUEdQssSjJmHWFMcpxef
	gRJ/xmtK3cuDvwpz3ZE1QPZ+844Wu5EGDcgQ76eUbwUuPIlVMmv+kxEKNqigW2xS/jSnpXBBaxj
	KOk6RqmgYR+y8ifO27gWvagxXER+1brx7OMjOQ95YFhsgNcoi0zIABN/S7jCZuFj2oyotws0pC7
	uU7LnfvGIA3EGAxqyDTNz3Rm9qy6ZNV2MX074srKJitOkxbwjc1rTdtOtxoA6ELLs9BoQauEkTV
	zOc8Srr2QZo5vRcQIO9be8e8uQgDAJTyhJQJqSv1rXazP92Z0gA9wWKiXaOfxy4QzWPeKyMsPkp
	1/gQ86oTs+sylKM389/7OVMi7
X-Received: by 2002:a05:620a:3195:b0:8c5:2e1b:7913 with SMTP id af79cd13be357-8c9eb25f5c8mr1508056985a.25.1770045924655;
        Mon, 02 Feb 2026 07:25:24 -0800 (PST)
X-Received: by 2002:a05:620a:3195:b0:8c5:2e1b:7913 with SMTP id af79cd13be357-8c9eb25f5c8mr1508024485a.25.1770045918967;
        Mon, 02 Feb 2026 07:25:18 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132368csm41732774f8f.31.2026.02.02.07.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:25:18 -0800 (PST)
Date: Mon, 2 Feb 2026 17:25:16 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v5 2/4] firmware: qcom: scm: Allow QSEECOM on
 PURWA-IOT-EVK
Message-ID: <gzplcwftstlsbszrinsc5cwjxb3grmug4btnrrvbt7avxmxemo@lk7wpk3yitu7>
References: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
 <20260202073555.1345260-2-yijie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202073555.1345260-2-yijie.yang@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: q9xpzTABR-lF-hcVR2nvQWFcQfkbMsrF
X-Authority-Analysis: v=2.4 cv=dcmNHHXe c=1 sm=1 tr=0 ts=6980c1e6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XsGshA-rMXuQ-jq-uTMA:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: q9xpzTABR-lF-hcVR2nvQWFcQfkbMsrF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDEyMSBTYWx0ZWRfX3AWPck3VTp1F
 I0VGkkHASxIS2U19iKlIk4CvnYjREWDJsk0vRW2JJ7Cwb3iUW9ZNZsLhJY8G+Yje2d7kyxIGSXY
 /v6LcV6G9HAJsjEhfZicUPyi5Bymy0FmweR7pGpTclqe5XK238VqAIGTn/gBMLnM2PelVpS7T/i
 eLv7DFEgTl6GvyqgCesDumqQjIyXi6B9TS7yp18a9QdydtSDuYgA5RV496R55WgesoxV6OTrwKs
 yNviz82kJfM2hbgB25fZF42p68IwF62vSXQUWxVSwskBSERqV8V0xhZivhkYo6CC/drNj1v7Lwh
 v6kcO2nVmEdr1KfAYo8vZT0gLb7lzlAgawJ1Gl3WBocbvGu5m6qOYvVVFEucjdKABmeLBkDnvL4
 6ojgLvPoLGDhhTVnBDlNuS0WhDqSidiA6APNz6mVANr6zqSv/tdMs40ob8QmwQVqdBbOMrvLYC9
 qonAwOxD2DDQiCTjivw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261876-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CF5C4CE3C7
X-Rspamd-Action: no action

On 26-02-02 15:35:46, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> Add the Purwa-IoT-EVK board to the list to enable access to EFI variables.
> 
> Guarantee that subsystems relying on SCM services can access secure-world
> features. This change improves reliability and prevents missing
> functionality or boot-time issues by making service availability explicit.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

