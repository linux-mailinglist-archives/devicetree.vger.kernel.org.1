Return-Path: <devicetree+bounces-267803-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JRXD3V2nWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267803-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:59:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3CF1850A3
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 009523064BC8
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 711E7372B47;
	Tue, 24 Feb 2026 09:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dGARFrV9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Js1rp2om"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B633F372B32
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771927145; cv=none; b=XXF8ozGiUp08aQQqBV0ZjbS77KqTcqb5Ou2bMmlG5gu4goJGya2uj4OWJ6/o1o/LKqnIdVSK9CjBd40VmzSQDcKqHrJv5S2TTBQ9Ejk3OmULEwpEdtZjBOY3C7AGlpVnVYPwgy8No2oUOVVrG7KGl4hBORkIfvNSNWRWhWYcYWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771927145; c=relaxed/simple;
	bh=QjqFWY+o2kWW5zo/B9w3edAEDcR8foX52todwiJavsw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mXzOm1z3vJp4Rb31zQeZ5dw5YTfLe94fFaJyR+dom3fwOW2vaKuMC3HEKQltDg815ARPObSEXIYZLQ3KXk4pUMR9ef+q9SHWR+SID/7ORhGomNeS4b6JAAgbz/LK4v/d14KXwhoKXph25ej7PZZ/y7VRlWtxw4eqcIH2ZWBR4es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dGARFrV9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Js1rp2om; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O9sfR93522835
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:59:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rNIdAlgewbsqMZVVKF1l6lth
	ZYqebEF0QEBiIkcCKm0=; b=dGARFrV921hiUVDFkQAVc2J4D8YpEFDAG9uIQ6Ps
	oTUyVGHUuD4c51fo7OhAKGM6EXabhdpWK/E5RPqh8dw9pG7iK8DNjuTfmFpTUWB0
	qn447itTEZeFpaVCDtXOEwYpS780wcbvqFmhQ42qksOukA0haznUQMGxyhE3a3Mn
	YUooBDqXbMWma6476FIZxWk6+2iLK71MUjPmFnePpq0U8qdDirkwye+4O5JWurOy
	bQ+fRKTRVPwOIDXSMjJrw8a6xY2eiO2Ct4l4XC3TRQex/elhzl+UfrWZ/ooxnbnN
	WbxRDR8csQlE8WJmZNhFJk1RSMhAfEUmhbmW2faVxKQzwg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8rbtqx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:59:02 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c881d0c617so4496667685a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771927142; x=1772531942; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rNIdAlgewbsqMZVVKF1l6lthZYqebEF0QEBiIkcCKm0=;
        b=Js1rp2omfOySfFs83oOxT3KfqejSAf1NF74mfPXmgodWa7yCuW60nsWshmVNiVwu4S
         oma2U/6wb7RVIt83uQXZDaSdFGIYa9yap3Cna41iNv4njtAFSazjC2cH7k5BVwiMLFi3
         jqfOttE4SSuL9pnIg8p7r5VuW7yRjwAu2z6flXK8ZK0U2vGRyArWzFFkJlte+BAl6Mzx
         mR1QjKWB8qPIIElsAe3YBh8opgHi07CMTrGPJ+WquuhcZaJUq+EwCIVAiJZDovNcaPkJ
         iRvmho0pvGYsXFNKDhSCNWhojduR2YRQLkurFtwRliq1t19HOE2lgUWYQZ+uF8ZWov5T
         sN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771927142; x=1772531942;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rNIdAlgewbsqMZVVKF1l6lthZYqebEF0QEBiIkcCKm0=;
        b=d58P8rkIwSSlOntJuJgLXSxw8jlouAD9RIm5qPRIhRhVSgUsU22eXfC7VodoNlbzJt
         QDssT0AX64E1P7cfvaLfCjDAwnt+B8NzSTlC3n0oKBxmDoMP20JLdMhyx4GG0B7BTqVu
         cM209DZGLs9Z5+sSdQy/tTn0Ev/dTxOwLxk/0cOhF6VA+xapXWf32peIJ/a4mnzH0k1j
         UhlS2o5mwhM6Yh7HaLKV0uWUewGKYzvKxlu+vZsjl/stijs7TcNfmal+Y2DhYnl5LEFe
         sBJYe/87QiPZ7CrLT/diD7/hOa++w6wt23/59ayekSqpmftL1jM1YWkPgRizCl/ETbfO
         J10w==
X-Forwarded-Encrypted: i=1; AJvYcCXAgKe1S0wAK1NtIR/nkNDSoMl6/l3QYreurhaq+6sgk087nO6X8WOGTQbuXI07wlf4Tjn3xirb1AEK@vger.kernel.org
X-Gm-Message-State: AOJu0YxcDhBfSXtoxbC0SYpf+QBagiiOIPjy/27OVs59IUkQQEHFxUIc
	mkDzD4esvSI7+s4YvtkQbAPBRhDDGwgwYYQaiN+nESVt75ZrqsRovN1y6vcV8fubcFkzDnQ8PyR
	BeIk8UT3AYukLTn5lYz1rz87AONzMw9BADASFzzbqQ92ThjQ6Tl5EF4/w9Y88zwCM
