Return-Path: <devicetree+bounces-254291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2B3D16F74
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:17:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 93A7E300D482
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45F99311592;
	Tue, 13 Jan 2026 07:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fKaCEjOp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fakvVuBO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BAE2E54A3
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768288670; cv=none; b=iLRHTIo/HuWyZc3cTL/6k6Q1xEpUO+2ny4AiG9Yy3J1jNaN0rkrGP0pes9BISR86mLrHKwC6DuqW5CyWaiehnb5KiPMeDnLrcMU8/Qyz+asb9KhlPaSfmrRXJdOBZEWDvyNMjTUSwbCIQpa4vAPhD0uzkpzkgjVnwzChOm3h0t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768288670; c=relaxed/simple;
	bh=LkdIdVpOODkQ2KZxGtEuaUSIqUrLmkmDBw5FQUmqGRU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jqKNwjVEMCVYJ7ziUF5vYD/tzEers/jIhHiGAs3hCBV8bck9TWT+9DqQFRATf+p813mCo6uX3cX+LwP8LuoB/rPQbKmG7wYRgO0ocrq+BiHqKzqVutUgBalcLDb7yHNqlIGRSkrvWltMLKmhpjAyU9NqNxJEMzGztajeY1ELngs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fKaCEjOp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fakvVuBO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D7DDJX175801
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:17:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZhKGgRnlFyhrair0DoeC6I/JMQGFqnL+h2onNiR7DrA=; b=fKaCEjOpJByST27z
	Oyqqyg4yNL1d8V6I2OBpRG/bVFInlZgNgzLG2CXDPVOQX/yXThOiU5icgzO0AkIy
	4sYQ0BlnHw+mySInTkl57N3cuKGJSnW9EtoGxqKvRgocoJvBtvBok8152xmkujtn
	DGZuePbucI06XN8HVvjt1HzhqjWPcZd4ijnq0I3KEOUCQoz1c5UoQqPejL7i4Gbx
	cUa5fOdAgXdodOjSHHV2b8ld1DrLREwKDjvyx/xlfZuL3m5nbJUNnt+JrblulPC1
	MXCicf82r/Y299WtO73XE1nBdoUVdKdNbsXKGCjo/sH3JiskUuufxVG5oEcxO6JH
	+FQLTw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn52f2715-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:17:48 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b51396f3efso1407047685a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 23:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768288667; x=1768893467; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZhKGgRnlFyhrair0DoeC6I/JMQGFqnL+h2onNiR7DrA=;
        b=fakvVuBOHLgf05nfJ4z162GPutAGbBMyuqoPZRhNn26mv1PSoQFx0HsY8N8OLg40R+
         QIfMcuvuQf+GCwWvSsiNX97vW8ZZ8fTY55uIsFpNgVqpuMRwt28v1T1wllOdS+b+4dbF
         A9I5tZ90s8+zwgnwfAAWfzrW9Z238FaYHY8+fK4KtVWyA2hqgK4qVjAskyFLie7YOq2g
         D4b5Aeiv2WqoiwrNxqoxbssoKUR+49dQUqzz4N0mlXPBd6ofuwOIZzcx6D2yVqjFiboj
         o71cUn3fx8XmBSQhJZWUZRwV5azzKoc/0nRsJ/0YkAka9SsIoMNChZDN9TW6HfUfBGUk
         yTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768288667; x=1768893467;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZhKGgRnlFyhrair0DoeC6I/JMQGFqnL+h2onNiR7DrA=;
        b=voDnBSw+JOZJoOTX+b5FLiiWo/AvjDEEoBnJ1aqEdgXvFKLXp8bG58WXf3lpNDS5xC
         IwkiLFvURyXxLeACHh3HmdwhZU0I4eT12SHqFCzYaElHpGKPXzqY686bitCub5IcOt+2
         TN4TH9h3JYH0h7zpuwEFkszsA7ei+3wq5rslchvlKbD62aq5wlYyV7GqiWpfiSa2UkxH
         d6WPy+UYtr/EegqhrDQ9EJGYCZ46FF/IWtJIMN7W8RJUUzndeoRdrGVUKXWGHyXBhbsw
         vbc6xGA6RTnadjRPgTMB322jnset29Bxf1+2F1Z6TiCD37Jc7JW3KhYRNafb8V3BV6zC
         HFGA==
