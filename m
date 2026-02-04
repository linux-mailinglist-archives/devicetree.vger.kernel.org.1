Return-Path: <devicetree+bounces-262622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPzDKTs6g2ngjwMAu9opvQ
	(envelope-from <devicetree+bounces-262622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:23:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B929E5BB9
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:23:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0846A3026A91
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 12:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E899339875;
	Wed,  4 Feb 2026 12:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oz9D6TfU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NfoURKGQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F610326941
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 12:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770207648; cv=none; b=QB+ycKwlxnkmh8iyMzlRl6BBd5qntxBg7ZlybtBwPiJlU3riGj5VAGsUKoB5w0ZYoDupBZ9+ALcxxBl5GXRjn25mRsYLfttqcjpsnMw5JbjKWSbmsvWK9+j2X4/6xNQ/ZeEqduJkAYcNwIdPk0sYh4mSiHVw/NEu8Fw+l4chJDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770207648; c=relaxed/simple;
	bh=gn15N+sfdIGwYValid+GmhOXor/mYmu9IDiM9sjdVK0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Uud2+SLaJgdXqdOJjoKuOysVWQ31WUa/z4/RIikm8e4qmpRVlu07XwdnjKU8QFGwXeNr1PqCp9V3StuVFGfHNWkThfLNXFiFlPGB2xYFnI5e3yHzfQl7+Fd0dm9DhNcbIle2iWVy4RFRAstWIeLFuGDtYhiZyRHKyjqMQsQHVUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oz9D6TfU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NfoURKGQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIS391032453
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 12:20:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I3cajZE1FasL5GqCZigdP88EELfSKa8W4d3UEAbqzvQ=; b=oz9D6TfUWd+b9u13
	yc0jA4Uug74pZdUKulKCnYder8O3bLexVuMoueInWboFYt5ukjzpo7eikep5aWxE
	MT1cs/5NxVnDc/3D+8W3HWp+pqdz4VkGud/MajrXAjS/0Fxygt5sPZjv1mdznA2z
	36chcy3er6iJiIq/z8BU58loGnMMU/a9p8l/3RV8xJVlrXD9OhKwK9Ekb4rJwGqr
	Dycb9L3BPU0JMbn6DbE4cHlIJfRD5f5Nn/KovNK0KdHWLh7Zu+Rst4i49yjiauxV
	wzS0jNAXi/CbmB2gSC78Gp82NOyBrRd/QIM8JsX6nqtwOoIiiKn7X/KoQ+TWG6aq
	ZL0wKQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3ne7u84d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 12:20:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c53892a195so118043985a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 04:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770207646; x=1770812446; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I3cajZE1FasL5GqCZigdP88EELfSKa8W4d3UEAbqzvQ=;
        b=NfoURKGQZfO+abM2oLJzPY00+QEuuSonVgR8OkdTNkLk7HGQVdRfysoq7AXvwiWwcB
         tltZ8EZzgJ3BRqLSLaGZQrdWIm0WBKiR1wo4pe1Fa3AVk3XV0vL5jwVFnmpcP0lN0aT8
         QhKeEVQMbOMKM9ylgZD57qKyHaRUi4jyk1DpoV0680ZFQjNNHxOsYpWkPzYRTOwUtGEN
         d6NbKXM2xPOQCJRjA7mZDZ92iY738DzQDv7pWu0IQjpcVhpG5ex5meVyW4mA1JvbN6LK
         lJtRQ8kVYqd+p7/xkAFIU/uHb1AD4/a3PRjmcLGOVxwz7dD+Weesx3ubmfilTafHylkb
         9QaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770207646; x=1770812446;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I3cajZE1FasL5GqCZigdP88EELfSKa8W4d3UEAbqzvQ=;
        b=XSlZwk+25D3YQWPj5wfNyI3T5AR+8shHXb+wkaJRGaaMBjCkKySw3WR49P7bnke/Df
         RGBfq7FbV6c2NHqAnkVkZGx9igB6YSh3tV32WWu+fuR41Z+KqGbBFEuoSQ9qjbBGZMsq
         akHn0uwAMgtrWeRl/diI8rhGC/+ufYe4Y8QMyD9onwbbxFVvjL7crvDgewy8P56l3wOb
         koH3s6PQAXrnsIgqRTrIEjseRM+4HfO4G3+k+bLxJH5kGg0eeSwrRj9zQjzPtpPVgAdP
         QGYwtH03RWLOFEW9wZ8LvLOTjQ7tJJH9uhHW9OHOPMEZuJmb2NWbc4P2+OiHmr61GgMm
         nJGg==
X-Forwarded-Encrypted: i=1; AJvYcCXvlkGQIc99PA2n1gcFbbk5yRH/vSflwFhtjSK5RzpO2F/hDpj/5vFY3Fi5pjzsnLHB/h0Ub3VZxgmZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwsRHcHrS0kylCN3DMpGOzNE0zAPmc2gNCJHb9aXTsYnoi9AtVP
	Mg83Lh8maxMZWzuuJ5KmmYjnabY2hKD/sErA2r5gt+aPprqLlmw8OXGOnS1/m8a7ogWrXGZ3tr6
	RbK8WyUXhEXlfitTBNRVL0hkI1P2SgtEyOQubaUzv5hpmvRWlB9qAjw9lnl9KuVQu
X-Gm-Gg: AZuq6aKiCvVu66WZK+NVYIBlpFhm/ANSkRiy2qf+LVs5TyxvkXO9k+GB9OBB/TmRHxW
	UEIZpAK6Vkbl9VQ3WDPRi3sxcbGlF74/tp2I//ibwSDz1IyyNyThT/Wvusie4y2ys38iY8YcetO
	2WqNoZ5i4yXJe/0bYdXn5IlzpluNVI1aHqRm0f8EDqwjHx3QNW7HxDJaVSjYBmLJRzOqUr6Kd2n
	JHKom1v1qS/jow9y7xtsiV/Y5gSOYTaUtwiBkOvo+UiBvmEbDKgDdQOQkc+kfAjUKhA7cc6s+U6
	46BxxyyJiMyMBKL1KGnq2hASvEoGDfJIkECf0PzRCD/23feqcn8Tmiuoxd7VJfGews9uAIOfKE5
	7YJ8LyrdXTQZJA2vjChrNKWtFFZ6ZFczbBh8OgNUwA+KOViyNaLhE05EzWEztmk1t2Hg=
X-Received: by 2002:a05:620a:172b:b0:8c5:305e:ea16 with SMTP id af79cd13be357-8ca33156b6emr167462585a.8.1770207646347;
        Wed, 04 Feb 2026 04:20:46 -0800 (PST)
X-Received: by 2002:a05:620a:172b:b0:8c5:305e:ea16 with SMTP id af79cd13be357-8ca33156b6emr167459785a.8.1770207645834;
        Wed, 04 Feb 2026 04:20:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38691f6e30asm4345941fa.10.2026.02.04.04.20.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 04:20:45 -0800 (PST)
Message-ID: <125b00d1-d2d5-4490-b712-acc213a58d3c@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 13:20:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao) DTS
To: Stanislav Zaikin <zstaseg@gmail.com>, devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260204115645.1343750-1-zstaseg@gmail.com>
 <20260204115645.1343750-3-zstaseg@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260204115645.1343750-3-zstaseg@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0RRQJzU1wwNkUUpXSB6_2PvW7y3KsB5Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDA5MyBTYWx0ZWRfXwHw/uwWmR43G
 acRURAkwo4j2shrVD/TP1pMMSph7+XMV4mI2ZQTNr1I6knSk7+V30AWgeIH/5qtYKECeu6eOOaj
 dlxn58AXLIzrp19VT1Zscf8rUpZvE/4D4ptc5zCnsYG2DbvqG+xFNVEj1nyMuDGhpP1dkCZoiPG
 P7GV+tNDdRobCyKaQidaKNzIkBC0JYm51WdhVRPWADu/zwCfSr3zkDeFRYP9ylAnfqEwCQdpA8d
 JAKm+rDt426q+N4w+LJe7er5ff8AuNwxZik7DBo5VxI8wzJEkfDt/Ng9cp9MzOw9c8En2q9iKj6
 7Omyk/LWTNAPH4yzIWaCwLbB/HreU2Ik3DdzU+j/ATIPntdMwHTbFm9RdO+hZhNdoOXbLGPOAwb
 Tbmnm0Ittu32N4Emew/s6wBu88/J3HgvHzx5OEvFrw/B+afuSJ2C3aN4PUcTbbX0rtAYMbL5OJz
 DJgzt/D5vYwp4WjOP+A==
