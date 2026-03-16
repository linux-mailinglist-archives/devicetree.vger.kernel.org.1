Return-Path: <devicetree+bounces-276256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLCCL8wcuGlYZAEAu9opvQ
	(envelope-from <devicetree+bounces-276256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:07:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 309AB29C018
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:07:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C8E9730614C2
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E06631771B;
	Mon, 16 Mar 2026 15:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="onzAdZk5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SgqSjWcS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E961B308F33
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 15:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773673421; cv=none; b=JLvEPysPF8D0X5Y08aTQoLKGSnGtXh2ddy6dCoVG1kX0n6H4Twvk1eXxZp0R/9pd9KeTG8KtUFpD7PvMSIZG19Q7Uuu4kLpms52FmL1A8eJG9x7WtQ9ers35w0m91sOLkj+sZVdxCOtO56nxg+8chOYWtcif13/EEkTKiNGgCT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773673421; c=relaxed/simple;
	bh=EZNWj67TxgIq1VE+4I4fSpVFm88t6C/a3QFfd4xpnAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uZcYrIk/I0qyrgEA94eCPEYYRfMOkShVYSITk3U07ASs6OZlMWNngypIO5dplNsB6E+0ckvADhQKSMxY3lmxjHXGJ4FicjKlKLdDfzLlWL+p3ZTj/am7qGYVozd5UosPyV8uiGnlDskyj/nfT+3mLWs2YtRSkPwxnoLPVwaY3K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=onzAdZk5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SgqSjWcS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GECKR51639186
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 15:03:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aCODfBGAeL0cibHdox9jxkGJAyfhaMDkIMYHx4tRmBs=; b=onzAdZk53HGPQGyk
	0CSTfd5m9dkxInOz4bsfgnWhW/ENpD8gR7TExcvI9R0u5gFhbRnQvOkLiOOy9hyX
	j7Rq66Rhej5PgO2H9TR8sosME3vdFqDbEXpXhJsLE4gg55i7XwPp/UdXKBjbXsMU
	yjkkhTcQ7qw8XRhECISMAiZZU3YYD4LSdKNwtfGHGIabjGJ3j7qmIBKKiNWQfXjl
	WGht/XV7VNX6yhDYactTSVnDe4YmJEMhTfpIz6nmfZlJkWovtEqlIzkNFyusXLCq
	Nxh4gZ1/vEmsFtBHHKG9t5LPyvYwmBjFaxyG7SeKE72tipNH/sAr25xxNNDrAAyW
	RozcAw==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxke086q0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 15:03:39 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7d77bd5bb50so43687084a34.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773673418; x=1774278218; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aCODfBGAeL0cibHdox9jxkGJAyfhaMDkIMYHx4tRmBs=;
        b=SgqSjWcStXtCEk1kMDHHwHpBppQGbcz8JIS0pgn1XuY+S7EuVBW35PPI0ZAi9W/x3X
         u5EYxW1LE4x6SYECfHU65eldlJXCGkQCvSN4DFpr96Ht2+p7qgXkQURbf3VnB+23QBWq
         IAJlD8aRSicg9ROkTsfZ0Xo+ViZq14alQ/8IGFl3KXX6e190G1ThppBau36Qp8n57VnO
         U6GCy1Cj2vgd6VlDBKZ8GQQb8pF2huRmqoZiusAGjeJQtLHHI5zXRqwKCCtxvkZceae8
         2RCuvTguOVJ4BC+BzUiHfM8BxmrG1LEhmWoKJtQiw3KnFxtTaRqDB9yXiPdGMVSCID+V
         yXLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773673418; x=1774278218;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aCODfBGAeL0cibHdox9jxkGJAyfhaMDkIMYHx4tRmBs=;
        b=OvctgTU0Q/VydHR+h00Qaic6VUbyhcNebxXqa5wgUTy2vGnKJ+gIq62ScEy0WxGN+r
         JgNWGVXuFobUX/mE1yBOJDt+SQiWoWzDxDC4ir+zF0vMxYYyWJqF/eKBWLtp+7Bl+PFB
         chqsx+snObK13iyRzFqtcm9YueL4LyC04rJhxULqLkt7oRIVVxiZsW3ERiOTrXllzrX7
         oeWwp0uc79fUYicMfzgKZProkgb1sKk68v5d80AMglCofFnBiAXpXjwEUqV0yoAgTAyv
         XBWHShZZNtDH9v+Dd9UlmB2q6/pgykTTnQajreu7mK2EvZjKRs4SBZOhYu41YvBbmdmD
         odQg==
X-Forwarded-Encrypted: i=1; AJvYcCVGOl4+nFqfJ0lEPZ0lBEHy572ntCq8T5COgygJ3u13xiyk1QOAS+UromVdRBH1LKbfMC+cAZWgpV3+@vger.kernel.org
X-Gm-Message-State: AOJu0YzBKi3p3+nQRBQhqsLDAmrpO/f+24OewqNqn1Y31qZu2ToJUPiW
	5E+swUuFtDEqW6OcjyqGE87UU8Spz+LXa1eBD0Nj000fKRVqRdSfTm+n6+j4Vtt8zj6I51CfFec
	+hbJIkBjxCSHTBa/NalBKqRPoZeYmBwrqYADzGBTRI3Q1VyAjbFD4lFpdw/TJ/hKg
X-Gm-Gg: ATEYQzz58Ac0lANzzifE8NkGKPUBue5AIdeaDEW2hkmXTjpzaQsXwJbnPGzBy0reVqV
	mp29pOfrDeVU9EFRT86WnDdg5d+YHqVy51tWVKBr0ZdzHMNk0dO6t2Xu0W0kdIgMvU8BUBu8mhe
	GOC8yneiqPeJzwhOx5Y9e7MT8AoeODaM+dH2kIQTRFrbwCZnlb6QE2JFPTiezGl29i113H/48f8
	IPZPJ7qAU6DkwrtBKX7act26Dig9Mxlcjgshv0ffnKlrqk5ZOMEsQr8tbrPU6RAdtH2DCMUGOGC
	oUmiWx84FLJMGS+3RONOwTGB2qUt0cIPG8tLPhhFNLLOIWf7e9XF6EnZpfR0kMY6lF9ZrrePjmR
	X/7qAGnDkDFAxzIfS/nWOgX6grckI9tXkAAHezMsxfmdJIpGzNcuWkqy8o2cnwvK/2bkMpmW1Xn
	ygVNd+MmSd
X-Received: by 2002:a05:6830:8217:b0:7cf:cbff:85e6 with SMTP id 46e09a7af769-7d776c64ff8mr9921425a34.12.1773673418368;
        Mon, 16 Mar 2026 08:03:38 -0700 (PDT)
X-Received: by 2002:a05:6830:8217:b0:7cf:cbff:85e6 with SMTP id 46e09a7af769-7d776c64ff8mr9921381a34.12.1773673417911;
        Mon, 16 Mar 2026 08:03:37 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:5dfc:3995:22ce:d286? ([2a05:6e02:1041:c10:5dfc:3995:22ce:d286])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4855725572csm192675105e9.2.2026.03.16.08.03.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 08:03:37 -0700 (PDT)
Message-ID: <e3b1fedd-79a3-41be-a94e-a08ad0c85b66@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 16:03:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] dt-bindings: mfd: max77620: convert to DT schema
To: Svyatoslav Ryhel <clamor95@gmail.com>, Linus Walleij <linusw@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-rtc@vger.kernel.org
References: <20260312085258.11431-1-clamor95@gmail.com>
 <20260312085258.11431-4-clamor95@gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <20260312085258.11431-4-clamor95@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: OCb6cVzvpvFDQQmcOJZw_r9r_9wgqqpa
