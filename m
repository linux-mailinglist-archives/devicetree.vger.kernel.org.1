Return-Path: <devicetree+bounces-262895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMz8HxdahGl92gMAu9opvQ
	(envelope-from <devicetree+bounces-262895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:51:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E47A5F00CE
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67F43300F5C0
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 08:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FED135971B;
	Thu,  5 Feb 2026 08:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jNERnH/I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JmoQF4gx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF3D2BE053
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 08:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281453; cv=none; b=sBahv452NIg0u2NgtOz3FFPiApr9bhxp1l4fspB5DK7ldpCS78uDhsqDChKMr4FJ6cbtP1oGODmptwhKl1/tzoLcedSw6v+bBijXx61emaVDCpFZWiDTAnDwjJ83kifE5O03Uue/oQQuv+z/UBaJ90uPfchTOUYqkuBI9E79uYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281453; c=relaxed/simple;
	bh=KIqNGNbcmImNbHhAF34aY45imM2NLg2uNBU7JzmAimc=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=JrLdRwYKtVpRkUw6AGTH+DMk8Dwr4vPFS7HpIqgePHKkcQA31j5gU1cJOgNgomLKBA1IIwjQWumomTy3A/J5rsLCGq5JYIrszaSp7yNGtkdBh/6P65fjeoldhlyn+ml3xOe3JdCyOdQTz3DPCh4B+0EdduDjuOeO9bexz4YgyR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jNERnH/I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JmoQF4gx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6155rIUc4168198
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 08:50:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KrakDA3r1DWpbWHkPcwLM0xWLh+O4InpD78DwsJ5jYA=; b=jNERnH/InUqhcTLt
	uSnwHSimhYfrauTIZijI/OJw8fU6kYDAq0sBXGv5pjX8/hu/i91OXlgKKBRjBUuh
	K6hY0+gEtMccDGoAlKWfy/mIs8WpCH6CSbJR9fjm369fYzY3/aEnPQQX00w687Lp
	/zXYFut5DNzB/HfjfnmR/f/bWHZITIoj3HG+neOq1QyK0aI1vJcuf7DxRqUjF4vX
	LJGiVrydTincgPi8fyQq9iku9+SWtaV774E2kRcCxnNX6uQG5l4d5asXnhId5G/V
	HDrekjpNGwFrrvq7ANC9VM86YWsAOYIqRnR22OyQE6Y51EllLv79BOS4cX2/5jyN
	9KtClg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4neg8h4e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 08:50:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70c91c8b0so25108085a.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 00:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770281451; x=1770886251; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KrakDA3r1DWpbWHkPcwLM0xWLh+O4InpD78DwsJ5jYA=;
        b=JmoQF4gx5XXWZi9tzR7FiFucF2dXXn74KV2QlBL3nr+Fn33fHCC6DtWKbFi4hyUUq+
         mW5dbvLiK4AceT/Oo4VslTc1IZhPlzPuhsGpVjBD5xja7O3+obSsZIcHBtgMtCk1Lrnf
         pXz0MnItyBnVNiP34jk9sXjBKV7OXd2hJgSgR7nmj4GiUOG4668qWA1IaJxlL0m9FMxV
         0gkyhrspKUxs/Rt9wRKHmAH4EEvzW1qClBk14GaDpdSohrmVYZooXHlhArFen2hXHTIa
         G+wmlaqDfxnVk9y7syaYqq1MBzhcdn5nE+xoMwaKj05O79JWnaG1gO6DZK37DCQXo016
         OKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770281451; x=1770886251;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KrakDA3r1DWpbWHkPcwLM0xWLh+O4InpD78DwsJ5jYA=;
        b=anAiGnOXYG1bCeZB5xOI97cqqp22E+NZELm9sYGbFNet5LrGjWvAtidKkQOKVG4ess
         OpPMqd1VIzFX9p5wItkp1aUCKvfEUBzgy7ughjH89HBVNmv98lMJa6KOfc/27iYi9362
         FGMnRw2QotyJDjgrtDz8I0q2zidsZMn478mrfHzmHLnh/ZnYR9meCcPRxbta/0nRbdrx
         MNg5sMhPOyDydVO3PszjsSUxZKCPTJWSyNR6lDXwlqkQL3U05wXV8DpsPbm3d3zNZ7So
         s1r+iWsjDY5yvShK9ymgKB09xsIjza913h+yFkW5VgZ5kIWmgFzShLCfzjtv6k37G+9B
         zDiA==
X-Forwarded-Encrypted: i=1; AJvYcCUH4RS18uh2/HWyNTzMHrz7/Zjjn6eHBJZxA5MBji0mJ7LTzgUHhG/FVwTxjRHrZ25UoORPKOXrJrB8@vger.kernel.org
X-Gm-Message-State: AOJu0YyEHVn1lHZP3vOnyfF49Jn0zVh38LqU5t3Mw8UQHE8mSCY8o5p7
	eaG9tV8UdQ+4Y047tPvYGyJA0g0qHBLfT5PthWAV52rms6wV8djijPI0uc7Kjz7/v7bbpQ5XgMP
	w33AzFunc1LKCqqM7reHlqni5TJXfP7htE/wcVbM+n2XsXNfnC4FLGYlwkyK9PfU0
X-Gm-Gg: AZuq6aLYHYB3HY/e4ilb267+xk5cDmeSuNz5VRgRZ8LQzxZi44bDZCNRJULyTKljgcU
	kULhdaQ64Q2roTReEm5AciGgoF5QzrO/nBCBPXx6V389d0o0n5XZku0bR4mhcGdhaNhiK9KVDQ2
	wV8PbFn40fD5BoY8bReqXWTkSlt+3R+RypYNAltqUYFZxuWOURUVcfZcMsYBwvFCdYsVW/0TMKr
	mWPmQvit+b5ZC9bw2/8TbqktwKkQp8wVrKhc1/l1ReuFc/2sjvn5hPTdES51oIKaBetUXFkD4NA
	dzAdAVT3rpFuKY7y/K1ubJzjW9vcF1jXlHf/BqFMMBNHeLm4mglWQSKlxIctwR9QqFv9MoGl+Gu
	te5nCFgYQIBMeMyP+cT168RNdMeYrT4DY/sesJq6fWQG8jDB/noF47DEG8gmCDZXVSMI=
X-Received: by 2002:a05:620a:4611:b0:8c9:eb47:6e9e with SMTP id af79cd13be357-8ca2f82cf1cmr575523885a.2.1770281451036;
        Thu, 05 Feb 2026 00:50:51 -0800 (PST)
X-Received: by 2002:a05:620a:4611:b0:8c9:eb47:6e9e with SMTP id af79cd13be357-8ca2f82cf1cmr575522085a.2.1770281450620;
        Thu, 05 Feb 2026 00:50:50 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9fcd8f4csm212078366b.6.2026.02.05.00.50.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 00:50:50 -0800 (PST)
Message-ID: <b2ac0e48-392d-4c4c-86fe-81348b58f336@oss.qualcomm.com>
Date: Thu, 5 Feb 2026 09:50:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] of: property: Create devlink between PCI Host bridge and
 Root Port suppliers
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        robh@kernel.org, saravanak@kernel.org
Cc: andersson@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        qiang.yu@oss.qualcomm.com
References: <20260205070640.10653-1-manivannan.sadhasivam@oss.qualcomm.com>
 <bfba9d62-2741-47b8-8325-2d932c20c9e7@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <bfba9d62-2741-47b8-8325-2d932c20c9e7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2MyBTYWx0ZWRfXytA0xnix1U5o
 4+w1kkfPHE7/wGi2717gtUrgQyj8usrXCjMaWGxzBsqrSIIuHpZgxG1G5B819zqFTFz4fa8/LLh
 wrB3voiTpoNSBOTawdI5JnwAGKDNNV3AyKT6TbtSsoxikVsr/OsqbijhbcaLq1lKTVv+a5ZXWK3
 SK6eEdeVXv6x7F2FaSloLa7dhWOBT2VZjRLK8r10aLpJ/P6iaH8fCoz+E7pedvFJ9KjYrsTMNNX
 tQYU6NCSbJax0BYeqC0kNMzsmdGOmQmy7m9Mtw4b73OksOhU91Vyd57Mhv7gZrM6DbeaUKS/tvq
 hOuEElnVhYEl8/JOe9IodzbU0IaFnK2Y5K6lHJJKCEVipZ2VcRhzmc0VBlMp7HAhOcZdUA23uZU
 iOsvJfMqOmUyUvqtpCg0vxJUS1FHaYwqjzr9F8HkzlHADHhkMHsUQSGuMs/5tthd/RtuSCXvniH
 IT/x22/acjDwLojCKPQ==
