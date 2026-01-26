Return-Path: <devicetree+bounces-259422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PmIIRY8d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:04:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A207F8663E
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3EC71300119C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3242D32E6B8;
	Mon, 26 Jan 2026 10:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LekYRQnR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="To+BtEII"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACD4232AAD0
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769421842; cv=none; b=oiaPVtlpUgG1M1GonQQrvloYxZ3IRKYWQYdAjCysEbs/8zGVEVZQywX517O0CkJzKimUO1eLnNPehLcbk7of+rhAvbwwOD6JbemQSns01DHbKV1ueNTNRQE+Jah1+1cYcPyPSL0TFAa752hSUOWcbzYpFvqAKHUP/AeHdqpHR8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769421842; c=relaxed/simple;
	bh=meshrWDVJOZ3rlxp3ScwScn64Y5a1eFWTegEA09CG3w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r27kGKlBE2oNT3J6/5S6EAhMDeiBl2V386X/Fh/ZtHFMi/L+HqzidWUAdKlGAdPKOEoP2sFx6Wzlu42KY/t7glpjUt1Vkm41f+cG5/e7bu6cA8erHLOvv4pymeCvVPxEiNo+xbQMa75W/3zj2RICTblBrLo7rtd92RDPimAsf2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LekYRQnR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=To+BtEII; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q8mS0I3914455
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:03:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZOQIX69Ikp2epaqXjBwljfi+7a4aJtjJnPqY5XIPFuk=; b=LekYRQnRkuTZ8hrm
	ZVbPzeyjvfohDGEIZ9e/RY8ut3xzjtd+WcQaG1qNIcijmIBQ/szoH/WYcZ2BBAA1
	2twZgsi2hk5fSHC6d8JSkzUH4ijbL+S2Mrem1RKIeQRSoMH4kcqx0iPSCI4vQXFk
	gm+JWdEyHZUBH5o6v6aTEF5h9mZjcOCszWatyoY3KvxukTa7YZiF7jGM5CN63YhI
	EtE++ubJ/StDr9Ky87y4BDm+wMoQNtQ1bW4KohGrcz77GzhJ443JPAXCoq0pHsJb
	wueSveiCNa48B6HdS+4xLGVwqPZhAPMgUNl8tAjCYbypi3zM2K3M+zRVVjf3kX+9
	aio6IA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq24m4yt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:03:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52de12a65so87431985a.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:03:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769421839; x=1770026639; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZOQIX69Ikp2epaqXjBwljfi+7a4aJtjJnPqY5XIPFuk=;
        b=To+BtEIIDTAGNgfgmeJCfSl9KTIqVd0Zg5X9bKCCVUzvsNV6U3qXuGvy2fSLd3yVHo
         IoUJra9gyJBLEbvrWeuS9WyMojAuRHvfbthVs01YosA6yXc8vC4tn9xXgKvNYYr3M9sH
         FiX7qEHQLyQe+SO85y/2dFAaP/d1ZCnlvQ54SmQG5vvo6W35fsiuvGhuB5TwJxrVz8Bd
         jLnhoGMnj7A1eSXuDV5JUVNF1gDw+koKqgAiVNww+Y0MgGimuJ4M9rkBFuBgTMJP5NqD
         jYnS5sx+5PcvK2APOsiULnma6X4zhpOAosHK9xBjW6pKRp9qFzE/XQgmplj51F3IW3Qr
         3WUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769421839; x=1770026639;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZOQIX69Ikp2epaqXjBwljfi+7a4aJtjJnPqY5XIPFuk=;
        b=kXfJUCsBoIPAtd32x6eQQqxqfCFdSM/+FsGTnVWoz4x/arUcdHzvRKVMoX5cvKJrrw
         aNns0m/+aru30GEYyF8FJdFUGZWB8bgFAv6eB/BI2R/jwYRo3jkrI7zAx/JhUPjMszfa
         NRBAXDdxG/p8Wr6Qm6RFC/YxJbH6TSosIs07c28GRC7q5DUwRePZBsBfbCx2AHuzStqA
         cSrtPQ3eA1euz82AXp6zE4P77/nIM56R7S7sn276Rfa8XCXbWQ+RenNLweFRc53rvba8
         1RP/HouXLsPAnnTlaS8cH5E5dvkQSGLLzpOBuL+Irlm0c4fpkHpfduYccmfJEyhVdOdx
         cXWQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4Eceuct2zNZctLkFLorI5A9O+gtBt8mEGcz4/bXdMlQOq4O/bhmHESNM8OVpUa1VKdgcJ9iyZ6124@vger.kernel.org
