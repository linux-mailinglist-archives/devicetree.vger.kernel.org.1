Return-Path: <devicetree+bounces-259847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HSAHvOkeGmGrgEAu9opvQ
	(envelope-from <devicetree+bounces-259847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:43:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 197E393C83
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:43:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 21958300399E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8D45349AF9;
	Tue, 27 Jan 2026 11:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GtbTemLz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jbD6w1wn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C20347BA5
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514222; cv=none; b=XzATzy+08tS6iWJtKtZuRp1/7HK34NZZeYcZtP9bxThR9EVvLCfKxJWnrgvZxldLacT/IfQKPuJSfOUQRdSi004ddMH8DeAi7Ul3RD0IipfZ3hSldVw3DrSWPGHzk8aygUnFWpBTjlspRF2Wj2IpicHQaCJC26Fcu+1Z9slG8ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514222; c=relaxed/simple;
	bh=Dx+JXjWmn8tss6+tA97yVAXutH4vdk4F7/NoQwAyWYo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hHWx/JckpU2NNUeOXxEXz7fLfotOowy6lhg+Efxpyf0DS4SEuRnARMH/ZT00kImoPEJxYPRw3jzLr5EHQM3tXEpWCFZTCJcZEISqli12qsgZo/bj8t0tQ5PHfcbExgBKel5M58WB9QnnatJseW1qPb2WLQnKUW8kRL/l2iArMVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GtbTemLz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jbD6w1wn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAb8wh700196
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:43:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QJjtcXc5Ltv6rKoUwcNDWqydHMEMgmd0ypnLUx1rCNA=; b=GtbTemLzbpkjSDLv
	18jr9UOrS3kuZma8/F58VwTI9I3YdLVUw8Axk6I0+nMK4vNSO7HENd3dubnsOteS
	kwF6xSCkVNxsiWSqRMg24iVpVirZnbDOBE6TgovJ5SEjbZLyL77/fXPTbcE6623i
	Gbx421swiJGC5NVvOzIFZwcDY6rzBN8plSA5PFFV0eJm7VIvKpplmSaG4vLlMu+i
	tMHhzuIC2tXsHMRlJBLmnvekfwLSuHv3AgvQ+WaDUaQpEl4cSFG6ujWpNvxdSjrf
	DztaT/5W86h7SWk3lqlYNqwOQkciO/UWGFG4YmNNA62t/B3lgtGpeB6fex4pAh5i
	n+JLPQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxew3tmm5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:43:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c522c44febso81682985a.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:43:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769514220; x=1770119020; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QJjtcXc5Ltv6rKoUwcNDWqydHMEMgmd0ypnLUx1rCNA=;
        b=jbD6w1wnLi5BSi6xOdGcG9IMOU+Zdf88o1MBstDh5QDrtH6nEptOcpTpS9MQJoTnmK
         bPsD9RaMB+sDaS0W0VbVBmUk0iU0U90ULZw8Q7nR3tG1coHv2KKYBfVX7wmhSnTt6778
         O+F4UJ+U/UNYpGQibDIYIG4hI/gxzxqmsp9x9B3PPNhx1v5UBbwzFjEHepriTzmdFeXo
         cQf1q2qba1w4ttZkg+Lp+OKFskIbVRxEJPkxzkrIBYJrJstzFh2mspJMWa2vLP0GaZSn
         9qCRUj2ncTn4e7yT5shXp+3YlyNhEtiI3acTuus6CeG88nrQEqRo1hy1qflI4QIbz9Mt
         sfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769514220; x=1770119020;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QJjtcXc5Ltv6rKoUwcNDWqydHMEMgmd0ypnLUx1rCNA=;
        b=UN6b0UMvJiAIu9tRGDCLzQ/qbJR2EPCOZEb+tG6ZtfLfhmRo8EKx+AgsY1bKafkWL0
         wmG69Hqj5AAJMGQcHbg20KJGdV36zlI/idsP54pegL2bdr1rIwS+vWy3z7HpNSj1ROb3
         Qaa6EEkJp3t2N/tx8h1fsKZ+f1MfUYx5vgHndt11lIdXnuRkoQNeYbsYYaloJbOxYFm3
         GbouQUAYbQkKcyr1N+/Kj2g20Yj57Q3u7gUT+ZHvNH0zkaiRYKLxDSBfiFfqoTc5KBgt
         fMrGb9FPbdzEfGhhjagpDK2HuwG3N/12Yfl3T+WvGZ6ui0BIkBFMOw3r8mgZmeeQdxft
         XPgQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8By9lQbSAEctnqlR+V3qFXzLA2W1Qq5X3tYN/IkCP+iLC6v8YOldk779gQB+V4FoUESR3Gr2CcgOu@vger.kernel.org
X-Gm-Message-State: AOJu0YyTcKF1FHbDFwHfZjGU5JrhmhjmoKe8mUedHDp2CrwAoHfTUv2f
	9HEZouW0ZbGbhpdTjHkGKmZ2gsbzWBWcKePBIwfE/6GrBYX9NPulKg3m+3V+6GUSIHOpyxW+o0X
	Vf0enta7m5zx3xVBctd+KxD0DxuiGTaJaI9Q/3msx1Qk7eY+sot+5d13X0UsvHHi1
X-Gm-Gg: AZuq6aL2egFNnQNAR3oBu50KcWEjLyeIPsIYjiLmYyKnrY+c8H2jiKioRJcNiilqRvO
	+h2SXopZWNA2JgnewGbBKFI0pDbJeYmoigAAyPtF3GFI3PKRs93qGSrrZ7YHdg7qtY0KMJYXr8S
	08dvoBnv1X4u9RYRlDiSZAX1zxX2IO35EyNde4Anc83RjFBu0b3+W2I+/Ke03BZxjEuKA17ila1
	ajgt5yyXgultDVKwsWWTqWzk1ehkkziFLP77px83+S5TN0KvZKO5fvy+bMrzvlHv3A+nYXIgvc1
	4V+9K5XCXefh+kpQQ1dURNcHaMgghI2hB6LDrTbrSaw9MrWUiJsCroouZn7fSjmhecLXbjA/fUW
	8cSy/4/6V4ITmIkS7zkDl5zGDs0dsEugyJZ7G2H/u8Ba2Vk5wDcyrbXlEvhSuJdhAcG8=
X-Received: by 2002:ac8:5a82:0:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-5032fc17265mr11027671cf.10.1769514219792;
        Tue, 27 Jan 2026 03:43:39 -0800 (PST)
X-Received: by 2002:ac8:5a82:0:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-5032fc17265mr11027431cf.10.1769514219370;
        Tue, 27 Jan 2026 03:43:39 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b92b5efsm6629444a12.18.2026.01.27.03.43.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 03:43:38 -0800 (PST)
Message-ID: <83198eae-088e-41d0-ac5f-2346e422a25d@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 12:43:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] media: qcom: flip the switch between Venus and
 Iris drivers
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
References: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KI3tEsHkwOJugYgE1pd32i93ckMLsG5y
X-Proofpoint-GUID: KI3tEsHkwOJugYgE1pd32i93ckMLsG5y
X-Authority-Analysis: v=2.4 cv=J8CnLQnS c=1 sm=1 tr=0 ts=6978a4ec cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=aFFQHNQvxcfBljpNvT0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NiBTYWx0ZWRfX5NXkjV/jtUbk
 30LVdR1lB72GwjCosNzN4/EDEmWAJHWAWgF5pgc73g8TYFiPPg4fYqYgnQ3ncHEZktg7mnRKGye
 9YQM8AwdQxqiAREr9mKGgImDyMwcwQWJJm5Wnz2ow30JWvnsBAJVpAsWCl+jrXIoHtUvfw+ReTf
 SArrKrD6nz5sRN6GCAGHhJPEFzsTpv2ChAPL7G7vWi7+VGaePTd6C96LLGXExPZ56QZT25H+riq
 RWIPUqFFBp9erL8y1tWaPaw19VXtOYo78+WsF+WMVOfyY5BTWmnm+x8//sveC4zPGXzFMcR0EMQ
 9NOL26DIsoh3P4BYsKhdIc+J9uYRc33GC/44agGU1yf3cPhgMHiYZyEwkizp4aUD2KlA+1nqV+G
 ulMa5vNsINqlg2O6qJEPki8m9TU46tOqJtj0s0LCjkubfhRS7fE0NEqmgGkKuySy1QcwNB44fnx
 g3aUWwsj8P4wDKOYE3A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 bulkscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270096
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-259847-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,out-h265.md:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 197E393C83
X-Rspamd-Action: no action

