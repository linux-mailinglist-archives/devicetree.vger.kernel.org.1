Return-Path: <devicetree+bounces-266970-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GUEJHpumGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266970-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:23:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E69BB1684DE
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:23:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A78E3018BCB
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2E3E34D4E2;
	Fri, 20 Feb 2026 14:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E5gmk0v5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Efj5bb6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86A935979
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597426; cv=none; b=AKkvXMTg+pgmjY4NQhh7W3C373hl8howRRYPXeHrpM1FNDnOX96Le7KCqJCpM0vYpr7D37ZlH/WSZHmuLXQwEqpF8UTnVU1oknQ9HxC5EItcK061u2ifeLGDNyNpnSAHVK5LKzb7qpigK28SCL3I40nelALdl2/FmCRXCkieXhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597426; c=relaxed/simple;
	bh=uCF7qvobceYS6z9HSaHIPq7B4KPyc2ZJ43g1gF2pAa4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nAvwd6SlZypDCWi0XMB9MiDVEQetDN9Zglma+5fGTi76lv8XC15VY6P0TTYdvNpAQBi0MstoZCe3J3ySbRHbmHLmQhmuArmEttH3zFpkfMXXLSt7lwRiaVKO+MyDsdDZ7IFeog0n7Egsf0+rTjciDgcC3V1IxJ4vD72gbfEDIo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E5gmk0v5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Efj5bb6F; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K84A0e3355204
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:23:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ep58c1uONEJWh16KZB0/5Ua1fzrTzKmxByn40SRCzCk=; b=E5gmk0v5hCc1N0LK
	6xY08qSl7LqPEk03MvwD/Jdp5VNDWTnZXb6TDXsspO7ALHHxsUicsUwYLMgcG8et
	XIZO1WPAj7l5paNh1zeYvukmCT4oDkblW9nDgAjAaRcDGS8kufPJmfrf47mTmUby
	2URYHw47Bt/C+nYxpjae+bRhjiNQ37yMFBR/BBCc5jAvr6nCTRKJIc4xlc9JnGKC
	EHDrW4fdCeSd3tVNi75qBJ8vlqYMMlYQs4t8csBz+MFaNhXcyPThkuSfLsIZDqg9
	Mm17PG+FECFXkuzFeVSSEXLWqha2AIVhP/bvYjQ/dgY7J7u4jdZwnh4ANiKgY3mg
	f/PJAA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce6k031ty-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:23:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aaeafeadbcso24607385ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771597423; x=1772202223; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ep58c1uONEJWh16KZB0/5Ua1fzrTzKmxByn40SRCzCk=;
        b=Efj5bb6F4OVmHEoR5Mng6rvhZpQIh5X1TQ8VUIO6BCVxgQpZi/JycgMKObH9JOunXx
         EWYR8iw4ING93tISvCeYv0cMARdkojsRrMDkGdFXdZWCIXcxTqJ9ZjKyHMzCg7tc93Sc
         fUPWRR4OOznkKF4QyydiGaWxZfVGX5m7fCNMKetBWJqeVLS+fMjLYpsDRX42KBns5lyQ
         931DJZbhecG6mC5e5eBPBaJdzxLoi5xd+A17x+MGMI9KJO0/egpsddvOMVMhhgdzQdek
         EELBxG6XttFW+URs6QtxvM9D+uEbm0FzZSoKPsP0t0pCsaLjkKvjaIsQt9Lf6b0EMPiC
         yk7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771597423; x=1772202223;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ep58c1uONEJWh16KZB0/5Ua1fzrTzKmxByn40SRCzCk=;
        b=VaJbkHMoZA1FUrKotsaaUivpZv2eXTOPcsP+acqeKxcRwm2OHwuEjDEmPu7KgjIuTt
         QA6YhTk4PXUiu6fiv49wdoKYOGp4VBbt+jFJ3BlS/4330KcZX+T8FXAMZ1ZmHrDwb1Gy
         DfWaLL/yymCIW2R2Fy4/tiN8cQwistimB4K3LyZ5ErBSu8AuEah1vemDkslvPvXLQW4/
         FuX0P4kI8+FK6++GYhvosmUHn9cYPq4Foar9lHpYYmjNj05Ea5Y/iqMtnIUKa6W0V45V
         ZQzI3IX8Kg8r4z/jC1CBbpyr3FoCnox/9hv1iNRDWl9nzDzYlY7wTM3MlAgVyXV+rig6
         kWKA==
X-Forwarded-Encrypted: i=1; AJvYcCXLzT+QVPou3qoDnXAivesVZBoZ688DuuDmhq8J6a8oeKbgRnSdgQN7Pg+6GduYAu2d3ASwK8ZnQMzz@vger.kernel.org
X-Gm-Message-State: AOJu0YwGFXqypGMxDz+kotS+UItJ16LqMtWqS32BIbMe8vMmmA4a6UJj
	p/ut+UZdgPRVtPH2EFakn9pBmpgCBwj4Y9CvEv5VTo1wGkpEikCkqTqKtkPbkfbKCAg36LxnsE5
	+/+ehrCeXkWoTHDUNITJXySUSnwbEnjv4CJ9v4Xo6OrmZxifBFoY7F9wLmo7tpmQL
