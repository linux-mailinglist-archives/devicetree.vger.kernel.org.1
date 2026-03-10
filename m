Return-Path: <devicetree+bounces-273449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJUjODv0r2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:36:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F47C24975F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:36:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DEF3C30351E6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BD6372691;
	Tue, 10 Mar 2026 10:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fYHXCAYQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U0Dp+68x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9CB371040
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773138994; cv=none; b=iukiDTo/E5K9PflXu48EJoOw+iWWHFudl1DD0MzJoO+bJ1MDwmTZQNSP7Ev5NGusA2rStRUSr9XBm9Q/pwCn7k/Uq9wN09xwnXH4PTGtWNSa7Bb0PetCOLgmEbhmgz+E7zlc2Od+uWmlf12idTiQkMTLODhoLj0u1A36wEFoqJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773138994; c=relaxed/simple;
	bh=5gPUc+ReZ6qTYu7jb5bZeSyiHhNiGzrTTNowU76wE+Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O+l5VDL3/Lr027IlwTGTGQs0Zn6Y9rdqEx5M1wFHK25z/T6gGl63pWRIJWyYxhx1J/FQWl5qVT2j063tpYnCvGXQwxGqw2tkqNbofhaLlt/9Yj0nSOB27GJL2989k7Xyk1VD3F0vhO3ww1ZyK8okC0o0p43xmEDOQ4L+7b8suVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fYHXCAYQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U0Dp+68x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8h4Pb2754089
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:36:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ec6eXrocN5r99z8UdbN39kTGog2RVtn0dkLGm0Fq7qs=; b=fYHXCAYQv0nvDvat
	jDswVYS3SfN8BravcOcX7YrZxwxjNYz2V2rA17//1eCgMDzv/VrNTzAQmpa7yLbb
	xix3zrgKB5V/hXyHdHbmonCLT5UmfqfzZf4lveb73zljVfUuxsWiclMrziZTD2oI
	S1/9m/RwtastuXLqc4VxJ8PfU0E9om2GKTbalgXIFglBF4BmDqfJd375YYBplXvl
	dbznzj/E1fX0ZZMj2UjNvsCjpugOK/rOZll9IjXO86IEh5liszvijq2twwBUFNFA
	rjNjKty9ivp0rwC1/gZxP3rusemYlgwTeKPDtc2QT7TluWoy3U4UDVMD8SY1joB2
	MYlc/A==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctg1mrdtm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:36:31 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5ff04e26bd9so162145137.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773138991; x=1773743791; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ec6eXrocN5r99z8UdbN39kTGog2RVtn0dkLGm0Fq7qs=;
        b=U0Dp+68x7Dbyp5GqX9o198opfFmasiTC/ss9gJt3etyqamE63FffI4FJgSsrtHnHKd
         0IjAiLLeXGObujFZHaM2j5VFpYEkksFMJBXUKF+ti96jPm0EZODuwYOSn6ytutj/UOa6
         E3zgc8LIutZv+k3vPxQiH35jliwLgfIsDpz35EkI3T3Ss1nfWVQOjpeKOjgpiGdIr2g/
         waP30kibs8AtGB2U7mkQDPfvdhLUwK3k/cxnkFmPnK3j1BYhGpvSPxNeYacuiinsgebf
         k+SnCiJJwKGFFXTExkoo+puhGT2Oyf8/HqxD2j00B89kJoi6b9/3u4lb36C/DJAm2Utt
         JKVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773138991; x=1773743791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ec6eXrocN5r99z8UdbN39kTGog2RVtn0dkLGm0Fq7qs=;
        b=pZPguBUaIr6NxVrEmw9oprV7aed24yemxoQDLOFpLJNLQsYifXM59VfvUKBn13jJw1
         ZgUOK9Xf0M0ueVJ7Kn0xCgzVM2ko5vJPJ8xKiZEnlJQwE9X3kfSQKwyHnMFTWkt0WM2c
         qWKPWAMhy+RALOQMHMNPeRE7kLGoGABc7DTyg1CqFuJPQHROE8+/gfCNmJoQWUKqskQt
         1TiPYBXt2i1K4gW5l1kvy80VlzLn0rjsxUYApa0JG6PKkveU8wMT5vMxWFtEAHBfs2Ld
         +N6hZUVihLK2ml1OsUYjwHdj7sc98VE2ULxJuqODTWZX9SSBFAmzcqVL2CsWcLbxhd9z
         Grrw==
X-Forwarded-Encrypted: i=1; AJvYcCUG7KMADBPktrDgIuZJHnCRYpXGtGoyLgjpSFWpoqTY1X1sM6PgIGURoV1Aytkac/Vcd/QYm5XuDo/c@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb+ox1Ad4u53jd5BH15yfXSZEHSSUyXasZ+75ROCiYQMh34f4L
	NqjTjAcpN6CaddnzXFSLBeQCABcK1LrLmbUxy29f9ZvuF2FLCLa4siwLF0L8BbkqA3fq+Rh2o7y
	rkoHy7Tg1CHuDhciYAx8Khyh3fI5YBC178V1eDVCK4ojV0DnbyFYMdWHA5g3hNRvz
