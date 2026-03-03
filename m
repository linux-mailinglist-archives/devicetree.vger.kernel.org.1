Return-Path: <devicetree+bounces-270806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJ4NELRzp2ljhgAAu9opvQ
	(envelope-from <devicetree+bounces-270806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:50:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C7C1F8785
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CE6A3098034
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 23:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BB943750BC;
	Tue,  3 Mar 2026 23:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k/kkHosK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EfIqbFqA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299A9373BF8
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 23:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772581807; cv=none; b=OfVT5nRqz1YB89SLU8meRHYye5I4OVjcuH8exdkagyQg4Z7XOJhEP3Bid99MU95roxOWPsFwMv9JO7eC/7gFvGMy8N/+tF8pk30faaFwr/5ZplLLnly/bOx1HoswE39nuV9gIdan3pCUweBHKX5Xw7lHFQqRxipCZiT6PUNsnu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772581807; c=relaxed/simple;
	bh=17DO/aaM/m3ftdShmzj/Mm5JSnrdIVovbEXiCjDzh5M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jMdIJ2sC6ToNVXOAB3ivz3oYAfBG/0OZf7zFmA/99QmY23SZQLhE6yl0mKZgZVYhVJ1es0KV4XPeBYNQE/BevJ99V8a3QOHgfEnNz7C2OzaXmS4pE83+Tqd3Mb6xkwUcDBj+imztX/MrQbuoRuOJquHVb8GZxiMjxC4HzJmSSxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k/kkHosK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EfIqbFqA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623HBGI32786691
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 23:50:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PSQYl+DYj9/icAWsCiOj/vArBBpEwz/JOcfkETWeZN4=; b=k/kkHosKWm4MCFL+
	+B2B7KOhrZF0bgcZbPim0nLB73JCdPxEJLgYYABUKt8MrTgfr7u6ONUSC4a1DgGO
	TSBvPsaGca5ASjf4z71s/OwqFmFlpcQA4YYRQXoyopevDwUJ3+hoNyOnTW5WUAnD
	hEcTvDwwSVE08pBOqCUtkb0UKOB/D1O8zv6dbLAA9RvLx8DqX9xj5PLqVnoUjTI3
	zNEj9Jz9g8Pzh5jQXn/Ez5YMIPOiLtUEIMu7yT0eGiUo5vdovrxW8+YQNavKZRDW
	ENUY/28Goct8t4ExS5UzcZgCC7utd1ea9gu2fZ6Vtxf8wyzMuhX6zknvu7MEqQiY
	h02Wew==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp3tvh9wu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:50:05 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-1273886efc6so6166299c88.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 15:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772581805; x=1773186605; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PSQYl+DYj9/icAWsCiOj/vArBBpEwz/JOcfkETWeZN4=;
        b=EfIqbFqAAYcfNY6QlyL6IguniycaPAjsLPTiDi+tgpSOLxslZDycvCzicIz9TFn5RC
         waxDMMY9pP5akizx741UJxU6NA73cFF6mvq0dmLQm6J8Xws99gwgd1qn8xPTmLY8EpJL
         JpTlVj0VaoDS3bwA6cfHgw3xTyKAKxmGDc6z17mJ8Vh2sTsL9nvVH6B3SQjmQsaufki0
         YimLD8e8p5Pig2PhWue3BCPlTp9+ZTSd+tgPVJBt6af7X9NgJgzUJejpLvGiNWUuys9v
         w4oCbF/f5W2F+spDMymnORyVXmbKHQw72hSqiIazaFuW/11Y5bmER3jC1tzMzGiZrEpN
         /Z4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772581805; x=1773186605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PSQYl+DYj9/icAWsCiOj/vArBBpEwz/JOcfkETWeZN4=;
        b=alK8hArE0GX/948LTWMnsHxnh5hnLG+jk25iPTWkC4XJwj/k44CHU6knSLfMrgD63K
         juIvhACKfOJqikDU/CVc7etmrgF0RvA+lXv8WDJrkv/qOyQCgnXa3CLq1bH/zHhL+dNk
         8JtaktztLHHqG9elLweMap70C3SuWtrYADq4HTrGx3ljuydjNcwImcsPkpGBf+htfl33
         F1DUBtW31pUcozU6jM4Y71BImkdYP5ZrOQd67eHjMdmXobPUzIU53Vxd/5naPYp65yMB
         9HK63r9YdLJNDO0C7oaRAbQd/uzUQCPgDdAPuKMadRduKGgyqcJjWp22eHbsF3oirSR2
         BvKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnx87V3oIbYFHrsouK5m/prbsDBq0vXY3L2IYJTXCmOFZPlUQngJ3ZKGwwq08dF32I9vJLnyo3HGqn@vger.kernel.org
X-Gm-Message-State: AOJu0Yx923FjMpWY4VYE+xSd/WJ1ELintdvlr2qxaQ8S1fZum19TG9dk
	0xb1hog8eGbluTLJPl+nqGeEb24fsJ9mzQzfvPpO4pn5jMgLcDa3ZZ+rum5VICKaT6n9Kl4CGaM
	E6FPbcTLRsOxD74DRKcG51Mwz9E1b7QIMSyZZmVMLoMv/oYWce5LCZRoC1VaGQ89a
X-Gm-Gg: ATEYQzydfcBAQnROhZFwD0KVOc1G4sE5EWinpztMEbK6mwjr4zMhdfwAfVKY16UWNcN
	2UBI9dyMsenYDwlPjgTS1vII0EwQ3HxM4d8QO8a431wLQ+tXo9NX0UfWQ5ipr53lFCyekbnJwhb
	IXcSEvcvCJQDDDLkl2FluC8diF+zlFUY1MoKpmmpxI3iwCu3Rg2fEZZ7G9kC8jatH+1oiVw08UN
	qcRjLbGTY2T93hGQXEB/lMzTWigdtiS68xKULm1EVPrR+wm2Fx6ZpPVJk5Jk4zZcp/FRmwz6tju
	+/QkNsPk16VPWrYzhdAwYLYllwmwAgrWHe5kyXX7Ly0mEfPCaPkadeAUwPWp9wP1rMgI+OMVHlE
	pI1WPkmHEM8AW06jbQR8ik2tctVvqjKFtB8iKdeTuojIjJ7SCLyHbLaoO2g/50+cprY2L/eoqio
	13
X-Received: by 2002:a05:7022:622:b0:11d:c04a:dc5b with SMTP id a92af1059eb24-128b70daf02mr9257c88.30.1772581804617;
        Tue, 03 Mar 2026 15:50:04 -0800 (PST)
X-Received: by 2002:a05:7022:622:b0:11d:c04a:dc5b with SMTP id a92af1059eb24-128b70daf02mr9243c88.30.1772581804023;
        Tue, 03 Mar 2026 15:50:04 -0800 (PST)
Received: from [10.62.37.55] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1279cbd1993sm8610682c88.2.2026.03.03.15.50.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 15:50:03 -0800 (PST)
Message-ID: <8e7c2036-74de-4f21-8269-8e2b24323753@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 15:50:02 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <4pFL6wOeTKUt-Zq4YbjqJdacMgUIPSYJD-4-5DcIMEZ1sM7JsNFYcSv1bd7ZRVOklTsmkEfxM2b6tTflmiECNQ==@protonmail.internalid>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <03b44922-72d5-465b-96e1-97a19655e97d@kernel.org>
 <4440a3a8-7281-4bea-bb84-7a9d19ef7ce9@oss.qualcomm.com>
 <2a1155bd-7dc5-4ed8-b1eb-ddfa483c75ca@oss.qualcomm.com>
 <4fea7117-ebd3-4279-9973-3ac4f2a78835@linaro.org>
 <bfTUflirC2qzMSllq_4qHGr3GL6TJ088yNF4lCBtjCoc1sXqz0KcfYyWuQv6TeRtP6GdpqllNp4ipl4Qax4xwQ==@protonmail.internalid>
 <f031acf1-9a03-42f9-b61f-b6fa6bf9100b@oss.qualcomm.com>
 <dde5f82a-9ff5-4f7c-9ef9-470aad17c9d0@kernel.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <dde5f82a-9ff5-4f7c-9ef9-470aad17c9d0@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE5NiBTYWx0ZWRfX9WuQQ2XNweF5
 YaElbxbQtP3+2y8ANBKmowhI/eTm15msAlcjKRS9W0264skOlUIVmPZ0UVO1ecgtBTaLKM229yu
 J1Awt03DNQdUI0mzeBIXQfQlVrwYZPLbBoPIWiPGhcpT3qM38EPdEO0UNglUeBwZ6HYTw3gOkJy
 h3QREHmNL6zJrAzYEW0TKOmdG0uyVZkv+ZX2I3ndFQqyFvjTBm3mKo208QA4QNAE/BE/NJDVLad
 53sMEz/Xmm94lFKfQ/Bqh1RcicODEmX+QfLuxEHS6A4y/nH1FfNQSS/kWDuckdpA5g+CgZxmUP5
 1ili4qcOLOD2KKGCuO0wjSKv8+rk25iMKVGc2H+JFTnoOT8QjRMi59b4bV/Vr7ETZEt5qsg6z2Y
 lRakjm9BrqpB03fYOG/aQqlZNuiW12WloQDKMfWIBqcwLKYIMrQq/NQm83DkXrIPGdPtyuVSK3x
 0OAKSlqVlKuR2KbpNqQ==
X-Authority-Analysis: v=2.4 cv=VYv6/Vp9 c=1 sm=1 tr=0 ts=69a773ad cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=U-kwclmyVS-SegT1OQUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: 1HKnHHRXASU6oxDBb1EDbiWVV594JDxf
X-Proofpoint-ORIG-GUID: 1HKnHHRXASU6oxDBb1EDbiWVV594JDxf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 bulkscore=0 adultscore=0
 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030196
X-Rspamd-Queue-Id: D3C7C1F8785
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
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-270806-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,aa00000:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijay.tumati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/3/2026 3:26 PM, Bryan O'Donoghue wrote:
> On 03/03/2026 23:17, Vijay Kumar Tumati wrote:
>> Sorry, I do not know about videocc.
> 
> I think Iris does those itself see:
> 
>                  iris: video-codec@aa00000 {
>                          compatible = "qcom,x1e80100-iris", 
> "qcom,sm8550-iris";
> 
>                          reg = <0 0x0aa00000 0 0xf0000>;
>                          interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> 
>                          power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
>                                          <&videocc VIDEO_CC_MVS0_GDSC>,
>                                          <&rpmhpd RPMHPD_MXC>,
>                                          <&rpmhpd RPMHPD_MMCX>;
>                          power-domain-names = "venus",
>                                               "vcodec0",
>                                               "mxc",
>                                               "mmcx";
> 
> Still not getting an especially clear picture on what _levels_ you are 
> proposing here for MXA - here are the three opps we have for the PHY.
> 
> Sorry I don't get how turbo is coming into this ..
Sure, I was just giving an example. I haven't looked a lot into the 
IPCAT / clock corners of this target particularly. Someone needs to 
check the clock plan, understand which PHYs require which power domains 
and add that in the following OPP table and as for scaling you can use 
the same RPMH levels for all those power domains. Btw, if you had 
defined the below OPP table for TOP GDSC, I think that is wrong. It only 
has two perf states (on and off) and doesn't need OPP scaling. If you 
look at the Iris driver, they link only the mxc and mmcx power domains 
to the OPP table using 'PD_FLAG_REQUIRED_OPP, not the GDSCs.
> 
> +    csiphy_opp_table: opp-table-csiphy {
> +        compatible = "operating-points-v2";
> +
> +        opp-300000000 {
> +            opp-hz = /bits/ 64 <300000000>;
> +            required-opps = <&rpmhpd_opp_low_svs_d1>;
> +        };
> +
> +        opp-400000000 {
> +            opp-hz = /bits/ 64 <400000000>;
> +            required-opps = <&rpmhpd_opp_low_svs>;
> +        };
> +
> +        opp-480000000 {
> +            opp-hz = /bits/ 64 <480000000>;
> +            required-opps = <&rpmhpd_opp_low_svs>;
> +        };
> +    };
> 
> ---
> bod

Thanks,
Vijay.

