Return-Path: <devicetree+bounces-261865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OzkL0a9gGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:05:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB37CDDA5
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:05:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D7EA305F7F2
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D8D2376BD6;
	Mon,  2 Feb 2026 15:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jt+KJczA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ChtotNBz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0F2374725
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770044571; cv=none; b=jVIW8SwEJDtHSZR2S32Dn1kXW3ti7BUBdrX4ZcGRfRUMV6jKeoJQ7qplOukH7UtuaC3FIaKK9tlvLDxPN5Peb71f+wGnB14e4HoneUyeA5K2HKSQ878PcKZ6kKm4nQeCFHKrVHjw4KhUTnvfzlNyRZca4iauF/zu1JCOqCq+9dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770044571; c=relaxed/simple;
	bh=itfRJHDz9lJeyAF3mgUM3enz69pJ0fTjxJlcJ6nTLZ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c9vbHuBjaMQONdqpiPUGaLQCwq7LBS9bfh6iPVPbBDGhVDaBmjshG42SZ4zHOiBU/f7cdRrCieWakRQHg0LeOJpoC3/lLI1A9W759T62zrGzSJTbUVrvCMyGHVYpiXdFiEXygrFylGc1Zg3QOJd9COh4Tr325Vc2/ADGbdSPUeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jt+KJczA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ChtotNBz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612AtLc33916024
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 15:02:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4KMMiAEvQ+clJBW6YBPI9jpod8sif0Y2dqJxSGpD68w=; b=Jt+KJczAajZAU4n1
	xu8n9BUY7xx/RloDgMhmM7MIkMYIkXz1lQKXjFf0pKZ0BZnEK2ZewblbDCGD9Nju
	0U2CYEdLBT/cN98E8ALqgI4eKGBKtlwJLr4tXZMCA4o/SjBQsHvEXoY2L0yTtM37
	3prWcVbyIv42e26aZ8W+EQUaoy1+TRPkUnajqJb7f5h+arS9nOSTiSF6ymX8JKgo
	chnyULMK/O2wZ6qLKU0/t22jV/oNm30OE8MrQncy/bJ9RVNuLSzVamLKNZSoPYWf
	l6UhwPy7k28M4qpj25vM8YZNnHQoskcz8Her+5ZtIDSqjfoFNYvPYMB3GbmH5KRf
	cwQACA==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tkmgng9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 15:02:49 +0000 (GMT)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-668814cfb6cso55087eaf.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770044568; x=1770649368; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4KMMiAEvQ+clJBW6YBPI9jpod8sif0Y2dqJxSGpD68w=;
        b=ChtotNBznP6EDJ2rCN/ruDYfUmsHvLZrDXvchTo252MkU53Jd6DaoBq1dIfE0jPvsb
         CiffAyygriqzppPG8VwJbQAn6PhSkCaJm9bTRnaAuqT3H9fd4nCryTDi2F2WERXag8oV
         7fTvWJvRnFJJjB2LC1E5Jf5A4OoAsONkpLj85HoYjuQ4ESN5YBkODagd5MPpL9lBV92B
         6ZsLMSeDnaD478HOOwFZSjv3eq7NkfGo+ZeEGZfauir5oIsCKvltxo4REAjPYL/4q9L6
         Hh5wysJ3d06nRYVq9LVy50sEr8/DYWElya1L9RgmX1/mT1wtwPbKO7OF2/YGrLW/3E97
         V1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770044568; x=1770649368;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4KMMiAEvQ+clJBW6YBPI9jpod8sif0Y2dqJxSGpD68w=;
        b=ccTgnmIC3URcVFRTtq/zRvxey+oPtiJaz7uGqwzvL2r9ad2SYH50xTK+7yMMTtBsys
         1rqalVzYGt29oILsQ3pPBBOeJIgMmu75KQEoa2+WmcCGzIvVPkUn2v/zLZkznaou+7tY
         xNz4JilTIKinCkH20oVtqBreUGPgiw2zrCYGZ0qJGxlhrK1oUhfMBX5ulrOFCFrENIL0
         8jvY95LdY2TpsWPMeO8tbvstsoGhYFCCt/6JjIveZGLV99rAiym4+f9XR8pGvJI7xxPO
         sJGA9+nyUGKz78aQv+FyLmu4rVbalfoFF9HFRQnbLFlfyt60xlptMeOHBJRu9kvSdDq2
         O0Bw==
X-Forwarded-Encrypted: i=1; AJvYcCUp89ZTPk0RCyArk3JQR2vlLprKiT3NlodWO4fcUR2Lrhjxx6GQrDzUq99lx6DKnTVvpRMqV4W/vgFE@vger.kernel.org
X-Gm-Message-State: AOJu0YwuLfD5QJ4ickxW0Ld8zWD2nOGdkxo0PbIner5LKIQDeVqY0UA1
	5aIBaJa3Vm7cth1he/j8K7mtuQpSNCM06VK4YtngMlPmhZYU2Y+IPO3tawWu0bgHiet3dpARWpX
	ht90jU8tCxzCMwf70TL6CBCrELtyvqA0Yp/D3TgZGzBz5IUK/RNETWQ/7MDWg15as
