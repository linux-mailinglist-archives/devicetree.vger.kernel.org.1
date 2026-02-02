Return-Path: <devicetree+bounces-261952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMBfDbMLgWkCDwMAu9opvQ
	(envelope-from <devicetree+bounces-261952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:40:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88508D131A
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:40:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD6963041BE7
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 20:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99F482FC011;
	Mon,  2 Feb 2026 20:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WvGbhDif";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bz/SleT/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4022D028A
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 20:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770064559; cv=none; b=LtwJFQ26qu9Y8CeiUvvRqsrSrdPcWG1+YsQoDVTMsD8jXVzo7wREda5J/c2ZuqECJycsYNrdZ0duQ7crwGbf2C7sSgEm6EXEQJ62ckeJMKluBdAir7z8pBqupjguvTzKMoSDl/xln1Vbd5pK+pcuPF5eJMHWqKL/QVWukzM3W4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770064559; c=relaxed/simple;
	bh=H5UIDfvZDYPWcYHdhQVeTv8EiaFtcIq6QkVj/IuBjFk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MzU+emZCiyEdWV1n4zeAcPLP1ZlF7ISNe0m6x0899ETqKdsrOd7pCPcA/78ZWQQbXJitIJPmFnGhTgWSiAaVdKn4rRELW+I6mBGpnm3hE6OUluE71GlhVNIHdjYfr/vRT96ue4DOCzMnQxHAg2VhLh/undR2oowB7y8QPjYBcm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WvGbhDif; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bz/SleT/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612CVh5q2357296
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 20:35:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=slwaR0wTtsDqaLIEA5TT99Ty
	E26IITdacHcAuzrsvRM=; b=WvGbhDifuDma9Y8uRCIOTD/M2/UXWD+nzHL8zNKL
	fi/hxMdejOd3PUf15miIT9koYUAmnWU6lP5Fj/u9f0qlHIpPrQAmCxl6QIXLmmje
	VORBI48XHOrYrgxvv43XtCNPpAOHxamPbjXgEfJOJR5t27r8bLrNiyki84kj3GK5
	LxJJWRY/Orx2wHccv319cRp/twiU+R6a8h7tucGWfER75GKhcaONHYD/PvjypwrT
	mQ4zCP9zEh961BeRwIh/r/nq+T870s+m5JUP6yrfSwX4bpzQHyvg1HWZoP8Prn4I
	ucfcbrsb8NxaueACDOEJ/HsRe602xHWel1BSNGtDNUktIw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2v0m9g84-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 20:35:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70b4b53e4so2137746285a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 12:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770064556; x=1770669356; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=slwaR0wTtsDqaLIEA5TT99TyE26IITdacHcAuzrsvRM=;
        b=bz/SleT/laJnwXP7HYNi2XuLDxyv92kmE2ZBgKLSVJeN8ZJG3H88gZoT2qFYTpwzRW
         B6JvEaxairBC3ExcmeFMmiXZO8/jp/qwIN1XOKDEc22J9Vk88qNgYI6a06BI7SAp86d0
         /WcITCdfJgbOsNM73eQB2+dkzKXeq1LVnZF+ymaUitc2//si5wD2T3OyBbSud0a1/aCe
         qKUtZTmKk6LytPS5qcQbDcxD/7HS3Pll/nirMD/g+MzBOFdw80Tzqq4DhdrMb2n0MlkI
         ukxyHldMJuwOyVrcTJqd9bvpyY7sXV8Zi+zYsgbsAve7G5zh98knyUxVsSf7bQduSC1J
         /vPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770064556; x=1770669356;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=slwaR0wTtsDqaLIEA5TT99TyE26IITdacHcAuzrsvRM=;
        b=K5m6D25kWzMrrlpYL0nYwcQKqm+3pE5TCB6raMKOINnV69BKm/+0eJX3ioQAKcMlGX
         Ws11xiSv+tO5ZsUoxLYoCIR6va8WfWYLh1UknubD3l80auBlk/KTx2AyWMehdRZFWMhO
         tMa9KWJRcvgsik1BYsV3Nagj1qWw+MEpzEuUSz7ksWX+6WUVbt8v3pKZE7lo6xnrtGHr
         2uMabEwPMLkZcdGArwOmQqbr/+dbPSzO1yqYLNgESO4WJsPZMOE0wkaSkccrhzrpUxZr
         KUq8uXn45zVBHmW2TZdEt2Ev62IYPw7N6VG115Z6XETYgGcg4bErMn4pJbPLj47As1Vh
         Ykag==
X-Forwarded-Encrypted: i=1; AJvYcCXcQQut03GK5NOoSVT4mxiTHmDZv7PblL/yu1mCZqz8b396E4XvxhzveuxT1jZh200qF5vBdzUuJYb+@vger.kernel.org
X-Gm-Message-State: AOJu0YzSJgrkFgyvRXDaVqThNRtU5IKakGFuuKL7u3cGqfVy1AoPLG1C
	AgisVi+9Yoaa1vDkja/Dk6j17rDz9QRZUc+el2GfOHtHszgrPrZKLiIn5gwbnxpX35YHDWFmuaZ
	kU9bhNQfBugGBE79uyHGdwO8GZxuEioQ98LJdkDNZO29dHJkTrOgIu72d07tMwGS1
X-Gm-Gg: AZuq6aKk4dV4iwfAENwWL2O7ZFNUlkUkhE7ErnkdzTg0tkFSpMIIwZYdNklwE9iVt89
	uc2zdHTqphqk/2/swUlnpPHcfkCxx5tLZJii1hblFncI52FIMXWLl1D9Mg/8hcfzKAnxmgtdBlb
	i0APOA65p4T5UwqZOzmvi99gWxnU2HvecLJlIc5T0HfOwxzTpy/xvoo8BNdmDTrHRTI7VM1i3BW
	XAZ2+RKdE1NDPLz6phjCULdzy9UFbB5A/2kGnX4akD+1KSpF7NPgLtKp2/sdx69D2VT7zzYvk9i
	7v4NVjb+apYQhtm2yoOtViMq+VFS/qzNQT/hOZXbKA40YzkY1AznhilX19a9A62Ybvj9AT1Crpp
	fWsR3/GQM/8N5T71ph3AHfhhZRZri+HAgZ4Soam4Nuggi9CnAp1Srz/Xu7Jze4bbbGgT35QyMqG
	Nq3FSRgCE0C8g8PsC+2L38sEY=
X-Received: by 2002:a05:620a:3941:b0:8c7:768:430c with SMTP id af79cd13be357-8c9eb301a21mr1801976185a.68.1770064556481;
        Mon, 02 Feb 2026 12:35:56 -0800 (PST)
X-Received: by 2002:a05:620a:3941:b0:8c7:768:430c with SMTP id af79cd13be357-8c9eb301a21mr1801971585a.68.1770064556009;
        Mon, 02 Feb 2026 12:35:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625c8dfbcsm32799151fa.22.2026.02.02.12.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 12:35:55 -0800 (PST)
Date: Mon, 2 Feb 2026 22:35:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] clk: qcom: gcc-glymur: Add video axi clock resets
 for glymur
