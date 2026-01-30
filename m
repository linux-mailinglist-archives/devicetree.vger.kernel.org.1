Return-Path: <devicetree+bounces-261218-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOIkLYKpfGkYOQIAu9opvQ
	(envelope-from <devicetree+bounces-261218-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:52:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 141E3BABA6
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:52:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC1C23050A08
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C2AC37E312;
	Fri, 30 Jan 2026 12:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hgh/ySsu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B/D3TUrz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F1737F101
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769777367; cv=none; b=bjBlQGrrsmXjbLywnHMjb6H23ysWVYtz2ERzdy08VcbDnjQbrKWQSgALQjL9s4ZCP48pDG6r0GlKdKjsrDdPjHk0Jke/9yxjQY76e2H/n7jP8NCtT+NAXOBaaY4O9OVMGo/UTJjU5TXVHzOGhvGIkAspeikoj8/aNCA8cfUDf3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769777367; c=relaxed/simple;
	bh=K+iBHGVfK1+Z96SDFvc/aRLaNcnv+Zzn7na8mPRopKU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZjL0zowPOpvkPbN4BnUKYyB0ZyZLiXhImdm4travjftpN4P9bMsQAOL5/Ab1fcZq6qNv+MUqP9hBcomEZ9Gu/qjcQ56xZZWoteWPRBxEXB/kAc4VyYv39WtHalA7zE94EMsaFcVVaXOAkIHFnQCJCfHKAUr1AZnTdv9MjVAHLfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hgh/ySsu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B/D3TUrz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UApFRc1022125
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:49:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yoR9Gqm/yFZjJ8eRAFItY0g4nyGdiEiUyHMrr9c4s8Q=; b=hgh/ySsuSv/wARBY
	5BjEzvP7KChP33QndGEej+gDSH33SLEKMfuWI5EftQQUFIRwFuAENV9wdfCn4+ZL
	ZNGHzDlH0WlOAiQLKhQvlzPHR2+2VCv25J2/SJ3Tt2+WEaJdNGThAN3IhRIba01Z
	3Ersb1iVg1tORqhfFuhgl3TqBPl906b9UAj3kt3pbCCw5sOf9RCOmbCbscpMKdIJ
	4HCcFSZmmGkt843ZFndD/hlbqCgCuDgOvI30VEm2FHRi4uquiECLjIVrkEIh76vE
	AkwrO/1iPOcTEUAL+E/IHENSrZZdFKFAEymJ6FCmkQrGGzMWU8lxVbzeGnreT2fD
	V7siUA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0e3kajrt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:49:24 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a7701b6353so22880165ad.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 04:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769777363; x=1770382163; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yoR9Gqm/yFZjJ8eRAFItY0g4nyGdiEiUyHMrr9c4s8Q=;
        b=B/D3TUrz3OjrhIMPAKeJJ89SrMoVLeozIqKccFYjDBUQw8eh/cVi+rlUBkHNSLs6N4
         jZRNCaO8kP2F8AjEVVhnwCDTYGODFSl4+x0ok31VPz8Jv8M70Z4c23+q7FozfPgELrQ9
         7WeBjS5EeFILr17eSR4O1HmbE/QGBgJ043nHsF406BjhuF0diQz19VamMKNA8YawK/S3
         9SI3xzjgYKt9FeZDI68nxNTYQdKJVo5Pfn7i4E/0oS/pcg5+L3bg1x1feehO6z98q4hq
         L6OQSABOI//bJc5aMdVMT0Oxo86VqQtiQy6aoI6aHeE5iZp63SIks6odHHkC1vws7nfH
         0abw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769777363; x=1770382163;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yoR9Gqm/yFZjJ8eRAFItY0g4nyGdiEiUyHMrr9c4s8Q=;
        b=ZUNAOO1tStRXPQ2j+nb4qFAPubspn4vvpC+Dw6SQyHYg14U/Y0q7lNjnl99ePKOSub
         SuUCTbDxuJE0YZfJ3QJuoZGqysKUi5fiBRADyuEx1mzaQVIRnPlqMLC5MB+0EXGzVfaE
         On3r2HmoJ8Y9HZminwyW/LbumrFXzJryMD8BstrXaqQ2worvdFcnXupx5E6ctPqa2dkj
         rv6KQytwkm/lgqL75HyUmy9vcrLtFsHOWexmqn28Yag2zITt/JPvt1NUPzm6PF5nv0Ti
         k258Hl2TU5PZOl7G2kMRfo7Z7exq+ePieRczN4pGHg1VTwNyckSedo4cmzXqpo5gjRmP
         UHWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRethDmOoFZ5k5ogIqdMFuVvPt9ZMJ8dsYxeP4UuMswjTdUDa2jz1AxnPQncuX5xMvVBIF2Z+urj2g@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt8nWu6RJ8RFRMCg6lOZ546MA3Ajl5unOF9oSTZk74etd1xe8e
	Y8RYOJ5qIOduWSlNQ6G7+/biFjTgUdEub/LXcovUJNeExAGIw5Y2MSWW+X0Zy7mrHdoJgJ+Q0L0
	vE1b4kww6oI99cYIeyi2sGSSh3+jEq9na2GAJ4/O8wn39R3UjaA8znsUl6ksiQM9z
X-Gm-Gg: AZuq6aJ6bq5/xDTfia+rB9WCbYkvO38XY6oAl370dqB58bewZX/3b/fSW6/+D+PIYzx
	Ux3wMCymHCiT5aRvGiL9RqENWASR3+coKbAjPrx/dFrYjsFn+lKZekR27w68Y6Ty0R/CJCMNnKw
	hD9I8iOMMcoGiQzAZ5ahD83dLC4qDFklATRfhpy66QcdqBzv6nqvhUIYzHg1xSNiBGQN4BnPlEJ
	Nder714H8LHGWadVrUjkTch63w3opLTkokEYcI3KL4ROXb18+lRsr9tCGFULFq/RssN15v5qd9B
	jhPx1BI96Lys2EhLBD8pRrSWHQMd9k+ofcnFAEFv+wO3H0it8FjMm5Kxd1vIHAYDtbhFeq4YoV+
	szyrN517No71yNlecnXiXhaYWcDgaqCRgATd1nOA=
X-Received: by 2002:a17:903:984:b0:2a1:3cd9:a739 with SMTP id d9443c01a7336-2a8d81667f8mr32460095ad.43.1769777363363;
        Fri, 30 Jan 2026 04:49:23 -0800 (PST)
X-Received: by 2002:a17:903:984:b0:2a1:3cd9:a739 with SMTP id d9443c01a7336-2a8d81667f8mr32459595ad.43.1769777362791;
        Fri, 30 Jan 2026 04:49:22 -0800 (PST)
Received: from [10.0.0.3] ([106.222.235.0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3b1esm73225085ad.63.2026.01.30.04.49.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 04:49:22 -0800 (PST)
Message-ID: <906e19fa-28cd-acc2-dec0-7833f672602b@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 18:19:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 1/7] media: dt-bindings: Document SC8280XP/SM8350 Venus
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-1-d21861a9ea33@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v3-1-d21861a9ea33@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=VI3QXtPX c=1 sm=1 tr=0 ts=697ca8d4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=6cH4IgXjao/mkWo6W7aGpA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=UFr-MfHxuXdlQTEX4dIA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: OzLKS5r3-Abn_e3oCRjiGmdtlSYicAXv
X-Proofpoint-ORIG-GUID: OzLKS5r3-Abn_e3oCRjiGmdtlSYicAXv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDEwNCBTYWx0ZWRfX38JuQT2nGDua
 hiR/PwL4mYSuY0U8SbkoDdrEjxG2sSX9NtW03nfZ53otaWy9yk9ubGox+AzTwpoxRwPmy8BRWzQ
 QPGvlcbCedAEzd5kRwvGVoN7jT4ynkAUuFdERBEhtWJbQKHPz0coDKtWHNaZKP88gBABSJO8+bT
 wsRfSj7cKDxDp7KMffLDOP+bTEh83xP4ZtTm2DseVGba04rUouCMlG9QCmRaP76UElcX3VQE1nC
 Qki00azyTX6+gOoR0Iu9tpq1ph+e+UanaYEzbYycEh2wdBZSjiFmvtghGyEHy2ucwudZ13pb26f
 WkUK5wjzb2ZUVnWj1YHzZM5nm0my84yVHRe5kxU8ge+aDFaSZP8HTx+U8g1KyDKmBgHT5IR5Egv
 nC0p3PyX1lZxHt4QfqlVAXUwwMl0GTly1pWCwv6D6REM8QfyWBEXtKHfbLMrQ6owsbZVNT1OudG
 83z/lTB//u1R/wLAceQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261218-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dikshita.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 141E3BABA6
X-Rspamd-Action: no action



On 1/25/2026 9:02 PM, Dmitry Baryshkov wrote:
> From: Konrad Dybcio <konradybcio@kernel.org>
> 
> Both of these SoCs implement an IRIS2 block, with SC8280XP being able
> to clock it a bit higher and  with SM8350 having 4 VPP pipes, while
> SC8280XP having just 2.

SC8280XP is also 4 Pipe.

Thanks,
Dikshita

