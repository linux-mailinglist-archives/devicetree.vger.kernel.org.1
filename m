Return-Path: <devicetree+bounces-278014-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEyhNItSvGkXwwIAu9opvQ
	(envelope-from <devicetree+bounces-278014-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:46:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7EE2D1C6A
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:46:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2DBE3307092F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD462C11CF;
	Thu, 19 Mar 2026 19:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d1AbAp80";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BregyKRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D502248B3
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773949577; cv=none; b=qjwSNNbiNfYFcC/vhqZD1GWYYQ1iIBholQ3Qrguw57m4Qve9R24tEsJayUI0UXFlpbvbp4M1i7gNjmjHfA9qLft4B97mOWCO/oGWWW2P0EhyImLbLrq/uegiME5f94DUCxWaGpHiSHJr9F3CQHNJ8w6PGpuiJVyR9JiXMtPINsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773949577; c=relaxed/simple;
	bh=MEDPbfK/HMr0VQs1sLXTRMoD3HYls5syH4S7qzUKiY0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t3cHmiO0st8dPCt9mWqrF1X684Wm7edcNYfu34XbLcVydPAoJX9qij6j71u0U/9+8JOo6Pg0NMkLWITJkt8Vq4QFCYjVIPUZZcxInT6QSLCu6qVzQEvqiR2t5hmo92LmK1T8n0bAzhzhHvKF7eZ0IzhyAd7S+y4QB4ZC54yp3L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d1AbAp80; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BregyKRP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62JF2eOw1567799
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:46:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YikaA2lXUddAOVG5ZIVblF7p
	HmrAFMbfMDLO2Wep9jI=; b=d1AbAp80iMA9ieN+7abIZ49Q7PreH7ug3tsj7wpS
	76EP90vGh2TK1VWrx9osAKdd+lNhVSHvjgLTmqo0uENGfuP2N8joZWua3uxOZjB6
	rqIjlVcN+KjzX0gUodrRQsmHeMurbaSKXJsNys60dgKOcTJtvk9mAVUa0vkUOcAB
	XJjpM+FapD4dnw9wPTKrugiF4JAlJYRjV3AAFWkMQQci+Q9HyvTYTLTD8uGzIkTh
	nVviW9BlDzHEqn45QNVNaLIZaYHXyehQjkd9/IA6eVMO08ACvIO5QZGpFVb7VWDG
	PwQzMXhUYRW79tTQTzkOD9qn0bcB57aR/zuJSOWrj3jNew==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0akxjs8h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:46:15 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5091ee9f1d8so105787561cf.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773949574; x=1774554374; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YikaA2lXUddAOVG5ZIVblF7pHmrAFMbfMDLO2Wep9jI=;
        b=BregyKRPkp6Jmh7Lzks+uNTHlsUDZZo8gLFqzeIPjl1pVpgIh9VwuIULxQx7s+ZoyS
         Lyd27dIZA74mIctKUXMyEdYBOjDVDKMyAqAhEIQdANMzZyi+Ovk+kn/+nO5UhWuQqPMQ
         27HU4shblfiJMJY4wMjviYpZr7koKgdzGb8jhB/KIxtPm1mL8nu6QAVQdqPuRkgMPZzs
         LCtR9JrN/RBMg9T+QMyXwpPFezHYFge4J4bvqmhI3xDAquB+P+FC8AIiqApMRv9sKr6g
         yRZbJzbUiNpOtvGzRx2RaLb5BpYPZE2oAFdUeSWxyw1SJ/2RxyAIM71OqhYfqyB0XXex
         hNMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773949574; x=1774554374;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YikaA2lXUddAOVG5ZIVblF7pHmrAFMbfMDLO2Wep9jI=;
        b=CciQET4G2mmCmInoyOhA7VS45g7O51wa1aJsE17a1o7LxofemoGsAhIJJekah5MqAF
         cyR6rwkHPH43qJivUrvj9YXf6cr0KlWjWW7UonMzfg3d/ZkVa9BcFgbnKgWYWbYnWHOm
         rBa+EilTFVmqmfdQCYShelM8ressMxEYhlYJ00LIgInexj9bFmaSArNcAyt2pCyZDfIu
         Rml3TmirJXGuJ5KiWIJroOFOaMGB7/fY+jK3TUzNOLgaOXPWX/iKc5bUJYoblpFBwh7e
         G7xmwQZpsFrbEacy8Q6xXQdATUvXIQnumeke5y9Na80IwHVzH0yuV75QhN1xh6/l02B8
         bZ/A==
X-Forwarded-Encrypted: i=1; AJvYcCWiXqaK/XXs8/dQ5d0uKKbiFCE9RR4gKZv93OXPxtMVpBcsdT5vMdMZ/3NIwgcILCqkemL+BOWO28u+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr9/Ay4ZDpgStl1w3NieQoM4ci3M7R2Tg94osOLUwTf/RdEHW/
	aZcZvDLKmLUxgUEcrPBpc8Mj/nodOfqhlsEQoHLp2FT3gNkmV46TgHuY78zO0wDwL3sjv3iel0k
	iKMPN0FtXU3v1I880vYzeZ3bUDPMaLHtdq4iz4v/EAjHDGZZfCkw/9KSdFEg9U8nw
X-Gm-Gg: ATEYQzwN75TglEgNHuiHxPoCNbsLuT0ygYuCmruTEpqnWN0YN+boEebBt0mLGRtG8Gc
	PxZZq64+G3YGxxFyVz4pIYdTa6Y1DYiF2Zlh2TSo1h2CZzm9EF8K5YNMgbGDY9hIqDeAwC3axN9
	+CAbRAZ60AQLtXmO9N6kdMln8apr2mw8dRCw/c+8QrHQ4Bk32Hso8+qJS6BgXRsLFKWY6tXjcoP
	wodH20VIx5VbM8aKXQDnH8g8IXDB3xee8abKLZEIfD1TeEPq/K7HKVrw2x+KUaWZJyJON2Vx+a3
	5bAblWToUbv1izMLR70W4zLyMJ56lBHjnCyERKCZgFp++2zs2hYgCnBB1lVZgJzdynpjpXzMRyk
	rXNYAL9aFbyHMfcmBywBDCRbjQbzcUVpwqZszzU/1psv99NknzCP2dfPhGaOOes7iMPeX7NfMoM
	PWvexrvR5ap2ikQ1hRfwI9UPymZwrcX7jCfZI=
X-Received: by 2002:a05:622a:30d:b0:506:9af9:595 with SMTP id d75a77b69052e-50b24704396mr68887961cf.26.1773949574565;
        Thu, 19 Mar 2026 12:46:14 -0700 (PDT)
X-Received: by 2002:a05:622a:30d:b0:506:9af9:595 with SMTP id d75a77b69052e-50b24704396mr68887371cf.26.1773949573890;
        Thu, 19 Mar 2026 12:46:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a28530cc5asm97002e87.75.2026.03.19.12.46.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 12:46:12 -0700 (PDT)
Date: Thu, 19 Mar 2026 21:46:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Sort
 pinctrl nodes by pins
Message-ID: <qdqobkaqdfk6qe5q53tqt3zlw2swusys4jqddmyqgqwtpjolbl@63a4mfe5cr5m>
References: <20260319-fp5-s5kjn1-v3-0-9cf4b8c09567@fairphone.com>
 <20260319-fp5-s5kjn1-v3-1-9cf4b8c09567@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260319-fp5-s5kjn1-v3-1-9cf4b8c09567@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDE1OCBTYWx0ZWRfX6sj8yC7uXAmf
 eR13MkBYfF54adgj0jGYacaLDCkHBJU7sFcq38es9w7ZS6bkGwOu2rolQuHMCrZTbznfbu1T0hD
 IEsRfBSxwVOyBoOy526x/XIQwVK8h+LZojpMMQ66kiMEPGFhSyWMcy2szBvxRXy4sDEjc0QAxjr
 W32nEFMXVwxD8hZkGBeKqma5QLVStoCvEC0wjpP1ARNtHqBEaXJDNZszx/1NdatwNy0GjdqywqP
 Cl21zxVtb5l8gsvT+rzI+aaMPvtohfE8YYANiIE3qhHOqvyRn2rWJvCb/V9bSbbxtcYWmbNNNoT
 pGpjTUQsFsaksi1LOe+jz6SgnkVP9apTDW0ru4ENnHz4VEf4wwaJ2F+ip92WYEYGsqMle+RyWsY
 UUk6jElItvObcrnfrilsN4eVSyowoD4DKnHGp/gq6OUwdCOTulI7mixqUYknsjt+FuBgsRrQqi9
 51MqYCQhd11nRDg2U2A==
X-Proofpoint-GUID: uV_f5AXHpttJvKUwTCo6Qpj-ZrUBe7Ev
X-Authority-Analysis: v=2.4 cv=ZeMQ98VA c=1 sm=1 tr=0 ts=69bc5287 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=6H0WHjuAAAAA:8 a=x2qkw7L4rmU9F7zQ9u4A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: uV_f5AXHpttJvKUwTCo6Qpj-ZrUBe7Ev
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_03,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190158
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278014-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6C7EE2D1C6A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 04:36:28PM +0100, Luca Weiss wrote:
> As per DTS Coding Style, sort pinctrl subnodes by the "pins" property,
> in preparation to add more pinctrl states.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 74 +++++++++++-----------
>  1 file changed, 37 insertions(+), 37 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

