Return-Path: <devicetree+bounces-264948-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAOxHcWXjWkt5AAAu9opvQ
	(envelope-from <devicetree+bounces-264948-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:05:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E1012BB3E
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F1BC30A0C03
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C83B2DE1E0;
	Thu, 12 Feb 2026 09:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pUUVgpnL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="egpJ56gV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC384274FDB
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770887023; cv=none; b=AOEuxc9pSxNWKaXom5lb1GQYVnatH/30xfecYifRg4DFFS0Sse58JsSa3EWjmhY9qbsg+jvwi5iJGfpHEckrpiAKMm4d5QkNJ2c1EZi8pVCc4qq/cTxeEwrbBIGyX8urr5KzhwOccu547rvOtthSzevcBqoxzcsyPAT4Kz+JVZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770887023; c=relaxed/simple;
	bh=VkZTrjlZGqC0+D6fCVol/C5hmVUHnOPeg9sKhKYXebc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W1DceLxS1MHD6mRGsQhUZ1JN/PQv5K6fltcSFCj1vjjL4LY2I52yHOQLy17Gd8NuZTHxKjt1S06t3jNIofcvYz4V4EGferliXUILN3lah5bA7oIHvyj9thy9VEEh+GfAXTPL/kyZ/VdDX65ctZ1gtCetDyZK4iUjgU74tSTp7w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pUUVgpnL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=egpJ56gV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3RiMC3143783
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:03:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LB9mMoVzXKveTMP7EAiIbt97bVJpR/rFHiD/WeguGIM=; b=pUUVgpnLap6wIi1u
	6SILcBVfc81o4U1Orem84TIJ4gAocp0nAYvmBAmuLyJny5rT5mxCOqXT89L5q7eV
	q7WU3N7ffdEnoD4EcrePe/vxz+fYeftNdNe63jmLQaZ94ROdUKcBJOFZmFveoUha
	Cro9oNU5zsF3/SG3cCk10/YyAW+j7Hn8A1Pb9d2aMuRuo/IpPzRkwxK4aW7NGcx8
	eALfejUBJ4UNs7bsUoT4sebvseEEaixpjTcPTzGxrvieHa8qx7e7N5IzaHioFQM9
	sA27eXpZYohPWaIZwy2/JttihFE1fkH8+DX0WwdschmR8eNB1DscS5YS4WzxBIk0
	MED8eQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c93snhf3a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:03:40 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb39de5c54so3010985a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 01:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770887019; x=1771491819; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LB9mMoVzXKveTMP7EAiIbt97bVJpR/rFHiD/WeguGIM=;
        b=egpJ56gVnoGl1Dq3vluLiaVRpMpHQrDB9ziQ/KiP5QJdZuP8+oCMMTxyjVVe0pIfVf
         VvPg3KyS6+mNcA3PE7WeHIFUCXR+CYA82cX1jXWft87jFZzd0WFobjbRa+SKB6vtKjUg
         6+IDu+aKfNMKihNupjqzcxqtdzqUnS8pdj06RSgayMdp8qfyc4X22ZSsjt+tgOVPDiWG
         SqDQS8yA+Gpy4lrAAdUH/oa05cCQKis9W6B04fTgM6TWjt/DiW6l6K7WAMw74RiQrFID
         8XVmooTY1CjU4FV13mJ32hP2HXc1Z5xyDUTJMZbC+/XNZA1PSgDDyh0sgClh2WwZsx9+
         Lqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770887019; x=1771491819;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LB9mMoVzXKveTMP7EAiIbt97bVJpR/rFHiD/WeguGIM=;
        b=AI+8uwHaRSXClPBa0zkKxYl/OnXSCJtEN/v5dke1KeFRPS6TcASnMDCk84RfE2uIKB
         5vqtg52WCd0uemzM/WCmtUIHPNqdBM4joVSUh1Udj5CqAEFtVMu0oAcFWBF5cdoWgWPM
         pRt9s9V+rW3RsSpOZidCcLf9GV+aT162FAELhQNGTLge6MmMjeH9F6rvaPBiR3wEdHMo
         U6pNFR0C0KgdqWA5AXqw69VUQVka775ekw+uSegtLAObWu1MWFgwvvFHWej8iLEFXgJj
         iqO5RjI1BaQknIyCyVUkpMWFBNqTZ7Ltl9rXqcCC/r9MuYe9mDHVEFqCi+atlMhi103K
         AEeg==
X-Forwarded-Encrypted: i=1; AJvYcCV/WRFB9ue7ujK/ACKoZqgePw7Nc2MzwoY7cuY9rR9zvApfOUaXw3YPFjw21eqt3yloOWYJPXiNd/U6@vger.kernel.org
X-Gm-Message-State: AOJu0YxVs9ZDkLhAe6tdvOBoYk3zuZXTymwRxQZaRyzTKEDwDhjSroTH
	3GqHgldL9Mjt1nqTsLbej0bhJKEdKz7zF3Koo5TgISqErZh/xUdwcObk+K9KNAMbQlOI8boTM31
	qiqduIz2W9XySKwusjemHNEPvuMDBWJXivLReu2xJaYwcRy9WG8Z6jAguCuBPFZ4e
X-Gm-Gg: AZuq6aIk8IYzHy3in7S2BMwrvhgmpVsLq8LzDZSlFI3uOzv1jc8bFzX3/G1htLaUx9I
	YH6HidHtGLqbPrVIYiWN3kJY19oKQNzB3Zem6InnqDW2T5j6MVhqzMHqQSwIVFj85n9pcAKrXZS
	eH8/3Eqsf4yl/ow2rO5FbbIUtHITw6eyaBuV1x0XaE8F/ji0uGAVssWMkxzUk1xfKgDI+DcS1Gs
	mEgZ9H90mnsOKiHfEQRzPeX72w7/YdoUwoMLfeOvUIcgLS/F4qtbn2knHjtLQqbQR5BVh0BwSav
	hpfxJ+0ShF8RTKC68YM2SQ/qaZ62GXsQsiZGkjP+8XueyJGGht9eQ06ZO3kr8qz3WLe2KOOUqlY
	czYAmZiACTkosT1RiGYF3O+/1+c7M3VGi5QyqZgouis6OdotErRTVjxk30qc236LFukrfl1TIAX
	XxlxA=
X-Received: by 2002:a05:620a:191c:b0:8c5:33bf:524c with SMTP id af79cd13be357-8cb3311c213mr203995985a.6.1770887018962;
        Thu, 12 Feb 2026 01:03:38 -0800 (PST)
X-Received: by 2002:a05:620a:191c:b0:8c5:33bf:524c with SMTP id af79cd13be357-8cb3311c213mr203993685a.6.1770887018538;
        Thu, 12 Feb 2026 01:03:38 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3cf4ccd0sm1526530a12.27.2026.02.12.01.03.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 01:03:35 -0800 (PST)
Message-ID: <0d707127-4f86-4e53-ac6f-a5c85c531e08@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 10:03:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs6490-rb3gen2: Enable USB2
 controller Micro-USB OTG
To: Akash Kumar <akash.kumar@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260211052146.3760500-1-akash.kumar@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260211052146.3760500-1-akash.kumar@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA2NiBTYWx0ZWRfX5II1GI9BzXw9
 kJH2ZX3afYuuGbWOF5F4HA1dcPs38WDbxU+22KTBJXZSKgKleX/qE2AlbDlm1NVkTxWsVsKjMqa
 MBvvH2T1+ET3Ivc5L96Frogoj82Kpkg9PDwQQ9OK7SLPt0eg57OgkbJEN0MKvl6UQgCktdAfNxK
 L1HeAB642u72ySZv8wLbFnX9CcAlebp1vBK0/ZKG5SO+gMJl+nsYhMAjPtspglnJVAr7zHMrI9t
 tvhnq4FdYcH/WUnuR0kS34FFDv3rckrGGS4FqSS/h9KGzHEha79eScgixUla4lQ2yL9qyzLb8db
 VtT8TJhlzNMymxhvy5ELx8vKrFTUwllDHPpD5iDaSYYr2W04EonngIrboqzkSYAgDE0lW4kGqOG
 LN4AJttcZbQaPq3euqeybpueFJZL1R8WRIy6gKeS6DeO9iloalDT5XIgJcXYbfT8AaHoVHhsPhB
 PIPieFR90m6+FBMNyoA==
X-Proofpoint-ORIG-GUID: 6epSFJbrRDPDxErR7Ly621Dbov1GkHsI
X-Authority-Analysis: v=2.4 cv=dLCrWeZb c=1 sm=1 tr=0 ts=698d976c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=mYmVozO8WKkDhUnJKfgA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 6epSFJbrRDPDxErR7Ly621Dbov1GkHsI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_02,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120066
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264948-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 17E1012BB3E
X-Rspamd-Action: no action

On 2/11/26 6:18 AM, Akash Kumar wrote:
> Enable the secondary USB controller (USB2) and its High-Speed PHY to
> support OTG functionality via a Micro-USB connector.
> 
> Define a dedicated 'usb2-connector' node using the 'gpio-usb-b-connector'
> compatible to handle ID and VBUS detection. Link this connector to the
> DWC3 controller via OF graph ports to satisfy schema requirements and
> enable role switching.
> 
> Specific hardware configuration:
> - ID pin: TLMM 61
> - VBUS detection: PM7325 GPIO 9
> - VBUS supply: Fixed regulator controlled by TLMM 63
> - Define a gpio-usb-b-connector node for Micro-USB support, mapping the
>   ID pin to TLMM 61 and VBUS detection to PM7325 GPIO 9.
> - Add the 'vdd_micro_usb_vbus' fixed regulator (controlled by TLMM 63) to
>   supply VBUS to the connector.
> - Add the 'usb2_id_detect' pinctrl state to configure GPIO 61 for ID
>   detection.
> - Enable &usb_2_hsphy and populate necessary voltage supplies (VDDA PLL,
>   VDDA 1.8V, VDDA 3.3V).
> 
> Signed-off-by: Akash Kumar <akash.kumar@oss.qualcomm.com>
> ---
> v2: Fixed minor comments on v1: https://lore.kernel.org/all/ad294a50-027f-4caa-a9b4-e145f709b50a@oss.qualcomm.com/
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

