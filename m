Return-Path: <devicetree+bounces-261951-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QhOqJj8KgWl9DwMAu9opvQ
	(envelope-from <devicetree+bounces-261951-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:34:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A57D11FB
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:34:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6269F3020868
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 20:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2782E2C234B;
	Mon,  2 Feb 2026 20:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EMcz/zUW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WIxhOo4S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E072BDC16
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 20:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770064442; cv=none; b=dzsddhlITsdUmaCXNlAr2MKEadR8hVVQxkpwmJiVe880g+tAUDnOD/nEu1PUh/JCpK1zg0pY3tEWx2/N/IpuZVWMvxF1Hx32+Em9oIxd/T9KhUwOTfuBvtFoo2rA8tkx6+Hgj1iTlgT3O7zg6pCdZfXG7q1oculx8DvGYsQUXjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770064442; c=relaxed/simple;
	bh=AAGgoRaMg8X6w0FiRgwznJrC4vdntNkIqJEV9/0kQ/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gj3Z3vIGL3c1qyOOP0rGcmDdSoUA/LnBbo0VooDT6uiDGWnPM6v6U8rMz7ig4DvnMQnXLYwAjTP04O9nBUe941UWtzN6taToZTdQHlILWpG3ix/qGzO1fWeCvbJwL+MMCQdx0vHXL16VAWHdkAuTV/JjZy42vRsWrgqARYtlr9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EMcz/zUW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WIxhOo4S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612CJlNJ2885193
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 20:34:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ckMGDlkbd98kpK0JvG0HV1pF
	HxIC7BaO2528jq5jWA4=; b=EMcz/zUWkRPYHmlImw8hbDqaozu/L2J4Wik3iYF4
	mKHLDZqN5bpyfhId9Nt44qswZOU0xUuOkhI6oOCqbOZGgh9iMp+TWvnzqa3qFVhN
	HtnbSbrYMOM1lCWE027scA2SjsAEsv1gaguuZHTCIVV69MPdSoeo+IJbTLiPhOyx
	X45weeigqMF5QB5kZ9ASpYcpcSAhVt6DK+2RGQWu6pTDrJdsPk+hSEzhRMRXh0/9
	1pLZwoyc1sWuEFVSW2ZkaYX8eb5pHOPKfRJsXa0zkXLUFCo6B2PD2qtR179tLu3Y
	XjJ3yTnliq40GS1Uc60YycuyL7POLvCr7ZRfZJKFuZewFQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2uu3hj45-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 20:34:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c71655aa11so1554950385a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 12:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770064439; x=1770669239; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ckMGDlkbd98kpK0JvG0HV1pFHxIC7BaO2528jq5jWA4=;
        b=WIxhOo4S0w2K7z5+aFxcfoFUmhtRgvxsdYSjdfPXxTNMYX00HAAHgtVhglMcfQdR2S
         3KtcPdhfH5CfuSBAl3hjlBAgzpOdwjHb5aDfIqp4nWRm5Sf/6H8jTCrSmFucLaZFozSm
         esrfoBeQHghgu7aFRCIQjfMjt1V07RbhV2GPh5aG2vC2ZeRNbpOEVCvHMfdZRVPvYJ9+
         VGJ2GRJpf2MuAzKA5NGLJyAcIV9PkCS9ORqCg8/keDMBJlg2bWLkCVCCS9PjRCXodyGg
         9q89Aq78LKpiQSj11nfmAx/90xxOSlRI1OI8MNEaPAwIZ3WCV0pJ9GWC+28ZG/QwxEtl
         mqfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770064439; x=1770669239;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ckMGDlkbd98kpK0JvG0HV1pFHxIC7BaO2528jq5jWA4=;
        b=ZV6tycDocgnChaFXOfs1URPS1qlKoC5BVovDzDS6flj+tu309rqD6r+Dkw1/J6cKNk
         DSvSs8zNV/nxe+JQfDoOz6GxzemuiJ21l4m4JoeWyUXvXgxvUxMs+9V+FP53a2cK6zR0
         aRFEo+m+hV21DTNOnR9b0JKO84LI5/0Ece8R5Z4uOqhJDvP9xYkXVeIiBNvVPwXAV85F
         Wsni371wX6++6g39DVqr7RSMGx+K3WEKC7jlZ6XI7aFoaI3kSmdSqhIN2W6bjlO5ODsP
         muVRu9q9tgFgG9D2c6HM7uyI+2/uREnW0JFf/IGVe81lmeCuNGCXFI1koOgynElDqNOz
         grRw==
X-Forwarded-Encrypted: i=1; AJvYcCW//kBeXvoogKHBTBzQoBuZp8BzIFwWW2Dm/KByxwn4QCUVkrTQek6WIob4/xRryBC51RYdE2mzSciX@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzp7aIJhbdkjDJFcXxeyY/6jiF2TvVSZ4YotBY3YrYZK8Azul6
	WeK0tjsnBMj2CjarhzJJK3qBIBqb0h+D7+NtITBFUdEVgFte6akRBbf6vz0cZamx2jb7CeEpvuI
	xrCvBohC7V5Alk9tYtKZbcY7Q20JdBfvWAkiAd4ScgniGVegIjjOQWN58y/A0ONMB
X-Gm-Gg: AZuq6aKsLlUL+TbkJqoRjftrnYU7VUjudUlkpJ1i8nNn+TfHYa7WoGbvpMNnGMklhOW
	odRujW6xo9RzzuFWoX1ACKusGAk8kG1vV+2UYkcEzW15L5pLfS4XnQJc4gj4h1FEhQf6KxneFId
	GwjPc2mGybvTVuEK0KKkQJAc2rQ5FMNj9WiJ/QxTWPp15LrfqigSpnfi4arlhdX+4hJgJitk1PU
	mT6jgAfDQFCLkkF5K4P0K7A5Lkcf6Hnlwbhc6KFR5kZzbjaLPglBOs2t9FmmwHhJa1jFF5kvLRU
	qs30qyx6wNDxOhxt2Kka1YAXss3Ibp09Q4D2PNMja1AiAVA2Qb6hwtxKegaSu2CC1zOQFlbPfLy
	AIu7g0eYgmRDRBu+GQpmkFQc8vfdg7R4ZnSRv5jAQOc5Z/CMZRqFJkoFtU/sjoYFpWJ6xj0SY3S
	fkBcDg4xJL7qxo2A9rdhcavA0=
X-Received: by 2002:a05:620a:294f:b0:85c:bb2:ad8c with SMTP id af79cd13be357-8c9eb34facamr1591674585a.74.1770064438998;
        Mon, 02 Feb 2026 12:33:58 -0800 (PST)
X-Received: by 2002:a05:620a:294f:b0:85c:bb2:ad8c with SMTP id af79cd13be357-8c9eb34facamr1591671085a.74.1770064438493;
        Mon, 02 Feb 2026 12:33:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e0a2ddabasm3382564e87.25.2026.02.02.12.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 12:33:57 -0800 (PST)
Date: Mon, 2 Feb 2026 22:33:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] interconnect: qcom: qcs615: enable QoS configuration
Message-ID: <2tvwvaoyh7abkx547mmuknuzxh2hmxopodbfukmpmkgbvz4ghl@2svwizaxbca3>
References: <20260202070534.1281652-1-odelu.kukatla@oss.qualcomm.com>
 <20260202070534.1281652-3-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202070534.1281652-3-odelu.kukatla@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 0fKV2T9zMV-djCUZOAmv7dZh7ZsEzum2
