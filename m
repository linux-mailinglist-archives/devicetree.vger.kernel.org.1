Return-Path: <devicetree+bounces-267800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KG2HH6t0nWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:51:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 41186184F40
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:51:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C096A30BF437
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01609372B2A;
	Tue, 24 Feb 2026 09:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VFcHJDPA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WrY/Cu3N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A60366814
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771926689; cv=none; b=VELGC4Xg2rCWJ4Jz9yDQNuIGiD5hIoLw1ffqB+cmeg6u/nB/HYtlSmak5vt7VA+yBIO5nXvDRPiqPlL/42jEsLdXYgb6qj1Au6qtlWYC9NnZ9flk8AsecjDgMu5FRIzEE9ufEgaTD9cUEnON2v7nGQdxapqGiFKIPtGDqFqk3yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771926689; c=relaxed/simple;
	bh=zFhH6mV/BzAsFmDghDXzIskq9NOQRf0vUzwBxynZo2k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Akj1KBgi4UrvM0d09N4Pxy4c/+ymp8codNZV9JRqT94tGjLszm6NjAeX4WqneunJWRzY/gTVQLk52bVWJeuCQY4N+SyHR1zTHhlJKuZQiS9kY2FZoXikgGIM5RSKDXnrY+3l29fC3PaIEMpZDT/d/nYyLktBxNjfUeAQAx5s3sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VFcHJDPA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WrY/Cu3N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LrFQ1019538
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:51:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9Ozg5KQxkZbUpcAsSqTzyj9T
	MGI9JFbx2Fui48y0Buo=; b=VFcHJDPA7giBl1Eg4EVKfwLhLxvwkPVZw+I7aOJW
	6ka/4b1eIpKCmdxH+ClR0ZNX4AcgiOExPgeGGdF8BQfRWhVYIO78cLMbJUZI6vDZ
	iaSXAJYAOAA+0+hHzcB+IePAjnChSVi+taxFhu9qiTXqzTVDYZE6aZTFFE58rjvV
	/XnXHlIJdvjuC9HcGIhFKDmi2RWzSwpxhLPavz5hq9Rj3j9Bnro2lQSCDr/flTPa
	7UWL54UJN0fRALW5j/6IwvZm3dOyeA7vmkKVMfXB6gmT53pcO9bMLBeW1CrQgO/D
	C2Ij+ZDcBhwfBfma/oLy45nrpXrklD3YUjVLnduFBi32pA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgpj8bfyp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:51:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb5359e9d3so4803816785a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771926686; x=1772531486; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9Ozg5KQxkZbUpcAsSqTzyj9TMGI9JFbx2Fui48y0Buo=;
        b=WrY/Cu3NJosIGspaadQZY4JGynJ7jgUQkEn+3tD9BoKA4DxtzFJhjbmkZtzY8nLV2W
         Ippxq5ZLvK3pWiBd4nfjHm771o82BQr0HmApXbWKxE7f5ziCP8Ey4aolp2H20kIx6vzi
         ZZiApvJ6GlV/KK0KXDVetTvyFyiyBYWFTifZ2YFwe/BUJN3pP4niumLWG37m8VdIloIi
         XsDl4s+I4BVHVlJ/8FyjQv7Hgcz85m9DJ1zCLZ+Gkw+kAFOoJc9CVP7hzbmLpg8pnPaY
         m0jyz51JiqJitg1T7+bz1hBaQVBKqoZRcJQO14O+5jcwK8wvvh5Tu+WD+NFz7/S2vvJu
         d+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771926686; x=1772531486;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Ozg5KQxkZbUpcAsSqTzyj9TMGI9JFbx2Fui48y0Buo=;
        b=YpnHQDzhx/8aIwbu2W8vZ5faIQZwS0oDKunUPxKYS1zz2W1lyd111QNGqO/XdcoeZv
         ohKcwTbuHLNZvDyBjT6pC2yOoX0A3NYa4k8x7frME2e8GyHn6Q6m10Ve2U98mSJIC793
         i+rlWuFbc85HUfJms4eWC1MmdFsLT5sUGxEsAAjypiQHWYxrOXK0Bo8EFlVTTDNQZMkV
         FLQsmwZSMdidFPK+vf7EKQr2mhtsJaOVNIBTesblHUdr0w28g6QOoJc/aJiQ/u8fEBC2
         b1HPGqwOL7xO1QI6KY6x8dq/42k82grn1/QmtL5H5iwNqTOfMoHBOgzlPExER0FVsS2N
         auhg==
X-Forwarded-Encrypted: i=1; AJvYcCVUZ+HX37/PHz7Pvj2zp/UA3f6BW5yyRLJAAwC5eGqE/aL2cOcGgh5f+VZc5PPpNPx8S/u3XJtLG86N@vger.kernel.org
X-Gm-Message-State: AOJu0YyOyRbMAiOmpAWsaXctokMBBwwjptvUQH2SSlrOfLY23p8LiccJ
	dgX2ks1lSs8jskmSwxlGwvYZMX5rmiRog1o1RfrKd/H9daTzo28Ib0KlxuNiz4HXX+CiAe2R+I8
	kTnJKIyh5hYT2VxA5J2Av85cFNTXd06lM0zwMF3ojZMKqlrTBBIDyviXgieTpmcDj
