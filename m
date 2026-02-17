Return-Path: <devicetree+bounces-266095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DjWFpJXlGkXDAIAu9opvQ
	(envelope-from <devicetree+bounces-266095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:57:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA11D14BA81
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:57:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 46083303A86C
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DB4A3358A6;
	Tue, 17 Feb 2026 11:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zm3rVc8Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BOtbN1ps"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617BA327C05
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329400; cv=none; b=YWKPR4Sa/vn3r2ZVS0ECxPzFupS+SQhiqqIWp4xnrIxIl/oPA/z4KUxaERiVMRS7MN5eEuRmFqO+kXWyucwGGandbmAulZmGJMFkIzuSWR2aHnLwpV56IjYpNgtsFj7aT/W9pnEAcvcn77ArLQjvnSIZFb3Nyk5dDz1ObD++p/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329400; c=relaxed/simple;
	bh=CfAR57z2aVgzx0jNoBJko0yuCR6WfqzxE0KUwxCbFvg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pCtMCFCm6qMixUbCkXeyIAdYuY+uK9UfbS5Cz9v2e0klQb7vdyhJ5w5gJwT/mMROKps8cbl1xSd+9w7I+JNACuVozWOJeAmnrvFpoIz/QHVkaqnjtgQowdM4HZn4aBzGjoEp3W3yHZkgp24P/Lh7bSt/QLVAxsNRZVw+3Ppdi3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zm3rVc8Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BOtbN1ps; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HAkMbf597031
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:56:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	abZVH24cGewfyKGRj1gUBCi7aVoXPrWtU4+xmjBoHOs=; b=Zm3rVc8QPDpY+TZZ
	mx9Ya/bnKHD96jZQGK5eczSQK/o8gIvOYwkjrSY2KkdNxiK/1DPVaUZcU2Wd67X8
	4+QfhNIrp9rykx1aPTurddjDaSTjyAt8EvVxTfl+6NPnEjvaoXvdr6bKA6tvplM5
	gS/PuNDCDzcWVdQb3ZkLZ6i97LU5MM8w86b5TrniPLwYlHcb3kRYw48ipgogMevn
	pZ7o1vxaXjLt8tf1L5QqGgfVeDF04pdc01WEppI12L+rn3HlyRQlbIYZ/6mBOfCT
	9rAbrw6OwAvUMBDasqXfU9AVCFMhIGqXDWBG8EwcPCCZkaLx27mW5anxAkh/byKz
	hfPUvQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cca361paq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:56:38 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3562370038dso3490787a91.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771329398; x=1771934198; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=abZVH24cGewfyKGRj1gUBCi7aVoXPrWtU4+xmjBoHOs=;
        b=BOtbN1psE/gx/AFwC23yCzFnXNI4UxdfIs3mITGS+c6ZUVPeXI/ly5+kYsUSB9i7SX
         tWaPUgeBSk01mJ9PQw1O/TCB+spWZiyCpWFt7w3kirtjqO2PZLaFoBbWVayH8o9fezoF
         uA+9vTCyN1SsP5hfdtoONYNQfhZz4UYxTVZhZeMLSjnJCKXX83C7+sQ2g9znDSSSjMCh
         SW3Le/X1XFKHYMhu+0MzVxb8VmNvaOnHu0m5KaozuVzfxWHR8nQdPffNRZ+lSipQ1fnH
         8AWj5VFE9E0S2qMEh838qwX9GLV+S1ryPT28OA9e+F2JsW5B7o+6j3YqdUiTcM30EYE/
         s90g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771329398; x=1771934198;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=abZVH24cGewfyKGRj1gUBCi7aVoXPrWtU4+xmjBoHOs=;
        b=h3bzNQp7KywgOPSY2GdW+OeCnDhJLRxOVar4stjbCt1BoC2+IxSBPBFA/52VR/nBUV
         IxwSsDyBlimE3ipYZ813PfYUrS14op/41ohh0isITv7nBYHPYJbmDQ5WLQQweF0oCk4u
         VSucWeEcxbab67BUxHL0q0F90DDPz1JwJArd0NRWVnsdJEKORik5j61BYCgNIkaEHZp1
         gbUetKKG6f6FxL2l4tz4ONRgFZtYvBSJUQQ6Og7MTvBDwIuO4lrLBMM27vJ4ZA7Jq3pq
         uhOJec5b0QQUwth3gO79zf94XiKH8knz5D7s+kvZTJxh7EomA4ddXCWOoiemOGAEEo6y
         1UNA==
X-Forwarded-Encrypted: i=1; AJvYcCVr088sHlbUOVjCpsbIAHhjWm37oaFphmJpw1abuHJg2T8EXNb0dowAkOa5149bKznGVgLp0e0/6Fgg@vger.kernel.org
X-Gm-Message-State: AOJu0YxWx5rLAvdG1MPEEbJFSVH+LGGc9CJ2v+qK2QkoPjF670au1cNV
	MWkaRmMhtSy+DXiZo3nU4nIgBrevQtSnvFasEhgYcAvm/Z07bHy00dm95/83XTEX+zNh6Pqk2yt
	Kk+Z3IqPRWoI4U+LGfHX1ngdKi/vIMc3JpDWe6ZmsEnOevYjHGRS1VQLylpYt0l+0
X-Gm-Gg: AZuq6aIu5E/R7kfPVU9YUuydkR//8brhVlNzkfj9PxK9KTsjLuNA0Xb1wNeHwksRatt
	LjgtgmmeqNH5vXoxS25FyXL2tWF6/S1xVh2ldYgqlVNUkBo/JxZXp828JSqlc9uxV+yrlcUT42n
	Rey3FXrSE/OEE1ilrRDtIAJ0ZAnd3EO749Pl8SSzbH3lSod4nvRvxJ+Wopmglttz767vFkGfqiZ
	2YdG+DQr4fbZK/C3L38GIVWu5G+1LOHKh6P0tnYDloo3XUuhMUujGk67iXUezuyi8eWcXxrcS79
	CGUo3p5kNnCaYayxcbZtzVfqbeYSuJWOOsAuVnJN2kDqVquzar89KNrhHA3RwOcvlMVU9KhCEus
	K1zFboY3A+Fj7Dy2LZbbiPahRFPCBLIgtn/ru6ejfKfnhFdsk4Q==
X-Received: by 2002:a17:90b:35c6:b0:356:23be:7ecb with SMTP id 98e67ed59e1d1-356aabddce6mr13377705a91.12.1771329398144;
        Tue, 17 Feb 2026 03:56:38 -0800 (PST)
X-Received: by 2002:a17:90b:35c6:b0:356:23be:7ecb with SMTP id 98e67ed59e1d1-356aabddce6mr13377670a91.12.1771329397655;
        Tue, 17 Feb 2026 03:56:37 -0800 (PST)
Received: from [10.92.215.127] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-356a69b38ddsm10428379a91.0.2026.02.17.03.56.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 03:56:37 -0800 (PST)
Message-ID: <caa870e2-3795-40bc-9f0e-c93e313c8c6e@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 17:26:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] Add CAMSS support for SM6350
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bryan O'Donoghue <bod@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260213-sm6350-camss-v3-0-30a845b0b7cc@fairphone.com>
 <c83ce76a-1c83-40eb-9c67-d26b7e6f68f3@oss.qualcomm.com>
