Return-Path: <devicetree+bounces-307992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AQYJBvtQJmoMUwIAu9opvQ
	(envelope-from <devicetree+bounces-307992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 07:19:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87362652C86
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 07:19:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Kzv06ReG;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=SH2Q+cnb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307992-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307992-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32F1B30166C7
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 05:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A9436F419;
	Mon,  8 Jun 2026 05:16:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9B535200D
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 05:16:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780895813; cv=none; b=cYgZWIPRqfz7QlXwpmjZeQiiBVdn9I7iX1m+SMZHN4dpPc1oOFr+eWEVSiL61cXnBuaSisRLKIz6TubftMWduWnUihFLXLZUA1QDli/S1ZBMoHyb6kUcD1js483nfzNYz6mz3ezo+MhJts70PBayG5Xdn+h+bLcD5TUveUmBbUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780895813; c=relaxed/simple;
	bh=lj2ObgYcLp/8V76akre+mvUzL2bzgJKZ+VI9e74kRNE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fJDdqpQ9QpUIz4sVcNhx3WVvht9xxIKyDoVTsA5GdWTFx2kknj9I26/xxLPlWy7sQJWqHXwkjrt//Op2s9NsCQAmu6yeOoBg/vZbqh8sZr61UQ9o+A0/i7njlONCPoklKbb8PVaSre8I37k9g76FvJKNUvA+b0vLEn21wSaSgSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kzv06ReG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SH2Q+cnb; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6580G8Vv2024477
	for <devicetree@vger.kernel.org>; Mon, 8 Jun 2026 05:16:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KJ7F/wq/zHQAS6xIQx9ATfdO
	D/ticnIDzpzr35ZtXys=; b=Kzv06ReGdJ/jlx09ztCsn/tJmf0SnTwrfyEb2W4t
	sTyOkn/XxYsXa+MWeq3nNaHYGcqMEGXuKjoyY+8W46dKB92D3X4NaYTpi/jDGMDJ
	NDBejS/IKgUXHQYNcMrOKvItolxqSk6KwJBGDa/oXVRsnAaOusv36AZLJO4BHtQB
	55d81oNCDwGUTzUR8Reh03cRc6Xus2VzXNRSLL9mA8UmTw2BL7L7acLfR/tCLMy8
	tkei6bpCvnSx7FYFGdF+b2wfrECpIATuqZKuTzvZwwjz+qvKXe/Cooo3y3Qp+1G3
	kM1iTCAgzem4nX+FvxU6dgLMncgof7QshF353cih3MR0cg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4embmre00r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 05:16:51 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-6751c50552dso1891472137.2
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 22:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780895811; x=1781500611; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KJ7F/wq/zHQAS6xIQx9ATfdOD/ticnIDzpzr35ZtXys=;
        b=SH2Q+cnb3ChAhdKvcAzWEm2F/yExmeeCyiiCbUG+rSLO1dPl2PYQmLpHFDt2JhfaOK
         W5URJBwWOuKXYJSpPVTFtyD6yBE3EpFmBQtpDxk+GzDOI+EJvOBduyAZOeNiZG/sVb0L
         DoM7fvSJ15PeVNWHoWkrpS6mOVZUOR4fnu+bjH8FKC+Bug+T82Tk/6+XB5bL7JI6T89I
         ENZXRJZAb5BR//OB+rv/0Ar5s3tRhISst4k8KnG8mxIO4ktS9FqlZxirfXdNAHwqRUbG
         PA+GK83T0cmU8ttGL/2v5qyAsTFDW7TRHl0bf3nM2SdeQLL/18iiAVhjbQ/6XfTJ5RrW
         RUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780895811; x=1781500611;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KJ7F/wq/zHQAS6xIQx9ATfdOD/ticnIDzpzr35ZtXys=;
        b=RbLquh4MFzzuLPUn7I2BY7BkN2itWHRG8JTyGdosGqliP+saISdqxkUkO9mwZblihM
         9U6hMrmU0+dgyK9g/V70sCI51HcPaXxxiIC3XU/jkdnb2SooO7dszTRrssvPeOTWNB+d
         RDdFA6G1PECyF597qycEXgcD+TJ5m96phTgjW/7Xzg1AaiVhkdCrQRLZ5vRI90w5zs1y
         24U5rdoShPL3IfA1cvxkNbE4WA4iI41/KCZDZ1LOk3gIHDyyXNBL+p0vzWUP2Nx8XkCD
         Qmo4i9AuMQc0xzYwQtLdzSv9nfk0GM834bYMrpBSzc5Z3jATDuHZp10vh/jfcXah9cEV
         m7zA==
X-Forwarded-Encrypted: i=1; AFNElJ+dThfFjarcvwghlQf70/PepnXnBw07pKs45Hc5tewoKF9XgiTBPwcwNOR1M0SE1NBz+N4k5fCEPTh0@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9M1yvFzU9UqeTKLi2ifZMX67EY/AtKxc9N772vS0qW8SU9AnZ
	9zWqdxqKM9s2UXiHBqVGU8xSxa4uPnttkRCLBjdtiSLZj/u63Sxb2kyRZpiKUK4868NkzAx9vI6
	M1T5OGxSa+0UYRBRJGYBxQNy2qxrF8bJwzfq8Hkd2dMUtDBNuEpccJpqfoQmTCe13
X-Gm-Gg: Acq92OE2kpKP1Zv3DH3HXARQ4DZvJQJkQpIFFksM3abjf1Zuz9tiYP9wz7d3mk5p7H9
	ipUxjnS48PKWGOTqT+Aj1HhouV68+qTDKfkHVIxYnnDCeuqAe8bcwJ6qWXK5t/7uQrembL5ZjD8
	Zds5j6mpaJi584meBJ3jobUwxTbqZMshmvdYxJ0H9XhuWdmz7hXo9HLMXnG1VYygRdqZgnqyooe
	nMCVjyOFLmnnI48ywgbKdrCoIX9FZP3t/IJuutkUNGMtTnTQG8trAuUnoFd7+ZFEIYQOu6AeJZ0
	I6rzZcOAiD0HK+hyDmPS2GsGTBI/JwKCkF5IZ0B5sj+H091SHND85ZEJDn95scDCuMDPaap9N7X
	8DHkXNHPqp5jN7FQYLLCI4aAZ7gah8pq0myI2VDk/RBknDZCiLXdzcyJ8YcbNVUwDW9I5NrmwGi
	1naoQIYsaB0UYt7sWQk64oI+xp0uTGlNsqJX4t0+WUyqZ2yQ==
X-Received: by 2002:a05:6102:6447:b0:6f0:3c5c:76a with SMTP id ada2fe7eead31-6fede2771c1mr5901479137.0.1780895810632;
        Sun, 07 Jun 2026 22:16:50 -0700 (PDT)
X-Received: by 2002:a05:6102:6447:b0:6f0:3c5c:76a with SMTP id ada2fe7eead31-6fede2771c1mr5901458137.0.1780895810241;
        Sun, 07 Jun 2026 22:16:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b99ca90sm3606753e87.84.2026.06.07.22.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 22:16:48 -0700 (PDT)
Date: Mon, 8 Jun 2026 08:16:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Imran Shaik <imran.shaik@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Brian Masney <bmasney@redhat.com>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/4] clk: qcom: smd-rpm: Add support for RPM clocks on
 Qualcomm Shikra SoC
