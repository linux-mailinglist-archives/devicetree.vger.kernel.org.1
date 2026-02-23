Return-Path: <devicetree+bounces-267350-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJtbEPAwnGkKAgQAu9opvQ
	(envelope-from <devicetree+bounces-267350-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:50:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D721F17523A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1C1C630175D7
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F1A35CB98;
	Mon, 23 Feb 2026 10:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lo4j5Sbh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f7oV+ihM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D1318FDBD
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771843822; cv=none; b=Ohoi1yt2NrMTk52pZykB7sIfT47zdnNHCOEhVknNpX1CgUSNOmr6iGxC2tRlcdtCezWjmNjB2464KUXRT418TGso/Q/wZngamPFpnLJmFzRlvvCHhuDiLoldxvx1ktgodYnX5tUCQRsaz7ijEHiFzgkgExAN53f1P1DLVELFn6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771843822; c=relaxed/simple;
	bh=dSP+9h330NFEIksoIga0TIptWItXAQHyk0hhGWOUznQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MQ2UsHTyznkTqNH0CDeK24bSL+UGgP7I8wLz1r3A3awomECvQYu8isV7L02qVXjAIcKKCKGQPqR6nF+FYAHvaHTPvJMktNY9LXep3d1PnS6lwOtLMjka8C37Tv03jfdTbqTiCPE+K9H8UcQ6J++sZX5R3eq47hKEZ6/CTrAULpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lo4j5Sbh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f7oV+ihM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NAYVOx3409238
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:50:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=G6mqx+1LMT2Uz1tlKLAVBpKh
	BRzPdww9mSp6+0/ywwY=; b=lo4j5SbhuGugClzTcLyIvVLCd5A57MuSyQxDMyG8
	pbvyqY0IWTypYu1WZH/ILmgQZwlhK15pme+LBGqgijmlRWvIYIvwArSizuQbR/L8
	8kXSEuVAEjB+WqsD965HRiMoKydt6Qn6be76ztXJr1z3XgabQlYswe4JfnfBk2ak
	7pLJo/AhTCoSp81fqT6W+Z70D9/Nh01pFdivsPKQMsA8yZO4Xlx4Dq6J9b4YWych
	jGhxYGfKJlLeU/35aj6CwwbdsQGAnj76u0F6gWFNz3agSB9s3JQ25KQQtFa9JITx
	XIp9WePDc7u1hCTzDZBA4iOZw4kbRP+hfCS9DUcQwUniYA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8tr1mj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:50:20 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c71500f274so467549185a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 02:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771843819; x=1772448619; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=G6mqx+1LMT2Uz1tlKLAVBpKhBRzPdww9mSp6+0/ywwY=;
        b=f7oV+ihMPEFpW2HjArenZOQYlwQdF++KidGwTN3p3leCBOGOQIKsuyNj6EjNh2jZz+
         y3MQ0dk1ft8ZZw04P0mRHUB8JAl3Yc34DOkdTAWmIHOoolQ7Q2609ECEIMrwJo5fvjNL
         76P7FVnbTR8M5vkC2VOyDpJRmoT4ousElj1FBasDxLXjT+9LCfCNiaj0dPVyZ74Rl2+G
         IZ4gg0CkQKF/SXt1XWo6ELysJqwl1ZiAp7A/VDbW/G4b6gaHBZEkFoKvzdv/Fzzgp8vz
         j+uW7dPhClS+cn+kEA2PQyh/LaThBc05Bor4C6+ff9sSdEIwSv5tY1IXMfrY1JJrHW2h
         I/Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771843819; x=1772448619;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G6mqx+1LMT2Uz1tlKLAVBpKhBRzPdww9mSp6+0/ywwY=;
        b=ZyFrX6f+WXqazU4SfUvwXm05AzVEllOQPbkCN2t6svHn9BPBJE/WqWF8xzfYAKRE0j
         /kD1mJnI6JNRZzgtYP68J9yBxaADs7OfLQzMYpeCgvy+FrbvlPkWrJlwvEr3mXECJ99r
         gBBYLslt6a/+XQylgTmfhn2tud79Wn85Cyz9qjCBJreZzEnlNmD1GwelGNR1/vrsRT02
         j9v7dPv5H8ZS/hhdQMX0V1OphK0OkLh313P6kC/cXi6xpvK3roSovYwe6GgIgHzYk44F
         zHM8WAUNNbHnDe17u4B7piQUdmhvT2wv+iqvChr1KybCjcJBbqmPUvvshjgHLSH+HVKr
         ok4A==
X-Forwarded-Encrypted: i=1; AJvYcCVf9XYFlbfsh2gHpNsISyh/0/Re2yFoqpxS2Uldttn1Q4J26r6ctfTEXqJZLUaxbIfL+4w76EbvHjJ5@vger.kernel.org
X-Gm-Message-State: AOJu0YwX4u4YFIjAMXOYFGRxP1/ec+Kx4jCiLFqAlyrhwoBV1FVKBCyu
	b5PaevbQ1T2jJcUHV36T1trc0c432wSQUyTPlVSBrxnzKVb/dhZHz1V7ZzdqkYzs7N9mrcvYOy9
	JPw8tKvq8idsrj+f3CvB0YR4w4etrQtuxS5ORNJh2UKP8Qy8n31Vp64QWT41tER4L
X-Gm-Gg: AZuq6aLxkQH3ar6nYyk3oSXYWkjy1BpKLZOQsZx4v2jGw0x0yYRxg04c+lHij5k++Kg
	Z8zh8BufKQoKS+sHraU8Mai1Z/xY+Tm9VOHyPmuqL/OOrI0elKjBIIXNdaAJR2o0AQbcVwO7mbX
	E05DSFdjDu14x+XUdHHakCYOLvdOX5wWwmdYpcASFDKNLHkBJB2J3mQ+Wv9SSjheHoRIHBKE9IR
	lvWe40zSKcsQQc8uN6pVwMArXNJj4IUwmvkzbu/N5wGmutpPs6ITXgHFyQL4+oxwi8iCJhtGiim
	zP9M5jVqLwhmlnlFzHQLC8o+ihLVA/WIKbOEtkzm1sHp4DxPPRfUG2tENFGBrzi8W8VESC8URgX
	ZxsivS4myOTDo2hxKHEamaMCsklKk+zHJz0g8
X-Received: by 2002:a05:620a:3706:b0:8be:dd2c:a0fd with SMTP id af79cd13be357-8cb8ca66084mr968355785a.44.1771843819215;
        Mon, 23 Feb 2026 02:50:19 -0800 (PST)
X-Received: by 2002:a05:620a:3706:b0:8be:dd2c:a0fd with SMTP id af79cd13be357-8cb8ca66084mr968353085a.44.1771843818677;
        Mon, 23 Feb 2026 02:50:18 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970c00c18sm18076613f8f.14.2026.02.23.02.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 02:50:18 -0800 (PST)
Date: Mon, 23 Feb 2026 12:50:16 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/6] clk: qcom: Add support for Global clock
 controller on Eliza
