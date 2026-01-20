Return-Path: <devicetree+bounces-257642-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDTTJyIKcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257642-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:05:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D4B4D78D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:05:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EA34F8CF5E0
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3817747CC62;
	Tue, 20 Jan 2026 22:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DsUejZ99";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NNc94Oqo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A8E3A0B36
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768947721; cv=none; b=ZGtMm/NQvZSdMdwVZd4MD4DhBcrWs/c0m28e4JEfDqss3cHYyhbtiMXcmps5KUI9Fxe6d/lhR7tQVBD3Tx+7Qid+PcsaHdcywRYPQjGfJLfkLsYv1NTQci3mbBSMiimuoW0UuY7cb0cD24Ljhct8LHMU6BhtRxdFqU2iAp8B88w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768947721; c=relaxed/simple;
	bh=LDJknakhI9RPhb4mkOKY1y0f4vRKOaIlEbApl8Ozsg4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hCDx39vpB7xmCtJIP+N8IkLZysgGhDRW8zynxoqA9MfJ+ddcWDMnsTGNAo+u3Wm7ulJ1HIJkp/OYSO/dYlPzN7kHYdchvanKHyPIdhvkL6tYE++fglhh/ofydQCd+JSq+pWSX9JlVhAYDAUoFsYS0JWJEi3EY8vdHRagtSiAdHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DsUejZ99; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NNc94Oqo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KL0fWU877927
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:21:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FkAl24lMCdE91Ego+e9T17/N
	Gpg0l6WGYQKczoaqDdw=; b=DsUejZ99X5NIF1jf8g/KGCMi/Ahfzfap6i2GY4NX
	dAus6XHo/TL3Szgf1tx6Cx3ReicXNFerOmNBxi8wA9127H+6YSCdPEYkCEhrvSAh
	RWF6B0JGF8h97hIITfulYXwtEdlxI+bGh6DJIXzdmInTlyUtIsWGJhiGBgug7YNu
	83EmtnchzxwGsaLslxTlegOMwl2egmmVPWJ6YLRGJ5ulCr0LSuBv/EpXVvSQbp8q
	UaVMTRWgn1iv2yXiLSMQqkTdzh6DbfErvxeW7y/RfemlO7az5Q5UPQW3/EBrEpQf
	1pWCMQKQ43QGDfZFZ7ybxPk5mbvRAJO3NLe8W+JACGg/iw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bta42hugb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:21:51 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bb9f029f31so1734887585a.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768947711; x=1769552511; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FkAl24lMCdE91Ego+e9T17/NGpg0l6WGYQKczoaqDdw=;
        b=NNc94OqoWfwfcGOPvubPUP39qcZvUjbA8OPiJ08qe9l32z+9SI3mMQYlAJCsNgBTwb
         b/MU1KsxpeXBwICz+kcUXEJXbUbIsSGKNdlGjXk61/TzvLsgtcjeFnXmkCH0BLftDSJh
         4i/Nw6M92bdHCedZ+DD4SPUL81k+R9CfDNAUjE+VcmFTbRlJy3PPUtETSUHUpOUC/d55
         M4OuoOQSuTBsJIYeGdtcgd69J/JgMvY7b2kY80F/nEsZBT/mzjw3Tdge2+8xBKbixWdT
         EEhKvVKo1qqvSv+tyo1qeeK+PpSv7Kv8UeIqyh84GqsiUKboEgfBjEKVkuDqSQaM6+yE
         xv9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768947711; x=1769552511;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FkAl24lMCdE91Ego+e9T17/NGpg0l6WGYQKczoaqDdw=;
        b=vfESamjN95wTUCN5lc69I11p4sJ2alsXdHv273+RKwzo82wuJca7fw0MRxE8ynU9xu
         XaYKurHT3+xAbJ/HidS+5mCVgiG27q5JBseoJ30kL8LDC8Tzg8nHv0nwXLkOtpiL0BOY
         EnJu2rmWK+tSJn/3+T12QTZo9Bj9aqibncZj8wrEzeNFtg9z1Kz3kdLOpz3LJ1BeQt4k
         edLVQOrji+pCgL8q2SDjjLz07vdJROJGI3HdcT8WqLXSMwjg1HnGTruPTATHdih3DC2K
         ijzIdYP5F+G+wt0yJWQvnoz2hLswYq1H2gaBrNBjknKvLZewJ1LHFNSA8Q1Q4Nz4F7CD
         bFcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjpi7ho6u9AjBCEyGNWbxpT5S79dA4GJrjZ4te27lp8l1jeK4cd67GjMkCKYrtc/isGRVz/uw8n3ak@vger.kernel.org