X-Authority-Analysis: v=2.4 cv=aue/yCZV c=1 sm=1 tr=0 ts=69b81bcb cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=pGLkceISAAAA:8
 a=VwQbUJbxAAAA:8 a=3ki_b_XlgFUerp_oe5YA:9 a=QEXdDO2ut3YA:10
 a=EXS-LbY8YePsIyqnH6vw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDExMiBTYWx0ZWRfXzHTAgvvB0Gg0
 VUnAQVe3g9PJln0C1aCwN0WHhCZhnzgm2zOPJeqak0NeTQ9BW17SP0R9S1C8M8ls5BuZgEXuQB3
 q6FqHpL3Tlnup7ELxDe5ybjfD6/kJLDJ6O/b8NYKzmWeT3JrN6uIF15wOBePp5wIRoFlYoiqxz+
 SfNAboEFrRv3ycinyhGecmco8Zt5DdEn5s34fMsd4uTIBC593clgQcwdIKjuNpz3DISYSvoXi3u
 +DUyMKZK5L3uhByeRFHDYj7S4AFsqqdCTqa6/G2EtlPb915j7OYZ0UZZfGVPqJrvrxsoucVSnhU
 UsUhw3Dz72bH6vTSrRowi66iB0KvHvpe50u44HdHLU4EIbuXihbD40zhVinXL+O0qzPzg7RM+SL
 WVgNrRjuSxsfsL5yOHedm1kRaPOYtZ9oeLrUUAz3feBqMngN7sBW4L54YQSOJ8abldeEisdaYqu
 vPITyuLebQfFlOXVV2Q==
X-Proofpoint-GUID: OCb6cVzvpvFDQQmcOJZw_r9r_9wgqqpa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160112
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276256-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,intel.com,arm.com,samsung.com,bootlin.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 309AB29C018
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/12/26 09:52, Svyatoslav Ryhel wrote:
> Convert max77620 devicetree bindings from TXT to YAML format. This patch
> does not change any functionality; the bindings remain the same. The
> thermal bindings are incorporated into the binding. GPIO controller
> function in MAX77620 has no dedicated node and is folded into the parent
> node itself.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---

For the thermal part:

Acked-by: Daniel Lezcano <daniel.lezcano@kernel.org>

