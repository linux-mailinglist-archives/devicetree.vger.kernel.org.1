Return-Path: <devicetree+bounces-264801-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIHIMQqljGlhrwAAu9opvQ
	(envelope-from <devicetree+bounces-264801-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 16:49:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0EB125DA2
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 16:49:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C48E302615A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 15:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EEE0318EDF;
	Wed, 11 Feb 2026 15:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="daQG7+qW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KRvEiHOr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597793090F1
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 15:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770824931; cv=none; b=C8dKyiJ0fTRRjLzhV/ZnIs3h+ndAJyc8KN6DmhZq20KOefgDZCqXCPOlLWj18++/JiX6F2ksGsL3CelXjXCLhj/FyrlnC/S4yxsTFA1CCP7RJy+VgRCcerzoqu3g5ags4Q7QiZ483THuDecEj0BnnRSA0AQROISKgDlzog8pEeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770824931; c=relaxed/simple;
	bh=7X6WhXcZP2zosxXdxnRbDH3wFCsRm1yWHsTW7p9o9i8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pwhI+l7SG4M369V6bB9d/36haFQp7j8VkCCzmQk90Kds3X+IydRogiLivsw+JpeiS5AL5WpNHsiCmDoqWCyJK51d708NSn8OzguAHDsecopMQeqPVx0ygYHqT6vexeADHk2OaCL6sZMC2U5818IhrudFikl8phY204zW95AOVbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=daQG7+qW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KRvEiHOr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B97RYj170311
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 15:48:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dyp2g4U/Eio5nOlZx8uAt+gT
	6dCc3RNViNpk4NKU/nQ=; b=daQG7+qW5rmXcTPfgELVyez4U2p1M2VXpqI3G43f
	brfijTzAg0oqLdwlcqRT41O87LA7KX85DWfxmR+MzdD/FIyfJ7E3biXc2wQnAEFR
	qFRU5BdeErPZkdVUZxFvnxxJwvbDIirX9fPaArJpaJuXgzEHYY9qQ4SjWzostLTk
	NwjNGpf6K/jKoMa8X4RvRtW8Id9g+E300GfJ1wE0Z3q7cIIHdScYdqsPSCrTczk6
	vUYF2+85WWrG2yX0SUYtMDb+r7Bilr4+UrZEwybYY0mIO1WAKDDoyWjRa8kSgjot
	yJcWQ9M7Wla+cNJwby4G/VTog9uIsBEsdvepmt5isHgEPw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8f87aq77-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 15:48:48 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a2ef071dso2214564285a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 07:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770824928; x=1771429728; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dyp2g4U/Eio5nOlZx8uAt+gT6dCc3RNViNpk4NKU/nQ=;
        b=KRvEiHOraMurJR8MwBSm5JiC8OQqtaZwRaObp4Pp2kpiPHgGn5bBRTVvmj64tnIKuj
         wiqazvutL1PNsZaAJBxBOUBYg83nzZy6aYEU7N3sfe/GAEue+yt/TtEwu0snEi6lPKo6
         Bw7eAqJ1AOfZD1H5N3L8w052MBXcICB6b1tIyzJxZYKLuRsgjSLH/MAkXa4wEWGhfZBE
         QlaDGFJ4wgr/QEW0ptk0mwhEiAtaR4J9r3O287IVbLUpxZD++WxkNwOJTdLJh6mg1Y5Y
         a5veM/UlFOkdR9TzZAOKR7Hi+pv4PbtHAeKfZGxAgX7wrzGOnBAuScFe+m0E+3k82meA
         UnRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770824928; x=1771429728;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dyp2g4U/Eio5nOlZx8uAt+gT6dCc3RNViNpk4NKU/nQ=;
        b=FPrKFje/WNmdR3QmmXG4bsafy3sTWXXcz7isZa1R1HlBnO2JqgFmmfRXNJwBQD1Gje
         dsAxQwA7fMzMiwBrJn0JF6d/vBy1YUeBsPcRxhpfaU33d0FZ28r7kwe4dNgQavmBLnR6
         YtpUe/OHK97+iWWBiB4hWU6sSEUNPzhl+e+Vvw8oY9ojyASiiaxd91/aaquVbAIMK0ja
         bf0JENeSpGEuHa8wsyVEe9Zp4aHRDSfsMOMaXYKc5vhZKwJVMfLn+AjNzhhLB07J190I
         Z+IiU8iuY23Z3/yvDY5zgvbdSm5g/VNSi64vnANjuDGHi5QCPY8CEn2d+3lufTlzCXYk
         +itw==
X-Forwarded-Encrypted: i=1; AJvYcCWe6eha+bj+HX+u5uYwARNpYHvf8KcakURYUkq/QhLV2yjc+7+jZaZ/Q/GWD1bOledu93nvWOTV+yvr@vger.kernel.org
X-Gm-Message-State: AOJu0YwxVSgfB0Fq5Z517Rc3v9p64+U5uO3/Tj4PMmVj3/KDsPNaKLU5
	gpAeBhZytqFmjjCdDMtjJEq4zB8W/yctBr4sHBvhCx8qXkHObRZC859Abo+aLMfORfJ1epcU9Qa
	sgcBKQynFmePciEcRaZTSl8YNRCWYuaphuwHXhlv4XcSE6K2PI4983fWYRxqPPZnp
X-Gm-Gg: AZuq6aKCLOI3B/mODB0FwU576tFWYGHJF3He+DJnoK6i3d1oR0pu4kfRZpm0fwsKW8e
	yu10taaJ+H7jULQTL0KBgz6j6OPLkswGH3Dr9QQbRZDI6jlaN30AchzL48wV8bHOZDJyVtu2isM
	JlZBJdBek9455s7WUGlkeClGncfyGWBHCzbGXDHsBawVFt5s2Cku7mGdM0WmuKSdMLCv56Ao/FB
	1aXbAAb/2G2cfQnug+ETbmOWZNUinE4ZLFq6j1AFVPrmNgIXKGFyk2QkfrQRlq4TIysL2htrx2L
	NUVwr9giw7gjrHuLcZ1VmQ6TJoeCx2Sn49PcwoJs1sa9r5Pc+x+xBeeqXe+FhVUJnYgd86L9JuF
	F1OynGAdp3snxedgX7ZYxdumt+nr0RTDxKht9CR3q6XXwRoat4aE86zIa/hvygI6Fx9/9cxU3i6
	0hvBvlGVH+1aLHXZU53bHd2S5amUT0vV+kJ3I=
X-Received: by 2002:a05:620a:bd3:b0:8c7:16fb:ed45 with SMTP id af79cd13be357-8cb27fb7776mr433479085a.27.1770824927712;
        Wed, 11 Feb 2026 07:48:47 -0800 (PST)
X-Received: by 2002:a05:620a:bd3:b0:8c7:16fb:ed45 with SMTP id af79cd13be357-8cb27fb7776mr433475985a.27.1770824927255;
        Wed, 11 Feb 2026 07:48:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3870691bb1asm3310321fa.39.2026.02.11.07.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 07:48:46 -0800 (PST)
Date: Wed, 11 Feb 2026 17:48:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bhushan Shah <bhushan.shah@machinesoul.in>,
        Bharadwaj Raju <bharadwaj.raju@machinesoul.in>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: kodiak: Add I2S1 pinctrl definitions
Message-ID: <3lzwobvrymrzo4ggnkewxi7wvp2hblnev2dmvfyelxwa52rdqq@dqexl3oe5fak>
References: <20260211-kodiak-i2s1-v1-1-b3a7fad8014e@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211-kodiak-i2s1-v1-1-b3a7fad8014e@fairphone.com>
X-Authority-Analysis: v=2.4 cv=KpNAGGWN c=1 sm=1 tr=0 ts=698ca4e0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=SBGJfJ2iIvnYiQKw3gcA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDEyMiBTYWx0ZWRfX5jG09l3e6bWr
 XueMYqQeJaDozMLiu2S+2o6Z6ZLgM1GJajC2n+mzTGr82ivx5lNi7yCTeMUw41LHWNc239AF+Qb
 ChSPIDBo0F2ipJjITJQRDoDijwPxpqasHrm58UFx+gK5oPtla03p+xCNk1xIDPSmUEXKB/cW2SJ
 nTSaJUI+8+hki7STma6sIY/Qo9xn8TviQcL+UWUvpGseCPUaBaqJfen58+nmkcyDf/C+e++CMuZ
 OiyIlYyJ5DSzxlqVc1PHSqhdUbVC0gsrBdzbGaB8s3zUI7W9IyY/e+hFB9weTKp4pTQ+Ebw+ijQ
 M0zFH5hp8gmWGNwRFKma3TdZXvFhOTGWw3nLfM5RfwPOtKxb68PcZfNgIcibn37hxSjsLxbq8CE
 QTjjtcXtjiP4/scAYnKc6ENVVs7GXLjd+nWczujlFiIEjEsztsiBMQ/9nD9KH5HZ/QagtUIJ1sk
 46dIH7tJXsLDorvvZvw==
X-Proofpoint-GUID: lWn2GgIvegpJ1gwPTSQCjSFhyissi2R6
X-Proofpoint-ORIG-GUID: lWn2GgIvegpJ1gwPTSQCjSFhyissi2R6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-11_02,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110122
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
	TAGGED_FROM(0.00)[bounces-264801-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2E0EB125DA2
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 01:18:57PM +0100, Luca Weiss wrote:
> Add the pinctrl definitions to configure gpio6-gpio9 of the lpass_tlmm
> for I2S output.
> 
> Co-developed-by: Bharadwaj Raju <bharadwaj.raju@machinesoul.in>
> Signed-off-by: Bharadwaj Raju <bharadwaj.raju@machinesoul.in>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/kodiak.dtsi | 52 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

