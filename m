Return-Path: <devicetree+bounces-269357-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Mk0EHTMoWnowQQAu9opvQ
	(envelope-from <devicetree+bounces-269357-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:55:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D541BB118
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:55:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CA0A30F9E7A
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A37F1352C5C;
	Fri, 27 Feb 2026 16:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Aywd3cfh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="idRTVBm/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F78434C9A3
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 16:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772211020; cv=none; b=q7lZaMzNt2kTeOU2akP7ae15kSRkwZ/7OSGsRRN0OMcxGtUPrFTXLmr9St7801Q+YI7HHdVtovtADHcztG3Vj3eifI06UCc/PRvsoy+vwM3H4ZOhXPJXGYBc9xUR/qxQ7OTn2WwGOS5+9leAZwGBaBgHsJrIXnan34+SbiqfZNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772211020; c=relaxed/simple;
	bh=I1zDqyPuqDldOvtN2RqZkVgdgLAy/AoArdg7wkVIbQY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jSgnDmMUJDMjJ+WqPjey7q0I+5QdCaF2hPI0iM9Gr1i7lNVbF/JVTSVOY9EwNkoqo8HtkFkgW85MfBgG/Ezp2wcRXmpoh+DzBHbVGtXOJYEjDkE/0hpAsfJw+S15MbEEDPw/lcZvT9wJpbzJa6inYmcvZPMka7XdRWe8PWVQisw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Aywd3cfh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=idRTVBm/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RGiwgR4170617
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 16:50:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I24GMf7D5q0mlpnV6IQx2GHc/w3/CJuovqa3QQtDtu0=; b=Aywd3cfhB68F0txm
	zNjS282AypQBTrBn71dyn4Dv020xfhI3w7ujsBxW2e+SFIAPGHuVkr2k0SDf3XP4
	AINyd0bQA7WyRmbFhnSOv2gUzVTSm8eghV5u8A6/E/73iA5MA5OtwuZL1ft9NiXX
	Y6CLG4vEn8bNO2rG66uA4LbUbXSck4v9KXgOOO5ZiVy40mYrtANvlqjbSdjX5PQr
	PMFWrJsuYM8o/uD4fEEJ0QEtvqY/gtkrFUQcttwCPm7AXs36wM8jyJT3AMLM2IzX
	HZSJ/1i7thH/TcqxK0oRKid1l2Hx7/ZYam/bY0euWBkrlW9QVoVnj6IvPQKlpEn3
	hOAlhA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjuytus6e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 16:50:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb38a5dc3cso226045785a.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 08:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772211017; x=1772815817; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I24GMf7D5q0mlpnV6IQx2GHc/w3/CJuovqa3QQtDtu0=;
        b=idRTVBm/tjNfecAUD79mwvSQ0yTavN0AK2Eor7R+P14TudYxYpyZL+TPCXNGNwiMck
         L/b7hIRr9drA8hWZvrJiMKD5ZUnth1FtBDuLSORhxJx7YHhZOy83gaEa0mTFo/M+f0g2
         t9Jddd01sTeYrljEz8keMxhJz9D4qYqAhtlIZPXL9eY43lv81cibgyTT5GujhdGj1ZGN
         nCMEDLvYBVtFeZzGtZ2N2QrH1XsLA8bkB57grLdwTWeAX0hbuJgtw199Jy0KApoY2vS/
         NlQOXK8ezl8QJMV5ECWmgR3a9cWEwJMsw22UwhoRS4xPVliKulXMrIb8DIy5Ej/6cM0+
         sNZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772211017; x=1772815817;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I24GMf7D5q0mlpnV6IQx2GHc/w3/CJuovqa3QQtDtu0=;
        b=wwiI5dPxKxxz8QjH0qg3nwyRQZGElz1K1TzE0T+TAvoPNNtWJdnAm5eYEJ1rSxN06m
         1c05dttrN3TEPatptHuSrqtv7I139Wkz3QINAy5PqLokIsHkn0zWLxqNpvdkyE49QxYf
         nkUvnIScKyVAKCoM2hCS1APIl1/3IXf3Nlu5hQMvkxASIQ9vSA2fUqhBpbCzIa6O3WbC
         OxV+4K8f7hkM9ISkJcTShsxE465z8KepjCP/5JqkVXQ1Mw+5rwGOO4TnIXqPf3uhYfQ/
         H/GvDso/OhjJHHknctbEabxwxcikwLFVx1ZVdDF/7IvlDH5rmCCJ8JRmAs5ZGjTkgAXR
         +KCg==
X-Forwarded-Encrypted: i=1; AJvYcCUlA72G+oWAAdAg0BlXUCdq56BGJtFdQ3na4KN/QSywBXQ0FzUWSaMtYmPVbQpkZys00B+sczVPtelF@vger.kernel.org
X-Gm-Message-State: AOJu0YxuEhg9HgcRu4lu+1P30BkBKJsAG/HCgQlG2/tJk7ci3rHxjx3M
	9sVk+O68vMXpvjC5j0lvSPardIKSR8o7fY44J7dKiYFW08KiKAn6JMWiZ/gHv+5oPuSTByaaNLE
	8cNWU0hp6cL34VA4H6LbO8vq81FZ7rgT3smkoJb9MmB1tAKXWip8qqnNa4XXz2BXU
X-Gm-Gg: ATEYQzwB8Fn49ig1UHXENYKI+Sx9UBbkg2oLik/ASjXDf3q4QXyYm/1ywPhcAThq5jW
	u3Q3L+9SEn8MiQOEPtT5D/Fxr7kpmn1Sj1wngeSWO/gpTxb1bcB88NL6p1qguASLoLYZae1QNj9
	ur4VKqA1b4Qx2pMxao+zYNuaoRacvTW02PJYQIvoHn3Hf2LP1apBRZn+ye/sE5n42sjoa8NzY8z
	eCD626sSGF9G3CzLACf8Sn8La2dECAUkLREBtIjreZlhL9c1iPoNw8235MsfKiZrZfO46UnUmUI
	fl82ocU8SDube53mkSmROyrOiWwc4IdP2lHAW2k0VZHZw8LWqIDigZ+E+E8Rgw5HYGR5tfzZbdv
	82JoxX0AEOeKoG507IwlAeP8WKG+XKKTooBAp+NI8alYmSR0DasZ6THbGZeEy0D5nfb0bEwRb6f
	tjuEg=
X-Received: by 2002:a05:620a:280d:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8cbc8e970f7mr305786185a.10.1772211017526;
        Fri, 27 Feb 2026 08:50:17 -0800 (PST)
X-Received: by 2002:a05:620a:280d:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8cbc8e970f7mr305781885a.10.1772211016764;
        Fri, 27 Feb 2026 08:50:16 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ae612f7sm167054666b.36.2026.02.27.08.50.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 08:50:16 -0800 (PST)
Message-ID: <b79982a1-a0ab-40d2-a03d-606280c3a3b3@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 17:50:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: monaco-pmics: Add PON power key
 and reset inputs
To: Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260227-b4-add_pwrkey_and_resin-v3-0-61c5bb2cdda9@oss.qualcomm.com>
 <20260227-b4-add_pwrkey_and_resin-v3-2-61c5bb2cdda9@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260227-b4-add_pwrkey_and_resin-v3-2-61c5bb2cdda9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bJIb4f+Z c=1 sm=1 tr=0 ts=69a1cb4a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=J_uYMOLApeVIcPsgZk0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: ZpxI7aEhXcHPJ1_5ioYC8k4EFGP-ZjG-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE1MCBTYWx0ZWRfX98Ky3xPsodB/
 /MMI0rWNolgCVlp7eO42vBabclLfeZntFqvyJ0bq2dsGiwipIuLfprnN2qJhrEwx6jlsWhRgGnA
 LPmkG9uA5RrfRoa89BeFELjgdPIowjaQ6YsSf2FHB9uc7/Z+PGu4vdgxAH7tu1stOiMf+09D8l+
 YZAXBCduCilzo9cUbqG+FFz9Z61O0RBWX0vHjb+nMzoDMsQjP+IjDypWhYWFuEciJKjdNvJChP9
 pXQ9FYm9q1ZcQTw0CP+6HnfVfXeXUof1XCfmrR2UcLyvDZKhI3lrh+DyVVOTWu4WUYGbbI6Fgmt
 fnBJ6fCzFLHOdqXMt7G1aopiGNuSDR/2ldru2g4Ts6s5O0jHCEGQOC5fsvPLUcI034zEDuMxx7i
 vzH9iUJL0O4E/l7CYT1zwXp4GLS0VXdLRq8e4mMZ9u7d3Q3W7+feePDQySFoZZnBs7vVh0gQ7fr
 jZQWqiZvrwaUdnVkbmA==
X-Proofpoint-GUID: ZpxI7aEhXcHPJ1_5ioYC8k4EFGP-ZjG-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_03,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270150
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-269357-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 93D541BB118
X-Rspamd-Action: no action

On 2/27/26 1:32 PM, Rakesh Kota wrote:
> Add the Power On (PON) peripheral with power key and reset input
> support for the PMM8654AU PMIC on Monaco platforms.
> 
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> ---
> Changes in v3:
>  - Disable the resin as suggested by the Konrad.
> 
> Changes in v2:
>  - Add new PMM8654AU compatible strings as suggested by the Konrad.
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

