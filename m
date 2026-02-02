Return-Path: <devicetree+bounces-261744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MpnG5J/gGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:42:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CA1CB1E0
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E580E3007B23
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB0AF3570B2;
	Mon,  2 Feb 2026 10:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E14rRjUf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fNxuB82p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F53F221555
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770028815; cv=none; b=AjywsQOKPHH+/KgLjXG2i8Wco5L0ISP8gSerLLagMFq9mIVv2Lct2VuvqRYtiFcqWvhOcB/jZoE6Ann8Sc6y6SU5sBIXRLHa5noc+zD0G3d7eT3DMC0n1lB4Sw10s2N97uVIUQvjpk4AUEkBSOeJOLoGRcntXWAdQmF/zzTOIEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770028815; c=relaxed/simple;
	bh=6gTBglFHTaGgqTTG6CBV0R7cUv7XK9CWO51lUDEkXsA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qHKfjP6+AkJ3ZoPHh79OMbQR7sTwVp3dopfuNkZ0TBGZEGmHi4QAIuGbKRDGH1GKd2snDIBoof3J0zrNinns4qePoxGvGjqI4flgD1weficdpfAfqJ90UUB9Au4MkjIIuHkVm8cHh6kbcQ0X1dlvYt4G0RlVjaeliMSk9elxIPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E14rRjUf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fNxuB82p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61281qZt1558427
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:40:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2eKwi0gX9NY3lt9IpkM1Ek8vFQh6Pze36H48CYSXvew=; b=E14rRjUfhrZknhv1
	pHRM8oI5iG6TN5bIN0kkaPZQLr2MzmgH8+UUcWVnk05E5bDOfabKpOCB+KGAxzwo
	YdYRDLV5ZUeXphedUKHVkgOfoMpFtXOkr4w6q6AgkuX3/RgrZ3r73JOh9Uv5LNw0
	36OxDoo+YD+5hD6Sb5T56Xp9D71AdH+XVeTfH2eUa/TzUN9HSVSzbBF7iTiD96DR
	1Sex2QL9BbGm9xaVrC+40fL5fL8YpZPQC54gVqs68XYmNRn9cURoeUIUWg0L6GyP
	0h2/fhJAHNn1KU/+CFeKokWWl0okpv+5JMWTR7wm7rQ5WDP6yt3dx43I5WuFU3OG
	HcLB2A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1au2n2nb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:40:13 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c636238ec57so2918502a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770028813; x=1770633613; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2eKwi0gX9NY3lt9IpkM1Ek8vFQh6Pze36H48CYSXvew=;
        b=fNxuB82psHV4bIjz3fE82NuDAqYeTrzGd89/Qtu4Obgo2b47NnX/JtRP0tHRhF3tvt
         pclG6MHhzsZflmTf4LFGDb7w2d5cgfFh+BVvwg6C7HRNN3mvMGFbZCmkSHUWhVt9lQ21
         aVdCCE91Ik6F6QQZIYHPaOSmIkG+JphpVbg01KMlisr5c3VUtfOOJfOvqph/9mKW4DGN
         TSLyMRamWpvVzXFGtl1Zmi3igSEZRFAW0RHdIApEA/SV1nFdtzSJFo8i17MmVOrNfCoY
         zJbC8bf917UkZeINlB7ypT9tPSslzB2tQ57TyvS43AFTYeQuGXrfXsEDCCyqWI7+l5ZX
         KZ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770028813; x=1770633613;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2eKwi0gX9NY3lt9IpkM1Ek8vFQh6Pze36H48CYSXvew=;
        b=tZTPcwShlsS92rl/jb5Cx4NJmgr5fen1xWzs7aiXEs5ygT8ke1xC10oXLElG+3YcOd
         f4Z341rgLBpH4AVa2gEw4ekYR9csmpg6z6nO1O7Q1ZCbdl4GZt6Yd+/CP4WBI27jz3d9
         SgHzpgC4mUkSGbb7cfhgZymlgaH3/zAYdEJsrRFmSh5+eQBcn3uLjwy24ayyMCYu2kNm
         feIDOKtvocvwceYc47sC7F47lwHkDnv+93FB2AZQ4x74pwFh2CD7g5sPRcuVBXi1TInS
         iojcRJOUYRDpunECH3guhEY63Lli58MaABIpbVMtVZIVYVpSayDRcYytAJA+sOArF2uB
         kkww==
