Return-Path: <devicetree+bounces-277617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBTjEyG0u2k8mgIAu9opvQ
	(envelope-from <devicetree+bounces-277617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:30:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B792C7E51
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:30:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E8F1312CD2C
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7293A758E;
	Thu, 19 Mar 2026 08:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CThDwErA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kbVUqk4n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CA8399019
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773908966; cv=none; b=KuUViPOSzIvKGovGxV0jEG7iQQiNQYzyCx7byMz7D+Qd/1G3tIhVBygwJMvStOBBwZUg+kCCdU1xpUqkCxNNuxVIaVwUeBWulwv0Nwn5BImzfO5U7JbXyMc+1loq9DAPVaKoXus/gVTQn2SA021pLzkU64OXsVZ4nJ0rmBXQQus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773908966; c=relaxed/simple;
	bh=HW+1mQPA8oYfzTe9t44JNwupxY7JfgaIBmoMLzDp0N0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JjeAZ88Q4ZO3RYZ48rWvvl8qUbGXBNfMbsJ0bMcEpTXqOB/4REl+GAPDTkU6dUH/ArMVo1K8BajSXgGD06StH+PffQIRt+2fXFJj0oIt0XNxM/a8wrCV451qR4RgImv+Etd0xDShFTHleI3L4A2FXL8wsPUXVljzmgzv0nT8PoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CThDwErA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kbVUqk4n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73vSY1898557
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:29:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JOrDNuieEhfjIYd+QTVn2lGl1FnZSe0fgUIkFDBWrzY=; b=CThDwErAVUvEwJA+
	9yIwD14V+mG06051HYLrV6weFoBxUP16g0yhDOn5gQ08gi5sw9fjhIqOA8BR4WTs
	TX/qren7ZQF5sAZcJCkOmR3jeHBsNT2d4JpZg3cc4rpegWIOF9v8vxG3ZAUMtVsx
	RmnSa2RlTKNutSxLNRbvEOo8Qtwx57P/GIJy5G4BVppkuqhIelt+0b5+lrZ15/BV
	2Tbi+vUILeH+XXq4BzcE8Pm3HU1UJN2Es1EvtA32MW8BSFGUYIA1Wr9OQbwx70zp
	23KD7eA+H6geGG3dQhYs+QWpKKumlli/0n1OCVthBk4jfZnpa6o0aG9GYIkzml9x
	SNwSeg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyyhgapjs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:29:22 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5091782ab06so105346091cf.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 01:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773908961; x=1774513761; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=JOrDNuieEhfjIYd+QTVn2lGl1FnZSe0fgUIkFDBWrzY=;
        b=kbVUqk4n/dydtQSUCicQG2dk2Kg6edwMQLgjuf6JaeZ/p0MV0TxNa0gMYtlNAr8ff1
         Ekia7JLXpSef2NtRsY2/ksRTgZ7DxH64VV/K4FpoWLeHNphfIt3dWV9vQsL85/D1Qkd4
         Ngf8kzpYZuvzkHFgb+fiLENFmzSRcg3/7jmhswP/7crw0FXnkxxg29XrGik6Zx6RRWUb
         XtNan3FH8VeYk0HittmsyKptz2UmGBMvTHzCRyi9ieam0xbcHicGhuMdlAowqMIj2HBz
         ioInZTbauK9j9u+KZs9gzHnI1VyGUJ7Yybbyf/kV/Wq+StF5W0t+KuqdsXjWYnDgL7x7
         MUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773908961; x=1774513761;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JOrDNuieEhfjIYd+QTVn2lGl1FnZSe0fgUIkFDBWrzY=;
        b=lfsx6Ue3Sesmt12uuYN3kT22TtkYXXtEevrwdi8VuRpa5FztvgCNT1gMf65PzsNhpg
         89yE0mx9rqDtUwlieK3TKHgoc4Rplzs2B7L+QJMEJnYtymqSsKtw3ahxk5ToDIQcYrbl
         sqjYZtgZ3oxxqChBaIVL+kHo6k1NIpxDLmwApYs1E5lxabLoRDnSoXmTODQZ5D4DJ6vG
         pRgVDaxuvBsshtu8dqG+lU4t7rZ0v1PZVcRxKsRM7olqm2CXOAFXAgG05zftO1AKn88W
         wv1oNTmzAm9x/FNQ8IipL+iR/BIFgN7MEp3oNMRpKX1Z9cEqbtVxmZFIx609zqtbGwgQ
         YwCQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+u+s1Xapg+H06ouOMvJz56AXjwxGUYq+EzH1JijRuYTlLEFxyDSsgvjncIwTXEY5asP4FfyiWdJf2@vger.kernel.org
X-Gm-Message-State: AOJu0YwPi2y1oeFcihiG3v0XzdXYLC+Qa+LawLtf1sC6j9u6O+fjiAp4
	eH1dcAa8cIo9i63A1EizulJiPo7zJMYhUJW6uiavc7F5UYaTw7Ka4VqrALbbY1KG0zMwnfRk3om
	8ERGSy6W+7k/5gUxsoFwPnFcekbkkrK1eBwXQstCAJnzM2Ix3cGF+aDHweNWsuSY0mbfjyw2d
X-Gm-Gg: ATEYQzzsZ1ltiYFLO/TPCZ1+pjL9b0aUGo9N/5mdPCigxf3ftKGDy6TpqPMirlpbHFv
	48CWse0VH169SqIdRin9B7zNYSwaqU469kRuBRDZuhSh2xreixXiGsx+5ij51mfA0tDZRgWmMmJ
	BRl45wZi2zRox219oLbkAOf9bLOHAEpNtk35c9fAhawWImmOvsUozn4Z8xQaPypIl/Kb7Gyqvh+
	DX0ZBBZNY12GT7hRvY/KY93n55klT5Y+Bh0sf8xYbOlSMrqV9xwxW/2oxT1xKoswXXmJoS0IrbY
	gmoBKLyZZsDQeupwMUvDgXM1SwzKMRIvxPyoq5QjpctV7mO58BHqtaiO4FyKKr6bdAjqbbDK9hC
	ubC8Ajl5i6uC5v8v2v4apEXKhpooLDobnp4yQwo4noX0XsxPL
X-Received: by 2002:ac8:7d09:0:b0:509:2d50:9778 with SMTP id d75a77b69052e-50b14864284mr84978221cf.40.1773908961523;
        Thu, 19 Mar 2026 01:29:21 -0700 (PDT)
X-Received: by 2002:ac8:7d09:0:b0:509:2d50:9778 with SMTP id d75a77b69052e-50b14864284mr84977961cf.40.1773908961127;
        Thu, 19 Mar 2026 01:29:21 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b518a3dfasm13229910f8f.33.2026.03.19.01.29.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 01:29:20 -0700 (PDT)
Message-ID: <edc603f5-5db8-4c99-80e0-d2e2a75820d7@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 09:29:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] clk: qcom: dispcc-eliza: Add Eliza display clock
 controller support
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
 <20260318-clk-qcom-dispcc-eliza-v2-2-8c05581168d1@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20260318-clk-qcom-dispcc-eliza-v2-2-8c05581168d1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA2NiBTYWx0ZWRfXychMzATXhwqS
 BZFigBi54tXbljQiUc4GBuTrY4zbBUHCz3LvoidtR78rlq8TssWOozdsTxCNaMSyg4ogl5ueAef
 fVY/XGjJK66WVZ3fEZ+81U+3K9JZ1DVt3S+WVKYORCsAsDM46JlQJmj7nRSgDZOL3SVwI+ZzdB0
 ur2U8VkMh73KZqxpxiRJhhFUbU+31rS1rt30YvtjJkMfK3DYg1Gu7ht4wBX2WRrQHjt2I5utGje
 pw7cjuwQTTkGUn1LHNQGpPJ3Vl7BEbj32J26YcTkL6PDw6zHz1Vpcmd3JrwDNQNoNGIg1pgKX7m
 /t46yf96y7jDt3IKQHiQT2JrSfnuxHj2808vHdRpwbiMnctux3zCzbvU0t18IfxNG7pQj22Ux4b
 9SisCJJm8gfba+0RaW3CQTUSKj0PWCYgyrkvKdbC0RApvOxFU3mgTdkDEirpJHMB7yhP4PKTPRk
 Nx1hsv2VFztvkRSCWFQ==
X-Proofpoint-ORIG-GUID: zaWXGAuh8Pb7XO9llFFAPVArUPcin8ui
X-Authority-Analysis: v=2.4 cv=IbSKmGqa c=1 sm=1 tr=0 ts=69bbb3e2 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=W2U7yqFiXcYkAsrS-R8A:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: zaWXGAuh8Pb7XO9llFFAPVArUPcin8ui
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190066
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277617-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A5B792C7E51
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18/03/2026 11:39, Krzysztof Kozlowski wrote:
> Add a driver for the display clock controller on Qualcomm Eliza SoC,
> which is copied from SM8750 driver plus changes:
> 
> 1. Additional DT_HDMI_PHY_PLL_CLK clock input,
> 2. Eight new HDMI clocks,
> 3. Different PLLs (lucid and pongo).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Just a note,

I did not run W=1 build after few changes :( , thus there will be a v3
also for fixes for disp_cc_pll0_config.

Best regards,
Krzysztof

