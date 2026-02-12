Return-Path: <devicetree+bounces-265124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iA0eEOP2jWlw8wAAu9opvQ
	(envelope-from <devicetree+bounces-265124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:50:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0DA12F19C
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:50:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2DB703013259
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37FF2F6199;
	Thu, 12 Feb 2026 15:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fJAESe4D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SYOhkHtU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C154F2C181
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 15:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770911456; cv=none; b=jUmRNUBkxQRK9KQxYLyx2ADtxE7MrBCektJ1yOD0F7F42Nejx1TxH9fJqL/0ZNgINFZbk+v0lldlhmg9b8i5Qo3MbATMbrUz1NlyNqg+o+GZ+EPh89WuxjYss/LEInTrXNYk75NgULZRT5WlxabvYHrhNHzxBpfG5ujI79IomHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770911456; c=relaxed/simple;
	bh=CIzCTqkDNb3rIIkk0MbjcE/nClFALXCyCiD4DpiFyLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qPFNlZDal6jCL1hJrv9DHhupSVeH8x00p/3f1AAnG2w3gGgMFSTFtjBXTqwuipS6ZmnFLQX0avt4+I8L+D/5VGsFOJrHjobe/Nl5vy2IRfGofWyoeLXl0FMuJaXc7jn+61ZTkTUZgrcIGMtO3IbTL1PGt9ebEazmsZ/Quhi5+60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fJAESe4D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SYOhkHtU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CDRgFZ3943745
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 15:50:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xLYYh5xSwKeRFCrd6PmkUX/Duq7kpvYWAMXuNW4i5Dc=; b=fJAESe4Drp7MJGFT
	TFRUFXwBHvE2naldkBEqEJaSv5tMG2O+I26R/HLOLhHSgllAZNysQyP+X6RQrOKZ
	e2k6Wierh2YVAr4kWcfYt9XUfDzyrqqQs53yp63JAS6a+DaqtLibkvZQE/em6eS0
	wcSaljSgdrtfaIZdzPV1VDDTZDWLg6+5VfaNsmrsegwzu1yXzYM5IwML768VY/qg
	e6QrbNsp050RI2mKn7+kjDgRHjPWbIrtLql8cSbEUIWl289H+llnYfu+0v5VK9Nw
	UJjPExqm7TDbREa5j1nl3kbTGcUdxkMdku1xqJtXGF/PILf7PCPQXfiDi7poc7K+
	ZfiwEg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c90d6u9fr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 15:50:54 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8231cf56435so3960784b3a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 07:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770911453; x=1771516253; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xLYYh5xSwKeRFCrd6PmkUX/Duq7kpvYWAMXuNW4i5Dc=;
        b=SYOhkHtUHsymMNEWbXJA0Hlzq5CzITMs+/PZNtw/JgSLLvoapzWpYLRcXKCjxhQFPL
         v3JvEJHkIbslz7jxPdrhteWYq+TTU8b+EwXpsoPHAHt4LxDbSjnbl6Lf4M3zfzrNNF3J
         iF1cVqG4XMbFCupqTfEhYp7ukG98OHaQ7rQHRZGkemITuKM1YQjgBMafp28+8fSt9Bav
         8l5ZrPTWIZFhwsNcgblGwfmYm52lC69zw6OEuxhlHLVcUKwb3ln4AxiUq8xeMiAd54rd
         VchbJ2bkCniqF+2q+utj5hYMPMTYFGSud9TFMR5B0hZ2OncBJojc9r5X4YYNoLqauFII
         c+xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770911453; x=1771516253;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xLYYh5xSwKeRFCrd6PmkUX/Duq7kpvYWAMXuNW4i5Dc=;
        b=IN+NBHZQRmx/ECSMr/xz8OX56nOhrHhE2bJtyVLh+KVuEkGeFWKzF3crlFPOjArAIl
         NbsZuQLwl+NDB5H/R5GDAsX1HO7TzZY9dap8H0X1XGBw4j4nQXWtFs2AMWhlqZtmZjPb
         hHThx0yGS6WLA0ZpGGtE0fy6V1KjJNQaWrXBN6xzHuMRxboi9I/skavScmCJWRf5d0NX
         mJFfhk6s0Y58HIQrtBEebjG/T99UCiUNWdxKoUOoPHOTsFP4XkpGC3CNH5nylEQTYZa2
         Sg9I04tJtjWtCZJHu5DfNaFyhovCMYsHKB2j30OpfK0f0a2dMW2GAo5pBwt9Kv+McObv
         v0jA==
X-Forwarded-Encrypted: i=1; AJvYcCUawf4RTKzlWAey6I1m2OA7vkxDlmCqlCAW8Ue5RVnhvwSgEFo104muAeuisBZMcuu8dfKZpgNJp1+m@vger.kernel.org
X-Gm-Message-State: AOJu0YwqdLm63xkKDlZc1znemcExUrnd7Z0m2C8Uvo++xe3uRLsc9r9V
	uudXXcCwnVO4c+87J73tiBnVO12BDvDD8240HIbIKjja9a0NlfRQqxB3Jy98IkkvFnZx6GZhYLX
	f0V+qq1bgV8oFNAfnEWy+Zk7lb6Rv0lyxwzdBQviF1ELyr7dhMlrCa2SWj+HTz45w
X-Gm-Gg: AZuq6aIBlekw+cA2gISKDrQgbjO6op1wROAz7PpKV0q6UHLDA6coi7xzX5y/FuQcN79
	Ktqk9bNOjrKOJtoaHxxlhX+UxrW/+cgl5DmWbeOQ0fzhN5wI5jTE/BLrXoDrM+6bS9Djx/bwsZR
	M9tLQcvJQB2eH2SGS5cO9da61+5HAKDdDe5QXnCnXuUbdZvcQGuXjc4SmyAW2WDFYnR3BNhAToP
	t63blpL/p/EbrTezFwrxYSNprUubu6l0qlNzBvLHDpkauKoeNlZdyVoF24OZg92nIdHsC6pyLe8
	QVZyOMO5yuPNppNge7xyZYexMMJfXdKo1nm64r0Lys+nzVf2B9+1K0ERCSySlNM6FOZpuQynmfr
	VNw2fLbxS3uOxhpFOSgMWqMl7BnXVtwSMnc49Zq5RDXB3b/2IQQ==
X-Received: by 2002:a05:6a00:130c:b0:824:9f50:83c7 with SMTP id d2e1a72fcca58-824c4762166mr2818b3a.0.1770911453600;
        Thu, 12 Feb 2026 07:50:53 -0800 (PST)
X-Received: by 2002:a05:6a00:130c:b0:824:9f50:83c7 with SMTP id d2e1a72fcca58-824c4762166mr2796b3a.0.1770911453175;
        Thu, 12 Feb 2026 07:50:53 -0800 (PST)
Received: from [192.168.0.9] ([49.204.31.131])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e82fd32sm5301020b3a.53.2026.02.12.07.50.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 07:50:52 -0800 (PST)
Message-ID: <2d688258-2e2a-4a86-aa98-eca31627d418@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 21:20:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: monaco-evk: Add Mezzanine
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
References: <20260210103821.4169-1-umang.chheda@oss.qualcomm.com>
 <20260210103821.4169-2-umang.chheda@oss.qualcomm.com>
 <957d7896-cd01-4864-bf07-e6dbdfff1273@oss.qualcomm.com>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <957d7896-cd01-4864-bf07-e6dbdfff1273@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: TR1Sp9XCMY4BcmnENmDQJv4LtjKgJnGC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDEyMSBTYWx0ZWRfX0e5TdGTpKfny
 fgkG9nd5bckB+QwfiPE/Vu1g/9vBUu+1MbLwnya6PyrYWxODtqIjAVxOhLIdrE5dL4t7W8y1G5n
 TteN/Q3wAi2hcXiBgZUWz78blT8wQsgDw89HUHc7XM9tLiHuFLlavFdLBcu64YqHJvKjbnod0L7
 pRHKSpxhT2cxB73mICSxQ6EMMSkAR0R+cuVqPSCv07brEwRtWKxqYli85fnX/l3/oCl+qhozyum
 7DckO6Kx6ovgoiiARGqdjcbet2TDMzdeC8ptPyr3Ugn+AV/HwQdfU2JhjdOd6YrUWKYpUUkiUUG
 TvcerUQ90WcuN/+tja2MlgQr2AP3aAF4ejGcYK3oWnA6iKTKraQCSA8Hut+gUw2hSwC4Vgbkp+r
 zFE82SZibxjNuV9dPUPnYXXA0AepaH/k6winbdOsuWaudzw1eeLiNtBFLYq3CQTKfdo1LupQOOX
 rZTVUOJUmgOJkm1jVWg==
X-Authority-Analysis: v=2.4 cv=ZaMQ98VA c=1 sm=1 tr=0 ts=698df6de cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fSS5ttA6gTe5buUWvtuyAQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=Vjbjgj_5ZK18s0nR_PkA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: TR1Sp9XCMY4BcmnENmDQJv4LtjKgJnGC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_04,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265124-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CA0DA12F19C
X-Rspamd-Action: no action

Hi Konrad,

On 2/12/2026 7:10 PM, Konrad Dybcio wrote:
> On 2/10/26 11:38 AM, Umang Chheda wrote:
>> The Mezzanine is an hardware expansion add-on board designed
> There's normally multiple mezzanine boards (e.g. a "vision mezzanine"),
> is there a better name for it?

Does, Interface Plus (IFP) Mezz sounds good ?

>
> [...]
>
>> +&tlmm {
>> +	tc9563_resx_n: tc9563-resx-state {
>> +		pins = "gpio124";
>> +		function = "gpio";
>> +
>> +		bias-disable;
> please drop the empty line above

Ack

>
> Konrad

Thanks,
Umang


