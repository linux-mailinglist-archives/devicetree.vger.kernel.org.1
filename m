Return-Path: <devicetree+bounces-275924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDgSEd+Ht2m7SAEAu9opvQ
	(envelope-from <devicetree+bounces-275924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:32:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E66294926
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:32:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F19AB30048F7
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 265FE3254AF;
	Mon, 16 Mar 2026 04:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UA+CiMXd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fXdXIety"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4D270810
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773635548; cv=none; b=So7c3Bl/BdDqnkTpWD4mOFFYgRxD4i+T8W8LUoQP5Ihoyt+Pycr3v4VQOC1zsxW6oEZg4JguuXHez+2g25o4KDAERq9LaEW8dI963tCLG1f61ItB5X2PkH3VevWYHN9h/uX46QRSqk7SJbYpl1yylAKy6H/jZp4ddJc+QMZETYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773635548; c=relaxed/simple;
	bh=9HFjfEORUlKKwSgtfJlSLW7hbHsKIVDNi8ELHeSd0yk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=hHZAk31+xJGPECcHL5bFnoWqmHi1juPLuqiU4gi2I68f1cNd/ZKlIXTTWsE+5xp29MceE3EdLmGv3WfWd1r0nMhG0RmgmywLl6NMzOsYo5T69t0G6cPEjSBTID4MQ9dFbEU7NZGABh4HgCZEsxVa6TgEkGSJaMzU62e+OTjK5eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UA+CiMXd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fXdXIety; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62FJG15I1317856
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:32:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1U/r6zrSnIUZAmklpxaFac25mww/c05LQa3rndRuAaY=; b=UA+CiMXdHa/kkXTj
	hqcwUoG+AQbNUSEAJ9Pvft99v9LjSozmP5X1LQpHo5whnLriB6SddzrCE0WxHZah
	BoLqvG4LOORPpUeq8bKzdMd7JtHz8tU+9zDx0i9x0nSQOZW5Bfwkjw8NiTjz/O4J
	nBHgZ2cFeDJQKZSL6tpXQJ2SzGw9HEwK9juzGveRhmBtgR1zaLGMtVjWwFCEWe/p
	RsNplfeb0qEnmj5znDJluahQJq+Z0wfQDP9sS1LFkG4th7xWf/mCG8A+foIp6Sme
	uFAtcDBbwo88UYLOnpwtzrIygte6eBqctctTLqEKlCxrbgJzb2+DwubSoDSgHXVU
	bJB8gg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw03xm5mm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:32:25 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2b0565d77a6so7592855ad.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 21:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773635545; x=1774240345; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1U/r6zrSnIUZAmklpxaFac25mww/c05LQa3rndRuAaY=;
        b=fXdXIetyOLxZhU7oAJo3z04If6J/Zv8ehMJf7B5cBUKgVvAoRD9D2xIQ3jvcGZL6ef
         qJgbjiElVOweU+pbQxUclM8ViUXOJ2egFf3O/oybYYr8cco5VYVjD1XwasrH0lJQv6iw
         tOpU3yIEl3KiKKOjdhfv8Y9nZrCWQL8TKW9JH/6EcYH8XlpHEYaEpKschuNZz8M+hQtS
         2wUVAq2tbFnj7PDfA+yvtBZ2RJQ1GVIbYt21t8WRQtq+sNuNQ2czK8eG3+iyxthGgcEV
         GVrLCXPeqalclO1+aHiS9MSK79LPxEGK05Ap6LdwQS80w7mEq04d8iesJ04hJ5y65/XJ
         tkRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773635545; x=1774240345;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1U/r6zrSnIUZAmklpxaFac25mww/c05LQa3rndRuAaY=;
        b=PgIrhkvOF+axEwi+ANl9qSIEGds6P8yFBIFjyv+C4TybhKGq2qYWZtW0pSI7YmT8p+
         slu/my/0x0TMXZCxSE6mJH/wAxMaU6nT5+YK/cUdWZbczEzgIMvEGhNl9ikSstcXLa8m
         evJmKa6zAAeHzwLsNyeuYP1RhaPR5WCzaUujWlUNA/Z9gUd28AGVYGVuI0OK2bHEOm9K
         auJwRwgkki8bNMRnElpm9zRkI/v6xdmE54HW7AA8OsjTtoV81bo3U1UnDO09/GdaZyyg
         WSs9VAZCnyj1X15wYwEw/WjU+7wN1VjcY1OhwrGT6eF1ovP99uvXiTwCxS8+c8AhizQp
         lBaA==
X-Forwarded-Encrypted: i=1; AJvYcCVWjnEynAE7Wd1b8Hc96fqI8Z03b6HxMBeOe5asvX1fwK9kRScTVjm/cjdLpkvZ0MKnbRKL9YaxNhgP@vger.kernel.org
X-Gm-Message-State: AOJu0YxZn4xVMauCFT4YGUf0/ORpqpEvRD0iHgIkSaK7rusSEnATi6Kv
	Xn1gq8i0i9VXyzWy3uqGzOSTvsf2bYtssCO/hILlCOEuuBvocOispPE6xkRWYO9RPkep8+1uU/k
	GEETOA/s8kViRyVfFtL9JcwdpkltQ+3Iy5qTnTdMfUt/CioSzb8NvG4DsqaLTqmL8
X-Gm-Gg: ATEYQzxk3D8EZjWoU/K5tnkuJBBUveUUmVerDuEk+P9EwTr6hHz37NoInwG84UKyNpa
	uHjYTFddOjM21mC5R704bV2pSFADhqxhux55hGWlKX8ThcVO67kglYNauWQi3gr+TT6/naxFFKy
	z7CvoFjd/Jxu+hgYhsg/hTxldOWHzwCtRrWacljEwOtEgm1oanoY7qd99xXYiTLSwA6TQvJReSZ
	GYTQVXfnj9jDoFSDIsY57VMY7K+movyB5LXccXEC1SdqLu4gW8zOjK0RVTqnkbScv1BrP3n9j1X
	v6Xt9U/w9P2fzrHc5iLw7gvAf5cPF0n2pb7mYNbQjk4kPQjJGkFXvAWIMWRK3+9vDIMER/D5xXI
	eJ3uwVGUVu3qS/JNTxbr8yLZNVffr93HE2r79JQpLbJJ9qPQNQZs=
X-Received: by 2002:a17:902:f60a:b0:2ae:ceb0:d5ec with SMTP id d9443c01a7336-2aeceb0db3fmr100893105ad.44.1773635544598;
        Sun, 15 Mar 2026 21:32:24 -0700 (PDT)
X-Received: by 2002:a17:902:f60a:b0:2ae:ceb0:d5ec with SMTP id d9443c01a7336-2aeceb0db3fmr100892815ad.44.1773635544004;
        Sun, 15 Mar 2026 21:32:24 -0700 (PDT)
Received: from [10.217.198.242] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece56ca17sm97791965ad.13.2026.03.15.21.32.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2026 21:32:23 -0700 (PDT)
Message-ID: <5c100978-a371-4e2b-ad65-b160eee8fbdc@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 10:02:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
Subject: Re: [PATCH 1/5] arm64: dts: qcom: x1e80100: Remove interconnect from
 SCM device
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Sneh Mankad <sneh.mankad@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
 <20260312-hamoa_pdc-v1-1-760c8593ce50@oss.qualcomm.com>
 <20260313-nippy-seahorse-of-security-b1b6f6@quoll>
Content-Language: en-US
In-Reply-To: <20260313-nippy-seahorse-of-security-b1b6f6@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDAzMiBTYWx0ZWRfX916zw2/o52kf
 9PpvEJ9z7Vxioqyh2hPdUOB54v7R1upgu0+RBvA68FJEl7aNq4x9y4rBbM4tmmKPTSx+fbCWN3V
 h5J5WVYlpuB9eQ6SP2mRGzSLaITFQ7KxK4u4bFIFVMUw+mefXQfCjX5SRntdMMnFnWt6SDG5bbM
 h8Dg1D2OO928VnOojweNSQvAFiq5bwuHskZWnPnFWY0qle+cQEkQvB/cOmnOTtB2LMad7ZuQXeo
 l9yMzcszdK5eBgYbZH9wvCBcSFfXdOKBCB0OemkL/D92ZV0tQEBqTgaCSMLZBZfbBaIq9MtLskB
 jRJ49zszpPWKJda0Wrby0eiwbp8FPItdabqgPcxsfXSYAlH0EA7FjKl+Wv2YDdNIbjyqGAmH6Y4
 ODfidipkgD+2UWXeQCAunw+3BPZJyrRX8kRxBu4ZVibPWamvVIBxu5txey6H1nvP6NJuhCFp6Vj
 8GnP/RjB10OH5rSFCsA==
X-Authority-Analysis: v=2.4 cv=YLOSCBGx c=1 sm=1 tr=0 ts=69b787d9 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=LLmJQVH4VZ79FyvoyrAA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: mR19AZSnEkhi3WnpuaZ1rcDYsGl0x3O6
X-Proofpoint-GUID: mR19AZSnEkhi3WnpuaZ1rcDYsGl0x3O6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160032
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-275924-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 60E66294926
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 7:26 PM, Krzysztof Kozlowski wrote:
> On Thu, Mar 12, 2026 at 09:26:35PM +0530, Maulik Shah wrote:
>> Interconnect from SCM device are optional and were added to get
>> additional performance benefit. These nodes however delays the
>> SCM firmware device probe due to dependency on interconnect and
> 
> So fix drivers.

Yes, will address in v2.

> 
>> results in NULL pointer dereference for the users of SCM device
>> driver APIs, such as PDC driver.
>>
>> Remove them from the scm device to unblock the user.
>>
>> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> index d7596ccf63b90a8a002ad6e77c0fb2c1b32ec9c8..ebecf43e0d462c431540257e299e3ace054901fd 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> @@ -308,8 +308,7 @@ eud_in: endpoint {
>>  	firmware {
>>  		scm: scm {
>>  			compatible = "qcom,scm-x1e80100", "qcom,scm";
>> -			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
>> -					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
>> +			/* TODO: add interconnects */
> 
> NAK, interconnects were there already. So after applying your patch I
> can just revert it immediately solving the TODO.

Yes, this change will be dropped from v2 and instead will be using qcom_scm_is_available()
to handle the dependencies.

Thanks,
Maulik

