Return-Path: <devicetree+bounces-270798-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id coDGCR1sp2m9hQAAu9opvQ
	(envelope-from <devicetree+bounces-270798-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:17:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FFB1F8504
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:17:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1D21306CF77
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 23:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E840933B6D9;
	Tue,  3 Mar 2026 23:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O+sXld4Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bvLsK9mn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B6F831F988
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 23:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772579856; cv=none; b=Yew+qNvv06uAgQEiEjKJ3XksyDCh4/SgnU2SpE+5C+HlC7CBLJcgIACYBDgPqSIiDGRW5YOLyA1H0qL23owmkbkpqMi5trnZKHrBIL3Ebr7XD+yd8YwuJoYYrmFt5NCVvWplrczwpszPfecrQnT353f9tAacrUQUJNLuzr6mrXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772579856; c=relaxed/simple;
	bh=tDEBTkYi4cDBBqHaieoyEMokcL2GlTp28tmpfGIdQI0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wmo8D4Km+khdQKfp+aeI+z7g2/KmTQhUj6RyaEB1NIsUQbGH7ywu58r/0LNYNWC6FoV6NQluk/bHC0xDlM4B1Pud9VN/9kibwg97r0BTWbVAokUbi3MBamUiDRAm5yAyRb2uFigaeg3W9H2cEk9DCZpq+au03v6t4BBRnzpuqcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O+sXld4Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bvLsK9mn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0X4H3238644
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 23:17:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T/pl0pm3Bd+CM66/M4SPYsQpdYEpO39Z9/Nij6zifh0=; b=O+sXld4QeeFObnvZ
	bH7VeTQPXIIVpSo3ZjIwElgFO/FaYXNzgMLwT3krD9N5p+FIcBLPRrtHJ7S8v0ai
	UoYUH4FowNUO9FNHI6uVpEc6azGAYJZbhXhPfHgOaNd7cMY5oBCIaSX1Gl2WiU8N
	tCDkUjf+A0JeI7uEeSLWtWKdasAqSWSoaP7jSsFFBdFE7G8y/N8GBj24zzmNMtAX
	aca2Kyy2+jKVQLB17NFlLrtg8QC1LtiqNj9ADX8qLd+4rA9wn7vah3mXQi8ctXkv
	Y29xBuWc1xuX+3vuKhNQZlcoY7E90hbJmC4cdrDuG2e2rpBtyJWywuuIyf5Jt1Dk
	AVMdDQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnvtuanj5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:17:34 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2bdc1b30ac8so29206541eec.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 15:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772579853; x=1773184653; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T/pl0pm3Bd+CM66/M4SPYsQpdYEpO39Z9/Nij6zifh0=;
        b=bvLsK9mnnNNe9/fv7+X3DjITsXxvwMH+PFOnf+s3YodbWyT+f/UtaHgpp0dvQQtXjw
         3tkEhqOZNr3XfqXK5m5yIFJw5uxXPq7Pcad+Z9kfcnc4A5ecvYcI8sIvX2KowYO2Mtk9
         IfCObdhJxFln83Z4omXS9VDOBNcdHTgQ+Cn2xjhSzMuwI/A3JBRjca23LIQsnKjwo6xo
         jMvOr1ixVRnt4MhEGzRq3YWGYdR+aORTty+Vne2Bog/8rFyAWcsAu9/uRyret0MkVd3+
         4eek01ST7o4OzRdU3kiktmjJg4rUtVo5i8Rs0i3mTZL1bC8iDv0dC+BUbbcdn99fi/AW
         //wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772579853; x=1773184653;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T/pl0pm3Bd+CM66/M4SPYsQpdYEpO39Z9/Nij6zifh0=;
        b=WSQT684Q1UdPAMEmzSIVszJUEYdSbenLjmKYC+5Xu2owQT9gCHoqioBhNIAk+igbuP
         tI1HTCG0pZZ2njLi/nfjeQ5AyBwvgxPwUzAX9fZHMY61c8+sswRab8gsOmu1/Hfz3uhx
         cspIcFABhjRBiuDdFnh755mcItWMeUnfdPrtZr0xdo+GOxerUO5JNd5q+x9rTMZ89ZBm
         oX4pEOvypGxe9V7DiJW+1Vu/zbqsiXrlRKX1T5CsoCKl0eXVhpQndTvkCdsnXwD8NPtu
         LRXY1+LIKTXfqiCl/bsFKmPnwJRC3t1mUAEQHJwxY9BKR+t8NxRlvpZvsMomFidc0WIP
         PVjg==
X-Forwarded-Encrypted: i=1; AJvYcCX0sWZ/13PkJMaDoFlNX0qnFpT0UVkBozID5UjHiP1tfiLgZwk0IIdUK0IvvFqdJ5jHuk+QHA9bnkbk@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ9GT/fAa3ie7nIeEBG/t3n48UNeDh7kAMrsQhKj5PZnIyn2C5
	Hz3La3pIF593r17l8IEhJgS81o7bjvAJRHN/iHoSMHAc971jEa8dmxfdKZF5BVVZFNs9LeRnRj/
	71kcPVutvk2HecKf3B30eMhZLJRvCf6J+bjICw1Abay0jRrfXpgB5+woL0cGzzwCLjSCkjld2
X-Gm-Gg: ATEYQzx6sdyBg+l2qJ67IyykZlMpx1bKxeM2NzyBl9P2TwmQPage81/M0262AETM8aO
	Bx0B1IsaapUbreR7CJSW7JU4QD8GAD4/hPKbjBjPQEbmw0k0iRWVmF5IgvTM4/O/OgZDQKgm2/F
	Q9k1KviUVHljZdxWVVWsN9aKG5aYil/zAPt9cDWF6Xsdvb9OZG1mS5bsUzKzVDx1sqU3I4zYVSO
	0XCO3f+6b70RLk/0wucKQDzZmTQisFAc4MeX99XWoqvT90Thzf4DjXLNddDGK9wbWiJNNlqK3xf
	4YRADVVds+r0fwbmjdU2F8P+jsL4PZIs08vqdoQLegkosM8pPI+FxR1yPmgW2LN6/Wz0p4Xc2GF
	fOFFPXBcEc0ZXdM7owzMYngHeADApQk8HHn+wOSzje39l485gqbbzP9dgtWJi3BZBJEyLzcvieT
	6i
X-Received: by 2002:a05:7300:e12a:b0:2be:ca4:e119 with SMTP id 5a478bee46e88-2be311c8626mr6555eec.30.1772579853142;
        Tue, 03 Mar 2026 15:17:33 -0800 (PST)
X-Received: by 2002:a05:7300:e12a:b0:2be:ca4:e119 with SMTP id 5a478bee46e88-2be311c8626mr6539eec.30.1772579852539;
        Tue, 03 Mar 2026 15:17:32 -0800 (PST)
Received: from [10.62.37.55] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be2f0d1849sm411313eec.28.2026.03.03.15.17.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 15:17:32 -0800 (PST)
Message-ID: <f031acf1-9a03-42f9-b61f-b6fa6bf9100b@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 15:17:31 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
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
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <4fea7117-ebd3-4279-9973-3ac4f2a78835@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: dUYrVzVZFYfWHkZA9RBXYHCKA9SXa09_
X-Proofpoint-ORIG-GUID: dUYrVzVZFYfWHkZA9RBXYHCKA9SXa09_
X-Authority-Analysis: v=2.4 cv=A75h/qWG c=1 sm=1 tr=0 ts=69a76c0e cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=w7-7VXPaYEwSs5UKW_AA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE5MiBTYWx0ZWRfX+oCD22Hb2j3r
 aoaGSEuWPQqaPDzuavsKugzvzSp1GGYf6z7G8a7cMMUy4tFekIzTY1UJLvME36f6o8MyhCy5RdO
 Zgou2SGkZNK2uxDF8bGo9Kg4oPwYPKL0mfCqw/PDwQhVvwcURNJNwt5GFnS/8xyoDK6DtKejH9n
 hQrWp3MBT9UXDLO0lyOzMsZlR4n20R/b/5v5bpMpDUBqLArtK1VROa4BnZZWBtgCxzMhwsgM9IE
 v5oBxJNm+LscaxRZf72+CgLNVnaSuH2klaQkkCeYIaBl2rZmp8qKhmkN3GFt9jhf1Grnvn1Nv0t
 8bPn34mD0YbS7XwdPoxcgLAHFsgBnbjjWeuJWOZ7IXT9WQPoelmo4q6GnXGwAv8PC6OyK9MyLtS
 FWsd+/yR7GFl2NTeaUk4BsTSfvQm81FzHHNQChYTjfHx+7A5U1w5qq7CxWB6IcbosZQ9XhX52p8
 AttHYA+/XGjobFGdmfw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030192
X-Rspamd-Queue-Id: 88FFB1F8504
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270798-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijay.tumati@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/3/2026 2:53 PM, Bryan O'Donoghue wrote:
> On 03/03/2026 18:58, Vijay Kumar Tumati wrote:
>>>> - TITAN_TOP_GDSC
>>>> - MXC
>>>> - MMCX
>>>> - MXA - first time I've heard of this rail, from memory I don't 
>>>> remember
>>>>          having seen this in ipcat when I could do so.
>>> MCX and MMCX are comminly required power domains across the PHYs but 
>>> a subset of PHYs have the dependency on MXA.
>> Actually, it's a bit more complicated on this target as 
>> cam_cc_cphy_rx_clk_src also depends on MXA, which means all the CBCs 
>> connected this RCG do as well.
> 
> Right but that's something to model in the clock-controller then not the 
> PHY.
> 
> i.e. if a clock depends on MXA then the clock controller should 
> represent that dependency - not the PHY that depends on the clock.
> 
> camcc on hamoa looks like this
> 
>                  camcc: clock-controller@ade0000 {
>                          compatible = "qcom,x1e80100-camcc";
>                          reg = <0 0x0ade0000 0 0x20000>;
>                          clocks = <&gcc GCC_CAMERA_AHB_CLK>,
>                                   <&bi_tcxo_div2>,
>                                   <&bi_tcxo_ao_div2>,
>                                   <&sleep_clk>;
>                          power-domains = <&rpmhpd RPMHPD_MXC>,
>                                          <&rpmhpd RPMHPD_MMCX>;
>                          required-opps = <&rpmhpd_opp_low_svs>,
>                                          <&rpmhpd_opp_low_svs>;
>                          #clock-cells = <1>;
>                          #reset-cells = <1>;
>                          #power-domain-cells = <1>;
>                  };
> 
> So... we may need to add MXA here, probably do based on what you've said 
> but I believe TITAN_TOP_GDSC is the only power-domain we need to list 
> for the PHYs themselves, as what you've described above is a clock power 
> dependency which we basically already capture in the clock controller - 
> absent the MXA - which is apparently always on...
> 
> Sidenote, is MXA required for videocc too ?
> 
>                  videocc: clock-controller@aaf0000 {
>                          compatible = "qcom,x1e80100-videocc";
>                          reg = <0 0x0aaf0000 0 0x10000>;
>                          clocks = <&bi_tcxo_div2>,
>                                   <&gcc GCC_VIDEO_AHB_CLK>;
>                          power-domains = <&rpmhpd RPMHPD_MMCX>,
>                                          <&rpmhpd RPMHPD_MXC>;
>                          required-opps = <&rpmhpd_opp_low_svs>,
>                                          <&rpmhpd_opp_low_svs>;
>                          #clock-cells = <1>;
>                          #reset-cells = <1>;
>                          #power-domain-cells = <1>;
>                  };
> 
> ---
> bod
Well, the current upstream clock driver (at least for CAMCC) enables 
these power domains at the min level but they do not scale them. So even 
if we add MXA in the camcc device, they won't be scaled per the PHY core 
clocks. For example, if you are running PHY at TURBO, the power supplies 
may still be at the min level or scaled individually according to the 
requests from other sub systems. If we need this to be controlled from 
the clock driver directly, we will need multiple performance states for 
the TOP GDSC.However, this GDSC enables all the clocks in Titan, each 
with it's own voltage rail connections, so a bit complicated but can be 
discussed with the clock driver team.

Sorry, I do not know about videocc.

Thanks,
Vijay.

