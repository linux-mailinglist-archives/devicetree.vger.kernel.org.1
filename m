Return-Path: <devicetree+bounces-265699-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOQuJD/6kmlx0gEAu9opvQ
	(envelope-from <devicetree+bounces-265699-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:06:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C561142AAC
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:06:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C749302CD30
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259E52F12B3;
	Mon, 16 Feb 2026 11:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YECjFPrT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G49uk3jk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4662D3A7C
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771239932; cv=none; b=H18GxfqQRczxWsNfccghnsIQKR8fXqU2hv6MajjdEbELhE6pemebwRpZS9Kuklve3zjdyJQzho65b4jOrYMjuhn8KXE63MH5GZ1nwi6uAHnQur8YQ/degPuELBmIdgt9ahVuiFXhONTgGpKHaKc7Q4Y98fAcEyGxcCOT1Ng7qr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771239932; c=relaxed/simple;
	bh=axEx3VHoc5uojuaL7EUNQLo4zjFgdBEAqt3gWqgER+Q=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=CKAtg1YOiIdj8QnBq4PDWFkULjXrRcihMUyMtELWi2KpGUWx27JmNm78gV2N+E9hTb7k6cAiNwa/gN1e7I8CyDLbhhpgIkZEFfcVGqwirznaVZqxcphr0Smftqef5xtszjGOVNatu71TqmvgaHw6gviWEVZoTlI7GSTWP/ibsLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YECjFPrT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G49uk3jk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61G8gZRA2803382
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:05:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YMni5B+nUretOJRqmOjn0HSOX+2VPm/OmABagc+5UNs=; b=YECjFPrTbJi/78dy
	VTN+dqQabkXQsCm5po2S4ioJtsaTNDcUgJApYOxY0afbfs6J54c98f/VNPJamoCi
	TBEBl6e5CN05uBnD76Di8cnakJ5T7498UkuVzHIXVUPkcgC4l6/w2YC2Mf+fndtX
	kn79mRhaSyx/KqSbe3GX9m8VeCFTZdOV5qSWC1EGfAFxQm0UysFQMjG+UM8fQ3+n
	HQxg6SCpqO7LLnvYsGKcSqnWZ0LtWkngVHk5zNDj9q0s4I9i1K6Cw0RlL2O1VD2q
	YZXwMBC5D26/aoUMDGf+bQSXfF5lc86ba3TbNECXzMXouQ9Q1ikGpIqT3tIEEq+I
	R4lTEg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbyxugbwf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:05:29 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b6097ca315bso12506458a12.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 03:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771239929; x=1771844729; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YMni5B+nUretOJRqmOjn0HSOX+2VPm/OmABagc+5UNs=;
        b=G49uk3jkA9u8Z0Diz3CixuqXw3RALagZiNXu4uw5xojHf53uSVWbP+y6s9WI8qOwZy
         XMVbHhxtrv2CNPABmxYqsMayGn4kyj4GaBv/qYJPXNdFElvEpWfKq9z+IXfzpvrdK+ng
         yBtzFTLqjCzvrO66XOl0UhZ5ubBmCV3aotwdzEs0HPZ3b4oY6rYvLptzcYEPCiRbSJcn
         lnyrrOgr1GAwaR++4BIRUWz2A4cKLaIWpkilGY5xeHnsP7uSubx+5RHfzkJ3fRbDC3wd
         n/EAooKkUvu2ct59wUsqDvw8oCVKB40Ftk5njBMFSmjL+TqDUC/11yZGnWRO/i9Vn+Oi
         fDvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771239929; x=1771844729;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YMni5B+nUretOJRqmOjn0HSOX+2VPm/OmABagc+5UNs=;
        b=VWmrP2JsyJ3HQgbcpFqLdix6eDPHJ9h1ChTKMRw+3sTPRLp78hfRwDTFrAMSsx7L7D
         5g/ZrdXKGdZ4jZYrgTaC7DHOaE0gbMm5orUTYXBcPki5dLyC03eI8yajFrx4G5+Zgw6J
         n8RE4Os4hF1zvwK1PK37DVolhEs9IcJFVRoiJsafFwXDm3dowONYcLJtpFBWiQkbb1Jm
         /uZ/HHLbKVmv+RwS4erUaJFd+lpqbO0O95Km61nY+6JXSpqAmQBA4iF/UhMMMc6NmE2J
         A3FLz8syV7UQUkPuKluZ2bh0GTuI0HmXzx1uuZcXxDNxcFPP/NVaTKF85+TbrFaffOM8
         I66Q==
X-Forwarded-Encrypted: i=1; AJvYcCVcEgr7nb4UNhsMahZfqfkjq1WA8qZ5qhrR/DafpgTiQC9IZJU74y4qPU3Pc2zODI5vFRvld+RGnxew@vger.kernel.org
X-Gm-Message-State: AOJu0YysBUdBCVBbYkqZN9HSTbF41ABNUym1tR7QmdKZrrZ05eQn9Ld0
	0RTngactA6uIalYiJ82mJoiLatdPKdVq3OaXTXYb3FM/IPG6H91AK9li1SxjYvbO8Qdx3ACHOku
	gNHSRaLEEJXJnsIhGrWW1XXW5Ff9gJ5HX9wjotoeLg1ataYcq51+wskYQUHHQK1na
X-Gm-Gg: AZuq6aIjlikQliy+wBl5KjLXDW2AHWzIFGfzknXRZRoylOidfZXr9dw792Ay8maQC4U
	h3+JLzvoIdshBNv/T6j/QLoW2N1cqiXVj1XB0iRxDfm7vVo48K+U900n97yjrbz55STeWvP1Po2
	Wx2KoWfP5RsFWHjBXj+hf8lm0bKmxraggwSzy14Y4HuZLUZyyt+LS2G1xP605l8Jfmw5xwBOBZC
	NZw+lP5F/t7zOWj1vScDb7yLLQUpiKb+F84aLlIY5jFxJhanK4jsVFz80czGDdDI+tDo0C3GYfy
	C10TxUNrq309N8Ua3JpdcoTowaiOlQH3CNGeePpLjcS1BuiaWKaJe6fwC4EjYHOxIoTh8iekcG/
	kleigH372yg7d+9TdH33YLjddvGYe4sIAwPfOkzi3oMEKKBfftQ==
X-Received: by 2002:a05:6a20:3d8e:b0:366:19a5:b492 with SMTP id adf61e73a8af0-394671146c2mr10383898637.5.1771239928650;
        Mon, 16 Feb 2026 03:05:28 -0800 (PST)
X-Received: by 2002:a05:6a20:3d8e:b0:366:19a5:b492 with SMTP id adf61e73a8af0-394671146c2mr10383837637.5.1771239927339;
        Mon, 16 Feb 2026 03:05:27 -0800 (PST)
Received: from [10.217.222.63] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e532f2ba0sm6281191a12.25.2026.02.16.03.05.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 03:05:26 -0800 (PST)
Subject: Re: [PATCH v3 1/2] dt-bindings: mmc: sdhci-msm: Add ICE phandle
To: Krzysztof Kozlowski <krzk@kernel.org>, ulf.hansson@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
References: <20260206112053.3287756-1-neeraj.soni@oss.qualcomm.com>
 <20260206112053.3287756-2-neeraj.soni@oss.qualcomm.com>
 <b6e510da-b369-4c43-b9a1-455478af4948@kernel.org>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <640e2eca-1656-1723-38e8-d6cd97e6e2e3@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 16:35:22 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <b6e510da-b369-4c43-b9a1-455478af4948@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: SN5K_POCvtMCq7U35WIoUw66h7aiUOT0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA5MyBTYWx0ZWRfX0UmeqpSskfyh
 +FqH2/YECmUf2KollH9shI7aNiuZtPzZJhy69MRmp5bEKr4C20KcT/uiLtqdFHG1+V3heqMqRkN
 IM4HTuZmhn+uxDYeMJCq7lfl3uKaGRfrIQkB3y0+JwbsupOkMj3Q/BWkFFM12keKZzybFIuFbzz
 UOxbqH+l4VIY+5NSP20KqslWP0jWmt08CohyDqLfLVZYZM59nTBc/N3poCklK0I/nvlhjBUEe/v
 Mhe/FDISGS8pRTQj0R5tMzKhtvNZDB/7nGtz66XmyAnE01VKGW5lJGKepkBkPu0vQgp63sUvsRP
 WI6ZP5ubVrC2OAkEpgMIFxFeuzYvhzH2EDPz5bYrF22trvYyTybLQVSxxzJyjZ027rNU5wCzAvI
 jPWqj1T2TX4Qo0/vStspURr7seASkOr96SuYlgF7rp1fd3hgrEguSkOLVFkQKY+vLPt8i5Wx7yc
 iSCVZ9bwC8hSQ+9RReA==
X-Authority-Analysis: v=2.4 cv=BpuQAIX5 c=1 sm=1 tr=0 ts=6992f9f9 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=GgeKcXs6izqwwY2gQxYA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: SN5K_POCvtMCq7U35WIoUw66h7aiUOT0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265699-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:email];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0C561142AAC
X-Rspamd-Action: no action



