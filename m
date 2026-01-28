Return-Path: <devicetree+bounces-260289-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODtiOR7geWm50gEAu9opvQ
	(envelope-from <devicetree+bounces-260289-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:08:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBCF9F3FE
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:08:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9E2893006985
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57DC32D948D;
	Wed, 28 Jan 2026 10:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JhUwlHLJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SrohMtSP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0B51E3DCD
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769594906; cv=none; b=g8EwV+DK54Z/adAWl6/ooOeUPnZgvqz4rQ+FEfkDzS9G3ElBTctA3SF56BnJzap2puPxgI2yh41f+laJX4cwav2B3FXTsuO5vOFSvF625HX08jaMcip0TWqwEq+o/QGvV4wLh+4SSWN7OOpPH2NZOrX6z8NbcvWGX7rZ7yd4L2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769594906; c=relaxed/simple;
	bh=6JQiF0AakGIzqbdZT0eSTXiuqz8ceNI8FjSAg1XACkI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u+j75kPEo61Q/Z9oqG9pI2txDN2/+p8LVNpZHRQhMSh0JJFKQqXns0MoQ+HBZaJ+doq7yoVaq9XCow2FVazM8hZPOGP0N4hBe/Z7DBuR8KkZuvwiReMV9RIaeroctibxJA15g0mvz4+T5GgXF2e7gW2DnRxAMqFlhV3P3z3qnlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JhUwlHLJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SrohMtSP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S929A0320363
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:08:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pOB9Mc1t05G3vlFbXQsDmBPybhMHNKbNriOahysDpaQ=; b=JhUwlHLJ2rf3WpSv
	xj+CqCJujQTZpRwlnJWMpL4v8S9hcbyXuLc9LIK4VOphYikmOO+j+M1u9RMEkMi6
	WY5f9Zr3+oVOaPwRhzainRtzfBrnwAT6kAnNXcD0KvtMl5ndzNlaCpsTHvlpPGaZ
	n4YAWJ4KdIMTNGqvcbJry+BHrvj6iWjXR3IwY62mgEYMKsccl4HIRaZ9agNlPO8F
	O6QvtfrkXw1DDYSQh1jfO2Ao7S14ngKO3/GUxlBLfIqCompxv4WBjySZYJ5+vpav
	LdTQdarn83249vtWTHMxRoMrhoPsUBVAoKNzW3FDvthZPuEc4O4JEeW+zEz1LjTa
	TlRGcA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by4sjt8k8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:08:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6de73fab8so209875685a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769594902; x=1770199702; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pOB9Mc1t05G3vlFbXQsDmBPybhMHNKbNriOahysDpaQ=;
        b=SrohMtSPwhL+YahF0UxhuTXneW4CKeVcI39rAcawk/7ORhJTIDHwwpWSXou5e+YyVP
         OaxLS/2pqnwFmQRP1kh5U1D6KBk1XaPxB+cr6LV7dYQzM5vUsQ0MUOFKjppB+XEdlJhO
         ePg+Q4g7oe+LTFkmPCq9E6RjbzUTZBu3zffxKA/LCgNRJo0PgqU7TIDNMywQTHhD4e6p
         07WDTRoAZcUmnIwgGIfWdKtFHiogE2B7HT1muaNQNP+mWAhcuMmNSQOttMRPRvGLz5gz
         8byvH6o0JMg+Qcn84dCtVaYilTBoBzuhkbFtj+wku4gzZEhWX1RObKnJLJGEr97i20zp
         zTSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769594902; x=1770199702;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pOB9Mc1t05G3vlFbXQsDmBPybhMHNKbNriOahysDpaQ=;
        b=J0CvCRW26/KHdxmVRdQRWfXmk4Zh3wyiFW9xoB7sSoFT2kuCWCd5UIqsWk74QTk/V5
         +RSV2hvWIx01FLQsdds8pWSf7NnQi/8buuxo9diEKoXgVKORPk/oBFkG6rfmfqk5EOqm
         eJsWF3TjjnMGutFtjzkIR4HHxrLlp2hBgaYizvEPc4pGO5IkRSo+I/FyHuoGSl3Sfigx
         6ixAi5YSdOMR0Espspu++TOHwWDdJuSKf4msSt11hOa9ZoWqky+o4oInM2MVPfBbg+mz
         pL3SBMNF/l0PrwDBhZkUEhAaQ03kwo5dk01LiGrOE3fF7saRdp6V9DOiL3opIKjmb34P
         1V/g==
X-Forwarded-Encrypted: i=1; AJvYcCXjNjt+PSR8Wu0zLNJmRo4UGepvM8+7QUSSyZIHIAGC5G7WZoXid4BZWNjSNLmWhvBzWm7ao4hYuhRu@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfc15TPvkCKQnS1I1KvFdFM2Bar6aK2w/liX94m8SRbZ7TuTJf
	FNEPTRXHYNDBm2q5ZRNHu6mqYxPUflhBhtb5NJY273H0Vj0JYsGdOSVEtziJ38IQs7vEnSifwor
	Mhlh7BeSf/C590U/n8nHZS/bMJ6g52FkoGaQI3K2xJuHrBMoFwrDEAm3sOHUZcdOQ
X-Gm-Gg: AZuq6aL4K8hd5kApwc+5ZLRieIS4jnDg8HQpBKzu/uhudgC/d0dw/FtippHmbHox+bG
	T0Hwih0kZ39yHkF5k8RIkoSBM402NQL5C6ooP+0jrMwo3rd4BFd/tZyZsYB/VyP3bC430pWxAfI
	1Y/Qv1yTvWol/oMv8SSz+qg+qT4Fw1lKWPwiaM6oqVKCnaQTUbP379qGNrK/KVKD7qPII82BqSY
	iaW8mVv4luhCg2/DJjjw6TPcQbj2Jan4G0h3t8SLoVJl5nDu66ft4RGy1WbOO2/Q4e6GFuT+QOF
	rUhHyYoLDN2ylWv8p3///4HqucmymjehQVQz1kl3PAbb3o+MJxAemhyaW2nIWcc9aGZN4tAkJEO
	cRIuM57xZkCUOGZIoXaiS9TsgFv4xSe9ifs516JuHxaE/Mn1bSu7pdpVXIDdR2zOvPGU=
X-Received: by 2002:a05:620a:191f:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8c714b9360fmr107858885a.2.1769594902489;
        Wed, 28 Jan 2026 02:08:22 -0800 (PST)
X-Received: by 2002:a05:620a:191f:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8c714b9360fmr107857285a.2.1769594902050;
        Wed, 28 Jan 2026 02:08:22 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf183cbesm104851466b.38.2026.01.28.02.08.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 02:08:21 -0800 (PST)
Message-ID: <82c6750d-8fa7-4837-b537-8fc6df9841a2@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 11:08:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: clock: qcom: Add X1P42100 video clock
 controller
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-1-b23de57df5ba@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128-purwa-videocc-camcc-v1-1-b23de57df5ba@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA4MyBTYWx0ZWRfXwXv++UTaG+gN
 wgiOevjHAurfOOx4LQHAlVCL/abe27hbZJooO4kOKWQQRBS0vHSMcM7h0WJksHNIqXsOjI1pAhB
 Pl7zvIrafnrRsK5V9YYVnE/lcoRFkj08u5O9/4A8ozSW/2q0vkdfQVf7bNGdBMiFxXCyxtN6/7q
 XrjD7lRaaKvzKU23cPoXzpTpnGT7k6UFYLQLP0JDnH7Wjkq7iqc1wmRsgEUVi/4ms9VvpThH5lC
 4FLi5S3+c02NUbjJIsqccq7EnbjV/Ij5MuZkZpzeT/VcE0P4HT16/Wixorhn47HDLYWbtP0V6Da
 oylZ73BeHouF0Isf8S8DQHJnCxPAM5P7KojTQWW6cD/ftJF8sj7MEZydjf9MhCAp3BL08ebqs7p
 aI/C7wZXtDwx5lVGU78eIutU5FzUoXUGzOIYRiI9m6sp9tgzNca8CAWQPkAcBMIZFee3w7iMZ99
 eqSM8Alhz7gscMEst9Q==
X-Proofpoint-ORIG-GUID: 3fxZhp8OlAtqQBNI_xsWcqhsj1ZB672e
X-Authority-Analysis: v=2.4 cv=KezfcAYD c=1 sm=1 tr=0 ts=6979e017 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Vr16hO-9cjX6QiRLJ9kA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 3fxZhp8OlAtqQBNI_xsWcqhsj1ZB672e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260289-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0BBCF9F3FE
X-Rspamd-Action: no action

On 1/27/26 8:26 PM, Jagadeesh Kona wrote:
> X1P42100 video clock controller has most clocks same as SM8650,
> but it also has few additional clocks and resets. Add device
> tree bindings for the video clock controller on Qualcomm
> X1P42100 platform by defining these additional clocks and resets
> on top of SM8650.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---

[...]

> +#include "qcom,sm8650-videocc.h"
> +
> +/* X1P42100 introduces below new clocks and resets compared to SM8650 */
> +
> +/* VIDEO_CC clocks */
> +#define VIDEO_CC_MVS0_BSE_CLK					17
> +#define VIDEO_CC_MVS0_BSE_CLK_SRC				18
> +#define VIDEO_CC_MVS0_BSE_DIV4_DIV_CLK_SRC			19

I checked a number of platforms and the _BSE clocks are only present on
Purwa, without any explanation in the corresponding docs.

What are they used for?

Konrad

