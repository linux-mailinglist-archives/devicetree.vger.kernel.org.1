Return-Path: <devicetree+bounces-266005-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2F0RBJIflGk1AAIAu9opvQ
	(envelope-from <devicetree+bounces-266005-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:58:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61597149769
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:58:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15FA1301CCE1
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B30382D4801;
	Tue, 17 Feb 2026 07:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FTv7OwRv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZT/VPEAq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B25A2D97BE
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771315058; cv=none; b=HFRzlQ7rKweSpxedFRrV2ZoPcMZyGFc+NIQj9fpqrDr7qa8/8OjCGPEpwSRWPkY1SnnvKxnKbqLf04Y7rIPepXWDQ1L1reFNnlQwRE5z9Sk4lY1kMPsf9RVr9ttTzURTjn29aRQB3gfTYLD7VKaby7FmV9tBQTgqLHTxcYqR6xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771315058; c=relaxed/simple;
	bh=aSA0eXGHu5r3sIqWw29YfnvPs7Z+W9VI0QX28jCOCa4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r/ne0klIz9fuFYIcK5+5UjbKhZYGLHlin8HAQxYVIidInYr/L8rkWxQ+6C4rdq6GC/23TnVtUjix1Z1y4RnPP5RZWvW8yaTk2wnN5TL/3TMmRxElkkmKdyayUIvTF1hROLFjZKcTuU3BCNPLWT9/vX81/Aa22eQXgMayVG5KXtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FTv7OwRv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZT/VPEAq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H71art3392808
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:57:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OfFn9J2O36xLkkoFUh/wBFcA
	u8l3dtrlwSn+kDOeeDs=; b=FTv7OwRv8JOGffb9M4nXAP360nKOUl2lqjZJzavC
	d+esdMtsimF4b1Wj/SU0P04yRTgnU8sWdqV88A0p1cPZc20l0fpH+wX8m1nQuGWL
	Ma/YX/FWLGACQqbh/vrcKUW/c6mbTL7Kue1f9ppFdd119uTEWp8MvXCWZoHEnAJP
	jsN6qLVg81G4eO8vzPem+x2upqTnejDsCox7C+W+bVVqLvFkxOtY3PkcUzSWGPRV
	UehhcwWLNvlfrisz580JM657nXZlaSyZXurugXwfqDAIJ3OtLu6ic6wXcLcCV5td
	ILq9xAR1l2dkRj2wIpHEvQi+YqLljFSeag+FS5iLINSofg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc5kh9rk4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:57:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb390a0c4eso3567132685a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 23:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771315056; x=1771919856; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OfFn9J2O36xLkkoFUh/wBFcAu8l3dtrlwSn+kDOeeDs=;
        b=ZT/VPEAqbrOW6nowqsP2rnlR4CW+YwLxqNr/i5JoLddHH56SCGlrGlKZP3eoEVUliw
         JhLRQs5SAM8BLgtiBFBY6gWrvc8i3B7agIq51e7XRLG4j1NP5J+2hj4rjPT8t0lvnteQ
         DwlKZRkZu51YIup/6N3H6EsSS3iZQbafyMMUT4g8Cizv75nGegYmarmIGw62b6GfMrC8
         wKUV4xS6+Hz4tMnptRrxoogoqjdAu7qZ5tVSy0CQmg9CnS9rH0xu5Oceeo20IlfNxEXf
         sJTo7ZeAG7f+0IbmrYXYkW9I4oifQUQCTz//B8rIWCjBJYKPkZyYEJhqRu6DwBYDn4no
         7d4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771315056; x=1771919856;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OfFn9J2O36xLkkoFUh/wBFcAu8l3dtrlwSn+kDOeeDs=;
        b=V7L0xOBIWtdcbv2UkawSQ/RMkw+8uTv2YA7NoPNIiuSACyydKiwSuiuiGLk6/IjQvb
         eotMhM1HILhX0jqqyPJ+tRDk9Qn8qSeieR8Xpr5JB3HGkeRV/eHxEmcjXCERi+ZbNyUo
         ArGGCFZy4uPIyFptLcANVxJU3qZbd9SrYgdnO9qX+4miL9WZqxylhsNoPWzFFNQyXvMQ
         mD9bobbF7bRqNSykXmOGNoiziotGeNyjZBuw2cXkJ0U0mdOqCNMCoHmoId/WpvsosBaj
         mMjs+nHmQPNzGN/IkjXkYea2/fv5tOTLlg6UVV/hEZxMWJuKmjTehZkf5MaxropgAzvO
         LOuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGTqyvyBbiX4HLXLvgVUb8aIRFB27FQEU53r7tehNW7Xoqo2qdtNSZHECCa1hY7tvvf6tG7YMyx41p@vger.kernel.org
X-Gm-Message-State: AOJu0YzWIbzZKzz79MAvqsuz+BVrLRq+8ANAhnFpa/4dg1dHa23jdurA
	PksAMr0QomeRH2ZibZmZAQe3M7wlh5u3bSh5pprEQw9LioNxwGpaSy61fevUEBHSr7mMKK4Eky4
	lONKoiKynTSHU8J065L07RbIq4cTMlCuh1yIfnOzsSty3i+vKfZr0m6gJq27T5/Be
X-Gm-Gg: AZuq6aI70GiaGNLfACtQT0QlumufD9cpxHcrBRCp6Paked939fi0Glggs/AW/wPUZV+
	/6+ab6DT/uokK0Huu+2n7iqfVEajIyqARjRdUzeIMNQ9U9o71yBUQPb7TzbrpS287HVp829MVNV
	+qXAQWZ/mbYF+O20E4fcfkuS2gSqyILlmQtRrsLMcYPXrr2LGknV+wpQzy+WrFEcju9910uWA2i
	7+bOp4cv9iAl9uNx0Cve24LpUiOWUQkJ9V7v9ZTk1xLxHQQ10LJhT0/uAUMycrQV3CrVXFMcFfJ
	hUzjTPzCJ1I0+HGvcrzF6oqgbbPnW9JxqGWj0LPlz+dAw2nXwZMKYNela0lVAXBxNyQ/u4pZNrG
	CnBfIStI9J3JdqfKbuj5r2w/O0soWhher1nqj
X-Received: by 2002:a05:620a:4107:b0:8c7:1ade:29a8 with SMTP id af79cd13be357-8cb4bf954c1mr1327363085a.23.1771315055797;
        Mon, 16 Feb 2026 23:57:35 -0800 (PST)
X-Received: by 2002:a05:620a:4107:b0:8c7:1ade:29a8 with SMTP id af79cd13be357-8cb4bf954c1mr1327360885a.23.1771315055268;
        Mon, 16 Feb 2026 23:57:35 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6b563sm32439944f8f.12.2026.02.16.23.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 23:57:34 -0800 (PST)
Date: Tue, 17 Feb 2026 09:57:33 +0200
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
Message-ID: <cqx6t5tcshcqyof4aaeawa7gyocaokzyqjmyxgxis7xsfc4wwg@jeggol3ifwu7>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
 <20260216-eliza-clocks-v3-5-8afc5a7e3a98@oss.qualcomm.com>
 <0f3fec98-4d58-4197-82e4-41480066d42b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0f3fec98-4d58-4197-82e4-41480066d42b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Coyys34D c=1 sm=1 tr=0 ts=69941f70 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=UaMvVmrrPUi0RUkZ2zcA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: niehcFhwuJY5BHKe7HyvzIFKsMhF73pM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2NSBTYWx0ZWRfX/IwOLnqvXdOL
 bXA/ruW70LaLSN87f6VrJXVb51H2N/txoVKyof4yQZrTEAw/BdgVwP3HmAJMsa8XxqH9b8/93A3
 HC8/RNU71P0gJ7GxpNHF0U+1pshTh9Fcjrk6b/RJyCDBgu7nPcxTczLNI+hj6hcsuG+n9CleN+R
 VdE+JxvfkNo2K++awMrrrC0PEuGMsLjFfKXG1vtkQDGC+izJR2xuo3yIPEUdr+ZZ70c5SbXloSE
 Fsi5DEG47Mjk85WRptEeOJlRJvzBwJsib40nst7r5c1xmL+mpa3fApLGCVy4eaOkg4lpR2SqnZ0
 9oQpy3gAVfjTrrcHOMHEkiFvut2gF8kSCNtexkWRbzWptDZchgN56qQJH6b1sVrCMJqPeZ8nnAc
 YD8lI1e8uVH/4B6Cty71cf5Gsi3HcCxsW1HXTPI4UxHq38pcGnYx9zlU1mfm0bBzcyMKU9Y9s56
 /uSAYEhESl/isOJiYIg==
X-Proofpoint-ORIG-GUID: niehcFhwuJY5BHKe7HyvzIFKsMhF73pM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170065
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266005-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 61597149769
X-Rspamd-Action: no action

On 26-02-16 16:57:24, Konrad Dybcio wrote:
> On 2/16/26 2:43 PM, Abel Vesa wrote:
> > From: Taniya Das <taniya.das@oss.qualcomm.com>
> > 
> > Add support for Global clock controller for Eliza Qualcomm SoC.
> > 
> > Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> 
> Do we need force_mem_on on UFS clocks?

Not sure yet as UFS isn't up.

