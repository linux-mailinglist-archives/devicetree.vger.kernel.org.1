Return-Path: <devicetree+bounces-276092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YO/cMtrdt2mcWAEAu9opvQ
	(envelope-from <devicetree+bounces-276092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:39:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D83298040
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:39:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CE9E73001FA8
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7CFC38F634;
	Mon, 16 Mar 2026 10:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b5c+IPVN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="chlPI7Ml"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17473352FB0
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773657555; cv=none; b=Wbdi23PeZcm2wLxgSABi67xAb+T+fqNgjJNIQNII0ZchoOAyVcksVyaufrBcqjeUAf9LNSifqfnjVjgCSqRMb/nTbZ56XyBKDu52T9+339bsNdYumh4t9+efpOmgc7gY54kCWz/F5lwDlviuQg5UWaPzZdiGu7mrgJXaS3sz42E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773657555; c=relaxed/simple;
	bh=AFfI40R+WNVkpDzns7gNsGJaNp8GbnCbR28Yd0xU3A4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iqTQTEEaTDLQOd5Z/mWQOdxm+WTvB/O6Cq+0iz9IewMenL5p2RHIT+d5Mn01q6KAop4fx7R9BNXbBIUFjPkP/P6kWXAh5zGTIAVnrs4HX8Xx7KkOb7aqQPgfetxsrsW1AjNrMz4zuB48INcVvzYfZ5wJHenHoDMVyVtR4+c5ELM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b5c+IPVN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=chlPI7Ml; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GA46Dr3124561
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:39:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t60rKOeCZ7se+qnknJ2HOKTEie+XoswQYPSGTZuaCxs=; b=b5c+IPVNm6vW5vHO
	BdMQrIw2kIeyoo+uyOhWkAiQ2E2wHqOiVPYfzVCgMGXEGOCTeQMSMjAjskYhcppl
	WjGwVMaxUHTk4Slzds9AM0tibBTqqqKIyd6t9oSBPFNHT1YIvi5tZxJqy4wtopOF
	1d1QxPnAuO7vLbdwh1b6KT0tQyA8nY4zqM+avcrWJKRf31cFcuS5Iq9Pmuq+nEB0
	tRSBt9vh6PuYGBrW3xS6GBVKr/v0f1WTPJRgsIiA02ge3DDsXVWVLTbBSh/uxwqo
	WqMx7W5dQty47gMUwhfq8vHtuXC+jF4+1C0KmjBbmH3/Cow7O5lpQPR4zDZpqdgZ
	cGgVsA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxfsmg3dc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:39:13 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89c49436edeso11209626d6.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773657552; x=1774262352; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t60rKOeCZ7se+qnknJ2HOKTEie+XoswQYPSGTZuaCxs=;
        b=chlPI7Ml4oOxMuJj4zaz+VaUGxmvdlkwmIMsyizieufl/2GTbre3TrZP+CJMrnEmdm
         WxVVmThMeWS3UPbl1kRvtQBEvc0+y/4XZiuoAM0M97Ox6Ixkt/6tI6Ojjbfi3CMht3uV
         cml9wArBB/3pLrdSz5KCCdaX4kJYSju1sV1wcn46UPHhKIU+jUwjqAwvjKV9q+IAPnLO
         TkWTLVWX64OW5CV0CiGZvgmPm7IQ+mrvmt5Cs4p59a7j9/pwCfFmONjGxMUHT7ncVGBj
         PaGYWN2cIsNkMnM1P5pm9oxRlzcoOZO1pfsgcPSVKh91e2ZSZWO4lZV9FHCHXnwBnHIZ
         cbmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773657552; x=1774262352;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t60rKOeCZ7se+qnknJ2HOKTEie+XoswQYPSGTZuaCxs=;
        b=Xm2p9J1nMAu20jhpTrpjiutQf/QvEp+NwYi5gWch2JIX+xVuLPmQC9qqTp97IAakEk
         MwkblJm8B6JLp7z5q/UBv4iTJh/601tTSIwrNFRrTs+7wTpszvT+KoTHvVTug7aZCy+6
         45KOz1L3/POPBaQ2khVf+OCj6aJvB/3vWGcUXms1RpLIr+PHvy7AWuzf4BX/X6k30SsR
         s+GiCc9aI5WzKiG/DZMV4JFAOAl3Ub7SmGtwLwnCBRPb7aWqsJ9ULH08ptUTjYQPdiuA
         pxsDlWn2okPyz7UFg06991uDjT9/akweM8+yuGNkrek56Fhse51aLVgfJJ+8GEKXjmWV
         wkkw==
X-Forwarded-Encrypted: i=1; AJvYcCWvKctQBLTMOnmF+jTu0HhgtSUpXcY4UQYURDjZBkaViHXYifxoUWyMIcADJirkKEz9Y2T1xxQ80LkX@vger.kernel.org
X-Gm-Message-State: AOJu0YzUrpx9qiyNX1LiBvNCd4lt4LcxuOdIB/wjD1S9TBlP/BD5bgi0
	sh7kEV6abFyuelj8BdbXph4H4phlg3nO5E2vIWAtw+EyN2QW1sD5g1ZJrCDlMZq0tt8zjAr5Oq0
	pBaWZVRH2TqVxJBsvIUkoNIDe8whTQdBFSbAmh0qfnBTGejkro4ff0LnxMEqY69PW
X-Gm-Gg: ATEYQzyFcvnTUyjE3ilWUiA49EIHF/cij7XUxNUs0BSkbDyerevWHnvrvIfLuYD8SrM
	g4XCQUpSvG2OunXYe9Ij9f1RI9w1my7NqUs8nvtIcD6/nfgPPZy55zrjcVEY2WVWxYHt32KHje7
	4NW/ApL2D2FwrQeCt+Nx+YtK1g/PrNnAxHlronOZkEP9sJWU6FB8XMArxNKWiaIYPE2ZC2/l2iY
	pOV/tAcQbWryv3IM4bEnyDwSzTi0Tn9z2aFaFX5RiZCa1P+Fei1uVnllYW9AOqjvCIW5yyu5HlH
	N1hIvVKIgot+kS5eRgjj98YAl+5dWz5FDl0EqPhhmzkJ19CtqywxbkrOn/Hfo4Yai14AKlwS5Xb
	5o9vFdJ+41ZsdtlZDdSbiPFRv82xojPWaG08i1aQFTpGMMuJpN05WDbUqQz4LnSVgY4JVEoHhW8
	q5S7M=
X-Received: by 2002:a05:6214:4c46:b0:89a:4fd5:6998 with SMTP id 6a1803df08f44-89a81ccc828mr123393406d6.1.1773657552423;
        Mon, 16 Mar 2026 03:39:12 -0700 (PDT)
X-Received: by 2002:a05:6214:4c46:b0:89a:4fd5:6998 with SMTP id 6a1803df08f44-89a81ccc828mr123393176d6.1.1773657552041;
        Mon, 16 Mar 2026 03:39:12 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cba6eacsm550572066b.14.2026.03.16.03.39.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:39:11 -0700 (PDT)
Message-ID: <7e575228-60d0-47dc-acfc-90489a702d1a@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 11:39:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] arm64: dts: qcom: monaco: add dt entry for lpass
 lpi pinctrl
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, r.mereu@arduino.cc, m.facchin@arduino.cc,
        geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
