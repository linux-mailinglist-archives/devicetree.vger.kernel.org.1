Return-Path: <devicetree+bounces-263992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMs+JD7eiWnGCwAAu9opvQ
	(envelope-from <devicetree+bounces-263992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:16:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D5910F84B
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:16:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62867300A3BF
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 13:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD3413783C9;
	Mon,  9 Feb 2026 13:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hAmBs/pK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aCmR+n5x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7663F372B4A
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 13:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770642929; cv=none; b=gRv783yOGpwGsdeGvI5/O6t1wbK+6zvPDIe/ArfRj3h4yaOwFaktWsOqdsvvwR3yaU9Jp/QmfwlSb0MOycrNAE1JmDFVVdEyblXJoybeUiWYC3U9+4GPDnfzRMVmaJdftFFD6sCsddMJv6iyBFQzbaoUUqcMMgA9z/VwOytGsIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770642929; c=relaxed/simple;
	bh=LwqbVhq88t8aBfw4Xxul28v3S/ybA2Mz0EZOwyx2I5k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ueQHZxd0PgXbnZ3H5Xe60pVB6MqmfG05dmOwpGk5XeskQQ4I+dXSl0R6A6L1k4gyU1/Uzcyyaw2A+Y5gCfBZU+QdRG6NCrZCr/cJqM1CMzimvPwEvkrN/k0uFzqeIwzwZbD8IUEJu0ETM+bdu/ebogPDjhNbm2+EDpgYhUwgkiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hAmBs/pK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aCmR+n5x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619BEjQc2586998
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 13:15:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yOUpcXxCP89PrI+tA5PEAS3X
	FB2GxlbHv6pOAJPowUw=; b=hAmBs/pKw/0T1w0TAjjC/FZEN5R6YPH8wY26Anmj
	EVzXxnMInaTQWzGOBnNdWjcF6nI7Iefn/bB/BKwv99KJUi+ABNvlz53HTrhTvGsk
	XakLx1xEYguhSvhvkkc8RE/bizD3G4iC1sSag8LYvsw3PTXtJ24JTgdydf10B7aA
	ysBRoD/31O0A4Do/RbR7p3Aq42fSgwsZhrs7dED9vWrw9gtl8Ru6d6EA6hg9JZdK
	3B0OZzh71e5Mf5vW8eIgnImFAK++Rip9c7djPtAlhmjZSM+SukodJ2tdFk0RBd2G
	TR/5Id1a27RzU+7SJ6tvQLGAklZOUD/Z3/lxV9s1EtVekQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c793bhk1c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 13:15:28 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70b6a5821so1059708985a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 05:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770642928; x=1771247728; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yOUpcXxCP89PrI+tA5PEAS3XFB2GxlbHv6pOAJPowUw=;
        b=aCmR+n5xr8a1ng6o4eN3avobStUpTPOV7Amcfn7y8tgDMUMuo0VcQOkseQKhOXubiY
         b4y/RtDAvJlfOG4bIKQa+mECKWbni7Jpab6YkUg3ctIqL+hk8JEa4QATKKMuT2HDn4Ok
         +6jZbRJS6K7FzyhHc92tzjWp8DXpXr6u5xL5FBRuBMLWnZgCJYh6tD0ai4rU6/aGzBtc
         Sgd2wKV5ftLqz1SNhBYRhSfggYkZUOnzpHKklqlyT4bs+tXcxAdrtzNUSyf0R6nI5Esy
         Qqn47nLKfRKRSC4NqMADvWomSvwNHm+BVXaqW6V6YlvhkbWGXz0uz0+osEasaewPzMS4
         uUMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770642928; x=1771247728;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yOUpcXxCP89PrI+tA5PEAS3XFB2GxlbHv6pOAJPowUw=;
        b=hgc6qD9G4Wip2lcF/MZQAZU0NrWmvGrboLH5jWE/l2SvTeXbUELFHMRonlkEUYO6qF
         NYERXCjPtzHe4dr8z8+YofoKneTof9b5sbnzAviNyZ+vhP5OyRH8LaczTek2D7rM80KQ
         j3bzYm22tuvY5zoqTRE9KAdO51Bv2KA4wd0IU5/InhkaDPYyHj1cLhaYB07hyRSnDj0F
         MAwj0IdoyXpjiCcKaj8riDVrkD1fy9TE2OsWSlhO0Er5OB4UkAjesg1F3WcP+2q7se/e
         FdyWk7mTTRV+hp0pY9hIrqExysnNN86XlkaRrJOCAlt9n507GVdFQJGHdKH4xSwGAQJR
         0bLg==
X-Forwarded-Encrypted: i=1; AJvYcCXdlRyeKgCVR+AkngSNGn5zoL1JjrkEFF6FqvJrWj+gEBnoRkO6RyRBacZjsVvZCKTeHJlWZxmOnbIb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6d+vMJB3jczXCQsEfFYTPXHvIpBPt9QQlfddKxbS8uE6A1iAs
	Gv3S6fGZS2INVlIYGf4s1TsX4q/08aZqR8d1a3IrKjtoMgWAS4fnue1Gsgu43yT4zW8AyWqJqLY
	ymipLN9vG07Y+FYDXflAsWvw5wbEls/prHlop5WeXG8vIP7zIzR1T3BPOQcd6xRoO
X-Gm-Gg: AZuq6aKASTkahtFuOSdRRgQhnRgxuCf76QiXEQIaCIrXuMRlWsoOAVkYYS4TlXMuSAU
	zwnjupGViXT4EUM+RlptCYx+djBswc1tNpcJyv2GiEJBllvyI2rSAQNEQb5/X+ACYwZnKhFPVST
	ufzGVNW9jvu0HuDfGx0PcJM65mrbJyaD7CsW/Tp4sCmPEZeoMbK1rCCx/xf5CRmHtWNFKZN41Zy
	nQlmSRCkbqQBPL0Br6YQWGSOYHVauN9UW2qi2ks31Uw1//EFUfWpWJmcmasbeS/Rk6acLilgcZ+
	y3b9jYLoPFROcfZxDxCrOCNMqAWIOfNAxiI9qNHMRPp+wnACeeOjiAUqc5SSy8FzqLqVGJVd1W0
	/+7BhX4X88ImX0iuo5fUEuRRlypZkPDP7Z5BWNh8PvYCGjbSp7G1bU6dgqAjQaVF5OAztTsJG23
	T8/7LLHfvDYNy/+5E2CZOcxos=
X-Received: by 2002:a05:620a:1a20:b0:8c5:38d1:7734 with SMTP id af79cd13be357-8caefeb517emr1356020985a.54.1770642927611;
        Mon, 09 Feb 2026 05:15:27 -0800 (PST)
X-Received: by 2002:a05:620a:1a20:b0:8c5:38d1:7734 with SMTP id af79cd13be357-8caefeb517emr1356010885a.54.1770642926741;
        Mon, 09 Feb 2026 05:15:26 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44d298cdsm2607750e87.52.2026.02.09.05.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 05:15:26 -0800 (PST)
Date: Mon, 9 Feb 2026 15:15:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add vdda-refgen supplies for
 Glymur
Message-ID: <jvitdcolh4naqjdahaajlzdctcmp3sy5odiheeqacps6pcbg5t@zx3jliileazg>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-2-87ca84fd78b3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260208-refgen-v1-2-87ca84fd78b3@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=ctOWUl4i c=1 sm=1 tr=0 ts=6989ddf0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=aHvCONSEC-igqZHWBgwA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: SFawTa8_eKEmbsue3nmYJsEjaP1dYByk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExMSBTYWx0ZWRfXzQjuka0cZCM2
 DzvwdL5iWgaxURkh6DtChD6SaUkbL/eP5MNayoBVLbe5/ZWEtA6lVadD+OHLbHQoT7DJzFdEwYS
 YPjoaNpf/XNyAZCZHcprGKHpwksAC8CjKBfF1LRfVCogpbMrqs6MWxr/9o2byGyVvlbX0pOM8sp
 E8/JzGVe4XE1cx6dPnxRP744lImP3J4eND1ZU0fwYGn5VQtlKhRjjyr53YpxMu9ZRppJvq6R6vo
 p4hiuaixRpZvQX2+qO+Tb5hUsgRSPTvVViFRrbWh4xa1GBVwTy00DFj/mbVsqfny+9wNi5oRYWN
 f4xBOXyBttzExUgyw84GTYpQIzIVpR5Z3LWK8bKqSbf9h11JHgmqdOa7NXliOC7TocRsAaV1HM4
 Gzna8lLO4BEBT010S+7Ky+jpgrgJEGf6szl+SbRTTXZY89noVgcUEFj4ZwwRU7xaLHsBKkm1GPg
 tPK7+NduEXuW1tJDqOQ==
X-Proofpoint-GUID: SFawTa8_eKEmbsue3nmYJsEjaP1dYByk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263992-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 30D5910F84B
X-Rspamd-Action: no action

On Sun, Feb 08, 2026 at 08:49:40PM -0800, Qiang Yu wrote:
> The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
> two power supplies independent from the PHY's core and qref rails. Add
> support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
> glymur_qmp_phy_vreg_l list.
> 
> Update both Gen5x4 and Gen4x2 configurations to use the new supply list.

I'd ask for the DTSI patch too...

> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 

-- 
With best wishes
Dmitry

