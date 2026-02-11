Return-Path: <devicetree+bounces-264582-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPL3HpDji2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264582-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:04:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EA4120A4C
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:04:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 82D5D30074A4
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 845A32F39CE;
	Wed, 11 Feb 2026 02:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o03j21BV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gwTjBaWI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F942F0C62
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775437; cv=none; b=Bm8UU+5FBXh4SsgEu1feDiQSf17JVRkuZw/aSVbD627el4puIg3TXv/Gs16xbVanAHXU8tl1kD6bMnN6U7vXYAFT9ktvebWjd3OdTVTs5qbwL7H7BxzMxglgmQgM461qXhw0drABJ3QR5taFw1tJen/D6DYAnKpJlg4rmpT+yXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775437; c=relaxed/simple;
	bh=la4ssP6J67KlWLTxP8YBoUL9rR5X4IDjeKaGYyGRRRY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IUwDxpCyccEnFN3zQNTxN7Oq9NXURouWqvQ0O5K8PX+eIuDZBPfVlq2bF8UFk0LcjTOBCLroZocCNRMMYyW8TbmaNwnwKcwhmiHZTCRocmmIIijsOdjRatghuIcGkgFd7ADcFmL1VF2Q/cFsUgwRj3LT9nTmlK4okpGd0l3eqaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o03j21BV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gwTjBaWI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AN6QF93920491
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:03:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Y/NjlHf1Zl7Oyi5VQN3riBej
	m16B9GgO9QOEnQtzwGk=; b=o03j21BVPVbcMvjZz2oiQLVYZqi0rgzd0slhciwp
	AsPEe0sgnkL/DXVKbZyMaYwuesgTaoS/KdvRZUQZEhhPkXJFuWQ6/5/HxMrnUvLh
	xt1sOd9z+nYW8m8+YVZcDx/BbRvT1hDHojjSMpt9qjfNG7pd7t3gpMFQGjQep404
	tRuILfCINC6X9JHTd/gUOQoXaKd6PGqY3Uj8Jufvua9g+E8AQJtQxji5oWcgpksS
	uklPJab59Ed5e/IQcVQB62s/PxW9Vff7AkeVadwH6yP1oAdtbQpaCBv75d9wQ8Pz
	8ci7/FZCQn/3TXeC85nt0D5MU89BS2uLbgRZF0C9fXHAKg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c86akj4cr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:03:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a289856eso134530885a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770775435; x=1771380235; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y/NjlHf1Zl7Oyi5VQN3riBejm16B9GgO9QOEnQtzwGk=;
        b=gwTjBaWIjaj8KQeKZh2M22qN4ejpR4pKwCDV0ww4kfvgbj9it5vX9/gwtH5qsjj6ZO
         GiVV/B93Flb6LGLpALKflOi8GT50IPIT7Vnr0eJPfscF3V2cKm5292PxLgPzdOiWxQ1V
         Ah7fBvyS6LM1KB2cF9fHC7qHjw27+G+AfAee7NgXEQV7/+DXLYXs3ZrYQFk/b7M4J1bB
         nDQmnpEIraf45wx2ZncYUNn4rbEmiT5Bxb2mTc+gR0Xg6k1W/9M2UhCEzojKIiupUbkC
         HFYPhq6n4K/atf3d8x6z+HZfPBip8UlvVgWUshNnVBwjVAQgOif9d2L/Nj2AHg8867OQ
         9t2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770775435; x=1771380235;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y/NjlHf1Zl7Oyi5VQN3riBejm16B9GgO9QOEnQtzwGk=;
        b=gaQGIM3dSJuqVh4yZZGAZxnvRobYu470XYRIKgImoMsLtacH2pCqPS0lzUI1UU1PrO
         PTyjRegL12nRaWMGC7kNhIKJDGVPOPYUqDxtlRIfEyea9Slm2xkXQZrnI9eGfmusQOP9
         dC4y75Q8bQkFvEnYCVgUy+vOEpHgCgh4exkYBYV83pU9mxHSEHO0X7mHCpYH/ih4SLPA
         qqSO6bEg8ogDw0Nf3RVf3VPgB2xUJgW67acjyj/GICX85e5pPTtmFv5LpB6a6RUIEWBL
         AbZqRUWmp3W1hRnGF3f75SiSm6XsLJdb3uG4Th/QmapyCadR2nqknAzDJsI03+sIFWNr
         xg5A==
