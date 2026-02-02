Return-Path: <devicetree+bounces-261812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Fg2FPmdgGl2/wIAu9opvQ
	(envelope-from <devicetree+bounces-261812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 13:52:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EABA0CC80F
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 13:52:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8AB8A3018293
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 12:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D0E319E839;
	Mon,  2 Feb 2026 12:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NfsBove8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BHHVHWjV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFD615C158
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 12:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770036624; cv=none; b=k9mZLwSAB1hd/esAdFXbSqmQVCJckBV0Bswmej7NpAbGZNFardqX1EBFDI2aWSVX9KU8yRduKBmtun9VnOGDq7f0gpyvo5TFD3k4e1I1uIDPjeg2R+BZ4izWQx/kjjnznaDpNl2Ibt73RcDngqZgryQFjFj4cBCWYDLi+sBveTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770036624; c=relaxed/simple;
	bh=qt2kHAGsQKo/xE0A3dX1K4NjwU98z3FU+Gtsw6xxWDc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gsex4lylVcNTEp+U5kARHtDqV4JM8YmbkmjDW/KNHlLu61OGZTOFEeOo30oL4nHC2I/gclyaArmf6/gIs3QXNYXXhIQ7EkqhuBXK8q3nsNiYEerOKAfj+oXz6KfYK9YmC59pFD0FT0KgaCmdCi8FHzt8oDmR/dr5jg6u0x5J3WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NfsBove8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BHHVHWjV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612B5KDv3459105
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 12:50:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J6c+Mh0uKjmvgW5h+hi39oewlODEN0YuUXn4CLhEsFw=; b=NfsBove8Q6RnUb1Q
	Krl5VBvDgzkl94GTQj/sBjWzvOy3I5J/+KBpeqaUtnvGgSvKUlecj7BxDB0uvNgL
	GuJZouJtSZR8LUJAVF2cB7UsCFzgq0U3xYu7igRUQsdu3g1jL3t0CavJWi2VWBv+
	ByFK3Kajls6FaZgN4bdlChawgBmXzoosG/y9T2BJ+aKtHxmHbKqY7I+pVKvq4jWL
	NpnRZWqmav+p/pG3SDZ62WiwPXiBYG57sfnW6Tky4f/vo1NvbpJ3CIunwJMTUoSC
	6Rs2vNOpTohtglMRShaoGj5CqsrgpJLzSGooO/2SPCVrZ4zqjfoUiqTJ/a9SvYTH
	LV9JUg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2trbg8hw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 12:50:22 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81ea3358dd3so3715744b3a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 04:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770036621; x=1770641421; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J6c+Mh0uKjmvgW5h+hi39oewlODEN0YuUXn4CLhEsFw=;
        b=BHHVHWjVF5uoGUhqKdkusyyKCENqRfE8b7KxPt4QXfIxRZmemC8KICrP9fXmU7WCvB
         S1pAhVnGFY6QDsLACmztHkwr+Aq3nzx9r210dEj8ZNrtrwcvEp375aqPm7yBlpTYJJM/
         Lo5YBbKkEaLTSMBk18U0OCNuvhBflW5Mg7YhktTGTiI2cwLSCVP+TMG9oPR67+rsZ5nG
         QR6VkMY108InsKLC8LMEz27z54C309HYgtpc8Z8j2PpFLuAtorrEna+5i5qd+Z+ZdWNr
         68ZfQT7me7C0H2J4JrlJ0+xrVhrUwfqBR7Bm/OGpzu9rYTUJt6OvMyM9nsNj3y09vAEq
         bZ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770036621; x=1770641421;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J6c+Mh0uKjmvgW5h+hi39oewlODEN0YuUXn4CLhEsFw=;
        b=XfNR4Vvp9GNQvLbrJd9WeTo41f6mdjkTY2GlX2IvFSyN9Y1dPFC2HKDzcL1zE5aDOi
         S6sJfYUnQ1QIxFMANiGHfiT8yQ7yRN3kWPZyrIw4KrfedMMFix2kygllgHedGQpvx0X7
         O3U/6uAqdXzqQYymr2uPfO3xem6GkOh14tj7FYlmWhKctcRbb2vfi86ZZxRZHkxZEp5f
         z0WQdBkIoYWiAy37eNrNNrI4WuXSNVBtA/9ZvDPuiVDbg1lHu8/iPWwUaS2K84plwDLB
         4l3v+r/2tc+KTwDFBmxcgRVfY7qn8Pjevh3okL/mZDwOJv725plGvKe0y6EpSeNkD6Q2
         ww6A==
X-Forwarded-Encrypted: i=1; AJvYcCXy+9htmaLOlEiUh13CqMuirrEOhdgO8xLmvx5WFsi5mkFfuzkfeeHiDDh5aS/dDvh/crrwJQoAVpvj@vger.kernel.org
X-Gm-Message-State: AOJu0YxrCagUBbjuaFRhMJUDGW1UoBzFxGbKaw8bL9IFgt4///Arv7y1
	Mthf2GK3XB1EGbbXzrQilgogg5R1MDYzCrGu5ehGnv/L5t18Cq5wtUAPTRFKI6vT3hXyFn7GDiV
	KhKPoMGm23h1OLR4cztpRvKYb/7PPyOvQ6h4k/JI7sIwy7Ok6ejhTeZwwNvPhUrd+7FmGb7Y+
X-Gm-Gg: AZuq6aKKjddqg9nrLOwZuHGPYJc4p+EhSLh38+d0Ex659ruXl9Jr4m3zcTULmm/yw5X
	zHMcdw29EbHZx4bBM4IORQpgTreOvAZnCk2JvCTNRUPRZ1No70LmQNj9VzndXRafVThq92yEAMP
	s+bzaxAKgfIfsF9kiWUZhmUGzZ2mrjp8dmEpWQaXzxqrY+nFcH7lbJaIzHkaQkE9rNTcm6C7I2u
	CyHE9Z0fhe7jCuz7cpqmsQNfEpua0fPi5bb8oB0AePGoRS2PxADJSYmRclLJ025awlaEYoHxOfK
	/Kp9rbCxIaIabwh8yFTcGLdArJuDKBhVL2LonIXxZTuEtHdnyAl2wZhZ5rTmNV3OkfcvIO/1ikZ
	wWMauiJGpDW4tIIFdfW1E0Dg/6OPxpn2Bq2Zcaza4DiSuDM1OxlD+xA==
X-Received: by 2002:a05:6a00:94db:b0:81f:99a4:190 with SMTP id d2e1a72fcca58-823ab643c11mr10652524b3a.7.1770036621020;
        Mon, 02 Feb 2026 04:50:21 -0800 (PST)
X-Received: by 2002:a05:6a00:94db:b0:81f:99a4:190 with SMTP id d2e1a72fcca58-823ab643c11mr10652502b3a.7.1770036620571;
        Mon, 02 Feb 2026 04:50:20 -0800 (PST)
Received: from [192.168.1.12] ([122.164.84.27])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b1d024sm16258928b3a.12.2026.02.02.04.50.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 04:50:20 -0800 (PST)
Message-ID: <24bccc7c-8b86-4c12-a869-49bde7b2e44f@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 18:20:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] arm64: dts: qcom: ipq5424: Add the IMEM node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com>
 <20260130-wdt_reset_reason-v6-2-417ab789cd97@oss.qualcomm.com>
 <2a19de94-8a5a-4fd1-b15a-9b76ea5076d9@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <2a19de94-8a5a-4fd1-b15a-9b76ea5076d9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ldMhROwuayqUhudj23RhOR4M_6jVqx00