X-Gm-Gg: AZuq6aIV/LYXHZoKKcl3MWNTKeJlLapL5t3U9Xs+oigWi3NRKh3Ok+WYn2W7wuK41pk
	Nef3vHhwE/KoxJbR7vLymTSq/wzZLZqrJVFaZV00r12bd7zWQf5BVJwRhcGtUOl2xDkSQ3MYn2W
	RB+UzDJ0bM7JutjxQBRKLsMYfBno+xcfVB0/0MABP/NMm0aGVfGMc+dZ5FwCCCsY106gjN8lWnm
	PPsfeFjf/gHPsWwWLAyCMGnzSsLBYnPocdUnuhQrK1D5pwEbNjZzxIc8e8jgXBtCn7gRY8y/dWy
	qFaBrFvR1ZVdjqEK10fQo3kittitXkdHKqnydz54xG5hbhDgP6vEtPVpHVmtf+xwnnbohSxlEbT
	inX9pNUn177O1Hn/+SvhIrgLBFEIay1Zrg/XKHbXl0lXdCbFAeA==
X-Received: by 2002:a17:903:240f:b0:2a0:823f:4da6 with SMTP id d9443c01a7336-2ad73654744mr1512905ad.50.1771597423342;
        Fri, 20 Feb 2026 06:23:43 -0800 (PST)
X-Received: by 2002:a17:903:240f:b0:2a0:823f:4da6 with SMTP id d9443c01a7336-2ad73654744mr1512655ad.50.1771597422825;
        Fri, 20 Feb 2026 06:23:42 -0800 (PST)
Received: from [192.168.0.195] ([49.204.27.241])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a6fa34bsm185257065ad.19.2026.02.20.06.23.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 06:23:42 -0800 (PST)
Message-ID: <c8e9eb0c-9c49-401d-ae4e-21dcb1e1e843@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 19:53:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8750: Add camera clock controller
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260220-sm8750_camcc_dt-v2-1-e4b7faf35854@oss.qualcomm.com>
 <13553877-a4d0-47ad-88ce-3d4d5b353101@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <13553877-a4d0-47ad-88ce-3d4d5b353101@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDEyNSBTYWx0ZWRfXzzj+yFFxh7EI
 QW7dMO4NEMGUZfolXBVB/6iTlEhCYvN5pvWrMOQTnKI6IKtr6LPSBJDwZc400sfxmgS3yrr08uV
 uAS3ahFt3mxLsnWBQ1YzK+IWYvP7Z7ta+Z0FcK3tuz+q+WlO+gcW1blwR2EDufgbddooQxYqmaa
 vtPR6Jlf4lmIdPZQwMowqdjk7oNYNys7O5taPGmFtjhn/z60HTRoKS2UNArmkKYkPZkfHDgszg3
 RQ/KKhfygk/dHzQlllINgBlCCK8QaKkohouwsnb79zDwKqmyV4gQQTc/55f0FXpbatg26iRRDs8
 xxOAtRWkx8JxVt3kLqycRS8ZQ7JO6RS+wGNa30egsMIfWcw7VCFcZrWrksnAuBxwP3NNd7Ub+YK
 M12VZBNNim/xMZ6lGu93SDHXp4bBeBI4jRb3IxhznIOMCHk1MjFVCr0DsdHNR61msvx6/5G8BjO
 CoO2VP8RBLC4p7mHOKA==
X-Proofpoint-ORIG-GUID: Rd9ydmC50eN_lQR6Qzyq2e8HHC-halDl
X-Authority-Analysis: v=2.4 cv=K6Ev3iWI c=1 sm=1 tr=0 ts=69986e70 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Zk7Ki20fgETz0Ru4rw8ykQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=1Wy0XEOAIwHSON090m8A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: Rd9ydmC50eN_lQR6Qzyq2e8HHC-halDl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 suspectscore=0 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602200125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-266970-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E69BB1684DE
X-Rspamd-Action: no action



On 2/20/2026 4:25 PM, Konrad Dybcio wrote:
> On 2/20/26 11:28 AM, Taniya Das wrote:
>> The camera clock controller is split into cambistmclk and camcc. The
>> cambist clock controller handles the mclks and the rest of the clocks of
>> camera are part of the camcc clock controller.
>> Add the camcc clock controller device node for SM8750 SoC.
>>
>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>> Changes in v2:
>> - Update the MxC phandle to use MX for camcc node.
> 
> My point was that both MXC and MXA are used
> 

My bad, even I think I got confused with this. We really do not need MxA
voting as it is always ON. We can sustain with MxC only.

> (I see MXA particularly near CSI[24]PHY, but it may be a fluke, please
> take a look)
> 
> Konrad

-- 
Thanks,
Taniya Das


