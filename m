Return-Path: <devicetree+bounces-259859-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFXEHMWoeGl9rwEAu9opvQ
	(envelope-from <devicetree+bounces-259859-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:00:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9435C93F1D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:00:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DD0FC300252F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:00:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CA5434B195;
	Tue, 27 Jan 2026 11:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g0VQpZXH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ej2mbv26"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB49634AAEB
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769515199; cv=none; b=GNCSzlC5Im7FTKXaaRkdtFGNc+xUlRcF2iKhuHB1zaA7YyChK/7JmjZlxxwcJE4iD2K1g9eT9T209WqSdmMUYuHhBRraUYU+Dz/tgiGitYrdA4QhrItlxY2Oxl06hUDzZERXj2+iNwouOomXnN1qoxEEQBUOybyD00FgF27GPz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769515199; c=relaxed/simple;
	bh=uvwuvYnGonatQel0fK9gL/WyHSq/F9I+fp0Rr546Ldo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E6Kxj30Y/IYvnauw0CHPaxug/NPh5CQRRNyCbCgHd+NIggzHeynmiYPGPRMKhEEVDkDqLrFxnooX5OkrKerTOXWJErfUaf8hUgT9nKXnsBrxuix/fMExrmI8GqCYwS53bZ+/Q79pDer1Cy9p6KiDdE0jjl8ydU3B/zj4IX2X7WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g0VQpZXH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ej2mbv26; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R87KUF2379287
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:59:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5s7752vUzCunnbec8GK0Hs8A9Mnfaqxddy+qpoUA+5I=; b=g0VQpZXH1OvXxPhp
	Gxon5ZNi0AWu60p2n+uz1R5AQ2HvABZmVTpMP7b8J+6VORrlh/yvIjwRJaAqzrXF
	9lYJiudegStqXaxjaqshy0J80hP3HtceGHEwfuMu2ZqiRB3IoQczqLWuZfhKAguK
	XYxI6Grfwsi9mVU4RnVYwB/bOWJxoP+wlqHyJAIpg1GkbIxzovVTBSZX1Mw9ToqY
	5b0MOAwcIf2MVBk5ZqODlK+SBNb5DnWcvs8PEaR+mVPNWgC1waASqH2dtuiP4tbf
	TgIWJL94z26I9ciQCpB0oxBlp0o0TCsKGxpZstETGDk5R2XK6narYAPrYKAUJFXg
	P8aikQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjr8rw6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:59:57 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8946ebb51a0so18082266d6.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769515196; x=1770119996; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5s7752vUzCunnbec8GK0Hs8A9Mnfaqxddy+qpoUA+5I=;
        b=Ej2mbv267/dMM4RA4dBEO4P1tXyStxoXNhc/9Y4iQ7vmrEV0wmJUYlsF79C9Fa9Z4L
         vHSo9mGyC1CpmAvQ9P2S0qR0B/+MYNAMYptzCsk8Q8r/BiuYgdMlM6hGcBG3YG1yA/tG
         PerQrwIoxOFKL6JAs3xwiINC7ZbLoICQHJI/pB/rIMxzl+p+KQqHXhrV0bcIARUssC33
         qcHoQPoUEZ7JioqlRgnzphhpgOQkwayP6Wy/i5+JtxLvKpztz2RqIh3oX50ZTLtuF2my
         FCHc6u8dp2As6dEIxwOdI8ANnG+QmPBl+OcuUx84+xzI0F7PqP2rOBM/7akApWo82+Ua
         7oiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769515196; x=1770119996;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5s7752vUzCunnbec8GK0Hs8A9Mnfaqxddy+qpoUA+5I=;
        b=LrVfoLdz/wdtUC5dq3BF1XcRX+jOVAKh5cBeXWt8c+wwEW8gHZsBGFFgzbu0XnW+hp
         v/FaH1lM0UBZ9LMp/pPNb7CCOuvhzkRvK0yteR7d5WaCoAYQs9bY8/gm94vQqMoKvpzq
         yoMJGd7xtVWHoVEmSHHA35yOP7ZOHO+zTjalsT8UbXdb3MS9dRcgEcnIDpWGvMnNUuU4
         OmlbYJMZOyNwz255LxSuGknc2XpO+r7txtvYfa5CBZ2nNWbkra/Jb/zXwH9Jk8i8cUgL
         rG+8447dSz7tDgRjubMYwKK6jb3qmck2waDs1Mcf5/B6pLo5KmoQKZWniQSVsNHruM3u
         IjGA==
X-Forwarded-Encrypted: i=1; AJvYcCXOZXG+aZlDVO/yab5BH1G6uHetsslgiH0xD2RVX6xvcAETYIL4vodk+yL83Zd+lANucezUolHtDxvT@vger.kernel.org
X-Gm-Message-State: AOJu0YwC8xzs1FIgv/Gm4hP0UEDEbqYyBgxNUEU2ldfSWYO0FmgRIsou
	VYWtzsKNF2X9e6Oy75h3OdTBmlGXhAOiYvCsrK2ZiG408w6hG8JpU0JjhaKLrYdD7VLobZoSXnq
	ZCvCeo8BGvVsumjYVzokZdYT8M4K2xrtndTp2umbNAmilzGrmLHO8LDRxxGehYgMs
X-Gm-Gg: AZuq6aKxJ12Rp4TB9uEL7OjluFtoCqDc2Jk+/2Vn/4xLLoHpOwRHPnSeAt5i76nZZpv
	MElBdd6uZtVhQwf54XRMajHR9tcsgeFYS8I+9DzPtrN4dDnE65Jwbv6rBWI/UeciJ9lm8GZC2cb
	hrPgP7X4WfYsUiqRbpJBYPouAPf/XfXOz6yQ5nqc69DIforNS3mZj1Q/zunFa7me2eb7CFkBPGm
	ryfsWWRh2djHa6E7bOfUCnpFx/arRWzE8CrkBcIFvsQFq48/1hQrshsNLLIbOqwLCtHuXmHVO1e
	zHaPxtwpfcSYLykHd/RLWvCjn90FjA0Vq5HvCsVmE/w5U42LRIA9DMCN5ucmvsE4t59d5eSszyb
	KQiFdODkkShRCbJlrOHai/D5NdCgO6fIOqnIdivSBjSOLZFUmEW0vLTGJX51f2X3umhc=
X-Received: by 2002:a05:620a:4084:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c70b90142fmr122497585a.6.1769515196317;
        Tue, 27 Jan 2026 03:59:56 -0800 (PST)
X-Received: by 2002:a05:620a:4084:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c70b90142fmr122495585a.6.1769515195838;
        Tue, 27 Jan 2026 03:59:55 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b418494sm793507666b.21.2026.01.27.03.59.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 03:59:55 -0800 (PST)
Message-ID: <99c8da7e-0576-4ef7-a84b-547c6073486c@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 12:59:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: monaco: Complete SDHC definition
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com,
        srinivas.kandagatla@oss.qualcomm.com
References: <20260116214354.256878-1-loic.poulain@oss.qualcomm.com>
 <20260116214354.256878-2-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116214354.256878-2-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: php-gr3TzsUrqk1txkXh84Bjxntto1YM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5OCBTYWx0ZWRfX8K3nm16R8aNw
 9dJlDOHWBIjsmEfB5pRvvYH1qK0ng2Wxb9eaawsaLuRKfkxjn3yRrJDzEfB1QO8aU35JujbZIiY
 ex+NOxXRLkaQGJMCbW0COMqfeLm05LU+ZMzb5AdXtc3pEYomqBg/WgdPRkFcU5Py727tzWYZAsB
 EJ5S8Mc9KraO5pC/N/yqeUYlkJ5YGFA9lBaMj4M1bIs32nKb1JtofHxDk8pdq3KXaF8kXMtdDtv
 zLTGF66mqVpjfWE8ToeSXFH1tt68Z9/5P1mFW6qsI9+YuthWYOfM+85E/byozyFiGPUpOf+htnx
 Dn2zQ9bYnAb1xmfoz3FwEFicXVyanRDGRK5vEply8STm43V4iDjSRU0pqsXGUw2zyojSKMk2fNI
 CjLgzdGwwAi1XIFoW3czW2Gn1q9Yw+H08pZ2zvBIJvTgYbV9hIiSWkXvv/95pW/Ivxv5cmREs5p
 Y0Hg8GKkdgmm25hDR+w==
X-Authority-Analysis: v=2.4 cv=b+i/I9Gx c=1 sm=1 tr=0 ts=6978a8bd cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=vtxEUVkT7waMBiOsAPUA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: php-gr3TzsUrqk1txkXh84Bjxntto1YM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 impostorscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259859-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9435C93F1D
X-Rspamd-Action: no action

On 1/16/26 10:43 PM, Loic Poulain wrote:
> Add the missing SDHC properties required to enable HS200, HS400,
> and HS400 Enhanced Strobe modes, as supported by this controller.
> 
> Select the proper default pinctrls.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