X-Forwarded-Encrypted: i=1; AJvYcCWO+swncgNkeEdNeyHGJHQb/3a4ZDlobDMosCQbvqRpm1Y0p1qqFg2py1KorgLGl/hTe0WdWiTx3Vu2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7fLPVzjVwOQX9u5mN485u4KYQdd3teKn5GEWvvARg4DC5zcNS
	1o9jnnTCy7LAwWI3xQhlPGRDhzcCpI42KQO9JdJGQPHzoh+LC7eKFy2z8/wOwnlvHDACDR4OptK
	RkaJwYTzir/HGsnoRNLTdSJ571V8KVLGJQoYRxBVdzu/6csIoE49Bs9YKzyJcEPlV
X-Gm-Gg: AZuq6aJKaXNW792pDVEQH2nZUCk3Qm42wDstngmM4mdmrxr5LEsO+EW3QV5e8wfXiMw
	q3ICNFtfXE/5L5+awenf8zv8y5gs2tHApqZWTt70BimGLZb1vf8NuzdlrgynoKMKrKhF5MVd8Mm
	T690JgDJfMJo5XFek2sI3OQ9K9WFQS1Tqk1fk5fPLf37E4XKr+3Wwa5CGtBy6wccECH4j+oRNX/
	Rpp0lPr8ENVLc6GeDhuU1t7Ovp0ArjbpA6aK6+xiH1LpLNhC+TNlm4jEWpG7zlzHfOC2vH13EYg
	dZHK8zfhRLfKANV+LBkwZ84T07p/+oYYV/XgzLijvNwt/buD2SHUEUid2f/6r1wzH0PFXdeIEwa
	DbdoFq1AY97Yk7UZ6Zri3SiUYVmOihNXuHkHAuSmOnftwYnHu512ZNdMJbqIHhH9oZ+JLocUB0j
	RTKrZAhwwkMSj7HnNtUg7DzLbmEINDj5VxTg8=
X-Received: by 2002:a05:620a:25cf:b0:8a3:a42e:6e14 with SMTP id af79cd13be357-8cb1ed74340mr557797685a.10.1770775434889;
        Tue, 10 Feb 2026 18:03:54 -0800 (PST)
X-Received: by 2002:a05:620a:25cf:b0:8a3:a42e:6e14 with SMTP id af79cd13be357-8cb1ed74340mr557794985a.10.1770775434381;
        Tue, 10 Feb 2026 18:03:54 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3870689cbbcsm566451fa.10.2026.02.10.18.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 18:03:52 -0800 (PST)
Date: Wed, 11 Feb 2026 04:03:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: lemans-evk: Enable the tertiary
 USB controller
Message-ID: <spo4k2w4rfticusog3le2qd6xx7aefydwhm664shopclx6rsac@asu2z67q3ke2>
References: <20260210125348.2800846-1-swati.agarwal@oss.qualcomm.com>
 <20260210125348.2800846-3-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210125348.2800846-3-swati.agarwal@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=HI7O14tv c=1 sm=1 tr=0 ts=698be38b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=LiLsCedRSls9ElGAgoIA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: hnqxdz5HM8dzXGHML8tMMDGh0B4UIm7W
X-Proofpoint-ORIG-GUID: hnqxdz5HM8dzXGHML8tMMDGh0B4UIm7W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDAxNSBTYWx0ZWRfX7jcbK/izRdbg
 b5u/RVakXFdyK4WM0zZmuX026Q980s9EPeNdIYxHxCKuRs1we4CGIqkiK4NtJkyTLg8O/UGVbSx
 ZFtrjuTsag87dkKb6bLhxSCF2gnsYUKR0t7Zf2HBFtmTMh51rntCic8zHBwuoKIl75QCtlFwJgt
 MZy0laJ8l28T/WV8enezuqlWhLlyaSbYpCGfOhmyiVjvoMi74BpsgwFpsqleVxIZvX4HgYCAIHy
 jmghWZ8N3Fhcgi6dlxtusLkBDCfeAUyf9HbZNIJjr+VSPKDXTCYdWtY4KIlF7KiX5o2eDppBpuF
 ogO8w1psWEEfYM754gykEfDf/g8HCysCRyP+SWG9Q1xT0K51HX4asti6lYNGvKn7Kj+l/qjTXFD
 xzVvIrA45+OQoCneZPxqldgeFErG0I1cvYpyS3C/jvz+916vKmWw/Dtnd6iMVn0U8XH5ZoXwP8v
 D+bv5UGJPQ0DMXuWmRA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110015
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264582-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 20EA4120A4C
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 06:23:48PM +0530, Swati Agarwal wrote:
> Enable the tertiary usb controller connected to micro usb port in OTG mode
> on Lemans EVK platform.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 52 +++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/lemans.dtsi    |  7 ++++
>  2 files changed, 59 insertions(+)

Two separate commits, please.


-- 
With best wishes
Dmitry