X-Gm-Gg: AZuq6aJwh6u2o6/NHFxO9P1QwdLXvpH54O7X4tcnpCD75uUKOaCVzKHvWv06S+wM9eV
	J8frPSNYInrc9EP/vKdTe3Ja1oB5mOnUqdnf/Rio1g8H9wOh8hbVRk8OKKYgZBgQgR25zHWdh6+
	PspFNpNk86ID01g+WCAvSX6msTaGOXYOSM/+u7UEuolT2v+9PqFL2RxCMx00szp6EpYemQxbcuj
	w/JQOQ0BydOwwhKI6PoLIz8EvfrTJuHYXT/UaxxYyGIkqdFZgIMIFvA8tRq4uS+6WGkDoENemGj
	r9LC00ttZKzgJjag5dCxw8kALKrwz/rOOqMyObfZjMdXsAJJ9kvrTgDHk1IO3/VnBCMF/JDiNwh
	ancCpYl6W9kKrDmNdLmbW2v/4EzRDr2dlhtt3/qqKASD1nKVkmuTd2qZGZtQXSNrb/dO2gi79du
	OODhjZ5rTQ+nZmy2yx1ZjxpjwzRJHkSmSO86o=
X-Received: by 2002:a05:620a:2905:b0:8cb:5176:ef8 with SMTP id af79cd13be357-8cb8c9e6256mr1277713285a.8.1771926686367;
        Tue, 24 Feb 2026 01:51:26 -0800 (PST)
X-Received: by 2002:a05:620a:2905:b0:8cb:5176:ef8 with SMTP id af79cd13be357-8cb8c9e6256mr1277710285a.8.1771926685819;
        Tue, 24 Feb 2026 01:51:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb13675sm2075448e87.21.2026.02.24.01.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 01:51:25 -0800 (PST)
Date: Tue, 24 Feb 2026 11:51:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raymond Hackley <wonderfulshrinemaidenofparadise@postmarketos.org>
Cc: linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        Max McNamee <maxmcnamee@proton.me>,
        Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Raymond Hackley <raymondhackley@protonmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: msm8916-samsung-fortuna: Move
 SM5504 from rossa and refactor MUIC
Message-ID: <bnt54trgmwaubeulwrfisfmdwxnxugyruuhblrm2zdwmh4qjzr@57mzjv2vdj65>
References: <20260223220514.2556033-1-wonderfulshrinemaidenofparadise@postmarketos.org>
 <20260223220514.2556033-2-wonderfulshrinemaidenofparadise@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223220514.2556033-2-wonderfulshrinemaidenofparadise@postmarketos.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA4MiBTYWx0ZWRfX+ubAeizxS1yH
 9ORFrnuTmyBTzi1OvsjGjXbTKDNXBLCbPOe6otWfETLul5XVDJQdPyPbbqx75bLtGI4ijRJP0VO
 oB9HsPs5AISVomGxZZWglFigWNC2dx/EsOGlv45iTItNRoul4BJlzBgj5gg4QR7sGNAXPIDqxev
 1BEZfeQdk9VbSUnZt729p+tJNh1aW87adVatUomaAlxK72ZmuUmQT8IsfDIvazo4xnU02EQMVWo
 VqrDPUxwvd/fLN6RfTOlvnYO9O36PnOTstLfQNNnJr0nlf6YxWd6341EZQm73ZI/OxPHx6UaDSH
 yXKjQI7IXRH80ITVWMwlFMBUOJi7LwG6rVrYmNbNnKUDOS7IGhyB4ToRx24KiIhJfeqeWi2NRE2
 qvS54fOKPg3RkwBwpLYCqosL5kRwjf7dzbSa0xpFH6lxOOH9SVX+3NYhUC1LRs4NCcANBiaaXfE
 f7nzxz9/FJaDK7ae7VA==
X-Proofpoint-GUID: szahPGSlwTKknKiAXt0ehrmYFrGNgPIk
X-Authority-Analysis: v=2.4 cv=Z5Lh3XRA c=1 sm=1 tr=0 ts=699d749e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=sfOm8-O8AAAA:8
 a=EUspDBNiAAAA:8 a=CDg4bIe1_nYBnyjI12QA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: szahPGSlwTKknKiAXt0ehrmYFrGNgPIk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267800-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,proton.me,gerhold.net,trvn.ru,lists.sr.ht,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 41186184F40
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 10:05:12PM +0000, Raymond Hackley wrote:
> From: Raymond Hackley <raymondhackley@protonmail.com>
> 
> MUIC varies on fortuna/rossa devices, which could be either SM5502 or
> SM5504. Move SM5504 from msm8916-samsung-rossa-common to
> msm8916-samsung-fortuna-common and refactor MUIC.
> 
> Disable MUIC by default in msm8916-samsung-fortuna-common, and explicitly
> specify them in each fortuna/rossa board.
> 
> Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
> ---
>  .../dts/qcom/msm8216-samsung-fortuna3g.dts    | 18 +++++++++++
>  .../qcom/msm8916-samsung-fortuna-common.dtsi  | 32 ++++++++++++-------
>  .../dts/qcom/msm8916-samsung-gprimeltecan.dts | 15 ++++++++-
>  .../qcom/msm8916-samsung-grandprimelte.dts    | 18 +++++++++++
>  .../qcom/msm8916-samsung-rossa-common.dtsi    | 19 -----------
>  .../boot/dts/qcom/msm8916-samsung-rossa.dts   | 18 +++++++++++
>  6 files changed, 88 insertions(+), 32 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

