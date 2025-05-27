Return-Path: <devicetree+bounces-180838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B164AC4F73
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 15:16:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6E4A1BA06E2
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BBB8271466;
	Tue, 27 May 2025 13:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HucSr9AH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BE126D4C6
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748351759; cv=none; b=Gw5nEc3J7OZ5+rKTJvmsAGaHGTzqczgWt+icCSqgJH+4+Q3PHAmX9Mgu34fOYnQFSzQsNDedW/T6NNM0TepZJRATkuv3+wWrnviUjSruE5W4lV8yiIZSI5jBLlZ7p2KZyH58VseH9TMu0b+xQp2aW9M2cVZOy0d/3PWwZDj3JCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748351759; c=relaxed/simple;
	bh=d5W3GX0X7g3UXissjAjd6tzKPlXKQx+avpna/bRC4og=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IXdIDhekaBeNQm7MeZlZWuh7f0ZVzJxLh+aNMpSYAF8MSDJn/DSkPBsXzP+Ec3z8iVnfzFtN/r+jNSQkmD/srquog7JrgSH01olUBKb5PAZSrKPG8AGIASpycDrf55bl3AVq9oiODuV/TQldE8SSYfrKCL3F0Lfc2c5TKYIznws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HucSr9AH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RB6hBR014923
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:15:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	haI88HCttPlaimE5g5HZVq6U+tyuHSX3H7yH1gCwk+c=; b=HucSr9AHQ0oqedkk
	WQfCGc46c6oUBBd4ZTTElr9y7QkAWdeLenxWA459TAr1ezvg0CRxm1wU4VsbXL3w
	fyOkOYUSOGQfQe6UWjn3orWikMe+fCYvA/2Zjazht51JDLRxS0g66/F99meK0i6g
	L9HeEzZu1i0SkFUytu7W4iGoPbnkzPfdnkZm5tiYBm0Mei6EQRcmkqsxN/BSEt4F
	loh0XFLXeCHyzTc50e5L0tZ2rk4IJk0D+2TdDq+PyYp4CrcV/WC/7sU6j0ekDkeF
	XaV9qqDAwat9eLeJzCHbo5VnSpPlQWNZYXwidZzGXypHevOSUdcpq+pJ1WowNtCn
	22XO3A==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u66wf5n9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:15:56 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6faaa088820so5137936d6.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 06:15:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748351755; x=1748956555;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=haI88HCttPlaimE5g5HZVq6U+tyuHSX3H7yH1gCwk+c=;
        b=MtcVhOJcfd6O1NdjczV1rmVDAtgj6HubGZmdB0/7+HIlLPcDYH701LxoYF3vGXqzaJ
         YJnU0fExRcEYw+aNMj4QDFwIgeLOAxcFmdmL/tYdsFc61Vkxc56wHaRbrEjQzJj2p7JU
         PqQVNEMcOsGaXZ7bhyU9/h+v+z/Xk3+6zQzM9HZJ4sVSjkcLm0x7gigC67PDxvlu0cHH
         Hn03eseOmWVvQiR7JE++dNoNLffLGtltoYVjACmTOTOLxGU19dULtXE/ixeUHjchu0te
         9TO8u2bwbiWi9UCP69pPfloc4u54pvlLoWAffR8egZAULC+rcBYb416fNpa9AwGyBdnU
         /lIw==
X-Forwarded-Encrypted: i=1; AJvYcCUMyxvsKEMewGJpVhqYGZO3vigUdCf++0FrSrubzslZBI2D723RzVpL52bUase67p4S/SpLBNJPFKgf@vger.kernel.org
X-Gm-Message-State: AOJu0YwX4nxQflLXP7F943gF/30cs/HAk9LmWDn/YaGxYnKVcdmh1W2p
	pCj3jstqpiyWlh8U5nvz0qdjJx/Cwgas12gyjOydTKcpKYbdf17ImDLLYa4xGzncm4CRnTkR/Zc
	8sb7/hUY9s8gMsCl4TnMgb69J+ok6eqncMSZqWFEbCtwKqZyfERFq5xVYxM5sgkNE
X-Gm-Gg: ASbGnctnrs3EGHUPhP4OUQDEaD6nbXV7bAHQKYYHFjNh/ime7X8y2G/grRFTSbSJqcr
	gO5xYhD/C+qDkZT0hzlzaS54PdCTOdPMT9KA2xpGVT3NZ6CWbhwYQhvrnvSu/3X4pQlcM7GvTPh
	+8+OP3aSG9/Dej1CJdWyufVLV7V+n0VdcFHLN4kbRwODa4QWzG/w0zNUNuZiiW7yD2PoaEzfyvd
	oA3A7jLkR5nTLdMOqxG4eWDwebRiJeitXFrNZvcd9wmSzA2QCQiNAoiePm0nqW1a5rHANJrtzCZ
	V/5H4nX2NXdHYwbFcxXJvTQpmcG9agmeEYTSAPRP8Qz8GK3+eb01RucaykJKRTXauw==
