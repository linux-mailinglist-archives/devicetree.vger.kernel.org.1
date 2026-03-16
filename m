Return-Path: <devicetree+bounces-276161-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJoBIK/8t2mXXwEAu9opvQ
	(envelope-from <devicetree+bounces-276161-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:50:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D867C299AB6
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35ED3301F19F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE093921E3;
	Mon, 16 Mar 2026 12:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dmOHJHkp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YTM2iN05"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD0923E358
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773665450; cv=none; b=YJSkuPD/Mx2LPfl2qvnQB3itNWJxjEYYAMJtIahYfjSSRXmmXkmSWHxJnd+hoJGKeHkNazSFwLqOsuzTq/nxkDVJOTHHSMa/VjF/XqEpb5JwNfvoyg9RB3SXNDdzLOrVrybREt4BEeC0tsMLq8N69DoxAx+cF1Z2SQE621mr3QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773665450; c=relaxed/simple;
	bh=q4TM2LlV744b3L/EatHrhl2+N3BL+B0D8u0nAFHbvnY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b1OhCfPi6Mj4gC/yxhJpabVD6VpsWqRkewm6JUdwWJ3W3MB2YapNXoXdG5A0nJMB0VpZv+sYAUhr9lqrO+329Yt10d1dgEwIwDqiEk4QhXpS2QxHijVvIMvriCtC4khw0hD/R7vKgPaSrBDxLsyCppZsHRdhTSvnaQGt/snuwbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dmOHJHkp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YTM2iN05; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GBjRlW2128637
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:50:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EUoaoPLDpNNWBVk0FzY1tCyE6j9Wdf3bW45GK+7R3Sk=; b=dmOHJHkpvjGuOt0p
	Mn+S4MFRJD728igNpk5vwpHk3sL/CKJFy3HpOvq5wEMuL9tGAyeEQUrYYaFJmL/w
	Yzf/KzaKS7DagCGnJazuomQhcgKptv9eWmrfWdvBiqTjjV7gZYqQ6SXUU+B4sbO8
	XbI7oMDZwQH3ZKdnWVW83c1nmbXg7UaWdXxfHWDryfiSkzs487McV1mXyLm2EFSy
	LsVm/wXzyuFDiDiqwSkp2qVx93RLtmft5jBSLmkZSFTBGZPEa4s8sPFzGqMK+/Cn
	cGRgV4uwWkPfWeky3zurdhl2OU79sA/JLql7Jvt4BQH2fToKrj6+MpZ0kdO3TiJw
	vFgzlg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw00anwsq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:50:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb485c686cso286996885a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773665447; x=1774270247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EUoaoPLDpNNWBVk0FzY1tCyE6j9Wdf3bW45GK+7R3Sk=;
        b=YTM2iN05WbgGscYinMZW+QSeiNk8ZTlorMoeZ/ojRyefFbqRRVMZoluev2bsi0OtWZ
         FYrOIP1u9D/UD56hlUN8bRUkGCsDnuNHFz/Lp/iPlvhA8rGVMlY6mCWQBav2/9FOyNJK
         ZywWwK4FiW7Ep+TYjG07f57TEG6ynPBgl6iEwGl39PhzXFPPlA9kd/60fbqfSVgGfz/B
         rHvGf7ABxQ2wquZO+JZQhkKFUtK7FoviwHqMpDw6naEFlurMnw8dykumQhQiAH1anpiM
         VCgT/RxxEv80eDDQp+z4NGiAt0iFyBaQKM+wrWjh5V8VxNQlYSiguVHaOEnfSw8KR+q6
         ZDiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773665447; x=1774270247;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EUoaoPLDpNNWBVk0FzY1tCyE6j9Wdf3bW45GK+7R3Sk=;
        b=FwCb9zzc/BoxgoBYHD9PQUlZLE+LAQ1c3fDKQEi4WnUngPsPaXST4ivQM8G13f09g4
         Va4xEc59p79BZazph7dRIQQIZs98W/U0DxDcWf8w7Ns6vOBhVFYJC1Ehvmym3Cakqt4F
         Syqovv4yFvcqLCJ9qZ76kFcdeMmn0g/FiN6KmvOM4iDE0a2C1cQu6TLCc+7/+JxRITec
         TMJX+8ZSZJ2eUW0BTXK+HTNO+MxZFCpdzT+HmcUZV3EyDg00edOdN7kNlmO64hM8jOgZ
         5BCaKsRzP3JCYOZmj2B4vdFjbhOYc9JcYBwQAEe3K9ZKqlsszDsIs3Rb4i6MYrmd1T/r
         qPxw==
X-Forwarded-Encrypted: i=1; AJvYcCViXuLx7aQfr2Xz8412SztlOfTDe5QiTTFKtjqxFLZrwnHxX7Ka7nWN+N7LLR+2ugc6hZi67OpXB08Y@vger.kernel.org
X-Gm-Message-State: AOJu0YymblR3D+Q9o0/bs2+QluvjLb9170n5ihuaX7xUa2AUeRKQmERn
	ni88WYAb4eOZkn/gZCZDJoibEHqhcmCdszXW8OJz6t62CNCOLBcKB4gycesF1RagsMAS2QKcXwC
	EMEz/+ZECAz+zkUzk9iD2bJ92chLHFnWqv/t+V1PQ1rgllnOhviA32s074XSlF/u3
X-Gm-Gg: ATEYQzxvkKV3+KMGYKUy5EdBbgp0fKIc/9y+lsZWch3AEhbkU7lBur/Aa5zA2b1l7bC
	/ilQ27zkvR+kzf+aT7IkND4fbMEv7e5yrENr+IO2QxewysuberJLXKYTuzSieFT74hjcH5uqDyZ
	x2vvA7ka4KpwIegttCVTSPj8bTW6fq1Wm9fMRLZAI5d7FNlGu6BciT80dbFg7AKyKVzlCUtulFV
	foPNSYYxw3hGfZcTyHqb5ht0P9xzCOKokjL8n36sg+bpBd/XYiW65jJvI3hhrDimvKURlMa/V6N
	UVwKNRFgkJOMGWkLtXTV2Ozp9buga7pi1QdNNDTbawnF29yGB52OwsP59/aPRvCFJarQDgfJROX
	csYQWmS1k8hlA5Vv7/b3kCJaKA6e0uc834vXtKusxKBm1IRC4Y3eO1JsTCQtj0dm8Jhk4kfviSc
	j8Ej8=
X-Received: by 2002:a05:620a:2948:b0:8cd:8ee7:4473 with SMTP id af79cd13be357-8cdb5a83e13mr1254055285a.4.1773665447285;
        Mon, 16 Mar 2026 05:50:47 -0700 (PDT)
X-Received: by 2002:a05:620a:2948:b0:8cd:8ee7:4473 with SMTP id af79cd13be357-8cdb5a83e13mr1254052885a.4.1773665446900;
        Mon, 16 Mar 2026 05:50:46 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6650f44a4a2sm1924768a12.15.2026.03.16.05.50.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 05:50:45 -0700 (PDT)
Message-ID: <71f2b29f-a34d-4300-ac9f-ef33694e1f90@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 13:50:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: milos-fairphone-fp6: Enable
 Bluetooth
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alexander Koskovich <AKoskovich@pm.me>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
 <20260116-milos-fp6-bt-wifi-v1-4-27b4fbb77e9c@fairphone.com>
 <52fffc84-2fb5-47aa-835c-b0dd8c110d59@oss.qualcomm.com>
 <DH1L9UD68SKL.21KTH1XGR724Y@fairphone.com>
 <DH1PJFGWESQU.1OEKLN0CX3IZE@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DH1PJFGWESQU.1OEKLN0CX3IZE@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: BmK-UjGFSrKcRt-P--62fQzWq24aoR94
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA5NiBTYWx0ZWRfXww98oIg+zedh
 FaesQ6yFG3QM0xHWrsfCe7P8Z1jI0qNEbUpPdn1Q3pWvB4NMGgAHqD3jn6VmzGWWoX+m5ppMiJt
 yq7VDS9L8HB8hIAYsw3jB6COp0Alza65V9wotqo4Z6iutNo8uBZZR6ecsR/D640lkFab5rukr2A
 3AHYgQqlIWg17UiCROdgNsBmeqoBhJcdXoXpeXi34apy8b90uZzbgDUPrzb1mhOViuComnMya5a
 eP/i5vYBWlwYEWTJ1AboFTH+gJj09ukBxBOQ8dJYAn7nL4tQ/XoDBaYpxSDSERQORX3qz09ANp1
 AhlHkiIg33yrA+Ll7jJS4p1emUwH5/CbxTjYH0q9Lspj6HO7NGAnaPGg91sYRuf5hoyNPOh8adk
 /0R7IH35uercNLpU3uwPcKQxEJtAyP8EaowjqqWitXJQJwi0uXM5rjVu6Y5d0t6ptcKMel8TpdQ
 W7iNeruMmI8M1ez7nNA==
X-Proofpoint-ORIG-GUID: BmK-UjGFSrKcRt-P--62fQzWq24aoR94
X-Authority-Analysis: v=2.4 cv=ebIwvrEH c=1 sm=1 tr=0 ts=69b7fca7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=6H0WHjuAAAAA:8 a=UjuIjBpub3zfU3wH7hQA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160096
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276161-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D867C299AB6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 3:00 PM, Luca Weiss wrote:
> On Fri Mar 13, 2026 at 11:40 AM CET, Luca Weiss wrote:
>> On Wed Jan 21, 2026 at 12:52 PM CET, Konrad Dybcio wrote:
>>> On 1/16/26 3:50 PM, Luca Weiss wrote:
>>>> Add the nodes to describe the WCN6755 chip with its PMU and Bluetooth
>>>> parts.
>>>>
>>>> Thanks to Alexander Koskovich for helping with the bringup, adding
>>>> 'clocks' to the PMU node to make Bluetooth work.
>>>>
>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 174 +++++++++++++++++++++++
>>>>  1 file changed, 174 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
>>>> index 52895dd9e4fa..cbe1507b0aaa 100644
>>>> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> 
> <snip>
> 
>>>> +	bluetooth_enable_default: bluetooth-enable-default-state {
>>>> +		pins = "gpio53";
>>>> +		function = "gpio";
>>>> +		output-low;
>>>> +		bias-disable;
>>>> +	};
>>>
>>> Not sure if we need to drive that pin.. perhaps a pull-down would
>>> suffice?
>>
>> I'll give it a shot, this pinctrl is coming from downstream but perhaps
>> the downstream btpower.c driver is differing in behavior to the upstream
>> PMU driver.
> 
> Seems to work, but honestly I'm not sure what the actual effects of this
> change are?

output-low actually actively drives the pin low, while bias-pull-down
connects it to an internal pull-down circuit, which is weaker, but also
saves power (because the pin isn't actually driven)

Konrad