X-Forwarded-Encrypted: i=1; AJvYcCVYSOreDTm27JIqjBI2yaSCBBH80EuXI2w2L1zzgu1opgBnNcJNJZ/7iZUD4rYq/BKtAkzp/4hxqSuJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3VpKcjC+u+FAR2tEDJbr0hMUWCJu8S1zXsoouQMRxko5YdYKo
	j3zR6J+ReYerRp0DWPxaoHfxvRH3ytwtExuU2fqXi0zcPdIowNssSF99GGxyEqidMQULbugtPHp
	ZaGYHdWRpcRlxUs3uOhHOirr8ke0zXkcERJTSeXFXht5Q+UeeFtn+9M3QcZulk3lR
X-Gm-Gg: AZuq6aL0PMpFH19bIOtt4Scmk0qrgSTiPO6XYnVyXEAQWVBxlaKMeLq66E45m3ts5xt
	AalN5bHPCcf6KZELfTEeRhaFSJmLh3CQG7AsrgaYz1MKJA73dqIgE/Rqs/vuFLmAJXhbTUh3TYJ
	tG5kVzUtX39XVxA7bSIqHETFBT51kxWF/CoyyqM16t58EGugr35dejV3HfjVpGyr1tfmLnnVpGt
	y2De0Hr2P2FTE41LW3CZgiMGmFHOmksal3/eMmLFo8Dv6sneG0+uUvApJSrZahBDsVuyy5oKko0
	5q+i1S39DAS2YkZqeIfIC4fXNB0nlmzB3ZjsvGYmbd7JTJ33kBogUpVGz6YwM1D6ctQqPvpgyQG
	3nxCFERiu58f41um1Ae4egHxjNCBozLP6I2l6cCnhAg==
X-Received: by 2002:a17:902:e888:b0:2a7:d42f:7065 with SMTP id d9443c01a7336-2a8d96cc4e7mr118124925ad.27.1770028813101;
        Mon, 02 Feb 2026 02:40:13 -0800 (PST)
X-Received: by 2002:a17:902:e888:b0:2a7:d42f:7065 with SMTP id d9443c01a7336-2a8d96cc4e7mr118124595ad.27.1770028812611;
        Mon, 02 Feb 2026 02:40:12 -0800 (PST)
Received: from [10.204.100.98] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a8dc225534sm86203905ad.68.2026.02.02.02.40.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 02:40:11 -0800 (PST)
Message-ID: <4dddeac0-cfb0-4ecc-bee2-0b968da6e7c2@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 16:10:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] media: qcom: flip the switch between Venus and
 Iris drivers
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260131-venus-iris-flip-switch-v4-0-e10b886771e1@oss.qualcomm.com>
 <f8179247-80ed-4bf0-85d8-53441f0d9311@oss.qualcomm.com>
 <249f2097-8676-4fcb-8570-1ec8c0e946fa@oss.qualcomm.com>
 <pd4slkxwj7q4jrxaxd4xhbzoygxvlnjxjeylqi36pzwy57lion@la65rc7u2fyf>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <pd4slkxwj7q4jrxaxd4xhbzoygxvlnjxjeylqi36pzwy57lion@la65rc7u2fyf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: DzPApOnn0ijdE-oV7ubDK6J9uEBEHLXg