Message-ID: <j2orj4ugtgqkt32snnrejtonopt6h5lwu4yiaqocxq6v5r65wu@kifajuvaudsh>
References: <20260202-glymur_videocc-v2-0-8f7d8b4d8edd@oss.qualcomm.com>
 <20260202-glymur_videocc-v2-3-8f7d8b4d8edd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202-glymur_videocc-v2-3-8f7d8b4d8edd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dceNHHXe c=1 sm=1 tr=0 ts=69810aad cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-zE5Bsz_LXmV53O_SacA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 1E-Xeq2fZpdOeNy1FwoWdmBFdfO0yrmF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE2MSBTYWx0ZWRfX3sFRRLep+Sa3
 AtrYKwX+2FeaL1WsomCP5YxgVKNkw2DJVTqTOQ56rf8SVj6PNqEcwJjj0NIpEl/2o72Nn+uI8vB
 +2mvDO5iPjvjXQDe+q1f3RgsHQ7Msq6umK8Homub4VMMEHXrAzXGIGTjyKsrPCfdKoeGfK5Y2Bh
 xHlDEtiwys1O3yefM9HaVspfogWrrMBB+NGgxmHpPdX3v1xPKa0aTsVKT9Q5GI97uolOrTYqkMK
 Uy5kRl1bn/26s/U4DlQWre+XXG6U3RMlugFGxpfdHxiw0T1xvff/z+8xp7yYQreKpIREk+iofZ/
 0Ac6E2HeIGEMIsQlb8Qw1KAG2CNPBCCy2NEFr/awgBjKjWsX90bLaShxrgZh+nmYI6yB7S1696k
 a5wixAZuZJRdxDMIuPDIu1Egj+qnrcPnUwRCUTEWBEw7VvnV27vaJuZxk7ackBcLn9twwnoJwHf
 BSLcuAMIufUrZZoC5kg==
X-Proofpoint-ORIG-GUID: 1E-Xeq2fZpdOeNy1FwoWdmBFdfO0yrmF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 phishscore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020161
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261952-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 88508D131A
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 04:26:52PM +0530, Taniya Das wrote:
> The global clock controller video axi reset clocks are required by
> the video SW driver to assert and deassert the clock resets during
> their power down sequence. Hence add these clock resets.
> 
> Fixes: efe504300a17 ("clk: qcom: gcc: Add support for Global Clock Controller")
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/gcc-glymur.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

