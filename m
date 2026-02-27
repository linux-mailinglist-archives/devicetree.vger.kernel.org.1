Return-Path: <devicetree+bounces-269044-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gObFGawXoWk0qQQAu9opvQ
	(envelope-from <devicetree+bounces-269044-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:03:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B101B278B
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:03:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBE5430DB7C9
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31C3E340DB1;
	Fri, 27 Feb 2026 04:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ei1v1Vp+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O0l3gScl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73602340D9E
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772165031; cv=none; b=dSBqRBXNAzXeRAXE7x1XNnMCZpl/v4gujbQ9u2FbVbE4dzuXKsdhATK3Axr7x3P1Rm3Q9qCbZCoFGJgaAC0gAtvouZN5ydvEA1YojU1pMQ/YfBG5+7YRUyqMPLTYXxsqFHOdX3ZkLWLXc7JwseUtDV3ivslOEtOn1Cr8qCm1vvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772165031; c=relaxed/simple;
	bh=86vr0euhIkeKkT8bzZHm4PfF6FrpT3z8rUSOIQxxAnM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hl5jogG7nKyrezXF3NvqqIl3leW2DDLiXdiuEVNwxJdA3fSwEGfnSrAfSSKfoQ/2CkvA/v5ZtQVdKmdavTd4dKI5CUAXNJTs73cHNhQNdSX4CSRnQLw1b+FW8W0bb+Ni3b1glBJyn2AeWz7RSy1x/hZU8OmaR+CnBD8LMraH2Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ei1v1Vp+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O0l3gScl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2K3RO2439977
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:03:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	86vr0euhIkeKkT8bzZHm4PfF6FrpT3z8rUSOIQxxAnM=; b=Ei1v1Vp+ZfrQ5bBW
	pVzeKbb94izgBbuFmIs+7NDO1zvEJY25qEjQjEN9T9dxCS49MSz70I+tmv6LkirN
	SMj4MIEOp466qp9I1G5oPOe4Os9ZJ63ua8eGk562cjmmm3cBhvdXYDCi2S7aEgS7
	P3aPFFNJnb91aIzPWoSxQUqSDpaBm05YaDbXRCyCzHJnqfF/ZRQz7XxAEsImwyFR
	+j+YF2oLx/iblQjOYLwmeo+eQo1yg6SckS/QVSBM6ny/+VQHR//+8pZaiXiXaUAu
	wx4onm8clAYPwUNTo4z0mnokmgUvVOUBdFhjbyCe/NYeoGRVQhBJkq9HcicK8jDf
	JXktKw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cju4r1spp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:03:48 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ad179c7fc7so7425415ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 20:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772165028; x=1772769828; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=86vr0euhIkeKkT8bzZHm4PfF6FrpT3z8rUSOIQxxAnM=;
        b=O0l3gSclC0gx1ryAbV+wFMzIx+Q+7XRxrt9s56xYpDgOkeUIo33FaLdaGCIphnIykY
         h2kai9NbgLyNdyltBSSGKYNB2XNjUkVtjaTu8i/3wrM+1cCBq6oYOSbPbqlxw/TmV24T
         R7AnGwCOufXI3AA7PVdQ461iTMLwO/At/gzkqrVVlYiEnkaO0Lu1en0NKd5SjRJUIenl
         eZI5shdG5lvN6IWygQ+UCSM8bJUN486UW6yTzgqq2z7qQ03qb7cvW3g3HaDHYSlTlfZB
         rRq6epI42atliQ1PGiGMihPgzzAqCn10g6gVR7gDxsKaldG6xMCOJEUPp8c/0EcjRKxk
         4aoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772165028; x=1772769828;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=86vr0euhIkeKkT8bzZHm4PfF6FrpT3z8rUSOIQxxAnM=;
        b=TKPyaem8ooE5/rp7m++S4ZeLGqkmJej1c4k9AGSQG9FGQ0SHLLqm81fLedKtvRvAmy
         PuVUpHiJ+reSkeWLch+yZBqfx8U2vH8z5wFe7hDrzhPMgsd29snz+47aZCuLSlNj9VA6
         FHzWMhbGcfX7AYLbAUqtru9YWLr2kLXMrumzbxFwraSEk78mz/xvV6BYLWY5hPyzznvX
         Rni7H0l6ZiUxN+xz+kJTkkVXeLUI4wRrv46D2k+ZCbGkn2rLYWqFQfOr+PKEXDXlHHSY
         i+Xi95rma7hnOTb09yjeddfi9vS1Asw1w2ATLd+1LnZ0/BLKJ0dDTCGwXLgyzQ5CtjKo
         0SZg==
X-Forwarded-Encrypted: i=1; AJvYcCWtuegAQkVpyHAlwTNc6R+Q/skhNP35saYtPQVPvFMvEQAYFgqU0YYxEooI58VW9v/my4sY/xVwOQnk@vger.kernel.org
X-Gm-Message-State: AOJu0YyxC3XoZt1dGE/C0VQ3AMTMQue8izqXfA1Q6A4RTl3JZcfZWPY4
	MK9vvpYtbCXH1ZYqRh4Q3mY6AGzyE1BZ+JulnMs2QW43/tIVXY7VMY91nqjH8TsBlJFZdaJ6+AZ
	8Z1mBmGYysZ8vPtGxckDHCV2E/kFfEo3hi51t+THQHNid6RpGSTMDr5sF6ldbK0o=
X-Gm-Gg: ATEYQzwr19h261oh5y+SjGWLyWyg1EEIrZk376/jXDVYKSHdIjTj0nQQ1J+gFBfcmXf
	YtUM1P9tOW6vovxqSBb7HCqNV6iIqh7iyX/oyMgeZaTeGZxo7HxxDinrE7Z3JaKAB6DDMcJuv32
	Y3+kaMxY8JBFtFqAiSYZ0SduP+AcqbLjcxHhZjcBFSQWjUzwDpAKtKCnP1ZEyGYlFTLXHAmFNVA
	rZf7PpqRc7kR0OujI+7PU3l70SpFc/BPi9ovSrHS1UTS5jBXbyNbw7/nZYscZypgPuhSbVxLrVs
	0n90uN2Q8HP4Wjla+ECawtuigg0xkUpR8Mxms7y4HY+50UlwWO7Bbfu3yyvQuz+WOm03PhYGMG0
	EGrXTMnd21iperFpBiSljmX5qQHwTlybSTQIaofGX9S7shl0yyw==
X-Received: by 2002:a17:903:1a4c:b0:2aa:f7a2:2598 with SMTP id d9443c01a7336-2ae2e4afe1emr9763485ad.5.1772165028086;
        Thu, 26 Feb 2026 20:03:48 -0800 (PST)
X-Received: by 2002:a17:903:1a4c:b0:2aa:f7a2:2598 with SMTP id d9443c01a7336-2ae2e4afe1emr9763205ad.5.1772165027660;
        Thu, 26 Feb 2026 20:03:47 -0800 (PST)
Received: from [192.168.1.9] ([223.230.67.147])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69f277sm55454155ad.55.2026.02.26.20.03.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 20:03:47 -0800 (PST)
Message-ID: <53b86262-7601-40f0-9faf-6fdb740f6c8a@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 09:33:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1] arm64: dts: qcom: hamoa-iot-evk: Add SDC2 node for
 hamoa iot evk board
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com
References: <20260211093045.2595126-1-sarthak.garg@oss.qualcomm.com>
 <ac78f12a-b10d-46e4-97b2-57d826ebd893@oss.qualcomm.com>
 <tq2oh7rqqcturtp64r43sv6stv2pu53v757r5h7zldnnoalhay@mhn7crfc6gca>
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
In-Reply-To: <tq2oh7rqqcturtp64r43sv6stv2pu53v757r5h7zldnnoalhay@mhn7crfc6gca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDAyNyBTYWx0ZWRfX/YikR3J1qM4j
 pBsaVFuQGG/0C0UN+3OJOL32gPlxGZXrBl2LEBhSd+mS4mi4Uv79t6/yqh/+8tbqFuZVuy/rug8
 MzZ43qSfs1aVrhlxdaUHQ5dwYUPz8XG+XZuR2WfELe9dygFQvCIhH7SjA1ktYe9fX1qLt0o+LvW
 mPBcIfartfdIhbZY1/odK0UYFcDM3/cz4ipsQf7mmKfYkMEOpofLH6ENZzVq9qmFjFmEyLaZKQH
 f7fLuRGbKu5v184iCblzy1OpnEyIPAdUTVi5xKdhHuUSUVNar9/VMVaC2JJmlUx5tZ2aERwcT3u
 4reJkTUMIjVqGVF8g78BqcbEOAFP2QLSzSnlRj8vPl0WjVlMjlWVOIW7ooIT73HGwER1NOzrowR
 TW8OiJkgMbdDpUDjC2um2MOTMtyB9Yco7mJw2G3DD5cYcLlm2CNie2oRsHaX54miDE1ohcPFb3u
 KfJs+HNLsVT9r3p8kHg==
X-Proofpoint-GUID: SILUYcMXX2paoQkMFQNw0B1GylRTvv4_
X-Authority-Analysis: v=2.4 cv=KZzfcAYD c=1 sm=1 tr=0 ts=69a117a4 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=vlOeVC6CDfVrUwm+MHYtFQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=QbsPtpeAHIjyCn0Rfd8A:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: SILUYcMXX2paoQkMFQNw0B1GylRTvv4_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_04,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 bulkscore=0 adultscore=0 phishscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602270027
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269044-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sarthak.garg@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E9B101B278B
X-Rspamd-Action: no action


On 2/16/2026 7:36 PM, Bjorn Andersson wrote:
> On Mon, Feb 16, 2026 at 01:53:57PM +0100, Konrad Dybcio wrote:
>> On 2/11/26 10:30 AM, Sarthak Garg wrote:
>>> Enable SD Card host controller for hamoa iot evk board.
>>>
>>> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
>>> ---
>> nit: omit "V1" for the v1 in the subject
>>
> Also known as, stop doing this manually, use b4!


Sure Bjorn will use that.


>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Konrad

