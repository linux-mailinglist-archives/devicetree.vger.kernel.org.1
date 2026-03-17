Return-Path: <devicetree+bounces-276546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNq0GrwVuWmOpgEAu9opvQ
	(envelope-from <devicetree+bounces-276546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:50:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AA52A5EFE
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BF5B3051D25
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA25D39C65E;
	Tue, 17 Mar 2026 08:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="feh5CEkS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NkAGWEfL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6352C39C62A
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773737244; cv=none; b=uawFVnM5BJavm1Mi0v0MYAxULKs9mTbL6zM4hQke0qCojaTQdO9ww0qQUGSLWTIcpaXGcCdIB2w7fjyvd4/J7OOw0WjSUecI1j/ItGtHFJrQzAAJ+JOQBqXGQKq3cVOJTD6pl7EMjPHysku1WSXBtyn3p+zAeSQKVJaF6Kftv5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773737244; c=relaxed/simple;
	bh=5kbCIAQkiikkI7HDQQYIe6F4cUwh63ghh0nbNIOzvoY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=isC5cghufFg8HX5N5Fo8RWARGNpXtIIyzHiU3RnUqG0uiEX0x3x1bcOKpkM0jTkq1bODIByE54AW0oggpPCdyAwzOht76brRemzxLQ6CbTJlgv+/rVxNs7Jg8DRhCKy/SoDw+XxJqygMiLGS8BEMrYlmCKClnmofhlPFmYG/iDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=feh5CEkS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NkAGWEfL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H8UjqO2315225
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:47:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2Fop3rhDCFzqQgIatndthlwv
	Lk7+QkbtzpTq2lw5zww=; b=feh5CEkSdvo6mJbnNGJIFJALfj2Y8mfGTDdSlpIh
	ISx6I4LN0dOgW/xqS2aNRvPZQi/EyxDNN/qQ4Qn9D1lZcVwyySCvwYAruxFH6DXq
	7ysS7swEBSr9ZYMTSSlg73pf0bcFi23pmJ7xFMDO1NwoAZjot32eDu9eqIyZCDJP
	7h6gzWJHVjCd96QUgZ068F9SBIpfbI010Due4NtCsx2KBA+J4tFxYiNFI1OQS8t8
	S552wZKJcgiGNY1y+NbJ0yKwnGcgO8kGtjV1t/I6cG+i5RcaEgaBJcwdhhBmsimi
	gjQsgY13gf0xtY6IEyv8Xun6u014UNWCKD6gKfrlphRszg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxmf2b1xu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:47:22 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89a0013d87bso910218396d6.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 01:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773737241; x=1774342041; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2Fop3rhDCFzqQgIatndthlwvLk7+QkbtzpTq2lw5zww=;
        b=NkAGWEfLvcvu+CgkYvL6C41Rh0qs1qZdKWWtQXwHyTAgTvHAETvNiMXQcGUvnKOUOY
         oVu6WcDcPxfiZ+70IcV/7vAkEgupAEt/U15u1DREUjn5s/e6LSqRsyLLfbptbQEhVnbY
         L3ZY+4sGqJrxZVsH9bozhy1uHUZEQm8ei/QC310evYd3Fj6jOGHSBmydVTqrAAwz9I1m
         w5e6yz5aBPYnHhJ633mXfz4T8IlnMQqFHRlXmkclAmcr/O6yYfCqPZkbHgdbay6NPiQu
         cF1yw/E+3Gq3K6+NuGCX/sQhgR7aizO3fZiPd77k7JA38kdg2lwgr21sRtq7NHEA+6pA
         G1ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773737241; x=1774342041;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Fop3rhDCFzqQgIatndthlwvLk7+QkbtzpTq2lw5zww=;
        b=kRqwxAICC1jUuZlAiYEd4k2/lLsYv6htKP+GETsShW4xm486/UMOORrq91VaMgHWV9
         18Q2Y77/yi+bgZ2jNYjVahze2GKEP5LJDTk9WejvU/auBtSgj63w19kolznX/eGhVj4e
         rBylwjerz6V9RUbzGR0idRNcGMHsr5a1gRvNe1Jn/Ng4AbR261AQ9l4YQRFRxeDr/C2q
         zGfL67u8EQgKddJXQOLAPaIYsgRAEUngDQeQZ+ZiIZF7UYHCl7+VPSueD+BrkuHG8Jc4
         GaM2nEq3Ol70B6VQjXkCLwquFLgwXPk+ZCfhSFHwUAFd/STUNvrHtXXCkX2VIIuziMOz
         yNqw==
X-Forwarded-Encrypted: i=1; AJvYcCWKVWE88kVt1Ym2I9Q1HyH3KaJG74D/xhaIPWJmXsQJGLb1pKmUqnQF7txAj4MEUgwIPVnWQVJPkyQl@vger.kernel.org
X-Gm-Message-State: AOJu0YyGpYjhHBRqKMpxGCZJ/0BJ+n+jOlyzVwUfm2Nu6Tt0RzZoG3cA
	B84tlkqWTpwFx15oUlU/wBuDPvLNF4FD28CIl94YoDsGeJ6CqhMGgMLXPho6lUbQ8yS5cDJvzdO
	EvBv4eo9Gcf4vTEfDArrGDno3cecz57lj/ZTmAElkhYJbkfu9DS5BwVgKldn1zVfI
X-Gm-Gg: ATEYQzwAq/LPDk4oa87ii6IfKcph0/9irLbWkid8Y2MGlLZG3/Wqei/1iFuVsJsn7aq
	CDb0QmQiNpuruNvyI8nx2mFAoZxdmsJaUVnlydZdCMdna9utPt1e4/2lqVeVuQ7u7cxZ/Sz9Vll
	uEElb4iouBPgqqPdTi5e/ypq4+A7O8UC1WTCmWzuFwavt6EgKRQiDYD3be38S9L85Nq8tN2RW2V
	SQiOwgF4buf6eiF1MREgGRBXKmyO8jGDt2DgzFeezCetVM7sT46f4cWpGY/IAxLZnnZw0OCGYda
	oFLJCcT5adURcww80lFhLky194FbmmStZTYwrUJsPSdhDqrooSETlBWDp4GQtU5VMxhQU18J09Q
	STmSNQoquyUP2D/g27SQnS49zkUhl9+70OQ==
X-Received: by 2002:a05:620a:31a5:b0:8c7:f79:bd70 with SMTP id af79cd13be357-8cdb5b5a893mr2023589085a.44.1773737241347;
        Tue, 17 Mar 2026 01:47:21 -0700 (PDT)
X-Received: by 2002:a05:620a:31a5:b0:8c7:f79:bd70 with SMTP id af79cd13be357-8cdb5b5a893mr2023586085a.44.1773737240883;
        Tue, 17 Mar 2026 01:47:20 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48557c66583sm118154185e9.21.2026.03.17.01.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 01:47:19 -0700 (PDT)
Date: Tue, 17 Mar 2026 10:47:18 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: eliza: Enable Eliza MTP board
 support
Message-ID: <vpoq5lznz3jcfiumsfgdskspus5nzotl2utoaubidfktnvw3za@txma7z7m3v4f>
References: <20260313-eliza-base-dt-v2-0-bd91367d860d@oss.qualcomm.com>
 <20260313-eliza-base-dt-v2-3-bd91367d860d@oss.qualcomm.com>
 <sf2e5rld6oiv7piqq277ppe3xqrh7q6bz2qntekzusq6w56rr5@tc2kdlnocul4>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <sf2e5rld6oiv7piqq277ppe3xqrh7q6bz2qntekzusq6w56rr5@tc2kdlnocul4>
X-Proofpoint-ORIG-GUID: dM5z9wRCseXlXM_N6-SRGeEjAwp25cZd
X-Proofpoint-GUID: dM5z9wRCseXlXM_N6-SRGeEjAwp25cZd
X-Authority-Analysis: v=2.4 cv=FvcIPmrq c=1 sm=1 tr=0 ts=69b9151a cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=0dtTbxgAnuXmjDA3jTkA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA3NyBTYWx0ZWRfXxZ2925gO1Dr8
 yX24dGAWO1FhI8EZg29fmf6t9DRbymy0V2215mOdeSjk1/eOyLwpBHdmZoyuaCh7BINTZIwY71p
 xgeogDBEnggLRDSrKIIjxp+28R0R9fNoDSTMxmvgmKdrTvMlmx5z2AsHfgV5w2V/JDNqCMiY9RK
 wpNmCPsFHjQw9EwUEBdEqBfFNj0d/k4QQ3WIz8gsNGQwU1RD6KamcUMc3REFkV4IcTj9l5+aML9
 kJk9aObCEIeO8vEImYhGnYo7hhQI/NwYWCupc6NHOdUjttTZtVcncFicbNDpqMDNTG9O7fOQFNj
 pfvUQNH3VmcppgOHw6Ji6pb3h9WtBSkUmZ2SIG0QM98qCgdiQbMKBT15QjTCTeBfw+pYTKCzX6D
 Gu0V6qfA2JKLzLD07dcokn/vWXzbx2rkphDM8eVRgZO/nW/6Ev5vOjBkiKAU56XyhEwqamUHZnM
 rNxD9DcKwurQLv801Uw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170077
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276546-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C5AA52A5EFE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-13 17:51:37, Dmitry Baryshkov wrote:
> On Fri, Mar 13, 2026 at 03:23:52PM +0200, Abel Vesa wrote:
> > The MTP is a one of the boards that comes with the Eliza SoC.
> > So add dedicated board dts for it.
> > 
> > The initial support enables:
> > - UART debug console
> > - Ob-board UFS storage
> > - Qualcomm RPMh regulators (PMIC) and VPH_PWR
> > - board specific clocks & reserved GPIO ranges
> > 
> > Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/Makefile      |   1 +
> >  arch/arm64/boot/dts/qcom/eliza-mtp.dts | 407 +++++++++++++++++++++++++++++++++
> >  2 files changed, 408 insertions(+)
> > 
> > +
> > +		vreg_l12b: ldo12 {
> > +			regulator-name = "vreg_l12b";
> > +			/*
> > +			 * Skip voltage voting for UFS VCC.
> 
> Please continue with 'why?'

Actually, I think I'm going to drop the comment and add the voltages range
in here.

For some reason, when I added these, I considered that if other platforms
are skipping the voltage voting, Eliza should do that too. But now that I
took another look, I really don't think the voltage voting should be
skipped at all.

Downstream does the voting as well.

So I'm going to add the following in the next version:

regulator-min-microvolt = <2400000>;
regulator-max-microvolt = <3300000>;

Thanks for pointing this out.

