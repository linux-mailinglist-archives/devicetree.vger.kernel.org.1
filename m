Return-Path: <devicetree+bounces-275204-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kK7wEeIEtGnjfQAAu9opvQ
	(envelope-from <devicetree+bounces-275204-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:36:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BE02831EA
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:36:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8AF0230B022F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8AB839478A;
	Fri, 13 Mar 2026 12:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rr3ioVQT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IZVk++9E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911AC394497
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773405298; cv=none; b=ETp0TLc0f7/bTn6UD+X+X8FY/ytP5ARfnbI3dWmO7yrQoTIpVyp3ShHMGpyJTZHwssYJNhwAD1lX8Zx5NGX29YYWAIZacZ62FjMmP8hpYS9Rz4/ZW8L5VhBdqeUggIED5ii8mfO+WPxGXirYQWCOZlBomssEXCr0ZGDNodN4nHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773405298; c=relaxed/simple;
	bh=MLe6GWn1t85qkHhX+ZfWgtgT0WtWEg9ITz62wEdKZnM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oP0/Iw0slaW/SPB7lt6oeKbI8ZsFZHwqpHxAsFgAylWuPR07oHEN3o4XVcH7ofqWEFBUktxKq5pU3QYKgZ0gMsbimGfc2IHIw3+lqiwJstthyuFcjeJMaYnx+jjgNxpISUMq6pdX5WUBF11ud97APJ4MD/JYJd6Ye553e+sRybE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rr3ioVQT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IZVk++9E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D6oSTG793119
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:34:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RZ1ZWIRx4TXRJFXLh8Hpw25cxx+L/+m3PIUI2NeaN7s=; b=Rr3ioVQTr+Dtyi/K
	tZUyedUze+gvEVCimKrF+AmnhFWnGYO4tA3J81tJqKWYWdQWqd125DBEW28x4x9k
	9C1YmugYdPrh87DQ838cOPNccSiFGPKZwx8HvuNjGEFwzq9g3M5ip3qHyX/nF0Kd
	NbzDxwPDZ2TH7aBNy2JRraUxK078qhx1sFx43mB0+ZoOyh25/t/dk8ct+WtfDUZZ
	pX0JRbwizzbFMsHE9yziUzl8ZIVmMWw66p7kphgJWB+T3jPXaJ2GFbB+86UbfcEd
	sAKcLlEXidkv0KI3TPn+DOB1HgByTOWC9S/a98QDbN6KQAPbhf7J+XWIJIhAKvKA
	H1dzJQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt16st-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:34:56 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89a01982dc5so16449736d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773405296; x=1774010096; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RZ1ZWIRx4TXRJFXLh8Hpw25cxx+L/+m3PIUI2NeaN7s=;
        b=IZVk++9EF7BrHIY+ai7UWOHCFgImDCfJK1ulV/xdgtbyn6XAUcJQRzFKkrUq+xkLYC
         Nht6GUYZyYHeHQvnPKbTQBB/Srs7Ff1MapXvTo/b5pqPmy60w9wW/X7NbDVOWL8L5UIx
         O4PQa6sVXcHlHbBEUl2xziLzBiPcDOaz0tidjKTzIAOL3CXCySnscIqmvUX3lVq0Lmje
         ZWqasVwpjfqEbYs7PHxqcpbTginsXlLSR2iqAQkrO/DBzXEudR58c1c2qcWa9SfQxGWp
         PJwduUVsA4VsR3FPn8RSTqS+trFRrLei4ZeQSZziDEAjUniPzKLl/ZIDf31xwQw0n0+p
         uOHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773405296; x=1774010096;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RZ1ZWIRx4TXRJFXLh8Hpw25cxx+L/+m3PIUI2NeaN7s=;
        b=Lzzg0e9MkBu4NPUSgLZBZZ1cbz5MwkvalsiyE2X+tbe2azLSXQgWZ6iWWB1XpvPNNn
         FOZ2GcGsPJ79vKmJBvw0CaTi2R1rLm9ufK31Xbd/WLRusfWrNJX3Xqp3qLzJ8lcAUiOm
         B+Qv6HJHJg/1FFvPHSPHrtCQEkKpMK6sIaNbfovcIM/YclWRBL5K8otHjIc1gz6yL5hI
         ehSvSG+izKotDXbqxCC91lZ5kSBAOSKYND6CbwEwWrJsVuGnWxNY9Lq8yjFawoHEflCu
         eM15BqF1oszd6VcLDEqDADvboq17JuZKJIGxDoWQ4EUC/6XTsTOUbFHdTOUhT1weyLvu
         sFUw==
X-Forwarded-Encrypted: i=1; AJvYcCUWHeScJhW9rWlTE/z8vmLQYrB85YMobrCPn/kGytVvV4Sc4cW7Gde/yLAxi7eROLboOISW3i8rRYxO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8wb2F/CCaU/7ilx1UC+bTsDP9nIhveMj8JVaYPTPqki8RH3nM
	0IhEeGU35AgUgMpFs6/Z0paPuqT5QsmV5170OAPNx3K3hAvn+clgFBDURf8YrnmJrG0BJcDe9ry
	yFcb6flfHlNWYn2kHwqdB6ZR+6sorfscIsYQbc67kxv8RhFLQ+NiTXFwjIpuQ4uEc
X-Gm-Gg: ATEYQzwGphKByk/Z9+0FtDA4pv+Eehp8bdkOCUW7BlaP5aVCZXU8577PYG8ueuimXZF
	/rorFIG5hKSc9su6kTH6qN8Pp2WfDAOUlqBu1K/HTu4/MSIY+1PiJZYFntTWH1x/R3onjdKfp21
	ChUaz4l7PLWkz/CXK5xntPGSJL/7TaaUH76eY3C3UEjuj+G7nyOhkvAYy5l2Tmok3n3k6JdutdN
	Byh8EMFxjTqt5eat59XI5zkBOarVg43rQ3oGPJoGIm1QjxAbL0x/o90Qu1OSbWbR3s0mymOFQX0
	10D09CZQS3iU7HnJYIukmHIQWRvrNHnNlD8KkxRzMBngUxrtCwsMW9G92TZE956h72fwfNmxOKG
	9ze7h7FAtiWxGO76rz3pSrHfrdT4H7OUn8zLeT2PbC88uqlgojwpqtIVQaaMI5nmFeAWj1fhj4u
	zrdhU=
X-Received: by 2002:a05:6214:5e0a:b0:89a:4f20:cb28 with SMTP id 6a1803df08f44-89a81f50961mr29598666d6.3.1773405295725;
        Fri, 13 Mar 2026 05:34:55 -0700 (PDT)
X-Received: by 2002:a05:6214:5e0a:b0:89a:4f20:cb28 with SMTP id 6a1803df08f44-89a81f50961mr29598496d6.3.1773405295289;
        Fri, 13 Mar 2026 05:34:55 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cdb6936sm42936166b.37.2026.03.13.05.34.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:34:54 -0700 (PDT)
Message-ID: <eefb75dd-95f9-477b-9251-dcabfae47c8b@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:34:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: hamoa-iot-evk: support Bluetooth
 over both USB and UART
To: Shuai Zhang <shuai.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        cheng.jiang@oss.qualcomm.com, quic_chezhou@quicinc.com,
        wei.deng@oss.qualcomm.com, jinwang.li@oss.qualcomm.com,
        mengshi.wu@oss.qualcomm.com
References: <20260311090921.1892191-1-shuai.zhang@oss.qualcomm.com>
 <cffdb8ab-a293-4535-860c-378a4b8a3d33@oss.qualcomm.com>
 <97a3f3f2-e9e2-44ac-a682-0e0f0c100a45@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <97a3f3f2-e9e2-44ac-a682-0e0f0c100a45@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b40470 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=o11hlXMYcrQWRnTjrNEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: 1gLERtnoq_5lsoa4jl75EH-BbxIrHorT
X-Proofpoint-ORIG-GUID: 1gLERtnoq_5lsoa4jl75EH-BbxIrHorT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5OSBTYWx0ZWRfX3xJ4ABCWcDrw
 eUiCboMGzKMyDcpMg1Mr6f3wa9cDZWUEC/eQzhTtQf1su2hF7C/WeowifgakXQJCFKSXPQcPDio
 xR6NToXhzXK1wgVZdJ3u8oYo/+dxW+XP3xh8qMvH/7Huctp4IJTUVq3u/A1pcgOUCNW+2IpuK7O
 3nmyE2Zlka2UZBwZesWeGu7na+iHa+K/TjSnWNhHZLgA09UbNztPpXsDP/gRRMiyON5wGEP2Ngz
 hrZTPRKv/On/nJ2bsNtBv5O+S7P6UKjIkgOSvAs8bJSR4IY/rvYSEXp7ZC8RwhZdUksq7pCgvxH
 RK30f2XusfAvHhXR0xhLI+pfaiZNn8nVqfUhGNB5V9qoz+xGSk/US28JQ3M4BYY4hvr7wCWmTXO
 EJQdwql5vLkShPCUY2sr4oX6pRfqpyKUEZuWGwP9mBbhGLaGbxrE05HmxqqLoTVthZc1JvcJIlO
 KTwEmfJX7Rhdj91UyoQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130099
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-275204-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D8BE02831EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 7:37 AM, Shuai Zhang wrote:
> Hi Konrad
> 
> On 3/11/2026 9:07 PM, Konrad Dybcio wrote:
>> On 3/11/26 10:09 AM, Shuai Zhang wrote:
>>> When Bluetooth supports both USB and UART, the BT UART driver is
>>> always loaded, while USB is hot-pluggable. As a result, when Bluetooth
>>> is used over USB, the UART driver still be probed and drive BT_EN low,
>>> which causes the Bluetooth device on USB to be disconnected.
>> Is bluetooth connected over UART *and* USB simultaneously?
> BT uses either UART or USB, never both at the same time.
> 
> On platforms supporting both, the UART driver is always probed, while USB is hot‑pluggable.
> 
> As a result, when BT runs over USB, the UART driver still probes and pulls BT_EN low,
> 
> unintentionally powering off the USB BT device.

Please describe in more detail how that difference can appear in practice.

Is there an M.2 slot, into which different kinds of cards (i.e. ones with
BT-over-USB vs BT-over-UART) may be plugged in?

Konrad

