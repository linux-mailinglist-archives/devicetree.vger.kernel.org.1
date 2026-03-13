Return-Path: <devicetree+bounces-275423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJr1Jjk5tGl3jAAAu9opvQ
	(envelope-from <devicetree+bounces-275423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:20:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD88286DFC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CDE05302369F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95F1E3C454B;
	Fri, 13 Mar 2026 16:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CF9qfFnT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AMC1TfLu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50BA3C4575
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773418777; cv=none; b=dOOhwKx8yBZbOma7k/PmaLXOSILEa93by9ofjhBD0u4nYIAMKOuMfvbc3QdfVoVw3fAn/4qylex0YCS2U0RoIhjOLq4kcN4ibTmxQAQ4x9xgtfZ4TjW3S/1J1zUcVBxSXwTZXeXgCJEgu9xBOtsYPtTmPC8xUosEPUF3pQtBWuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773418777; c=relaxed/simple;
	bh=CUk+1Eqx8Eg7Gj79EP3JwQm6CTzkmToq1Tzgpw8RQIk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EXXJMfcLEQ9iCd120mYY+ZoVMsH8sUxtesQgUNXBOSR1JDOtUWO0mpyBh/iiuP2F58K79+kaa6sOQXA+RvU0pBwF/N9+iE0ZbT6K+nsCvGMAzBRXdCzv5r575hWsgMuhd5FOSM1d4x+YLgyARv//yx9+Fca7UnNnd67Ac/F6klQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CF9qfFnT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AMC1TfLu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DAmtor2390864
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:19:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jH5WdttmdPjFQXmMJeR4b+YI
	SdBHMwDeAfB+CsyH+/M=; b=CF9qfFnT4OKerIc5lhJhz6zRjl2pL2cU5hzd3TRi
	Q5Bp+Kr4V/rb4rXgxvUet78rIkYKhjPan4cBb8WL2OhEyBeMtXiCiGH77Wq+4cuR
	FtjaGS8P60Xl8o/R7k/+kk64hEKXHapUevjcoxZtxc+e5uykVKLkKC8U97YjPObz
	nj2+yTERYImClxRfk+QhMjouJWhgxSaUUgMQyNwZW/Sw38E2aCYEgdpex4A9pkyQ
	rDn6foGLfExZHrmJzv94ppC7f5bRl9IchYTbX0LmfL/P/fF/y8+WbPMl4mjgK2L8
	JQMJ57WEGIWKpwpe3RZ648kAyvBkc9SFvTVV6m2+Kj/Zpw==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvh5m936b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:19:32 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-948476b92e8so4174066241.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773418772; x=1774023572; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jH5WdttmdPjFQXmMJeR4b+YISdBHMwDeAfB+CsyH+/M=;
        b=AMC1TfLuUMPFTnKMiSPH8Ihw7GodfI/pKgD0ifL9NvHKmeuYfrQoO4x3dG4sYrXUXW
         6P3T6VKojwnmD2r0YWp8dJ/mEwOK6p2uQBNRw14McTZfXKqkDeCXOEJwsFfyMMSlCPq0
         K1Fnds7okyC0HD7lo9kgSWfn0hvDM4p44SRP8eLffq2nEN7YEPb6RZU9NLvQTWSkzM0Q
         zeOtBW2ZqD2uxpy3ePh3pSE+pEF2kh0z5/oU4vXDK2fohjkJ6XoReA/l3Fxd3nqY8TQ5
         rOXJvD8rr6KhQ4LJUjEa+OMZ1YXkNVao8a4yIpuqQARN2htHYkcL7btC5xJeXSlQzNOb
         iDAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773418772; x=1774023572;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jH5WdttmdPjFQXmMJeR4b+YISdBHMwDeAfB+CsyH+/M=;
        b=gT9kjYRnEvGsl+PK/+nWzweMYlR9YiW0fB8+BbCPXjWxlqmzr6MzIP4GLZThgePXSM
         qGmO6bV62m1hdHqTmZ7cWlKk1YnNE9D3pkQh3N/QFlPm+aQyPL0br9xJTMncdu6zKESf
         8blvhTUqsGMdBKXjnrXFu4OMHXwrkpr6HncD6sJrFwN6kW0fiCwHtgNdLj1v3kw4hhFU
         5fzNYeKMjYkfuBQNNNPwi3f/SJt7cbP9Qh6uy8GEMtF2kermw+hjH80WI738YOD8F2HJ
         3d6SABGfCfQfKJhYzSz8FQ1m6czmnXYt/B+WHdLZ5aBaMKrJFczVmrYaFDNr1n/948bn
         tNiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUidQEvedrR82Vh9ir2gao9HDjfWQBkAOzayax2geJNBRqEC2a2MM00cs4K/iZTTn0aKvfizUC3ojAq@vger.kernel.org
X-Gm-Message-State: AOJu0YyH4scpENB7AApAhtCBkckZkzudiiQY2Q2XTU+jBivK92JV6Sz2
	+jUGtJeNk9/vLDmC1T5eBO6H6Y2iO6+a7rSkWBd2jCHj+50SeHn6vnrF+WMKgKWEB4jjjItrtTc
	+csfMON0HsBzmENJW1dfp/fGRPCk5p0dH4czQs6FohXqSkUmuEOgjr+uazjadJed2
X-Gm-Gg: ATEYQzxHTelnNNLb4nIBlKJ1VCM2Bl3xB4/NKv5zWG1Q02lIk7TjsuhjPbVPz+5q/6T
	BvHMXq3PjW8pMtDbk7+aB9lrwKnr9Ks4rQHbTj7wivwOjQamO86EWAO3o1IzVSco3kmIoCKMdyg
	P96amAfshvBd4P6ex4wAz4GD5TqZRqJc4PA8va1WK3GUw91KyDZP1ZSTrAe+WnU95gRu6yYoRqN
	pEsAPEgmY2r2Pz7TI6y6AeafKy9Cg80X9bczqlJnLZ23pXxeysnhEbGCJkZdNQjp9AreK+74ezF
	EpEARE8lzGrFTOusLHPagqWfIUwU+X6AgjorDKk5/OPJ0PRizhV714qlxqnrRh2nSE2W2hcm0bb
	oaz9xa80qLZLgp7Gxw+kui7ZsQw3woEFiOdDQKrFaA72vYTlrzOb0/+v+ySG8BiwTHq4GP2dKst
	uMxhkT9dpDsWSy2ZT37kgeJdTNA41dsWdOKhI=
X-Received: by 2002:a05:6102:160b:b0:5ff:c5c8:2734 with SMTP id ada2fe7eead31-6020e528099mr1558472137.25.1773418771880;
        Fri, 13 Mar 2026 09:19:31 -0700 (PDT)
X-Received: by 2002:a05:6102:160b:b0:5ff:c5c8:2734 with SMTP id ada2fe7eead31-6020e528099mr1558462137.25.1773418771385;
        Fri, 13 Mar 2026 09:19:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e7c014sm15622661fa.44.2026.03.13.09.19.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:19:30 -0700 (PDT)
Date: Fri, 13 Mar 2026 18:19:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        r.mereu@arduino.cc, m.facchin@arduino.cc, geert+renesas@glider.be,
        arnd@arndb.de, ebiggers@kernel.org, michal.simek@amd.com,
        luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org
Subject: Re: [PATCH v2 2/7] arm64: dts: qcom: monaco: Add missing
 usb-role-switch property
Message-ID: <pkst2oth6sq3humlpebtjufchffln3cdvkt7bhtenry3g6js3n@pd54pwuzmvro>
References: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260313103824.2634519-3-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313103824.2634519-3-srinivas.kandagatla@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: SWvQTaT1_3Ku0VBULMYFldQDQvMcnloW
X-Proofpoint-GUID: SWvQTaT1_3Ku0VBULMYFldQDQvMcnloW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEzMCBTYWx0ZWRfX/kR0da/K5fx2
 5wppPOiYU3zQaYI1g890Ms0BS+VZr5dqpzkZrjY7LYPnxivLTdBDrzjvUWi/WGgfr1Uo6150xQV
 MWyFlh4jgLylAH4+32uqneHiV9jkK0NLIzjnr62CKklQBIVfAw+ucaKM+57Fpb1002auMVyDAAc
 ZGXcKS9+ChJiCDy0PyR0oQGmeT+uCC7IY/Vfu0shgGvQnBEA5diqGiGY0n8LO/JsNRmx8Rck3Hn
 nAjLCGg+eNkQWGfGN/h57UhUg/PWFPugLlDDg2NvvMJNIGpGiGGm1ZkFgk/hOYCXwgwrOxYFFkt
 ArIa1ndKRDgbRkMIKE8sx4KGAw4PGMmUZFcLPwhZsqqkGGpYk4NuYr8jclSNrm97Gesz/85+TPm
 fO3952f1lnXnttPB5Rwjjh0mxnL+GSudHYpooGXQgTSKeSp2l5UnBfx+OhgOqdLH2SANhVCl1RX
 Sytp2BHzNTjMxrfXGpA==
X-Authority-Analysis: v=2.4 cv=S6TUAYsP c=1 sm=1 tr=0 ts=69b43914 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=nhzPNyzC8DtltQpxoCwA:9 a=CjuIK1q_8ugA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130130
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275423-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,arduino.cc,glider.be,arndb.de,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5DD88286DFC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 10:38:17AM +0000, Srinivas Kandagatla wrote:
> Add missing usb-role-switch property to usb controller node.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

