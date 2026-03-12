Return-Path: <devicetree+bounces-274587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCgwF6i0smmYOwAAu9opvQ
	(envelope-from <devicetree+bounces-274587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:42:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF2B271F14
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:42:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0E8C53002F49
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4E3E3A3E95;
	Thu, 12 Mar 2026 12:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="peV06Vot";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j8M32FgJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0414E3A6B7C
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773319330; cv=none; b=f2pjt6GBPBGtCRuV+OPYlnfbDdj9SrSCFmKx7EAZZ6t+RLdCSX1gIq6HW+FkEVMsEisqXzdsp6D/naIAXwubptPRmVGjDMJ1O8KsDvwSEdQ4QPN8mmn9X+6tHIMNxMQl7B4sVUo5hjVdQb90JsjeS41ypVUppLAfPexIOfjO9r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773319330; c=relaxed/simple;
	bh=0PQ0/XQ73v/0WqhYsb+N961/91xmQqZgb7S9127C+RU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xx5hKrFEscIYGoHiPnas6zxghnn6W+XEA/UV/crsKbCOxgaW5q9x4E6cpt2R+HAmZXPz3SQ/AP2dLE5MpzCWXAvBoSN826yq+4797XzyaeNRsu7+TJveRnMvf9pov2Nh6loYbv6rFb95eWylkiiNfWfg6IXvAk2/8yfqgCC2GhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=peV06Vot; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j8M32FgJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C7e8ck509958
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:42:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dxYbGWS7A2uPAt1u3WZ8zGH8
	nQnJB+uBws4EFBR68HY=; b=peV06VotM2L0IZMJSxFN5DLWvkmiscSfzNL+XaRy
	ciAKk51Cbu8JLm8zZr0g5YB51+U6pfeSYsNpz8K7YJhjTckxRhGqL0jfhsxZaoGs
	1onHkVYtFYeOxSqQRRGU7ixtMS8F4LZHBUj6NqXIat74bWZsY+4aBQPuZ76Penno
	I2tk0UYrEOMtIxUAXZRRrbDD+gBWH7NzTSAjDehlyNPN5V7H6FaPekjE+sj7pRpC
	Cj2ZIw2+B4rTQ5LCttseu9gehKm/qZIbZt0iQUdxFY2K/NGnxB4OjONti9yBlFPP
	WKKaWADziL3fiPjKqcAl1aboMMjzPMbAcw4p++aKAiztmA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w0rek-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:42:07 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7ea0bb20so550833785a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 05:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773319327; x=1773924127; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dxYbGWS7A2uPAt1u3WZ8zGH8nQnJB+uBws4EFBR68HY=;
        b=j8M32FgJouGnd/bEOtHmn06KoCwq7jcsLAEp6zbAi0d7os2a+kFE4r2Hkue5ab4vdx
         jb9bOX8f4S4EqG2UPcrCQ+xD3dGaxcg9+0+xqy9TPLaIYrR8sMHaXgImibPLaZhhSilF
         cnB4gIlPwYqL7nAkDZigVkzOAENTLJzNWGYw88Y3qbdAxBnBSb9bTZKsn/knJiaWEvDG
         QjMAlVsR0u1z7/9rMpoCZWYCmyxEI/JsLjTXvm19GQJj4vw8DcKea22fR78GTChRzrX2
         VtYSYH7Rpwi3dSpPt6vMZMKhX8AAluc+4hERnjmfGy1wh4v+o4LRFf9PC8ERq7XUpXFh
         n5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773319327; x=1773924127;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dxYbGWS7A2uPAt1u3WZ8zGH8nQnJB+uBws4EFBR68HY=;
        b=vEngtDglFV5gCM79yoz5nf387crzu6RUET5o54FkWKelixqCS4p1dlphd+piGm/EHn
         qbPm3pi2dcfjrbVPrjYlp0YHwjntXPlwAXYG1OmzicNHSF2Qg9uueOPqg+NTADlDnh9f
         IlEcClJD5c/sjI/wA8sNwELr5SqYtWQgUK61YZuB84ZjpyOO2l87Pb5CACzGcuffcFyY
         rCw5indqTUDHPIOEEqS58HWDqje+LQeoMgEKNtvm87IgCBxGNpTuGzDBPjZbW+2v2uYU
         Hs4ujlC02pTgb8vAobKxlHa8XevQ0GDucqJoua4kks6+02IV0qp6zfZ1m11dLskN9nOU
         TDZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdocOhqEjiWj5UcSmHuACIrVafQJIgqcHQbEHNaB48eeWRbK+Dix2/xXmwCzq9NedsE7sNy/7rbfIQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2LSCa1sVCe0xJVGKUxtoJFF9g7ZAmJ0khp6NDEH6W7l7oe6Yl
	AfgCSM1xx+lAouQ/CEJ2Q9DlcBh5o3p2KO0cGwdoiESgc3wijRkw71CmZgCpKMRMqvWFbx8zdv9
	rAhxR0PH/M1OXFsMeEF9EzGLrap6dL5m49Gg7xqeQLc44ybg/6m7NPnN4vCRTId7k
X-Gm-Gg: ATEYQzwryexNaYK20cCJXXY75zNsCPkn4SjVGD2B6SCEa4z32y72PwZofYPirG/Ddx1
	s8FEPHqRzuq5VmnDrsrFxS8YNAB+6SU5DfdSw/2jlu4+9oIJZMrKNg8TCocybwU0vPzuJWbF9k9
	ndD3FDU4YwZ9B2/Oji7HrjlqEG6yNvxqRhTU6IZ/U4NNsBtQh9ru0oN2hk+GEKuBGNJiUqeThTa
	Q4BhmMGJX6NccOhev4zh/zP/bHirCwV/ul8S5CfInyuDphmrV/IHGkM+3Nges3eGdraSq/HNDhT
	3710Z/nLSX7VNV3+7Ckc4t95RJs+pjum9RWt2FqwvCUpbiquUKY5CokKMp2bJiPXnsIxz4MKL3q
	e+mkPntkDoNUSrOl9/qVCuKF9zdPhFYHJ3w==
X-Received: by 2002:a05:620a:2906:b0:8cd:98c1:7640 with SMTP id af79cd13be357-8cda1936d56mr772679285a.8.1773319327173;
        Thu, 12 Mar 2026 05:42:07 -0700 (PDT)
X-Received: by 2002:a05:620a:2906:b0:8cd:98c1:7640 with SMTP id af79cd13be357-8cda1936d56mr772675685a.8.1773319326614;
        Thu, 12 Mar 2026 05:42:06 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854a18ddedsm114132685e9.0.2026.03.12.05.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 05:41:45 -0700 (PDT)
Date: Thu, 12 Mar 2026 14:41:37 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/2] pmdomain: qcom: Add support for Eliza SoC
Message-ID: <7jsbcdkszog5gimte2gobdemasp3hkf6dxcag3bbaq2rhkb43v@skyla2nujuz2>
References: <20260302-eliza-pmdomain-v4-0-e61ae2bac805@oss.qualcomm.com>
 <CAPDyKFrvMieutLjHkL_dvfm6X9OpLsuGn_SPp1-FeBO5oe-zhg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFrvMieutLjHkL_dvfm6X9OpLsuGn_SPp1-FeBO5oe-zhg@mail.gmail.com>
