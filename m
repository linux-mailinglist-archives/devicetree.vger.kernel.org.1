Return-Path: <devicetree+bounces-265040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HJ5CIa6jWl96AAAu9opvQ
	(envelope-from <devicetree+bounces-265040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:33:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD8E12D085
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:33:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 06E19300B188
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBCF22BEC3A;
	Thu, 12 Feb 2026 11:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jK0Fnabd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="foUF82lN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADBA2BDC1C
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770896003; cv=none; b=PKWr1CU9smzDEH95FDYehGuIkmEa4oFIl2Qi7s66I4wqHAvf3SoL598634jsiL0+HrGR5BKR+nW17rIcdGBQUMBZDg3yvUrJ+UezhLIg5toOKFqueAh2OdD71n7VSQtUGo8cNkfIWoCjr1xXJFQ8NwWz66Y/SukPYo051ak0QrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770896003; c=relaxed/simple;
	bh=gtxIjWMpJmshU2geYi+EfFRTCCDtUZrC0E3tqefg1ag=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aqMm1w0o2/vKsjgrUVu3JHJzVZ6DZY7z1lQsnpV9nXFAonrreyMitwatRjj23qu4rt68kbj27el/3j+/W54C1CkAH/nlBjTcnqQTJFtoGtjfpr0wIqWdYQlr4iUEW5rNz3Y81EPGQRZmAF1XdTv/momxftuCyEBVhAvBj4DjThA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jK0Fnabd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=foUF82lN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAIfIA658569
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:33:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gtxIjWMpJmshU2geYi+EfFRTCCDtUZrC0E3tqefg1ag=; b=jK0Fnabd33zpyw/D
	CLtLKGyxRNhNkZLS5RKgO88YQYMhDBBl3oqGOMmbHxpQ48oaASVltXS519s+xChs
	FgWAcq0bSsv69iyxdOXi7UWGK2uiILJumKXZvweEYq3W6v9MAofpMlqRcnk/be/j
	4lWCRLJ8RTBI7/teHsIAP3/xgE8jKoTzyzjEVCQb3dPPjamS4CzjfNmFCTBoKhvP
	yg80hY5xhkmp1PvAxjGRkSW6ABsknegrkhkecVvpTMTo2ak9uOwFovpL9U/p+xR6
	rcqaLedSGnN66w6dBH9ikfdH68h+OEs08574sUm3c7l7D7gTbmvYVcmChH5gf0sz
	uFp6zA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9d09g6x0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:33:21 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89496f5086dso28455426d6.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 03:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770896001; x=1771500801; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gtxIjWMpJmshU2geYi+EfFRTCCDtUZrC0E3tqefg1ag=;
        b=foUF82lN1ltezrovGjgSZ+uOv6Kao9lTc+xXjagQFqfb0Lws1xfe9DoZPcV+sPhH0T
         9NMCG172ekqOxCs32HwtKOm1wqszOZNiaeUeDveHhfDB0sM37kWa6lw46HAhC2PjQ0Zo
         AuUz/GgGlk+35so4Dk32w1mQxQWfUPYpe29uW7amLkQ0scPSO8qpEkrnagRVYZxkeOck
         1mRWCySUlexf4Og2oImTxIJqjwN4tl6myh0eS38RFi5wK6Rp5XI5/V8PwlFDS/en+Tb0
         i7jxZrKSmreEUZFf2RHnkGto+OIiwDluLle85cJ5HV4X3W1QKp0+u99Cu+ToLJdJvgVl
         6a5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770896001; x=1771500801;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gtxIjWMpJmshU2geYi+EfFRTCCDtUZrC0E3tqefg1ag=;
        b=AEirkLsw+H0+t3NazOLlP2PoSArlJUm5yQXDuZ2UXLQrcNvb4dQCaTmhDF46Fgcayh
         WN/7S36YxOEEWab8wyxHgT6O3JQ6SrJGYpJwUIs7eU4ltKeA/qsYysLFi87ZAjVlYLy7
         xRcWT88H3NUMxJT2rirlur0b4Hkoesv9lX4NJXfybuTfhV9sZ0N80WMukib+Pzl1pFv8
         tJFRarpfu1Auz3dwovUUiQ0OXOcPka80AmUIr+GuV6Ak2ZBjgVRp0zFrVyeEwfNPSlVi
         wBdVpdSuumt2AVHh0B7k7ZZ789nZFH1x+SJQ/H8AtTgyvnBFy+KZGg7eUuJj+otjhSr0
         1YJw==
X-Forwarded-Encrypted: i=1; AJvYcCUioSynj/2WJwkVZ/m119QKZ2lymCkyaB5wu4QNEaZjRnDomsidvcEpGRsZq266xb9L10DNwpuEMwnE@vger.kernel.org
X-Gm-Message-State: AOJu0YwSfY+3b7hdDD5Gt+8YkU//rWXD5QksUlv01qBQqdIMMqa97qYr
	sLpoc+1jBIoQ7LRAKoKtrR6GHneAjaTjOIAcj7b3QrX37/JNt9EQ+sfWtJ0XGLN/j3/f9maPQvT
	0HSvE42wUexBm6WkaarsJ9X9ty1K8RJRf7A1borzkbjY2cSn3zQ/zfuJ7K4SRIYw2
X-Gm-Gg: AZuq6aLYTjc4FALtj8TQ4JVRO3xuoDDsnlK4TkNU80yStvSZEbu4otQ+NGzPtwIzuBE
	o1+b8LuYjSuPoq3RiY+OHS08vpN4kupSvTdZ1lZNtdiHPfnYaxcAWnqkjxEkViMTSftxFEai4yE
	IiF3mMPTNzRGTpBI0oJ8kd+urjdx6F/FOOdUbtUtsYk7v9TmMMZ+AFzJRstTuHwctIOQeJmvyge
	MvFz3GZbqmLubEcG3Tzd1GjnlD+L+Wg0vubLZMNY1cHhL4bIC/iYGWisQWUQcZVpD3fKEBaaPHH
	HXkxGloh2Z3o9SVTpf0IFAFIWMR7+2WZ1P0ynLXlWyFj/BLguokW6m9J7NT+PlMjrYhbGOs7HMF
	1vpAsZnB2gKfu9acPuGugFH5SysmiWLIbdW0WS8fgxtFnPyrUsXovXKxgdXR3y4UMmZ0VZN6yGG
	6s4Xo=
X-Received: by 2002:a05:6214:5c89:b0:896:fc89:b21a with SMTP id 6a1803df08f44-89727aaff8fmr22027426d6.4.1770896000947;
        Thu, 12 Feb 2026 03:33:20 -0800 (PST)
X-Received: by 2002:a05:6214:5c89:b0:896:fc89:b21a with SMTP id 6a1803df08f44-89727aaff8fmr22027176d6.4.1770896000466;
        Thu, 12 Feb 2026 03:33:20 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3cf38caasm1583962a12.17.2026.02.12.03.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 03:33:19 -0800 (PST)
Message-ID: <d7a6c220-a6ff-4cf3-8c05-762785a7f21e@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 12:33:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: monaco-evk: Configure USB1 as
 peripheral and USB0 as host
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
        krzk+dt@kernel.org
References: <20260210152548.769951-1-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210152548.769951-1-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4NiBTYWx0ZWRfX3ujjsdp4EOFO
 wmjAlrXktg6r5c+Lk4SGqMGHKbfQ7CsiZVUdZ71gVsmghEh5jkCIol6w2z9U+D2VZZywLT1DNZ4
 ERwv66CjKHfBV7I7eisSn8q6XovVlZAxB/yOoANxcJEIgztwdlIvIBiQYgkSqBsgXC+biqWEczy
 H08JgoHbAYAGyiYSnG6CIH6a1YFDMXOYSamyDlbQQzBfvT0zM8vT7U8ZCt4x4HtGz8P0d6KL8Dt
 hqRRbZcOjk0N3DV88cnzxlQ+wrRnNy0d+5iZFewF8jwf3eHHcMF5r7ex54iFZYRlyg/kB5WXjLm
 UJaRo4QKEmxxrNrHn3q+AsrsYV9uItk+kFdY+x3DQBbBZIHHO1ww7dDL0gmGY4MjdWncLPOhyjL
 aNVQ2+Ubr02vXPmY/0UyqR0C6DtNUdpNVG4ZJbTMlIXh/Jqf9MKadfPU6SZlxnurXtRynTuGXyp
 GTJpL1fxluqVpPbBSng==
X-Proofpoint-GUID: g6Nukpa1_F4suz7nr53lRhQ2ZgkA4elP
X-Authority-Analysis: v=2.4 cv=Y6j1cxeN c=1 sm=1 tr=0 ts=698dba81 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=zJCDIgS7Kno-m6qslm0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: g6Nukpa1_F4suz7nr53lRhQ2ZgkA4elP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 adultscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120086
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265040-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ACD8E12D085
X-Rspamd-Action: no action

On 2/10/26 4:25 PM, Loic Poulain wrote:
> On the monaco‑evk, USB1/HS is routed to the micro‑USB connector labeled
> ADB/JUSB2. Enables that port and configures it in peripheral mode, as
> expected for ADB/debug usage.

Is there no OTG pin routed from that connector?

> USB0/SS+HS is also repurposed into Host mode so that external peripherals
> can be connected to the monaco‑evk, allowing it to function as a proper
> SBC (e.g with USB/HID devices connected).

What is it routed to? The DT lacks any topology description

Konrad

