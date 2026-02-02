Return-Path: <devicetree+bounces-261770-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YH9zFiSFgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261770-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:06:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EE906CB74D
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:06:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68AED301412F
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 11:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230B82951B3;
	Mon,  2 Feb 2026 11:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U/13cqsk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X2A19VOM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0594835DD09
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 11:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770030021; cv=none; b=tLZZiB/lHpMrtG2iYuJQK6h11kZXqXAWel2YM3/rM1gkuh1bHg8KR5aJIJ05gtE1vf77+KR1h16xw8nLBJfYy0EysK+mCxOctFD6d68m7EU2qq5BsRs9YY0GiuQ9J0QuGKp1A75bK4DKtBCsgQ2EwEgxeYeSHCIoAMKdZ2CSGzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770030021; c=relaxed/simple;
	bh=rDNg3RNfurGN1Z6oV8ZAzB/LQiPiwhWEOlLHnxUvaWw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NtQIOsxRKpvLDz46tRdbLtKuPXHahWaWv2GuN10o72QY+gxhpQRBILoJ//C5O0H/g3vIQi9lK6WggXKHQxeTciIDMwZB+7ScV8t8K/evP1pxk6zvwyF+m9NO2JgQ2hmUvEkd1E58y6MVgH1ISQE+nqz6rIEYxWYGcKimMrqzocs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U/13cqsk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X2A19VOM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61283sx61749779
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 11:00:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K8nl8n8+hpRgD4+NstSwXyU0r/XY4eYaf9Gky0MTgSo=; b=U/13cqsk+FJXMZac
	3hyJSrD3uiPA5kCpemopxx6Gz28WT49/Cra4/b37224uczGNuEYeKdFnF7NxEZmE
	HDVAlmSBDC4D7xaYbHmBpByep3jHWdzVk1FE8KtjFp5ilJNyUodZPUmjmhRqINqy
	rSRxE6HxxGPEDc7PIQrp25dNez2SYniJbavSmuAwMjOKJG3h0bIzp0ck29BSzKth
	HRNb+wfS1zLjO15MsehX8XKdrw7OrjJ/Ax8vRKO9Z00izkm3hEpbBKXLlijC7kRQ
	3qzA/5o62f9n8L7JUK7fj1WRdOGJn3qgHBxq08KaqOYpKYCK6mgXgrM6GhWXGAMT
	eVKvQw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1avnn5r8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 11:00:16 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8946c23cf90so17515226d6.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 03:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770030016; x=1770634816; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K8nl8n8+hpRgD4+NstSwXyU0r/XY4eYaf9Gky0MTgSo=;
        b=X2A19VOMi8YrTh+JdEOdSnfpKrEjMMho+uUXYgjRgCsFy/L3JjcTBir63X55dyxI/Y
         o8lfiYk2+kCFAlwcbzLxS6m+FwGvaY3u9C+ts+0XfUrt8EHY2c9qyIcs0ZFs8lhwp9NL
         ZoIoDakOmvU63lrKYhuTla+vnjB+0uopMVpzumbXbvyhu4wO5s9+PyGZd1tbGm1mmZ8e
         d4IOaDfxgMGmqSniR68CGmTUmeuddMi4GKoeQq0VzVAPswejNGOeoJagjGWCg3Opay3L
         Ab91aWwv+PpkzBvgLDGmXSvn9dPWmUUf/c0ehO1cmhjhS2TJqoDUADIRdgygIf/qPrmA
         R0lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770030016; x=1770634816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K8nl8n8+hpRgD4+NstSwXyU0r/XY4eYaf9Gky0MTgSo=;
        b=Nkrsa6kJjgMyvBsM+FgIDe0me25Z1gZIA7bb95Kp7h31lUpQdl7ZsKBsaQmOk+wCeX
         StWVkwlVUF1DPpnBd0dPJP2Z/JXOghvn6nESvPRGZhB34g/303do5WGgXR3ZrrROAVFR
         siFYfbvFGYDzEUR7uJmc5UsLAurWn/s2Frbkqr+nimqduclxYr8rQwDEjkwch1XMkVVH
         SqN8wG2NXulak4MOkb5tXWFkvSI/ebxubEJ0IccvyCxicMZFmNWGD8mmn/CbBO3QAstx
         Sl32+WosL4iz6tmoI7LhuWVAjVgAFezIcEp5VCR2xGnLEDhSn0ziKPPosF1lsfctfR5Z
         x8+A==
