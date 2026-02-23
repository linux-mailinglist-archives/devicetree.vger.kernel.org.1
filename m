Return-Path: <devicetree+bounces-267315-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UB3lFisinGkZ/wMAu9opvQ
	(envelope-from <devicetree+bounces-267315-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:47:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9CB17421E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:47:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 671AC3010148
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E32A334E74B;
	Mon, 23 Feb 2026 09:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HjueE8tq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gREy9tKG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2985695
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771840040; cv=none; b=lUI2Z8UlqHcJAeD8pKSZ+NBu3cGK5dW7sZnCwvY6wNyqaKuf0Sfngg769qaterGKZEmJqi3OTK4kQBkKcGvmYf7y5p3J5Xd44JVqGaZiXo85R15lW6ji5NT2adJmStPfHtEMGJwUD3YgHF7yWctaHiMP0E99Vr1eQwsDy/HN0P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771840040; c=relaxed/simple;
	bh=T7jgIDzq75LH1BVBfQBR5o0yqhWSBDWPeJHiCeAT+U0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Azp6VquQyqb8ke5Y/OXo7XxXiW00QE5U/o5tHVemXZsREtQSYekRB55TlDMoVjhw0N9CI+hj+lnRz8qK1/gHFl7YYzWL3S+b2cZhznEvfB/ILQHhjGYYp9/KqLisEyeSxohQK5bap2Q3MIeSR65oIK01u1V8ouoFnhG1hlbFwlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HjueE8tq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gREy9tKG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MNvaP72916725
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:47:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KwO+1fr5zEomaHCfuDMm48VfoHpn6tGtnTK3q325CmY=; b=HjueE8tqmkAXU8Hg
	jbvNlhwNnkVq326jmUuKLtSo7bh+rv7AdtEhKJe75EqsNUx3d5uVh371m+QMAYRW
	L1F3xgB7ePtwkQO84Zdyf3LwUixraj+ANBIEqqES6mrC6szCqzL738HJf/8uQAzP
	8qe0nbSUReh2zmjQ96OZ7wELb9a8FIb+Mua4J39T6REC1ZS5xIn6XoEhzNDMdTIE
	9VZXqrXi3bmnSAEYjHxn8UBL/1HcntwVJWGwzUUOHPehGOssjTxMDWMvlyVUZa9B
	YOBq3KCjETaaedcMmPdBtbf3q6SYKRm+QZUYpLJWsPCU7P3GFHJhWkLlBzf0DydK
	LX/dTA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5vgv85e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:47:18 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ad30f8fe0dso23622165ad.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 01:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771840038; x=1772444838; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KwO+1fr5zEomaHCfuDMm48VfoHpn6tGtnTK3q325CmY=;
        b=gREy9tKGw+67wUsHsCmzxeRqKVYkH1kvj6SeI6mjh7dFfRxaxS4gCSBCZNc9G0AQ/K
         6W9AXnusjdrZlDWLxlVn27VeD7q6Rn3y0PsgYNylZ4uPw+109HM1tsA5T3tRyI8HHkEl
         e44mfb2wCWOWD2fGn33Z+yXRt7KsFuDcqih/EoAVULr3YfmJjEuZoBYblw+lXMS6oitf
         dt3A98qi3G2n1Am0roCqvkVyryEMfNQVBApXCXYjCzGEBkZmHQdnfYqz7unNzNqxx3H+
         40ZlxEP2/i8sBkUa79xVUYbGTuLxsMB/0m/O/1O59uEDJ00d0oDwRivF9CG3YyvdKiwt
         aTpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771840038; x=1772444838;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KwO+1fr5zEomaHCfuDMm48VfoHpn6tGtnTK3q325CmY=;
        b=ZyQAIfT/BAfPxvbDf5Sifw1UxjMfYcpnr7tLeULb7waGai+rpa1/RvOkal2CjyUcZ5
         ddnC44SSXrtt4xhtsZo/6kRjIAOfjcNRCkZmq80SmFa0yDIX/4nj8fG0LiI4V7UC/1VA
         uDVikSgVF8F7xXUM8L4fl1D/s2UOto5pzae4xGGwPKuMlQmOcGlf+gExWPCJb4F0jl+F
         tQOD34Q28OmL5/gpGpPjukZkl/di2OCu2y6juvsThEAf7ASTsJTH8QSiwqBOcXB/2CBp
         Vs9wmO5a/YoG+2VHkT3jUot/e9bUOqdIL5wHqxs1VdrWj92ZEVjVWbt3QOVZOLwe8paY
         e+Rg==
X-Forwarded-Encrypted: i=1; AJvYcCXNF8rXlxBxLQ7sIt/g3RfrBOtesDbjbQYN0zmrJ9BEbzC+XdHqbUGvY2vW3BcC92CXv4HJ5AcYkH/H@vger.kernel.org
X-Gm-Message-State: AOJu0YxfhzCunN206lgQed0Gck1LVATzHHwfAzUD79zOW/rR2ymyzShZ
	n+mhdCN322626OhKD2i40dRRP+yJsZU7RDS5EVfyYviP0XknGQAuD/sr/2s+W3jjoW1HsLkCUY4
	uYKFoJ72h5A4mAGdpALsye3abKJDS58N2wPvZ/0D9t58OAFt+L0gmY8yq28kOEMXt
X-Gm-Gg: ATEYQzxl3q5Jv0CBHrSgdZsati+gQWAv7hyc2zvYg6PjXlbEo2fBoY19Vydu9R4idQO
	96OjNzkZ69pXUtoCe0dGImmE9WqL4fFm0Xob5k52srPfMUDeY4MyelG4a/hylCrWbTy1GnevnM9
	DyzfuCskPeVjt455ih3hIyMrsWrDt0/RSVII+xYOdrLjLPS4Ipzkquru/uulJar++chQvu4Eq4s
	I0RfD/MInx/+gvdAh7jp5/5TKtyjaw9ILU/QJK5OEtMbje+hR29v+iXpac8lHgHLXWK9GFwmTka
	K5fqQ6TaUDYKPLevHnKQTIP4f0JtsY+lLitjNbTGjxlc3hZpauwvXdgiRq1jSIQVy2/2HojWQus
	+HYphziDCjjV7cNdwUAEz9mxUn5EHyYenn7pD//X5JXig1pXYEQ==
X-Received: by 2002:a17:903:a90:b0:2aa:df82:ed85 with SMTP id d9443c01a7336-2ad744020c8mr55134935ad.1.1771840037651;
        Mon, 23 Feb 2026 01:47:17 -0800 (PST)
X-Received: by 2002:a17:903:a90:b0:2aa:df82:ed85 with SMTP id d9443c01a7336-2ad744020c8mr55134755ad.1.1771840037123;
        Mon, 23 Feb 2026 01:47:17 -0800 (PST)
Received: from [10.218.41.33] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e062sm95689845ad.48.2026.02.23.01.47.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 01:47:16 -0800 (PST)
Message-ID: <4ae0dd46-5f5f-403b-bbc6-1094159be302@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 15:17:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: monaco-evk: Add Interface Plus
 Mezzanine
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
References: <20260222173545.3627478-1-umang.chheda@oss.qualcomm.com>
 <20260222173545.3627478-2-umang.chheda@oss.qualcomm.com>
 <at7j3kbdixd7aveiol37pwgudl2hcogtdrvdgcvgbbm3t5irfc@4nvv5ptoezyk>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <at7j3kbdixd7aveiol37pwgudl2hcogtdrvdgcvgbbm3t5irfc@4nvv5ptoezyk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA4NCBTYWx0ZWRfXwztNcyJHwy2P
 8LLJvhHp9AerEeP6RCoIJzxc3kl5BIKcRp4WhZJo4zG/vFgbWq7Ddc2QfooA8o5HhJuq4jzdzxG
 QVih7HT0Ae8IEqpjj1KAkna3YgvIB9E3OMVraHrmBfhwV83wY68JHKCKSFW+uJuCdilpYR20WS+
 qms0S1bbWGloNnE7zQ98YZvFDyFbYUQhzMyuG/akC/AvimVJBOj/G8oYcafp4vO6o+iq3syyne0
 4DY9HBqHgez5DejWb6RGVtLBr1k5XFeNRjwgDCDpyESdnDBI6bVhRuepbkuistHnj1+eMhTcith
 +/fUCz9p3QWUOSLJOd5PQ89HfARmAxGYvKPBmkZ5CZsVWxdf0HIs79NzXBxwojc6ut/EICVsixI
 T/wZ6OzQnVsOLEAZaUUOc3kn+VUSzzuosGP7iY46V1nWwUoBDVf4vKtFGBP643kf/bDW+Ycg7pp
 MFRzHFCtMRt9EotVO2Q==
X-Authority-Analysis: v=2.4 cv=W+A1lBWk c=1 sm=1 tr=0 ts=699c2226 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=qcs3DPJq9xOX7KLmAGAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: Jm-CFtsWhpzFEIa6KYkyamLwwsAsS2KW
X-Proofpoint-ORIG-GUID: Jm-CFtsWhpzFEIa6KYkyamLwwsAsS2KW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-267315-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.3:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.2:email,0.0.0.0:email,0.0.0.1:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.52:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AC9CB17421E
X-Rspamd-Action: no action

Hello Dmitry,

On 2/22/2026 11:57 PM, Dmitry Baryshkov wrote:
> On Sun, Feb 22, 2026 at 11:05:45PM +0530, Umang Chheda wrote:
>> The Interface Plus [IFP] Mezzanine is an hardware expansion add-on
>> board designed to be stacked on top of Monaco EVK.
>>
>> It has following peripherals :
>>
>> - 4x Type A USB ports in host mode.
>> - TC9563 PCIe switch, which has following three downstream ports (DSP) :
>>    - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.
> Nit: routed to? Is that M.2 only suitable for WLANs? What is "WLAN
> endpoints"?

> routed to?
If I understand correctly - you mean change string "connects M.2 E-Key connector" to 
"routed to M.2 E-Key connector" ?
 

> Is that M.2 only suitable for WLANs?
Yes, this is suitable only for the WLAN module.

> What is "WLAN endpoints"?

I Agree this is misleading - will change this to "WLAN module"

>
>>    - 2nd DSP connects M.2 B-key connector for connecting cellular
>>      modems.
>>    - 3rd DSP with support for Dual Ethernet ports.
>> - EEPROM.
>> - LVDS Display.
>> - 2*mini DP.
>>
>> Add support for following peripherals :
>> - TC9563 PCIe Switch.
>> - EEPROM.
> If there is an onboard USB hub, please describe it here. Also, what is
> the story of mini DP ports? If they are to be enabled later, please
> mention, why.

> If there is an onboard USB hub, please describe it here.

Ack, Since there are no DT changes required to enable USB Hub I did not mention.

will mention it here in the next patch.

> Also, what is the story of mini DP ports?
There is a H/W issue being is being debugged for mini DP ports - Hence did not mention.

> If they are to be enabled later, please mention, why.

Ack

>
>> Written with inputs from :
>>     Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com> - PCIe
>>     Monish Chunara <monish.chunara@oss.qualcomm.com> - EEPROM.
>>
>> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/Makefile             |   4 +
>>  .../dts/qcom/monaco-evk-ifp-mezzanine.dtso    | 184 ++++++++++++++++++
>>  2 files changed, 188 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index f80b5d9cf1e8..9d298e7e8a90 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -45,6 +45,10 @@ lemans-evk-el2-dtbs := lemans-evk.dtb lemans-el2.dtbo
>>  dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-el2.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= milos-fairphone-fp6.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
>> +
>> +monaco-evk-ifp-mezzanine-dtbs	:= monaco-evk.dtb monaco-evk-ifp-mezzanine.dtbo
>> +
>> +dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk-ifp-mezzanine.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso
>> new file mode 100644
>> index 000000000000..f0572647200c
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso
>> @@ -0,0 +1,184 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +/dts-v1/;
>> +/plugin/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +
>> +&{/} {
>> +	model = "Qualcomm Technologies, Inc. Monaco-EVK IFP Mezzanine";
>> +
>> +	vreg_0p9: regulator-vreg-0p9 {
> Are all these regulators a part of the mezzanine?
Yes, all these regulators are part of mezzanine board.
>
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "VREG_0P9";
>> +
>> +		regulator-min-microvolt = <900000>;
>> +		regulator-max-microvolt = <900000>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +
>> +		vin-supply = <&vreg_3p3>;
>> +	};
>> +
>> +	vreg_1p8: regulator-vreg-1p8 {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "VREG_1P8";
>> +
>> +		regulator-min-microvolt = <1800000>;
>> +		regulator-max-microvolt = <1800000>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +
>> +		vin-supply = <&vreg_4p2>;
>> +	};
>> +
>> +	vreg_3p3: regulator-vreg-3p3 {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "VREG_3P3";
>> +
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +
>> +		vin-supply = <&vreg_4p2>;
>> +	};
>> +
>> +	vreg_4p2: regulator-vreg-4p2 {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "VREG_4P2";
>> +
>> +		regulator-min-microvolt = <4200000>;
>> +		regulator-max-microvolt = <4200000>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +
>> +		vin-supply = <&vreg_sys_pwr>;
>> +	};
>> +
>> +	vreg_sys_pwr: regulator-vreg-sys-pwr {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "VREG_SYS_PWR";
>> +
>> +		regulator-min-microvolt = <24000000>;
>> +		regulator-max-microvolt = <24000000>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
> ... supplied from what?
This regulator is supplied directly from the DC Power adapter.
>
>> +	};
>> +};
>> +
>> +&i2c15 {
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
>> +
>> +	eeprom1: eeprom@52 {
>> +		compatible = "giantec,gt24c256c", "atmel,24c256";
>> +		reg = <0x52>;
>> +		pagesize = <64>;
>> +
>> +		nvmem-layout {
>> +			compatible = "fixed-layout";
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +		};
>> +	};
>> +};
>> +
>> +&pcie0 {
>> +	iommu-map = <0x0   &pcie_smmu 0x0 0x1>,
>> +		    <0x100 &pcie_smmu 0x1 0x1>,
>> +		    <0x208 &pcie_smmu 0x2 0x1>,
>> +		    <0x210 &pcie_smmu 0x3 0x1>,
>> +		    <0x218 &pcie_smmu 0x4 0x1>,
>> +		    <0x300 &pcie_smmu 0x5 0x1>,
>> +		    <0x400 &pcie_smmu 0x6 0x1>,
>> +		    <0x500 &pcie_smmu 0x7 0x1>,
>> +		    <0x501 &pcie_smmu 0x8 0x1>;
>> +};
>> +
>> +&pcieport0 {
>> +	#address-cells = <3>;
>> +	#size-cells = <2>;
>> +
>> +	pcie@0,0 {
>> +		compatible = "pci1179,0623";
>> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
>> +		#address-cells = <3>;
>> +		#size-cells = <2>;
>> +
>> +		device_type = "pci";
>> +		ranges;
>> +		bus-range = <0x2 0xff>;
>> +
>> +		vddc-supply = <&vreg_0p9>;
>> +		vdd18-supply = <&vreg_1p8>;
>> +		vdd09-supply = <&vreg_0p9>;
>> +		vddio1-supply = <&vreg_1p8>;
>> +		vddio2-supply = <&vreg_1p8>;
>> +		vddio18-supply = <&vreg_1p8>;
>> +
>> +		i2c-parent = <&i2c15 0x77>;
>> +
>> +		resx-gpios = <&tlmm 124 GPIO_ACTIVE_LOW>;
>> +
>> +		pinctrl-0 = <&tc9563_resx_n>;
>> +		pinctrl-names = "default";
>> +
>> +		pcie@1,0 {
>> +			reg = <0x20800 0x0 0x0 0x0 0x0>;
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +
>> +			device_type = "pci";
>> +			ranges;
>> +			bus-range = <0x3 0xff>;
>> +		};
>> +
>> +		pcie@2,0 {
>> +			reg = <0x21000 0x0 0x0 0x0 0x0>;
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +
>> +			device_type = "pci";
>> +			ranges;
>> +			bus-range = <0x4 0xff>;
>> +		};
>> +
>> +		pcie@3,0 {
>> +			reg = <0x21800 0x0 0x0 0x0 0x0>;
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +			device_type = "pci";
>> +			ranges;
>> +			bus-range = <0x5 0xff>;
>> +
>> +			pci@0,0 {
>> +				reg = <0x50000 0x0 0x0 0x0 0x0>;
>> +				#address-cells = <3>;
>> +				#size-cells = <2>;
>> +				device_type = "pci";
>> +				ranges;
>> +			};
>> +
>> +			pci@0,1 {
>> +				reg = <0x50100 0x0 0x0 0x0 0x0>;
>> +				#address-cells = <3>;
>> +				#size-cells = <2>;
>> +				device_type = "pci";
>> +				ranges;
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&tlmm {
>> +	tc9563_resx_n: tc9563-resx-state {
>> +		pins = "gpio124";
>> +		function = "gpio";
>> +		bias-disable;
>> +		output-high;
>> +	};
>> +};
>> --
>> 2.34.1
Thanks,
Umang

