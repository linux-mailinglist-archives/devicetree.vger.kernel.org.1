Return-Path: <devicetree+bounces-274705-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJXYM8flsmktQwAAu9opvQ
	(envelope-from <devicetree+bounces-274705-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:11:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8338327547F
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:11:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7700530168A4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01F443F0A8B;
	Thu, 12 Mar 2026 16:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iDm4qypL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KY6y3Chk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BD13D7D83
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331875; cv=none; b=qY/JsFFBgVYrO+uXwRf/aXLs+VvVop5gj/IwhUsnOrnlPM0aYdM3F1sZR5FMlEjOq3EUInA+quIwAA2cQwnNeCcxxEMofMCHkDWMg25jdOWDcRL8WJ0hxUNd5H3UDHK2eaCMBrpK7p2OntMnxHyY1hDsntNqEj/NU+swqepsPHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331875; c=relaxed/simple;
	bh=hxOCN03c4G4Ad3M6hKEuU9VW0nNMDkd4Z+1WR+rPonI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=moMCwav+ZwkQzVbSQTJ0kVwVGwLibv3u70dpbftUqSPBFp4aMRoijTGDjoJ09HWrIrqeJZKkcxTr0Byhg+dB6ilHmjcFnBSWTdQ/v4EgSEndoeOJOhyiA0JeabvYBGxODIiqStJzvqKAWCXqoJmAiFoGtcqqEQzS5rt1KAc20dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iDm4qypL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KY6y3Chk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9eLDq1922552
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:11:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0NHWp5xF69C75x6ziVqnsVRRqywp5v1+QQvwN1XR7rA=; b=iDm4qypLOQw7cJYs
	SpHrMbB8gioCx2ByO0hL33Qevf04vxj9H4DZLJQE1Yr2uiRUyxMHvy1rNewi5N1D
	Tj2XFl/cA0S41MrwAxfE+D3AHmC/0gNEQ/vpcORsTciwdSWBqbEKhb9KT1Lga7Bo
	SQejEdcp2H0e3vVUwbDBY5rTfEzrOpNkF+jwiYCP3onhEwVA4SlDj1w4/w8JgelS
	cCx6nelb6CnleckJFmjvrnM2v2vXf8Q3lbzrdzVE0tpMaBJ6u4rsn/9CW1bwMwYl
	QZLLJOHWJLd2KWfzoZTF6bJ57+X8m0LL9A8ixyKZR52O8F+E1r49wgC3peXTdpxd
	qaCZ2Q==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wtrgx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:11:14 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-94e9d481d9fso1625543241.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 09:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773331873; x=1773936673; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0NHWp5xF69C75x6ziVqnsVRRqywp5v1+QQvwN1XR7rA=;
        b=KY6y3ChkSFVV5u++Wtc0eXlwj/j9agQhBrHCt5GD9M85kjwfQWT5E1H4l7lmoLHUs/
         ZGyCZZi+zNIV0zPIpcTiSoii/1Z153KJPp7HwGpjgjhBjhNQ7uimLWbeJcc5F+ktoCQN
         wVnbWP3Y52zm6Fv5MeFsrs3qd+HHkLEhLL6XkJxZhHmiFOXCpQ8+8VNvoZaYTcBf6OVg
         Y+KqFsaEK+qsA+GQhkV/roD7RvG58vqPbQCWkkQsdIWE8q950XhePsBxXaql5Y/4UOtK
         xCVulMjTqS0Fd9mXukJATovbsUn8lFzmUdmssfZFlQg6IGrfqZe6Ic3fbmdRxpH3ZfTE
         FYvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773331873; x=1773936673;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0NHWp5xF69C75x6ziVqnsVRRqywp5v1+QQvwN1XR7rA=;
        b=qa780rgg/Wdg/+t/7acL1eKBAAqOEUOdbdjhkdwz85aMlbNjUfq+ecGwfBI8Ti632r
         /Edf4baNUh66zRw3VDDH9Z+0/K6Q3E9vi6VWxJctoJpd6RJUZ1L+v1tSnfk/2nC+0E33
         SoEYghiZ2Mo05tD8W/bPnoBQMhzSuAVmP4QtBeltsEyGG6QseTbc47jPUlkicT2neljO
         Rpf/EXwSfd0UrOl9cUQok49p2n6kCgXPSRmiqLaAnP532raea+b1F6x5CyA+4WvyqQrY
         0HREQXjCWoaXdlri/0fCkrARtx1YPX2Uz+B69nDh2IVc5Dq+boacCO7AIUuE7+DLPhEd
         f7/w==
X-Gm-Message-State: AOJu0YxpExWnRJlsLyNCXf9uRDroVI7RGNQrpUkc5viGsZHITGRMFEZE
	pL2FpTEFYHpI8blU19u7V4Zh1u20eApaw5oJrMIq0qHUqjmX339idciVy/zsCSKKodPX64aq6lc
	J56kk9IxIjognT/2HGlV/15OJmJKJaOeXDRn+jqJ5d3tzRqjyLOkOU74JIwkz972z
X-Gm-Gg: ATEYQzx875JbEKWF2lQj1xwIBBaGtlzQPWJq6dVwsOlhevk46MwevzZmhMs+N1zrKgS
	umP4pXISJtHhimSPYDcrVR7mwysllFhXjNwJtjqu4OubDQr0DcasHd56ce3YdVif8Z3thVDGnYS
	D9G+0Z+UQs8KDX7sVIafROEoUiwApHwjQVgIqDC4nmwdpSbhjnqfPQIy6jOkZJaxnNI5RpDE5JC
	h7uymXn53KTr044a+cm1VATVivc5CNfP+xQ/lFkisl5LKQn6ooVokpbnISXIDz4dJNbvnNbiNOq
	ZNqLuKutR3EsfMboEhPnTkpfRowXGg4bEQxTz3XuhCYS7jr+k89PQAoWo6ivCXH7DFO8TuSz4P/
	IqgjG97UcMUega8tovHOOtY5ydp88/W0iE/e21o1UVeH/fIQC
X-Received: by 2002:a05:6102:b14:b0:5f5:4eac:cd2e with SMTP id ada2fe7eead31-601def6651fmr2806662137.32.1773331873274;
        Thu, 12 Mar 2026 09:11:13 -0700 (PDT)
X-Received: by 2002:a05:6102:b14:b0:5f5:4eac:cd2e with SMTP id ada2fe7eead31-601def6651fmr2806641137.32.1773331872851;
        Thu, 12 Mar 2026 09:11:12 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b5e9179sm138494235e9.3.2026.03.12.09.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 09:11:11 -0700 (PDT)
Message-ID: <50362f86-aabb-46e0-b272-e171101220e4@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 17:11:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/12] arm64: dts: imx8: Use undeprecated reset-gpios
To: Max Merchel <max.merchel@ew.tq-group.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Marek Vasut <marex@denx.de>, Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@dh-electronics.com, linux@ew.tq-group.com
References: <20260311-dts-snps-reset-gpios-v1-0-ea1cc09fba84@oss.qualcomm.com>
 <20260311-dts-snps-reset-gpios-v1-7-ea1cc09fba84@oss.qualcomm.com>
 <82977bbb-6363-42bd-9739-20f57eb00c61@ew.tq-group.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <82977bbb-6363-42bd-9739-20f57eb00c61@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b2e5a2 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=0_edduNWIJKPHNMTgfoA:9 a=QEXdDO2ut3YA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-GUID: OeeuHHV7-F3LVunpmZ12xV8KiShemDdF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEzMCBTYWx0ZWRfX1mmJuckIY/aH
 VGzf4fMZvMqja0ZBjT7ZqUOY5zRrVGGIp/Wh83m3PEiMa6W9FyOvQ8ztJc5iJ0ktVPdzM3/Neni
 xQrCYzuL/+aDf2xhb/gR1SmH6J1fnUNZyfdJkPAPuRut4+MBkNM/AOqjlQePG5EtTMIaOHGNkZz
 OSXPJBXyBjv+vPdO0vE0vEQ6Zh3IzuCMqoJowDBuRdjpOgUZZorF+dqpBkTLUFn4JueaIlPKU2Z
 aLQHciZZ70TM+UiEmhXfU9P6FVsEjc/KdCLCTvETEudjeG27XqaKBuJMsNcXJTwbtNOs/jngcSj
 mBBD2q7khMJGtGKofiYVioGqvAveEbHHHBJrmLvNwakoS1N4gnCSuccsfDx2XYvdgfRPQeVyrYf
 GVxwLuex28MUr1cyP2BFEhr0Sdki8KFqTIBcAjJUhzHfM15qwirP3HGrVHyFqc01SeaUkMlt6i1
 8yY6IEZHIvQH06ks+Xw==
X-Proofpoint-ORIG-GUID: OeeuHHV7-F3LVunpmZ12xV8KiShemDdF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603120130
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274705-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[ew.tq-group.com,kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8338327547F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/03/2026 15:49, Max Merchel wrote:
> 
> On 3/11/26 17:08, Krzysztof Kozlowski wrote:
>> Freescale i.MX6 PCIe host controller bindings through referenced
> 
> I think you mean i.MX8

Bindings are called i.MX6, so I just copied the name here.


Best regards,
Krzysztof