X-Authority-Analysis: v=2.4 cv=dcmNHHXe c=1 sm=1 tr=0 ts=69809d8e cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=0VawqKFGzM+h848LIW4odg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Im0m2ywfNG4mJcU91AUA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: ldMhROwuayqUhudj23RhOR4M_6jVqx00
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA5OSBTYWx0ZWRfX8VzW6xRq8ZTA
 vwM4TkqQjZOOkl5x/jPtsW6PrBUkHHU/nLP5InAo7T41BYH5mYRTeWISuyXXbVe9zaQfwT7BhfS
 lc5etiZmVjBrxG6P64klKFX5WpnRsyVTLvLD5fcK1OyHuRsZNjYJs1FH195rNbrgsHcjcAeViD1
 xE7ntmjrfRohmWZsannqlRfB+e+3pv5ueWRy/bJ4IRKbzEoqV3tJ4RHdtN9QhI4FmOiBSqU+2pC
 y7rcMGpB73tBvnzhmR23Z+UaiIuU4YBVrAs0FhLhmEAduhGrmMWmoLUuZS+fXmNMwCHOfUAE8ku
 noSZo+VauT5NZ9MBJ/SIQPOKWAanQr2ncdKiDdB+5Uau9GP+r4l4sXSWT/AVo22KZJGrmT4gbBo
 eRb6YZLHLKa340CQ9Aba3w+TRbsPuN2jmHuoTA/5A0R8SoJNdxEh51GmqhShSgtDj8772lItv5t
 XJcZ65qgBsNaz836Sdg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020099
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261812-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,0.131.57.192:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EABA0CC80F
X-Rspamd-Action: no action


On 2/2/2026 5:53 PM, Konrad Dybcio wrote:
> On 1/30/26 11:44 AM, Kathiravan Thirumoorthy wrote:
>> Add the IMEM node to the device tree to extract debugging information
>> like system restart reason, which is populated via IMEM. Define the
>> IMEM region to enable this functionality.
>>
>> As described, overall IMEM region is 112KB but only initial 4KB is
>> accessible by all masters in the SoC.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>> Changes in v6:
>> 	- move to mmio-sram and drop the Konrad's R-b tag
>> Changes in v5:
>> 	- No changes
>> Changes in v4:
>> 	- No changes
>> Changes in v3:
>> 	- Picked up the R-b tag
>> Changes in v2:
>> 	- Describe the entire IMEM region in the node
>> 	- Explicitly call out that initial 4K only accessible by all
>> 	  masters in the commit message
>> ---
>>   arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> index eb393f3fd728f0b2fc8cd93c849f8c170d76e312..90790f99f0597b63801d4e07b9b72cd372ad46d4 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> @@ -697,6 +697,15 @@ ssphy_0: phy@7d000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		sram@8600000 {
>> +			compatible = "qcom,ipq5424-imem", "mmio-sram";
>> +			reg = <0 0x08600000 0 0x1c000>;
>> +			ranges = <0 0 0x08600000 0x1c000>;
>> +
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
> I think you may need to add 'no-memory-wc' too, in case someone uses
> any of the sram functions on this in the future
Ack. Let me take care of this in next spin.
>
> Konrad

