Return-Path: <devicetree+bounces-315658-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bdeDMBQaPWocxAgAu9opvQ
	(envelope-from <devicetree+bounces-315658-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 14:07:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 576376C5644
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 14:07:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=S9EcgqNl;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=OU02l2rM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315658-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315658-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A85C63044721
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C19BF3DD875;
	Thu, 25 Jun 2026 12:06:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB873E00A5
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 12:06:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782389209; cv=none; b=g+sNjGklgE8kjpErD4gH2IiDHYAVwq3rtnHiIJArehpmk0pN5Ecy2r5k7gFJF6mnog6P5rhXx7k1BzebqOk5BXNiTnkfMUxFifkvUU6OtOtZkrKXWKgARW6ElSCCAGfGkpcyVnEW6xg9yCFtt7NLFbN769M44gejloK+kE0rw6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782389209; c=relaxed/simple;
	bh=ikVP8vyVJy8q6fBp6aoS9ZFZaajQoxpHQdjadgsnrgw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qt1hDdPxuL+l4jKTEz46p3ZMKZk71gmm2Yu51Qyne9hhOwCLhjoT2VjI6GBTDO/XFAXZyQBWH1mR3xDm/Wps9x9b9cpDXyMKj7lTrYcfkerjWDQ9ycsvKB57Wq9z95R9tqoL0LDSdfY4R4r1pp3IwsnXkNYw+lyarG37aFOhnzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S9EcgqNl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OU02l2rM; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65P9jvMu2046649
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 12:06:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KTU92ax5OaGynEXW83VzPxNT70Dj4b/PTr8K6Ctdt/U=; b=S9EcgqNlL4I1yw8k
	L/EsxUvuLHxWNomRvVrXQxH1+seSzh7Xnuik7HahKmxxPQVMVIU8rOcPi3Kj/q+7
	hbJyYYrhedFmexKnkW7I/BLEuRPaUaZZ2gOx+pqFVacXitOHgReXCf8OA5xukXWp
	s/cPeuIpcsiK4o4e7hGewcEzUludznu9OpyJN8Ly20wPCUU6G2ghIDFLU48nq0SV
	J/pTzdNbYJOjqHhOLrowkm7PsIPu8gJDHM2hLotoUeeYZLM5Ue4mwxXiacflt+HL
	+6YqNNK7bN9KRrG/2g6ji+iwabVHtrMN6YA/snbm+6yimJS6q+6e+S7FEXbp7zLu
	oJ9lag==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f0uyqhy3g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 12:06:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-920f826bcb4so47184585a.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 05:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782389202; x=1782994002; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KTU92ax5OaGynEXW83VzPxNT70Dj4b/PTr8K6Ctdt/U=;
        b=OU02l2rM16WwIzXY5Jzwmq+6aI011DY7YORZrPEV2/0HfVmFQLXtzukvEwPYY/UOBk
         xnIXCrDE7WEHHkb9MMpiXTCdb8XpvtCfvpTXBmdidlOEcbbEdbMyEycGsZHxrS7vjV3Q
         C1zOZNXsGbjZXf1Ot4BP1Ztp6L1+j+442u5xQSzq1/7sIAD8sVGX0Yvw2ougAfZFdRoG
         EYHp8QJk7hVf7BFHoa81buZHWZDbF/uM7rPM/QNF/8vCo+nPeOzni2Atviim70LjYJiZ
         PhMGn326XIT31JUtrFiQ4TW/2Dj7W9phzmmEE2HvcmT1a0A9RwBH+jJyS116qCzrM/a7
         MbOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782389202; x=1782994002;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KTU92ax5OaGynEXW83VzPxNT70Dj4b/PTr8K6Ctdt/U=;
        b=TrVxzYC1UltG1ndLzmU2n+ckKSLB35dUOwyVtSSeaV2wzLeMzMHza4I7fMvxSgE49Y
         4vNfAOHAAqRN51jCnLadeuD+96WRZjg3NwPk4lRllIDMdsOQUpny9q2dMOgKJw3panp1
         zzKucgKLncDEj4dsclgEOqdPgz2O2eErhxyLuVRrflt/7LnN71A/00E5ofNl2o8VDzil
         qYPMPDp6EsUcUgPfRP+d9XAo0j7G4bfuYQPOLyL/5DEzJLLhJnRvwYv1e/q+TuCz9UQI
         QeQW56g3RKed4EiB7eCiIGLCdsYFy7y7joMxBG8OaYmPAfOwiZnPGaadHy2vuf3X7EpD
         DGJQ==
X-Forwarded-Encrypted: i=1; AFNElJ8u1PiMtQuGYqfsNgkTq92Y25bNtW5JVicyqljTFb3hlyXirSzlPfQLYtTjE212AWrlIS25iKKmYfbc@vger.kernel.org
X-Gm-Message-State: AOJu0YwMvTv8RPD2O6BJXcdOB03o6sAQ6fvFQmxzuw30XOiG8g4m6pet
	bv0eN1CwzErVgYBOaWTDgDfZxCiCIi4R1TYUYb7szjdVe2bu3WcHqC7IJM8jrGGMrQp+oDoi9vk
	ReUxfupiAixyaL7MSRsvtPK7tZhxAV4O37Qci4TRKTn8GXbaNeKBd+2n8aDtGvCeT
X-Gm-Gg: AfdE7cmFQl7hvDB0uwOVmRtanOulDljNFj6DOrOuk9NFiDLoYt06u96MVeiApFc3o7u
	RWfbAXye8bij2pG4zfjz4Hj8buLySqT6jQfjHvKXbnR9VPP15/5460Km8Buf6mEY8YGvgSeFvjx
	8m1UZI2fdWf76ECtVaLYqxZrS2cBt4H4l44CKsBf5cR49cXOhJvLzgAdgKgIihGaQSmjYLG66aE
	AjnSQm0CxVeyudKEpogrRDMESvgY8/JLHpmJHur27W9SHrr4uG1HqDhykcgEmL7l0cznfbIwyLj
	RbZa03VObibiEK75wXxTYxPiegdPZITv579SithQf0lMddWDY9JWX5N8dVAogW+BCUGV2XRUbnY
	uKhg6dS5XcZTn1d3vkviTjbt2YJ/1PgijFQk=
X-Received: by 2002:a05:620a:44d3:b0:920:6579:bee8 with SMTP id af79cd13be357-9293b18b593mr195790885a.1.1782389202314;
        Thu, 25 Jun 2026 05:06:42 -0700 (PDT)
X-Received: by 2002:a05:620a:44d3:b0:920:6579:bee8 with SMTP id af79cd13be357-9293b18b593mr195788285a.1.1782389201939;
        Thu, 25 Jun 2026 05:06:41 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c11fbec37dfsm168492166b.56.2026.06.25.05.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2026 05:06:40 -0700 (PDT)
Message-ID: <4c8d6b13-6cab-4731-b3af-bb83de9d159f@oss.qualcomm.com>
Date: Thu, 25 Jun 2026 14:06:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] clk: qcom: Add Nord display clock controller support
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260623-nords_mm_v1-v1-0-860c84539804@oss.qualcomm.com>
 <20260623-nords_mm_v1-v1-4-860c84539804@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260623-nords_mm_v1-v1-4-860c84539804@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wOpd97hBl30DcliFt4Dzb__VAfXToAHl
