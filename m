Return-Path: <devicetree+bounces-265335-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCBLNe//jmkAHQEAu9opvQ
	(envelope-from <devicetree+bounces-265335-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:41:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F79D135312
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:41:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1C2030440B8
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 10:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2501234F481;
	Fri, 13 Feb 2026 10:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GsGokeVE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H29IMZ7x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0941E31B828
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770979293; cv=none; b=SVHn8QUo2qzealYv2D/gGjJ5zL4YksCyLTPjl6k9akL/4gmDG3NCXeafruKG6n4itgeXShGoz4a0dL8Re074oWNq0VCicJz/LiQSM41uAJI+7ee5UbuDEZaNRn9vkv7bucRPt9dlj6UPyuAISgJZrSsecMVTmW4kWF1tdrmzX/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770979293; c=relaxed/simple;
	bh=wgmwpsW7eeK7dT6tep1a6shwrdiQKLgKcMB8xfG2iu0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NbxnnJZam8o/UuMwqDWsYSBX5m54s3pmLTewRZq0tW0mJ8qyW+VkDleDl19mEVk1lLPJSu/w7d+rCQmCUgGsAUPYkdCYkuRAP5Bj63oWbRnzFbYRID/z47MHxqNTFBh+rU/8YyWmUnr+4jevTrx8wfNsephF+ruHRE2rjeG0e7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GsGokeVE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H29IMZ7x; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D7RtLP652227
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:41:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	euRNAmbdPE0Yo9bIP/pqIZTm2YoAfkfcYcqSuQD6OjY=; b=GsGokeVEMcmuv/oL
	WHtZELBYm6xGjvJ/Dv5b45VSSq+1wIyM4c8KS7cy2Ne3EZiYHjOc5CnkpmDjUUNM
	ji26wdRCXhNH3SreICPQNgh7qBdCXEErArgOdzH7MQ8r9hj+7JDfBJHw3QRww8MP
	FjxDkw9CH+fDVhgbYI5q1qfHdBJMOCnWv0rg5MYZKCcUxuFf1rbnZgdJruhmgMnD
	QJUXK6Sf6z8FEu/eRG04KsO//tjJUZ/+N8xZbbCVC5142jHZZWNZ7unExVp1YpAn
	CD+dtHTsYIUI+5z5p4bfFmji8OX5IOr6Sn6ipMLggQ2sIYLzZcc9tGewZSA5sLk8
	/6qllg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9gbbm2rw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:41:31 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70c91c8b0so37398685a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 02:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770979290; x=1771584090; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=euRNAmbdPE0Yo9bIP/pqIZTm2YoAfkfcYcqSuQD6OjY=;
        b=H29IMZ7xeS9KjGXvSV6GaYuBO355EljnphcvUJS3DNh/647DCfbhR5ZAbfL3gwSgoF
         qmcyS/Tm4ymk1psbXGw0OUovSyRioxJaSVSi4eahsg0Ie1LWxOqBC361i3n1T5bTBNPN
         Evqfu6lTf0VVyLbBXWU+ZW06foLwLaISGo7ZFMLKQIlsVshIcb0T3AgEQPrt6D/TTSM6
         wSEYuRXRe1tm0PaHeHW7RyeqvMS9+XypbjoLaQPS30qJtwSVyXZKOQJXuS5N+G07dyIA
         ejJ6B9m+hMQJ4zuVOqGGC2hkVd1kY+vd6D7/yqaeylfc+Nf/NKT2PxZ4AzCFuomSIqVF
         Z9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770979290; x=1771584090;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=euRNAmbdPE0Yo9bIP/pqIZTm2YoAfkfcYcqSuQD6OjY=;
        b=dApRgAVgv7HIL4mY1K7rfb03rORq7X/rrV6pbW7jVU7WfOnxNLs1RtBDsu5qdgyQdu
         0zlXcQiR45LlrP7bjlHsyXajbk+nWIZy5IftST+Ya4+OtrYSimCn4fkXfA5J/Agw/3KN
         hQfo8Dve3GpAe2q0vYPdNOWjIV5Cdx6Zg/K+LFbw4Tj8wkxoWsK6tMt3Hhq+tYpmdXPJ
         Fb1WjpCVeszKDC+ocQqCe1nvuO/18NkX57sfVk+wSfvULZWu/bVzMFidmjC1NJINM4H3
         I9TJ850+k+cWTxFykWGG2VgASlhERzhCkOju2hvNfPFRq/BaAq8YJtJUv3ZWISvo/XyM
         YQyw==
X-Forwarded-Encrypted: i=1; AJvYcCUlBax+XcsYl7pksFnnK6U06SSPCo7chs4t100fo8uznRZWQnLc61ynzUqO64rdOMgZTbxNH2D1s5sI@vger.kernel.org
X-Gm-Message-State: AOJu0YzfKTXPI1AJJE2jl4mqLDNNF1xJzkYJ+A/zOXWtCeoLPDlsxI9d
	McisT9MkKugw0SXxmWTSeS0Ns0qsTzvX/es0q330RZXwHiJuAgGQWidHJ/PVowdgvQeH6NNJjd8
	qwV45XQHIPzSlRFe6w45Fy8Hrapmsmf+bmCfzp+M5drOcxeu2QlCVLgzKpGMfcIE4
X-Gm-Gg: AZuq6aLXX3N0C98A0qa96D8f8wJdmyvVbgIKgV1VBDjSo+kJtV43j4wBkMxd8QYnQxq
	tLa0d2P2n1go2qW6u5ZE0In4F934JH/BtectPCMfZSraKaLbJoCvAKlvdxPB85SYXtvCkFdYnjc
	jLcNWyYq2N2894BjLjyRVoRAYG/RtYoDTZd+cwEaWqECwujLWPn55ALA7ss7zd8pIPwF/ZnfDwH
	Of/D86emk+4IUvou2hRlule2Czbc89hxaO9/7SHyj7VP28C1x448GF5dOPz02P5plkFh8IE2zbH
	w275nLruL8jsaOCo5zsTllP9YyXVEtdJIEvLL+mzpRfSrD5GpU583OLDtTxMZOV6XaYspCnMu3m
	4aotvV8q1MM/FRE2jVjtwA8c0R81pOHuQ4zBAb6L/Qr4HxT+A0FWj0I/IZVDmQfLN8fEc4U+7pF
	tcobw=
X-Received: by 2002:a05:620a:472b:b0:8ca:4545:aee4 with SMTP id af79cd13be357-8cb40807ca3mr192991485a.1.1770979290408;
        Fri, 13 Feb 2026 02:41:30 -0800 (PST)
X-Received: by 2002:a05:620a:472b:b0:8ca:4545:aee4 with SMTP id af79cd13be357-8cb40807ca3mr192989185a.1.1770979290036;
        Fri, 13 Feb 2026 02:41:30 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad19be17sm524394a12.4.2026.02.13.02.41.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 02:41:28 -0800 (PST)
Message-ID: <a4cfbe52-51cd-4851-8a1a-2830886c4dfc@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 11:41:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: hwmon: Add qcom,bcl-hwmon yaml bindings
To: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
 <20260206-qcom-bcl-hwmon-v1-1-7b426f0b77a1@oss.qualcomm.com>
 <ae2802d8-2eb4-4dcf-8212-d8f2a41a7185@oss.qualcomm.com>
 <15fe2128-5a88-4140-8aba-0e8d73350df9@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <15fe2128-5a88-4140-8aba-0e8d73350df9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA4MiBTYWx0ZWRfXz5lyNi7Td8CR
 sjGvVcHheKjKU7hVLY06r+NZXL2bTVeBkjHyTlTExY90B/kh+KMdgVDlOdpgpqIqwgXsKSmHUr3
 wd+hohX1VKeAMOjGNZMkRDfiDNcPOdXBJlJtxQq+yhztdgjFASqrRw5tVFr7jJUsPJ21b/fg7J5
 wVXc7MhRFbzu94phvMoVfLC0IYQmxjyuKyNiAXkeU+NB/K6bs0xpLm05hVnGheec/4veAUxrhxN
 rbd/Z0bTGGLiC3u9wTbJHLHXXrFSecFX/Lzm7Lp3kuH8Tamx1Op0tLLk9esRmZpfKSK2RIRnKfw
 TeByFq2qFyzGM3kk52wPx716pOWrSvNd58GHI5yUYWuXebHy69HPckfuwWnbsVwzR7O98M7Kfil
 ymuw3no8bi2TDahWUy4RYAvhw+clFeKIaloKPZGZZJMTYXRnvr35UlequG0QptnimnPuPeAT+RM
 2O0oHLA4lF9PUyjgENg==
X-Authority-Analysis: v=2.4 cv=a849NESF c=1 sm=1 tr=0 ts=698effdb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=Q9nwfTyik-j77Jmcf8EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: WN4wUghkgAZfgfMtsDz3CiJ95QnFt_A7
X-Proofpoint-ORIG-GUID: WN4wUghkgAZfgfMtsDz3CiJ95QnFt_A7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_01,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602130082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265335-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5F79D135312
X-Rspamd-Action: no action

On 2/13/26 7:04 AM, Manaf Meethalavalappu Pallikunhi wrote:
> Hi Konrad,
> 
> On 2/6/2026 2:38 PM, Konrad Dybcio wrote:
>> On 2/5/26 10:14 PM, Manaf Meethalavalappu Pallikunhi wrote:
>>> Add devicetree binding documentation for Qualcomm PMIC Battery Current
>>> Limiting (BCL) hardware monitor. The BCL hardware provides monitoring
>>> and alarm functionality for battery overcurrent and battery/system
>>> under voltage conditions.
>>>
>>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>>> ---
>> [...]
>>
>>> +properties:
>>> +  compatible:
>>> +    oneOf:
>>> +      - description: v1 based BCL
>>> +        items:
>>> +          - enum:
>>> +              - qcom,pm7250b-bcl
>>> +              - qcom,pm8250b-bcl
>>> +          - const: qcom,bcl-v1
>> I see that e.g. PMI8998 has a BCL block, would that also be 'v1',
>> or something else?
> 
> I added support for pmic 5 bcl design from v1 to v4 in this series. PMI8998 is older pmic design(pmic 4). As of now, we don't have any requirement to enable it

Right, but then you never mentioned "PMIC5" anywhere in the compatible
or the binding, so this wasn't obvious at all. With the request from others
to shift towards PMIC-specific compatibles that won't be an issue

Konrad

