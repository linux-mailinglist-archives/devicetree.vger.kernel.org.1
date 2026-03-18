Return-Path: <devicetree+bounces-277112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIFfINB/umldXQIAu9opvQ
	(envelope-from <devicetree+bounces-277112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:34:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFF82B9FC8
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 993D130154A4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B1C136E460;
	Wed, 18 Mar 2026 10:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="piPaVyre";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aimiD3UJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16666363092
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830032; cv=none; b=CGehc/gWohA6Sh4u+pCZSPw15Ovl/kbaMw7v1hhVqxRZlhM1t2cGnCiwqYaz6L7sBumAY2oQ658Uvy2OEKkrvuZBrx9ox5rf37BwQqvmCNki1WIAW1Cnh29l1OUVaDjuRd9ILGBBkfPCG1pOSK9tTAS9sStW0BN1u/qShnJpGyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830032; c=relaxed/simple;
	bh=nrzA0Q0Pn4h2XNPHNWL6htCI40600vr76gMy0MZB15I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V6KInV4VtoNpgCazSxn0rrQMatvnwXmuXbdnVUoBu289SJmskjudPCk+cArtfWJ6IgBjsxMVaYzfTAya/2/c6LTko71j6134JEPG8xw+77MxNnwkbkF18febGlkPvoFFJhcAW4lVgom/TsnlJrIhtFav+KAc5KiUEeG4NaIBhsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=piPaVyre; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aimiD3UJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I9o7K4402852
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:33:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OkZs03EOkQ3sZ7bZ2/BT7q4+P0uDk/ykrOdFIVHGRVQ=; b=piPaVyrebycrV8GR
	SLWZjm3O1wJb3ZMSB0s5KVKTBlpjGPdG/tYNk5+i1wsZVYQwYQIaMZRZd6eUIJsf
	jkps7h8QYObugaMeYk9TzZSbgBMC9l5d2WN/P7Uz9D0r1R89EVZiEr4tP8edTsDG
	PDq/jH1aYRYM5CrxQpysi1rtxedmqyAknFlPMddPpT5+cAa28CLLC+i6gNChJFnM
	MXxJ+vIlFjMvKYebp52U5/PQbGiSJDV6+59oVEWm0pFWh8/hiMFqxqHWLQr9w79M
	rWQdOUmLMm0W+PGZV+VP7IlY6wDGmtWYzb9NlIav03F1JpUb+sbL7d6hPe4rRZQG
	jpgbmQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyc4dub17-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:33:50 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8299499d582so23813603b3a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773830029; x=1774434829; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OkZs03EOkQ3sZ7bZ2/BT7q4+P0uDk/ykrOdFIVHGRVQ=;
        b=aimiD3UJOvcN2YGlZo94xDFGaBDcK311pwJ2Q9lJ8vn8ZHtSDY4AOSktO0MpaeHbHN
         /PNrXE/IM8mwnc/2yUgfrDtbDe7os1X/gw9S0md7mtfwA6dcbbNA/FaQiLGKwrYL/K7V
         RHCRrDdm/OMoH0/vUtChg8rxQpiV2iWBKBJmX3gGVifn79oGv5YPwVcNMAJLEq50UCNx
         zUezw2vUwzk7GneHIPrTSPUmTb9tKOBwzWmUiJorqXI4JWL8xCPxzfDG08T2R+R1U9Vw
         x1//iaPcAIttJsvyTo9I+b1J0USl/jJ2RPqIXNS7W0nC1PxAuHOazpuiLxUd5NywLXXS
         MYkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773830029; x=1774434829;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OkZs03EOkQ3sZ7bZ2/BT7q4+P0uDk/ykrOdFIVHGRVQ=;
        b=L1PPeY6K1kKoNyMls2h4LWJ6/3tKzaOX71HwNecaJ9liimrjc01+HsaXqYUrA01MC8
         UU/O3SnPiCEB9rAy3BMaMs+AiwC/rFt0WjshfIBTj+5FSVBm50khltuT/DZpZVfPSPjB
         75S0eIJcYjOpPmwOThgq8aC2n8WxwNVBNOiTDdYIgYaYTDEDPY9Gs36FfM5Q5oeFtNgM
         khaq114z6k+hw675FF9bYQ+lx6bsuJHIBUaoArpZKT6NDu/wSMH0FZnnRbr6fpybU33O
         tRk0F4uv6gGTr+OXVfcCais3KJf7nojNH+AEcgHPl3MCwYebJU1pw/Eas5CDQgqhVfwW
         J0iQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9hmIlsDA+O/xkV9N7KII553w8XMB7Ws5j5Ty4FzWllfFcGkEWQvrI2BVTGExa9GiCh40OhkHo9d+H@vger.kernel.org
X-Gm-Message-State: AOJu0YwYjP6iUrhq2V6IZKd8oqnfnT5BXgngOOSbsY1pxGvuVFT4DtUM
	xZyK1+NOmfQF6EWm33urjr5uH84wsw/+9t82+NyTWatTgPz1/4mCwog/FWY1CYWGAge9AZzN5kp
	w7BHuU9T7/dg2vUpjItnvcsSHF9JpS7sHMtw9Q2tZvbuJaAIyPfjOW2eGf39ApuFK
X-Gm-Gg: ATEYQzx1STyyNxi7jNpi2k9Sur5U0gOVumv2tDXRVrp65LsKFGqt+46sWm3J0I9zMjk
	mRxYTuTqwPCJ1q4MiKsD4azKJNRNk/oQ0Sfq4M4PchhINNa3n6alBeBl7BcO5LTIX1mzNIEib/y
	OjOp2W1C/91QPdj89AA0KjfiABMUqfYXec6JRPMd7QM2L1FgE/ISX1v/2b29oRqcOecMmTPvPqG
	tWT4sIOJGgcnSpqdt/ioYHvTfDJlzQsmd3T1G94DyzIEJ0fiG9oIoanu6S00YWN2p3KwDbTPFMY
	bAMJExyxgKpTX+S52gqKlKN0KwA71xEeLhpYCbbLzKqPx3YZi8L7Xhit4uqQTtvrZu82txWA3yb
	gN2GPBn31QnGhOz5jxPWnDDVcB528k9IGrNeVhiRg3WIZXdGXeY0=
X-Received: by 2002:a05:6a00:990:b0:823:1c5f:1c43 with SMTP id d2e1a72fcca58-82a6ae51517mr2674227b3a.36.1773830029098;
        Wed, 18 Mar 2026 03:33:49 -0700 (PDT)
X-Received: by 2002:a05:6a00:990:b0:823:1c5f:1c43 with SMTP id d2e1a72fcca58-82a6ae51517mr2674196b3a.36.1773830028623;
        Wed, 18 Mar 2026 03:33:48 -0700 (PDT)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6b56df09sm2355266b3a.21.2026.03.18.03.33.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 03:33:48 -0700 (PDT)
Message-ID: <0ff641c7-4218-48c2-b93f-978a3915c5a5@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 16:03:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/12] dt-bindings: crypto: qcom,ice: Require
 power-domain and iface clk
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Alexander Koskovich <akoskovich@pm.me>,
        Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Kuldeep Singh <kuldeep.singh@oss.qualcomm.com>
