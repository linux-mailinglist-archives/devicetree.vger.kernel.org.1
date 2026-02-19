Return-Path: <devicetree+bounces-266657-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OO5xNXQTl2n7uAIAu9opvQ
	(envelope-from <devicetree+bounces-266657-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:43:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3719915F313
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:43:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0D05304CE98
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 13:41:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99D2D207A38;
	Thu, 19 Feb 2026 13:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nxwe/HkV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C8O4m6Kg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569042EE611
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771508495; cv=none; b=XOQZe5I3Hv3+B3mibE78+4/aG2dl0vA5jRTRrezXMriDiF5ZQWWW5jygR1IX0375Dxx/8NGzJWlkL2jJkYw4Kdz+2E06xdWqBycS+vbm6NZKFjFBtqYjwGP+Xs8bZUhL8zMzj0V5gyo14UtV86Arc0tUOBaEp8hOkIblirMKp0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771508495; c=relaxed/simple;
	bh=20Z9fVIBU441x42uSsz1Sj4JxiWfvuxBO7Ia8gjZMlc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sj41c8Fjb2HK0BC+Jl0dmFm1rkAfLyZ/YvP62a0OPRCI6BjOeBX10AAZW1FBxySRr7E74bTbaZk8/PF7aLY2OtR/NOg0i+i8aUNY4TOvR36Puish8Hy/Ftz/9OTUL6OZX2FjIy+L2r2h453N0nr4a/xk845R+XprVMYeFXfUX+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nxwe/HkV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C8O4m6Kg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J7UCl7398407
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:41:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uAxiuSK9wSFkTqs3VETHbhurI5jwGphbTIwXjonuh1M=; b=nxwe/HkVFAKTVwyO
	tkdCsg/uT7cvo3jMOpIN0xcNJblJnJ8KIZzAIZD5LUn46pXrhKiEdJScFBlOgLM+
	4kdDXyjv8rC+pXyVGtUaM3yiYkje+jOhbbjEc5d/0YJsRwoeMpDR30my3E0YXgsP
	+aS95MCjbYrrlDaW4AV/iFPn8FPto1vWCpLAgqvyuD6XpjBq5ZqCFENw3XMrLLId
	xaLTDHZoUWWz+rkogWTFpEk4ROV4EBYMtgtFlZsioH5gZAvCEOXLc5QBsiPhuaDg
	xctqD4CYvttErYtVmIqe4DxUo6yj8Xcs4f8ecS6iZzjnXr8bzFSLZMUS0U+ZZU3v
	urqIBA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdmxvt7au-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:41:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb50fb0abdso98603885a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 05:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771508493; x=1772113293; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uAxiuSK9wSFkTqs3VETHbhurI5jwGphbTIwXjonuh1M=;
        b=C8O4m6KgVFRDgXCu+dLtilXwwMuqcEnvn40WZallxV7coualAVxw3lpxy7v+xAAjp7
         ZqosyPYUEuRcUjiovavjPQjmfQxO19pWgROc2VYznPFdAPzo/fs2RT2yAxe5KNhPSa/h
         +tr2ZevK0k6z+aR/rShJYpUYZXyHdKfPA2UIbTmbXQ058//yIG6nZRoh4FHQ+2ssU1ju
         epIRyRNPLSSqqNVqJwLDkuuqoICOTazjYG88iuMWkuVLuTR9rvau50aKjpBMsP6sR+sy
         2LVd80dyo4aMSpjCV7jqO+R3w+rdO9kGjBSHH+SnbPaMd6Xchsxnrm/ZMmQWO96jDIsC
         6RUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771508493; x=1772113293;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uAxiuSK9wSFkTqs3VETHbhurI5jwGphbTIwXjonuh1M=;
        b=u/9LBTIJFP2koePB5CRDA2IP4ScA/No7GYyWmBCviZ96bA8zQ66EPQDG/Zu0s70vIZ
         uo+qns0p+zPSjSQRbmZGE1c7eg7LWjQROA7PsxxjFXx/HyoYymKQPmpTN7TyEr75xAQR
         qUMZJuqpsL39h2xAjOKFm98HqGfa3KP9FLH7uPPr/QTKM/NEwY4UBTIaHhyPTynBvKkY
         USLiFxai5bTgF5ouarWVDKo7zw/8uRda63Qevsy7rXkeQRl4aedG06jgm80D21wH1Yq9
         WtbCPXq7lrWn184Xpfin4165Ww5K/bVNbR07pUqR+Js+nm/QrPOVRm0SxGxHQ8lbEV4i
         KhNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqWOdZwnGsRcxnko0OQ5LQfEdG6wB+fMbyHd7vZ89zccwzLxLuvcRv7azOo79vukVmT1vlETv1AWjR@vger.kernel.org
X-Gm-Message-State: AOJu0YzZcpYTgK3fDq6Xhy+nY9ZmzrIa7+b7yJLwE+V4JqQoXdQunUOO
	cJ9MoV4Vagn6QAW4P0lBjabcRw8Qv4r4e5UnBuJh1yPZqybo7y2eLWHFrdue3MBCMZN7b5UpMxQ
	nGeDfgVZOIqHq6rq2AM4rCKjre6jYro6dLaG8pMwKERvn35LFVuYZLPvNzmY6vrNV
X-Gm-Gg: AZuq6aLRHpGdKR9O9RsOKP79kBboMW7SP6kPJN9JlO9qR3GfPh4MKHKp+gp+P+xdL7Y
	W8YNFxPrSAy71xWHx8R97YXtOkqWi7F6yNaPa2M8IQTJ9N3/1SfxZNUZND0BfcuPwkudg7/yZ3e
	Xp5UssQiwOFDwnCWfDafjFgK1at8p6wy30KsPVwGaMZa+B8trD5nQrSFgfCsQRFfgR4Ut8Gh9aP
	9a8SFm4s7GUtn9UUKALxuJWqueg3XkIKMyH7REiXxwJCimExT+HMfKWroR+c+C2Wn3GYTmPctLf
	wp2pZGNOlFg8ToYLd+3drRcfRFVjWxeZL2tBKJ64WC+ohyhKT+hCAojfYjPrraGh+9wDr3rz3TC
	R//NCXQTI+tzZswHxHn5tobMSOu8nFSqkO6xgHjoma7MFAPU9gmI84Ma4knqDw0sv4s8Rym4kNm
	KK8zk=
X-Received: by 2002:a05:620a:7006:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cb408e956dmr2073442885a.9.1771508492679;
        Thu, 19 Feb 2026 05:41:32 -0800 (PST)
X-Received: by 2002:a05:620a:7006:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cb408e956dmr2073439385a.9.1771508492167;
        Thu, 19 Feb 2026 05:41:32 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3f0d09sm3973329a12.25.2026.02.19.05.41.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 05:41:31 -0800 (PST)
Message-ID: <98730ff5-05b7-4275-be1d-1f9506adeac7@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 14:41:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Enable mdss1 display Port
To: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, venkata.valluru@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com
References: <20260219-enable-edp2-3-lemans-evk-mezzanine-v1-1-969316806538@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260219-enable-edp2-3-lemans-evk-mezzanine-v1-1-969316806538@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: VaJ54EAkQUSQAWdgwW7g-ansFVMoDaBw
X-Proofpoint-ORIG-GUID: VaJ54EAkQUSQAWdgwW7g-ansFVMoDaBw
X-Authority-Analysis: v=2.4 cv=XpX3+FF9 c=1 sm=1 tr=0 ts=6997130d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=Ef-4Cf4N8LchGzUAi7gA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEyNSBTYWx0ZWRfX3SLSUVWi2ys1
 aG41+u8aqCl3Mx3vFeBBIUKgj3Omqx9qDLO4Xm5LcKLw0vrBxWSt+GLF0oguLxdnS8bcX4bHdti
 Dp+IQhpW/FGRbdQh4JJ3a4hnlAYb6xRYpDJF7Lk4LE5dGNGtJfxpQEH0ZnIqyMVw0PEgrSvSIQq
 /uOR+YzBL//AzMlFbhM7mq/iVehvXE6puAOZmPduIgVBEhjgfyXNSk5AbASrOU5U2rpXeUWoOfl
 I4lp/uB8FM0N5rXmWFla4M3ESNCn5qHxCUDdcbo8SJzRR+rZMhgbksHSmUiggXZEf/WpGBboD37
 9PatvKMVoHaODRXNJq6PNz/NNYklq9dOkZQPptvHnIMI9kZ8dTWdYm9kLKMQKl2MW2a9bTsrAuO
 IEv32rtegvW1FlBHCV+pdhD4bfqPE7TAl+Wic6BZZmKwUYjlIo8v8hcfTPGt/KIowIP3V9bvZDA
 YhRRAsaaZm1ogL113Vg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266657-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3719915F313
X-Rspamd-Action: no action

On 2/19/26 2:36 PM, Gopi Botlagunta wrote:
> This change enables DP controllers, DPTX0 and DPTX1 alongside
> their corresponding PHYs of mdss1 which corresponds to edp2
> and edp3.
> 
> Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
> ---

[...]

> +&mdss1_dp0 {
> +	pinctrl-0 = <&dp2_hot_plug_det>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&mdss1_dp1 {
> +	pinctrl-0 = <&dp3_hot_plug_det>;
> +	pinctrl-names = "default";
> +	status = "okay";

Nit: a \n before 'status' is customary and it's present in all other
nodes in this file

[...]

> ---
> base-commit: 1a0829927afbfe654c632eb2e779fa32df825b06
> change-id: 20260219-enable-edp2-3-lemans-evk-mezzanine-1bef9932ee6d
> prerequisite-message-id: 20260203193848.123307-2-umang.chheda@oss.qualcomm.com
> prerequisite-patch-id: baf07fce333b86c35c3d4cefbba5800a519952a3
> prerequisite-message-id: 20260217071420.2240380-1-mkuntuma@qti.qualcomm.com
> prerequisite-patch-id: 74a76fd6a1129cdbbd32d91d2a119d693dba78a7
> prerequisite-patch-id: f4a858f7e707c8e330daf2ea1f4da58b4da00f05

This is really long and scattered across multiple people, effectively
making it a chaos for tracking. Could you please coordinate with Mani
who submitted the changes for the SoC as well as the ride board to
send these patches together?

Konrad