References: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260313103824.2634519-4-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260313103824.2634519-4-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4MSBTYWx0ZWRfX1qeOktI9KmYS
 KQRJiDkNO2qpxAfI2hdXrWvgrfptUwXIbwMFStwCPeDIB4HQtX9lyOiZu8MQHTwBTY7+vsWM9n3
 48IvOBlTq3/rI8bb1oKPDbyB9eefRTQBXW18t+IaIDAExhs4DIvB/Sr13aH2pyr1aPJtgeQCuC5
 jQJqfQ4uvJ3jIWss+rFeE+cnzQW2Zz5DR3lpsScYgGqH2mXyXlS5UGpneXSiGPkdXnNYJM363Cl
 +Uy8DMn0C8rxgoiZZuOzC8hTSrQlxbgYlTdgaDGNr/w5dU8rkCoj9bwyZYjF1b6zsXI6aUe5nXj
 ki4EVozBTeEFx4hMRurqEIYn0wmN7+nJsCIQNRVeAPnla6QuePY8bwSUgbiwGs6m1m96reGEDkd
 oDj6fQ+wmTLcQl3+fe/HDQMBCxI9AQuZB+akPAIaRFzpdLrGg6UEbxsGpJ74isQTTS6DFaDXJxD
 RWKPJeJ3Pdp9fb0Q8Sg==
X-Proofpoint-GUID: QQTZ910hD1q7vAMRtgKIfuc91mX-7Il2
X-Authority-Analysis: v=2.4 cv=V/hwEOni c=1 sm=1 tr=0 ts=69b7ddd1 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=fNMmvbdrdlD2suN_VgQA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: QQTZ910hD1q7vAMRtgKIfuc91mX-7Il2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160081
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,arduino.cc,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-276092-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B8D83298040
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 11:38 AM, Srinivas Kandagatla wrote:
> Add LPASS LPI pinctrl node used for setting MI2S and soundwire pin
> configs.
> 
> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

