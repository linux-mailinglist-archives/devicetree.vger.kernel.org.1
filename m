Return-Path: <devicetree+bounces-266974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PNyHp5vmGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:28:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F48F168578
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:28:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3B59303D2E0
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07BE334D917;
	Fri, 20 Feb 2026 14:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oRFlMzhU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WouY/8mm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDB11FCFFC
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597715; cv=none; b=kkQhW5RoDdqQwUK5yy53z5gygRX/fecqRyJVFhcJPr64GWMH+xj7FP/lcjBaCvezm6qr6DvtUh2khKNbie+RUBcnGHYpwi3R3N9DTktfE1XKmP7wM3are5ngN6TCDcEvC0kreKcotfngmM+O8oGiRRCcseSGpOtnh0nyuAy7V60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597715; c=relaxed/simple;
	bh=h8Htp+mwcCSaFJoL2ZEOywZTV52NZLG/fZiK5e0KbaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cHkSh5Ec1LaunYwGpDuuH1vYgipCv+tK7G7uhE/FqDxbhL29bDmeNE2a+rzoaoEh0VQtFHYvSo9jlQ5yiqJ/Vwj6zIxZ4t573m/COZXJ71V6hsN560liw2E+MQQ4xLrEZel+aaNy9BiQVuyrkZibfkx1rqSm/J113yoOpmddwOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oRFlMzhU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WouY/8mm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61KDqrlp3889034
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:28:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gk3h7dcBRqCUiXmykbi+R5WQVC80hbSdQ7sCUeo1Pyw=; b=oRFlMzhUy6spfivM
	mVl4UGqETcOOpRQ5+to9ScVvHVLZRsICivl02HimrMbUzfQvH1N/0gyT3ODpj5qf
	IbTVjrIo7WNxWafgKhQQPVevcq2jOJK1pk8Zq0VV8VXCyQunit51sXjd1+mRHwxZ
	UYDZIqdgfVvpC0iCP2YYKpBeVMihb2lcCTp9En7KT025D/yhG+kJQeY11BEAEPWF
	MM+pUMhL2YhwDEmsQRQSz6U80Gja98fz+AKu5JccgG3E5WvxYlJ/00DThsTmD0lb
	LjiCXY4ZunqF8XIPFTcaJoA+V5llXxbmJng7dWzGY19Upy/sbblw9RWhikreaYj8
	NF067g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ceh4j19v9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:28:33 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a7a98ba326so34685155ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771597713; x=1772202513; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gk3h7dcBRqCUiXmykbi+R5WQVC80hbSdQ7sCUeo1Pyw=;
        b=WouY/8mm5HUxb2Fg9xwir7yZOLaIzUOYCz97c/QMfnMFhUUDBgHLq1AQMFuJuVkqBz
         UYW33mcGSQ29tM+r4h2/McDTISENTk1fkji4o+balb0/ewZDNBBjvayGGXyjHeKzv7y1
         1Y0+W5axT6Aaw9fSaRor56rdEEwQbHN62v0EgChY1UugCj+/5O9l4skisLQJm69Okd9p
         KZtp3a8D8BMIrMXWqwKriWAieQYTYksk3Y4BVkt3hHoolfpwCYDOGVwfbNnTTPOj59gy
         MFOb4vX4Hl5eeMXjPNRoSCxTcTtL2Q7Ai3mLtdS04p61z+T/SwLXtuUpfMsPlPy2Pt+7
         bKUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771597713; x=1772202513;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gk3h7dcBRqCUiXmykbi+R5WQVC80hbSdQ7sCUeo1Pyw=;
        b=aNsJNgu9SBkp/rYdWk/tQ/yx5PusZ+xaSPlPtdPK+OYeHMieNpFsHRCxNqbUG3wtlB
         nn3QS7Pvhn3/bxLukRr2QuCQSjYFBoDrDa6A2HU0MYzbXWaXJuG3Sxre8k/Ij0TusUKC
         n/CFb2hgkszLivE7rz0btK/wG77wEgY1F83DAY0YlVcr983RxisZaXp6Q4yl1Gkc5AJy
         AJ1h850rEn5hNjhd/C1uCGAja1IDKDzcQhKnLQWd9n45BYPU8dL0oODL6zPvdkVLJg3J
         gN/Raax5rMlb+tWv/4QdJQzUXEJUVrhRK/sL+pGrSkxlKoorgWxsSprFwJ2gISMEvsKZ
         6MZA==
X-Forwarded-Encrypted: i=1; AJvYcCVeoNcy/ubMHmUenT1krjhg3nT2cScuXJCJAfC+eYVtw3sJk4mecDmqcm3MweglzIJd06FYf2pYzXW2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4SVoJsCuJANde0XelVYO95rH4dap09eTnI+pMLlDF2jlf+rZO
	TkPwGNqnGXhhveEUVpdKQi7VKJrOEwInjQeJSRfQZSBpZaWIAVWJ1hs3JH1ZQYataSvg925TgyW
	T5tvTS33KgIwnFBrY3FdWg0jKMdeTefVDm7GvUcPLat5DvDBVtVOD34rL9GUMwdON
