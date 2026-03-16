Return-Path: <devicetree+bounces-276075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJjvG5nVt2kwWAEAu9opvQ
	(envelope-from <devicetree+bounces-276075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:04:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB332979FC
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:04:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B6B01303B2E3
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC9838BF7E;
	Mon, 16 Mar 2026 09:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jX89veG9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JiLouKrp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB186386547
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773654958; cv=none; b=uhKLC6ICRqrGmD8cAM66cC2jfVELzy6GwnQCwTbtQJE+4hQwblC85c84tpGibavtiXfOaRQqxG/+gVkEfspmmqnblyLQxhZ9ktRAB4meCjRgnX/vpNdYoMmvw+njP0Go0nDX5Ge3OadeQmm7+T31rviAaTqW9HxKMES17KOonFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773654958; c=relaxed/simple;
	bh=Gf8cTz/JaSBae0mytl09kCX1yq9bDbUU0n66a8dk+MY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UaOpjrT6MOdU7hzIQQ4cUfzCLRUVbkQU/BcXcozP7yCvJpsXjWEOAk1NAQrQ2ie2e4FuNHO8jVr1djn0ZL0BgoZxuzqQc37D1Sy4cvLhvos0rBjREFmVVt3xVsS55nz2BDmgQusLGxMJ75F0bz6FzeJS1csah88PL5wbNmvDZBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jX89veG9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JiLouKrp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64htL1066909
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:55:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	55cg4HDCtSRLfOxRpTKvmxGEe7yis8rCbIe2Y5bMwZc=; b=jX89veG9z80FCiUC
	i4oy50jbhRe3HrLWzUAtcbjUw31oUPdD4IBQRtcDMKzGAVwiujVJ43lAcLm/D6Ur
	ZwjLivfMUcqFGaSY4eoXTUHnVVv1AU2ATDGGwrHvD7hdyGNOLioCFcDP+U3pRCa4
	9Yd/pOo+IXnC4oukOBr7Tnx0vpX1/JwXOcYiwCDMdgGga9QoxDUQFD52Ds64VoqA
	wfF3i68RaXhNp3ubyPAGhRMsZ1RMfavi88TjNcY3teL48d3AJMnQiDvQZVWqDx+l
	Kv38HKLQ9uzK/qJrc+WoTIFyeNI+JS52XIi1vT/GrfWqcj3E+Sl1dzHxntxAfMcO
	YESfmw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw027d5h9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:55:56 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd93c91075so295902985a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773654956; x=1774259756; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=55cg4HDCtSRLfOxRpTKvmxGEe7yis8rCbIe2Y5bMwZc=;
        b=JiLouKrpZ2FDh9ce/VTz/yuLW4qHc2oULekp07Ni7iKsmWZOPI+v+sxyQ+uYHLae1M
         3JXGp9X7do5Y9GBI88t00bOb84uq294c/BCtlJG/eXe/6rzakR7KO8IN4LwZlIufS89D
         4b5psKGNGd4o6zdStw89IrU140UmWzfQaXpl6cdHPaQdy09uXsxlGkeBt9KGlxTAsO3Z
         /04cqOHIWWZJhsQ3cWb7XU+GYe5qxTfr1LuH+IxYnNZ2Ao9tKxVXd3jAKo+dLm8jfEMA
         OryfhbvK2WRliK9n7dEHahprlHEDhlgXJdRyzDRcBEpyCiLKqhekw3xDNVaoXztIyX6r
         lu3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773654956; x=1774259756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=55cg4HDCtSRLfOxRpTKvmxGEe7yis8rCbIe2Y5bMwZc=;
        b=lo82He9o9XatyqpwVFr6pQkViIcYNqZabbzSddaqRF+K72sLH/wOrfswdol5NjVSsk
         t2Ou3u2kvjCDb3U/mmzEml9l5uK8/CAOfyLQan1yjsAmkVnzqS+DRuLgUHB3xmKIpH/z
         WHlccbPbtzhKd4omaYkxo6G33UYhlftVLXWbcFHQw1S73q9j2ioLYazaggZObeHjnbQ4
         POJsDONlonz7rHMSqv189z4zg7isp0zpbv7wQIz7bX/H49q5+M0SFpV/xocdeeaPH8XG
         wIWOgScaKfc+2Uu39Ave1RIg4Ym2fsJDO4f/fLMGZhYHvrxSx7/BB9W6N//IfZRjrCPy
         J3dg==
X-Forwarded-Encrypted: i=1; AJvYcCWzAWpxaebzCDMotlCgoUH9u1jDEhYpa/wgfOB201fkcAoe08zQPQYbXeAcGyC+PTVPhB8wOF5aUTJe@vger.kernel.org
X-Gm-Message-State: AOJu0YxEHQjqCapNiTM4xiJMnWuNZF6Gh3uyItLFBE3U8Kd0sWjHf422
	tEjKfc3geyKcISCfoYjLEgriqIqyUweppyK0mR0b1D+EQXBG3yVMOnI+u+F6EnpGJOwOoDB41Yz
	Z9LxS7vMSm5njB1biRqV6TPKZ+t2HOGihud5Q2Wyg5hpnWd3KHK/C+hLB2n0s34PL
X-Gm-Gg: ATEYQzzMMZ+/shf0tSqcMzA0eKpl+zcbMKgjNmd95KADosfEeYH8YZ2JgDvKioQwjpd
	vs0oKMaj7rqOFPGYNXNHVo1y0GI4XmllklxjecXk3I0293IdZvSthAkEUKD5zBeQG5ZOwVncvWW
	OF/SFxUCX3ZbWEQaEWgjmw7lPYmthFbvx8GWEBNrY9sTe71KY//sTSAdJqUPPCSca/T2wABqIXA
	y3n9IhRy9VK8VghROOCubddg7cH4Ny2cCeRIMPlROb/pHWJv1fYBqI4jN3X1zpMehReNPu29SqL
	ilTJ75uFcKB4yMiqrP4WOv4dR4MoZtbEiUrzDvuSRX5Xev+Ms4W7x20MuwFm8/mhZGjZ66+jBvc
	1rJCS7N2HWMeEbGMkJgRZHtlAHmFnplivx6nEyShsBMa3uxmuQxTJT3N/NE0DTMZY7ImE6jUR/k
	EZljo=
X-Received: by 2002:a05:620a:4625:b0:8cd:949e:5e3e with SMTP id af79cd13be357-8cdb5a55522mr1213082885a.1.1773654956122;
        Mon, 16 Mar 2026 02:55:56 -0700 (PDT)
X-Received: by 2002:a05:620a:4625:b0:8cd:949e:5e3e with SMTP id af79cd13be357-8cdb5a55522mr1213081185a.1.1773654955678;
        Mon, 16 Mar 2026 02:55:55 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-665180ddaeasm1706505a12.19.2026.03.16.02.55.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:55:54 -0700 (PDT)
Message-ID: <0fa30adf-c168-4444-8f74-681b46ef7229@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 10:55:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] arm64: dts: qcom: Add Redmi Go
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20260315-riva-common-v3-0-897f130786ed@mainlining.org>
 <20260315-riva-common-v3-6-897f130786ed@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260315-riva-common-v3-6-897f130786ed@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 7YcjZb9wRy81mvH-917aNNUcBrtG3Cj-