X-Proofpoint-ORIG-GUID: wOpd97hBl30DcliFt4Dzb__VAfXToAHl
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI1MDEwMyBTYWx0ZWRfXx9Q7NQrgo9m/
 KvDlqXB6iF5W4HL8TcGY5jBhTotUVODIFNVe9+pygf+9pStdzj0v7sLXuGLEn0RzX8SK9ciqxcK
 evw4xM7NgzVW6P7BssqtQlgXA7OXxsA=
X-Authority-Analysis: v=2.4 cv=EsLiaycA c=1 sm=1 tr=0 ts=6a3d19d3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=PSJN4lgLe9xo7xBllQAA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI1MDEwMyBTYWx0ZWRfX+Fx8agfYcqXa
 nr7UI9zev4LnqjfV5MFNS3wEIk2Q2qHf6Le3tnMswDQqjYvF9ZbbJ+//4WWs9SgLQvDElo4whug
 aw2zwms/YkGumRTwia8YS4Y27tgDPaC6fDaOKnkjqKo4UxWu3jjtqc4YofEIzc6VOcrGGvy0eWb
 hBhHVXY/Lj48wz58fIHAymF4rYN0RQMUlqxMt0wEpqwO6l2CqFXrgv7N+e4CoFv7KvUHxb/TUjI
 +0W+D4kZjV2awFSjz5yRNx1KWo37LXjrV3B3KJ2UPYOKhgwuXzQ9z3zqLZ9lPkTOJ1NQlvM+xW4
 gnlHIXqRRVqA9YF57zjpMvJfG6s/rpyhriwkZQ//SraUmUlkPOJsixAbNRYPvwADWTSXW1KbfK+
 U6Gkhr+bTKg2aPi4cvfp+l6UxVdb9Q5n0lrUlLgU0TvlMJ7EQ9uImXU38aBUW3rOR+lRDuwDZhh
 6wZW/7oOSVorS8BgWVA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-25_01,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 adultscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606250103
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315658-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:taniya.das@oss.qualcomm.com,m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:shengchao.guo@oss.qualcomm.com,m:bartosz.golaszewski@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:konradybcio@kernel.org,m:ajit.pandey@oss.qualcomm.com,m:imran.shaik@oss.qualcomm.com,m:jagadeesh.kona@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 576376C5644

On 6/23/26 12:54 PM, Taniya Das wrote:
> Add support for the display clock controllers (DISPCC) on the
> Qualcomm Nord platform.
> 
> The platform includes two display clock controller instances,
> display0 and display1. Register support for both controllers.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

[...]

> +enum {
> +	DT_BI_TCXO,
> +	DT_BI_TCXO_AO,

This one can probably be removed, both files

I think the rest looks good

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