X-Authority-Analysis: v=2.4 cv=ZITaWH7b c=1 sm=1 tr=0 ts=698459eb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=LKcR3ohmTCdqcgAtF80A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: XMvm1Itg2d54PZfxIPjgUMp4G_W7dDuH
X-Proofpoint-GUID: XMvm1Itg2d54PZfxIPjgUMp4G_W7dDuH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602050063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-262895-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E47A5F00CE
X-Rspamd-Action: no action

On 2/5/26 9:50 AM, Konrad Dybcio wrote:
> On 2/5/26 8:06 AM, Manivannan Sadhasivam wrote:
>> In the recent times, devicetree started to represent the PCI Host bridge
>> supplies like PHY in the Root Port nodes as seen in commit 38fcbfbd4207
>> ("dt-bindings: PCI: qcom: Move PHY & reset GPIO to Root Port node"). But
>> the Host bridge drivers still need to control these supplies as a part of
>> their controller initialization/deinitialization sequence.
>>
>> So the Host bridge drivers end up parsing the Root Port supplies in their
>> probe() and controlled them. A downside to this approach is that the
>> devlink dependency between the suppliers and Host bridge is completely
>> broken. Due to this, the driver core probes the Host bridge drivers even if
>> the suppliers are not ready, causing probe deferrals and setup teardowns in
>> probe().
>>
>> These probe deferrals sometime happen over 1000 times (as reported in Qcom
>> Glymur platform) leading to a waste of CPU resources and increase in boot
>> time. So to fix these unnecessary deferrals, create devlink between the
>> Host bridge and Root Port suppliers in of_fwnode_add_links(). This will
>> allow the driver core to probe the Host bridge drivers only when all Root
>> Port suppliers are available.
>>
>> Reported-by: Bjorn Andersson <andersson@kernel.org>
>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>> ---
> 
> [...]
> 
> This is not 'required' in bindings and device_type="pci" doesn't uniquely
> identify root complexes (as can be seen below).. but I suppose this is the
> best delimiter we've got
> 
> Perhaps it could be made 'required'?

I cut out the line where it said:

if (of_property_present(con_np, "linux,pci-domain")) {

Konrad
> 
> Konrad
> 
>> +		for_each_available_child_of_node_scoped(con_np, child) {
>> +			if (of_node_is_type(child, "pci")) {
>> +				for_each_property_of_node(child, p)
>> +					of_link_property(child, con_np, p->name);
>> +			}
>> +		}
>> +	}
>>  
>>  	return 0;
>>  }