X-Gm-Gg: AZuq6aKEWmoeYs2DRquKg/Q95BTLcu+Cm3AJS7aPQrH0wM8bLFytBmva61K2ANJIvEY
	JlNoIOYutJ+G7Ovz3ZzuBmE1C7JSWBXIC2idrhkAMTFDLuAJ+Xx2WdAdsh5TTSmSGOeOOZGmqxV
	GUe7QbDeaCSxSnaRfgeGNukcioJy3OAyABZ+F/1aIA29DQVfGYEWNnfh84pvssfvblPTMF4TuQA
	WIg2z6AD7OrdIlQyVc2IR79KP6bZ0E6oJ8e24iyeQhDTgizCfAGy3d0wifkI50FuqTvRwl62k80
	pfRE2YDmadchqlocEdAClQ4pwzmyJGpgGiIIJ6TZ3jMNt6FMQzw7/jshaHAZgqD+eF/895Uryju
	mUDwrhUseroExSAlXovdTKP9W/Kuyk4jffZBk/WmMpQTlyzZStQ==
X-Received: by 2002:a17:903:41c6:b0:2aa:e9f0:146c with SMTP id d9443c01a7336-2ad5f7b9775mr64576335ad.29.1771597712488;
        Fri, 20 Feb 2026 06:28:32 -0800 (PST)
X-Received: by 2002:a17:903:41c6:b0:2aa:e9f0:146c with SMTP id d9443c01a7336-2ad5f7b9775mr64575875ad.29.1771597711850;
        Fri, 20 Feb 2026 06:28:31 -0800 (PST)
Received: from [192.168.0.195] ([49.204.27.241])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a73b0fesm195782515ad.38.2026.02.20.06.28.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 06:28:31 -0800 (PST)
Message-ID: <00a1e492-1235-4dfe-ba0c-b1cb7c43ae22@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 19:58:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8750: Add camera clock controller
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260220-sm8750_camcc_dt-v2-1-e4b7faf35854@oss.qualcomm.com>
 <13553877-a4d0-47ad-88ce-3d4d5b353101@oss.qualcomm.com>
 <c8e9eb0c-9c49-401d-ae4e-21dcb1e1e843@oss.qualcomm.com>
 <a39f5526-8727-4fb6-9a93-36f412b93f88@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <a39f5526-8727-4fb6-9a93-36f412b93f88@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDEyNiBTYWx0ZWRfX6n42v+WlzSsp
 a29P2VWDTzWqKPS9CwaRbjHbDgIEPRLU4cmFdktZQn5mDAFzbUZ96AuBNDlldKvH7Aw8tDfbbuQ
 3jDhDG0Xt6+QOGGxT/lrW+3xH5+VxhDwBKcnIvHmf3bX5O1+bt+1fCGFm6jyuBsN6e4LxURVr4K
 AWTJUFAZwz+GHVwVNlxnLkwIMiQAPgIw/BcAZmchy7ZtmzA4UTWP04Bm80DqlqnjQOlTy6EfjAl
 2fnbBfQNasnkh+PIuBl45lw7Su3RaIgVCRYz8kPmIcuGY04jWMMgI7t2CTD+M1mxlHBbz1gTiNR
 vkiO5A7+/oLkP6E/VL4z85XeSGNkn87+zLAMMdT49OhfR26JhcglqvqjdhKx4ipUIfBG0uDOpId
 /qgRKV8ucFrA1USLi87T4JiHbKDguzTIbZOlCekz6fkKV6kweizNLvi6SO0bXikJ/Ltdg2XEtJX
 iaNOllnmMg0Fhvq0Fkg==
X-Authority-Analysis: v=2.4 cv=R/0O2NRX c=1 sm=1 tr=0 ts=69986f91 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Zk7Ki20fgETz0Ru4rw8ykQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=JSsU4YdMWw5dEmU7CcUA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: _w2jH4mFATZF8WcbhCrEhnEOGxJp-J46
X-Proofpoint-ORIG-GUID: _w2jH4mFATZF8WcbhCrEhnEOGxJp-J46
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 adultscore=0
 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200126
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-266974-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1F48F168578
X-Rspamd-Action: no action



On 2/20/2026 7:55 PM, Konrad Dybcio wrote:
> On 2/20/26 3:23 PM, Taniya Das wrote:
>>
>>
>> On 2/20/2026 4:25 PM, Konrad Dybcio wrote:
>>> On 2/20/26 11:28 AM, Taniya Das wrote:
>>>> The camera clock controller is split into cambistmclk and camcc. The
>>>> cambist clock controller handles the mclks and the rest of the clocks of
>>>> camera are part of the camcc clock controller.
>>>> Add the camcc clock controller device node for SM8750 SoC.
>>>>
>>>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>> ---
>>>> Changes in v2:
>>>> - Update the MxC phandle to use MX for camcc node.
>>>
>>> My point was that both MXC and MXA are used
>>>
>>
>> My bad, even I think I got confused with this. We really do not need MxA
>> voting as it is always ON. We can sustain with MxC only.
> 
> Does that mean we don't even need any particular RPMH level on MxA
> for this usecase, just for it to be on (which as you said it always is)?

Particularly for this usecase you do not need.

-- 
Thanks,
Taniya Das


