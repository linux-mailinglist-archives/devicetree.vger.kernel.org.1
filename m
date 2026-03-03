Return-Path: <devicetree+bounces-270456-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPxvKWPTpmnHWgAAu9opvQ
	(envelope-from <devicetree+bounces-270456-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:26:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A141EF607
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:26:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D6990308A844
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 12:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30F1531E852;
	Tue,  3 Mar 2026 12:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PG9Dix3f";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RGWCBIpc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF6531E858
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 12:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772540583; cv=none; b=eaEL3gU5e6QXxitdbmjnvaoohbyCFxoY3DxindTuYHHG+PnNPj9jpSszxe/xpauuz8BcsM0ICsR014ITEJQrd9Txq6WMorpyxHLaniyCxNCwVoFuLW25X/gnRa3SMIrjJmMYjkGbJALvhCdsnSnW2VlJjfLSjgSyZKUdL7ykoZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772540583; c=relaxed/simple;
	bh=VvxYTeIvPLpVtqGD+EY5ebTRepGYdg/KIqQJzYbzm0A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mOiVZxh8s4MK69Qzu7QmGBEHRWpHUoj8EA0M2YpX8k79EK/2LjoXpzwHy0KiTSifBh/Q7iO0d2IuzAMnaI6FHd6NoP9xOdDartmAPUJIlFpxVy13KzKXQL/qpQJi+OuP++yy/1H/KQntG4FgQSsZku/8Uz+7l1cjMQWMbXh3M0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PG9Dix3f; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RGWCBIpc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mrga3099636
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 12:23:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gEGP2dOfPj1nq0zREG6nvoCUy0/w/6KgW1uW03KjAaw=; b=PG9Dix3f7vzDplNg
	nKD+D3LvjBR10pCeF283Z+TO2L1RvIp9FyxMl8NqMLnqfye3hKHnckRngP3Esx4q
	JV4Htl17ko+GMQvZaDMMA08SYhMA56O7h+r66qHo7LhRLtqCzrx1lj8TaInPgRPB
	ALkhqNBo6u8Ox4pyyM6wYbl5yYRGfYnn0LK8ZhhhDj89wW5aEbb+RtaRHVD0NYuz
	RxagV7rAcBLtArujwuMXcToyr3Y7EYRnLicFdQ/Ko0kJ81TxrGaDrsWZKosVnem8
	NkKEs48hPZSDK0fH9hWUifjVCglH2eF1Bm1fRQdgNu4+I8b4rm4zir8jeZEDykDw
	USSyAQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnuqu0uja-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 12:23:00 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae47b3adacso22782835ad.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 04:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772540580; x=1773145380; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gEGP2dOfPj1nq0zREG6nvoCUy0/w/6KgW1uW03KjAaw=;
        b=RGWCBIpc24hXjGEashNl3ljlPHqVkc5SOP/35apocg/Nkc0FxsBtTvbb/kRTY3jeG4
         X3gfUucDmKpF4cetB2ZbgBeYoUMGWqbAN5slXUkUwhwr6ew/MuHX3u8N+jtBgAGWrrXm
         MdDmkpK+A7GujrJq6HBi3bRd0syGLLNN7OMiBLwdYqFlEZ6UM5ZvbcYdrUUBIl0Vee+B
         9KJuZU0HHwOxcZ9OG6B77j8crYI4cn+8MRoONF5lgjjHwxV0Psme7tzrZPO0iJgSYopb
         F3SceLyxaIypRfE8Y6VQ/SWrbpEAhb+teAVPtbpXEyy/sajBEGciacnS5nOibowJUFAP
         uRdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772540580; x=1773145380;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gEGP2dOfPj1nq0zREG6nvoCUy0/w/6KgW1uW03KjAaw=;
        b=YK6yk1C2Kr/kHLJJOiUdomZy+krH5agNoxfEs8fdrxb6ktpJ9huymMrkktBjb4cG8N
         cVHPdLLbT6v9boJ2fKHYU/bktV6A1BvbKqh7/mvpV4G9zjmW6ZHNqlUBUrlTprSEz88k
         kWw866jloIsKIdT2/InbEKxVROzdhIq3fz14k0UziXEx6rdZ2th+DrO+yJX68OglgUd4
         SHS6BJqQitlSIDibxT7wrFgeIx1IUNa4Efq1iFGUKixAyx76/vlw03IclbufJpcWiC7b
         IqkA4stnYZLWhQ7g+TxVqcPmkOd6NCBV7fa8eYTb5x+qmuEt7p80KOVTQ0FJDl18fZNW
         /OpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHGFeWVJ1yo6eHNvjfPwlii/ZnMhuYB8rl0XQ1DKKugORqA8r+w7XATOQyV6mYnjEtkoKbJ+foe5aS@vger.kernel.org
X-Gm-Message-State: AOJu0YzvsdijkanwL7QiulfWL08Iyvq7ylPLgW36IfGYGgJIKIuLXMnh
	kR7oZsB0Y/rbk6W0VSnOyZ1Uz/aXdCjz2URbOCCGJnNMn4wf+upMpmRDHvYv4vfBvPxJO6sBkPp
	rxqEiQTFB00aUIDaljWwOQ/qKG1AkagdRlHxuWxOZEBPMRbNs7ppKFzT2uSsWolsV
X-Gm-Gg: ATEYQzwvtvecEXuuKtEwWPot73wI9QYYuw358llXXLO7VDSfo/t2mZlydDfh5m86sCY
	8qmefKzEQz5FZA7c7JAAaKw5RZYHewqE1slkLgMJEwMosCsUctWp4FSCouRXaC1myErqMHq6vBB
	WlemPXjchZjfGbWGFpRuqaYRUhTMVqeXZ/0i/J58/7Eyg/+4t8JNhB0pbxdADooXBWo3Ao131Ce
	aAg1CtCnvM+G3KzZCsBbwmxq8fguqH7CFebNwtZ0wI8QUI32sASbllniVsFcFmbQVjSYVUyE1xD
	7f5ObfZx+PApVhBep1q51yd5UofZelhaONwlwFdRhDBDlxyDKTtmiTTeEcGx7G516NoooNvcI1O
	6nftfNoi3QrUQiC0FporF33Q2Jm/qDOudrm5ukuwerudDDkKe+ss6EyFgBf6s1p+rOkvKaU9Q8w
	9sYEuY7XkKmygcIJeIcj/UfGF/3VrQpdXQd0BX38w4H9MqD7o=
X-Received: by 2002:a17:903:41cb:b0:2aa:d5e5:b136 with SMTP id d9443c01a7336-2ae2e3f1170mr176070535ad.38.1772540579803;
        Tue, 03 Mar 2026 04:22:59 -0800 (PST)
X-Received: by 2002:a17:903:41cb:b0:2aa:d5e5:b136 with SMTP id d9443c01a7336-2ae2e3f1170mr176070125ad.38.1772540579300;
        Tue, 03 Mar 2026 04:22:59 -0800 (PST)
Received: from [10.190.201.204] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5b53f4sm163133075ad.18.2026.03.03.04.22.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 04:22:58 -0800 (PST)
Message-ID: <2d6d813b-b2e7-408c-bf58-86d25859bb40@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 17:52:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: glymur: Add glymur BWMONs
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        pankaj.patil@oss.qualcomm.com, rajendra.nayak@oss.qualcomm.com
References: <20260302-glymur_bwmon_dt-v1-1-f4939d75bd47@oss.qualcomm.com>
 <fcd9de7f-b65f-4a30-a74b-57bdd690422f@oss.qualcomm.com>
From: Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>
In-Reply-To: <fcd9de7f-b65f-4a30-a74b-57bdd690422f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69a6d2a4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=2zOTDtPhI6Hq2gsOaQEA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: eBdRq3tVPDEr5iSyqdXP6WhdaFaUwaZ7
X-Proofpoint-ORIG-GUID: eBdRq3tVPDEr5iSyqdXP6WhdaFaUwaZ7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA5NiBTYWx0ZWRfX1Xs6jqxL/5Ip
 epIR8di1xEqPxLBPSiadqQYdbIhdPL45lpvGSM86gD1xB0SZ6t73OqGZ+ymSxUZbMNDtL2wZn75
 leBBSkb+V8eBfm3JMliyCL/1PgN96p80rmrGzr2VtzreU3x0aE4eoXlQGaBCS+wUMqPcGtxRXS0
 qdHF3XzlqPKHVT/UtkKH9rNof8+WiACSIOy7YvyAzJc6NK3cwcYmqmxUYR8d9cPeNwBiCATdjxl
 0ch5+FmzdcnEv7U3u0CAWmVdulCsr/16e95QhmUeVrzFzo7TrRfk5qi52OwS4cd/yyTr/zcTdN4
 5wmM9zGJVqDiD7dhzuV1RpN1TPGT+nxxddpq4gqpa5JoEDmY7cpQdLoiOBnMU4WyDGHhJXYizSF
 i/jPRt0U48r84MgAxJde4SmOtmV5HDKL6a/CbwqqyFFWqH9kTClK6tAk2+lcNwTx/x7I6VWxK4A
 zXf/S7eAyVQLmXX8/Vg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030096
X-Rspamd-Queue-Id: 69A141EF607
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-270456-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,100c400:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pragnesh.papaniya@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/2/2026 6:27 PM, Konrad Dybcio wrote:
> On 3/2/26 12:46 PM, Pragnesh Papaniya wrote:
>> Add the CPU BWMON nodes for glymur SoCs.
>>
>> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> Signed-off-by: Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/glymur.dtsi | 87 ++++++++++++++++++++++++++++++++++++
>>  1 file changed, 87 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
>> index e269cec7942c..fd947b1a17dd 100644
>> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
>> @@ -2264,6 +2264,93 @@ &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
>>  			};
>>  		};
>>  
>> +		/* cluster0 */
>> +		bwmon_cluster0: pmu@100c400 {
>> +			compatible = "qcom,glymur-cpu-bwmon", "qcom,sdm845-bwmon";
>> +			reg = <0x0 0x0100c400 0x0 0x600>;
>> +
>> +			interrupts = <GIC_SPI 903 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			interconnects = <&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>;
>> +
>> +			operating-points-v2 = <&cpu_bwmon_opp_table>;
>> +
>> +			cpu_bwmon_opp_table: opp-table {
>> +				compatible = "operating-points-v2";
>> +
>> +				opp-0 {
>> +					opp-peak-kBps = <800000>;
>> +				};
> 
> Can these values remain unchanged vs hamoa? Glymur has more memory
> channels (as reflected in the icc driver) so the values send to rpmh
> will be a third lower
> 
> Similarly, hamoa has roughly the same values as kona, which has half
> the channels
> 
> Konrad
opp-peak-kBps is proportional to bus_width and is calculated as follows:
 
opp-peak-kBps = (Hz * node_bus_width)/ 1000
 
All the existing targets do the same, since bcm_aggregate() in 
bcm-voter.c divides max_peak with buswidth.

-Pragnesh

