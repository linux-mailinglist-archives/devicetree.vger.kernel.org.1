Return-Path: <devicetree+bounces-260235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHrJN/nIeWkezgEAu9opvQ
	(envelope-from <devicetree+bounces-260235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:29:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 382439E34F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:29:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 360443007E0D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 143B53376B0;
	Wed, 28 Jan 2026 08:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UQghn5Kc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iTc8GnZ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1381334692
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769588976; cv=none; b=hCafw8aElAgrZSTtxrGsLqfUsuA0/86sCY9j5RbLfvVQhwo8xNA4aKJ7x9qBfhORN5NVRjausoLvxa8GwJmd2NcBgA48xIjcpzxcc7T0viO3WhTuX7Hmx+DZ12jhPrtRQAS3ocTJKna7AzebKRJXNiv1PmS76P485xpijkuFsMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769588976; c=relaxed/simple;
	bh=4p/hKhz5U7iPSe6tDtHBzA/xodo+dBWc6UoWMKa/C2A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NdUy7HoLrGBgPzKu6isBopJ+SsnQVxY/nCl7SZDJOSXQWUEkFEl67WP5ycowxCIsId/izh3CEwdegBgj/Qzvp/oN9UtnqyefK7nOuX/zW+SSz4cx/+VbU3/qBLOZL+xgWFGkesvslNJEX4Ie8j2jzuSGrmOtw6YpoedW68BV9A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UQghn5Kc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iTc8GnZ1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S3aul72477169
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:29:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IkZs7tyPEWNnrup4YxmquY4F
	dN1R7M9CfDJtzN3kWCs=; b=UQghn5KcljioxLmSw5iJdcxRr13qRO/pVtJb57se
	iqvDoRqxQLdrO6gfCB6pPeP/1p2utQ2aF7wkRlm1mJsfEzHKMhQQvMqxR4dSima1
	aQ+3ChtRxrEl/1YNly0R1XaZdCvfT0vhxjc/k52sJAqc2cPKiARKhwka+HjMremM
	QUV7Rv9bEf118b5ULTXe1WGoSypmQKZPd24MGQbTRadgpivwd4+0PKreZAFoXo4z
	l9/jd7ilW1sOWu3lHlIifDH5m/qhBZAovJ9hoxhOuBsqgmJoLG0EakrJVHQlLpb6
	cKL6SUxWQgLM7seBrMFmDVOHIWbq9n0JrlrzbZAuq1espQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by20y2gtn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:29:33 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-894709fbae5so217535416d6.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769588973; x=1770193773; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IkZs7tyPEWNnrup4YxmquY4FdN1R7M9CfDJtzN3kWCs=;
        b=iTc8GnZ1Hq6YI1CjfZvy2R26nujQNg1/8r+M00v8fsIaOvKgMSqRjSbO/H+ltItA1E
         ABkOMMVYuL7PU9DWt7RkFmtV4VxZiAYWQfhNWpXund4LshZqpPeqaonudNfzeOzmAxtj
         F7GqAlfxJ7ZLRIfQiJgUKI48aSvD9IRN+1owUgMXTQ7OtmBdsNvKqxoRF0LTz1TCdQ/Y
         LffyEOq2kuz54azpuEbEojPUkm0dKT3/M5RJ5XaYUdtiJ71LBVGz5CojnelqMkzuTQ36
         3uSCntRYU85vmgE0HuS4yFmCtd4qPZqxiHDSDhtUF/x7iiEMGf+QTVqLP3V0KD8p5c0Q
         SLFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769588973; x=1770193773;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IkZs7tyPEWNnrup4YxmquY4FdN1R7M9CfDJtzN3kWCs=;
        b=L9J8QXXaI+tU+4YyPkLEFEOggSGngRlkxjIKgLGQeZcexc0qzW5IECRerB8aVFp36g
         iHrxofu68KFWu487MF6K0aoqeWjMsRUgZCWeg6jc4aeMuaQj8MPNLLwcoP8AjFV0LdU9
         NILl/yC7CGoRUttu4XLgSJV5RkIUe7GgMzYXrBxvJI+ZRNDFAmNuQvqmIf60iW/Qy3q0
         J4ahgtUL6Qktc6302tUsINb7zfaKC30pqsc8lEhbd6COE9HJGhwRZAFpy+OLaZcM2BzE
         jp3f9RIBtE1Ch1Qxy/T3V3C2UqY2xlquQbBwKHw0wLCkJRKYCHJ+D0Q3GYykig3Q3nXG
         sKWw==
X-Forwarded-Encrypted: i=1; AJvYcCU/1n02UQepiZiervfscWAAr+iU2v3Tt94frJBRLjrdcQXt5oHTVEQZx0lL2MRsQ2xgAhyuqTbuok4f@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk41QJ0a8+0vZ5YHSXY+/HsnvJf03fAUr4UKOM4bXhZCojQw3y
	VuwdtyPeRq2DU5Y5+H6+gUsQdY5CK/J7FuoTz9k50ua1ssroOtwQPqXEpMG3bIaE3xz6UJPfyL0
	7SoCx3h6mpQpVG/0XVUdbHYh9gygMxrktSlWDuVX/stKUlpOuPwaDaB7c32m1W8TZ
X-Gm-Gg: AZuq6aJaoWFsI5P8CyrGz72ZTQ5SYmT3eACm/5IWyqfu49uNJnwq/wi5r2udXc1qVkN
	21wnj6LFnz36siBC/NbKYA8obv1F1gTO+pUExrJEHCbZcyAbEGcs2WdHz58h9kTeGDEdzA4Si3N
	07PAd5MNMI8LnnIT27KtJtkPei2j92RqmZykeHYBCpQLiqGCUkNWJgql7yLevF8sii8nSSC4mT2
	EngIKU78MjXxVEsiCQXSqxLXrw8DdXYI+DiHHcMEyYvjDXJo+gSnVaAzkh0wH61XlhGYQkw37xe
	UH0kDOLmtd5KC17QbNnA9JjchXYc/07qRE+5MCYoJQvtBaCQfc7/E9mhSy9wL4XMg/WvcrH3apm
	vuwYg4HMcr1Q99KpmhzsodkWq
X-Received: by 2002:a05:620a:c47:b0:89e:99b3:2eaa with SMTP id af79cd13be357-8c70b84ced7mr643825085a.8.1769588972761;
        Wed, 28 Jan 2026 00:29:32 -0800 (PST)
X-Received: by 2002:a05:620a:c47:b0:89e:99b3:2eaa with SMTP id af79cd13be357-8c70b84ced7mr643822585a.8.1769588972283;
        Wed, 28 Jan 2026 00:29:32 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066c428basm119939545e9.12.2026.01.28.00.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:29:31 -0800 (PST)
Date: Wed, 28 Jan 2026 10:29:30 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 06/10] arm64: dts: qcom: kaanapali-mtp: Enable ADSP
 and CDSP
