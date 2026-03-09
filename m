Return-Path: <devicetree+bounces-272848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iN6dN9OprmntHQIAu9opvQ
	(envelope-from <devicetree+bounces-272848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:06:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 631D72378EE
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:06:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AEA930743FF
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0CC2364056;
	Mon,  9 Mar 2026 11:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GK6T7XYI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KhhuS0S4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2F4359A6E
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773054188; cv=none; b=fKokeWD4UaMJhomFdX+AIBAf0iPLeE/8m4QhUI22GZaiQIhezIKU66M7HNTsd3VP9hlgQ7kzK9zxFRStsrTKxsOlmr4TqsFBqc1QDUS65YGHoUJOBSEj4tR1QT3LEbWTK/Rg5Oiz0nk+H4cpiooJkaPkbWy+0sSRYw92m9nlin4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773054188; c=relaxed/simple;
	bh=mb/zBFsIrlXFYegKo2ygdbp5CBavB9XMxOV+i8dnp2o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b+XL2ptEe+WW+FfzpzjhtrxTgom+RUet7Ts4W2ITEOAHuYm6QncfxzvyUYCVYyq2XoReXr0XPm9mta6IZChgu+pViBvXG2FxXGa1Qyw59g7wvQZZi/hVIZLDQ8o1PFmeFUhmmOJ5uYuLqF10EjVu1uMuxOnXtcgOqAZWhRtZpQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GK6T7XYI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KhhuS0S4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62983rwQ198538
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 11:03:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5EVBoumJUppGx5vMg2yuNSvMIcmavTeZvYKHTu3kpRI=; b=GK6T7XYIWcz6Kb1g
	iUC8E9jvysZvMuM8BX/av3PM7BV8GyTLCdULUq9DFl8gdjSH5NJbZOgeZ8A1r4tY
	0/SD/tqVh7IM7HqbSQn8kqfwiswAU9c/oQZchJ0BIcTftzWEXevQTAC702rNB27L
	mCHjXz8KxMvn6bJdxwnuflHe9F3Zwamgm0NTbd3USSFqEiNuMSKkZ7m1nSJh/DfU
	y5AeiXuCCQQ9gyhQKvk8rMzhXIrQRn7obdUBOZIxEZcunW/18mXSwOMlUA1VxGIC
	DClPHlmT1mufcpza6kgtfIaujZRVfo17l10CobopQh+51JjQapIeYB81MENdl0Xl
	Gf7JaA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crc3vd3ea-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:03:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cbdd1bf8b0so463438085a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773054186; x=1773658986; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5EVBoumJUppGx5vMg2yuNSvMIcmavTeZvYKHTu3kpRI=;
        b=KhhuS0S4Bsetuff6TVGmikIZbhpEdc+qWBvX6pNydOVY2YXvuSbLFRjL7TrAFCLVmu
         C/m993txyTTSaJCQ33iJRTTUl6qiZbnKBSq+mZh07FIp7PM0BRWpr8ogxZjgx5YKnio+
         Wd2rLnKbK0GAk27mLQjVm6IFDrtO8jfEimwZHZ4Pa3DVd+AOmsNxmYNkc63mPzmPIU+s
         F85LYT2KZqiAgl3fngWivaPin4ZLEL/faqNPdffv9r8VIbSD1BSuzkfDF5hJnw63lvtX
         AEjrMldZe8kfEbpFa/vCBVd7r3Jv00456hza7KsDHqzhqGskU2vKMR126Gz7hiBYttC/
         G4HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773054186; x=1773658986;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5EVBoumJUppGx5vMg2yuNSvMIcmavTeZvYKHTu3kpRI=;
        b=XEeUUfd+Y6JSQ2Daxw/qD30DwKeZljhenhe1VWizfPiJqIQzJcE075LUnbyvsUqtS2
         80wPhPVNC8Sllwo2jlRvpcGmBw0mxIoxsQWm4konLAije9A28bhOymdSF3Xc3DxH8IKQ
         11fmdBri4m+a18NE3eb5dArzkyqJuVwJ1qVQ+ikNpQSh0YnBrs0CIuE5NjdMq0X+neXh
         +RSoeZwzxcEDm4wFTg3WIu1mj/Je3Lxyi4J/6H7Br1QtNY/XayHXaNtnxIwtoDMhLm5q
         oRx7CE2OgW38T9cvrfr5e3D79rJydhqrJ4HLTubMR8RCKY43YHm4YFdn1oQir7pN9Des
         fSUw==
X-Forwarded-Encrypted: i=1; AJvYcCUGaEbhw7hgNNGlorBEK9aar6WMq0cDoSjXEw8bVfCHcMGD6mgwLnnBFXwhN+AF4HSYxs/WK9FoVui3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9DRahj4u+ynp7Odm35RvHmsAwhtknmHmnfmZuyuqRgRSo+S6a
	Buuj0+uN+9Q51/wtWVqoEwdbhxQttbqj2ntmFxldsvPPZCWu3riseaKnJOSg8Y0AXsvJCS3PWew
	vJmhLi+4tEimKahc64Fukix8vxxnJRedFcJBob+69P64n/TUpS8/T+dviLNqpfmWE
X-Gm-Gg: ATEYQzyUnOvJcPBdx5s7cBrWGKX+d0beTlOuKzeh5uwb8oofimINdGCMPP6S2xh7867
	tuKsJtfBjlNixBcHG6USYiWz434fQJoGP/3pm2rAX+l2CKxQGy4UzEhyi49iuVUXtDlGVKwtyeY
	577vWjuGm3WTgWNM62+Rs/ScOALiwadY5aHkrG5QvNkQQEMRYMhxfrD6SaD/xj7wCYD8OiN7fPr
	knvOHD0mLMIpRL+FGuPXNERZf78S1J39zS7qGzS2hsxoDnrn8WriTqUCfyV81+8vDpT3vgZv63K
	iEywORe+X6JseMCbcPIzktNQmPl+1ibhbJpPQvUT+TS8Cc6mYrMvgz3W8AuHNVim+0gsa94oHlB
	p7Tx2vvAYhzb0qEcKUuJugSIPo/b8mnuhvFjkuPusOYOHMM5UUex45ZZm+OahfrACUuEjbn2wFg
	nRG50=
X-Received: by 2002:a05:620a:468c:b0:8ca:4545:aee4 with SMTP id af79cd13be357-8cd6d3359b7mr1066995185a.1.1773054185672;
        Mon, 09 Mar 2026 04:03:05 -0700 (PDT)
X-Received: by 2002:a05:620a:468c:b0:8ca:4545:aee4 with SMTP id af79cd13be357-8cd6d3359b7mr1066990685a.1.1773054185139;
        Mon, 09 Mar 2026 04:03:05 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a55a200asm3014657a12.31.2026.03.09.04.03.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 04:03:03 -0700 (PDT)
Message-ID: <55250bff-c46c-4bf7-9a94-27db4f86b037@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 12:03:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8250: Add missing CPU7 3.09GHz OPP
To: Alexander Koskovich <AKoskovich@pm.me>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Thara Gopinath <thara.gopinath@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260307-sm8250-cpu7-opp-v1-1-435f5f6628a1@pm.me>
 <cf549a55-0818-4be6-b28f-c90a2dc09a5b@kernel.org>
 <N51k53pJOUTOpQrfJsuk9rZdo_VxhPtCdG1Aj-8uqmoS1Bl7q7FUarMhq5b5sZwAzJrH6SvH5n1KeK7T2mSn3ssMThLiEdmKNfccXata1-U=@pm.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <N51k53pJOUTOpQrfJsuk9rZdo_VxhPtCdG1Aj-8uqmoS1Bl7q7FUarMhq5b5sZwAzJrH6SvH5n1KeK7T2mSn3ssMThLiEdmKNfccXata1-U=@pm.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: mQYNaEVoz-z5jlr8vsHPuwrmGvobvVwt
X-Proofpoint-GUID: mQYNaEVoz-z5jlr8vsHPuwrmGvobvVwt
X-Authority-Analysis: v=2.4 cv=OOQqHCaB c=1 sm=1 tr=0 ts=69aea8ea cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=iKFnSQUn94kHmAxMAisA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEwMiBTYWx0ZWRfX2c5S4P/gntr5
 WnmXvROaT78vBmBMZW9lqTyQQUXVxx4e8w018L63nw77woz2SITyZ9sygRF8GBx4ckr2CKKUcqx
 Ry9P3zN4vsGHWchzK8HRPfXxttqOCxXMP+survsWCT+K1WxhpbIKSUIV+Cw9W1MJ2QjCNjKDDz4
 VLBUyD6DQXnEwEneMNXNpqPDIqorjzXH+JDRtucfKQB0WTz/eZrD3RBOFiV+eaSdX5s2ETEiksq
 EqqYUvvDJqLwh8GtcZOpKXvfyXhlB7qgqfoFmS30fzrJXuZNOyBLADHBKUceSrf/7aV2Vq8TeYQ
 vSz/2tZnhJKrHTAPvb2AkkFRGGcWSC5t7m0f44QpqgDILZnWaDLTQ+Cdka0X+ie7S0lCc4JamLu
 xdlcfXerLMfVvVzdOqf3sZcmTzvoVAAHKNX554Z4lI0I165fUONXqfyt3b9qYXHCg9sOYE/bER1
 qj5JtbTFid782fZ+QFA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090102
X-Rspamd-Queue-Id: 631D72378EE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272848-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.979];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/8/26 7:03 PM, Alexander Koskovich wrote:
> On Sunday, March 8th, 2026 at 4:48 AM, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> 
>> git grep "ASUS ROG Phone" gives me zero results so this is insufficient
>> argument considering you are changing multiple other devices which might
>> not support that.
> 
> Also I'm not 100% sure that this applies to all SM8250 devices, should I just fold this into the ROG 3 DTS submission later and put it in the board specific DTS? As I can't validate it on any other SM8250.

The qcom-cpufreq-hw driver reads out the LUT that has been programmed
into the device and only considers OPPs that match those entries, so no
worries here.

This is the case for all Qualcomm SoCs starting with SDM845.

For reference, SDM630/MSM8998 use the same hardware, but need
programming from the HLOS which is notoriously long and annoying, there
you can actually make mistakes that result in instability.

Konrad