X-Proofpoint-ORIG-GUID: 7YcjZb9wRy81mvH-917aNNUcBrtG3Cj-
X-Authority-Analysis: v=2.4 cv=AqXjHe9P c=1 sm=1 tr=0 ts=69b7d3ac cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=HB7t7QzaEc8PXXkhbgAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=YF3nxe-81eYA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3NiBTYWx0ZWRfXzh5Q9aZMzTs4
 o2uXbiOLAv5peVzieXDloWP45tESyObS3Av0np0Rbv5m86n4ywEGtqycJvuPcB/H3S3q6NLyqlX
 Kf9+EGzGv+j0G2ouDznz24nE5mKFmFIFLwhxt1bjJFhn0PoxGu3MTMxFRKA8aW3W6mUg+2/g3m8
 QXVV4a0mo7ZaUJH3V/7VgaKkv3FxLiAtHQscRiK1e1bxxtxXTHXEIQFVgkd3ZjOJl81yq/ggMNC
 62wUQ3ayWYVMSSp5kq0fb3n9gaJXeWilZqhi2m7H+CR4kA2mcZVWieZ3xzgZ2DGef+HUn3gGJjR
 rWCV3yweMx458dHCKmrfsSvjwPrgslnwmZAJEVxz+x0W0xBS7wb+zDbgNGqXdG5h6SFa0uykB/l
 ZYFCmVRBDhFd6+mu/hvDNNKt4E08bNkfKK3z/+hWhYB19Dzd5XlK2jMy1SYaJiRy2SIgqvUjlTH
 FuY2kn6zyjSQxCAhiMw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160076
X-Spamd-Result: default: False [0.13 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.79)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mainlining.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276075-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EAB332979FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/15/26 5:26 PM, Barnabás Czémán wrote:
> Redmi Go (tiare) is like Redmi 5A with small differences like charging,
> fuel gauge and different speaker codec.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

