Return-Path: <devicetree+bounces-275922-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCISKCGBt2loRwEAu9opvQ
	(envelope-from <devicetree+bounces-275922-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:03:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B488729482D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:03:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 170003007CB2
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF773368A3;
	Mon, 16 Mar 2026 04:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YrgPYMDk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GE5XhfJi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B777D336886
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773633822; cv=none; b=DjdboiBF0I7W5X87lKLjCfROdBAumfp4ApNkrCruueOG9XOUKcIGb0wsYDMvxVod0ZZlCKzucjnu30t5rUgCLmtXoQFyA9aBEfeVIkDQVYabfhNxdBGPtbCIMjvM1FFgKe5NGL7XrkyT46SrJCyrzm8EeQ11jQ3htruCfXidVO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773633822; c=relaxed/simple;
	bh=2+RvJPy0KxbR5xYDOT6uHmarhn11brcJ3+78iAXkyQk=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=pMf4oHPgJfEQHJEL9+d7WAk64OEkrcQLTAjYN3F3667DPDE6SPmam1bUAcBpLJlW246LxSf9x5K/jt1T+kBbg742lvt5/kCgFOi6xge9fAPrqmXya7fbrXIdMuCrQb63VKP49mOIWA1eLkI61vb13S9Rts1n6prC5bH47szFatQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YrgPYMDk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GE5XhfJi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62FJnS874190886
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:03:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eIBFnoDtEL/PKUmHBsZ/DXJ9XMTbQDaS8ED5UkrUtPM=; b=YrgPYMDkSuNKn/FO
	w++L4L9UQKCboKBkJ+fZaeY7swz5vQK6an0Sj8WzpyUeX6YvD20kSzxrnsV4pkmk
	b9uxs+GQJYFN4sO/Cpid5mrcwLISjT46+0uow5KRkXzELynWDGcJdSviGxH+4e2S
	a5Z3wmBpoGqNc6MlRDUEMUuj9M4UzVsG/5PoW3aSJjxNocWoedmnTXjEYpkrDQk8
	Yzl+YPe7aefqvWeJb6s4eZRUjWJqESEL+wfyP6k/QWxZ7ZW46EexdNMi1cDbkcBd
	5HgA29/xG9OjEAWHZQcO3D0T8ZhPfkSdpQKO3hQjHSNpRH1OM/id+zpBdsQDU3Ls
	w6+9nQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyyc3xup-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:03:39 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2adef9d486bso51715655ad.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 21:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773633819; x=1774238619; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eIBFnoDtEL/PKUmHBsZ/DXJ9XMTbQDaS8ED5UkrUtPM=;
        b=GE5XhfJizvKcFi/r8YxeQPP2+2NBJ4laoeP1NqsRGe059ZbYCDjvGQLPWwdEyXBvyL
         kekKN2dskLewnYSkYGwEjGF6pDQuW2g8PktdpB/+jUvimX5bNH+G0G/mSFSLZkzJAC2k
         VAtM1uQa9Cnz/JCJFk/DuaIDWGZBS4bRnUJnhPOWdZ0ezEHmKqbPrNmd0p0EehtLJinh
         MRoVcMsxNsB12hO43Dnu/jQwQeQo0Q1xdwBleSrbaEz1DHMSrYUAmb14qW2Mi1VS4u1+
         lilnIYJV1aFb9ObIFoaJxD9/DkYOe0IDcAsaFquMYGU86yFDolSVUsMrWSc+IJFO7FnW
         WNrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773633819; x=1774238619;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eIBFnoDtEL/PKUmHBsZ/DXJ9XMTbQDaS8ED5UkrUtPM=;
        b=VnnD6cjVf7Z4GlhbsoIdlj4UbreTpGL0gCIRabZap+9lt7ENrT3dXCevOo9To/hUOa
         wxjdbc3/NG4G4kiQFe5UMrJ3ckwepXwUcCLbg/19+i3wJSynu49ak9ekqYFR07yuvD0c
         s3gjUO6puOaM7+EywjOQkXqCDpcl7bXjg2BdxWoh20VJmNFWg1tdlTHyfqM6qMle7CCI
         Y9bUMitWWadSpWNwHbdiwprWZoukXaKj3qQQJLYEv8uafcc6SutC8s5rIGx4k5jZ2q/y
         rdNo53udboogGWSc1P25N90jFgFUi+ZgupYM7RjcJtbC9KOuGRnLYt5BCpw+CMDuROxE
         3uHg==
X-Forwarded-Encrypted: i=1; AJvYcCUwgRlqhlDFqI81ds+grsHyHxLi6MYUfnHstG4rtRmYfEkHDn2TFzRAY+5rgH4DqWIOMzCfo3gQNoym@vger.kernel.org
X-Gm-Message-State: AOJu0YzaWP/KoS7pMsjlQyUbfgEAttO0E0PT/C7N8LzDTUnult37jGdu
	IgHlcUjesgmrXjNLhdY2fn4LeGm6jXIK1zlLfDMUtooIgTSDHIaHRv55Pa38iWPaf3OavHmbm41
	Fj8T1uHlN2cRn0ahoLu2t6kZRbjwCa8G9dC7cfyKqYOFTU4KsVvfIwd+Q0FPDGWSF
X-Gm-Gg: ATEYQzyW120/DH/1rtRLCvWj+HBxvvvNY5bm3FhtV/rNI53r6a/fDkbu39ToX/k/UJb
	3ofNEXB51sroOArmRCKz9rKRvDob9tqgvH8dG2FR0u8iN4iojCMjxjPXz8+iaxgb5WyQqMSKgDZ
	9nrbGzIWcQg9loi476MGgYFWQn7cpAQZ1WYrHzKbkD1MCDTC4ljnRpr7ovmWKfgMJ2/mGX8SMVk
	GXSn3naFyQB3MrogqyRayo5M+vKFZPN4e/b9LbpZ3fjFmbkHG1M4l30XPB+McjjgBk2S2yYZ0Td
	g3cNCsF9GN/RqxLI3OBrMeeKLLEJPX/Qyc7/N5q1AOWIyGH3V654hpapv1zIfPcPYGKwE3qpsLw
	rEe+U/NDRtErbn+D9/ZV/6H4VJsZmSls2z+F9xS2B1djaTH3aHQ==
X-Received: by 2002:a17:902:f54c:b0:2b0:4b3a:9b49 with SMTP id d9443c01a7336-2b04b3aa307mr51558565ad.51.1773633819248;
        Sun, 15 Mar 2026 21:03:39 -0700 (PDT)
X-Received: by 2002:a17:902:f54c:b0:2b0:4b3a:9b49 with SMTP id d9443c01a7336-2b04b3aa307mr51558325ad.51.1773633818770;
        Sun, 15 Mar 2026 21:03:38 -0700 (PDT)
Received: from [10.217.222.63] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b04ccf9bf1sm40652795ad.24.2026.03.15.21.03.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2026 21:03:38 -0700 (PDT)
Subject: Re: [PATCH v6 1/3] dt-bindings: mmc: sdhci-msm: Add ICE phandle
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
References: <20260310113557.348502-1-neeraj.soni@oss.qualcomm.com>
 <20260310113557.348502-2-neeraj.soni@oss.qualcomm.com>
 <20260311-fascinating-qualified-whippet-d6d450@quoll>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <96de4cc0-32a6-77f9-680d-5841bf6f1a30@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 09:33:33 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260311-fascinating-qualified-whippet-d6d450@quoll>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=euXSD4pX c=1 sm=1 tr=0 ts=69b7811c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=P-IC7800AAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=9LdzbCIaiD98xdY6Y2IA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22 a=d3PnA9EDa4IxuAV0gXij:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: hTjyVON0_Qsdh8vEsuOucfvmAAjZ8hM3
X-Proofpoint-ORIG-GUID: hTjyVON0_Qsdh8vEsuOucfvmAAjZ8hM3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDAyOCBTYWx0ZWRfX1Uh4LL+g0Rvp
 l39sZjsZMfQ4MFZDoMmwi7HrlpVCLktJHvwFRE+ZQDuOURazotOdzv7Tn16qNkoSEg6NlxzrDzn
 JMig2iNM34X6waSPnw6q26Mc5bD5vwfz/2Lihedn5Sec48IMdTHbVbbm/rDj6gQ8N8sT6HN/mCE
 T+A67nJrILOJQmFqQmLJOdT/wfo5U4WsWCA4EhTvANkp+tFkn4WaMC9xN2V1nd90/Zo2nVkbKzN
 x6gQd5cjl53K+ttOHPOs3Bzh4AdS5t4AijXrhwJJkAZIXwstVBZAzQf9DNkq7dZs3khd96WaeZ5
 Ma0E1XaNLFZ3fzNhFpj/uI+kcxiMw08eByihTKYiL5j/+hHssD6MWV/Rdob8YNAKZFCcwLKHevY
 jsBirF2S8+vl1Tbnlt0wJdSUVupl2My0F9lIXpUy4/Khb2fIVj8Z3CPBk72YhUH+XL/P2qMvJfk
 EoV8LZ1OSbMn/YF4erA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160028
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-275922-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,bootlin.com:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B488729482D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/11/2026 11:46 AM, Krzysztof Kozlowski wrote:
> On Tue, Mar 10, 2026 at 05:05:55PM +0530, Neeraj Soni wrote:
>> Starting with sc7280(kodiak), the ICE will have its own device-tree node.
>> So add the qcom,ice property to reference it.
>>
>> To avoid double-modeling, when qcom,ice is present, disallow an embedded
>> ICE register region in the SDHCI node. Older SoCs without ICE remain
>> valid as no additional requirement is imposed.
>>
>> Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>> Co-developed-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
>> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
>> Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
>>
> 
> Can you please finally start using b4? Except errors in your process I
> don't see links to previous discussions either.
> 
> <form letter>
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.
> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions of patchset, under or above your Signed-off-by tag, unless
> patch changed significantly (e.g. new properties added to the DT
> bindings). Tag is "received", when provided in a message replied to you
> on the mailing list. Tools like b4 can help here. However, there's no
> need to repost patches *only* to add the tags. The upstream maintainer
> will do that for tags received on the version they apply.

I understand that a repost is not needed only to add the tag but in
this case whether a repost is expected since a new patch 'v6' was
posted without 'Reviewed-by:' tag which was provided on 'v5'?

> 
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
> 
> Best regards,
> Krzysztof
> 
Regards,
Neeraj