X-Forwarded-Encrypted: i=1; AJvYcCWSArVYQeHleZRpZ0A1UK/Z2R6X4QXMFCvWjXST5gHp9UDalqGk2coHheSD7Sot3KzoBeYKrnGhJ6wX@vger.kernel.org
X-Gm-Message-State: AOJu0YxaUzEGzx+xMmfJXBzuyGN2QZF1/R5v87K1SMPg/n9w6cvMpHBj
	azWWOQIbs/UyVS/p7ebUCwTVYjzkf0PUEA/H2T8SXDFVyZNgOC6rPRcg0/yxXgpYuOd4O/m6pvu
	aXEOr4AKQzccax4FEjUrLYZARWO71Lwrh/d1/js0AKh7S+T2v6A4NBThwkv2r0FhP
X-Gm-Gg: AZuq6aIZC+SF+9hpvfGmZFBOoh+9Q1zbpm+1293RL5JfVXJNJM9wVpUM5NlKMHSdV0O
	b8gwFkTOqyRAyJ+z+qqvKbSfKPGHuaf1iqydxojBsFsSDe4yECfX7lzhzF5Wwe2JTzq4kDmfQdO
	1gvQvkmrporovSWghgLUBEliCBaNRLNsTPp45eECqa1/WJHBvHMQHg43Dr3598xNC/wchQFSPWf
	olM4kcJg/Dwmeie1Xn4rb0l7zZ5Mw/wLTIhnZWr1rnlOhvHHbc7S10Qi1eqXikhPg81/W7xXk+C
	V08mZ7vka3Mlong0HfjiO6sNXaFna2t7//Bq7GtHkEUU0cd8UhwOmNS/9SgyY/x6lBOESIhYgiR
	YFgyahsIRrW/H6TrQ06FqtQXhZsXMKQ7WJCFaj5QP6amiJRfZCoGE4JcFslx3+tmwIg0=
X-Received: by 2002:a05:6214:8009:b0:894:e086:e4bc with SMTP id 6a1803df08f44-894ea12bc69mr114323706d6.6.1770030016093;
        Mon, 02 Feb 2026 03:00:16 -0800 (PST)
X-Received: by 2002:a05:6214:8009:b0:894:e086:e4bc with SMTP id 6a1803df08f44-894ea12bc69mr114323166d6.6.1770030015295;
        Mon, 02 Feb 2026 03:00:15 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b46abb3esm7641208a12.32.2026.02.02.03.00.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 03:00:13 -0800 (PST)
Message-ID: <57c2b126-2620-4fc6-87eb-31b4f8299dfd@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 12:00:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] clk: qcom: videocc-glymur: Add video clock
 controller driver for Glymur
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260202-glymur_videocc-v2-0-8f7d8b4d8edd@oss.qualcomm.com>
 <20260202-glymur_videocc-v2-4-8f7d8b4d8edd@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202-glymur_videocc-v2-4-8f7d8b4d8edd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0VgJYBwDEAUfKfLwq5mZJXx37ugs98aM
X-Authority-Analysis: v=2.4 cv=bPMb4f+Z c=1 sm=1 tr=0 ts=698083c0 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=d7ClhsmVZ3m4v3ji_18A:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: 0VgJYBwDEAUfKfLwq5mZJXx37ugs98aM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4OCBTYWx0ZWRfX9BDW5yCPrZYr
 0QyhI6+AWWa3nxWvrFPf+B1mdjo75qfyHXYHpgyVIiK/rR/N7ZEwHg5AvTj9OJhzpWTZmEABv/0
 WaROS/LPOj084MZ0NIcp/nnFiUGNwjMWBIRZbxGvI5C381J+FtKefv7sfw/68XRdtWwSrhhLU2h
 HjYvpucLRv8m500RTT4hbO9KjSwyiik2L7cw+951YO/1L7N2hFhRG1qeBdsZcSgkq0ND6D2B3bj
 G5raMaMyuP6k8IxTpB0TQ9ZE7t1dCrKitOuMHE2J2uNiAeEDBoHh7DToj6JRsvaQjZuqnKWPAap
 2chB71o473wPhVbBUC5JlySxnn2DyovVi13U7ZQFVR1woWaLH22R6POCoClpg7YWYQcuC+NPtRg
 iLITPZu5cwSu94oyIOD2Wyg0Gp05uYUgPs1IpOLlaKCsR96QKU2i7nBp9lI94t3xZ3QKcH4CJ12
 k7yvrQLzzrfi4xMGhYA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261770-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EE906CB74D
X-Rspamd-Action: no action

On 2/2/26 11:56 AM, Taniya Das wrote:
> Add support for the video clock controller for video clients to be able
> to request for videocc clocks on Glymur platform.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

