Return-Path: <devicetree+bounces-263940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGIaMka5iWlDBQUAu9opvQ
	(envelope-from <devicetree+bounces-263940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:39:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 243AB10E34C
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:39:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4B6D03002D25
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 10:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307F836680A;
	Mon,  9 Feb 2026 10:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eMvOJA4r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cvFZ0tmV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6CB238159
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 10:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770633538; cv=none; b=GyHC4F6I8RqLDCqCQO0gzmdHsNtanZkd99Ui6g7cyzYYcCvd4fSTKLtUJCTje1fBa3Uj4eADjJUHSciKT7uZeDkr8puDB1eAHSNuOxKQUzFkZqki2nUlKphbDs58alQPlKl5owSzGaMy2mdhq+NoBD9f94pDRXX/51B8OJ3N2Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770633538; c=relaxed/simple;
	bh=WV7G7YLQc3fiwa1FcpbZ0kEYjyv316x4KMY+89ux7VQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LQU5E17i+F7fNAvL68MbfDR4+uyvUxPcDK1hBriC1hSewa/HHuKrVliRXNp1IMviEgGkkMP6au0AP9WUL2szcUvJrKek/GS9odwZi59ey9C4+0JrYmLvlWqBNmZNTj5/7IvYicBnTHgeApUFPwJerRWL0bjIbfD+Z8sVABr/pAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eMvOJA4r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cvFZ0tmV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61980ceI2060883
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 10:38:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c/jY10awzFduiO2n6GU3gHMcX31zAUtdN1QN5r7hFGo=; b=eMvOJA4rCNPHRIDw
	oz5UtpPbE1bMhDoVmSoBIP0/0aTMpbhxWNvXgyu4twf1uAmR2huBEkzst41Vn4ot
	rRNernD1MRgBgGwYUo829+MK8j92xLtbc/4fjp9uel5OPS2x6Q2uVCYqUF7fOgqs
	fDvir8zEbXsUtVnglLeszjnsTxS6qLFYtOoXDjYQoRtRtxlTEMEBTjdLSLzxis6q
	rv1DcKkAtUisWzlyKvXGLX23yqNnZPtVeghwlzS2te9Gj2bkQngyUejdMdX32iuX
	t7s0Y6mDvenAOtQdX0xJGMW4OH0vS97Dmh6Y7ndJ1ydq3eOmkySpwH5yT/t2TbU0
	NLsCoA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xdevtrn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 10:38:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c709a3a56dso244823685a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 02:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770633536; x=1771238336; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c/jY10awzFduiO2n6GU3gHMcX31zAUtdN1QN5r7hFGo=;
        b=cvFZ0tmVftzi+omRIOmRSOWOQW56ckmWlSFJRHVA1AykzVyodNr2yJhTtjxVScHpjM
         f18+M4F1Fody5rOYW2jbkyBvMlK1BmBEhLMZ4Aw+gyxhcZGtOc4zk0zfzRB7JUJd+1mI
         F2Tb9YX5Gvuip/5Pa60wTnrK3vEUhSt/fLBVmBNXF7EtY/cZh9YcjYmjsUFl0nwPEGHe
         Yh1Ckh070m/rbEr/yE8IytmpIR3KsZdj37DHubkllV6NFekzg9Uo8+bGSWGWbr7EoWOY
         zI4xGfhgPvnqOjxJ3zT1O3Iv/zbiH4f66LRPEuzRsWX/ve2WydvEZR20Cdt+sDNUzQQ8
         2nLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770633536; x=1771238336;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c/jY10awzFduiO2n6GU3gHMcX31zAUtdN1QN5r7hFGo=;
        b=Nh/htKEwwCvDkx4y9NVyR/F/9ZusHHYKrGIl9eT8XgWr1akNMDx0c1hKRg8BFanimO
         o96zS8p+rQg1IrRmapmd5xMXSXr+ubn4Z+6ML9pKXPJjdS7vBYOThXW+7Gi/hUtNJ5y8
         YrLI7m5I4lkJhk82dTOCIVJIarGYzz/6dlP+m6c3PLvEWDNzhyl4BGBYja6p5lD3C6x7
         14hk3cynDylzVSfiP9jjEErPPXOoSLirclZKIsCnNAyJPpkHnBOw1EzOYJpyyQeox/Wu
         Dy+SzWn8HqCfsxNtWJAlwwS2k+sjsL4WZjIfXbjO7b4FkeCaRSVJBZRN0BZ5qHltYKwB
         rW1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXDJ7m5UnJ+XiLKnfxmMdLF9iR72wyHNlFKzqwvIC7dArSWUsdnaHGRWxzvbdi0NipqsAhw3k0pn/sW@vger.kernel.org
X-Gm-Message-State: AOJu0YzkYPutXOStJsRdkysneD/yML0SiUNCrdF3qg7Lb+zEzREOXsx/
	gsmuaxghHKZUxkrdB1ADKiKH+5omxUJbIzNc42y8q2qsiKbBr0kd59KGE28YVW6zYiRplJ+oGm+
	owm8F/unOVTj/q9LbCM/yU+ptzp1O5Mgcs09ou9VdwLecY0e3KWJK/EDJmbnfFmfM
X-Gm-Gg: AZuq6aIYR91IGbiy/ZOJ8W7UiocMR1Ti1B+IM4nkWHL8/f8f6r2kqAaNcBwfbHYyhF/
	ftUMtP1aEEtnjnWDlP5y7x8X/S8W3tLsKefyAE98cjxag5B0Jz/v1j8RG5dEC/K1zQnetmQ7qg8
	yBS9GI1apUIxaRt1NjNe52iLmS0I5/ckRHTAPFrAXWY/ovK2aWAvo7G0JBwtcVpf7d5JG+ekqZx
	YcXGHjjKUGEkXUZ5faaDdG2uVvKvY/hbCLm+sgs1TpH5IX/73CNWAHtpmR63hzMJ1RgHyqcR9fW
	LiNR6v0li8OWSeRuxo9qZ45wdIW00KxOe18S99vbnSG6h2KF9457aUfjFg777vZ1bbujgJhDwqp
	w399TveRHB44kCo2NyhC05iwZzTivuRAkYQYAJEEZYZyfCs0Mqx1JJQRTKI/ZCRROOuc=
X-Received: by 2002:a05:620a:2906:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8caeeb5115fmr1171646885a.2.1770633536097;
        Mon, 09 Feb 2026 02:38:56 -0800 (PST)
X-Received: by 2002:a05:620a:2906:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8caeeb5115fmr1171644885a.2.1770633535630;
        Mon, 09 Feb 2026 02:38:55 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edae39441sm369817166b.59.2026.02.09.02.38.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 02:38:55 -0800 (PST)
Message-ID: <2b86a7d4-7211-4154-a673-edc20d8c048b@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 11:38:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] of: property: Create devlink between PCI Host bridge and
 Root Port suppliers
