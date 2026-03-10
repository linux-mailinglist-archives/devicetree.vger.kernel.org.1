Return-Path: <devicetree+bounces-273466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +D+ICOb5r2mmdwIAu9opvQ
	(envelope-from <devicetree+bounces-273466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:00:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2071C249DFE
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:00:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2C3563043E04
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D9FC3859EE;
	Tue, 10 Mar 2026 10:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SeLJ/555";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j1ftV8KX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D6C3815F2
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773140267; cv=none; b=j5MwShtMX05+zqMuZUO2OAI8GBa+TkVW7fBxK7wB2+ns7k8ep4oGtVTSSpdE73eVQ0t5cV8FtDL9vjpcUgyUT1eSoiP14oLN9j5vUouyvbaH9k6HU1XZTK0RehQ47BAfikBa9G/+bYviBV/hqZ+aZPnLukV8vg936BEwlxcCfco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773140267; c=relaxed/simple;
	bh=2sZKhs3kxipcKqLWw1bDogM8lDDGnZ73NTE5kpvVObM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=KB2momGMskNfoRJnik3v5XCpztBzBPpLutnPPiDV/LIDBiXSjyEjKOpG2R/MYq3TTcwQLNaq15OfmqcSSyecFtkA1mFWIR4EJLyahEF8rTqzmmSa0lirqCabzuO+J5hWdLMaVALTEI+PJLJqag7jEjADHus57HcfZ0IRFNjwT4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SeLJ/555; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j1ftV8KX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A912H73754581
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:57:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZesGPSQea+/zVMBZRRHwVi/ocDIAP2gXJwbjrhhC7bw=; b=SeLJ/555/3YsoLDj
	EmVnCY7/wJFRjs6Pq9O6RVGqCIltmeHEE6zsLd4e3U+OmJZlvsaqby2XWLCJ9sJD
	NUt0YRQID6LFzf9ukPebcVyQLy2W0r3VoJYm0xNVhIMgSBoFRScN9sKjyqA4LrjE
	iTGcsHWzgakmjxauURNCgGvlvZPWUeWbCW6nzjd4Ia+uHDIBcx7lp8O77bJl7mph
	bToGAGYjPiLnvylkSAvtWCO8CBsxrLulZWDv91kC8OOp9dJDSfz3X43xpjrP1FDM
	G9tO0SQs5vvIXxyMFfA98uIL4mwIsZ1RWOqCimWfsf0Tm2cvRqq0xxB+mS87iIZy
	F/Dwmg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct477jugm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:57:43 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-899ebdd0b08so60613276d6.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773140263; x=1773745063; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZesGPSQea+/zVMBZRRHwVi/ocDIAP2gXJwbjrhhC7bw=;
        b=j1ftV8KX9VI38HuW+nf1pLMkg0vZQ+J3bXh0q0QmzfW18ZBqXTp6c7hGf7Be3bs44t
         5qwt19lrw3pdPuybR/Fd4vNoyvniBArw4swDWz3aXmCcLJZDd9RswmW5E+IxkMqEJX7z
         kPmAyU7q6Wa3AV7L3vInTnGi6etEVo+OElJROPhROgpF+cm6lnqquXaGc26UroI3RfrU
         xAKtfEb2LFjcCW8HZonAS8GDAwI0T5SAat3aye79p9if5lal3Z+k0R6zdUXUKvsH4wf3
         /oPnIB+L1mJPEjIwYsQzax7TGE/S09bd1kXnnxH1rkwuSCTiVjKK9fBSJwGFcahYep1P
         BZgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773140263; x=1773745063;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZesGPSQea+/zVMBZRRHwVi/ocDIAP2gXJwbjrhhC7bw=;
        b=Vf5B+Kg3eqgm6uH8vieOMY6XsiV5oD8rPR8PUHq/WQ7JehyeKBxzA/HVQO+ePiAHrl
         nIjHGV2YXGcN+0rBfuI03zRAmbCTZftXEFtvT1FDaWTd7kp3//FRmyprlvJWPG7+Qpz6
         lJw57ZE/wSfB63QRpkJGu9WXlQbeG8ckEk9IPnzwqhqfudE+uxDW8LYg2R4CkVVL0TIP
         4qfK+LbBxB/5akwwBvlTJuU3FN3eMC0x28iG6OHU92ebc8GUOU1M+62O0T22wcidcYKG
         +seC7NBgQYx6wqWJBhX9ua2hrqCsaUM7Ozva1BgL/vqM8475VfDASL8aFM/MsCB5q0W6
         TSTg==
X-Forwarded-Encrypted: i=1; AJvYcCVfqOLoajhLceMkVmEqlcKK+sCT/H1Xu3g4MD0jil8fMsGqhLliACNBcd/wYOlM9Kw9maxPXC3bWq7A@vger.kernel.org
X-Gm-Message-State: AOJu0YxqW0Y06304P304eo0kMQ84miYsaRJywuN0AMBZFHxadr/zaxFh
	ko1IgPLXQAJj+NjhG3zD/MCVdi+HlmTL9w6ibjMNugE/4A5OEiWQJEO7wyUwTuk87xeqKTKNEr8
	S7dnD1qSRHNDx31x+7gGDjMnzdWwQSAuHF0qcYuKoy0voM7ILn7KODHWKs/rT+8hl
X-Gm-Gg: ATEYQzyifi+PJH4L1I+v0AhoDcYf0swler9RbACySjKh4C560n+1Ocv6EG98n8r1l2d
	I9XMpmkR8LcDixbpnC6MitH39yUytqyQ0wbGtLMM8igNxcC8l2U441XulkZkXMtUaa2ojJ9esgD
	pwjZu6fLXE/5IkpLCgFzdnpNL9gwd4qzigGe6BT7Kvlxpkdd/ugrPQi7n6bDch9AdIGMBQxxwVJ
	+qbHOirLO12nJ8BO+w55Zwj7tI/u8wbhjzAJKiBQVsv4EiUkOY9yBNJcEtXwunkESA5So2TQPVU
	hwHMkk94uwb7Hp0+8Rd6oEmHUj4/qwCzpJoWQsdWqk7f3lwMwb2zlD7cPGhbiTR9keAJfeP6ak9
	USbCtsqCv8Cylq1ZGHcq6ZEfZgVLfUqBD8FEJ5TpHLcR+csDT4UA96UpPPkWPUzmHFKtf6X/x3O
	9aw8E=
X-Received: by 2002:a05:620a:1a17:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cd6d43bc63mr1455915985a.6.1773140263040;
        Tue, 10 Mar 2026 03:57:43 -0700 (PDT)
X-Received: by 2002:a05:620a:1a17:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cd6d43bc63mr1455912885a.6.1773140262504;
        Tue, 10 Mar 2026 03:57:42 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef8a861sm474036866b.16.2026.03.10.03.57.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 03:57:41 -0700 (PDT)
Message-ID: <caa23d34-f71e-40f5-b142-dde53e95b6f4@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 11:57:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sdm670: add thermal zones and
 thermal devices
To: Richard Acayan <mailingradian@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260310002037.1863-1-mailingradian@gmail.com>
 <20260310002037.1863-4-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310002037.1863-4-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5NCBTYWx0ZWRfX8oRkC/SIN7Hv
 0b9tQwuqHU4v2WsaEChyL4U4KJFiNwvMSwQJURLJdY9OsTLDkwkHac0Uybr1Kb64lZOD4VEqMy1
 O2BMq4Eov81+z625v7f7ByMc3pZLTYuQd5KlqtOHjH//ERRgw2/9i8Eq3ZVmLEDNzovu0MJsOp4
 R7dLGc1pFVHUrT50km7bjVy98+ve4eO/pQjYhGpXEQzfqWpsD6tmyG1q0s26E/jECj8oKAsG8Ty
 FyGDx9MA+FHo7TX5J2NM7LqW8W8PLJdze89TWsXo6uokvdHGUeMSxvuAD/giFny6yYOTLYSVIsG
 2xn65eaXPi6ZfBbvyktJDi7wHhSUQnE2GkQ2VpGCrvJ02voKCA+OCH1EnimcZLJCNGyjNOUmqeA
 qVGsY4GIzOTJ07N/AMIoq0VzV3g1cccmbZzwHId/tXvW4hCUgd8qY51FYY9pi4zmc81AHbHdheC
 XxHpJqQuM3OMkca0uag==
X-Proofpoint-GUID: oXuXXge7hgWTWZXnCbOrhFGQ-6_m0MK4
X-Authority-Analysis: v=2.4 cv=KLxXzVFo c=1 sm=1 tr=0 ts=69aff927 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=pGLkceISAAAA:8 a=Asad03Kaw1qaHcbSJF0A:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: oXuXXge7hgWTWZXnCbOrhFGQ-6_m0MK4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100094
X-Rspamd-Queue-Id: 2071C249DFE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273466-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,c263000:email];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,intel.com,arm.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 1:20 AM, Richard Acayan wrote:
> Add thermal zones to safeguard from overheating to high temperatures,
> along with the thermal sensors (TSENS) and CPU frequency limits (LMh).
> The temperatures are very high, but should still be safeguard for
> devices that do not specify their own thermal zones.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

