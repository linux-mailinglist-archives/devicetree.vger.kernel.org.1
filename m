Return-Path: <devicetree+bounces-270963-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGL/HOgEqGkRnQAAu9opvQ
	(envelope-from <devicetree+bounces-270963-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 11:09:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F79F1FE202
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 11:09:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B20DD30233C2
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 10:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E944E38C2DD;
	Wed,  4 Mar 2026 10:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y/CcGOq3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q0mLwnZv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C35237646B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 10:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772618932; cv=none; b=HmCaqGtGseq/3XqcqPLWHj/ZMHZyuAq9vr/5AVICfbVl5vi06uTgM63B1pFEdkAhtp5oaE1Hx/PBle//9DDRwL+LHEE11szyfGDEqZc5XuG5m3tXnj+8bKaQXGp9OYNvZp55t05Gmzmi1hXjmhUwbFO52lnyoJKJbbiF5V1aus0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772618932; c=relaxed/simple;
	bh=tFnKBY8ukaQ5gYs48idJW9ZlCBpp1MDP0D1uO/EbANY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F16P8+0ZuUyp49uwpWchDLjAm85RBZq0ADM4jRYghnE0T6iIIHHp8C9pGVMi+5R7hyGtBHC5CAKZBgtQScR45CeTsPY8JKQTwGWVsV9TJ4UKhD9cRUy84gkp3W7vFwrPXaLf4Indk96I8CUwcN7KRZz05a91x49eoIB8uZdajBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y/CcGOq3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q0mLwnZv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245Sdx9152707
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 10:08:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fzlp1+24JIS/MWcsYntqaR1/90WWm02p/xWprTh4BxM=; b=Y/CcGOq3H51XDQSg
	XtXtlXKR5Copq2rSH+9yUETBHj9ge8DcT3IuU9LZzhrhi+t1yIVFk1Cmih1hLVCl
	bmxrELvG6P6WaIJHz18Ur91o1ljTlghJ95/rxoawhYT+nZeeTD6Gvxg9CMyaf23r
	jWTc9XwlRsLl7OXaVEUSbmkRnIep+RragKUok34qjb6HYn6ofxQT1x82rqGcZXHh
	yZkCz5glx7H/RMTuishwTQsrx3LqcmrYkSmSXV8TMOYihP1XPwuVZRffOOoIVqg6
	Uv/GBuN/D8U4k20zx8KD+/bg5msJPwNEJKpwFJzEN/ufijUdsVI+9N+7nbuzPcgh
	9EoTkw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp3tvk77n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 10:08:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb38346fdbso535300185a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 02:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772618930; x=1773223730; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fzlp1+24JIS/MWcsYntqaR1/90WWm02p/xWprTh4BxM=;
        b=Q0mLwnZvha+wCc9AD58N2Fe+maOF53mMLF3XuvyjTku8vdBmklT+bWkLYT5KOiCUj/
         mnqsFJlP2ePS1ZOs1nbmDC/mo+0EaC+xUUFInaxr9jfkEo0737FHce/hlTX5VUCuwhD+
         nhFtNa5SBXiDEOWxFx1ccz9CikxYkBgtNON2/KK4Agdd3WKIiuiI7VJTJy3XsRYz0i5J
         hWG8QQyryAjEUbrof3rggOchvvWY4qNlkxlOO8HRxY7/9GSp4pElaZs3chLNxTtMSjeY
         Ku4TnS3/K0SHxbmnYkiCedkaXzju6wgPCRNDLWGZNxt96HfoRyyXtHhNH6CbZoh0F07R
         H1+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772618930; x=1773223730;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fzlp1+24JIS/MWcsYntqaR1/90WWm02p/xWprTh4BxM=;
        b=C517lgSP5svb+O/FLHhVHwYkZL422qgsAOfFIaWU402x8Sz0jLb13SZDM8EGRRT68T
         Go25GqsyBtKJB1koKsSFva7M46Sv3b4emC9NpEHf9s95l6dR1O3vJlipixfgsId5so+U
         154JzX9qR/440iOlJsmD67gVzTXqKgyAFTVPY5RLYTZCF8H16MtMNHdLE/WVcwIFzC6n
         XvYvze0mTSyq2WkIJB0x3Rno14aojJUdMx6Nx9ya8ZfRCtbZHp2s17vKJlgfOBlVzoAJ
         be90V4JaWDByIyeFroIoSBM4sihGYNSJpjv2dHoj1qpEVdGZBfk/+Djk9KKoDrYFEDCM
         KHQg==
X-Forwarded-Encrypted: i=1; AJvYcCV8ifEuMXFNCQLDMbmzlfGKMUXF8MC5aAc1kUeFvLMmjkfyrrLmQYR9LwPh9JJxid29lrIIgwrIrnPH@vger.kernel.org
X-Gm-Message-State: AOJu0YzTOQoI8w1XtrNSeSN/xqpaQXzRfL8/QbpF5m1eGvijOKpzii1L
	TyxsMQtDq/Ows3u2qP4jN2eI+CXZgiHrzUH7c9cIMJiG3Lr70zVgT389LvbHXd+FINeRBI6T1mH
	xNvj9P/7q/XZ33N0btMrhyrgX+hS4gFx818QL0JSbbL2Wj4yG7VFo1RjuUKpq10RT
X-Gm-Gg: ATEYQzzpQAy3ZLT88u8awAsfkGvt1CAzSaQtQNboYH/S08JT8LQpnXgY82vv42RCHrq
	W2mPvFJIRwg+09mMsRrPzTLgGAkkzT1pmAGqr/VUuI3wSKRJaYcAin3FtDLqNN//St7hw1ihNqa
	9mTALcTWCsVa28qxdAF1fdM5lELmLL7Hre7hoga5Tfe0OqtIMXnXlADWmEsP0LwsurdXUZWt5ZW
	cKJaZG4MP+2RPKP65TdMXQKAsnf8C9ZVS2AtNLjUXB/EPCytKRtY6OVwi22YnSaEc/arJF5HU+6
	Qd+NwJQBg3vl8XIE4Wl2KYwW/pQdQMRICOP7RNg5oXK9+ugD773oxefjHyw/TBSvSu4v4kg9dV2
	XbR1+bJHZ4VVc1AbqBg4xl69gniMpNPROQ7uv4dHn+Bl89UG2C0IOD92vX3NWRjkn0qivPrvMfo
	v6Shc=
X-Received: by 2002:a05:620a:4156:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cd5afb0224mr127638585a.7.1772618929955;
        Wed, 04 Mar 2026 02:08:49 -0800 (PST)
X-Received: by 2002:a05:620a:4156:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cd5afb0224mr127635885a.7.1772618929466;
        Wed, 04 Mar 2026 02:08:49 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b93c9fc1808sm247755066b.62.2026.03.04.02.08.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 02:08:48 -0800 (PST)
Message-ID: <ef5a0e22-2f12-4584-9abb-0d3202a58b41@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 11:08:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: power: reset: qcom-pon: Add new
 compatible PMM8654AU
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260227-b4-add_pwrkey_and_resin-v3-0-61c5bb2cdda9@oss.qualcomm.com>
 <20260227-b4-add_pwrkey_and_resin-v3-1-61c5bb2cdda9@oss.qualcomm.com>
 <20260228-polite-swine-of-potency-56e61a@quoll>
 <6a304d0d-61b1-422f-bb65-8f8055095c39@oss.qualcomm.com>
 <7118ad44-5a56-4523-baff-9afa8030aff0@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7118ad44-5a56-4523-baff-9afa8030aff0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA3NyBTYWx0ZWRfXwSVlZMTjy+/4
 7P84SEfJuMtuq1OsntX2hgxytf1Ucn2VDDQx4sl1O/GgFh+OeZNXL5jUlXiT2aLa5TZ4HTUb6Aw
 sQ1Bm9F94KTCRaeYKqwyFzpMJYFj/+8MGncbx58Rza5XcEQRggAOGe0LQsOl0E6GAl9bzgovbOS
 BAYbQib2jnAEyPDqUIofHsGVxxcm7Py47CnPwy+1pMlTd3iJ+XR/OcoE9QntvyKu5fhvgcCOTGu
 anefnAo+VjRFLEcjeYpzjd0lhhBeM94GH4e0840K2sfvWqinvzs3xXXiVQGvN3V2+c/Ae5zXQ0p
 NdsTYlViPU9jwRRGIsS+6kgAPhdPdL9q/KlKQEvw+bANVf7sa3oVpOaQXk6c2CxcfpbKAkQeWxa
 uMlpTZZNKNblUH7F0yMecAg2BaUdAPfBd0xLqMMG0/UsahoCKUx7OdKTzfAPedGP0yctkO8YHBr
 FvxbTrTLLYHtY++ScCw==
X-Authority-Analysis: v=2.4 cv=VYv6/Vp9 c=1 sm=1 tr=0 ts=69a804b2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=ANQLM03IkSlz37as2tgA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: SFbJDC6IquLOm5fZ9FdMG180T8UkhIui
X-Proofpoint-ORIG-GUID: SFbJDC6IquLOm5fZ9FdMG180T8UkhIui
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 bulkscore=0 adultscore=0
 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040077
X-Rspamd-Queue-Id: 0F79F1FE202
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-270963-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
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
X-Rspamd-Action: no action

On 3/2/26 11:28 AM, Krzysztof Kozlowski wrote:
> On 02/03/2026 11:20, Konrad Dybcio wrote:
>> On 2/28/26 11:17 AM, Krzysztof Kozlowski wrote:
>>> On Fri, Feb 27, 2026 at 06:02:28PM +0530, Rakesh Kota wrote:
>>>> PMM8654AU is a different PMIC from PMM8650AU, even though both share
>>>> the same PMIC subtype. Add PON compatible string for PMM8654AU PMIC
>>>> variant.
>>>>
>>>> The PMM8654AU PON block is compatible with the PMK8350 PON
>>>> implementation, but PMM8654AU also implements additional PON registers
>>>
>>> So does that mean that PMM8654AU has 2 address spaces and PMK8350 has
>>> only one? At least it looks, so I expect fixing the last if:then: - you
>>> need to drop contains from PMK8350 if clause and add new if:then: for
>>> PMM8654AU.
>>
>> The delta between them is such that within the already-described reg
>> ranges, there is some additional bits and/or registers (can't remember
>> but it doesn't matter for this point)
>>
>> This doesn't impact the described size, as all QC PMIC peripherals are
>> by design allocated 0x100-wide windows
> 
> I still expect that fixed.

that = commit message?

Konrad

