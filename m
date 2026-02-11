Return-Path: <devicetree+bounces-264708-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJjcL2ZTjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264708-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:01:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E7012313F
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:01:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 00FB0300FB52
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38F82E2679;
	Wed, 11 Feb 2026 10:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PRcEd+a5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FeK7SrJN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9481E5207
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804062; cv=none; b=a6oKYrp0gIyWc6Zws9OGPHS9f6jz3c61JI5kmOTbgCa1eam9Z9hUQJQQHGvLY+neNSgkCWkIWRL+FClEhdvLeBoBsr3FatQduX7XGHKi9mlTxqPcl5Qs+9UhrpEt42LdDfsM0ETsoGECcuUDQ1hVBPTuTTmaOdD5qMnv4rl6fWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804062; c=relaxed/simple;
	bh=mBbQ/PlNVLpbc4+TvvjBtK18WxXADozjYzh3fRdyLVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aL5iKdKTEL5oQ2mGxq2uQI5MmCK0I3cthYO2cMytmp7Hr7+FkPZUKkV/Wmxi+d/5iSJmL+slujao2tNPbseNX6Wp/Rnh0VTM7q15RSyMAVw4fX+jWGlzNz9OM8+zhv81+RfGF6To3ZSbsbgGsUe4vmjKiNbutYmd0k+IbIZCNwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PRcEd+a5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FeK7SrJN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B7ajtH3919364
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:01:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rv7cH++LnmwgZcqXk/m5EfA2rgQtFd7BW1CG8SndFUA=; b=PRcEd+a5PIrbXTYR
	FD6JG7cu61eCavnn7ly1stmpcWxhwyjHQgFKWG9R1zl+DYbgth6T+KcVkEe2iRfL
	8XLCXhT1TVhTY8HuKs/Y9oLEa8a4gMXiM4+Wh2CEE0KMGu3SSJSviH3Wsrr4L1zH
	0dN7SWgLNDe/MOZFLBorqgT6fJD3yCyHbodYngQCKvwqVsuW0ARyubODZEKo2kGj
	liUI8HTixBhSn9P8cu6PpsIoiygUtc7WgJqRRF7ulVUpvP3eUfZPob0P7oIUCY6Y
	1A6WR7HYz2JG5A7vZs7qPmev4QdtQ7pLPDtEBmorORpijitmQqSLHSeXcVZbLlHe
	4N02rg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c86akkews-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:01:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a289856eso217383485a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770804060; x=1771408860; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rv7cH++LnmwgZcqXk/m5EfA2rgQtFd7BW1CG8SndFUA=;
        b=FeK7SrJN4sbq+KEy7WERcvwsSDayojz7rv9ZQeSBP9xwacAqCNMKGrPtWhfnWjUs48
         bbVCIv4P2fvewtCDGRbAM/8V7eX8vG/YeLmvOvfKtwv06asqwRObx6jRHzRhEV93xQiA
         HZGJY763htWc6xE54nyZto3PXRt5vKA2RwRR7bmNbaCDNZPxB3CaAdL40t8Hq4ukKSln
         FTn5FUQn7wojXOM8kKs6uC37KWSnrRHECmS065Q48vnTNrJjPeeefcuuCYqzfdkq5Xji
         O7VTkrLYmkLoV6bDyBwZRyIigLoxaHMIQPAMcYFywXy/t97FKMGTybRAXl9DDH26UZSo
         hnFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770804060; x=1771408860;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rv7cH++LnmwgZcqXk/m5EfA2rgQtFd7BW1CG8SndFUA=;
        b=wHwrkVIzURPJVb8YnZz0wP4m1o7utM510rZF16KNtLHyfC4EDEIoqoHNnaM+xUWkOh
         Qby/XdV/A41jH8jRlnk4GGETY09XJzw3mHb5xhpDSfd0Uxrd99KFtear8RWCse/B851p
         LaWSy9vAHbRBDZwqyWRCH2awIkRzbnhf+7LvofS1QZsNmcyXUGHU/uBT0G6G5kBk9PRG
         UlUVilguYfafmeNlzqwGTHxw/KmzE3EHG5qu5Ro9Ygc4Sp5Q1tmpySNARFuL6ZnYUdfl
         e6Ol4SABiOrYJdW2XBM2UN5cpc/WWrvLRPKZfGDcRIJ7yU7Gn93ENMOpsg87UmjuYmCc
         eS/A==
X-Forwarded-Encrypted: i=1; AJvYcCV8Jd25o7HHaWUdTL+ZQJQAfgU7UO4eODsNnEd4uHhEcKnerBkq4AEJi7AVMSDnHGnla62In4c/yLUR@vger.kernel.org
X-Gm-Message-State: AOJu0YwFfCVRmwtycSPpWfNrlPHUBTPI1lRoyMs34ilbWd28oLIWnAeN
	5lnnuqP1xrMaCQYSqVeZetpdluFVTraa704NRa1Vz2ToLIJwB0rceaCGNif1gUv7nsuYgdj7/7v
	UeY3zqt0mB9TM0vTKZwMS7TEYMzrUDktjsrVBO69ggMOyAkS4t3hFVkfqQn2UlDl8