X-Authority-Analysis: v=2.4 cv=TZmbdBQh c=1 sm=1 tr=0 ts=6983399f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=n7UKcF_LFDN_CY_19WMA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 0RRQJzU1wwNkUUpXSB6_2PvW7y3KsB5Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_03,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-262622-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,9c700000:email,8b710000:email,a9000000:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0B929E5BB9
X-Rspamd-Action: no action

On 2/4/26 12:56 PM, Stanislav Zaikin wrote:
> Xiaomi 12 Lite 5G is a handset released in 2022
> 
> This commit has the following features working:
> - Display (with simple fb)
> - Touchscreen
> - UFS
> - Power and volume buttons
> - Pinctrl
> - RPM Regulators
> - Remoteprocs - wifi, bluetooth
> - USB (Device Mode)
> 
> Signed-off-by: Stanislav Zaikin <zstaseg@gmail.com>
> ---

Hello, this looks good, couple nits

[...]

> +	// S2B is really ebi.lvl but it's there for supply map completeness sake.

/* C-style comments */ are preferred

[...]

> +		/* Mainline video_mem is downstream cvp_mem */

What does that mean? CVP is strongly connected with the video
hardware, but they're not quite the same

> +		real_video_mem: video@8ad00000 {
> +			reg = <0x0 0x8ad00000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		ipa_gsi_mem: ipa-gsi@8b710000 {
> +			reg = <0x0 0x8b710000 0x0 0xa000>;
> +			no-map;
> +		};
> +
> +		cdsp_mem: cdsp@9c700000 {
> +			reg = <0x0 0x9c700000 0x0 0x1e00000>;
> +			no-map;
> +		};
> +
> +		ramoops@a9000000 {
> +			compatible = "ramoops";
> +			reg = <0x0 0xa9000000 0x0 0x200000>;
> +			pmsg-size = <0x200000>;
> +			mem-type = <0x02>;

= <2> would be neater

If you have an easy way of modifying the (presumably) downstream-based
image which you use for ramoops, you may want to add ecc-size = <8>
too, so that it's more robust

[...]

> +&tlmm {
> +	gpio-reserved-ranges = <32 2>, <48 4>, <56 4>;

Any chance you know what they're used for? (you can often correlate them
with QUP pinctrl entries, as they're often fingerprint scanner/NFC eSE
connections)

If you do, please sprinkle in some comments, like in x1-crd.dtsi

[...]

> +&usb_1 {
> +	/* USB 2.0 only */
> +	qcom,select-utmi-as-pipe-clk;
> +
> +	dr_mode = "otg";
> +	usb-role-switch;
> +	maximum-speed = "high-speed";
> +	/* Remove USB3 phy */
> +	phys = <&usb_1_hsphy>;
> +	phy-names = "usb2-phy";

Did you check whether that's the case with a ""real"" USB3 Type-C
cable? Does a Type-C dongle with a HDMI/DP output work if you plug it
in when running downstream?

Konrad