Message-ID: <x5tb3e5dymi4akickj3ie4n5wnhwaruu3bby2f6wwjg6a5lav6@r7d3mpdjw5je>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
 <20260216-eliza-clocks-v3-5-8afc5a7e3a98@oss.qualcomm.com>
 <0f3fec98-4d58-4197-82e4-41480066d42b@oss.qualcomm.com>
 <cqx6t5tcshcqyof4aaeawa7gyocaokzyqjmyxgxis7xsfc4wwg@jeggol3ifwu7>
 <f3394308-ee08-45db-a0fb-569d1cdd7fca@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f3394308-ee08-45db-a0fb-569d1cdd7fca@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=X7Jf6WTe c=1 sm=1 tr=0 ts=699c30ec cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=Wdn_pmPIT5SXTtawzMcA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: AaiEzx9zkYuQB2KigIBT44XL17rXiWWm
X-Proofpoint-GUID: AaiEzx9zkYuQB2KigIBT44XL17rXiWWm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA5MyBTYWx0ZWRfX/ru3EwvvboBg
 BvSsBcQUgzt44PASX+dUhQ9Z/07zd4jSh8F39eZtW8bHMbeEo6p9xx/uC7lcpReSfJFVcfeKNqD
 txU6eIpQGfkkvlHMVMK7be/CJotgGzK25ejaRG7LTOvOZi10a6DbHWs7nuMQDz8pn8hgcIAk/wY
 t/Kma5qnUD1cX8SBr9ttOQ+LsO2NCMKjY/Dksp5E8b/pk9UGvMOVsh3ksfT429Zmi8qBf7pmOsX
 y5IIucLT/9gClE5nVCkzfvuhEHMj1qypKy9hTJ9Mbobonw5ihLarLQ8tUMk9Q8SKo1s9xVEL7yC
 5VjTdXezaRU9WzTypDa2GqDFdAqp+PWnTdINGJkX3dQmoEaf/vrvs/pelm55r9seKgnpsRjG2U8
 TS3ubd0xdOuy9exENMFR1Ck8ngD4jVDGrT9xwCV9L4vxXbewQNs/7i6tipd1jLImBmoqbvPBB93
 bQ/P3Xx0HTcuYgVU5sA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 adultscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267350-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D721F17523A
X-Rspamd-Action: no action

On 26-02-17 10:26:26, Konrad Dybcio wrote:
> On 2/17/26 8:57 AM, Abel Vesa wrote:
> > On 26-02-16 16:57:24, Konrad Dybcio wrote:
> >> On 2/16/26 2:43 PM, Abel Vesa wrote:
> >>> From: Taniya Das <taniya.das@oss.qualcomm.com>
> >>>
> >>> Add support for Global clock controller for Eliza Qualcomm SoC.
> >>>
> >>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> >>> ---
> >>
> >> Do we need force_mem_on on UFS clocks?
> > 
> > Not sure yet as UFS isn't up.
> 
> FWIW downstream does that for this platform and it seems to be the
> case on most recent platforms too

Yep, UFS is up now and will be part of the base DT.

It seems we only need to force_mem_on GCC_UFS_PHY_ICE_CORE_CLK. 

Will add in v5.