On 2/6/2026 4:56 PM, Krzysztof Kozlowski wrote:
> On 06/02/2026 12:20, Neeraj Soni wrote:
>> Starting with sc7280(kodiak), the ICE will have its own device-tree node.
>> So add the qcom,ice property to reference it.
>>
>> Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>> Co-developed-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
>> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
>> Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
>>
>> ---
>>
>> Some initial work is done by Abel here:
>> https://lore.kernel.org/all/ba3da82d-999b-b040-5230-36e60293e0fd@linaro.org/
>> and by Abhinaba here:
>> https://lore.kernel.org/all/20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-1-2a34d8d03c72@oss.qualcomm.com/
>>
>> This patch adds the purpose and usage for phandle in the description and encodes
>> it properly in the schema.
>> ---
>>  .../devicetree/bindings/mmc/sdhci-msm.yaml    | 26 +++++++++++++++++++
>>  1 file changed, 26 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>> index 938be8228d66..f35b675c9f16 100644
>> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>> @@ -140,6 +140,12 @@ properties:
>>      $ref: /schemas/types.yaml#/definitions/uint32
>>      description: platform specific settings for DLL_CONFIG reg.
>>  
>> +  qcom,ice:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description: |
>> +      phandle to the Inline Crypto Engine node. ICE having its own platform driver will use this phandle to
> 
> Please wrap code according to the preferred limit expressed in Kernel
> coding style (checkpatch is not a coding style description, but only a
> tool).  However don't wrap blindly (see Kernel coding style).
>
Sure. While executing dt_binding_check the tool reported max limit as 110 characters so i wrapped
around it. I will consolidate the description to single line in next patch.
 
> Do not need '|' unless you need to preserve formatting.
> 
Ack. I will limit the description to single line.
> 
> I do not understand the platform driver reference here. You are supposed
> to explain how the hardware uses it, for what purpose. If I change Linux
> to use auxilary driver, then the binding is incorrect?
> 
> 
>> +      manage its resources independently. Either add this phandle or ICE address space for ICE to work.
> 
> Don't repeat constraints in free form text>
Ack. Will fix in next patch.
 
> Such trivialities should not happen, I am sometimes skipping deep dive
> review, so I skipped the rest.
> 
> :
> 
> 
> Best regards,
> Krzysztof
> 
Best Regards,
Neeraj