X-Gm-Message-State: AOJu0YyHHr3ulJmwvZvCpjWVsFT9t1XJY9r/j7N1t8z4R4uaxSAYng4c
	vzP9CE3SCcxTxCxX7S1DJBK6C/h+xnZZ30N6kBzibGbffyly5u8CWHWNMcRNyoVDubrQA4iThhl
	kKGwqjofyvbuNYMpqDPumPb9LjW7p9YE9Eo5Ms/Ge+q7YMiXJVQiRoe64co+OO7VK
X-Gm-Gg: AZuq6aLGlGzxO8pZZpR16lx/AGWq8pcT7Ou2BKf5q6HuXxh8P44EWe2QW19IxAbpJwY
	Rl1nXeV6DVoXELbDSYyRgkD80ELFMywtdUYsWa6i0Inp9ZURQAUM7YuZzr+Y1gdT6EyoLSJrTL2
	S8igEZdeoooyzcmQSeGLnRpoo9XV62+t4nvOUvpnw/dLYnLoCHDaWYwmqNPC0NOnbjuj/nZc0C3
	VjlxNa/DZuw3rLWYAbk5wrA5/WHBv4Ci9ZPgGPr/EqCvOkBZ5ew2lY5rI6A9D3lQJLmNRKswU3O
	aUmRIklmpWaAqi6Kelr8Y5ZD8tGiq2a6rEZoi5u17a7YL1YNS1vLlp04kWUC8VdTgFf6y/HakcA
	lM3yTcHtuRzsZEq2INB5o9W8+Q9OYksAilEQbRjB8Ld+JVMucg7AfVhjlSQroRGIGCPc=
X-Received: by 2002:a05:620a:1a82:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c6f957a483mr356874585a.1.1769421839134;
        Mon, 26 Jan 2026 02:03:59 -0800 (PST)
X-Received: by 2002:a05:620a:1a82:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c6f957a483mr356872785a.1.1769421838796;
        Mon, 26 Jan 2026 02:03:58 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b886b596494sm549272366b.3.2026.01.26.02.03.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 02:03:58 -0800 (PST)
Message-ID: <4fab4309-1b06-4364-b0b6-7ab1d61c65ee@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 11:03:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Add EL2 overlay for hamoa-evk
To: Xin Liu <xin.liu@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        jie.gan@oss.qualcomm.com
References: <20260125023521.3862114-1-xin.liu@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260125023521.3862114-1-xin.liu@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA4NiBTYWx0ZWRfX7t8wa2f8DUjS
 leQIx1mfdJWHBad5bJBTj09YMwTbO0LVU13EIbv6uDI4uM1ltaR98rV1BlC2YQ+jByia+bz2OkL
 FzI7yx9QRBttlleuzQoch/UteS1+KXi99Gh8gXS5pTVyq0bo+SSKJDduf5WC3pzJOga9jdYmr+V
 W7Dfi8Hd7abc0XGUHpiF1R/OfhagS4WJsOofgetFwAIISlaMw9pwd+H3gb/BZvP36CzfGcDxpf8
 mXKcDb7iV2W9i/+WH1oCSJBSy4uyGQY36s5RQgNbzxCTzRflKp20SgTNsIOJ/Szu4f8bBwJ7kRV
 3MqtYsCahm4+UJg3I37NtQuUuqLeee0UYHRYHxvDQi9ctoelr7bhcfkejT0CdY2dFyp7RY2Tnaw
 NyVu8lpcf5x/Gt6h0gaHv35wFLpFgb4lK4uN+f/OvY2NmAsUZ77teZUZLEEo8JouvoEWrvOq0fL
 3wRmNP7fx1zhG4dyLSw==
X-Authority-Analysis: v=2.4 cv=EsXfbCcA c=1 sm=1 tr=0 ts=69773c0f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=tPD64odK4mGqIG_ypxYA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: RFho6xr_CsDZ4wqHpUQK9n-MmZyTELb7
X-Proofpoint-ORIG-GUID: RFho6xr_CsDZ4wqHpUQK9n-MmZyTELb7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 adultscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260086
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259422-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A207F8663E
X-Rspamd-Action: no action

On 1/25/26 3:35 AM, Xin Liu wrote:
> Add support for building an EL2 combined DTB for the hamoa-evk
> in the Qualcomm DTS Makefile.
> 
> The new hamoa-iot-evk-el2.dtb is generated by combining the base
> hamoa-iot-evk.dtb with the x1-el2.dtbo overlay, enabling EL2-specific
> configurations required by the platform.
> 
> Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