Message-ID: <3hezaeahf25nlcjn7ilq5ytlwalb3vahvpox7icmoegkggtlhj@rw66m3dvngyo>
References: <20260605-shikra-gcc-rpmcc-clks-v4-0-a0a7bfb44455@oss.qualcomm.com>
 <20260605-shikra-gcc-rpmcc-clks-v4-3-a0a7bfb44455@oss.qualcomm.com>
 <2c4insgmqmpk6zothe54ktcdrzkjbbaiql5m3csagq74znnprj@4p4liju4xcii>
 <a3d34087-528f-4543-81ba-8e7ee5d85aa3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a3d34087-528f-4543-81ba-8e7ee5d85aa3@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA0NSBTYWx0ZWRfX3PHTMxR+pGt2
 LqejH6R2Xru3W8xjkilF5MVoqvjpOp/YUKa+s2ThSLjjgipUy2dX4k3wU2qnKQEydoxfQvaq33+
 n26Bg+kGS0KfTjdOe2hncxb3MKWctska9pUySnU+rtY3g4mbfgncwCfd/nnBcd5S6kM7Q+fDYC6
 0anekTNdofp5Nv7FQD2Jh25fzjgQDerBRw/8jbKWvHvjzM9mSRHG2m6sxJbczKiiwKAf1aIb5jJ
 VVOJzIv+Oi/12QfsCeBw6gRhN6yj8wl4SDTdQR8/pOuotvfkWnTniDeCD5IWbdn9t/SuHnHP4Pd
 ZJMKGrbaVM4TpeamWc9XXr1t1Bf53YK7GEEp4Tt0MZ24jCLsApPwpC/3ywDO0oVFYrAQE53DJ4H
 Fn9XR/2ASbRdwOlz6G0+G/YFkDhwg2pb1oksuz2s3UWEkjaY1G3jFA/+WTvyesTxPdFNpgRdndl
 eq7HykSt+ZC4eAAWd5A==