X-Gm-Gg: AZuq6aKQOrne/7xgIaOgTOh4ShUhTkmiepbGTKiS8pLuho6x38iXda/6vxvyiuBEJ2d
	85HSkH0l75/QC7DxvuTc+Xq03q6vJv9uLJE9Nz6vZfs23W6TJCCwgf9ZpP2/OEZr1VXRstJVblP
	CdMhOu5w5yF9omB1ARTKMH+mxh5qjTqilcj2uqICpmgG1halxITNRu3FpLwY3JQrMGsx2vscp1+
	vU4GsljyyocfEv6TIhovrU2kIH7Nv0ltM6CiK0tKQGVbd4263JVVh3o6QTW2LugWjL8ViZV+kpK
	0b8iUtkq6FCl36KdnY5j6+lJRFZL2T5F9yqDH5acUEhLopItuwf+eELz1/S2fgRSF9gsYgjxZlR
	KaL8fwMdTN7rb3ca8RkRFKSvvrxPdHkV2dBqS8UuHNrFqfOmXRiUvENXlxveY3qX1G1w=
X-Received: by 2002:a05:6830:43a1:b0:7cf:da36:3d3d with SMTP id 46e09a7af769-7d1a536e341mr6027173a34.6.1770044563575;
        Mon, 02 Feb 2026 07:02:43 -0800 (PST)
X-Received: by 2002:a05:6830:43a1:b0:7cf:da36:3d3d with SMTP id 46e09a7af769-7d1a536e341mr6027147a34.6.1770044563018;
        Mon, 02 Feb 2026 07:02:43 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbefc655csm869765366b.19.2026.02.02.07.02.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 07:02:41 -0800 (PST)
Message-ID: <9d53901a-7ad0-400b-9952-ad502ea803a8@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 16:02:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: YijieYang <yijie.yang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
 <20260202073555.1345260-4-yijie.yang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202073555.1345260-4-yijie.yang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=TaebdBQh c=1 sm=1 tr=0 ts=6980bc99 cx=c_pps
 a=wURt19dY5n+H4uQbQt9s7g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=TSu30AdjdkAtlEphcj8A:9
 a=QEXdDO2ut3YA:10 a=-UhsvdU3ccFDOXFxFb4l:22
X-Proofpoint-GUID: kqxs2-qMSRcJPIETaleSN84LKH8Qz_Nd
X-Proofpoint-ORIG-GUID: kqxs2-qMSRcJPIETaleSN84LKH8Qz_Nd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDExOCBTYWx0ZWRfXzM14R04REh7S
 Z0i/p15e9xIkp6TpTl4Ybx4gZjlK5L/ieheV39XJn3nlASFzdijyjZY9KEt/TZPO3qFbGX12aPW
 ayaMn6U1wQejEkhvfrVpPkpE6TAmvyiEID2krtsGlzupvY1lZ/9jD2oom/fE/hgk7Cjk0R/OiOT
 rmV3PjuWzM9Zy1tmQkzv+Kn7sp+btyfy27l7TM6SLx4OWMq4VaRHLIDJDIzRcB1GXbaVfwxsZ5F
 yEq7xUi5DRhrF1PmNdF4RMOWITsD2nAIdA5Ovf002R5Uw5VCu5WNMMiGV4Xd1Jaj65LbkQ6RIwW
 egiV72Pd+9z9Sj1S7CsTkBxfNwG48Zxht2kH1C921KyoQ3NfPDslKUhNwB7TteVFhcjN36ciSy7
 b59jPE5NNQnPvXAippG1Ulnk1VXgjHZyvGM55avxnQimCqrIyljmrSTGMnphCdRF+y3FK8XvFmc
 ihRnGVwOhTpEv991z9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020118
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261865-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2AB37CDDA5
X-Rspamd-Action: no action

On 2/2/26 8:35 AM, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
> the Purwa IoT SoM and a carrier board. Together, they form a complete
> embedded system capable of booting to UART.
> 
> PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
> Meanwhile, USB0 bypasses the SBU selector FSUSB42.
> 
> Make the following peripherals on the carrier board enabled:
> - UART
> - On-board regulators
> - USB Type-C mux
> - Pinctrl
> - Embedded USB (EUSB) repeaters
> - NVMe
> - pmic-glink
> - USB DisplayPorts
> - Bluetooth
> - WLAN
> - Audio
> - PCIe ports for PCIe3 through PCIe6a
> - TPM
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

