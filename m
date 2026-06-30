Return-Path: <devicetree+bounces-317868-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qhabL+3RQ2qWjQoAu9opvQ
	(envelope-from <devicetree+bounces-317868-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 16:25:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 328896E5676
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 16:25:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=TFfJDc3x;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=MDsFmSSy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317868-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317868-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ACCC83119BE0
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26C3A428828;
	Tue, 30 Jun 2026 14:21:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ED042DFE8
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 14:21:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782829315; cv=none; b=H3Eejocay1Gnul0xSML5sbA/hwgllGKR3BzBv7SXkE1r5YxB1tbfmtd8UqD/G2YqLQxM6jTdouHJ3y+JUXvMZli/ZpfcxbLq1p7OYi4q8RyDVXmqEBp7HR7WFPfhF9D2JhqDdzg0GFSUc3WY6ZJ1+5uyF75fxMpVtaQR950//uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782829315; c=relaxed/simple;
	bh=G9kqYB6eagm+OyD8Pc+SpslaGYJhcjmiOHRPtgz0Lik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kASKzDPjSSlGTtvJvExkza6WqEVHBQRFE2BTTouhAUkKbm8qHVndV4D/q7Pzl5SxKzl/MhUmNTBbmVTJCOJuJd0qfuEMd8xLtNl9pBU6lD9ErjLsseZ0qqvQZ3zfMjQnmRo4KiBSC/HRGKtFxstLFGjxo1vPqJS5AxobtrAXPCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TFfJDc3x; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MDsFmSSy; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UEDsr22200467
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 14:21:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G9kqYB6eagm+OyD8Pc+SpslaGYJhcjmiOHRPtgz0Lik=; b=TFfJDc3x/eb/PjOm
	P8nlY7r+w8wwe+ZLir1711Palwy9kPDOqFtKEVVynKQkrCHVbpO8aII6+8MxzoSa
	EIbLv5hXKNoD9/nSwnEraSZa6y7f79hVbECnnwVVGeXETLcSHkFCTi0garWn5vNI
	KkHrCcgx35Lii1vwcxkgN/EfnGhdbnktTVCnM3gJJj2BZ3qJ6t1quNdsZ4X2j4IJ
	sum702IejtGB3UVYNwDRH3uJHPRdLlHTl1CkZJdy9VRAZO/nCtbmsDWMv/3vVsO1
	ua/F+FDLzcQJASQ/cxVp/z522mqhtmmn164x7HavYcVJ7DB79OOhJ0oEB5oplDLJ
	5slfoQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4fc080v5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 14:21:51 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-734f7d8bb37so443323137.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 07:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782829311; x=1783434111; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G9kqYB6eagm+OyD8Pc+SpslaGYJhcjmiOHRPtgz0Lik=;
        b=MDsFmSSyi3KX8S4iahlA2GjNJ8d/hGFk17OvUyaSiX6RE4Oa6Wj4igY3tSgyjQRVJT
         DU37L50ynGeCgR7tn3IBaNy6+kCi1UPspHylOWrGuO8sqsFR0sDtCWGqgccMWrC1gFvs
         IOOfXZidl/dPyiI7eUsiN+9pgIN+fRrgRnNbDbMgo1x+cDHjJtI9T0af0xt/XIhedSQ9
         qVcXUxdXuvel0SGhHi01xXFXpTFebQeS6q86QekgoxA8cpcIU4j8t23Pr6JYVIR3/nI9
         nP8HtmnIoRsRtLz8VxCsTdmO0BFzPfWqPUFsZIkjOoptH+QgiIvCaR18TMp2IWhQUFxZ
         V4hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782829311; x=1783434111;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G9kqYB6eagm+OyD8Pc+SpslaGYJhcjmiOHRPtgz0Lik=;
        b=glL7jJmBuS/aDS1Euy33cLR+KUE3bmRUDyQtavpOWQxDQ41qbTDnGFT51XkOTP95QQ
         yKqr8Jsl/e8/pzFtSMq0IxUMImOnEb5dPWEcucRp7wkc9g/iPuQVBFQVtzzjj5ME/7zS
         ReGYnN/xi4CO9/QtxUSIGi4UUkeYHS/IzzPYdLowJojhsOmAcMBXYliR6rCYDbLB0GkG
         aRIp6kxkGdrV7PmTCvrRwlqA14wnrDeNWHchjMh9f+9CLextpbjRQDS+rrLmfRymyGRJ
         X6Y9gkadYt7g8tlQb/6kcBxloKCVa7sld/BZor+KPYUaEOcl9Vrd8PBbhn8fnjjto26Q
         Wzrw==
X-Forwarded-Encrypted: i=1; AHgh+Rpw3WgkST8HseQq7cYzGyHkMR6F85NlaZVKBg47B1gdlrUBtBQcNEjzx0zxVrLwLDuWxG7O4EceUQYg@vger.kernel.org
X-Gm-Message-State: AOJu0YyZdJwCnKB70TSeBj65/fS17d+olvN8inLlL3SLvTj7S8ynNPGg
	nPknMHY6jS2muLOah9IbkdOn0qndq/QLwCRpuMNYqJtxXKftjuHUQmiowcnzySlg0H6szl19dDN
	pR7reUWY5JpSF6zkbuhGq4pad+scWX+XweTRjN0bC2FgwokLXZjhjHJxsBexOAtot
X-Gm-Gg: AfdE7cmWNOw7E2DpGPau+jlFGJrCWS+p0Rk3lFEDWpjOpjTIennRkm66TIesHUswIyG
	ENebRmiMYaBi6Mz/aDVnqyCFNN71H+5VsmLmC+nMx9uky4iouCQBYK8k3f3vqiFHeCPy4JEN9CA
	YqvwI3zBg9tOkzqN65qUwLl6RRbFTgDzquEFvd4wgnNoOZPbCJpk3ceHdmMwGrctt15du3IIMzZ
	hMqG35HSq6YmQiYgZkTWe3c0IaJfFtJH8iWz/UyBX0yksLy3fbsr/1EUNVFnkAiOjvsVmYjFMT5
	nKWjoP1OS5cXqUts4FWHGsaR/efqBk2HYlBZjjQZziCqAeBRjYFPKH16lSVIzH7xECbAXXNAZUp
	pCycH+WBLCEq+uYHeS/AwG5QT9w6vSOvVWEI=
X-Received: by 2002:a05:6102:4488:b0:739:97bf:9180 with SMTP id ada2fe7eead31-73a39752cbbmr575225137.8.1782829311144;
        Tue, 30 Jun 2026 07:21:51 -0700 (PDT)
X-Received: by 2002:a05:6102:4488:b0:739:97bf:9180 with SMTP id ada2fe7eead31-73a39752cbbmr575205137.8.1782829310769;
        Tue, 30 Jun 2026 07:21:50 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6987c21f123sm1380324a12.0.2026.06.30.07.21.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 07:21:49 -0700 (PDT)
Message-ID: <917f606b-55f9-416a-8dc0-e66efac712bb@oss.qualcomm.com>
Date: Tue, 30 Jun 2026 16:21:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/13] clk: qcom: dispcc-sm8750: Add support to control
 MDP clocks using CESTA
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>, Lee Jones <lee@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
References: <20260420-cesta-sm870-dispcc-v1-0-eb27d845df9c@oss.qualcomm.com>
 <20260420-cesta-sm870-dispcc-v1-10-eb27d845df9c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260420-cesta-sm870-dispcc-v1-10-eb27d845df9c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDEzMyBTYWx0ZWRfX6bKBekb5My0A
 nvvVf+hdVJPJ1BP1JZDXkUpJO87M6ULxrvfn8gZDNri1mw5CfdJkvJ4TOcxjKUTT2tXL0ZT9SMR
 QwgfWGl3l48Oby6gJfJHLzn7GRNtUNGFcRFjljAJyREg6iFmQkHp5hIz4Dko41/Ecuiun1Pz+gk
 lgD3Lc6xZQhlWM1Z30suW4dXG8myKWIlY5GK1Qs+XWEBlFXR8EiLuOprHCTnpRQNrSITE3Tz03J
 DscFB685yKhBcLSzvzmkt1z3VwAyYkZUgP0E+ZK4BrylN0ChrwgUqa9RIDOaxKvyHMLyvAAVzEM
 VXN/oXRrfyF3ply+IHZR/wJSE5rOuRwOCqNDinhDspfYpF4F7SCupYt6oJuuVgACchzLL/mYm3y
 8wOYm/UpvnRikRMnPrMVsg6RWkIpOH56XINTo4mnsgytuHOErWuQV+El9NhyEmtRHIjdhrtLyk4
 lvbSQQBnSn1tn1OQYTw==