X-Received: by 2002:ad4:5ecf:0:b0:6e8:fd2b:1801 with SMTP id 6a1803df08f44-6fa9cfea442mr81664766d6.2.1748351755250;
        Tue, 27 May 2025 06:15:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGyBKkeXUxc/NTG8gSl5izgYWO1GVIxceH278WuDF/J5QwQZVTgHu/6Sllwpaohx59JNw9hoQ==
X-Received: by 2002:ad4:5ecf:0:b0:6e8:fd2b:1801 with SMTP id 6a1803df08f44-6fa9cfea442mr81664516d6.2.1748351754721;
        Tue, 27 May 2025 06:15:54 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8888dc22fsm155534966b.101.2025.05.27.06.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 06:15:54 -0700 (PDT)
Message-ID: <061032a4-5774-482e-ba2e-96c3c81c0e3a@oss.qualcomm.com>
Date: Tue, 27 May 2025 15:15:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: net: qca,ar803x: Add IPQ5018 Internal GE
 PHY support
To: Andrew Lunn <andrew@lunn.ch>,
        George Moussalem <george.moussalem@outlook.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Heiner Kallweit
 <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org
References: <20250525-ipq5018-ge-phy-v1-0-ddab8854e253@outlook.com>
 <20250525-ipq5018-ge-phy-v1-1-ddab8854e253@outlook.com>
 <aa3b2d08-f2aa-4349-9d22-905bbe12f673@kernel.org>
 <DS7PR19MB888328937A1954DF856C150B9D65A@DS7PR19MB8883.namprd19.prod.outlook.com>
 <9e00f85e-c000-40c8-b1b3-4ac085e5b9d1@kernel.org>
 <df414979-bdd2-41dc-b78b-b76395d5aa35@oss.qualcomm.com>
 <DS7PR19MB88834D9D5ADB9351E40EBE5A9D64A@DS7PR19MB8883.namprd19.prod.outlook.com>
 <82484d59-df1c-4d0a-b626-2320d4f63c7e@oss.qualcomm.com>
 <DS7PR19MB88838F05ADDD3BDF9B08076C9D64A@DS7PR19MB8883.namprd19.prod.outlook.com>
 <0c57cff8-c730-49cd-b056-ce8fd17c5253@lunn.ch>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0c57cff8-c730-49cd-b056-ce8fd17c5253@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=aYJhnQot c=1 sm=1 tr=0 ts=6835bb0c cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=c7V_mG7Cw8Ydp4GSWmcA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: g_kt4TzOUqiCjjm5--9Dy8WvFzqr8c5L
X-Proofpoint-GUID: g_kt4TzOUqiCjjm5--9Dy8WvFzqr8c5L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDEwNyBTYWx0ZWRfX98GlHWI/JKnY
 4+5bhGQYRAA1IOrR08+g5CdDHdE6Ys5PS5BPaMPwzRw8kH1rkvl792qd833n5OM4SeKevzzuxiG
 LNACX2BxYe8ReJJWGxFK+p4lPhK8r+Zzi1MSkKYVCoMUOFweKQVt+CxqSnqzL/pAHXlGH+V+OW1
 kRGBQcwOYX6O/gx5FQzHFI3P9AOp09tmb/7crx/X6dOiGcFEgG0vQn42hvlZayJ2M8+KW04ds9N
 nFO8l2/Cv6p9OKXQPh5py9uYvjFusaSXM22CM7Q8y7c7b7iKFUh1ZsvpCfanZY7bvdP76jK3VL+
 Rc8PVsbqE1SShMx93aTeuD4jzKlImJr+cGOcTaaMVCGZMbi4BHpvU17TUF46ZOq4JqILmt/Tuyb
 t+C5YM/nOsWHU5LoX77oSho5Br4DkDYPGqWkM2BroiPWToY8adLHLLFSzfB66wjFG3dgXaaO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_06,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0
 mlxlogscore=915 lowpriorityscore=0 malwarescore=0 mlxscore=0 spamscore=0
 clxscore=1015 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270107

On 5/27/25 3:08 PM, Andrew Lunn wrote:
>>>>>>> Would qcom,phy-to-phy-dac (boolean) do?
>>>>>>
>>>>>> Seems fine to me.
>>>>>
>>>>> Can the driver instead check for a phy reference?
>>>>
>>>> Do you mean using the existing phy-handle DT property or create a new DT property called 'qcom,phy-reference'? Either way, can add it for v2.
>>>
>>> I'm not sure how this is all wired up. Do you have an example of a DT
>>> with both configurations you described in your reply to Andrew?
> 
> When a SoC interface is connected to a switch, the SoC interface has
> no real knowledge it is actually connected to a switch. All it knows
> is it has a link peer, and it does not know if that peer is 1cm away
> or 100m. It does nothing different.
> 
> The switch has a phandle to the SoC interface, so it knows a bit more,
> but it would be a bit around about for the SoC interface to search the
> whole device tree to see if there is a switch with a phandle pointing
> to it. So for me, a bool property indicating a short 'cable' is the
> better solution.

OK

does this sound like a generic enough problem to contemplate something
common, or should we go with something like qcom,dac-preset-short-cable

Konrad