X-Gm-Gg: AZuq6aIb//pDiJlOYBODb93UHrRWgjRuGSd7YCzyogh2/Al77Q4gLW2qUsOWcoh1+oQ
	/F76UUqU9JEr2rGxcv5OIfBYAIar4HUB3L1wr9+13KddYq9hSX1m8MLzAghVIYuX5R/HHb2LhD5
	QxIYL70TukjdJG9aOUHtrwbgT51e57dzKbOfvksyOwBnytXludITy9njs4e3fEjBbuQNpP6Qv9H
	iStvkxq37mQqYfTcZa8cM9opKStOIbaeYAyjNymZcN7FZPntXtkAkpym/eVaUQ/M6TfHs9Z4kXb
	ONihDt2EdX95zpfmhBLCFACRkD9B0s/98VDRRPvQd1er2gOaPtOvkHDG+SMHLbCp/dtUjDklxuF
	+t8CM3UJOg8WaE+yt2fPb3U7/6nA1coIDA1wNktMvsUOLy5Vr
X-Received: by 2002:a05:620a:1a08:b0:8ca:ffe3:32a4 with SMTP id af79cd13be357-8cb1edd9aa9mr623906785a.42.1770804059956;
        Wed, 11 Feb 2026 02:00:59 -0800 (PST)
X-Received: by 2002:a05:620a:1a08:b0:8ca:ffe3:32a4 with SMTP id af79cd13be357-8cb1edd9aa9mr623903485a.42.1770804059412;
        Wed, 11 Feb 2026 02:00:59 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b8f7ff17a44sm9101366b.0.2026.02.11.02.00.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 02:00:58 -0800 (PST)
Message-ID: <cfda7535-e68a-447b-9e0a-83796aed47a6@oss.qualcomm.com>
Date: Wed, 11 Feb 2026 10:00:57 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: mfd: qcom,spmi-pmic: add compatibles for
 pm4124-codec
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc
References: <20260209142428.214428-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260209142428.214428-2-srinivas.kandagatla@oss.qualcomm.com>
 <20260211-holistic-precise-gazelle-fea9be@quoll>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20260211-holistic-precise-gazelle-fea9be@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=HI7O14tv c=1 sm=1 tr=0 ts=698c535c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=KKAkSRfTAAAA:8 a=mtHiFRkL_bO2e_9l49wA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gne694TbMybKCA4YnKPvA8e0MFQA0qp6
X-Proofpoint-ORIG-GUID: gne694TbMybKCA4YnKPvA8e0MFQA0qp6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA4MSBTYWx0ZWRfX0hYbxMOrxf8S
 VJ2NpGrTvAWrN/iw0RKo14ng8qby6mgVqZRa4uUCJt9nzHDyicFsJ2v/WIijPbml4j/6pVhxCKW
 mdW0Uq2OcrsBXNXUi8a5O2X0hX8T5z04iBKFNPhzxG5KQkCdL+Q9bLVspR4cAUt8FmLPgVAmtj1
 FzZnwKmb9R+RhCZel8r7KQQCJ24AouTkuYlRvg9LYNwimpaQYchUKAlIh2fAB51N1Pf6wFcJgwv
 WalOeQewJbW2Q+WbNLH1LJiWjQ6p7D+Hkzi+mACjAXycu/Vosvu4UQ2K2YHUZqu1eY0xEwzit3L
 nLbH2a3iV4Ae6MNGa/0YJtSNh7ofAMNp3yUZ6jJ5sherkqopkpxu4tOwbxQtyzkriKcuxW6bEwR
 cUsXF5iwpqTOjO0oRGUp8rtXUNTz5+yucWt2tX1L6nnzUHG9+7icPAOP1iW271sL8GddB0fbQcw
 XYXpRi+HJlk+uuQKwGg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110081
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264708-lists,devicetree=lfdr.de];
	RSPAMD_URIBL_FAIL(0.00)[linaro.org:query timed out];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,linaro.org:email];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 77E7012313F
X-Rspamd-Action: no action

On 2/11/26 6:43 AM, Krzysztof Kozlowski wrote:
> On Mon, Feb 09, 2026 at 02:24:25PM +0000, Srinivas Kandagatla wrote:
>> From: Alexey Klimov <alexey.klimov@linaro.org>
>>
>> Qualcomm Agatti SoC has PM4125 PMIC, which includes audio codec.
>> Audio codec has TX and RX soundwire slave devices to connect to on-chip
>> soundwire master.
>>
>> Add missing qcom,pm4125-codec compatible to pattern of audio-codec node
>> properties in mfd qcom,spmi-pmic schema to complete the audio codec support.
>>
> 
> That's v6, not v1.
Thanks Krzysztof, I was skeptical about it before sending however it
made more sense to include that binding into this series which had 3 new
patches,which is why I started of with v1 again. Which can be easy for
review and dtb checks to not fail for the dts patches in this series.

Am happy to send it as v7 next time as a single patch if that is what is
prefered.



> 
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> [Srini: reworked the patch]
> 
> Why? The v5 version was what we wanted. Why changing it?
> 
I looked at all the versions of this patch before sending out this one,
it sounded that you were not okay with the patch itself, may be that is
not true, you just wanted a clear commit log changed. I can send a new
version with updated comments as you requested. May be I miss
interpreted it your review on v5.

TBH, there are multiple ways to add this new child node bindings into
spmi bus.

Just from my understanding, why listing compatibles is preferred over
listing ref to child bindings?, while both serve the same purpose.

thanks,
Srini


> Anyway, same feedback.
> 
> Best regards,
> Krzysztof
> 


