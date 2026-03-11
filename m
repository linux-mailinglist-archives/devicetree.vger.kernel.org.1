Return-Path: <devicetree+bounces-273885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLEMOCsVsWkZqgIAu9opvQ
	(envelope-from <devicetree+bounces-273885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:09:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4667225D561
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00330323D4E0
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:06:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1D237B038;
	Wed, 11 Mar 2026 07:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CmtRKDbB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bhxIKYPM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5058B377038
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773212776; cv=none; b=RMqOOvTfBI2iFw/r8siOzSjBE8rzb38rg2wggdsWM60rOKRQ3ar61b0+jhFDOs47rexu04wJjEuEl/Nrp0MjRsZ+oqKd4t2mRjzGfKrV+ieUZoyg8rRNRYCoq203QM+nIhOECRp3COUL1rJewDiIo0lYQY1iVsxi4anvDVvwQqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773212776; c=relaxed/simple;
	bh=6VXxvIuvvMlo4m6X69FTioZO/RtWTFaG63vSd5YaV4I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=St9emrpj8mtghgbTdiJ9j0uTAXltzMCyyVyM4164uXlEt/ROPhu8i/gS9jDtFOkY5BKZwVXoz6GJWXaWEI/DDTWA5+5lIE9PWCub7Q9mOzEJEotLsnItrDywf0zNoKDTK8NM/OJBLpCe8Gcf+uixcXcbwlop7Z/yzxW4Ket26is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CmtRKDbB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bhxIKYPM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B3ORn33760444
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:06:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5qTUOBpAjQI0yxNIruKIROet34mfvXwPkqMtzZLjsTE=; b=CmtRKDbBj94rScLX
	l1V9ddI3EVoAbEwyUuC9cJuum9QoEI5Dq6U1HPa2j/AjPPg6azuH6TWgwu3N1m1C
	uGYFwlHaKVx54ES1b0H8FaBX4ID7NjkrtXarJOGmAGrh2e+JqUZh6MN4gd93GU1O
	LLvhlrfX127Z1p4YAF9YHON8KNgaLVwTK8zYfAOTQXmc8EIpour9blg6rZwGuOUa
	MRuBdNDleMCmDZWUI0d99OK/Rj+O4bKrediVmEr0BxulZcNC1lxAeRJD/Z0PDeHw
	EX83JNMMNmrBTNl76lc6yh9RGFw+oY4fcOodFXcvwUtX2+pk2Q2jNd1aYNBIyPrL
	HsnEyw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctk8ukmma-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:06:13 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-829c331b4c6so1228386b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773212773; x=1773817573; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5qTUOBpAjQI0yxNIruKIROet34mfvXwPkqMtzZLjsTE=;
        b=bhxIKYPMuzspn9Wg/IXjkDENTEncEuuT5dyfMk716XUxnhkUM4yrQQ1AVHBIYuSvBW
         jAouZwhqcsKZxO+lvEvqFguKWbPXUYQWrLgFlagRV/682mHz4edB/pZbMd/l9oCpDxrT
         2Yjg4EvLrs7Hqb9ufe4McRmfcFESXdN4QPLOjo5ibbU6VT7KtdaQUeb9BL28AIYWR+Si
         p1001rR4QXhEq/lktRuRcl8RroP4GL9EEZhQmgDqi9Uf+519RU3uGEbtT62RIH2IYAPW
         FrjIcH8t9Tga5BO1KeYmvReeMvY7g3/Kxz/9fh+bScbLrOB7hPOMG5hjtdVcfBlrBkfM
         cgDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773212773; x=1773817573;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5qTUOBpAjQI0yxNIruKIROet34mfvXwPkqMtzZLjsTE=;
        b=jHTbhrkPY6kB73/wm2nBuORmwPjMUmdKQxWMAJ4Az7HULgiNCTUQtvOksBlNVWEWV4
         8yuYO/zcU0rsnrlpan/dSExoNCMpTAco2jmnWqIgzsziYQwqwFLZqRwPMdXedN5e/g1u
         H6kxe5M+da1iB4maZ1VklZb5XT3Q6su0DFboSUK9VE6lju8JDtlt8Mm9ZItM5cAsSiDw
         EYwc+bFPYVsHC+1CxX1MbXQoiy+4nDiLMEAp1NqQYY2EQshTs+ggX+rB2rMGQ+9Vaom+
         gx3iHeJThn7ykA9rtgnIYyjI9S6PYsfgGwBNBs02RxAF2bpvmWhhsEu8wV62aEnHN25A
         9Omw==
X-Forwarded-Encrypted: i=1; AJvYcCUm8cP71QdHEjDBx04GVtjqpb8KXClYsOKfm039AXxJhjEu2vGsfbfyI1uFBTg03e2QKTkjCJVpZ9Mz@vger.kernel.org
X-Gm-Message-State: AOJu0YyoYk/GbY1aA/RkECwl+9rhUiXSA+skw94x9djlHydhNP1CSKft
	gnjsrx5sVRinFov9oo3r4ziM51F4xPnqQQa6/U1h76NuoQJSSJuJyy3hz1W2BmodfXHroVZGVMB
	bIRr7z21klDZIw/c8lVx8L/5v97lpxLw6GusQbTjCIi/6KyprHuGsKlFMON2Wb7Hz
X-Gm-Gg: ATEYQzxZ7LYSRcW8bQfksMVbZp8g4j1MwbLOuyXM95Zv3tQXVquBTgf1N2R2P1ZkVnS
	g8cb92IpHU5QePNhcOX4G9u4DyN/lRF537sUZNAvy16GdWunQlLW7N+YGlzqI+MPfKxwpPOTdoQ
	ZWYj4SqkVNCOFIL00rVajGHwtoHeeLR2rtUqpNLgWMeZDNhbRDSmUEFoBi3J8qhxbj/54F67SRI
	RbpcV3TgFlevIo5DQEKiHq9RzFeKn6ICq3MG8cfDKu3aqmNar0L1gO2N4cFaM+PTLz9wx5yH1ws
	iTHDX3ddbAchd4RsRa7Ac+L6zlykQNvCxfCX8Lqrj5IgQTzhuKUIjKh/yywvsu3xu2/lv7vbvGe
	/4uWBSWHOVf6YEnktqlZ/jdRZMc6aB/VFnIz3ErZwifVWQvP+
X-Received: by 2002:a05:6a00:9485:b0:829:862d:6b46 with SMTP id d2e1a72fcca58-829f707339dmr1327325b3a.6.1773212772905;
        Wed, 11 Mar 2026 00:06:12 -0700 (PDT)
X-Received: by 2002:a05:6a00:9485:b0:829:862d:6b46 with SMTP id d2e1a72fcca58-829f707339dmr1327308b3a.6.1773212772409;
        Wed, 11 Mar 2026 00:06:12 -0700 (PDT)
Received: from [10.231.216.91] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6eec127sm1364084b3a.30.2026.03.11.00.06.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 00:06:12 -0700 (PDT)
Message-ID: <7aff8a49-ac47-4d93-8028-2710ba4eb2d7@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 15:06:08 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: disable WCN6750 and WPSS
Content-Language: en-GB
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260311023219.2284643-1-hangtian.zhu@oss.qualcomm.com>
 <20260311031145.2285056-1-hangtian.zhu@oss.qualcomm.com>
 <wy46mrybpvnicmv2aljkyh6lu2gnzz4axl66r2efmfy6pr55b2@phsj7pghzd7r>
From: Hangtian Zhu <hangtian.zhu@oss.qualcomm.com>
In-Reply-To: <wy46mrybpvnicmv2aljkyh6lu2gnzz4axl66r2efmfy6pr55b2@phsj7pghzd7r>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: AgZJ_Tow6GAvs8_WBSOdkjxzkNXDHPF1
X-Proofpoint-GUID: AgZJ_Tow6GAvs8_WBSOdkjxzkNXDHPF1
X-Authority-Analysis: v=2.4 cv=YcmwJgRf c=1 sm=1 tr=0 ts=69b11465 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gk-v6F8X2pB81-9XRuQA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA1OCBTYWx0ZWRfX76MpfVzXw+Pn
 1oMSzvH6YXXI00VT4XyZQKcj0b9FEw6zkUxiTDrwUKeKUadjTSszc1SenrHFgf60SEM4eOxozYp
 LWqK0JMDTg0HK2AHgDmJ2Hr5Hps2iGO/p0g+CrcfixGeE39zwPAj2QWaC9l6LlHrEE7iV6c6ULm
 IQ+75Ok+iWBB8RlsElr8GCTproJHTPbJXmHI5QS1eVcer1wvCGU9ILVYeTm7woHdFNvOaZSLKA7
 ud6wGg5uWYX7g60FwJOmrxVcLGshu6w7ldoZDtxSovBsrB287JYOh1r3JPyR7nxWvVr60VN3IeM
 i783zkS1JC/Zw/dQl3H1wy4UICHFX8xltbM1MSjuLweybmGT0M55I1H7G20NTcqTM5V68Ib3Cmd
 Zf5AYB/9QPgQvVqsF1di1Ra3f/tjxJta09LVhGaAHJoIcIzlLlXPGpujVYBlg8Fq+2MaIYBnK8+
 sTuFIQlzyoJzlh+gpVA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110058
X-Rspamd-Queue-Id: 4667225D561
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273885-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[hangtian.zhu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/11/2026 12:34, Dmitry Baryshkov wrote:
> On Wed, Mar 11, 2026 at 11:11:45AM +0800, Hangtian Zhu wrote:
>> From: Hangtian Zhu <hangtian@oss.qualcomm.com>
>>
>> Disable WCN6750 and WPSS on industrial mezzanine. On RB3 Gen2 industrial
> 
> You can't disable these devices on the mezzanine, they are not a part of
> it.
> 
>> mezzanine platform, pcie0 lines are moved from WCN6750 to QPS615 pcie
> 
> PCIe0. How re they moved? What triggers the move?
Please refer to: https://lore.kernel.org/all/20260305-industrial-mezzanine-pcie-v4-0-1f2c9d1344d7@oss.qualcomm.com/
On RB3 Gen2 industrial mezzanine, WCN6750 is not connected, instead TC9563 PCIe bridge is connected to PCIe0.

> 
>> bridge. Hence disable WPSS and WCN6750 nodes for industrial mezzanine
>> platform.
>>
>> Depends-on: https://lore.kernel.org/all/20260305-industrial-mezzanine-pcie-v4-2-1f2c9d1344d7@oss.qualcomm.com/
> 
> NAK. Don't invent non-standard tags.
> 
>>
>> Signed-off-by: Hangtian Zhu <hangtian@oss.qualcomm.com>
>> ---
>>  .../dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso    | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
> 