[...]

> +		tsens0: thermal-sensor@c263000 {
> +			compatible = "qcom,sdm670-tsens", "qcom,tsens-v2";
> +			reg = <0 0x0c263000 0 0x1ff>,
> +			      <0 0x0c222000 0 0x4>;

Both regions are 0x1000-long for both controllers

> +			interrupts-extended = <&pdc 26 IRQ_TYPE_EDGE_RISING>,
> +					      <&pdc 28 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "uplow", "critical";
> +			#thermal-sensor-cells = <1>;
> +			#qcom,sensors = <13>;
> +		};
> +
> +		tsens1: thermal-sensor@c265000 {
> +			compatible = "qcom,sdm670-tsens", "qcom,tsens-v2";
> +			reg = <0 0x0c265000 0 0x1ff>,
> +			      <0 0x0c223000 0 0x4>;
> +			interrupts-extended = <&pdc 27 IRQ_TYPE_EDGE_RISING>,
> +					      <&pdc 29 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "uplow", "critical";
> +			#thermal-sensor-cells = <1>;
> +			#qcom,sensors = <8>;
> +		};

[...]

> +		lmh_cluster1: lmh@17d70800 {
> +			compatible = "qcom,sdm670-lmh", "qcom,sdm845-lmh";
> +			reg = <0 0x17d70800 0 0x400>;
> +			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;

I think you got the interrupt indices backwards (i.e. 32 -> clus0)

Konrad