X-Authority-Analysis: v=2.4 cv=B5eJFutM c=1 sm=1 tr=0 ts=6a265043 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=gm7-7hryOjzUkzP0QZ0A:9 a=CjuIK1q_8ugA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-GUID: GSw4-ouixIrRaW1mNVOvoomMBtcpvT3s
X-Proofpoint-ORIG-GUID: GSw4-ouixIrRaW1mNVOvoomMBtcpvT3s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_01,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0
 bulkscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080045
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307992-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:imran.shaik@oss.qualcomm.com,m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richardcochran@gmail.com,m:bmasney@redhat.com,m:ajit.pandey@oss.qualcomm.com,m:taniya.das@oss.qualcomm.com,m:jagadeesh.kona@oss.qualcomm.com,m:krzk@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,redhat.com,oss.qualcomm.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 87362652C86

On Mon, Jun 08, 2026 at 10:02:59AM +0530, Imran Shaik wrote:
> 
> 
> On 06-06-2026 05:05 pm, Dmitry Baryshkov wrote:
> > On Fri, Jun 05, 2026 at 04:49:13PM +0530, Imran Shaik wrote:
> > > Add support for RPM-managed clocks on Qualcomm Shikra SoC. The icc_clks
> > > list is same as QCM2290, hence reuse the same for Shikra.
> > > 
> > > Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> > > ---
> > >   drivers/clk/qcom/clk-smd-rpm.c | 39 +++++++++++++++++++++++++++++++++++++++
> > >   1 file changed, 39 insertions(+)
> > > 
> > > diff --git a/drivers/clk/qcom/clk-smd-rpm.c b/drivers/clk/qcom/clk-smd-rpm.c
> > > index 103db984a40b950bd33fba668a292be46af6326e..d0d19bf0616efd5f1bc2caa037ff36d830a3495c 100644
> > > --- a/drivers/clk/qcom/clk-smd-rpm.c
> > > +++ b/drivers/clk/qcom/clk-smd-rpm.c
> > > @@ -1289,6 +1289,44 @@ static const struct rpm_smd_clk_desc rpm_clk_qcm2290 = {
> > >   	.num_icc_clks = ARRAY_SIZE(qcm2290_icc_clks)
> > >   };
> > > +static struct clk_smd_rpm *shikra_clks[] = {
> > > +	[RPM_SMD_XO_CLK_SRC] = &clk_smd_rpm_branch_bi_tcxo,
> > > +	[RPM_SMD_XO_A_CLK_SRC] = &clk_smd_rpm_branch_bi_tcxo_a,
> > > +	[RPM_SMD_QDSS_CLK] = &clk_smd_rpm_branch_qdss_clk,
> > > +	[RPM_SMD_QDSS_A_CLK] = &clk_smd_rpm_branch_qdss_a_clk,
> > > +	[RPM_SMD_LN_BB_CLK2] = &clk_smd_rpm_ln_bb_clk2,
> > > +	[RPM_SMD_LN_BB_CLK2_A] = &clk_smd_rpm_ln_bb_clk2_a,
> > > +	[RPM_SMD_RF_CLK1] = &clk_smd_rpm_rf_clk1,
> > > +	[RPM_SMD_RF_CLK1_A] = &clk_smd_rpm_rf_clk1_a,
> > > +	[RPM_SMD_RF_CLK2] = &clk_smd_rpm_rf_clk2,
> > > +	[RPM_SMD_RF_CLK2_A] = &clk_smd_rpm_rf_clk2_a,
> > 
> > Are there no RF_CLK1 / RF_CLK2 on Agatti? Or is that another omission
> > during porting?
> > 
> 
> The RF_CLK1 / RF_CLK2 are there on Agatti as well. I can add those clocks to
> Agatti clocks list, and update the rpmcc bindings for Shikra to use the
> Agatti compatible as fallback.

Thanks!

-- 
With best wishes
Dmitry