References: <20260317-qcom_ice_power_and_clk_vote-v3-0-53371dbabd6a@oss.qualcomm.com>
 <20260317-qcom_ice_power_and_clk_vote-v3-2-53371dbabd6a@oss.qualcomm.com>
 <20260318-precious-qualified-oryx-ef619f@quoll>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <20260318-precious-qualified-oryx-ef619f@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4OSBTYWx0ZWRfX9Gfr77OouijF
 Q4lzTqyN1gppo8fL9bPA4o8T+dSoW2W8B0RRe3ycFy5d3E5bDuM2SfNSddWeZMlJnayG/uxYYyx
 mHTDHGhudH8rvUoUpRbKXaWakMBDEpTnyZuQ7pSgg4AoW8+XV7Np7VPFltpBv1NwndbmtdC53Xr
 1WeRY6DHSmujnGgEzzX7g+mNz/8QX8N+Ke6+8ecEVAny0kDno8n35zIBb4rtacv54TXdNoYs+Qm
 7Ea9OeRAG+r7O2JpmQyDIxPzfXRAjbd2BCUeV9wDTlrN5XIUfOMlACT8snuhKY4aR9OrTVtJyBU
 /Z20txs93oQ6FDXw+fiGDqXuMsI3PLRTpOsgTT4PJA15UrJjvTpC83qNa8HLJmOiJZZkbUzVsdY
 TmF/8ZbSHSiYgtH6lHIOBgqJyGJC8kEukkHQhLC951mhX0aqyWunGtWPdeCpJwxjm2d8qHUWzpY
 X6bBLwJEqw5sV9E/NVA==
X-Proofpoint-GUID: AwDfU408BbkqP3RXZa_4k6gP5k0ONi6I
X-Authority-Analysis: v=2.4 cv=DfQaa/tW c=1 sm=1 tr=0 ts=69ba7f8e cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=RpU2Pg236iwgMI6ZwYcA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: AwDfU408BbkqP3RXZa_4k6gP5k0ONi6I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180089
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,oss.qualcomm.com,chromium.org,google.com,gmail.com,fairphone.com,linaro.org,quicinc.com,pm.me,redhat.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-277112-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EDFF82B9FC8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 12:53 PM, Krzysztof Kozlowski wrote:
> On Tue, Mar 17, 2026 at 02:50:41PM +0530, Harshal Dev wrote:
>> Update the DT bindings for inline-crypto engine to require the power-domain
>> and iface clock for Eliza and Milos.
>>
> 
> NAK, pointless patch. It makes no sense on its own and it cannot be a
> fix for earlier issues, because as a fix standalone is simply WRONG.
> 
> Where did you emphasize this is the fix for current RC?

Ack, I will add explicit emphasis that this is a fix for the current RC in
the commit message after merging this patch into the previous one.

Regards,
Harshal

> 
> Best regards,
> Krzysztof
> 
> 