X-Gm-Message-State: AOJu0YyNresmGfHkKY645nO9/41nX1fg4MjaxSmwG58Z0CjUJKmga5Jr
	JT3GWgX3h7LABb6TM0miikB2P9VQP+L8m3lo0UXjP9BcBMs4SWkEj38Wkh6XdbjBGaZmyYBnHtO
	YaN0oFYOdtiQg1uEn8Sv61dIRSpk0kcLf+/uEnzLdobmhH1iAMGwpo81vd8UNSgt4
X-Gm-Gg: AY/fxX6AdfMeHExCn8NvHks/9NuzsdfYQVA9FO7W7glUucxG2I/WMKzHQlyP3hOCoGG
	qoawLbzGvjJuiej5yH5H2lB473W7v4TqK8Uij4LgtSDfVyI54957uEcJIkqddDUnwYAAl/KEW63
	3RW54HEmrWBAPeiElCsvLqRtQzpEU6K1+YYtoj5nojaIRN1cT4mW8xMCYQQgY65juo3mz+1z6Q4
	72Ry6TX8e2RVzuAd8GgRdJ0xSGt7+y+gvGZqr6kGFpoAKuv58O9jbM3fRCVYJ072cz+uYjPameP
	4UbGj7RFNGQoP7tScKn454lKSkqYd+qbVs3kO/TryaeUzl5/KHfgUsykv902XsYxp0gFymrYVOQ
	Z9aDZ3eJjfFa3bKhNrJDHb+OCz+dw0H9kKuXrIQ==
X-Received: by 2002:a05:620a:1726:b0:8b1:8858:6ead with SMTP id af79cd13be357-8c389368b3cmr2631978085a.11.1768288667198;
        Mon, 12 Jan 2026 23:17:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExgQtRozhsAH49RpGxq/iZyoiE1zmUOcY5DHMgmcJAweCKrw5cPJcS2egnmIv7HerF/kkXCQ==
X-Received: by 2002:a05:620a:1726:b0:8b1:8858:6ead with SMTP id af79cd13be357-8c389368b3cmr2631976885a.11.1768288666786;
        Mon, 12 Jan 2026 23:17:46 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86ebfd007fsm956560966b.31.2026.01.12.23.17.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 23:17:46 -0800 (PST)
Message-ID: <c391ded8-6569-48a2-9c49-6b68838f91b0@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 08:17:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Add Meta(Facebook) ventura2 BMC(AST2600)
To: Kyle Hsieh <kylehsieh1995@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20260113-ventura2_initial_dts-v3-0-2dbfda6a5b47@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20260113-ventura2_initial_dts-v3-0-2dbfda6a5b47@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA1OSBTYWx0ZWRfX17jb9O0MXsuy
 CNE3aGAofm6cjJ02ltKKgXPqnlzAJWZFnSKpBi/vtZW+OOngo2MsWc1Q0DYghJ9d4RpChdmN8gL
 rdQuV4dX+s/dsBb5/rxg6l3vIetDY+G8yOl7IfUim757gZuqUhaCtYAc9BAA1PFlehDo8ELiga3
 YbnfTcVoFQPFxRdwLG5IIu+7o8sfM+aVlHgdlDrsipLLuipUKq9RB1qdtY1n68EDB21JYsuNWxg
 cfAG80lUoSUM6IbvkN8btuYbFyS+b8dKaWNiQeA/FkE7ZUodg41I62L5yfDhrdzBFwMy1zX/U++
 ngwtZ3sUyClZU5ETKVBJBlUIy4UI+7Jt1bMvjFA/Z0ceLk5dg6S1UIWqF+hYNbkHw84AtmJYGqe
 54mkahSDh9TJW9Kumd3PZj/qQw0Tx0lRuzEI6vzOc8nryHeH4PM1QDTDcbVXA5n/XhX8ZLOZpmU
 vjQ18Yf9FxDAPBsnXFw==
X-Authority-Analysis: v=2.4 cv=TcCbdBQh c=1 sm=1 tr=0 ts=6965f19c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=dExqUudI3SiL9kWB0b4A:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: btBq4paeGLBYkJKALArLc2fZZEdmnfZM
X-Proofpoint-ORIG-GUID: btBq4paeGLBYkJKALArLc2fZZEdmnfZM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130059

On 13/01/2026 03:57, Kyle Hsieh wrote:
> Summary:
> Add linux device tree entry related to Meta(Facebook) ventura2.
> specific devices connected to BMC(AST2600) SoC.
> 
> Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Where? How is this possible?

Best regards,
Krzysztof