To: Saravana Kannan <saravanak@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: robh@kernel.org, andersson@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        qiang.yu@oss.qualcomm.com
References: <20260205070640.10653-1-manivannan.sadhasivam@oss.qualcomm.com>
 <bfba9d62-2741-47b8-8325-2d932c20c9e7@oss.qualcomm.com>
 <lnzmgsdjckbf6u5hxfqm4kzlmcg2cqvszcg7otmkqxaj3yzdfq@vu232xx5kts3>
 <CACRMN=eu7n+wCD3vRY-7GSKpqf3VG=oyDoQdeauiEHGK-q9pPg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CACRMN=eu7n+wCD3vRY-7GSKpqf3VG=oyDoQdeauiEHGK-q9pPg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Ddcaa/tW c=1 sm=1 tr=0 ts=6989b941 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=yl5-YIiGnJ5uwGII9rQA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: p3eFpZLtw8CrMnLamDLLFwAPXpBql_86
X-Proofpoint-GUID: p3eFpZLtw8CrMnLamDLLFwAPXpBql_86
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA4OSBTYWx0ZWRfX5Hei+2E6RUNC
 P1yu0XJ7MRTzOrgJCAimi9uQtOa8Jqasu4uXZOyeKIaqt7jJ7QXULUnvsLkFyDIrBOfL4N078xr
 vdGqtKaOBih7ajwK+Fa96P/7cDuSKX0fQ82IUFLxV5/AU12jNuTHplo0KDg1rqPHcjZeS0F7xjp
 OC2ayT+UKJZcG4JaeQMGp++i8EA0mcFDEQ1KONDQ4Tsow5dU9DDcT/Th6ne7xPoEuVxUef/80vL
 ULxbTl8/GrFwhNspg0Z9Y7Esv3r9TiXnGVp5IvdLKlpeHeXcXamAzl6HrzlsLoHqEWGiqxBg7xm
 /xoJ0eAp5QebF+VGA6qC7VtyUajRAFJOir4Y9/7IroG3FG30QMHPkQWBC+hCVQJOSYcfH+drMkv
 vs+dWXKBXjr0kEzOZrA7eAkNKHC6k/4lvH3dmqkT9AUAlh8Ra32S0C3DKcIZ2pQNkyHMuh4+cIZ
 7+8uMZxh2+vZUF4JDHQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263940-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 243AB10E34C
X-Rspamd-Action: no action

On 2/8/26 2:27 AM, Saravana Kannan wrote:
> On Thu, Feb 5, 2026 at 1:01 AM Manivannan Sadhasivam
> <manivannan.sadhasivam@oss.qualcomm.com> wrote:
>>
>> On Thu, Feb 05, 2026 at 09:50:20AM +0100, Konrad Dybcio wrote:
>>> On 2/5/26 8:06 AM, Manivannan Sadhasivam wrote:
>>>> In the recent times, devicetree started to represent the PCI Host bridge
>>>> supplies like PHY in the Root Port nodes as seen in commit 38fcbfbd4207
>>>> ("dt-bindings: PCI: qcom: Move PHY & reset GPIO to Root Port node"). But
>>>> the Host bridge drivers still need to control these supplies as a part of
>>>> their controller initialization/deinitialization sequence.
>>>>
>>>> So the Host bridge drivers end up parsing the Root Port supplies in their
>>>> probe() and controlled them. A downside to this approach is that the
>>>> devlink dependency between the suppliers and Host bridge is completely
>>>> broken. Due to this, the driver core probes the Host bridge drivers even if
>>>> the suppliers are not ready, causing probe deferrals and setup teardowns in
>>>> probe().
>>>>
>>>> These probe deferrals sometime happen over 1000 times (as reported in Qcom
>>>> Glymur platform) leading to a waste of CPU resources and increase in boot
>>>> time. So to fix these unnecessary deferrals, create devlink between the
>>>> Host bridge and Root Port suppliers in of_fwnode_add_links(). This will
>>>> allow the driver core to probe the Host bridge drivers only when all Root
>>>> Port suppliers are available.
>>>>
>>>> Reported-by: Bjorn Andersson <andersson@kernel.org>
>>>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>>>> ---
>>>
> 
> 100% NACK to this patch. You are touching a core part of the
> fw_devlink code to fix it for one specific case. This is not the place
> to special case for a property or a framework.

I think the issue runs deeper. There are multiple cases where an
OF node has children which represents sub-blocks of a hw block, and
those may house e.g. a phy reference within. I'm not sure the code can
handle this today.

Konrad