X-Authority-Analysis: v=2.4 cv=TtfrRTXh c=1 sm=1 tr=0 ts=69807f0d cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=4G6ViigsJfsZwVOxGF8A:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: DzPApOnn0ijdE-oV7ubDK6J9uEBEHLXg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NyBTYWx0ZWRfX7A48WppiCM0C
 AOtJm+0zr4cyeDkwv1ghn6K3iMGfJjioNnnqnnnuJMoC8csaYcq6HluFrevn9+fFIFLf6nOkpgf
 23xo9qlWnLKsoBSpXo6Pbd0Uqq256IbZkhgWEMtXtP5bBNBLMUnSx+f4G0+1dOXSX4xno/XJPUP
 QVyykXkOw4ddwbWQuSyRNnVqvATnqFX1qFVO0pGBkOKjgH34Nn0gNLecfJpluRjrkmxO/0ciP3t
 13NYhVuASahG2ZzGGZpgDbffWrLPTSaQRM3sH9xxa0BWt9WoGH17XMVZb4IjS4ph1xFj2ajjUd8
 9AtmxB2/5BgAjOMDmysk+tWwNXQsugVeSAPIpjGG01pH5uDP9OZgKoQyGWdbOpLrFcoA3PRO3DI
 jw6gTFl2tNpQst15nhzjggPpyyRwRwt1G7zOfrB7C8xWcViMJt27FvFsfed78nPiX5dBILGLhLA
 vwcRRUBs8xEhYJ3MgLQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261744-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 92CA1CB1E0
X-Rspamd-Action: no action


On 2/2/2026 2:54 PM, Dmitry Baryshkov wrote:
> On Mon, Feb 02, 2026 at 12:12:01PM +0530, Vikash Garodia wrote:
>>
>> On 2/2/2026 12:00 PM, Vikash Garodia wrote:
>>>
>>> On 1/31/2026 7:28 PM, Dmitry Baryshkov wrote:
>>>> As the Venus and Iris drivers are close to the "feature parity" for the
>>>> common platforms (SC7280, SM8250), in order to get more attention to
>>>> squashing bugs from the Iris driver, flip the switch and default to the
>>>> Iris driver if both are enabled. The Iris driver has several
>>>> regressions, but hopefully they can be fixed through the development
>>>> cycle by the respective team. Also it is better to fail the test than
>>>> crash the device (which Venus driver does a lot).
>>>>
>>>> Note: then intention is to land this in 6.21, which might let us to
>>>> drop those platforms from the Venus driver in 6.22+.
>>>>
>>>> Testing methodology: fluster test-suite, single-threaded mode, SM8250
>>>> device (RB5).
>>>
>>> Fluster results for SC7280 is regressing, which we were discussing in
>>> earlier version of this series, need to be fixed. All tests were failing
>>> but one for h265 decode.
>>
>> I see the patch (#4/5) to increase the size, please add the fluster report
>> on sc7280.
> 
>  From the cover letter:
> 
>     For SC7280, the results match the SM8250 ones.
> 
> Anyway, the relevant part:
> 
> |Test|GStreamer-H.265-V4L2-Gst1.0|
> |TOTAL|133/147|
> |TOTAL TIME|82.276s|
> 
> |-|-|
> |Profile|GStreamer-H.265-V4L2-Gst1.0|
> |MAIN|132/135|
> |MAIN_10|0/11|
> |MAIN_STILL_PICTURE|1/1|
> 
> 
> # GLOBAL SUMMARY
> |TOTALS|GStreamer-H.265-V4L2-Gst1.0|
> |-|-|
> |TOTAL|133/147|
> |TOTAL TIME|82.276s|
> |-|-|
> |Profile|GStreamer-H.265-V4L2-Gst1.0|
> |MAIN|132/135|
> |MAIN_10|0/11|
> |MAIN_STILL_PICTURE|1/1|
> |-|-|
> 

Thank you, good to see this.

> 
>>
>>>
>>> Regards,
>>> Vikash
>>>
>>
> 