X-Proofpoint-GUID: Tav6JG8STtB13NUlsSd_-A6cOwXzmdhP
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b2b49f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=qLcI9j9LDp0L4sTmIaAA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEwMCBTYWx0ZWRfX6No5O5dPmJqB
 GH4gxoPssxHZbhHgHKu2xvKYzAIzhqlLjZvy2t7IBoP2wnm2YfqXqnAwiOMJB3XNy/mtKHy+fEJ
 Qdot+dhSKHAkinQ2AGAuIFfKtHnzcBohQ2zRRJvQIZDUrbnvknBPCG+Lj+MswQj0eLzUCvZLydg
 RiaPb8Aof37X/DnYddUzmFKux10vz9IOr+Bt8Wn6hPP+aGCrPLDt5zP6uH2kzRylOFbyQSECtJs
 gbhNErtV1BJ72VHW+9xZ1LyZQrnhcvx6e6bkszGGzkxtX9FApuDZLh1wbmos/z5ziIj5VltvtwG
 Ef7xGiu75KCHx0KLFcECDfrOYukH3HtgZR7pD3HAq51H+J4aaKl5YaDibC+xLEU52h9j5blVLtV
 5mO+B5NQPaAg1BLOV0FJFJjPDWC2SDz/uTuwPoE7UBeZSR5qcLFOIrdIVYO82GNsWL7Uv3W8acL
 Ady9rYBXHj6cXMX85cw==
X-Proofpoint-ORIG-GUID: Tav6JG8STtB13NUlsSd_-A6cOwXzmdhP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120100
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274587-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,msgid.link:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5FF2B271F14
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-04 12:25:10, Ulf Hansson wrote:
> On Mon, 2 Mar 2026 at 14:29, Abel Vesa <abel.vesa@oss.qualcomm.com> wrote:
> >
> > Document the SoC specific compatible in the devicetree bindings
> > and add the driver support for this SoC.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> > Changes in v4:
> > - Dropped the GMXC and NXP2, as suggested by Kornad.
> > - Link to v3: https://patch.msgid.link/20260224-eliza-pmdomain-v3-0-6e13d3aa70a1@oss.qualcomm.com
> >
> > Changes in v3:
> > - Picked up Dmitry's R-b tag for the driver patch.
> > - Re-worded the commit messages with better explanations.
> > - Dropped the MMCX and MXC entries as they are not described
> >   in downstream and not used. Consensus reached off-list.
> > - Link to v2: https://patch.msgid.link/20260223-eliza-pmdomain-v2-0-23fb87eb70ef@oss.qualcomm.com
> >
> > Changes in v2:
> > - Changed the MMCX and MMCX_AO to the PDs with CX parent.
> > - Picked up Krzysztof's R-b tag for the bindings.
> > - Picked up Konrad's and Taniya's R-b tags for the driver patch.
> > - Link to v1: https://patch.msgid.link/20260216-eliza-pmdomain-v1-0-c51260a47d6d@oss.qualcomm.com
> >
> > ---
> > Abel Vesa (2):
> >       dt-bindings: power: qcom,rpmpd: document the Eliza RPMh Power Domains
> >       pmdomain: qcom: rpmhpd: Add Eliza RPMh Power Domains
> >
> >  .../devicetree/bindings/power/qcom,rpmpd.yaml        |  1 +
> >  drivers/pmdomain/qcom/rpmhpd.c                       | 20 ++++++++++++++++++++
> >  2 files changed, 21 insertions(+)
> > ---
> > base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
> > change-id: 20260216-eliza-pmdomain-dd10911bd4e4
> >
> > Best regards,
> > --
> > Abel Vesa <abel.vesa@oss.qualcomm.com>
> >
> 
> Applied for next, thanks! Note, the DT patch is available on the
> immutable dt branch too.

Thanks!

> 
> BTW, in regards to the immutable dt branch, is that something that you
> guys are using or should we consider to drop it?

Bjorn ?