Content-Language: en-US
From: Imran Shaik <imran.shaik@oss.qualcomm.com>
In-Reply-To: <c83ce76a-1c83-40eb-9c67-d26b7e6f68f3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OSBTYWx0ZWRfX9spT4j2NQz31
 kECDK7KxLZPVBGVx1+cU+vhjY6mo7WWMPPXO7keg9+TN6fOykDZlN4NXwHFomxcKX/3m02XRwL6
 FieWbf89hq6ME8N3XBT1ze6/KjObMiUGKjW/WUWFaZnxXvPxZdZWHK5p7Qy8Ebh6p5Tyw9ZCPB0
 bOY1ciPM+QfzjfXRUUgtCxrjVMyYCrnTnDp7a+pT3BafXoeEcwmdB0gnuAPZRUtFQ3aGuz7OMPA
 3eD+VqyzJR7FnXz+RCS4tBJXfoMQPLgCkdwDAvwAKCkVvRpQHNhV/yK4x2VRZfposzGIdqJ79Yx
 xBIhbMypqrC/oWuxWFF6K4PaxNzh+JYnlZ/QPQSMmrmspTrEUf1K8SaeLgKhp0tVCkiR3+q4STt
 GR5XJ3Aw2SvhJT3tJ7vFAxXm/6fQOW/a9gqUDyHAq2iNl6z0lUwZZeh/Y7PO8HUvXYgFMmtdwXp
 PzLVGpXncXfuep/G2vA==
X-Authority-Analysis: v=2.4 cv=b+G/I9Gx c=1 sm=1 tr=0 ts=69945776 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=yXsjsA-mUSMGIjApI5AA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: CwokJT53Txf3tLcmEUGiuJBVrGsoJ8G4
X-Proofpoint-ORIG-GUID: CwokJT53Txf3tLcmEUGiuJBVrGsoJ8G4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602170099
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266095-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,fairphone.com,kernel.org,gmail.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imran.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CA11D14BA81
X-Rspamd-Action: no action



On 16-02-2026 04:34 pm, Konrad Dybcio wrote:
> On 2/13/26 2:15 PM, Luca Weiss wrote:
>> Add bindings, driver and dts to support the Camera Subsystem on the
>> SM6350 SoC.
>>
>> These patches were tested on a Fairphone 4 smartphone with WIP sensor
>> drivers (Sony IMX576 and IMX582), the camera pipeline works properly as
>> far as I can tell.
>>
>> Though when stopping the camera stream, the following clock warning
>> appears in dmesg. But it does not interfere with any functionality,
>> starting and stopping the stream works and debugcc is showing 426.4 MHz
>> while the clock is on, and 'off' while it's off.
>>
>> Any suggestion how to fix this, is appreciated.
>>
>> [ 5738.590980] ------------[ cut here ]------------
>> [ 5738.591009] gcc_camera_axi_clk status stuck at 'on'
> 
> FWIW 845 has .halt_check = BRANCH_VOTED here, which translates into
> 'dont check the state at disable', this one has BRANCH_HALT (i.e. spin
> and keep checking the hw state)
> 
> +Taniya would BRANCH_VOTED be fitting for 6350 too? ^
> 

The parent RCG of this clock is under NoC control, and seems like there 
is no vote on the NoC while disabling this clock, hence this issue is 
observed.

The BRANCH_HALT_VOTED/BRANCH_HALT_SKIP should help, or if the NoC voting 
is removed after the clock disable then also this issue should be resolved.

Thanks,
Imran