X-Gm-Gg: AZuq6aL9CJ8EfZ9Zu11/0jEv+O7Pug2QOmEnNVcpWMJWCCg104QEgzcJaauZC0pemyX
	MnRcuW7bplHHNnJ9absV19UZTfTKr0bdOyoLX8gQ5NnkrrqzGBVXMi+qrpklIYoWaKHFBLigGI8
	Il+YFMNcs4RXSpWFqsVmeYmFZIV6N6W29dQfO3eXhq2VxdCm9Vg9UTNoZIcwwu8g5yDzSC4k4Ms
	kneHJIQGYi1PiHEvMGnSHsQUhUiLA5lGv5E8Ge77tamJ5zyrWaNvhrQgl7E1EaL0oeUb7f7vNvB
	XgV52STaNEP+rGd6yhZ6TLVgSirZfZks+GZg9L+W22bfnOfvufATm4hC4YkAMAZAC32fxcqWpNB
	dYo957SH4Ba7fDnHeHNjVsZRG0k6pjU7zNIxkCdDyT8JJIOktCbkTXlc22dxmdwkMg2qdg/3CxS
	rMSfoK7CL6SCp+TrebZYFvMRQn3Yz79Lbfrz8=
X-Received: by 2002:a05:620a:1994:b0:8ca:27f:3a74 with SMTP id af79cd13be357-8cb8c940aa2mr1505525085a.0.1771927141837;
        Tue, 24 Feb 2026 01:59:01 -0800 (PST)
X-Received: by 2002:a05:620a:1994:b0:8ca:27f:3a74 with SMTP id af79cd13be357-8cb8c940aa2mr1505522985a.0.1771927141311;
        Tue, 24 Feb 2026 01:59:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb3ea50sm2118481e87.57.2026.02.24.01.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 01:59:00 -0800 (PST)
Date: Tue, 24 Feb 2026 11:58:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Maud Spierings <maud_spierings@hotmail.com>,
        "Colin K. Williams" <colin@li-nk.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: x1-vivobook-s15: add
 Purwa-compatible device tree
Message-ID: <vwrmgsmwmknvnnr4ohoivydzpkec7xyyujkodw3osnisueawb3@4oywtnu2hg6l>
References: <20260214-b4-vivobook-v3-0-3c88065bbf77@oldschoolsolutions.biz>
 <20260214-b4-vivobook-v3-4-3c88065bbf77@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260214-b4-vivobook-v3-4-3c88065bbf77@oldschoolsolutions.biz>
X-Proofpoint-ORIG-GUID: 62uv3Ez8N-f3bvN8NPadfD4EGZxA_s-B
X-Authority-Analysis: v=2.4 cv=V7twEOni c=1 sm=1 tr=0 ts=699d7667 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=-Yt9tNsTAAAA:8
 a=gxl3bz0cAAAA:8 a=MmgdznzwAAAA:8 a=EUspDBNiAAAA:8 a=LUVO1NtX9_R77zlGJLUA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=kiRiLd-pWN9FGgpmzFdl:22
 a=bHFXaHSPdiGCh6GRCv3g:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA4MyBTYWx0ZWRfXzWooYn0xLm+3
 7moHiSsb0W0G+M/+J8P/mAjp0p95bv4/Gik89b+JPRbS6O8QPJ6tCX+xAKCUwNYwrkKxgP7ISiN
 444nrQmmhrHatLRC8F1nFunmxrvlygXIup6xJyZAIFwvo2bzpb8GZmLuPUoaufuMpfHRoNmoGSa
 cuMq90WKoVnH1b314AaLq7ZNZJkui3+vI6KV8heeIpDv9+7AHMFW1gfg9pakvPVQyApu//R6pgH
 8b8rZA7sdWcHDhX0SvW4dgu+UXTKEis1HU5bX/1iyaKN6OwrgIZ4tJkg7Rpll5AUqy0KYqKM5pn
 deIcry2+O2zXWPSQWsUcwzFFFL8eDGkmx7gkDnqZzgK0BDM0M9lB4S2e8BllEi5pMGS6whjpdYz
 r/QeliMy6FdGSn3I3yPhUAlMLLC+k4FNX9iT4DqaHFTjsz1EdN6rtBQAzfHYbpkmK00tHhZ4f+0
 pBCz6rrQiKe6GvkvbrQ==
X-Proofpoint-GUID: 62uv3Ez8N-f3bvN8NPadfD4EGZxA_s-B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267803-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,hotmail.com,li-nk.org,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,li-nk.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DA3CF1850A3
X-Rspamd-Action: no action

On Sat, Feb 14, 2026 at 09:32:56AM +0100, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> The ASUS Vivobook S15 (S5507) [1] is available with Hamoa and Purwa SoC.
> 
> Add the Purwa-based device tree.
> 
> [1]: https://www.asus.com/de/laptops/for-home/vivobook/asus-vivobook-s-15-s5507/techspec/
> 
> Tested-by: Colin K. Williams <colin@li-nk.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |  2 +
>  .../boot/dts/qcom/x1p42100-asus-vivobook-s15.dts   | 44 ++++++++++++++++++++++
>  2 files changed, 46 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