X-Gm-Gg: ATEYQzx/S78wkLXWHxAxC+/64phAMDcJ2Bx9iNcv+11nlmbqpFk8uP5bBzLsnHF6DNq
	fhuW4/vDdcPCNppVYeuixcBdxe3LpHqOisBU1XE0k/fVTKLQ5MD80kWrkCE3ulErdmPTDAsumXa
	3diDf92QXyqy6lq78Ox0TA3AqivLMy7xEAeJvw4CXRBobbyThS9Kt/CHc2GsphdAm5RB0GAW0UP
	2JVE0kwk8kZn1PqgDtLFHuZZdva/h48WpJKnzxztxwdvptuPQada8xlBfpCn5jqEWSoBgQf7ICI
	c245CrZC2TZF/xGowhB7i/uF0bw9Zwv4BOF6WeetD0J3zJTYbbgNybUn12Nshwa33hGv1TWLo1k
	C9VrCd/Vi+ei0pve3iVVaxbbZtbVO4Qw9hFEYZ0GWKlV6/wRy3/hgMNCFuGRjoWfIkQO/tKYESO
	76nEE=
X-Received: by 2002:a05:6122:1d48:b0:567:4293:8d38 with SMTP id 71dfb90a1353d-56b07aafd0bmr2563874e0c.0.1773138990893;
        Tue, 10 Mar 2026 03:36:30 -0700 (PDT)
X-Received: by 2002:a05:6122:1d48:b0:567:4293:8d38 with SMTP id 71dfb90a1353d-56b07aafd0bmr2563853e0c.0.1773138990369;
        Tue, 10 Mar 2026 03:36:30 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a5d0726fbsm4218881fa.41.2026.03.10.03.36.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 03:36:29 -0700 (PDT)
Message-ID: <2f4e4cc7-2600-482e-88d9-d4b20d328a72@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 11:36:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Fix OPP tables for all
 DisplayPort controllers
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260309-hamoa-fix-dp3-opp-table-v1-1-1a8141d71f9f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260309-hamoa-fix-dp3-opp-table-v1-1-1a8141d71f9f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YOeSCBGx c=1 sm=1 tr=0 ts=69aff42f cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=eVDm5Lje-WuPLjdxqx0A:9 a=QEXdDO2ut3YA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-ORIG-GUID: dxB5SP68XA5bzn1Mp0MzHBg2LPoE-nGX
X-Proofpoint-GUID: dxB5SP68XA5bzn1Mp0MzHBg2LPoE-nGX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5MCBTYWx0ZWRfX5kz56zPKwj0N
 gpDpE0IVG1SgL1VeQUCgVYaybk/8bU1MnD8TD/mI05LkWxPNnSsFCFT3ra/MO+dd7hzyXCU9uZ5
 3+pc2XdcGVqfo+cLnpgQH9xtvjfH0pOqAjiaKlEpoFlK86NKFn8IY+WmvCrYmlXDEpGDzecd4Or
 gE3KRhUMpFSW671mw+X5IQSbgUZzAmB1WHFc+HrKhA5FIT9HnWfAs84zaqf6NuUxerJMhwqmqOU
 m4M5lwKK4NuUeek4X3+l8CEcOyB3iiLq5SHX+ZY8F0ENlxNuSTDu2uZ1NuLqzpww1h68JIiVMq7
 hmq6z7gtAbrCD27rwNDkke0dX8xhj7pYESAZPt+mAKqedSNkpS5zHPnzul1yOBOLSQi/sC9lYFa
 cBYS0+HrdlCo5xWvPBfj8xM/1rV8MZumX75CDK+ozc4BzUa+/O+cZ2nEkJUJImc9dw8TeSN7O7n
 7IqJU0UpkMSdBwkkzmQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603100090
X-Rspamd-Queue-Id: 9F47C24975F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-273449-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 3:44 PM, Abel Vesa wrote:
> According to internal documentation, the corners specific for each rate
> from the DP link clock are:
>  - LOWSVS_D1 -> 19.2 MHz
>  - LOWSVS    -> 270 MHz
>  - SVS       -> 540 MHz (594 MHz in case of DP3)

This discrepancy sounds a little odd.. can we get some confirmation
that it's intended and not an internal copypasta? (+Jagadeesh, Taniya)
FWIW DP3 is not USB4- or MST-capable so it may as well be

>  - SVS_L1    -> 594 MHz
>  - NOM       -> 810 MHz
>  - NOM_L1    -> 810 MHz
>  - TURBO     -> 810 MHz
> 
> So fix all tables for each of the four controllers according to the
> documentation.

It sounds like a good move to instead keep only a single table for
DP012 and a separate one for DP3 if it's really different

> The 19.2 @ LOWSVS_D1 isn't needed as the controller will select 162 MHz
> for RBR, which falls under the 270 MHz and it will vote for that LOWSVS
> in that case.

Even though the Linux OPP framework agrees with that sentiment today (it
will set the correct rate via clk APIs and the correct rpmh vote for a rate
that's >= 162), I have mixed feelings about relying on that

Konrad

