Return-Path: <devicetree+bounces-273118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDOHEH4wr2mWPQIAu9opvQ
	(envelope-from <devicetree+bounces-273118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:41:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EFB240FB3
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:41:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E112230095CC
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 20:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB55B36BCC2;
	Mon,  9 Mar 2026 20:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CRVp83GY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ETu5f2Nd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4693A33F8BC
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 20:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773088888; cv=none; b=NdQmzRwdFTWRnyD/3TsG1GOjinXqO44xauQPH09PKPa/3IUflGhSLXGvvJir/Solj9XJbHFCMK1IUBW+CpzhdyxO1oXEUYajVd4ZC45pZwTB5i/C8JHiaaCxJd58V8MALgCAVGw47yNoi1+5NchOUlf/Sbllp1kacfyVN5Gec+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773088888; c=relaxed/simple;
	bh=eEzcQ+co2fcrMGgpJVXpYtyqGOPkSObXMXIKNdxPiNg=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=beaaHr/XIlmckEdkPeP4bbc58APlWL/URQdtDkpoPqWePqj2Kk/ZR7Va3b69VQv+0C2TtB3IyM/SWPNGqJ6jWHdroZ65suEZxUmzAbSL4l1oixvRUhnjxy/izP1gKgkrWar8HgGPpxExh4JKiTohsrWIBaC4vR5/Ey6VSyrlrPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CRVp83GY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ETu5f2Nd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBrM93148263
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 20:41:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yGXlEX9sVVBFpt2mxA+KhXRyubeH2DRI29wTNbH1xbA=; b=CRVp83GYKPgGQ/Ob
	K0AseNkl6FTZdOmYhEF3JqGCBJuxG5BjhmwZF/eKyRlZLpmJSl2LKYgQdnssdOma
	lJUDXWEZiPeoMYf5dW9RrCnPX2Bb4649GJhrCFhtqD7HzdgisxZCbqQSMj77ZLCR
	EUB2OBeeFTQi4lFi5AS6SAi2y5ccoeJmmjU68RhJdF66ddshDvWSBeQHqNlTsOGB
	YKJJawRjIschBludtHp7DGBSAx260NHRyXOwUk4XrH50I+Y+36B0a+lL8mrpDcTj
	n9SHpcqS8TKEL2tnsXJvtQ0575IYJHKw7joFvXDbVSTfVV8MFHxqO/XAzm5DHzlJ
	W6bWwQ==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5ua29k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:41:25 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7d742da766aso7288444a34.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 13:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773088885; x=1773693685; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yGXlEX9sVVBFpt2mxA+KhXRyubeH2DRI29wTNbH1xbA=;
        b=ETu5f2Nd1PM7xqshwhB/YICf0iFE10JxHw/82fIxKCE0TAhqt4LsBW0m1jv8JsoFH3
         dtEwtfdWtpi75o55QKNuL3TW2pRX0EwLSuUhb9vlCJifl9TN15hFuVu4d0EMhF/mpQC/
         B9dJ4EABzQS/ZzxzTVv1r7FZ43Ca4Tn+wsqTHqJ1fDmg4lP7mf3bEV2K3puUui5i3JSB
         I1hKow8xheOkfwECo3uKDJPArTipArxELKDScQrFIaxwMnbRU2T5659C94vU2LM0kRg4
         ijyT7n4hgRHFljYKCaq5AjQ9keDQW5Z/2U5P+lmz4uCsEzrNZ0MLKFU/LRUsrSn/W79E
         6u8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773088885; x=1773693685;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yGXlEX9sVVBFpt2mxA+KhXRyubeH2DRI29wTNbH1xbA=;
        b=Eu2D1qS+JV4sjY8ywUEiB1FCR8joqLEXCA797i8R3/OQlsIvunx/wKMbaNgso5KIua
         rx/xweFuYSmwl2w1OHZeZi0GLSJKx9mN3wR70/8siThFEu82keeEoEvBCbDgfdJE8dHS
         b/GgeRxsuXNYyOSfwGsTZsOlgm6f3IOMhISpR195GAX08rQiRmoRZLplqN0Gkn/iCWne
         WSoq8L7yTR2TPdfeLUkY37JGOdEEHu4cJkAIats/loJ8QWS1agdOIycf4ANFAS5i/3od
         1wmybXPVu7Yu103DqaVEX+Rke0xZO9uVBVjSyztOfCXtrg2JBN5stOk77omLCgWnQ+FF
         tejQ==
X-Gm-Message-State: AOJu0YwXSxteEiPXz5o+GmVc69+QJMsgqqmzBtxCWTZxoHc4XoJF9RAA
	pN49ROyzSMSrtRlQeNkFkytZukxdpdfwHG/kPmfF5hu//S5iKSUUh6OogXVMRPEHveBm5DojfMY
	MfZAtAvAWd4l3dziFb43vRD4OK0CCGMYGb4GCR06J351h0/wrd+vmX0UyRZH9fc83
X-Gm-Gg: ATEYQzxvRuxN2kocFQwQPQGPR9rCh8ksI1OICM2ZrM/i8iwM8LCCTm0iohBbwVslQSe
	xwiA9PrUtI9sR9YQiItGXJ8lppSt02Ujd4uBzgahoZRVAl6P4kJq4FXuuKVamqsZbWjDaUN77Kh
	kWCTyiHaRHmXhJIHnipe1TEHJfMLwr7LUe3wMq6uE6k0NIbFx/dIy6evZ29yO28u7Snahvj6Z2Q
	Wo/xqsVowL1vQq4vQ6TvkC9Q9rmod/2kSGD4hBpsLkdXtQ+8qJsL7k/lqdH8UZ4xMU8CsZx4cr+
	iCC55XzVWjCRP8/4KFT/NcQK4qnHUhiVBl4BLkz2rAy3X4M4hTgPddkznO8yxV87d2mJWLouhCy
	oytKmS5d6BeWQe/Tbe5BDBujiqfAv5PHxR4R9kcpoE60S6tQlbQuowrt0bOGfXwpL2uyf9/qxtg
	erqSc=
X-Received: by 2002:a9d:560c:0:b0:7d7:3dbe:68f6 with SMTP id 46e09a7af769-7d73dbe6db6mr3509167a34.34.1773088885231;
        Mon, 09 Mar 2026 13:41:25 -0700 (PDT)
X-Received: by 2002:a9d:560c:0:b0:7d7:3dbe:68f6 with SMTP id 46e09a7af769-7d73dbe6db6mr3509153a34.34.1773088884825;
        Mon, 09 Mar 2026 13:41:24 -0700 (PDT)
Received: from [10.71.180.216] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d74cbe7f8dsm2362840a34.8.2026.03.09.13.41.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 13:41:24 -0700 (PDT)
Message-ID: <c57cc1cd-c7cd-41d5-adef-c2e69de72f46@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 13:41:20 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=5BRFC_PATCH_0/1=5D_dt-bindings=3A_connector=3A_Add?=
 =?UTF-8?Q?_role=E2=80=91switch_provider_phandle?=
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260223191042.825136-1-elson.serrao@oss.qualcomm.com>
 <1c790a52-3d84-46b8-aa14-1d005671e416@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <1c790a52-3d84-46b8-aa14-1d005671e416@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: uvEhN7vm_9vwr3x7rqreZaEQhUefgA5o
X-Proofpoint-ORIG-GUID: uvEhN7vm_9vwr3x7rqreZaEQhUefgA5o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4MiBTYWx0ZWRfX1ddYi4g5XF7u
 rHEyn0VoaNix7Jj1nTlv3dGlL07pMOoOxSlupMnufSea2rMG+nmbY3bfmWZYv41b41BNpdCkThn
 Qsd64TonlDfizUDPjjsQrdgHlwpA9h3IPzcq0IwGYNHqNs9E6bRc2gZZ0Y5KlFapWYdlV24Oigi
 YStj3CCkQB/UXptkMWh1pwehfwvUxvzazISsYGZObPNe7zeCisRkd3FbyEBOPzxREVp2OXBFLnF
 9J3W/ZQQkHUTj0lZIiU4/slvn3aFYP6SEqlon6RzCISy/5hZ4vDCm7+EaxE/k2Zh8eYVaS++wY/
 yPPoZVSrhhqdS4diJPupWDUrzrkIMObClonRr3/5sjrvowxh0uG3HDdcd5bc5sTxXuZRyfSPqPg
 gJE4retiQUwwPU4I6YXYMiIZByi/3SVcMJokIH90Ngn0fb0AzNSGxd+UkJFa4v/a8dfcDmM+RSl
 FYCZtUllDlkw+KXeIlg==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69af3075 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=5KLPUuaC_9wA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=QyXUC8HyAAAA:8 a=eDZ_54VsRhy510b8AOQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_06,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090182
X-Rspamd-Queue-Id: 42EFB240FB3
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
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,intel.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273118-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 2/24/2026 10:56 AM, Elson Serrao wrote:
> +Heikki Krogerus <heikki.krogerus@linux.intel.com>
> 
> Adding Heikki since this relates to usb-role-switch provider modeling.
> 
> Thanks,
> Elson
> 
> On 2/23/2026 11:10 AM, Elson Serrao wrote:
>> Hi all,
>>
>> This RFC proposes a generic Devicetree mechanism for a USB connector to
>> reference the USB role‑switch provider when there is an intermediate,
>> block between the connector and the controller in the OF graph.
>>
>> Problem
>> =======
>> OF‑graph links are strictly point‑to‑point via remote-endpoint, so a
>> consumer can only discover its immediate neighbor in the graph. When an
>> intermediate node sits between the USB connector and the controller, the
>> connector cannot identify the controller (the role‑switch provider) from
>> the graph alone.
>>

[...]

Gentle ping on this RFC.

When you have a moment, I’d appreciate guidance on whether the proposed
modeling direction looks acceptable.

For context only, the following DTS patch illustrates this modeling:
https://lore.kernel.org/all/20260309203337.803986-11-elson.serrao@oss.qualcomm.com/

Thanks!

