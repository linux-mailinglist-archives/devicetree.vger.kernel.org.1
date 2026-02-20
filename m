Return-Path: <devicetree+bounces-266939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBfnCl1bmGkNGwMAu9opvQ
	(envelope-from <devicetree+bounces-266939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:02:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D283167A54
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:02:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2D70E3004DA0
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 13:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63C34344DB6;
	Fri, 20 Feb 2026 13:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gFrL94H4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O+lfRd3X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405C532D0EE
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 13:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771592531; cv=none; b=SqFNPrrVv2YGB8s5VukhQd7M3IDRGQ9ewnkhQ45jDrbjD4VGXgx/bVwPuBQD+Yg7eFRp6ya+uL2DA7gOE3Bf1jj2AxUGWk1R9hJYfts9fonXwQ++WMmE97JyVdatnhdH4qs8GzO3LFqJSQD39mTUxINp4ouulUBiBJpYsDiGWU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771592531; c=relaxed/simple;
	bh=jjiZekOWQAI0H2IL4fEIk9IiBZnrG/WEjlYmYNSVUXc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a9AVnhF1S2SBX5a2A7tpq/+ARu6aFKh7aQqfsJIAkJ/AobfEhtXjAS1GzJCHwOsxwE3Bphh2eJ9tAMLuu+/eUYs0oLU2jT3J9/3ww+a/apZhw7HeF1nv4R6PYooOILeS1ZGPr75BmCimGKrgoDMXtGbRbY6rZ23gAr51SP+fKsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gFrL94H4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O+lfRd3X; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61KD1hud2745928
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 13:02:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CzWESu2uFKsGs95jb7f+KQXQWBws/czIlkrDZWRZm8Y=; b=gFrL94H487pzY4lC
	AmSW4F7XSq8t9OJLj+pDk9wQsT9YIuRkNskaVGM1HqZREiquWCiOIVnFs3iEw5uQ
	nWByS9rCtA6uk3hjoqzAS9/etrHFO3V/79q40uShA3mLxkrvofCLQxQUK+oF7378
	2RbATDBnEz5SVzswR0UC2+XO/EpQwLaCcUXx5p+L/aaHCGkF/qXyNufgnhKOCA+T
	eOMa8OhBH35SgpnnH8s94UliJb/+IVCbhAZ01cR6/bI2RroNVdckZnIfg33xDapz
	neKHiBaLkBnBN3YqLRJ05SVCTA4GqWXWVMzw/tWU48Bdpu8+IZPo7ixY5+DxED5V
	dd2hSw==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedsnsm7n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 13:02:08 +0000 (GMT)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-663183c24c7so2763252eaf.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 05:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771592528; x=1772197328; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CzWESu2uFKsGs95jb7f+KQXQWBws/czIlkrDZWRZm8Y=;
        b=O+lfRd3XO0fYMkzv3BKkz/NGB0bbHY44H9H+FJqmxnYPQ92eeHA9cvKVg+Ph9vqqW+
         a7cG7EtL/OBP03RjeFwCKZEpuGGQsTGCPntRoE32cO8OQ7eocAut+HAuaoIQ5X9F/TYZ
         vUetSru3qTlhYopjs1RI6jA09OEO2LJ3kPGglr/x/PXo6Vfkz2Jt8vZi4PgTHiKCPvhs
         fx/zdQC3U1/RP19hx9rFNGSMDNxtN1GQhoa2sqKz7Uul9P6w0unJqJzxLWj/5r4jiIe6
         1DOL7cBkDFQ7fJE5ecY+k8k48Sfb2w5GoAx0UWOVU8NCIQIDaHBcKw1CEoL29SbytmhN
         alHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771592528; x=1772197328;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CzWESu2uFKsGs95jb7f+KQXQWBws/czIlkrDZWRZm8Y=;
        b=WaT9W/FVQ6VatyWQm7XgSNadK7Wwvb+uL9beSAvWMftTlOz53SWkvLzP+ejL7gXnaL
         gwflXmyZytiBaSRVerDXqM9PqRI3M8lVuMZkeuDBLZKS2olG8QYxiqdDzcWczuti59I9
         wJ730pNdJngbCws9Jc3UM7w+b8Uz8XK+3hiMWez18iIsgMC1+wfk9i+Sy91nprC7Aev2
         C8WviAtZ/t1XoZHMXWcR44/LeXegGX/H3qBtE1QIEE4K0P2/oJl/o8BE/hVtnazakN40
         rdRtUxUIibENVVmoUU+cVYxoUszxRFKR9X05fyf/LAy7Ygv59snJZwDCxsontOCcHbpD
         tzEg==
X-Forwarded-Encrypted: i=1; AJvYcCXCtqRp7VeW90Bbpj2OEpF8rKPgpLoSkC9BtRjVlyRAY25S78jUGWZnVVpKb1oZDhMgi/ra+jJ3Bx7+@vger.kernel.org
X-Gm-Message-State: AOJu0YzyQBAOeF3sTOe2sVuKGBAabiE60ZeEw4sleHpHkOFYMF9tkpyd
	qNFpqGlgUPjORXA4Z7MesNUFIwvx6NVj+OfW51M1wMjBmW0NQRGz1nfFXiWP5uxKNIAkRQ4aPtb
	6nujQq/J/Eek+Yi64PT/LZvoNEwlrS3esEPJmkErADaTlYUko3qdJA3yen2iC3ytH
X-Gm-Gg: AZuq6aIzRE3HJGkFokmdtobXaye0RTJGn3lfb12vsEr77Vr9cMorCqcbaZ9B64MMrpn
	Rf+/Zxiq+xEbhVvLMg+GZ8drAt1J5y/UFOIC9nh+AmFHU1ydt0CH+ObENmEfeSkC139L5mryOsZ
	CeCHlgvD++uj62P3NQSo4dd/g9qID7AasrHjsbnbKaoowEp0WOkSE+2K/ynUJMg6EPIOQXmH2Xl
	JfE7g8gJSC6FabOnTu4JspMloDfdK9hy540Y2ci1zr+t5TvXrZ/JGVJdeCHvxSOhnOUfGjW80uT
	lKcMVLQKHX1i9/JLvVXp4rq+WiImRriFkAabln0qMFVVJ9JIPx5cEI1aDeseZmu1Pp9dGtgBLI6
	7kFVW5lbGJIo83aUO4Y1grj+EhaimwZWch+la4ygVEZFNfmxI/Ny6srsc3agY2P9h0KtIhsxxlj
	h807U=
X-Received: by 2002:a05:6820:c018:b0:663:4ae9:23aa with SMTP id 006d021491bc7-67722c5a7a4mr6830824eaf.2.1771592527878;
        Fri, 20 Feb 2026 05:02:07 -0800 (PST)
X-Received: by 2002:a05:6820:c018:b0:663:4ae9:23aa with SMTP id 006d021491bc7-67722c5a7a4mr6830806eaf.2.1771592527336;
        Fri, 20 Feb 2026 05:02:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3e38f5sm4749119a12.19.2026.02.20.05.02.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 05:02:05 -0800 (PST)
Message-ID: <7dddf37b-c8f9-4cc2-bd3f-1bff5cc398d1@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 14:02:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa/x1: fix idle exit latency
To: Daniel J Blueman <daniel@quora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@kernel.org
References: <20260220124626.8611-1-daniel@quora.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260220124626.8611-1-daniel@quora.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDExMyBTYWx0ZWRfX62f+RzsGk8F/
 AganN8hfr7iICclqenJU+TOg7UFrPaDEfMvgIvwII+nfIpYxa02kv0W9imQSFpBJ5uf10dXAgY4
 +tbof1KFQHZ3SOkIdRW8ZY1iP5CXsiNbrmO7CBItpBTnWYa7HzoARfUOLAPwXi757lQKB16qXZm
 G2abT3AJmvcpiJQ1p7Pz3iVmwaoHizJ2XKyO5Zx1yWE5lkdo2jayLmzPOPUH7wCPmROGfT0e4sW
 HLA4GXqIiS0s3dLE+LCDqSXS8AuwoLvjAv4MLc/UF2yxusDYUtXJ/AMUOZHAxLXDfriFyQ0w9zY
 44b5zwmEin9TYviFjWH/zsHTlgN3vRMmb0EThZrJsAMNJIJsgdoLJV4oynzU8R1Yka1Py+6auUi
 cFK8ozpGkEspP1YRZHMIvo5fV7JC/7tt//E/dWLcb+QDOW3q30uOVewO/WU/O/dL134YzEL9goy
 zsSXNAsFN0tdy9pg8cA==
X-Proofpoint-ORIG-GUID: mO-x6WPTx0diE4hrHMroy6Zf61Ki0wuZ
X-Authority-Analysis: v=2.4 cv=JsD8bc4C c=1 sm=1 tr=0 ts=69985b51 cx=c_pps
 a=lVi5GcDxkcJcfCmEjVJoaw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=t9ty7G3lAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=Wy8xLuAV8_BPkXRswWEA:9
 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=QEXdDO2ut3YA:10 a=rBiNkAWo9uy_4UTK5NWh:22
 a=CsAS6f0m0zARWR-uHzm3:22
X-Proofpoint-GUID: mO-x6WPTx0diE4hrHMroy6Zf61Ki0wuZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602200113
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
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266939-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[stable.vger.kernel.org:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,quora.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9D283167A54
X-Rspamd-Action: no action

On 2/20/26 1:44 PM, Daniel J Blueman wrote:
> Designs based on the Qualcomm X1 Hamoa reference platform report:
> driver: Idle state 1 target residency too low
> 
> This is because the declared X1 idle entry plus exit latency of 680us
> exceeds the declared minimum 600us residency time:
>   entry-latency-us = <180>;
>   exit-latency-us = <500>;
>   min-residency-us = <600>;
> 
> Fix this to be 320us so the sum of the entry and exit latencies matches
> the downstream 500us exit latency, as directed by Maulik.
> 
> Tested on a Lenovo Yoga Slim 7x with Qualcomm X1E-80-100.
> 
> Fixes: 2e65616ef07f ("arm64: dts: qcom: x1e80100: Update C4/C5 residency/exit numbers")
> Signed-off-by: Daniel J Blueman <daniel@quora.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: stable@vger.kernel.org

Konrad