Message-ID: <dpqpsvqhkx7fp5iigm4vcemtwfpevxhsmtnyvtwlns4lu4cur5@y4qn5gnfpsb6>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
 <20260127-knp-dts-misc-v4-6-02723207a450@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-knp-dts-misc-v4-6-02723207a450@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: IihpN2NZ3780cIDfe1cFso5LgJUSSfpT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA2OCBTYWx0ZWRfX2q7AhpH73hVq
 60La1fJ1cVsr7rSlWPiCQDLbpzifia+/4kyl4nxafGXK1Twem2aG38W1FIERrSVAoCd1FVCpJRb
 AHdofRYv+3ny9cUdI9l0Xin5iDYx6Z+VLjeRIZK8gxty0s8NKo1TbhSIO40P+f3sK2waOSmP+m5
 k3U/lw1cCjjwjIvZLLLVE2tkKzgWEGh+8caZw5CIpE89WWZ1y6x67Y0YpGdkEVkST3fOtl2K3u8
 A8yvMx6RoRzeDcG12PkWxvEQyGOT8MMfK5asBJiJX9zW01FvzMH9xPpKVAxfbvh/NMXZZ1bz+IY
 zZ+0oQyFOvCgqORIDiS9Cq//Dc63Ijd1Z+b3g/3j9+KwSxAEUDJBLiLF2+5LE9iwQULEqfdu2xN
 rlH6j9s+Z7T+M+vahYobwDVwvidIv/MjuiuH9NE/Ve2epu8wT4WsHOTQVm1qFXerNxDRG19oa7E
 tiE+6QSE+MNWpbccSIg==
X-Proofpoint-GUID: IihpN2NZ3780cIDfe1cFso5LgJUSSfpT
X-Authority-Analysis: v=2.4 cv=IKgPywvG c=1 sm=1 tr=0 ts=6979c8ed cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6vzHqKrWbn1YThyMYpYA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0
 phishscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280068
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260235-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 382439E34F
X-Rspamd-Action: no action

On 26-01-27 00:34:03, Jingyi Wang wrote:
> Enable ADSP and CDSP on Kaanapali MTP board.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