X-Gm-Message-State: AOJu0YxvJRSM5S4hdcatvBvK4kXOkphwlxhxDDam36qfgu1w56c1cPUL
	Y4xBRGC3exY1UQbamn6qS5OzKkaZJzO2zMmDodiYFbYM98R2TsmqJJTi+l0ky0tcc9z77h2Varu
	mKfEl6fcHn9qdz3pRO643uyDYnHQu3ULwj3sXx3hGk65Ls52QuPnr0mEbP6CIzhkH
X-Gm-Gg: AY/fxX7ECcS1AkrHH9MwNtcNKW4CLCo4mw3c8KbKp8s9C6XSoXiYjmDnLvlhUePpyUo
	qMRzDEZFWKUi8OHA5N8sLVpbBFW6wMWNW3qF7ah1IheQ8+Au0BWmJZoqoV43XIDuO48JuNafq/1
	2cunweyBEgo9CWu+ND2zTdLMaRRA18kLI/O3ZrEVFMV5Vi14rMh3DxtAaxw3wDhLY642NUMfXU9
	TaEA78EFVkIVYmLRXiiyXhv+RNtHOocB3BWLHzyZvlPbBpnlYE2r8XJ0qYjySfyx4ofdjkjhVX/
	vAYsEiNoqiYUJQYkpxEI7eoaWX/nq9JS6MY2qHL9syLNgfmJb/7cMohoHWxBe13mOduDYLCnxxi
	VIILs1JmOGua3j+na4bg4cFgRMXZFiFTcws3sNhc9H1FEZi5kMt+72ceZVt3hah9SGpdHoKW9ay
	rnSljYb2eYXRe8icVdO+0awqM=
X-Received: by 2002:a05:620a:4091:b0:8b1:728f:952e with SMTP id af79cd13be357-8c6ccdc0ac8mr423694985a.31.1768947711034;
        Tue, 20 Jan 2026 14:21:51 -0800 (PST)
X-Received: by 2002:a05:620a:4091:b0:8b1:728f:952e with SMTP id af79cd13be357-8c6ccdc0ac8mr423692585a.31.1768947710548;
        Tue, 20 Jan 2026 14:21:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384fb873dsm42121551fa.44.2026.01.20.14.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 14:21:49 -0800 (PST)
Date: Wed, 21 Jan 2026 00:21:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gianluca Boiano <morf3089@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sdm630: add SPI7 interface
Message-ID: <ud4fuoam7bqugleqqkrupbqjt3guhg3rkzabknebjfg74rytt5@oxkuidf5zabn>
References: <20260120193634.1089688-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120193634.1089688-1-morf3089@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE4NiBTYWx0ZWRfXxYIC1t4+LGFa
 XDMqGKOjz3/hHSGPbcBVwqeVOeM6JX1q6RnS2n2hoFIl7KycFOxEp05cXuS3TlQUZEmydcRMN6Z
 MjarEg7VRzUSremzh8CzmC7qHHKqZAS38bI2rLFHL7tk58GhcYEpmzls1a+kpvW1cp3abDVF9FZ
 JPXirrF+gxLddTAKMEX12Id6gZKEGz2Wvhoih8yW0uHwOwsmubwJB+ZtZvHdAzpgBxh5izt2Dfw
 JIPOJS5zt3/hoKJVLeUQWNZXbKN9goYXxgutJdyBqWB5RQrtcBzfV2ElzloJYx9iu+24EeuX19Q
 aZEh/Dn0TcwnxrllwQeIcObHlunzFFBYdxq/4RG5m6kMDeAJbfccOFHpCRY2ggE/F9hgYjTv0OR
 AO+CQIXI81oF86iIkI1mG1jid43EBW3JZIuvxcATjQ8nER4FhkMUyaowpEdzbZmXA4M2eouC4uG
 vrXUAoZaBE9i2tO3C/g==
X-Proofpoint-GUID: fhiM9sen3KYwOjkdLTaJmcVZn8ItwOPN
X-Proofpoint-ORIG-GUID: fhiM9sen3KYwOjkdLTaJmcVZn8ItwOPN
X-Authority-Analysis: v=2.4 cv=JeSxbEKV c=1 sm=1 tr=0 ts=69700000 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=_lRTF5PQ1Mj0csV5J3QA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_06,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 adultscore=0 spamscore=0 phishscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200186
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-257642-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 17D4B4D78D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 08:36:34PM +0100, Gianluca Boiano wrote:
> Add spi7 interface to SDM630 device tree.
> 
> Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 34 ++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