X-Proofpoint-GUID: WTXYtIi5I3wJull7LgWg9McRjb6aM3_u
X-Proofpoint-ORIG-GUID: WTXYtIi5I3wJull7LgWg9McRjb6aM3_u
X-Authority-Analysis: v=2.4 cv=Ivkutr/g c=1 sm=1 tr=0 ts=6a43d0ff cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=5f43vwGa_zqDpS5p3yUA:9 a=QEXdDO2ut3YA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDEzMyBTYWx0ZWRfX3UEPkU7/aeaK
 0zS2JsROMFr8eEtzZELhqw0kVOEnA5zz08AKQ/cYqKgmRkES2sLOzQMh26+FJx3Xqgq20JV8RNc
 vRRx9MlvJPwxWIAhP/EZiAz/mBCKoRE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300133
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317868-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:dkim];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:jagadeesh.kona@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:neil.armstrong@linaro.org,m:lee@kernel.org,m:ajit.pandey@oss.qualcomm.com,m:imran.shaik@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:maulik.shah@oss.qualcomm.com,m:taniya.das@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 328896E5676

On 4/20/26 6:29 PM, Jagadeesh Kona wrote:
> Add support to control the DISPCC MDSS MDP RCG and the associated display
> PLL0 using display CESTA hardware on SM8750 platform. If display CRM is
> enabled, the clock ops of these clocks will be updated by the common code
> before registration to use CRM specific clock ops, allowing these clocks
> to be controlled using display CRM (CESTA Resource Manager) hardware.

Does CESTA only control a very thin slice of the total set of clocks
(in this case MDP clock and PLL0), requiring Linux to still vote on
the other couple dozen manually?

Konrad


