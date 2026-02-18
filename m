Return-Path: <devicetree+bounces-266410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CzmAXmwlWkvTwIAu9opvQ
	(envelope-from <devicetree+bounces-266410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:28:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B4715659C
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:28:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E70E93009801
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 12:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17AD1313E3E;
	Wed, 18 Feb 2026 12:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NNJrrDKO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QUhXbFMp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D2130CDB0
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771417715; cv=none; b=J6rptn8ExQ+gIOmK77KlfSDbZyIR+EYrI9iW32UHH7E4IM/89l7MSnidbdc+SS4Z6rgnnT4NO2lqFH+N84lSgu709wsD+x54+tder8dU2OUd9r7qecsn3UrANQSMvE5oeQ/euyFH1c6HR2kKdigdLZYIKJqKBcNzlT4RfmmGQDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771417715; c=relaxed/simple;
	bh=IW3tgHFdNPEDn4ewTDvg+EHXks6YVgmvk2lqEz1Jxkk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m0ZLf66LJ++MejKLuNclX2y/Fp+m4XV6+3sdReltwPlQ3wHFcVs1/QRK8m1EpOr3ZlYm6GTF13+c2UW47Tkn2d+pSSqAFcQMXinAcxSxn0mwf60RCn9xzhcZwUQUOK7q+8t2x6Ev18zG8nKW3UmkStPNR+MtTSayV1KF2Uwiek8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NNJrrDKO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QUhXbFMp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IB4Unh1623909
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 12:28:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3ZPBBtbvqvgGENWsgdOYMO/o
	nnYa7qGNcfuZxsBQ0I4=; b=NNJrrDKOEhq4sA32IsRLg0CTFeNLS/Q2erFM/Vul
	2xhNoJECAVRppAR+oOE75QBbxdrPXWtGUe2BOS/Q2nyeGbJ28hQlRUcGdtzAuktx
	ffWyxQ3f9tErOcJtJ1IpatSg212pz27qCzArwB6C2uL5mNk2ZvuB8bDzwNpkzAfy
	0/7nfBLAna4KBv6bDntXZqCWRnf6UzjRDNWsG45/iE+FBYMBWxnEx0VEfzr+yi5f
	u2sog9Ttf9Ae0q3YiZT/MzHYF9tcfPCQCQPpWVpy6/vEvzK4LEJ/zyqCtw2yheUW
	9ay4FzDrMrq01lt+ZnkpnJWGHacXwQyYQTX6qTQNPv5kEw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdc7u85v2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 12:28:33 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70ef98116so3762301585a.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 04:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771417712; x=1772022512; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3ZPBBtbvqvgGENWsgdOYMO/onnYa7qGNcfuZxsBQ0I4=;
        b=QUhXbFMpvNdCxdMImomdLXEObnnwuV5k02rKfurpuMA4399qnBfr/05Sm5i0bzKNvU
         CzMyC8N7qj5dgRTrYCEMUMJf/GUqrsRcUYdoUwkwxPoZHDtEs+ngi8NPF6P1wyLoTPWg
         oHNNNwnInqY7fUf4udULwDdGDYLBDtO3sboZUG9ovjJ3LySqW8lvnSjvXQzGX3mUFhSI
         MTu8Im3yZUlkqDwDPw9eKGH0NWzG85XbvQ6Z9B2JDBjwXSOsfCUItjA8mv83WzSHVBqL
         ulxvwf8af/aM/tPMEkgUju4uwHGSzym3yvaIV/1TvxduuB6oU6cZPYSivtVOKmHHkRsG
         KwYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771417712; x=1772022512;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ZPBBtbvqvgGENWsgdOYMO/onnYa7qGNcfuZxsBQ0I4=;
        b=A3I2/5v5FSg4QPUT7nSYjlEs3Ml8TVxCJ4IS4JazfCwio6IfpSk2jLqXDaLQDOIMK+
         KTyF7MF5LcgRBtTUIpyEtzSsbrz6L2oXakruFsV9V8YM77RnZSJl1g1gMOW1pFTAq7U4
         XRuJBmNJAaDgfdcCQSbvqhPZ7Ns+Ez360pRWeMsy58Yz3zr3J3J5ogTvGq95yrKYsRRJ
         S742twkiF9aghGNnqhDgtiNJthj0wGsDCNEqVWldiEjG4PwqCx6huGYKntfGCkLSDNb6
         ak6JBFsRB9rJh/JQfDH8PeU0x9VFvuwyKkkxxpjz4vYhkyN/+UxXjQmQMvHiVwRCqTSr
         D7RA==
X-Forwarded-Encrypted: i=1; AJvYcCXcm6rfuMzkZ8X7k+m6hmpEtvSnHvLnDksbK8jad7wQ7DoWmm8bpK+5F7zuC9gfygTZA3vTwMrkjWAS@vger.kernel.org
X-Gm-Message-State: AOJu0YwLwZulJMt6NJAoonJcaU08J5vc8gw0vMVYqyy8yH2NflK4xnMY
	O4t9762XchbHPf11S2oPb/yAuK8d3IgR1Ak3HsgRZk9K57c52zvhpEHjpKa3IVhXMU1XiOox67E
	6Tdf2QJE1tYYTBZeIK8ItQ+Nd9kXmEsERMqoWC2foPHRmuDAr06UH2ua4NeT3wg0Z
X-Gm-Gg: AZuq6aI5Ab7y/7Q5t8fwhWa+g/sPxjXbowyVjYVszl/tuIgg4FJ2avTUDLq2BrsU9U2
	9XglzR6tFmpz+lOGNDI0eBY0u9NZOe5pLnXpvQPJKy4nAZGeb2RgMF7OHtn5/n9dIKC60koz9+b
	Ls3D/YkUIe8HRI3VkKg/0tmYdGzcfGO/QKrHp2XyWS+u2PPTDoG2bf497B6EJTXoGuUY6Lr1Zxj
	jAYSPJlaN32oGgl0wFG5e9FfxEGEj00bf22rvfFvv8yteSeB5fdDMv7iIS7nEli3tSUz6vi5bXL
	lqJMWg4kVLIlQh589/RGWWKUTxyX2UreAupdLMcdZ17/G62F4iaOrtiVWGz1tItxR/c4slM91UD
	jMjcj+qoznaMRA+1+3JlSMQQHzX12cZkmGgyyKb/rOHk13RmD/+B8I1njBdiblABPv1p52Czav7
	jE3HUfRIX7VYc6Da9s5OC/9Sqq5/xiUDsuDac=
X-Received: by 2002:a05:620a:1708:b0:8c5:2ce6:db1 with SMTP id af79cd13be357-8cb7402acf3mr174709785a.3.1771417712313;
        Wed, 18 Feb 2026 04:28:32 -0800 (PST)
X-Received: by 2002:a05:620a:1708:b0:8c5:2ce6:db1 with SMTP id af79cd13be357-8cb7402acf3mr174706785a.3.1771417711842;
        Wed, 18 Feb 2026 04:28:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5a513dsm4501269e87.54.2026.02.18.04.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 04:28:31 -0800 (PST)
Date: Wed, 18 Feb 2026 14:28:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: clock: qcom,rpmcc: add msm8960
 compatible
Message-ID: <tc5ropje7jyir7l3xsil7pt24utvbq56mlsh2l47tds63gxkf5@ntgqyrfxbzed>
References: <20260218-msm8960-sps-rpm-bindings-v1-0-bbc11c0d4f24@smankusors.com>
 <20260218-msm8960-sps-rpm-bindings-v1-1-bbc11c0d4f24@smankusors.com>
 <7gdpb64yu4ydcgfejfavq4g6vc3rz7cn3h7shle7gx6upscpki@podywah6acxh>
 <f1948d10-2327-45a6-9634-cd9ec01419a3@smankusors.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f1948d10-2327-45a6-9634-cd9ec01419a3@smankusors.com>
X-Proofpoint-ORIG-GUID: hPsDw4cSVic2QRhlGeDLwJFWj4QhFC8B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDEwOSBTYWx0ZWRfX/HZ4X2t7GVrJ
 zu4mSjgbHYx5l3g3Um9wXKWQhJjH3WizKk9qjGieXAgkGJd/ZmT0ExcuaS2sAptdaUBRqWXEW+E
 ZJUm9POklqKRnK3Sv+0DTqrGcv6n+lxG86WTcgZ/P3WIyqt5tWlK+ecVaYPUbtlglofYBDqX39G
 ldn2BNeRY5AsutctaD0KJet1lfZGZ5EHnf09IeGuay352Q2LK81fbxRxBfpDsxgGydyAE3D7Ip+
 QjqE5+g/Z9ckDLQ4QyOROJ4vRp180EFxu6FMjQMnxU53tv2dEyB4pGEeYesO1rXLxPWgkk42vqT
 BFZm9QJn/Jx1yRy5rmxkFTBwbRKckRXf+dKY/LbAo1ZBEWaa5JzfLTEpHYV2i20I+KGMWQo0laN
 GIPwAXqLan54zA6Zj5F/QVVVHZRxyxKQ0PQyhppmTJ6BzFnpXbarHUmKbTyvNN1yQV6IWkI4u0j
 6U9hjpzpad2aG8pLiAQ==
X-Proofpoint-GUID: hPsDw4cSVic2QRhlGeDLwJFWj4QhFC8B
X-Authority-Analysis: v=2.4 cv=daCNHHXe c=1 sm=1 tr=0 ts=6995b071 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=eujWdvE7CETSofOd-fMA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_02,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180109
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266410-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 35B4715659C
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 12:12:02PM +0000, Antony Kurniawan Soemardi wrote:
> On 2/18/2026 3:44 PM, Dmitry Baryshkov wrote:
> > On Wed, Feb 18, 2026 at 06:59:05AM +0000, Antony Kurniawan Soemardi wrote:
> > > Document the qcom,rpmcc-msm8960 compatible.
> > > 
> > > The MSM8960 platform shares the same RPM clock definitions as
> > > APQ8064, so extend the existing conditional schema to treat
> > > qcom,rpmcc-msm8960 the same as qcom,rpmcc-apq8064.
> > The way you implemented it, it requires driver changes which were not
> > included in this PR.
> Oh wait sorry, I was misremembering thing about how I should sent
> dt-binding patches. I'm planning to send the following patches:
> 
> dt-bindings: clock: qcom,rpmcc: add msm8960 compatible
> dt-bindings: mfd: syscon: add qcom,msm8960-sps-sic
> mfd: qcom_rpm: add msm8960 QDSS clock resource
> clk: qcom: clk-rpm: add msm8960 compatible
> ARM: dts: qcom: msm8960: add rpm clock controller node
> ARM: dts: qcom: msm8960: add scm node
> ARM: dts: qcom: msm8960: add smem & hwmutex nodes
> ARM: dts: qcom: msm8960: add smsm & sps nodes
> ARM: dts: qcom: msm8960: add riva nodes
> ARM: dts: qcom: msm8960: huashan: add riva node
> 
> I'm concerned that this might be too large? Or not?

perfectly fine

> 
> Would it be better to submit them as a single patch series to enable
> Bluetooth and Wi-Fi on msm8960?
> 
> also +Krzysztof for the same comment.
> 
> Thanks,
> Antony K. S.

-- 
With best wishes
Dmitry