X-Authority-Analysis: v=2.4 cv=OrRCCi/t c=1 sm=1 tr=0 ts=69810a38 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Np_ZfMqjrSSXuD8GcM4A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 0fKV2T9zMV-djCUZOAmv7dZh7ZsEzum2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE2MSBTYWx0ZWRfX116uqN8JGpuj
 gqE0ju1AZhkgLQFXRhHVD8sCp0iop5h56NP6+NoBU4iHasBRQTKNSN4e/5DVHs0xkSDBBUMPOcN
 d4a8tWAaOOaMLRwF8NDJ0NptK5n66U/zg6+8qLTm1fBNBlx6M0JjiJZSJF/ajeBoopkZhO0Xbg9
 379FlJ9MOOInU7f6fXU2pBEyIorvqWjcNeMLHmpPzVpsaYNYDs2XecripVhH9byxTmKw8JI2GUP
 TLRZTTrtGdItiZXlgzc5wN3zegKxcASnB/Y1CTqF5JCemJyIAchwteD3lj0nP8sGmJKubaUnceL
 K1G9I+wQjjtIgzE7vgXC0p6F4NrxbFpN5UeHNIslBpzkwaiu0wOqEIsnC3h11lHCDgWD0+TZV6a
 /gl3FrMQvOQA6+BGIF+kgILIlM90wbM9N8x7cADhuTW1cq9nOnNZxUhh02oVR/hDKcwgWp8O92N
 YYn4DU9YQRNHBX4To+A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020161
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261951-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 36A57D11FB
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 12:35:33PM +0530, Odelu Kukatla wrote:
> Enable QoS configuration for master ports with predefined priority
> and urgency forwarding.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/qcs615.c | 247 +++++++++++++++++++++++++++++
>  1 file changed, 247 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

