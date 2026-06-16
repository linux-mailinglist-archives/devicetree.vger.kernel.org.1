Return-Path: <devicetree+bounces-312585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7hIVLkpbMWqmhwUAu9opvQ
	(envelope-from <devicetree+bounces-312585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 16:18:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BBA690631
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 16:18:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=HMneu0pg;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=bLGZaHMy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312585-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312585-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 042D9305D8AC
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 14:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3661637BE8B;
	Tue, 16 Jun 2026 14:10:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF38536A36C
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 14:10:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781619005; cv=none; b=rvo9YXnwW4EOdMZIk8IjB+QaU1cMr7hFdaT3xsrkOtq39f/JTzOeqnaQfjlZWgYgYPjy3OZ9/MEY0rctayyxY9QubQnemGlTq2mnReIykRpTz7mvJSfMw8sdYyCwVBhQlCI8bj8gnDoXu/kxsJthutRN7fI56NHeD8oMRwDe89E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781619005; c=relaxed/simple;
	bh=KC0LAXSuuATuN8kofJWQOna/09xZpjJ2YqbP0CvMu9A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LtmjDA+2KiEjIUpDQyfV9Upv+qd7lIvPeb+oH9RgX+7OANR6bAkbn+DmrDyUkvZagr07B9rnYWz+D3ompov3g4RD5R8D3ZbxXF8HJs+dYvCCDhjWbebdscEhCQRBxTtHLa1TFrgkYTwo2QmoeXR7E6foRWKLOzaasl1TB9ST2Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HMneu0pg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bLGZaHMy; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GE0F7K3364999
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 14:10:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	338RdgWm1BitM42Z3JFZaugzdFiKYaCi/SPfFLI4+Ek=; b=HMneu0pg3oefqv1z
	t7RtBfX5ubhVdhiSGaWVhIaCKNBlwBOOwb4V1eSH85D3VpsLLD8ClC5b0swlRgsO
	ZVzl9vXLFIdFIKBdBWSOcUXp/Sw/cK+/hV9fslRPg8xiSQ9yIWco7dtcz0EHabUR
	KtvPlYVhnMExAfranlRDlKvU4VpQrrdevrrUIEWzYMMy1LT/eAgP7MXEAFqjlrKw
	OIFjiIm9RGAnUGdo9o2qxc3GRrI0E2yccL/ziPcSZsZFoFeVUSUZbOlKe8q8XvML
	Ew8y5xi+4pDssJaPwqoOpqvShZ6enwdYcRARU8nOeic8swpvNp09C32RwXgOjV/b
	cKLkLA==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4etx8kaufb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 14:10:03 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-71e89b3e998so159854137.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 07:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781619002; x=1782223802; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=338RdgWm1BitM42Z3JFZaugzdFiKYaCi/SPfFLI4+Ek=;
        b=bLGZaHMy+ZPqfbiSE00jhubVLq/D5Ku8774yh6nKF8Jx02rRpawrOhLCgWHv0ZY/rC
         4YFY1728Kkkay2gDIyZMzaFtuzpfvsYj23pMimUAdZxoEGIwA1GqEM+/QXZPGwQmJ+kN
         vUqrvTiN4wjwrpGDTXFZxAevU0/MYntmQev2rAObNR2F05H8vPVzAJ38lurR3G4yiTYv
         Gzjm4YtvNNmxWN3RXpV8BZxtkqnPdlRmvViCnVkGRF4pgY0Sly+WXhneGxtjFx6SGb9k
         hNDQjIWDUcXbXf9fRyzzbbOtbWjLvbjKT1YdGwT9lauBV6feWA1s9AdAYdCYw/RYqipK
         3cbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781619002; x=1782223802;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=338RdgWm1BitM42Z3JFZaugzdFiKYaCi/SPfFLI4+Ek=;
        b=M7gG6rSXjNNL61giXK20QQRYmpLPOqXIpe16bsCrQy/p/X63kljM+LJfm/CsOSQTX+
         02rScyEFcqO6vZxW8kaaeDDwyx4P+Vtz+18zIwHwPVsYNzuLiRv7nVup0VTUyiF/tIzO
         Shrw+pzhx8mn/TlV8WJ5tyBisxH26z+qRk1WlPLRoD6QQtCBbvjQ/N0Miu6WggHMxxKV
         NDPrCVQyIjwQMUwtWcNfqVp9uNi/MhrbZj4+0nQ4ZAqybUYBx/YfosQ143tKpFSuWvg4
         pXSNjT2H+cd14h1XC0PXFbe+QVzcKjxcGXvejQ3a9OLgRFbkt31EjuAK72VAroyJPjB6
         WGJg==
X-Forwarded-Encrypted: i=1; AFNElJ8kvUBYIyVOLIG8o2wp2OGGC79zJQS3PO4SW1WMzg76CknenjhUxIOqBkBeXOx73/W3aJoX/VLDy06a@vger.kernel.org
X-Gm-Message-State: AOJu0YyhRiuyulq9ALrVmejjSkCODJY77WxteGXUC56a+53fXPnLotHA
	fm+IWAA4wEOurTeD6Er51wveSZJJ9AVE9kmHhYjSGn7AqdWKVEw0ja/uWab1ARtdJRnsLgAEi8m
	E+WmoxWNUGolRfKgLGegL2lYO6nzKoD9w6Do1kOyKQPums90+gIGN7FSJXmxZRLBy/dxkVNZT
X-Gm-Gg: Acq92OGnd15OoKXwz1dNrEbAJvh9w3px3+8yLS+/hFlRjFDZAI3e0omN4hPlR/oJy+3
	AA5wvoJeJvxSj7xExfOM97mh5wEp0Ww3IchWGYFa6AKaxj2nQ8TVYBTtbsexdGetplgAi1hK7LI
	OcXWWYAjgbaUZMKPRNh7xBZDnZaoW01mAjBxXedfyehT3uknQ64s7wq1qWb/gJFRFSqUqrJ41R4
	D3CtoJbP4MuqaP+dvWVVmXEMSnxUmD1N4vJXQh9+9MNWn9VSuinIVVUzfKY25PAyAVoqrSjhPDm
	nTsEqC1btTaD9W2/AtCINU3xC0dQ5HRR8hfx76GEE9Gd62uRTHQPOWnCdnmgAZn3B96rzL8uJx2
	b4dU0gNc7+0bGUCXEZ1KcCfRb6IygDUmMJldmUs4MuzyB8w==
X-Received: by 2002:a05:6102:2c13:b0:62f:2f09:6039 with SMTP id ada2fe7eead31-71e88e2e405mr3405719137.6.1781619002164;
        Tue, 16 Jun 2026 07:10:02 -0700 (PDT)
X-Received: by 2002:a05:6102:2c13:b0:62f:2f09:6039 with SMTP id ada2fe7eead31-71e88e2e405mr3405703137.6.1781619001783;
        Tue, 16 Jun 2026 07:10:01 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb5318d8dsm631878466b.26.2026.06.16.07.09.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 07:10:01 -0700 (PDT)
Message-ID: <c3943f60-8d74-4192-9bed-1838e81a4a9e@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 16:09:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: purwa: Drop the Hamoa workaround
 for PDC
To: Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260616-purwa-pdc-v2-0-8dda7ef25ce5@oss.qualcomm.com>
 <20260616-purwa-pdc-v2-2-8dda7ef25ce5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260616-purwa-pdc-v2-2-8dda7ef25ce5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDE0NCBTYWx0ZWRfX4v7tcytvIEsv
 ZD5HSiWedEPGGyrnlQ+qD4W7JJIrLmP7wYtRYXadeKS9n5wJAZ0McLmZGQlFCjpda3R9koK2atl
 gifaOI3F/FuS5u9PWG6fx9PD8XkiEPZqBX74Cj1IMHPFaSpOq1WrY21pvVElLzBM70NuxKDu94B
 qMTJC45Id6Z5QiC8f2poKHVQsw1tYnWaZLd0Nta0JEj7riuknh18k4szlJJrCIg++6KKK7/P7+M
 2NvG4yCXRZMXmuirOZ4jNSNMjYuMhbb2E3scbzqD7f6Q4CgTCh8Y6oTuw6TKZb8b67BcBcYyEmg
 KA2+bHeElbgw2E2ZpoLPTx2LLF/7iVHrMAO6Hu8DpcxtZgk5FNQXunWFy+YGQFuGtyrcd6WkiHS
 DcD44HciexnzT6hsbkomlnJ8sFgApKyXndUoT2awhBjme+OwZd/+xUhQbW0NQSJak4kJbi8Asg2
 jElLrNabUJvQF3MSUgQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDE0NCBTYWx0ZWRfX/87hj7Rzby1M
 WRJAznLbzdhy/MzOdQkkfJNnpgOg6DjtsMOaDO0AcAYCZO2QQdaNNYKi3tZ95W46CDnRdp5iy30
 lqOC2oOdrhNQveNS0WGw+FF3CTGquEA=
X-Proofpoint-ORIG-GUID: U9foQDkc-2VnfrkaeWRwLkvpnGY9Iuum
X-Authority-Analysis: v=2.4 cv=dZawG3Xe c=1 sm=1 tr=0 ts=6a31593b cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=px_f_vAfgXbzbh29wf4A:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-GUID: U9foQDkc-2VnfrkaeWRwLkvpnGY9Iuum
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_04,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160144
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312585-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:maulik.shah@oss.qualcomm.com,m:tglx@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 47BBA690631

On 6/16/26 12:27 PM, Maulik Shah wrote:
> X1P42100 (Purwa) shares the X1E80100 (Hamoa) PDC device, but the hardware
> register bug addressed in commit e9a48ea4d90b ("irqchip/qcom-pdc:
> Workaround hardware register bug on X1E80100") is already fixed in
> X1P42100 silicon.
> 
> X1E80100 compatible forces the software workaround. Use the X1P42100
> specific compatible string for the PDC node to remove the workaround.
> 
> Fixes: f08edb529916 ("arm64: dts: qcom: Add X1P42100 SoC and CRD")
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