On 1/26/26 3:09 AM, Dmitry Baryshkov wrote:
> As the Venus and Iris drivers are close to the "feature parity" for the
> common platforms (SC7280, SM8250), in order to get more attention to
> squashing bugs from the Iris driver, flip the switch and default to the
> Iris driver if both are enabled. The Iris driver has several
> regressions, but hopefully they can be fixed through the development
> cycle by the respective team. Also it is better to fail the test than
> crash the device (which Venus driver does a lot).
> 
> Note: then intention is to land this in 6.21, which might let us to
> drop those platforms from the Venus driver in 6.22+.
> 
> Testing methodology: fluster test-suite, single-threaded mode, SM8250
> device (RB5).
> 
> $ ./fluster.py r -j 1 -d  GStreamer-H.264-V4L2-Gst1.0 -s -so out-h264.md -ts JVT-AVC_V1
> $ ./fluster.py r -j 1 -d  GStreamer-H.265-V4L2-Gst1.0 -s -so out-h265.md -ts JCT-VC-HEVC_V1
> $ ./fluster.py r -j 1 -d  GStreamer-VP9-V4L2-Gst1.0 -s -so out-vp9.md
> 
> For H.264:
> 
> Only the main set was used on both platforms
> 
> On Venus pass 126/135
> On Iris  pass 78/135

This sounds a little bad..

[...]

> For Venus several tests crash the firmware or crash the device,
> so test-suite was executed with extra:

But this sounds way way worse

[...]

> For H.265:
> 
> Only the main set was used on both platforms
> 
> On Venus pass 135/147
> On Iris  pass 133/147

[...]

> For VP9 codec:
> 
> On Venus pass 174/311
> On Iris  pass 232/311

These two give me hope..

Ultimately, I think it's the right thing to do, if only to prevent the
crashes you've described..

Konrad

